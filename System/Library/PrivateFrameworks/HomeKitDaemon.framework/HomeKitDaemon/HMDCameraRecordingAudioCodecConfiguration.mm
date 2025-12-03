@interface HMDCameraRecordingAudioCodecConfiguration
- (BOOL)_parseFromTLVData;
- (HMDCameraRecordingAudioCodecConfiguration)initWithAudioCodec:(id)codec codecParameters:(id)parameters;
- (HMDCameraRecordingAudioCodecConfiguration)initWithCoder:(id)coder;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDCameraRecordingAudioCodecConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  codec = [(HMDCameraRecordingAudioCodecConfiguration *)self codec];
  [coderCopy encodeObject:codec forKey:@"kAudioCodecConfigurationCodec"];

  parameters = [(HMDCameraRecordingAudioCodecConfiguration *)self parameters];
  [coderCopy encodeObject:parameters forKey:@"kAudioCodecConfigurationCodecParameters"];
}

- (HMDCameraRecordingAudioCodecConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HMDCameraRecordingAudioCodecConfiguration;
  v5 = [(HMDCameraRecordingAudioCodecConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kAudioCodecConfigurationCodec"];
    codec = v5->_codec;
    v5->_codec = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kAudioCodecConfigurationCodecParameters"];
    parameters = v5->_parameters;
    v5->_parameters = v8;
  }

  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  [descriptionCopy appendFormat:@"\n%@tlvDatablob = %@ ", indentCopy, tlvDatablob];

  codec = [(HMDCameraRecordingAudioCodecConfiguration *)self codec];
  v10 = [codec descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n%@codec = %@ ", indentCopy, v10];

  parameters = [(HMDCameraRecordingAudioCodecConfiguration *)self parameters];
  v11 = [parameters descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n%@parameters = %@", indentCopy, v11];
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  v4 = MEMORY[0x277CCABB0];
  codec = [(HMDCameraRecordingAudioCodecConfiguration *)self codec];
  v6 = [v4 numberWithInteger:{objc_msgSend(codec, "type")}];
  [creator addTLV:1 length:1 number:v6];

  parameters = [(HMDCameraRecordingAudioCodecConfiguration *)self parameters];
  tlvData = [parameters tlvData];

  [creator addTLV:2 data:tlvData];
  serialize = [creator serialize];

  return serialize;
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
    field = [v3 field];
    v9 = -[HMDCameraRecordingAudioCodec initWithCodec:](v7, "initWithCodec:", [field integerValue]);
    codec = self->_codec;
    self->_codec = v9;

    v11 = [HMDCameraRecordingAudioCodecParameters alloc];
    field2 = [v4 field];
    v13 = [(HAPTLVBase *)v11 initWithTLVData:field2];
    parameters = self->_parameters;
    self->_parameters = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (HMDCameraRecordingAudioCodecConfiguration)initWithAudioCodec:(id)codec codecParameters:(id)parameters
{
  codecCopy = codec;
  parametersCopy = parameters;
  v12.receiver = self;
  v12.super_class = HMDCameraRecordingAudioCodecConfiguration;
  v9 = [(HMDCameraRecordingAudioCodecConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_codec, codec);
    objc_storeStrong(&v10->_parameters, parameters);
  }

  return v10;
}

@end