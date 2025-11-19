@interface MRCreatePlaybackQueueForIdentifier
@end

@implementation MRCreatePlaybackQueueForIdentifier

void ___onQueue_MRCreatePlaybackQueueForIdentifier_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = (*(a1[6] + 16))();
  if (v3)
  {
    v4 = a1[5];
    v6 = v3;
    SkeletonFrom = MRContentItemCreateSkeletonFrom(v3);
    [v4 addObject:SkeletonFrom];

    v3 = v6;
  }
}

@end