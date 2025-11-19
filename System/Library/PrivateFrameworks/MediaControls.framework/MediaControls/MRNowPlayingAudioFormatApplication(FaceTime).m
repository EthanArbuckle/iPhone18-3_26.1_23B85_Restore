@interface MRNowPlayingAudioFormatApplication(FaceTime)
- (uint64_t)isFaceTime;
@end

@implementation MRNowPlayingAudioFormatApplication(FaceTime)

- (uint64_t)isFaceTime
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = [a1 bundleID];
  v3 = [v1 mru_isFaceTimeBundleIdentifier:v2];

  return v3;
}

@end