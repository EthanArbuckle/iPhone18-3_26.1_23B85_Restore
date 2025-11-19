@interface HUPosterFrameViewCache
+ (id)dequeuePosterFrameViewForWidth:(double)a3;
+ (id)sharedCache;
+ (void)enqueuePosterFrameView:(id)a3;
+ (void)purgeCache;
- (HUPosterFrameViewCache)init;
@end

@implementation HUPosterFrameViewCache

+ (id)sharedCache
{
  if (_MergedGlobals_612 != -1)
  {
    dispatch_once(&_MergedGlobals_612, &__block_literal_global_15);
  }

  v3 = qword_281121E78;

  return v3;
}

void __37__HUPosterFrameViewCache_sharedCache__block_invoke()
{
  v0 = objc_alloc_init(HUPosterFrameViewCache);
  v1 = qword_281121E78;
  qword_281121E78 = v0;
}

- (HUPosterFrameViewCache)init
{
  v6.receiver = self;
  v6.super_class = HUPosterFrameViewCache;
  v2 = [(HUPosterFrameViewCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    posterFrameViewQueue = v2->_posterFrameViewQueue;
    v2->_posterFrameViewQueue = v3;
  }

  return v2;
}

+ (id)dequeuePosterFrameViewForWidth:(double)a3
{
  v5 = [a1 sharedCache];
  v6 = [v5 posterFrameViewQueue];
  v7 = [v6 lastObject];

  if (v7)
  {
    v8 = [a1 sharedCache];
    v9 = [v8 posterFrameViewQueue];
    [v9 removeLastObject];

    v10 = v7;
  }

  else
  {
    v10 = [HUPosterFrameView posterFrameViewForWidth:a3];
  }

  v11 = v10;

  return v11;
}

+ (void)enqueuePosterFrameView:(id)a3
{
  v4 = a3;
  [v4 prepareForReuse];
  v6 = [a1 sharedCache];
  v5 = [v6 posterFrameViewQueue];
  [v5 addObject:v4];
}

+ (void)purgeCache
{
  v3 = [a1 sharedCache];
  v2 = [v3 posterFrameViewQueue];
  [v2 removeAllObjects];
}

@end