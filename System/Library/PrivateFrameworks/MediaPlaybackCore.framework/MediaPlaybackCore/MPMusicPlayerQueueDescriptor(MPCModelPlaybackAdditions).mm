@interface MPMusicPlayerQueueDescriptor(MPCModelPlaybackAdditions)
- (void)_addRequestingBundleIdentifierToPlaybackRequestEnvironment:()MPCModelPlaybackAdditions;
@end

@implementation MPMusicPlayerQueueDescriptor(MPCModelPlaybackAdditions)

- (void)_addRequestingBundleIdentifierToPlaybackRequestEnvironment:()MPCModelPlaybackAdditions
{
  v6 = a3;
  requestingBundleIdentifier = [self requestingBundleIdentifier];
  if (requestingBundleIdentifier)
  {
    [v6 setRequestingBundleIdentifier:requestingBundleIdentifier];
    requestingBundleVersion = [self requestingBundleVersion];
    [v6 setRequestingBundleVersion:requestingBundleVersion];
  }
}

@end