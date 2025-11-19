@interface MIStagingRootVolumeUUID
- (id)privilegedResolveRootWithError:(id *)a3;
@end

@implementation MIStagingRootVolumeUUID

- (id)privilegedResolveRootWithError:(id *)a3
{
  v5 = +[MIStagingManager sharedInstance];
  v6 = [(MIStagingRootVolumeUUID *)self volumeUUID];
  v7 = [v5 resolveStagingBaseForVolumeUUID:v6 withinStagingSubsystem:-[MIStagingRootVolumeUUID stagingSubsystem](self error:{"stagingSubsystem"), a3}];

  return v7;
}

@end