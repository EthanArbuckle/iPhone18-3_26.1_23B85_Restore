@interface SecureSpeakerRecognitionConfig
- (NSArray)phraseConfig;
- (SecureSpeakerRecognitionConfig)init;
- (SecureSpeakerRecognitionConfig)initWithNumPruningRetentionUtt:(int64_t)a3 pruningExplicitSATThreshold:(float)a4 pruningExplicitPSRThreshold:(float)a5 pruningSATThreshold:(float)a6 pruningPSRThreshold:(float)a7 combinationWeight:(float)a8 implicitProfileThreshold:(float)a9 implicitProfileDeltaThreshold:(float)a10 implicitVTThreshold:(float)a11 maxEnrollmentUtterances:(int64_t)a12 implicitTrainingEnabled:(BOOL)a13 useTDTIEnrollment:(BOOL)a14 phraseConfig:(id)a15 satMemoryIndex:(id)a16 psrMemoryIndex:(id)a17 satConfig:(id)a18 psrConfig:(id)a19 audioDurationProcessIntervalInMillis:(int64_t)a20 minAudioDurationInMillis:(int64_t)a21 maxAudioDurationInMillis:(int64_t)a22;
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

- (SecureSpeakerRecognitionConfig)initWithNumPruningRetentionUtt:(int64_t)a3 pruningExplicitSATThreshold:(float)a4 pruningExplicitPSRThreshold:(float)a5 pruningSATThreshold:(float)a6 pruningPSRThreshold:(float)a7 combinationWeight:(float)a8 implicitProfileThreshold:(float)a9 implicitProfileDeltaThreshold:(float)a10 implicitVTThreshold:(float)a11 maxEnrollmentUtterances:(int64_t)a12 implicitTrainingEnabled:(BOOL)a13 useTDTIEnrollment:(BOOL)a14 phraseConfig:(id)a15 satMemoryIndex:(id)a16 psrMemoryIndex:(id)a17 satConfig:(id)a18 psrConfig:(id)a19 audioDurationProcessIntervalInMillis:(int64_t)a20 minAudioDurationInMillis:(int64_t)a21 maxAudioDurationInMillis:(int64_t)a22
{
  if (a15)
  {
    type metadata accessor for SecureSpeakerRecognitionPhraseConfig(self);
    v44 = sub_247994FB4();
  }

  else
  {
    v44 = 0;
  }

  v31 = a16;
  v32 = a17;
  if (a18)
  {
    v33 = a18;
    v34 = a19;
    v35 = sub_247994C54();
    v37 = v36;
  }

  else
  {
    v38 = a19;
    v35 = 0;
    v37 = 0xF000000000000000;
  }

  if (a19)
  {
    v39 = sub_247994C54();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0xF000000000000000;
  }

  v42 = sub_24798F464(a3, a12, a13, a14, v44, v31, v32, v35, a4, a5, a6, a7, a8, a9, a10, a11, v37, v39, v41, a20, a21, a22);
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