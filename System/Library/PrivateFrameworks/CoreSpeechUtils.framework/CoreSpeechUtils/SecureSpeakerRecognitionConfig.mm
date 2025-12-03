@interface SecureSpeakerRecognitionConfig
- (NSArray)phraseConfig;
- (SecureSpeakerRecognitionConfig)init;
- (SecureSpeakerRecognitionConfig)initWithNumPruningRetentionUtt:(int64_t)utt pruningExplicitSATThreshold:(float)threshold pruningExplicitPSRThreshold:(float)rThreshold pruningSATThreshold:(float)tThreshold pruningPSRThreshold:(float)sRThreshold combinationWeight:(float)weight implicitProfileThreshold:(float)profileThreshold implicitProfileDeltaThreshold:(float)self0 implicitVTThreshold:(float)self1 maxEnrollmentUtterances:(int64_t)self2 implicitTrainingEnabled:(BOOL)self3 useTDTIEnrollment:(BOOL)self4 phraseConfig:(id)self5 satMemoryIndex:(id)self6 psrMemoryIndex:(id)self7 satConfig:(id)self8 psrConfig:(id)self9 audioDurationProcessIntervalInMillis:(int64_t)millis minAudioDurationInMillis:(int64_t)inMillis maxAudioDurationInMillis:(int64_t)durationInMillis;
@end

@implementation SecureSpeakerRecognitionConfig

- (NSArray)phraseConfig
{
  if (*(self + OBJC_IVAR___SecureSpeakerRecognitionConfig_phraseConfig))
  {
    type metadata accessor for SecureSpeakerRecognitionPhraseConfig(self);

    v2 = sub_247994FA4();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (SecureSpeakerRecognitionConfig)initWithNumPruningRetentionUtt:(int64_t)utt pruningExplicitSATThreshold:(float)threshold pruningExplicitPSRThreshold:(float)rThreshold pruningSATThreshold:(float)tThreshold pruningPSRThreshold:(float)sRThreshold combinationWeight:(float)weight implicitProfileThreshold:(float)profileThreshold implicitProfileDeltaThreshold:(float)self0 implicitVTThreshold:(float)self1 maxEnrollmentUtterances:(int64_t)self2 implicitTrainingEnabled:(BOOL)self3 useTDTIEnrollment:(BOOL)self4 phraseConfig:(id)self5 satMemoryIndex:(id)self6 psrMemoryIndex:(id)self7 satConfig:(id)self8 psrConfig:(id)self9 audioDurationProcessIntervalInMillis:(int64_t)millis minAudioDurationInMillis:(int64_t)inMillis maxAudioDurationInMillis:(int64_t)durationInMillis
{
  if (config)
  {
    type metadata accessor for SecureSpeakerRecognitionPhraseConfig(self);
    v44 = sub_247994FB4();
  }

  else
  {
    v44 = 0;
  }

  indexCopy = index;
  memoryIndexCopy = memoryIndex;
  if (satConfig)
  {
    satConfigCopy = satConfig;
    psrConfigCopy = psrConfig;
    v35 = sub_247994C54();
    v37 = v36;
  }

  else
  {
    psrConfigCopy2 = psrConfig;
    v35 = 0;
    v37 = 0xF000000000000000;
  }

  if (psrConfig)
  {
    v39 = sub_247994C54();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0xF000000000000000;
  }

  v42 = sub_24798F464(utt, utterances, enabled, enrollment, v44, indexCopy, memoryIndexCopy, v35, threshold, rThreshold, tThreshold, sRThreshold, weight, profileThreshold, deltaThreshold, vTThreshold, v37, v39, v41, millis, inMillis, durationInMillis);
  sub_247978BF0(v39, v41);
  sub_247978BF0(v35, v37);

  return v42;
}

- (SecureSpeakerRecognitionConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end