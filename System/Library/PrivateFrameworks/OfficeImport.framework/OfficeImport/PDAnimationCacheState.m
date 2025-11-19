@interface PDAnimationCacheState
- (PDAnimationCacheState)init;
@end

@implementation PDAnimationCacheState

- (PDAnimationCacheState)init
{
  v6.receiver = self;
  v6.super_class = PDAnimationCacheState;
  v2 = [(PDAnimationCacheState *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(OITSUNoCopyDictionary);
    mMediaNodeMap = v2->mMediaNodeMap;
    v2->mMediaNodeMap = v3;
  }

  return v2;
}

@end