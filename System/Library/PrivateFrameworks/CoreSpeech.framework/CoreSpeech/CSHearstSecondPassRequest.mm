@interface CSHearstSecondPassRequest
- (CSHearstSecondPassRequest)initWithDeviceID:(id)d;
- (CSHearstSecondPassRequest)initWithDeviceID:(id)d speechManager:(id)manager;
- (void)cancelAudioStreamHold;
- (void)dealloc;
- (void)holdAudioStreamWithTimeout:(double)timeout;
- (void)reset;
@end

@implementation CSHearstSecondPassRequest

- (void)cancelAudioStreamHold
{
  audioProvider = [(CSHearstSecondPassRequest *)self audioProvider];
  [audioProvider cancelAudioStreamHold:self->_audioStreamHolding];

  audioStreamHolding = self->_audioStreamHolding;
  self->_audioStreamHolding = 0;
}

- (void)holdAudioStreamWithTimeout:(double)timeout
{
  v7 = [CSAudioStreamHoldRequestOption defaultOptionWithTimeout:5.0];
  audioProvider = [(CSHearstSecondPassRequest *)self audioProvider];
  v5 = [audioProvider holdAudioStreamWithDescription:@"CSHearstSecondPassRequest" option:v7];
  audioStreamHolding = self->_audioStreamHolding;
  self->_audioStreamHolding = v5;
}

- (void)reset
{
  self->_remoteMicVADScore = -1.0;
  self->_isSecondPassRunning = 0;
  [(CSVoiceTriggerSecondPass *)self->_voiceTriggerSecondPass reset];
}

- (void)dealloc
{
  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[CSHearstSecondPassRequest dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s CSHearstSecondPassRequest is deallocated", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CSHearstSecondPassRequest;
  [(CSHearstSecondPassRequest *)&v4 dealloc];
}

- (CSHearstSecondPassRequest)initWithDeviceID:(id)d
{
  dCopy = d;
  v5 = +[CSSpeechManager sharedManager];
  v6 = [(CSHearstSecondPassRequest *)self initWithDeviceID:dCopy speechManager:v5];

  return v6;
}

- (CSHearstSecondPassRequest)initWithDeviceID:(id)d speechManager:(id)manager
{
  dCopy = d;
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = CSHearstSecondPassRequest;
  v9 = [(CSHearstSecondPassRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_speechManager, manager);
    objc_storeStrong(&v10->_firstPassDeviceID, d);
    v11 = [[CSVoiceTriggerSecondPass alloc] initWithFirstPassSource:3 phsEnabled:0 speechManager:v10->_speechManager supportsMphDetection:0 secondPassQueue:0];
    voiceTriggerSecondPass = v10->_voiceTriggerSecondPass;
    v10->_voiceTriggerSecondPass = v11;

    [(CSVoiceTriggerSecondPass *)v10->_voiceTriggerSecondPass setSecondPassClient:2];
    v10->_remoteMicVADScore = -1.0;
    v10->_isSecondPassRunning = 0;
  }

  return v10;
}

@end