@interface HMDSupportedRTPConfiguration
- (BOOL)_parseFromTLVData;
- (HMDSupportedRTPConfiguration)initWithCoder:(id)a3;
- (HMDSupportedRTPConfiguration)initWithCryptoSuites:(id)a3;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDSupportedRTPConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDSupportedRTPConfiguration *)self srtpCryptoSuites];
  [v4 encodeObject:v5 forKey:@"kSupportedRTPParameters__SRTPCryptoSuite"];
}

- (HMDSupportedRTPConfiguration)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kSupportedRTPParameters__SRTPCryptoSuite"];
    srtpCryptoSuites = v5->_srtpCryptoSuites;
    v5->_srtpCryptoSuites = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HAPTLVBase *)self tlvDatablob];
  [v7 appendFormat:@"\n %@ tlvDatablob = %@ ", v6, v8];

  v10 = [(HMDSupportedRTPConfiguration *)self srtpCryptoSuites];
  v9 = arrayToString(v10, v6);
  [v7 appendFormat:@"\n %@ srtpCryptoSuites = %@ ", v6, v9];
}

- (NSData)tlvData
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC80] creator];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(HMDSupportedRTPConfiguration *)self srtpCryptoSuites];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "srtpCryptoSuite")}];
        [v3 addTLV:2 number:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 serialize];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
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
    v6 = [v3 field];
    srtpCryptoSuites = self->_srtpCryptoSuites;
    self->_srtpCryptoSuites = v6;
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

- (HMDSupportedRTPConfiguration)initWithCryptoSuites:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDSupportedRTPConfiguration;
  v5 = [(HMDSupportedRTPConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    srtpCryptoSuites = v5->_srtpCryptoSuites;
    v5->_srtpCryptoSuites = v6;
  }

  return v5;
}

@end