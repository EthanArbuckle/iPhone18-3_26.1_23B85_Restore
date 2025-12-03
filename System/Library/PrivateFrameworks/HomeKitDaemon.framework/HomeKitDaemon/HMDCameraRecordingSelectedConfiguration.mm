@interface HMDCameraRecordingSelectedConfiguration
- (BOOL)_parseFromTLVData;
- (HMDCameraRecordingSelectedConfiguration)initWithCoder:(id)coder;
- (HMDCameraRecordingSelectedConfiguration)initWithGeneralConfiguration:(id)configuration videoCodecConfiguration:(id)codecConfiguration audioCodecConfiguration:(id)audioCodecConfiguration;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDCameraRecordingSelectedConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  generalConfiguration = [(HMDCameraRecordingSelectedConfiguration *)self generalConfiguration];
  [coderCopy encodeObject:generalConfiguration forKey:@"kSelectedConfigurationGeneral"];

  videoConfiguration = [(HMDCameraRecordingSelectedConfiguration *)self videoConfiguration];
  [coderCopy encodeObject:videoConfiguration forKey:@"kSelectedConfigurationVideo"];

  audioConfiguration = [(HMDCameraRecordingSelectedConfiguration *)self audioConfiguration];
  [coderCopy encodeObject:audioConfiguration forKey:@"kSelectedConfigurationAudio"];
}

- (HMDCameraRecordingSelectedConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HMDCameraRecordingSelectedConfiguration;
  v5 = [(HMDCameraRecordingSelectedConfiguration *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSelectedConfigurationGeneral"];
    generalConfiguration = v5->_generalConfiguration;
    v5->_generalConfiguration = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSelectedConfigurationVideo"];
    videoConfiguration = v5->_videoConfiguration;
    v5->_videoConfiguration = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSelectedConfigurationAudio"];
    audioConfiguration = v5->_audioConfiguration;
    v5->_audioConfiguration = v10;
  }

  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  [descriptionCopy appendFormat:@"\n%@tlvDatablob = %@ ", indentCopy, tlvDatablob];

  generalConfiguration = [(HMDCameraRecordingSelectedConfiguration *)self generalConfiguration];
  v10 = [generalConfiguration descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n%@generalConfiguration = %@ ", indentCopy, v10];

  videoConfiguration = [(HMDCameraRecordingSelectedConfiguration *)self videoConfiguration];
  v12 = [videoConfiguration descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n%@videoConfiguration = %@ ", indentCopy, v12];

  audioConfiguration = [(HMDCameraRecordingSelectedConfiguration *)self audioConfiguration];
  v13 = [audioConfiguration descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n%@audioConfiguration = %@ ", indentCopy, v13];
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  generalConfiguration = [(HMDCameraRecordingSelectedConfiguration *)self generalConfiguration];
  tlvData = [generalConfiguration tlvData];
  [creator addTLV:1 data:tlvData];

  videoConfiguration = [(HMDCameraRecordingSelectedConfiguration *)self videoConfiguration];
  tlvData2 = [videoConfiguration tlvData];
  [creator addTLV:2 data:tlvData2];

  audioConfiguration = [(HMDCameraRecordingSelectedConfiguration *)self audioConfiguration];
  tlvData3 = [audioConfiguration tlvData];
  [creator addTLV:3 data:tlvData3];

  serialize = [creator serialize];

  return serialize;
}

- (BOOL)_parseFromTLVData
{
  v22[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEB38] wrappertlv:1 name:@"kSelectedConfigurationGeneral"];
  v4 = [MEMORY[0x277CFEB38] wrappertlv:2 name:@"kSelectedConfigurationVideo"];
  v5 = [MEMORY[0x277CFEB38] wrappertlv:3 name:@"kSelectedConfigurationAudio"];
  v22[0] = v3;
  v22[1] = v4;
  v22[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v7 = [(HAPTLVBase *)self _parse:v6];
  if (v7)
  {
    v8 = [HMDCameraRecordingGeneralConfiguration alloc];
    field = [v3 field];
    v10 = [(HAPTLVBase *)v8 initWithTLVData:field];
    generalConfiguration = self->_generalConfiguration;
    self->_generalConfiguration = v10;

    v12 = [HMDCameraRecordingVideoCodecConfiguration alloc];
    field2 = [v4 field];
    v14 = [(HAPTLVBase *)v12 initWithTLVData:field2];
    videoConfiguration = self->_videoConfiguration;
    self->_videoConfiguration = v14;

    v16 = [HMDCameraRecordingAudioCodecConfiguration alloc];
    field3 = [v5 field];
    v18 = [(HAPTLVBase *)v16 initWithTLVData:field3];
    audioConfiguration = self->_audioConfiguration;
    self->_audioConfiguration = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

- (HMDCameraRecordingSelectedConfiguration)initWithGeneralConfiguration:(id)configuration videoCodecConfiguration:(id)codecConfiguration audioCodecConfiguration:(id)audioCodecConfiguration
{
  configurationCopy = configuration;
  codecConfigurationCopy = codecConfiguration;
  audioCodecConfigurationCopy = audioCodecConfiguration;
  v15.receiver = self;
  v15.super_class = HMDCameraRecordingSelectedConfiguration;
  v12 = [(HMDCameraRecordingSelectedConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_generalConfiguration, configuration);
    objc_storeStrong(&v13->_videoConfiguration, codecConfiguration);
    objc_storeStrong(&v13->_audioConfiguration, audioCodecConfiguration);
  }

  return v13;
}

@end