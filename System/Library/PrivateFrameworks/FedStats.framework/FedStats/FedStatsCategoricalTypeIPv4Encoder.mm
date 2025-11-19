@interface FedStatsCategoricalTypeIPv4Encoder
+ (id)instanceWithParameters:(id)a3 error:(id *)a4;
- (FedStatsCategoricalTypeIPv4Encoder)initWithSignificantBitCount:(unint64_t)a3;
- (id)preEncode:(id)a3;
@end

@implementation FedStatsCategoricalTypeIPv4Encoder

- (FedStatsCategoricalTypeIPv4Encoder)initWithSignificantBitCount:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = FedStatsCategoricalTypeIPv4Encoder;
  result = [(FedStatsCategoricalTypeIPv4Encoder *)&v5 init];
  if (result)
  {
    result->_significantBitCount = a3;
  }

  return result;
}

+ (id)instanceWithParameters:(id)a3 error:(id *)a4
{
  v6 = [a3 objectForKey:@"significantBitCount"];
  if (!v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:24];
    goto LABEL_6;
  }

  v7 = v6;
  if ([v6 integerValue] > 0)
  {
LABEL_6:
    a4 = [[a1 alloc] initWithSignificantBitCount:{objc_msgSend(v7, "unsignedIntegerValue")}];
    goto LABEL_7;
  }

  if (a4)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"Parameter '%@' must be positive in %@ constructor", @"significantBitCount", v10];
    *a4 = [FedStatsError errorWithCode:101 description:v11];

    a4 = 0;
  }

LABEL_7:

  return a4;
}

- (id)preEncode:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v4 count] == 4)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      v9 = &stru_285E0CF98;
      while (2)
      {
        v10 = 0;
        v11 = v9;
        do
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", *(*(&v22 + 1) + 8 * v10)];
          v21 = -1;
          v13 = [MEMORY[0x277CCAC80] scannerWithString:v12];
          v14 = [v13 scanUnsignedInteger:&v21];

          if (!v14)
          {

            v16 = 0;
            goto LABEL_20;
          }

          v15 = [FedStatsUtils intToBitString:v21 withLength:8];
          v9 = [(__CFString *)v11 stringByAppendingString:v15];

          ++v10;
          v11 = v9;
        }

        while (v7 != v10);
        v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = &stru_285E0CF98;
    }

    v19 = [(__CFString *)v9 substringToIndex:[(FedStatsCategoricalTypeIPv4Encoder *)self significantBitCount]];
    v20 = [v19 stringByPaddingToLength:-[__CFString length](v9 withString:"length") startingAtIndex:{@"0", 0}];

    v11 = v20;
    v16 = v11;
LABEL_20:
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end