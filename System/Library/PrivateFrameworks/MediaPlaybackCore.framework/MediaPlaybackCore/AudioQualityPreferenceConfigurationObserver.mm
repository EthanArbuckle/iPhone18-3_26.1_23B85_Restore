@interface AudioQualityPreferenceConfigurationObserver
- (id)preferenceChangeClosure;
- (void)beginObservationWithPreferenceChangeClosure:(id)a3;
- (void)checkForAudioQualityPreferenceChanges;
- (void)setPreferenceChangeClosure:(id)a3;
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

- (void)setPreferenceChangeClosure:(id)a3
{
  v4 = _Block_copy(a3);
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

  v6 = self;
  sub_1C5D68E78(v4, v5);
}

- (void)beginObservationWithPreferenceChangeClosure:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1C5D68E98(sub_1C5D69674, v5);
}

- (void)suspendObservation
{
  v2 = self;
  sub_1C5D6900C();
}

- (void)setupPreferenceChangeObserver
{
  v2 = self;
  sub_1C5D691AC();
}

- (void)checkForAudioQualityPreferenceChanges
{
  v2 = self;
  sub_1C5D693F4();
}

@end