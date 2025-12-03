@interface HMDSRTPCryptoSuite
+ (id)arrayWithSuites:(id)suites;
- (BOOL)isEqual:(id)equal;
- (HMDSRTPCryptoSuite)initWithCoder:(id)coder;
- (HMDSRTPCryptoSuite)initWithCryptoSuite:(unint64_t)suite;
- (HMDSRTPCryptoSuite)initWithTLVData:(id)data;
- (id)description;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDSRTPCryptoSuite

- (HMDSRTPCryptoSuite)initWithTLVData:(id)data
{
  v6.receiver = self;
  v6.super_class = HMDSRTPCryptoSuite;
  v3 = [(HAPNumberParser *)&v6 initWithTLVData:data];
  v4 = v3;
  if (v3)
  {
    v3->_srtpCryptoSuite = [(HAPNumberParser *)v3 decodedNumber];
  }

  return v4;
}

- (HMDSRTPCryptoSuite)initWithCryptoSuite:(unint64_t)suite
{
  v5.receiver = self;
  v5.super_class = HMDSRTPCryptoSuite;
  result = [(HMDSRTPCryptoSuite *)&v5 init];
  if (result)
  {
    result->_srtpCryptoSuite = suite;
  }

  return result;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  v8 = HMDSRTPCryptoSuiteTypeAsString([(HMDSRTPCryptoSuite *)self srtpCryptoSuite]);
  [descriptionCopy appendFormat:@"\n%@ srtpCryptoSuite = %@", indentCopy, v8];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HMDSRTPCryptoSuiteTypeAsString([(HMDSRTPCryptoSuite *)self srtpCryptoSuite]);
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
      srtpCryptoSuite = [(HMDSRTPCryptoSuite *)self srtpCryptoSuite];
      v6 = srtpCryptoSuite == [(HMDSRTPCryptoSuite *)equalCopy srtpCryptoSuite];
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
  srtpCryptoSuite = [(HMDSRTPCryptoSuite *)self srtpCryptoSuite];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDSRTPCryptoSuite", "srtpCryptoSuite"];
  [coderCopy encodeInt32:srtpCryptoSuite forKey:v6];
}

- (HMDSRTPCryptoSuite)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = HMDSRTPCryptoSuite;
  v5 = [(HMDSRTPCryptoSuite *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s_%s", "HMDSRTPCryptoSuite", "srtpCryptoSuite"];
    v5->_srtpCryptoSuite = [coderCopy decodeInt32ForKey:v6];
  }

  return v5;
}

+ (id)arrayWithSuites:(id)suites
{
  v20 = *MEMORY[0x277D85DE8];
  suitesCopy = suites;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(suitesCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = suitesCopy;
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
        v11 = [HMDSRTPCryptoSuite alloc];
        v12 = -[HMDSRTPCryptoSuite initWithCryptoSuite:](v11, "initWithCryptoSuite:", [v10 unsignedIntegerValue]);
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