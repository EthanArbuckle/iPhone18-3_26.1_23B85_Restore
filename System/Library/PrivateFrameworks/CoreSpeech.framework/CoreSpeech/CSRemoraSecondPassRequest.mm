@interface CSRemoraSecondPassRequest
- (CSRemoraSecondPassRequest)initWithDeviceID:(id)d;
- (id)_secondPassWorkQueue;
- (void)cancelAudioStreamHold;
- (void)cancelRequest;
- (void)dealloc;
- (void)holdAudioStreamWithTimeout:(double)timeout;
- (void)setAsset:(id)asset;
@end

@implementation CSRemoraSecondPassRequest

- (void)cancelAudioStreamHold
{
  audioProvider = [(CSRemoraSecondPassRequest *)self audioProvider];
  [audioProvider cancelAudioStreamHold:self->_audioStreamHolding];

  audioStreamHolding = self->_audioStreamHolding;
  self->_audioStreamHolding = 0;
}

- (void)cancelRequest
{
  self->_isCancelled = 1;
  [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass cancelCurrentRequest];

  [(CSRemoraSecondPassRequest *)self cancelAudioStreamHold];
}

- (void)holdAudioStreamWithTimeout:(double)timeout
{
  v7 = [CSAudioStreamHoldRequestOption defaultOptionWithTimeout:timeout];
  audioProvider = [(CSRemoraSecondPassRequest *)self audioProvider];
  v5 = [audioProvider holdAudioStreamWithDescription:@"CSRemoraSecondPassRequest" option:v7];
  audioStreamHolding = self->_audioStreamHolding;
  self->_audioStreamHolding = v5;
}

- (void)setAsset:(id)asset
{
  objc_storeStrong(&self->_currentAsset, asset);
  assetCopy = asset;
  [assetCopy logAssetVersionForInsight];
  [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass setAsset:assetCopy];
}

- (void)dealloc
{
  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[CSRemoraSecondPassRequest dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s CSRemoraFirstPassRequest is deallocated", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CSRemoraSecondPassRequest;
  [(CSRemoraSecondPassRequest *)&v4 dealloc];
}

- (CSRemoraSecondPassRequest)initWithDeviceID:(id)d
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = CSRemoraSecondPassRequest;
  v6 = [(CSRemoraSecondPassRequest *)&v13 init];
  if (v6)
  {
    v7 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[CSRemoraSecondPassRequest initWithDeviceID:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Using high priority queues for remora second pass", buf, 0xCu);
    }

    objc_storeStrong(&v6->_firstPassDeviceID, d);
    v8 = [CSVoiceTriggerSecondPass alloc];
    _secondPassWorkQueue = [(CSRemoraSecondPassRequest *)v6 _secondPassWorkQueue];
    v10 = [(CSVoiceTriggerSecondPass *)v8 initWithFirstPassSource:7 phsEnabled:0 speechManager:0 supportsMphDetection:0 secondPassQueue:_secondPassWorkQueue];
    voiceTriggerSecondPass = v6->_voiceTriggerSecondPass;
    v6->_voiceTriggerSecondPass = v10;

    [(CSVoiceTriggerSecondPass *)v6->_voiceTriggerSecondPass setSecondPassClient:5];
    [(CSVoiceTriggerSecondPass *)v6->_voiceTriggerSecondPass setFirstPassDeviceId:v6->_firstPassDeviceID];
    v6->_isSecondPassRunning = 0;
  }

  return v6;
}

- (id)_secondPassWorkQueue
{
  v2 = [NSString stringWithFormat:@"com.apple.corespeech.remoram.voicetriggersecondpassq.%@, ", self->_firstPassDeviceID];
  v3 = [CSUtils getSerialQueueWithQOS:33 name:v2 fixedPriority:kCSDefaultSerialQueueFixedPriority];

  return v3;
}

@end