@interface NSIndexSet(CEKLightingFrameCache)
- (uint64_t)cek_indexNearestToIndex:()CEKLightingFrameCache;
@end

@implementation NSIndexSet(CEKLightingFrameCache)

- (uint64_t)cek_indexNearestToIndex:()CEKLightingFrameCache
{
  v5 = [a1 indexLessThanOrEqualToIndex:?];
  v6 = a3 - v5;
  if (a3 != v5)
  {
    v7 = v5;
    v8 = [a1 indexGreaterThanIndex:a3];
    if (v8 - a3 >= v6)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
    }

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return v7;
    }

    else
    {
      return v9;
    }
  }

  return a3;
}

@end