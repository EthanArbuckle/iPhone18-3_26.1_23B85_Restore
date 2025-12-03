@interface SecureSpeakerRecognitionPhraseConfig
- (NSString)name;
- (SecureSpeakerRecognitionPhraseConfig)init;
- (SecureSpeakerRecognitionPhraseConfig)initWithName:(id)name satThreshold:(float)threshold satStrongAcceptThreshold:(float)acceptThreshold satStrongRejectThreshold:(float)rejectThreshold multiUserLowScoreThreshold:(int64_t)scoreThreshold multiUserHighScoreThreshold:(int64_t)highScoreThreshold multiUserConfidentScoreThreshold:(int64_t)confidentScoreThreshold multiUserDeltaScoreThreshold:(int64_t)self0;
@end

@implementation SecureSpeakerRecognitionPhraseConfig

- (NSString)name
{
  v2 = *(self + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_name);
  v3 = *(self + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_name + 8);

  v4 = sub_247994E74();

  return v4;
}

- (SecureSpeakerRecognitionPhraseConfig)initWithName:(id)name satThreshold:(float)threshold satStrongAcceptThreshold:(float)acceptThreshold satStrongRejectThreshold:(float)rejectThreshold multiUserLowScoreThreshold:(int64_t)scoreThreshold multiUserHighScoreThreshold:(int64_t)highScoreThreshold multiUserConfidentScoreThreshold:(int64_t)confidentScoreThreshold multiUserDeltaScoreThreshold:(int64_t)self0
{
  v18 = sub_247994E84();
  v19 = (self + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_name);
  *v19 = v18;
  v19[1] = v20;
  *(self + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_satThreshold) = threshold;
  *(self + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_satStrongAcceptThreshold) = acceptThreshold;
  *(self + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_satStrongRejectThreshold) = rejectThreshold;
  *(self + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_multiUserLowScoreThreshold) = scoreThreshold;
  *(self + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_multiUserHighScoreThreshold) = highScoreThreshold;
  *(self + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_multiUserConfidentScoreThreshold) = confidentScoreThreshold;
  *(self + OBJC_IVAR___SecureSpeakerRecognitionPhraseConfig_multiUserDeltaScoreThreshold) = deltaScoreThreshold;
  v22.receiver = self;
  v22.super_class = SecureSpeakerRecognitionPhraseConfig;
  return [(SecureSpeakerRecognitionPhraseConfig *)&v22 init];
}

- (SecureSpeakerRecognitionPhraseConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end