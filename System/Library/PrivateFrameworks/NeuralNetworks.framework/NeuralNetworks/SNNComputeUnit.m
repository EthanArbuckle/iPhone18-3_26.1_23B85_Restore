@interface SNNComputeUnit
+ (unint64_t)bitmakForComputeUnits:(id)a3;
- (SNNComputeUnit)initWithComputeUnitKind:(int64_t)a3;
- (int)platform;
- (unint64_t)bitmask;
@end

@implementation SNNComputeUnit

- (SNNComputeUnit)initWithComputeUnitKind:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SNNComputeUnit;
  result = [(SNNComputeUnit *)&v5 init];
  if (result)
  {
    result->_kind = a3;
  }

  return result;
}

- (int)platform
{
  v2 = [(SNNComputeUnit *)self kind];
  if (v2 == 2)
  {
    v3 = 50005;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 3)
  {
    return 10007;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)bitmask
{
  v2 = [(SNNComputeUnit *)self kind];
  if ((v2 - 1) > 2)
  {
    return -1;
  }

  else
  {
    return qword_25BCBAE20[v2 - 1];
  }
}

+ (unint64_t)bitmakForComputeUnits:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v4 |= [*(*(&v10 + 1) + 8 * v7++) bitmask];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

@end