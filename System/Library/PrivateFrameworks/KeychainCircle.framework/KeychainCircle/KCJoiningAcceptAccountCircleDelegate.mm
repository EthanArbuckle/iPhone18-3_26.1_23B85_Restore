@interface KCJoiningAcceptAccountCircleDelegate
+ (id)delegate;
- (id)circleGetInitialSyncViews:(unsigned int)views error:(id *)error;
- (id)circleJoinDataFor:(__OpaqueSOSPeerInfo *)for error:(id *)error;
@end

@implementation KCJoiningAcceptAccountCircleDelegate

- (id)circleGetInitialSyncViews:(unsigned int)views error:(id *)error
{
  v4 = SOSCCCopyInitialSyncData();

  return v4;
}

- (id)circleJoinDataFor:(__OpaqueSOSPeerInfo *)for error:(id *)error
{
  v4 = SOSCCCopyCircleJoiningBlob();

  return v4;
}

+ (id)delegate
{
  v2 = objc_alloc_init(KCJoiningAcceptAccountCircleDelegate);

  return v2;
}

@end