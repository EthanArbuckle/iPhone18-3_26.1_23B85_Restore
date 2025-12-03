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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = objc_getAssociatedObject(selfCopy, "BBObjectCacheForClass");
  if (!v2)
  {
    v2 = objc_alloc_init(BBObjectCache);
    objc_setAssociatedObject(selfCopy, "BBObjectCacheForClass", v2, 0x301);
  }

  objc_sync_exit(selfCopy);

  return v2;
}

@end