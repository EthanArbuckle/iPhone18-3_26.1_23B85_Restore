@interface NSObject(BBObjectCache)
+ (BBObjectCache)bb_objectCache;
- (uint64_t)bb_objectCache;
@end

@implementation NSObject(BBObjectCache)

- (uint64_t)bb_objectCache
{
  v0 = objc_opt_class();

  return [v0 bb_objectCache];
}

+ (BBObjectCache)bb_objectCache
{
  v1 = a1;
  objc_sync_enter(v1);
  v2 = objc_getAssociatedObject(v1, "BBObjectCacheForClass");
  if (!v2)
  {
    v2 = objc_alloc_init(BBObjectCache);
    objc_setAssociatedObject(v1, "BBObjectCacheForClass", v2, 0x301);
  }

  objc_sync_exit(v1);

  return v2;
}

@end