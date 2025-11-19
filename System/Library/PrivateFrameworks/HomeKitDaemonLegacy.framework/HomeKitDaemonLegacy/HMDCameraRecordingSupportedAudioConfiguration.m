@interface HMDCameraRecordingSupportedAudioConfiguration
- (BOOL)_parseFromTLVData;
- (HMDCameraRecordingSupportedAudioConfiguration)initWithCodecConfigurations:(id)a3;
- (HMDCameraRecordingSupportedAudioConfiguration)initWithCoder:(id)a3;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDCameraRecordingSupportedAudioConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingSupportedAudioConfiguration *)self codecConfigurations];
  [v4 encodeObject:v5 forKey:@"kSupportedAudioConfigurationCodecConfigurations"];
}

- (HMDCameraRecordingSupportedAudioConfiguration)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HMDCameraRecordingSupportedAudioConfiguration;
  v5 = [(HMDCameraRecordingSupportedAudioConfiguration *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kSupportedAudioConfigurationCodecConfigurations"];
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
  [v7 appendFormat:@"\n%@tlvDatablob = %@ ", v6, v8];

  v10 = [(HMDCameraRecordingSupportedAudioConfiguration *)self codecConfigurations];
  v9 = HAPTLVCreateParseArrayToString();
  [v7 appendFormat:@"\n%@codecConfigurations = %@ ", v6, v9];
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = [(HMDCameraRecordingSupportedAudioConfiguration *)self codecConfigurations];
  v5 = [v4 firstObject];
  v6 = [v5 tlvData];

  [v3 addTLV:1 data:v6];
  v7 = [v3 serialize];

  return v7;
}

- (BOOL)_parseFromTLVData
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEA58] wrappertlv:1 name:@"kSupportedAudioConfigurationCodecConfigurations" objectCreator:&__block_literal_global_209_188783];
  v10[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v5 = [(HAPTLVBase *)self _parse:v4];
  if (v5)
  {
    v6 = [v3 field];
    codecConfigurations = self->_codecConfigurations;
    self->_codecConfigurations = v6;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

HMDCameraRecordingAudioCodecConfiguration *__66__HMDCameraRecordingSupportedAudioConfiguration__parseFromTLVData__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(HAPTLVBase *)[HMDCameraRecordingAudioCodecConfiguration alloc] initWithTLVData:v2];

  return v3;
}

- (HMDCameraRecordingSupportedAudioConfiguration)initWithCodecConfigurations:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDCameraRecordingSupportedAudioConfiguration;
  v6 = [(HMDCameraRecordingSupportedAudioConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_codecConfigurations, a3);
  }

  return v7;
}

@end