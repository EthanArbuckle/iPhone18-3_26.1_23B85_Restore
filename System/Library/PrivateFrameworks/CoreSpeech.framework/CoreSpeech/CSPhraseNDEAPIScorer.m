@interface CSPhraseNDEAPIScorer
- (CSPhraseNDEAPIScorer)initWithAsset:(id)a3 assetConfig:(id)a4 firstPassSource:(unint64_t)a5 activeChannel:(unint64_t)a6 siriLanguage:(id)a7 shouldEnableShadowMicScore:(BOOL)a8 rtmodelRequestOptions:(id)a9;
- (CSPhraseNDEAPIScorerDelegate)delegate;
- (double)currentShadowMicScore;
- (id)_rtModelFromAsset:(id)a3 requestOptions:(id)a4 forSiriLanguage:(id)a5 withPhraseCount:(unint64_t)a6;
- (void)keywordAnalyzerNDEAPI:(id)a3 hasResultAvailable:(id)a4 forChannel:(unint64_t)a5;
- (void)processAudioChunk:(id)a3 activeChannel:(unint64_t)a4;
@end

@implementation CSPhraseNDEAPIScorer

- (CSPhraseNDEAPIScorerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_rtModelFromAsset:(id)a3 requestOptions:(id)a4 forSiriLanguage:(id)a5 withPhraseCount:(unint64_t)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = [CSVoiceTriggerRTModelRequestOptions alloc];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10015FA58;
  v18[3] = &unk_100253470;
  v19 = v9;
  v20 = v10;
  v21 = a6;
  v13 = v10;
  v14 = v9;
  v15 = [(CSVoiceTriggerRTModelRequestOptions *)v12 initWithCSRTModelRequestOptions:v14 builder:v18];
  v16 = [v11 latestHearstRTModelWithRequestOptions:v15];

  return v16;
}

- (void)keywordAnalyzerNDEAPI:(id)a3 hasResultAvailable:(id)a4 forChannel:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  if ([v8 isEarlyDetect] && !self->_hasReceivedEarlyDetectNDEAPIResult)
  {
    v13 = [v8 samplesFed];
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "[CSPhraseNDEAPIScorer keywordAnalyzerNDEAPI:hasResultAvailable:forChannel:]";
      v17 = 1026;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s EarlyDetectSample = %{public}d", &v15, 0x12u);
    }

    [(CSShadowMicScoreCreator *)self->_shadowMicScoreCreator setBestEarlyDetectSample:v13];
    self->_hasReceivedEarlyDetectNDEAPIResult = 1;
  }

  else if (!self->_hasReceivedNDEAPIResult)
  {
    self->_hasReceivedNDEAPIResult = 1;
    v9 = [v8 bestStart];
    v10 = [v8 bestEnd];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained voiceTriggerPhraseNDEAPIScorerDidDetectedKeyword:self bestStartSampleCount:v9 bestEndSampleCount:v10];

    v12 = [v8 samplesFed];
    [(CSShadowMicScoreCreator *)self->_shadowMicScoreCreator setBestStartDetectSample:v9];
    [(CSShadowMicScoreCreator *)self->_shadowMicScoreCreator setBestEndDetectSample:v12];
    [v7 reset];
  }
}

- (double)currentShadowMicScore
{
  [(CSShadowMicScoreCreator *)self->_shadowMicScoreCreator calculateShadowMicScore];
  shadowMicScoreCreator = self->_shadowMicScoreCreator;

  [(CSShadowMicScoreCreator *)shadowMicScoreCreator shadowMicScore];
  return result;
}

- (void)processAudioChunk:(id)a3 activeChannel:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 dataForChannel:a4];
  [(CSShadowMicScoreCreator *)self->_shadowMicScoreCreator addDataToBuffer:v7];
  if (self->_shadowMicScoreCreator)
  {
    if (+[CSConfig inputRecordingIsFloat])
    {
      v8 = [CSFLPCMTypeConverter convertToShortLPCMBufFromFloatLPCMBuf:v7];
      if ([v8 length])
      {
        [(NSMutableData *)self->_dataBufferNDEAPI appendData:v8];
      }
    }

    else
    {
      [(NSMutableData *)self->_dataBufferNDEAPI appendData:v7];
    }

    for (; [(NSMutableData *)self->_dataBufferNDEAPI length]- self->_dataBufferPositionNDEAPI >= self->_hearstNumberOfBytesPerChunk; self->_dataBufferPositionNDEAPI += self->_hearstNumberOfBytesPerChunk)
    {
      __chkstk_darwin();
      v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v10 >= 0x200)
      {
        v12 = 512;
      }

      else
      {
        v12 = v10;
      }

      bzero(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
      [(NSMutableData *)self->_dataBufferNDEAPI getBytes:v11 range:self->_dataBufferPositionNDEAPI, self->_hearstNumberOfBytesPerChunk];
      v13 = [(CSKeywordAnalyzerNDEAPI *)self->_keywordAnalyzerNDEAPI processAudioBytes:v11 withNumberOfSamples:self->_hearstNumberOfSamplesPerChunk];
    }
  }

  else
  {
    v9 = [(CSKeywordAnalyzerNDEAPI *)self->_keywordAnalyzerNDEAPI processAudioChunk:v6];
  }
}

- (CSPhraseNDEAPIScorer)initWithAsset:(id)a3 assetConfig:(id)a4 firstPassSource:(unint64_t)a5 activeChannel:(unint64_t)a6 siriLanguage:(id)a7 shouldEnableShadowMicScore:(BOOL)a8 rtmodelRequestOptions:(id)a9
{
  v9 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a9;
  v35.receiver = self;
  v35.super_class = CSPhraseNDEAPIScorer;
  v18 = [(CSPhraseNDEAPIScorer *)&v35 init];
  v19 = v18;
  if (v18)
  {
    if (v9 && v18->_shadowMicScoreThresholdForVAD != -1.0)
    {
      v20 = [v17 accessoryInfo];
      v21 = [v20 supportsAlwaysOnAccelerometer];

      if ((v21 & 1) == 0)
      {
        v22 = [v15 wearerDetectionConfig];
        [v22 shadowMicScoreThreshold];
        v19->_shadowMicScoreThresholdForVAD = v23;

        v24 = objc_alloc_init(CSShadowMicScoreCreator);
        shadowMicScoreCreator = v19->_shadowMicScoreCreator;
        v19->_shadowMicScoreCreator = v24;
      }
    }

    v26 = objc_alloc_init(NSMutableData);
    dataBufferNDEAPI = v19->_dataBufferNDEAPI;
    v19->_dataBufferNDEAPI = v26;

    v19->_dataBufferPositionNDEAPI = 0;
    v19->_hasReceivedEarlyDetectNDEAPIResult = 0;
    v19->_hearstNumberOfBytesPerChunk = +[CSConfig hearstNumberOfBytesPerChunk];
    v19->_hearstNumberOfSamplesPerChunk = +[CSConfig hearstNumberOfSamplesPerChunk];
    v28 = [v15 phraseConfigs];
    v29 = -[CSPhraseNDEAPIScorer _rtModelFromAsset:requestOptions:forSiriLanguage:withPhraseCount:](v19, "_rtModelFromAsset:requestOptions:forSiriLanguage:withPhraseCount:", v14, v17, v16, [v28 count]);

    v30 = [CSKeywordAnalyzerNDEAPI alloc];
    v31 = [v29 modelData];
    v32 = [v30 initWithBlob:v31];
    keywordAnalyzerNDEAPI = v19->_keywordAnalyzerNDEAPI;
    v19->_keywordAnalyzerNDEAPI = v32;

    [(CSKeywordAnalyzerNDEAPI *)v19->_keywordAnalyzerNDEAPI setActiveChannel:a6];
    [(CSKeywordAnalyzerNDEAPI *)v19->_keywordAnalyzerNDEAPI setDelegate:v19];
  }

  return v19;
}

@end