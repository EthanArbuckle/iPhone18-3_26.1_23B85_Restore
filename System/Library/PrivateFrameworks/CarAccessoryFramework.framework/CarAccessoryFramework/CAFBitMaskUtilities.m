@interface CAFBitMaskUtilities
+ (id)description:(unint64_t)a3 optionCount:(unsigned __int8)a4;
+ (int64_t)compareBitmask1:(unint64_t)a3 bitmask2:(unint64_t)a4 optionsSort:(id)a5;
+ (unint64_t)bitmask:(unint64_t)a3 setOption:(unint64_t)a4 on:(BOOL)a5;
@end

@implementation CAFBitMaskUtilities

+ (unint64_t)bitmask:(unint64_t)a3 setOption:(unint64_t)a4 on:(BOOL)a5
{
  if (a5)
  {
    return a4 | a3;
  }

  else
  {
    return a3 & ~a4;
  }
}

+ (id)description:(unint64_t)a3 optionCount:(unsigned __int8)a4
{
  v6 = objc_opt_new();
  v7 = 1;
  do
  {
    [v6 appendFormat:@"%d", (v7 & a3) != 0];
    v7 *= 2;
  }

  while (v7 <= 1 << (a4 - 1));

  return v6;
}

+ (int64_t)compareBitmask1:(unint64_t)a3 bitmask2:(unint64_t)a4 optionsSort:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = a5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [a1 bitmask:a3 hasOption:{objc_msgSend(v13, "unsignedLongLongValue", v18)}];
        if (v14 != [a1 bitmask:a4 hasOption:{objc_msgSend(v13, "unsignedLongLongValue")}])
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

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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