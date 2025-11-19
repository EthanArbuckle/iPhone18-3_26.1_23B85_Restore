@interface MPMusicPlayerQueueDescriptor(MPCModelPlaybackAdditions)
- (void)_addRequestingBundleIdentifierToPlaybackRequestEnvironment:()MPCModelPlaybackAdditions;
@end

@implementation MPMusicPlayerQueueDescriptor(MPCModelPlaybackAdditions)

- (void)_addRequestingBundleIdentifierToPlaybackRequestEnvironment:()MPCModelPlaybackAdditions
{
  v6 = a3;
  v4 = [a1 requestingBundleIdentifier];
  if (v4)
  {
    [v6 setRequestingBundleIdentifier:v4];
    v5 = [a1 requestingBundleVersion];
    [v6 setRequestingBundleVersion:v5];
  }
}

@end