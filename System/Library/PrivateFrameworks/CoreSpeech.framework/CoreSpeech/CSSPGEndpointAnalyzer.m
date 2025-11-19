@interface CSSPGEndpointAnalyzer
- (CSSPGEndpointAnalyzer)init;
- (CSSPGEndpointAnalyzer)initWithAnalyzeMode;
- (CSSPGEndpointAnalyzer)initWithEndpointThreshold:(float)a3;
- (CSSPGEndpointAnalyzerDelegate)delegate;
- (int64_t)getFrameDurationMs;
- (void)addAudio:(id)a3 numSamples:(unint64_t)a4;
- (void)clientSilenceFeaturesAvailable:(id)a3;
- (void)dealloc;
- (void)reset;
- (void)silenceDurationEstimateAvailable:(float *)a3 numEstimates:(unint64_t)a4 clientProcessedAudioMs:(float)a5;
- (void)stop;
@end

@implementation CSSPGEndpointAnalyzer

- (CSSPGEndpointAnalyzerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)silenceDurationEstimateAvailable:(float *)a3 numEstimates:(unint64_t)a4 clientProcessedAudioMs:(float)a5
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100110084;
  block[3] = &unk_100251C60;
  block[4] = self;
  block[5] = a4;
  v7 = a5;
  dispatch_async(queue, block);
}

- (void)clientSilenceFeaturesAvailable:(id)a3
{
  v4 = a3;
  [v4 silenceDurationMs];
  v6 = v5;
  v7 = qword_10029E3C8;
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * qword_10029E3C8, 2) <= 0x444444444444444uLL)
  {
    v8 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v19 = "[CSSPGEndpointAnalyzer clientSilenceFeaturesAvailable:]";
      v20 = 2050;
      v21 = v7;
      v22 = 2050;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s EARClientSilenceFeatures heartbeat = %{public}lld,                   silScoreEstimate = %{public}f", buf, 0x20u);
      v7 = qword_10029E3C8;
    }
  }

  qword_10029E3C8 = v7 + 1;
  if (!self->_hasReported && v6 >= self->_endpointThreshold)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v10 = WeakRetained;
      v11 = objc_loadWeakRetained(&self->_delegate);
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = objc_loadWeakRetained(&self->_delegate);
        [v13 spgEndpointAnalyzerDidDetectEndpoint:self];
      }
    }

    self->_hasReported = 1;
  }

  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10011031C;
  v16[3] = &unk_100253C48;
  v16[4] = self;
  v17 = v4;
  v15 = v4;
  dispatch_async(queue, v16);
}

- (void)addAudio:(id)a3 numSamples:(unint64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100110400;
  block[3] = &unk_1002533C8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

- (int64_t)getFrameDurationMs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001104C0;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)stop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011056C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dealloc
{
  v3 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
  {
    caesuraSPG = self->_caesuraSPG;
    *buf = 136315394;
    v7 = "[CSSPGEndpointAnalyzer dealloc]";
    v8 = 2114;
    v9 = caesuraSPG;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s deallocating EARCaesuraSilencePosteriorGenerator: %{public}@", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = CSSPGEndpointAnalyzer;
  [(CSSPGEndpointAnalyzer *)&v5 dealloc];
}

- (void)reset
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100110784;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CSSPGEndpointAnalyzer)initWithAnalyzeMode
{
  result = [(CSSPGEndpointAnalyzer *)self init];
  if (result)
  {
    result->_isAnalyzeMode = 1;
  }

  return result;
}

- (CSSPGEndpointAnalyzer)initWithEndpointThreshold:(float)a3
{
  result = [(CSSPGEndpointAnalyzer *)self init];
  if (result)
  {
    result->_endpointThreshold = a3;
    result->_isAnalyzeMode = 0;
  }

  return result;
}

- (CSSPGEndpointAnalyzer)init
{
  if ((+[CSUtils isDarwinOS]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CSSPGEndpointAnalyzer;
    v4 = [(CSSPGEndpointAnalyzer *)&v8 init];
    if (v4)
    {
      v5 = dispatch_queue_create("CSSPGEndpointAnalyzer", 0);
      queue = v4->_queue;
      v4->_queue = v5;
    }

    self = v4;
    v3 = self;
  }

  return v3;
}

@end