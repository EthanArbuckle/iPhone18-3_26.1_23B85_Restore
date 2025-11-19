@interface _HDQuantityDateIntervals
- (_HDQuantityDateIntervals)init;
- (uint64_t)insideRanges:(uint64_t)result;
@end

@implementation _HDQuantityDateIntervals

- (uint64_t)insideRanges:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    result = *(result + 40);
    if (result)
    {
      while (1)
      {
        if (*(v2 + 8) > a2)
        {
          return 0;
        }

        v4 = *(v2 + 24);
        if (v4 >= [result count])
        {
          return 0;
        }

        if (*(v2 + 16) >= a2)
        {
          break;
        }

        v5 = *(v2 + 24) + 1;
        *(v2 + 24) = v5;
        if (v5 >= [*(v2 + 40) count])
        {
          return 0;
        }

        v6 = [*(v2 + 40) objectAtIndexedSubscript:*(v2 + 24)];
        v7 = 0;
        v8 = 0;
        if (v6)
        {
          v8 = v6[1];
        }

        *(v2 + 8) = v8;

        v9 = [*(v2 + 40) objectAtIndexedSubscript:*(v2 + 24)];
        if (v9)
        {
          v7 = v9[2];
        }

        *(v2 + 16) = v7;

        result = *(v2 + 40);
        if (!result)
        {
          return result;
        }
      }

      return 1;
    }
  }

  return result;
}

- (_HDQuantityDateIntervals)init
{
  v6.receiver = self;
  v6.super_class = _HDQuantityDateIntervals;
  v2 = [(_HDQuantityDateIntervals *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentStartInterval = 0.0;
    v2->_currentEndInterval = 0.0;
    v2->_containsUUIDs = 0;
    v2->_currentPairIndex = 0;
    intervalPairs = v2->_intervalPairs;
    v2->_intervalPairs = 0;
  }

  return v3;
}

@end