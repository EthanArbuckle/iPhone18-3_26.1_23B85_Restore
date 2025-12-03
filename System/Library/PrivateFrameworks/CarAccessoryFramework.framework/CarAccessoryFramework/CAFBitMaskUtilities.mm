@interface CAFBitMaskUtilities
+ (id)description:(unint64_t)description optionCount:(unsigned __int8)count;
+ (int64_t)compareBitmask1:(unint64_t)bitmask1 bitmask2:(unint64_t)bitmask2 optionsSort:(id)sort;
+ (unint64_t)bitmask:(unint64_t)bitmask setOption:(unint64_t)option on:(BOOL)on;
@end

@implementation CAFBitMaskUtilities

+ (unint64_t)bitmask:(unint64_t)bitmask setOption:(unint64_t)option on:(BOOL)on
{
  if (on)
  {
    return option | bitmask;
  }

  else
  {
    return bitmask & ~option;
  }
}

+ (id)description:(unint64_t)description optionCount:(unsigned __int8)count
{
  v6 = objc_opt_new();
  v7 = 1;
  do
  {
    [v6 appendFormat:@"%d", (v7 & description) != 0];
    v7 *= 2;
  }

  while (v7 <= 1 << (count - 1));

  return v6;
}

+ (int64_t)compareBitmask1:(unint64_t)bitmask1 bitmask2:(unint64_t)bitmask2 optionsSort:(id)sort
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  sortCopy = sort;
  v9 = [sortCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(sortCopy);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [self bitmask:bitmask1 hasOption:{objc_msgSend(v13, "unsignedLongLongValue", v18)}];
        if (v14 != [self bitmask:bitmask2 hasOption:{objc_msgSend(v13, "unsignedLongLongValue")}])
        {
          if (v14)
          {
            v15 = -1;
          }

          else
          {
            v15 = 1;
          }

          goto LABEL_13;
        }
      }

      v10 = [sortCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

@end