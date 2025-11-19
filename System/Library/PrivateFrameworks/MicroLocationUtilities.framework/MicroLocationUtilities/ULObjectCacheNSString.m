@interface ULObjectCacheNSString
+ (id)ul_cachedInstanceForNSString:(id)a3;
@end

@implementation ULObjectCacheNSString

+ (id)ul_cachedInstanceForNSString:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 conformsToProtocol:&unk_286A77A40])
    {
      v6 = a1;
      objc_sync_enter(v6);
      v7 = ul_cachedInstanceForNSString__cachedInstances;
      if (!ul_cachedInstanceForNSString__cachedInstances)
      {
        v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        v9 = ul_cachedInstanceForNSString__cachedInstances;
        ul_cachedInstanceForNSString__cachedInstances = v8;

        v7 = ul_cachedInstanceForNSString__cachedInstances;
      }

      v10 = [v7 member:v4];
      if (!v10)
      {
        v10 = [v4 copy];
        [ul_cachedInstanceForNSString__cachedInstances addObject:v10];
      }

      objc_sync_exit(v6);
    }

    else
    {
      v10 = v4;
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