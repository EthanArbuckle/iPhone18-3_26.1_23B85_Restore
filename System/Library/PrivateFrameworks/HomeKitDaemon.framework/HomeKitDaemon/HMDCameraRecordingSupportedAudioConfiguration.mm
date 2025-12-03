@interface HMDCameraRecordingSupportedAudioConfiguration
- (BOOL)_parseFromTLVData;
- (HMDCameraRecordingSupportedAudioConfiguration)initWithCodecConfigurations:(id)configurations;
- (HMDCameraRecordingSupportedAudioConfiguration)initWithCoder:(id)coder;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDCameraRecordingSupportedAudioConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  codecConfigurations = [(HMDCameraRecordingSupportedAudioConfiguration *)self codecConfigurations];
  [coderCopy encodeObject:codecConfigurations forKey:@"kSupportedAudioConfigurationCodecConfigurations"];
}

- (HMDCameraRecordingSupportedAudioConfiguration)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
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
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kSupportedAudioConfigurationCodecConfigurations"];
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
  [descriptionCopy appendFormat:@"\n%@tlvDatablob = %@ ", indentCopy, tlvDatablob];

  codecConfigurations = [(HMDCameraRecordingSupportedAudioConfiguration *)self codecConfigurations];
  v9 = HAPTLVCreateParseArrayToString();
  [descriptionCopy appendFormat:@"\n%@codecConfigurations = %@ ", indentCopy, v9];
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  codecConfigurations = [(HMDCameraRecordingSupportedAudioConfiguration *)self codecConfigurations];
  firstObject = [codecConfigurations firstObject];
  tlvData = [firstObject tlvData];

  [creator addTLV:1 data:tlvData];
  serialize = [creator serialize];

  return serialize;
}

- (BOOL)_parseFromTLVData
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEA58] wrappertlv:1 name:@"kSupportedAudioConfigurationCodecConfigurations" objectCreator:&__block_literal_global_209_275844];
  v10[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v5 = [(HAPTLVBase *)self _parse:v4];
  if (v5)
  {
    field = [v3 field];
    codecConfigurations = self->_codecConfigurations;
    self->_codecConfigurations = field;
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

- (HMDCameraRecordingSupportedAudioConfiguration)initWithCodecConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v9.receiver = self;
  v9.super_class = HMDCameraRecordingSupportedAudioConfiguration;
  v6 = [(HMDCameraRecordingSupportedAudioConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_codecConfigurations, configurations);
  }

  return v7;
}

@end