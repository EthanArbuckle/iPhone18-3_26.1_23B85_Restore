@interface HMDBitRateSetting
+ (id)arrayWithSettings:(id)settings;
- (BOOL)isEqual:(id)equal;
- (HMDBitRateSetting)initWithBitRateSetting:(unint64_t)setting;
- (HMDBitRateSetting)initWithCoder:(id)coder;
- (HMDBitRateSetting)initWithTLVData:(id)data;
- (id)description;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDBitRateSetting

- (HMDBitRateSetting)initWithBitRateSetting:(unint64_t)setting
{
  v5.receiver = self;
  v5.super_class = HMDBitRateSetting;
  result = [(HMDBitRateSetting *)&v5 init];
  if (result)
  {
    result->_bitrateSetting = setting;
  }

  return result;
}

- (HMDBitRateSetting)initWithTLVData:(id)data
{
  v6.receiver = self;
  v6.super_class = HMDBitRateSetting;
  v3 = [(HAPNumberParser *)&v6 initWithTLVData:data];
  v4 = v3;
  if (v3)
  {
    v3->_bitrateSetting = [(HAPNumberParser *)v3 decodedNumber];
  }

  return v4;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  v8 = HMDBitRateSettingTypeAsString([(HMDBitRateSetting *)self bitrateSetting]);
  [descriptionCopy appendFormat:@"\n%@ bitrateSetting = %@", indentCopy, v8];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HMDBitRateSettingTypeAsString([(HMDBitRateSetting *)self bitrateSetting]);
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
      bitrateSetting = [(HMDBitRateSetting *)self bitrateSetting];
      v6 = bitrateSetting == [(HMDBitRateSetting *)equalCopy bitrateSetting];
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
  bitrateSetting = [(HMDBitRateSetting *)self bitrateSetting];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDBitRateSetting", "bitrateSetting"];
  [coderCopy encodeInt32:bitrateSetting forKey:v6];
}

- (HMDBitRateSetting)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = HMDBitRateSetting;
  v5 = [(HMDBitRateSetting *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDBitRateSetting", "bitrateSetting"];
    v5->_bitrateSetting = [coderCopy decodeInt32ForKey:v6];
  }

  return v5;
}

+ (id)arrayWithSettings:(id)settings
{
  v20 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(settingsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = settingsCopy;
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
        v11 = [HMDBitRateSetting alloc];
        v12 = -[HMDBitRateSetting initWithBitRateSetting:](v11, "initWithBitRateSetting:", [v10 unsignedIntegerValue]);
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