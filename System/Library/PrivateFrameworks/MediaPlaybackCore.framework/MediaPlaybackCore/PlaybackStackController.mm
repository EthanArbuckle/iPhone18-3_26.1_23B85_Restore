@interface PlaybackStackController
- (BOOL)isMuted;
- (NSDictionary)stateDictionary;
- (NSString)modeDescription;
- (float)relativeVolume;
- (int64_t)renderingMode;
- (void)activateAudioSessionWithCompletion:(id)a3;
- (void)resetWithReason:(id)a3;
- (void)setRelativeVolume:(float)a3;
@end

@implementation PlaybackStackController

- (NSDictionary)stateDictionary
{

  sub_1C5DD6F28();

  v2 = sub_1C6016840();

  return v2;
}

- (void)resetWithReason:(id)a3
{
  v3 = a3;

  sub_1C5DD71A8(v3);
}

- (int64_t)renderingMode
{

  v2 = sub_1C5DD7A6C();

  return v2;
}

- (void)activateAudioSessionWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  sub_1C5DD7B4C(sub_1C5DD401C, v4);
}

- (NSString)modeDescription
{

  sub_1C5DD7D88();

  v2 = sub_1C6016900();

  return v2;
}

- (float)relativeVolume
{

  sub_1C5DD817C();
  v3 = v2;

  return v3;
}

- (void)setRelativeVolume:(float)a3
{

  sub_1C5DD81EC(a3);
}

- (BOOL)isMuted
{

  v2 = sub_1C5DD8248();

  return v2 & 1;
}

@end