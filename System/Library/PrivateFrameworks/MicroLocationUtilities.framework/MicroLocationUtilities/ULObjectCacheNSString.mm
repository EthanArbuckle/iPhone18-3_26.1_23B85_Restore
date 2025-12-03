@interface ULObjectCacheNSString
+ (id)ul_cachedInstanceForNSString:(id)string;
@end

@implementation ULObjectCacheNSString

+ (id)ul_cachedInstanceForNSString:(id)string
{
  stringCopy = string;
  v5 = objc_autoreleasePoolPush();
  if (stringCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([stringCopy conformsToProtocol:&unk_286A77A40])
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v7 = ul_cachedInstanceForNSString__cachedInstances;
      if (!ul_cachedInstanceForNSString__cachedInstances)
      {
        weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        v9 = ul_cachedInstanceForNSString__cachedInstances;
        ul_cachedInstanceForNSString__cachedInstances = weakObjectsHashTable;

        v7 = ul_cachedInstanceForNSString__cachedInstances;
      }

      v10 = [v7 member:stringCopy];
      if (!v10)
      {
        v10 = [stringCopy copy];
        [ul_cachedInstanceForNSString__cachedInstances addObject:v10];
      }

      objc_sync_exit(selfCopy);
    }

    else
    {
      v10 = stringCopy;
    }
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v10;
}

@end