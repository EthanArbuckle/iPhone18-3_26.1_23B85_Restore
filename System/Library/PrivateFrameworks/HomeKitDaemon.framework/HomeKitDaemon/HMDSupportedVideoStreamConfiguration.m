@interface HMDSupportedVideoStreamConfiguration
- (BOOL)_parseFromTLVData;
- (HMDSupportedVideoStreamConfiguration)initWithCodecConfigurations:(id)a3;
- (HMDSupportedVideoStreamConfiguration)initWithCoder:(id)a3;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDSupportedVideoStreamConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDSupportedVideoStreamConfiguration *)self codecConfigurations];
  [v4 encodeObject:v5 forKey:@"kSupportedVideoStreamConfiguration_VideoCodecConfigurations"];
}

- (HMDSupportedVideoStreamConfiguration)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HMDSupportedVideoStreamConfiguration;
  v5 = [(HMDSupportedVideoStreamConfiguration *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kSupportedVideoStreamConfiguration_VideoCodecConfigurations"];
    codecConfigurations = v5->_codecConfigurations;
    v5->_codecConfigurations = v9;
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

  v11 = [(HMDSupportedVideoStreamConfiguration *)self codecConfigurations];
  v9 = [v11 allValues];
  v10 = arrayToString(v9, v6);
  [v7 appendFormat:@"\n %@ configurations = %@ ", v6, v10];
}

- (NSData)tlvData
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC80] creator];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(HMDSupportedVideoStreamConfiguration *)self codecConfigurations];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) tlvData];
        [v3 addTLV:1 data:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v3 serialize];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)_parseFromTLVData
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEA58] wrappertlv:1 name:@"kSupportedVideoStreamConfiguration_VideoCodecConfigurations" objectCreator:&__block_literal_global_333];
  v26[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v5 = [(HAPTLVBase *)self _parse:v4];
  if (v5)
  {
    v20 = self;
    v6 = MEMORY[0x277CBEB38];
    v7 = [v3 field];
    v8 = [v6 dictionaryWithCapacity:{objc_msgSend(v7, "count")}];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v3 field];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v14 videoCodec];
          [v8 setObject:v14 forKeyedSubscript:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v16 = [v8 copy];
    codecConfigurations = v20->_codecConfigurations;
    v20->_codecConfigurations = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

HMDVideoCodecConfiguration *__57__HMDSupportedVideoStreamConfiguration__parseFromTLVData__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(HAPTLVBase *)[HMDVideoCodecConfiguration alloc] initWithTLVData:v2];

  return v3;
}

- (HMDSupportedVideoStreamConfiguration)initWithCodecConfigurations:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDSupportedVideoStreamConfiguration;
  v5 = [(HMDSupportedVideoStreamConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    codecConfigurations = v5->_codecConfigurations;
    v5->_codecConfigurations = v6;
  }

  return v5;
}

@end