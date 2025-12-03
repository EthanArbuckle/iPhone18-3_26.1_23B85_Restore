@interface CSPhraseNDEAPIScorer
- (CSPhraseNDEAPIScorer)initWithAsset:(id)asset assetConfig:(id)config firstPassSource:(unint64_t)source activeChannel:(unint64_t)channel siriLanguage:(id)language shouldEnableShadowMicScore:(BOOL)score rtmodelRequestOptions:(id)options;
- (CSPhraseNDEAPIScorerDelegate)delegate;
- (double)currentShadowMicScore;
- (id)_rtModelFromAsset:(id)asset requestOptions:(id)options forSiriLanguage:(id)language withPhraseCount:(unint64_t)count;
- (void)keywordAnalyzerNDEAPI:(id)i hasResultAvailable:(id)available forChannel:(unint64_t)channel;
- (void)processAudioChunk:(id)chunk activeChannel:(unint64_t)channel;
@end

@implementation CSPhraseNDEAPIScorer

- (CSPhraseNDEAPIScorerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_rtModelFromAsset:(id)asset requestOptions:(id)options forSiriLanguage:(id)language withPhraseCount:(unint64_t)count
{
  optionsCopy = options;
  languageCopy = language;
  assetCopy = asset;
  v12 = [CSVoiceTriggerRTModelRequestOptions alloc];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10015FA58;
  v18[3] = &unk_100253470;
  v19 = optionsCopy;
  v20 = languageCopy;
  countCopy = count;
  v13 = languageCopy;
  v14 = optionsCopy;
  v15 = [(CSVoiceTriggerRTModelRequestOptions *)v12 initWithCSRTModelRequestOptions:v14 builder:v18];
  v16 = [assetCopy latestHearstRTModelWithRequestOptions:v15];

  return v16;
}

- (void)keywordAnalyzerNDEAPI:(id)i hasResultAvailable:(id)available forChannel:(unint64_t)channel
{
  iCopy = i;
  availableCopy = available;
  if ([availableCopy isEarlyDetect] && !self->_hasReceivedEarlyDetectNDEAPIResult)
  {
    samplesFed = [availableCopy samplesFed];
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "[CSPhraseNDEAPIScorer keywordAnalyzerNDEAPI:hasResultAvailable:forChannel:]";
      v17 = 1026;
      v18 = samplesFed;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s EarlyDetectSample = %{public}d", &v15, 0x12u);
    }

    [(CSShadowMicScoreCreator *)self->_shadowMicScoreCreator setBestEarlyDetectSample:samplesFed];
    self->_hasReceivedEarlyDetectNDEAPIResult = 1;
  }

  else if (!self->_hasReceivedNDEAPIResult)
  {
    self->_hasReceivedNDEAPIResult = 1;
    bestStart = [availableCopy bestStart];
    bestEnd = [availableCopy bestEnd];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained voiceTriggerPhraseNDEAPIScorerDidDetectedKeyword:self bestStartSampleCount:bestStart bestEndSampleCount:bestEnd];

    samplesFed2 = [availableCopy samplesFed];
    [(CSShadowMicScoreCreator *)self->_shadowMicScoreCreator setBestStartDetectSample:bestStart];
    [(CSShadowMicScoreCreator *)self->_shadowMicScoreCreator setBestEndDetectSample:samplesFed2];
    [iCopy reset];
  }
}

- (double)currentShadowMicScore
{
  [(CSShadowMicScoreCreator *)self->_shadowMicScoreCreator calculateShadowMicScore];
  shadowMicScoreCreator = self->_shadowMicScoreCreator;

  [(CSShadowMicScoreCreator *)shadowMicScoreCreator shadowMicScore];
  return result;
}

- (void)processAudioChunk:(id)chunk activeChannel:(unint64_t)channel
{
  chunkCopy = chunk;
  v7 = [chunkCopy dataForChannel:channel];
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
    v9 = [(CSKeywordAnalyzerNDEAPI *)self->_keywordAnalyzerNDEAPI processAudioChunk:chunkCopy];
  }
}

- (CSPhraseNDEAPIScorer)initWithAsset:(id)asset assetConfig:(id)config firstPassSource:(unint64_t)source activeChannel:(unint64_t)channel siriLanguage:(id)language shouldEnableShadowMicScore:(BOOL)score rtmodelRequestOptions:(id)options
{
  scoreCopy = score;
  assetCopy = asset;
  configCopy = config;
  languageCopy = language;
  optionsCopy = options;
  v35.receiver = self;
  v35.super_class = CSPhraseNDEAPIScorer;
  v18 = [(CSPhraseNDEAPIScorer *)&v35 init];
  v19 = v18;
  if (v18)
  {
    if (scoreCopy && v18->_shadowMicScoreThresholdForVAD != -1.0)
    {
      accessoryInfo = [optionsCopy accessoryInfo];
      supportsAlwaysOnAccelerometer = [accessoryInfo supportsAlwaysOnAccelerometer];

      if ((supportsAlwaysOnAccelerometer & 1) == 0)
      {
        wearerDetectionConfig = [configCopy wearerDetectionConfig];
        [wearerDetectionConfig shadowMicScoreThreshold];
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
    phraseConfigs = [configCopy phraseConfigs];
    v29 = -[CSPhraseNDEAPIScorer _rtModelFromAsset:requestOptions:forSiriLanguage:withPhraseCount:](v19, "_rtModelFromAsset:requestOptions:forSiriLanguage:withPhraseCount:", assetCopy, optionsCopy, languageCopy, [phraseConfigs count]);

    v30 = [CSKeywordAnalyzerNDEAPI alloc];
    modelData = [v29 modelData];
    v32 = [v30 initWithBlob:modelData];
    keywordAnalyzerNDEAPI = v19->_keywordAnalyzerNDEAPI;
    v19->_keywordAnalyzerNDEAPI = v32;

    [(CSKeywordAnalyzerNDEAPI *)v19->_keywordAnalyzerNDEAPI setActiveChannel:channel];
    [(CSKeywordAnalyzerNDEAPI *)v19->_keywordAnalyzerNDEAPI setDelegate:v19];
  }

  return v19;
}

@end