@interface FedStatsCategoricalTypeIPv6Encoder
+ (id)instanceWithParameters:(id)parameters error:(id *)error;
- (FedStatsCategoricalTypeIPv6Encoder)initWithSignificantBitCount:(unint64_t)count;
- (id)preEncode:(id)encode;
@end

@implementation FedStatsCategoricalTypeIPv6Encoder

- (FedStatsCategoricalTypeIPv6Encoder)initWithSignificantBitCount:(unint64_t)count
{
  v5.receiver = self;
  v5.super_class = FedStatsCategoricalTypeIPv6Encoder;
  result = [(FedStatsCategoricalTypeIPv6Encoder *)&v5 init];
  if (result)
  {
    result->_significantBitCount = count;
  }

  return result;
}

+ (id)instanceWithParameters:(id)parameters error:(id *)error
{
  v6 = [parameters objectForKey:@"significantBitCount"];
  if (!v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:56];
    goto LABEL_6;
  }

  v7 = v6;
  if ([v6 integerValue] > 0)
  {
LABEL_6:
    error = [[self alloc] initWithSignificantBitCount:{objc_msgSend(v7, "unsignedIntegerValue")}];
    goto LABEL_7;
  }

  if (error)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"Parameter '%@' must be positive in %@ constructor", @"significantBitCount", v10];
    *error = [FedStatsError errorWithCode:101 description:v11];

    error = 0;
  }

LABEL_7:

  return error;
}

- (id)preEncode:(id)encode
{
  v29 = *MEMORY[0x277D85DE8];
  encodeCopy = encode;
  if (encodeCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [encodeCopy count] == 6)
  {
    selfCopy = self;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = encodeCopy;
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      v9 = &stru_285E0CF98;
      while (2)
      {
        v10 = 0;
        v11 = v9;
        do
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", *(*(&v24 + 1) + 8 * v10)];
          v23 = -1;
          if ([v12 length])
          {
            v13 = [MEMORY[0x277CCAC80] scannerWithString:v12];
            v14 = [v13 scanHexInt:&v23];

            if (!v14)
            {

              v17 = 0;
              goto LABEL_23;
            }

            v15 = v23;
          }

          else
          {
            v15 = 0;
            v23 = 0;
          }

          v16 = [FedStatsUtils intToBitString:v15 withLength:16];
          v9 = [(__CFString *)v11 stringByAppendingString:v16];

          ++v10;
          v11 = v9;
        }

        while (v7 != v10);
        v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
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

    v20 = [(__CFString *)v9 substringToIndex:[(FedStatsCategoricalTypeIPv6Encoder *)selfCopy significantBitCount]];
    v21 = [v20 stringByPaddingToLength:-[__CFString length](v9 withString:"length") startingAtIndex:{@"0", 0}];

    v11 = v21;
    v17 = v11;
LABEL_23:
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end