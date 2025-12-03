@interface HMDCameraRecordingGeneralConfiguration
- (BOOL)_parseFromTLVData;
- (HMDCameraRecordingGeneralConfiguration)initWithCoder:(id)coder;
- (HMDCameraRecordingGeneralConfiguration)initWithPrebufferLength:(id)length eventTriggerOptions:(unint64_t)options mediaContainerConfigurations:(id)configurations;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDCameraRecordingGeneralConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  prebufferLength = [(HMDCameraRecordingGeneralConfiguration *)self prebufferLength];
  [coderCopy encodeObject:prebufferLength forKey:@"kGeneralConfigurationPrebufferLength"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDCameraRecordingGeneralConfiguration eventTriggerOptions](self, "eventTriggerOptions")}];
  [coderCopy encodeObject:v6 forKey:@"kGeneralConfigurationEventTriggerOptions"];

  mediaContainerConfigurations = [(HMDCameraRecordingGeneralConfiguration *)self mediaContainerConfigurations];
  [coderCopy encodeObject:mediaContainerConfigurations forKey:@"kGeneralConfigurationMediaContainerConfigurations"];
}

- (HMDCameraRecordingGeneralConfiguration)initWithCoder:(id)coder
{
  v17[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = HMDCameraRecordingGeneralConfiguration;
  v5 = [(HMDCameraRecordingGeneralConfiguration *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kGeneralConfigurationPrebufferLength"];
    prebufferLength = v5->_prebufferLength;
    v5->_prebufferLength = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kGeneralConfigurationEventTriggerOptions"];
    v5->_eventTriggerOptions = [v8 unsignedLongLongValue];

    v9 = MEMORY[0x277CBEB98];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v11 = [v9 setWithArray:v10];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"kGeneralConfigurationMediaContainerConfigurations"];
    mediaContainerConfigurations = v5->_mediaContainerConfigurations;
    v5->_mediaContainerConfigurations = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  [descriptionCopy appendFormat:@"\n%@tlvDatablob = %@ ", indentCopy, tlvDatablob];

  prebufferLength = [(HMDCameraRecordingGeneralConfiguration *)self prebufferLength];
  [descriptionCopy appendFormat:@"\n%@prebufferLength = %@ ", indentCopy, prebufferLength];

  v10 = HMDCameraRecordingEventTriggerOptionsAsString([(HMDCameraRecordingGeneralConfiguration *)self eventTriggerOptions]);
  [descriptionCopy appendFormat:@"\n%@eventTriggerOptions = %@ ", indentCopy, v10];

  mediaContainerConfigurations = [(HMDCameraRecordingGeneralConfiguration *)self mediaContainerConfigurations];
  v11 = HAPTLVCreateParseArrayToString();
  [descriptionCopy appendFormat:@"\n%@containerConfigurations = %@ ", indentCopy, v11];
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  prebufferLength = [(HMDCameraRecordingGeneralConfiguration *)self prebufferLength];
  [creator addTLV:1 length:4 number:prebufferLength];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDCameraRecordingGeneralConfiguration eventTriggerOptions](self, "eventTriggerOptions")}];
  [creator addTLV:2 length:8 number:v5];

  mediaContainerConfigurations = [(HMDCameraRecordingGeneralConfiguration *)self mediaContainerConfigurations];
  firstObject = [mediaContainerConfigurations firstObject];
  tlvData = [firstObject tlvData];

  [creator addTLV:3 data:tlvData];
  serialize = [creator serialize];

  return serialize;
}

- (BOOL)_parseFromTLVData
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC08] wrappertlv:1 name:@"kGeneralConfigurationPrebufferLength"];
  v4 = [MEMORY[0x277CFEC08] wrappertlv:2 name:@"kGeneralConfigurationEventTriggerOptions"];
  v5 = [MEMORY[0x277CFEA58] wrappertlv:3 name:@"kGeneralConfigurationMediaContainerConfigurations" objectCreator:&__block_literal_global_136588];
  v15[0] = v3;
  v15[1] = v4;
  v15[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  v7 = [(HAPTLVBase *)self _parse:v6];
  if (v7)
  {
    field = [v3 field];
    prebufferLength = self->_prebufferLength;
    self->_prebufferLength = field;

    field2 = [v4 field];
    self->_eventTriggerOptions = [field2 unsignedLongLongValue];

    field3 = [v5 field];
    mediaContainerConfigurations = self->_mediaContainerConfigurations;
    self->_mediaContainerConfigurations = field3;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

HMDCameraRecordingMediaContainerConfiguration *__59__HMDCameraRecordingGeneralConfiguration__parseFromTLVData__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(HAPTLVBase *)[HMDCameraRecordingMediaContainerConfiguration alloc] initWithTLVData:v2];

  return v3;
}

- (HMDCameraRecordingGeneralConfiguration)initWithPrebufferLength:(id)length eventTriggerOptions:(unint64_t)options mediaContainerConfigurations:(id)configurations
{
  lengthCopy = length;
  configurationsCopy = configurations;
  v14.receiver = self;
  v14.super_class = HMDCameraRecordingGeneralConfiguration;
  v11 = [(HMDCameraRecordingGeneralConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_prebufferLength, length);
    v12->_eventTriggerOptions = options;
    objc_storeStrong(&v12->_mediaContainerConfigurations, configurations);
  }

  return v12;
}

@end