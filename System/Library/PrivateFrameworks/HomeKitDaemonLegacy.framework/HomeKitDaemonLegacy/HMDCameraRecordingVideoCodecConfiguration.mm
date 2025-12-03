@interface HMDCameraRecordingVideoCodecConfiguration
- (BOOL)_parseFromTLVData;
- (HMDCameraRecordingVideoCodecConfiguration)initWithCodec:(id)codec codecParameters:(id)parameters videoAttributes:(id)attributes;
- (HMDCameraRecordingVideoCodecConfiguration)initWithCoder:(id)coder;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDCameraRecordingVideoCodecConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  codec = [(HMDCameraRecordingVideoCodecConfiguration *)self codec];
  [coderCopy encodeObject:codec forKey:@"VideoCodecConfigurationCodec"];

  parameters = [(HMDCameraRecordingVideoCodecConfiguration *)self parameters];
  [coderCopy encodeObject:parameters forKey:@"VideoCodecConfigurationCodecParameters"];

  videoAttributes = [(HMDCameraRecordingVideoCodecConfiguration *)self videoAttributes];
  [coderCopy encodeObject:videoAttributes forKey:@"VideoCodecConfigurationAttributes"];
}

- (HMDCameraRecordingVideoCodecConfiguration)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = HMDCameraRecordingVideoCodecConfiguration;
  v5 = [(HMDCameraRecordingVideoCodecConfiguration *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VideoCodecConfigurationCodec"];
    codec = v5->_codec;
    v5->_codec = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VideoCodecConfigurationCodecParameters"];
    parameters = v5->_parameters;
    v5->_parameters = v8;

    v10 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"VideoCodecConfigurationAttributes"];
    videoAttributes = v5->_videoAttributes;
    v5->_videoAttributes = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  [descriptionCopy appendFormat:@"\n%@tlvDatablob = %@ ", indentCopy, tlvDatablob];

  codec = [(HMDCameraRecordingVideoCodecConfiguration *)self codec];
  v10 = [codec descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n%@codec = %@ ", indentCopy, v10];

  parameters = [(HMDCameraRecordingVideoCodecConfiguration *)self parameters];
  v12 = [parameters descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n%@parameters = %@ ", indentCopy, v12];

  videoAttributes = [(HMDCameraRecordingVideoCodecConfiguration *)self videoAttributes];
  v13 = [indentCopy indentationByLevels:1];
  v14 = HAPTLVCreateParseArrayToString();
  [descriptionCopy appendFormat:@"\n%@attributes = %@ ", indentCopy, v14];
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  v4 = MEMORY[0x277CCABB0];
  codec = [(HMDCameraRecordingVideoCodecConfiguration *)self codec];
  v6 = [v4 numberWithInteger:{objc_msgSend(codec, "type")}];
  [creator addTLV:1 length:1 number:v6];

  parameters = [(HMDCameraRecordingVideoCodecConfiguration *)self parameters];
  tlvData = [parameters tlvData];

  [creator addTLV:2 data:tlvData];
  videoAttributes = [(HMDCameraRecordingVideoCodecConfiguration *)self videoAttributes];
  firstObject = [videoAttributes firstObject];
  tlvData2 = [firstObject tlvData];

  [creator addTLV:3 data:tlvData2];
  serialize = [creator serialize];

  return serialize;
}

- (BOOL)_parseFromTLVData
{
  v20[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC08] wrappertlv:1 name:@"VideoCodecConfigurationCodec"];
  v4 = [MEMORY[0x277CFEB38] wrappertlv:2 name:@"VideoCodecConfigurationCodecParameters"];
  v5 = [MEMORY[0x277CFEA58] wrappertlv:3 name:@"VideoCodecConfigurationAttributes" objectCreator:&__block_literal_global_307];
  v20[0] = v3;
  v20[1] = v4;
  v20[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  v7 = [(HAPTLVBase *)self _parse:v6];
  if (v7)
  {
    v8 = [HMDCameraRecordingVideoCodec alloc];
    field = [v3 field];
    v10 = -[HMDCameraRecordingVideoCodec initWithCodec:](v8, "initWithCodec:", [field integerValue]);
    codec = self->_codec;
    self->_codec = v10;

    v12 = [HMDCameraRecordingVideoCodecParameters alloc];
    field2 = [v4 field];
    v14 = [(HAPTLVBase *)v12 initWithTLVData:field2];
    parameters = self->_parameters;
    self->_parameters = v14;

    field3 = [v5 field];
    videoAttributes = self->_videoAttributes;
    self->_videoAttributes = field3;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

HMDCameraRecordingVideoAttributes *__62__HMDCameraRecordingVideoCodecConfiguration__parseFromTLVData__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(HAPTLVBase *)[HMDCameraRecordingVideoAttributes alloc] initWithTLVData:v2];

  return v3;
}

- (HMDCameraRecordingVideoCodecConfiguration)initWithCodec:(id)codec codecParameters:(id)parameters videoAttributes:(id)attributes
{
  codecCopy = codec;
  parametersCopy = parameters;
  attributesCopy = attributes;
  v15.receiver = self;
  v15.super_class = HMDCameraRecordingVideoCodecConfiguration;
  v12 = [(HMDCameraRecordingVideoCodecConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_codec, codec);
    objc_storeStrong(&v13->_parameters, parameters);
    objc_storeStrong(&v13->_videoAttributes, attributes);
  }

  return v13;
}

@end