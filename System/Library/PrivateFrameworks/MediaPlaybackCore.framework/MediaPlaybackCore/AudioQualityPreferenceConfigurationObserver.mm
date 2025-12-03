@interface AudioQualityPreferenceConfigurationObserver
- (id)preferenceChangeClosure;
- (void)beginObservationWithPreferenceChangeClosure:(id)closure;
- (void)checkForAudioQualityPreferenceChanges;
- (void)setPreferenceChangeClosure:(id)closure;
- (void)setupPreferenceChangeObserver;
- (void)suspendObservation;
@end

@implementation AudioQualityPreferenceConfigurationObserver

- (id)preferenceChangeClosure
{
  v2 = sub_1C5D68D90();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1C5DBC798;
    v6[3] = &block_descriptor_11_0;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPreferenceChangeClosure:(id)closure
{
  v4 = _Block_copy(closure);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1C5D69684;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_1C5D68E78(v4, v5);
}

- (void)beginObservationWithPreferenceChangeClosure:(id)closure
{
  v4 = _Block_copy(closure);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1C5D68E98(sub_1C5D69674, v5);
}

- (void)suspendObservation
{
  selfCopy = self;
  sub_1C5D6900C();
}

- (void)setupPreferenceChangeObserver
{
  selfCopy = self;
  sub_1C5D691AC();
}

- (void)checkForAudioQualityPreferenceChanges
{
  selfCopy = self;
  sub_1C5D693F4();
}

@end