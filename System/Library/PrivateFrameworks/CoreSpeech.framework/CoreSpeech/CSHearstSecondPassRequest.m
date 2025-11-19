@interface CSHearstSecondPassRequest
- (CSHearstSecondPassRequest)initWithDeviceID:(id)a3;
- (CSHearstSecondPassRequest)initWithDeviceID:(id)a3 speechManager:(id)a4;
- (void)cancelAudioStreamHold;
- (void)dealloc;
- (void)holdAudioStreamWithTimeout:(double)a3;
- (void)reset;
@end

@implementation CSHearstSecondPassRequest

- (void)cancelAudioStreamHold
{
  v3 = [(CSHearstSecondPassRequest *)self audioProvider];
  [v3 cancelAudioStreamHold:self->_audioStreamHolding];

  audioStreamHolding = self->_audioStreamHolding;
  self->_audioStreamHolding = 0;
}

- (void)holdAudioStreamWithTimeout:(double)a3
{
  v7 = [CSAudioStreamHoldRequestOption defaultOptionWithTimeout:5.0];
  v4 = [(CSHearstSecondPassRequest *)self audioProvider];
  v5 = [v4 holdAudioStreamWithDescription:@"CSHearstSecondPassRequest" option:v7];
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

- (CSHearstSecondPassRequest)initWithDeviceID:(id)a3
{
  v4 = a3;
  v5 = +[CSSpeechManager sharedManager];
  v6 = [(CSHearstSecondPassRequest *)self initWithDeviceID:v4 speechManager:v5];

  return v6;
}

- (CSHearstSecondPassRequest)initWithDeviceID:(id)a3 speechManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CSHearstSecondPassRequest;
  v9 = [(CSHearstSecondPassRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_speechManager, a4);
    objc_storeStrong(&v10->_firstPassDeviceID, a3);
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