@interface KCJoiningAcceptAccountCircleDelegate
+ (id)delegate;
- (id)circleGetInitialSyncViews:(unsigned int)a3 error:(id *)a4;
- (id)circleJoinDataFor:(__OpaqueSOSPeerInfo *)a3 error:(id *)a4;
@end

@implementation KCJoiningAcceptAccountCircleDelegate

- (id)circleGetInitialSyncViews:(unsigned int)a3 error:(id *)a4
{
  v4 = SOSCCCopyInitialSyncData();

  return v4;
}

- (id)circleJoinDataFor:(__OpaqueSOSPeerInfo *)a3 error:(id *)a4
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