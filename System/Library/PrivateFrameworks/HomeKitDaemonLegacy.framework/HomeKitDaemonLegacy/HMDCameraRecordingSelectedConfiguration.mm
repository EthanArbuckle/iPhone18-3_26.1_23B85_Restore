@interface HMDCameraRecordingSelectedConfiguration
- (BOOL)_parseFromTLVData;
- (HMDCameraRecordingSelectedConfiguration)initWithCoder:(id)a3;
- (HMDCameraRecordingSelectedConfiguration)initWithGeneralConfiguration:(id)a3 videoCodecConfiguration:(id)a4 audioCodecConfiguration:(id)a5;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDCameraRecordingSelectedConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingSelectedConfiguration *)self generalConfiguration];
  [v4 encodeObject:v5 forKey:@"kSelectedConfigurationGeneral"];

  v6 = [(HMDCameraRecordingSelectedConfiguration *)self videoConfiguration];
  [v4 encodeObject:v6 forKey:@"kSelectedConfigurationVideo"];

  v7 = [(HMDCameraRecordingSelectedConfiguration *)self audioConfiguration];
  [v4 encodeObject:v7 forKey:@"kSelectedConfigurationAudio"];
}

- (HMDCameraRecordingSelectedConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HMDCameraRecordingSelectedConfiguration;
  v5 = [(HMDCameraRecordingSelectedConfiguration *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSelectedConfigurationGeneral"];
    generalConfiguration = v5->_generalConfiguration;
    v5->_generalConfiguration = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSelectedConfigurationVideo"];
    videoConfiguration = v5->_videoConfiguration;
    v5->_videoConfiguration = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSelectedConfigurationAudio"];
    audioConfiguration = v5->_audioConfiguration;
    v5->_audioConfiguration = v10;
  }

  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HAPTLVBase *)self tlvDatablob];
  [v7 appendFormat:@"\n%@tlvDatablob = %@ ", v6, v8];

  v9 = [(HMDCameraRecordingSelectedConfiguration *)self generalConfiguration];
  v10 = [v9 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n%@generalConfiguration = %@ ", v6, v10];

  v11 = [(HMDCameraRecordingSelectedConfiguration *)self videoConfiguration];
  v12 = [v11 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n%@videoConfiguration = %@ ", v6, v12];

  v14 = [(HMDCameraRecordingSelectedConfiguration *)self audioConfiguration];
  v13 = [v14 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n%@audioConfiguration = %@ ", v6, v13];
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = [(HMDCameraRecordingSelectedConfiguration *)self generalConfiguration];
  v5 = [v4 tlvData];
  [v3 addTLV:1 data:v5];

  v6 = [(HMDCameraRecordingSelectedConfiguration *)self videoConfiguration];
  v7 = [v6 tlvData];
  [v3 addTLV:2 data:v7];

  v8 = [(HMDCameraRecordingSelectedConfiguration *)self audioConfiguration];
  v9 = [v8 tlvData];
  [v3 addTLV:3 data:v9];

  v10 = [v3 serialize];

  return v10;
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
    v9 = [v3 field];
    v10 = [(HAPTLVBase *)v8 initWithTLVData:v9];
    generalConfiguration = self->_generalConfiguration;
    self->_generalConfiguration = v10;

    v12 = [HMDCameraRecordingVideoCodecConfiguration alloc];
    v13 = [v4 field];
    v14 = [(HAPTLVBase *)v12 initWithTLVData:v13];
    videoConfiguration = self->_videoConfiguration;
    self->_videoConfiguration = v14;

    v16 = [HMDCameraRecordingAudioCodecConfiguration alloc];
    v17 = [v5 field];
    v18 = [(HAPTLVBase *)v16 initWithTLVData:v17];
    audioConfiguration = self->_audioConfiguration;
    self->_audioConfiguration = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

- (HMDCameraRecordingSelectedConfiguration)initWithGeneralConfiguration:(id)a3 videoCodecConfiguration:(id)a4 audioCodecConfiguration:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDCameraRecordingSelectedConfiguration;
  v12 = [(HMDCameraRecordingSelectedConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_generalConfiguration, a3);
    objc_storeStrong(&v13->_videoConfiguration, a4);
    objc_storeStrong(&v13->_audioConfiguration, a5);
  }

  return v13;
}

@end