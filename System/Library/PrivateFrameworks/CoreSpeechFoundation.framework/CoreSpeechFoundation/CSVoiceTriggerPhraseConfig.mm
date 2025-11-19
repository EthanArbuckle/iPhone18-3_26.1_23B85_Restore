@interface CSVoiceTriggerPhraseConfig
- (CSVoiceTriggerPhraseConfig)initWithName:(id)a3 threshold:(float)a4 secondChanceThreshold:(float)a5 loggingThreshold:(float)a6 ndapiScaleFactor:(float)a7 recognizerScoreOffset:(float)a8 recognizerScoreScaleFactor:(float)a9 recognizerToken:(id)a10 twoShotFeedbackDelay:(float)a11 remoraTwoShotFeedbackDelay:(float)a12 keywordRejectLoggingThreshold:(float)a13 speakerRejectLoggingThreshold:(float)a14 preTriggerSilenceOffset:(float)a15;
- (id)copyWithThreshold:(float)a3 secondChanceThreshold:(float)a4 loggingThreshold:(float)a5 ndapiScaleFactor:(float)a6 recognizerScoreOffset:(float)a7 recognizerScoreScaleFactor:(float)a8 keywordRejectLoggingThreshold:(float)a9;
@end

@implementation CSVoiceTriggerPhraseConfig

- (id)copyWithThreshold:(float)a3 secondChanceThreshold:(float)a4 loggingThreshold:(float)a5 ndapiScaleFactor:(float)a6 recognizerScoreOffset:(float)a7 recognizerScoreScaleFactor:(float)a8 keywordRejectLoggingThreshold:(float)a9
{
  v15 = [CSVoiceTriggerPhraseConfig alloc];
  v16 = [(CSVoiceTriggerPhraseConfig *)self name];
  v17 = [(CSVoiceTriggerPhraseConfig *)self recognizerToken];
  [(CSVoiceTriggerPhraseConfig *)self twoShotFeedbackDelay];
  v19 = v18;
  [(CSVoiceTriggerPhraseConfig *)self remoraTwoShotFeedbackDelay];
  v21 = v20;
  [(CSVoiceTriggerPhraseConfig *)self speakerRejectLoggingThreshold];
  v23 = v22;
  [(CSVoiceTriggerPhraseConfig *)self preTriggerSilenceOffset];
  LODWORD(v35) = v24;
  *&v25 = a3;
  *&v26 = a4;
  *&v27 = a5;
  *&v28 = a6;
  *&v29 = a7;
  *&v30 = a8;
  LODWORD(v31) = v19;
  LODWORD(v32) = v21;
  v33 = [(CSVoiceTriggerPhraseConfig *)v15 initWithName:v16 threshold:v17 secondChanceThreshold:v25 loggingThreshold:v26 ndapiScaleFactor:v27 recognizerScoreOffset:v28 recognizerScoreScaleFactor:v29 recognizerToken:v30 twoShotFeedbackDelay:v31 remoraTwoShotFeedbackDelay:v32 keywordRejectLoggingThreshold:__PAIR64__(v23 speakerRejectLoggingThreshold:LODWORD(a9)) preTriggerSilenceOffset:v35];

  return v33;
}

- (CSVoiceTriggerPhraseConfig)initWithName:(id)a3 threshold:(float)a4 secondChanceThreshold:(float)a5 loggingThreshold:(float)a6 ndapiScaleFactor:(float)a7 recognizerScoreOffset:(float)a8 recognizerScoreScaleFactor:(float)a9 recognizerToken:(id)a10 twoShotFeedbackDelay:(float)a11 remoraTwoShotFeedbackDelay:(float)a12 keywordRejectLoggingThreshold:(float)a13 speakerRejectLoggingThreshold:(float)a14 preTriggerSilenceOffset:(float)a15
{
  v26 = a3;
  v27 = a10;
  v31.receiver = self;
  v31.super_class = CSVoiceTriggerPhraseConfig;
  v28 = [(CSVoiceTriggerPhraseConfig *)&v31 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_name, a3);
    v29->_threshold = a4;
    v29->_secondChanceThreshold = a5;
    v29->_loggingThreshold = a6;
    v29->_ndapiScaleFactor = a7;
    v29->_recognizerScoreOffset = a8;
    v29->_recognizerScoreScaleFactor = a9;
    objc_storeStrong(&v29->_recognizerToken, a10);
    v29->_twoShotFeedbackDelay = a11;
    v29->_remoraTwoShotFeedbackDelay = a12;
    v29->_keywordRejectLoggingThreshold = a13;
    v29->_speakerRejectLoggingThreshold = a14;
    v29->_preTriggerSilenceOffset = a15;
  }

  return v29;
}

@end