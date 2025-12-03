@interface HUPosterFrameViewCache
+ (id)dequeuePosterFrameViewForWidth:(double)width;
+ (id)sharedCache;
+ (void)enqueuePosterFrameView:(id)view;
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

+ (id)dequeuePosterFrameViewForWidth:(double)width
{
  sharedCache = [self sharedCache];
  posterFrameViewQueue = [sharedCache posterFrameViewQueue];
  lastObject = [posterFrameViewQueue lastObject];

  if (lastObject)
  {
    sharedCache2 = [self sharedCache];
    posterFrameViewQueue2 = [sharedCache2 posterFrameViewQueue];
    [posterFrameViewQueue2 removeLastObject];

    v10 = lastObject;
  }

  else
  {
    v10 = [HUPosterFrameView posterFrameViewForWidth:width];
  }

  v11 = v10;

  return v11;
}

+ (void)enqueuePosterFrameView:(id)view
{
  viewCopy = view;
  [viewCopy prepareForReuse];
  sharedCache = [self sharedCache];
  posterFrameViewQueue = [sharedCache posterFrameViewQueue];
  [posterFrameViewQueue addObject:viewCopy];
}

+ (void)purgeCache
{
  sharedCache = [self sharedCache];
  posterFrameViewQueue = [sharedCache posterFrameViewQueue];
  [posterFrameViewQueue removeAllObjects];
}

@end