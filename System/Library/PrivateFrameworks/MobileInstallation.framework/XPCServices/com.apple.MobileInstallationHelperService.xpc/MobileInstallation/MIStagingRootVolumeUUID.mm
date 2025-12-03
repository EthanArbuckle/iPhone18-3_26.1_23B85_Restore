@interface MIStagingRootVolumeUUID
- (id)privilegedResolveRootWithError:(id *)error;
@end

@implementation MIStagingRootVolumeUUID

- (id)privilegedResolveRootWithError:(id *)error
{
  v5 = +[MIStagingManager sharedInstance];
  volumeUUID = [(MIStagingRootVolumeUUID *)self volumeUUID];
  v7 = [v5 resolveStagingBaseForVolumeUUID:volumeUUID withinStagingSubsystem:-[MIStagingRootVolumeUUID stagingSubsystem](self error:{"stagingSubsystem"), error}];

  return v7;
}

@end