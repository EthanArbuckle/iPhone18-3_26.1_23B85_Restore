@interface HMDCameraRecordingGeneralConfiguration
- (BOOL)_parseFromTLVData;
- (HMDCameraRecordingGeneralConfiguration)initWithCoder:(id)a3;
- (HMDCameraRecordingGeneralConfiguration)initWithPrebufferLength:(id)a3 eventTriggerOptions:(unint64_t)a4 mediaContainerConfigurations:(id)a5;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDCameraRecordingGeneralConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingGeneralConfiguration *)self prebufferLength];
  [v4 encodeObject:v5 forKey:@"kGeneralConfigurationPrebufferLength"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDCameraRecordingGeneralConfiguration eventTriggerOptions](self, "eventTriggerOptions")}];
  [v4 encodeObject:v6 forKey:@"kGeneralConfigurationEventTriggerOptions"];

  v7 = [(HMDCameraRecordingGeneralConfiguration *)self mediaContainerConfigurations];
  [v4 encodeObject:v7 forKey:@"kGeneralConfigurationMediaContainerConfigurations"];
}

- (HMDCameraRecordingGeneralConfiguration)initWithCoder:(id)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HMDCameraRecordingGeneralConfiguration;
  v5 = [(HMDCameraRecordingGeneralConfiguration *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kGeneralConfigurationPrebufferLength"];
    prebufferLength = v5->_prebufferLength;
    v5->_prebufferLength = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kGeneralConfigurationEventTriggerOptions"];
    v5->_eventTriggerOptions = [v8 unsignedLongLongValue];

    v9 = MEMORY[0x277CBEB98];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v11 = [v9 setWithArray:v10];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"kGeneralConfigurationMediaContainerConfigurations"];
    mediaContainerConfigurations = v5->_mediaContainerConfigurations;
    v5->_mediaContainerConfigurations = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HAPTLVBase *)self tlvDatablob];
  [v7 appendFormat:@"\n%@tlvDatablob = %@ ", v6, v8];

  v9 = [(HMDCameraRecordingGeneralConfiguration *)self prebufferLength];
  [v7 appendFormat:@"\n%@prebufferLength = %@ ", v6, v9];

  v10 = HMDCameraRecordingEventTriggerOptionsAsString([(HMDCameraRecordingGeneralConfiguration *)self eventTriggerOptions]);
  [v7 appendFormat:@"\n%@eventTriggerOptions = %@ ", v6, v10];

  v12 = [(HMDCameraRecordingGeneralConfiguration *)self mediaContainerConfigurations];
  v11 = HAPTLVCreateParseArrayToString();
  [v7 appendFormat:@"\n%@containerConfigurations = %@ ", v6, v11];
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = [(HMDCameraRecordingGeneralConfiguration *)self prebufferLength];
  [v3 addTLV:1 length:4 number:v4];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDCameraRecordingGeneralConfiguration eventTriggerOptions](self, "eventTriggerOptions")}];
  [v3 addTLV:2 length:8 number:v5];

  v6 = [(HMDCameraRecordingGeneralConfiguration *)self mediaContainerConfigurations];
  v7 = [v6 firstObject];
  v8 = [v7 tlvData];

  [v3 addTLV:3 data:v8];
  v9 = [v3 serialize];

  return v9;
}

- (BOOL)_parseFromTLVData
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC08] wrappertlv:1 name:@"kGeneralConfigurationPrebufferLength"];
  v4 = [MEMORY[0x277CFEC08] wrappertlv:2 name:@"kGeneralConfigurationEventTriggerOptions"];
  v5 = [MEMORY[0x277CFEA58] wrappertlv:3 name:@"kGeneralConfigurationMediaContainerConfigurations" objectCreator:&__block_literal_global_90768];
  v15[0] = v3;
  v15[1] = v4;
  v15[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  v7 = [(HAPTLVBase *)self _parse:v6];
  if (v7)
  {
    v8 = [v3 field];
    prebufferLength = self->_prebufferLength;
    self->_prebufferLength = v8;

    v10 = [v4 field];
    self->_eventTriggerOptions = [v10 unsignedLongLongValue];

    v11 = [v5 field];
    mediaContainerConfigurations = self->_mediaContainerConfigurations;
    self->_mediaContainerConfigurations = v11;
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

- (HMDCameraRecordingGeneralConfiguration)initWithPrebufferLength:(id)a3 eventTriggerOptions:(unint64_t)a4 mediaContainerConfigurations:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HMDCameraRecordingGeneralConfiguration;
  v11 = [(HMDCameraRecordingGeneralConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_prebufferLength, a3);
    v12->_eventTriggerOptions = a4;
    objc_storeStrong(&v12->_mediaContainerConfigurations, a5);
  }

  return v12;
}

@end