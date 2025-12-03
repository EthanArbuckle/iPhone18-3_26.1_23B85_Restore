@interface HMDAudioSampleRate
+ (id)arrayWithRates:(id)rates;
- (BOOL)isEqual:(id)equal;
- (HMDAudioSampleRate)initWithCoder:(id)coder;
- (HMDAudioSampleRate)initWithSampleRate:(unint64_t)rate;
- (HMDAudioSampleRate)initWithTLVData:(id)data;
- (id)description;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDAudioSampleRate

- (HMDAudioSampleRate)initWithSampleRate:(unint64_t)rate
{
  v5.receiver = self;
  v5.super_class = HMDAudioSampleRate;
  result = [(HMDAudioSampleRate *)&v5 init];
  if (result)
  {
    result->_sampleRate = rate;
  }

  return result;
}

- (HMDAudioSampleRate)initWithTLVData:(id)data
{
  v6.receiver = self;
  v6.super_class = HMDAudioSampleRate;
  v3 = [(HAPNumberParser *)&v6 initWithTLVData:data];
  v4 = v3;
  if (v3)
  {
    v3->_sampleRate = [(HAPNumberParser *)v3 decodedNumber];
  }

  return v4;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  v8 = HMDAudioSampleRateTypeAsString([(HMDAudioSampleRate *)self sampleRate]);
  [descriptionCopy appendFormat:@"\n%@ sampleRate = %@", indentCopy, v8];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HMDAudioSampleRateTypeAsString([(HMDAudioSampleRate *)self sampleRate]);
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sampleRate = [(HMDAudioSampleRate *)self sampleRate];
      v6 = sampleRate == [(HMDAudioSampleRate *)equalCopy sampleRate];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sampleRate = [(HMDAudioSampleRate *)self sampleRate];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDAudioSampleRate", "sampleRate"];
  [coderCopy encodeInt32:sampleRate forKey:v6];
}

- (HMDAudioSampleRate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = HMDAudioSampleRate;
  v5 = [(HMDAudioSampleRate *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDAudioSampleRate", "sampleRate"];
    v5->_sampleRate = [coderCopy decodeInt32ForKey:v6];
  }

  return v5;
}

+ (id)arrayWithRates:(id)rates
{
  v20 = *MEMORY[0x277D85DE8];
  ratesCopy = rates;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(ratesCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = ratesCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [HMDAudioSampleRate alloc];
        v12 = -[HMDAudioSampleRate initWithSampleRate:](v11, "initWithSampleRate:", [v10 unsignedIntegerValue]);
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

@end