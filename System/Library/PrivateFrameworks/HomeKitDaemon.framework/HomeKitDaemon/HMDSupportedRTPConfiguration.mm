@interface HMDSupportedRTPConfiguration
- (BOOL)_parseFromTLVData;
- (HMDSupportedRTPConfiguration)initWithCoder:(id)coder;
- (HMDSupportedRTPConfiguration)initWithCryptoSuites:(id)suites;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDSupportedRTPConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  srtpCryptoSuites = [(HMDSupportedRTPConfiguration *)self srtpCryptoSuites];
  [coderCopy encodeObject:srtpCryptoSuites forKey:@"kSupportedRTPParameters__SRTPCryptoSuite"];
}

- (HMDSupportedRTPConfiguration)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HMDSupportedRTPConfiguration;
  v5 = [(HMDSupportedRTPConfiguration *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kSupportedRTPParameters__SRTPCryptoSuite"];
    srtpCryptoSuites = v5->_srtpCryptoSuites;
    v5->_srtpCryptoSuites = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  [descriptionCopy appendFormat:@"\n %@ tlvDatablob = %@ ", indentCopy, tlvDatablob];

  srtpCryptoSuites = [(HMDSupportedRTPConfiguration *)self srtpCryptoSuites];
  v9 = arrayToString(srtpCryptoSuites, indentCopy);
  [descriptionCopy appendFormat:@"\n %@ srtpCryptoSuites = %@ ", indentCopy, v9];
}

- (NSData)tlvData
{
  v18 = *MEMORY[0x277D85DE8];
  creator = [MEMORY[0x277CFEC80] creator];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  srtpCryptoSuites = [(HMDSupportedRTPConfiguration *)self srtpCryptoSuites];
  v5 = [srtpCryptoSuites countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(srtpCryptoSuites);
        }

        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "srtpCryptoSuite")}];
        [creator addTLV:2 number:v9];
      }

      v6 = [srtpCryptoSuites countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  serialize = [creator serialize];

  v11 = *MEMORY[0x277D85DE8];

  return serialize;
}

- (BOOL)_parseFromTLVData
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEA58] wrappertlv:2 name:@"kSupportedRTPParameters__SRTPCryptoSuite" objectCreator:&__block_literal_global_529];
  v10[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v5 = [(HAPTLVBase *)self _parse:v4];
  if (v5)
  {
    field = [v3 field];
    srtpCryptoSuites = self->_srtpCryptoSuites;
    self->_srtpCryptoSuites = field;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

HMDSRTPCryptoSuite *__49__HMDSupportedRTPConfiguration__parseFromTLVData__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDSRTPCryptoSuite alloc] initWithTLVData:v2];

  return v3;
}

- (HMDSupportedRTPConfiguration)initWithCryptoSuites:(id)suites
{
  suitesCopy = suites;
  v9.receiver = self;
  v9.super_class = HMDSupportedRTPConfiguration;
  v5 = [(HMDSupportedRTPConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [suitesCopy copy];
    srtpCryptoSuites = v5->_srtpCryptoSuites;
    v5->_srtpCryptoSuites = v6;
  }

  return v5;
}

@end