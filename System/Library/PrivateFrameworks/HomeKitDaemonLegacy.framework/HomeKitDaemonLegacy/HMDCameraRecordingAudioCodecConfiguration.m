@interface HMDCameraRecordingAudioCodecConfiguration
- (BOOL)_parseFromTLVData;
- (HMDCameraRecordingAudioCodecConfiguration)initWithAudioCodec:(id)a3 codecParameters:(id)a4;
- (HMDCameraRecordingAudioCodecConfiguration)initWithCoder:(id)a3;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDCameraRecordingAudioCodecConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingAudioCodecConfiguration *)self codec];
  [v4 encodeObject:v5 forKey:@"kAudioCodecConfigurationCodec"];

  v6 = [(HMDCameraRecordingAudioCodecConfiguration *)self parameters];
  [v4 encodeObject:v6 forKey:@"kAudioCodecConfigurationCodecParameters"];
}

- (HMDCameraRecordingAudioCodecConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HMDCameraRecordingAudioCodecConfiguration;
  v5 = [(HMDCameraRecordingAudioCodecConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kAudioCodecConfigurationCodec"];
    codec = v5->_codec;
    v5->_codec = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kAudioCodecConfigurationCodecParameters"];
    parameters = v5->_parameters;
    v5->_parameters = v8;
  }

  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HAPTLVBase *)self tlvDatablob];
  [v7 appendFormat:@"\n%@tlvDatablob = %@ ", v6, v8];

  v9 = [(HMDCameraRecordingAudioCodecConfiguration *)self codec];
  v10 = [v9 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n%@codec = %@ ", v6, v10];

  v12 = [(HMDCameraRecordingAudioCodecConfiguration *)self parameters];
  v11 = [v12 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n%@parameters = %@", v6, v11];
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(HMDCameraRecordingAudioCodecConfiguration *)self codec];
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "type")}];
  [v3 addTLV:1 length:1 number:v6];

  v7 = [(HMDCameraRecordingAudioCodecConfiguration *)self parameters];
  v8 = [v7 tlvData];

  [v3 addTLV:2 data:v8];
  v9 = [v3 serialize];

  return v9;
}

- (BOOL)_parseFromTLVData
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC08] wrappertlv:1 name:@"kAudioCodecConfigurationCodec"];
  v4 = [MEMORY[0x277CFEB38] wrappertlv:2 name:@"kAudioCodecConfigurationCodecParameters"];
  v17[0] = v3;
  v17[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v6 = [(HAPTLVBase *)self _parse:v5];
  if (v6)
  {
    v7 = [HMDCameraRecordingAudioCodec alloc];
    v8 = [v3 field];
    v9 = -[HMDCameraRecordingAudioCodec initWithCodec:](v7, "initWithCodec:", [v8 integerValue]);
    codec = self->_codec;
    self->_codec = v9;

    v11 = [HMDCameraRecordingAudioCodecParameters alloc];
    v12 = [v4 field];
    v13 = [(HAPTLVBase *)v11 initWithTLVData:v12];
    parameters = self->_parameters;
    self->_parameters = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (HMDCameraRecordingAudioCodecConfiguration)initWithAudioCodec:(id)a3 codecParameters:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDCameraRecordingAudioCodecConfiguration;
  v9 = [(HMDCameraRecordingAudioCodecConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_codec, a3);
    objc_storeStrong(&v10->_parameters, a4);
  }

  return v10;
}

@end