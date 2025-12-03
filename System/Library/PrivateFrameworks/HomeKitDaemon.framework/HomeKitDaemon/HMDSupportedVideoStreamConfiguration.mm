@interface HMDSupportedVideoStreamConfiguration
- (BOOL)_parseFromTLVData;
- (HMDSupportedVideoStreamConfiguration)initWithCodecConfigurations:(id)configurations;
- (HMDSupportedVideoStreamConfiguration)initWithCoder:(id)coder;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDSupportedVideoStreamConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  codecConfigurations = [(HMDSupportedVideoStreamConfiguration *)self codecConfigurations];
  [coderCopy encodeObject:codecConfigurations forKey:@"kSupportedVideoStreamConfiguration_VideoCodecConfigurations"];
}

- (HMDSupportedVideoStreamConfiguration)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
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
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kSupportedVideoStreamConfiguration_VideoCodecConfigurations"];
    codecConfigurations = v5->_codecConfigurations;
    v5->_codecConfigurations = v9;
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

  codecConfigurations = [(HMDSupportedVideoStreamConfiguration *)self codecConfigurations];
  allValues = [codecConfigurations allValues];
  v10 = arrayToString(allValues, indentCopy);
  [descriptionCopy appendFormat:@"\n %@ configurations = %@ ", indentCopy, v10];
}

- (NSData)tlvData
{
  v19 = *MEMORY[0x277D85DE8];
  creator = [MEMORY[0x277CFEC80] creator];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  codecConfigurations = [(HMDSupportedVideoStreamConfiguration *)self codecConfigurations];
  allValues = [codecConfigurations allValues];

  v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allValues);
        }

        tlvData = [*(*(&v14 + 1) + 8 * i) tlvData];
        [creator addTLV:1 data:tlvData];
      }

      v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  serialize = [creator serialize];

  v12 = *MEMORY[0x277D85DE8];

  return serialize;
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
    selfCopy = self;
    v6 = MEMORY[0x277CBEB38];
    field = [v3 field];
    v8 = [v6 dictionaryWithCapacity:{objc_msgSend(field, "count")}];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    field2 = [v3 field];
    v10 = [field2 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(field2);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          videoCodec = [v14 videoCodec];
          [v8 setObject:v14 forKeyedSubscript:videoCodec];
        }

        v11 = [field2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v16 = [v8 copy];
    codecConfigurations = selfCopy->_codecConfigurations;
    selfCopy->_codecConfigurations = v16;
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

- (HMDSupportedVideoStreamConfiguration)initWithCodecConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v9.receiver = self;
  v9.super_class = HMDSupportedVideoStreamConfiguration;
  v5 = [(HMDSupportedVideoStreamConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [configurationsCopy copy];
    codecConfigurations = v5->_codecConfigurations;
    v5->_codecConfigurations = v6;
  }

  return v5;
}

@end