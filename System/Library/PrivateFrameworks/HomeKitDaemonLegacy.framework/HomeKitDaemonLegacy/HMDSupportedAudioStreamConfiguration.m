@interface HMDSupportedAudioStreamConfiguration
- (BOOL)_parseFromTLVData;
- (HMDSupportedAudioStreamConfiguration)initWithCoder:(id)a3;
- (HMDSupportedAudioStreamConfiguration)initWithComfortNoise:(id)a3 CodecConfigurations:(id)a4;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDSupportedAudioStreamConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDSupportedAudioStreamConfiguration *)self codecConfigurations];
  [v4 encodeObject:v5 forKey:@"kSupportedAudioStreamConfiguration_AudioCodecConfigurations"];

  v6 = [(HMDSupportedAudioStreamConfiguration *)self supportsComfortNoise];
  [v4 encodeObject:v6 forKey:@"kSupportedAudioStreamConfiguration_ComfortNoise"];
}

- (HMDSupportedAudioStreamConfiguration)initWithCoder:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HMDSupportedAudioStreamConfiguration;
  v5 = [(HMDSupportedAudioStreamConfiguration *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kSupportedAudioStreamConfiguration_AudioCodecConfigurations"];
    codecConfigurations = v5->_codecConfigurations;
    v5->_codecConfigurations = v9;

    v11 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"kSupportedAudioStreamConfiguration_ComfortNoise"];
    supportsComfortNoise = v5->_supportsComfortNoise;
    v5->_supportsComfortNoise = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HAPTLVBase *)self tlvDatablob];
  [v7 appendFormat:@"\n %@ tlvDatablob = %@ ", v6, v8];

  v9 = [(HMDSupportedAudioStreamConfiguration *)self codecConfigurations];
  v10 = [v9 allValues];
  v11 = arrayToString(v10, v6);
  [v7 appendFormat:@"\n %@ configurations = %@ ", v6, v11];

  v12 = [(HAPTLVBase *)self tlvDatablob];
  [v7 appendFormat:@"\n %@ comfortNoise = %@ ", v6, v12];
}

- (NSData)tlvData
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC80] creator];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(HMDSupportedAudioStreamConfiguration *)self codecConfigurations];
  v5 = [v4 allValues];

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

        v10 = [*(*(&v15 + 1) + 8 * i) tlvData];
        [v3 addTLV:1 data:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [(HMDSupportedAudioStreamConfiguration *)self supportsComfortNoise];
  [v3 addTLV:2 number:v11];

  v12 = [v3 serialize];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)_parseFromTLVData
{
  v31[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEA58] wrappertlv:1 name:@"kSupportedAudioStreamConfiguration_AudioCodecConfigurations" objectCreator:&__block_literal_global_491];
  v4 = [MEMORY[0x277CFEC08] wrappertlv:2 name:@"kSupportedAudioStreamConfiguration_ComfortNoise"];
  v31[0] = v3;
  v31[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v6 = [(HAPTLVBase *)self _parse:v5];
  v7 = v6;
  if (v6)
  {
    v24 = v5;
    v25 = v6;
    v8 = MEMORY[0x277CBEB38];
    v9 = [v3 field];
    v10 = [v8 dictionaryWithCapacity:{objc_msgSend(v9, "count")}];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = [v3 field];
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          v17 = [v16 codecGroup];
          [v10 setObject:v16 forKeyedSubscript:v17];
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v13);
    }

    v18 = [v10 copy];
    codecConfigurations = self->_codecConfigurations;
    self->_codecConfigurations = v18;

    v20 = [v4 field];
    supportsComfortNoise = self->_supportsComfortNoise;
    self->_supportsComfortNoise = v20;

    v7 = v25;
    v5 = v24;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v7;
}

HMDAudioCodecConfiguration *__57__HMDSupportedAudioStreamConfiguration__parseFromTLVData__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(HAPTLVBase *)[HMDAudioCodecConfiguration alloc] initWithTLVData:v2];

  return v3;
}

- (HMDSupportedAudioStreamConfiguration)initWithComfortNoise:(id)a3 CodecConfigurations:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMDSupportedAudioStreamConfiguration;
  v9 = [(HMDSupportedAudioStreamConfiguration *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_supportsComfortNoise, a3);
    v11 = [v8 copy];
    codecConfigurations = v10->_codecConfigurations;
    v10->_codecConfigurations = v11;
  }

  return v10;
}

@end