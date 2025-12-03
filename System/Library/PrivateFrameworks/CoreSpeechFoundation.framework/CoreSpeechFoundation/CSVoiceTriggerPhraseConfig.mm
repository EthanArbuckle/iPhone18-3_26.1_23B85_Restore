@interface CSVoiceTriggerPhraseConfig
- (CSVoiceTriggerPhraseConfig)initWithName:(id)name threshold:(float)threshold secondChanceThreshold:(float)chanceThreshold loggingThreshold:(float)loggingThreshold ndapiScaleFactor:(float)factor recognizerScoreOffset:(float)offset recognizerScoreScaleFactor:(float)scaleFactor recognizerToken:(id)self0 twoShotFeedbackDelay:(float)self1 remoraTwoShotFeedbackDelay:(float)self2 keywordRejectLoggingThreshold:(float)self3 speakerRejectLoggingThreshold:(float)self4 preTriggerSilenceOffset:(float)self5;
- (id)copyWithThreshold:(float)threshold secondChanceThreshold:(float)chanceThreshold loggingThreshold:(float)loggingThreshold ndapiScaleFactor:(float)factor recognizerScoreOffset:(float)offset recognizerScoreScaleFactor:(float)scaleFactor keywordRejectLoggingThreshold:(float)rejectLoggingThreshold;
@end

@implementation CSVoiceTriggerPhraseConfig

- (id)copyWithThreshold:(float)threshold secondChanceThreshold:(float)chanceThreshold loggingThreshold:(float)loggingThreshold ndapiScaleFactor:(float)factor recognizerScoreOffset:(float)offset recognizerScoreScaleFactor:(float)scaleFactor keywordRejectLoggingThreshold:(float)rejectLoggingThreshold
{
  v15 = [CSVoiceTriggerPhraseConfig alloc];
  name = [(CSVoiceTriggerPhraseConfig *)self name];
  recognizerToken = [(CSVoiceTriggerPhraseConfig *)self recognizerToken];
  [(CSVoiceTriggerPhraseConfig *)self twoShotFeedbackDelay];
  v19 = v18;
  [(CSVoiceTriggerPhraseConfig *)self remoraTwoShotFeedbackDelay];
  v21 = v20;
  [(CSVoiceTriggerPhraseConfig *)self speakerRejectLoggingThreshold];
  v23 = v22;
  [(CSVoiceTriggerPhraseConfig *)self preTriggerSilenceOffset];
  LODWORD(v35) = v24;
  *&v25 = threshold;
  *&v26 = chanceThreshold;
  *&v27 = loggingThreshold;
  *&v28 = factor;
  *&v29 = offset;
  *&v30 = scaleFactor;
  LODWORD(v31) = v19;
  LODWORD(v32) = v21;
  v33 = [(CSVoiceTriggerPhraseConfig *)v15 initWithName:name threshold:recognizerToken secondChanceThreshold:v25 loggingThreshold:v26 ndapiScaleFactor:v27 recognizerScoreOffset:v28 recognizerScoreScaleFactor:v29 recognizerToken:v30 twoShotFeedbackDelay:v31 remoraTwoShotFeedbackDelay:v32 keywordRejectLoggingThreshold:__PAIR64__(v23 speakerRejectLoggingThreshold:LODWORD(rejectLoggingThreshold)) preTriggerSilenceOffset:v35];

  return v33;
}

- (CSVoiceTriggerPhraseConfig)initWithName:(id)name threshold:(float)threshold secondChanceThreshold:(float)chanceThreshold loggingThreshold:(float)loggingThreshold ndapiScaleFactor:(float)factor recognizerScoreOffset:(float)offset recognizerScoreScaleFactor:(float)scaleFactor recognizerToken:(id)self0 twoShotFeedbackDelay:(float)self1 remoraTwoShotFeedbackDelay:(float)self2 keywordRejectLoggingThreshold:(float)self3 speakerRejectLoggingThreshold:(float)self4 preTriggerSilenceOffset:(float)self5
{
  nameCopy = name;
  tokenCopy = token;
  v31.receiver = self;
  v31.super_class = CSVoiceTriggerPhraseConfig;
  v28 = [(CSVoiceTriggerPhraseConfig *)&v31 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_name, name);
    v29->_threshold = threshold;
    v29->_secondChanceThreshold = chanceThreshold;
    v29->_loggingThreshold = loggingThreshold;
    v29->_ndapiScaleFactor = factor;
    v29->_recognizerScoreOffset = offset;
    v29->_recognizerScoreScaleFactor = scaleFactor;
    objc_storeStrong(&v29->_recognizerToken, token);
    v29->_twoShotFeedbackDelay = delay;
    v29->_remoraTwoShotFeedbackDelay = feedbackDelay;
    v29->_keywordRejectLoggingThreshold = rejectLoggingThreshold;
    v29->_speakerRejectLoggingThreshold = speakerRejectLoggingThreshold;
    v29->_preTriggerSilenceOffset = silenceOffset;
  }

  return v29;
}

@end