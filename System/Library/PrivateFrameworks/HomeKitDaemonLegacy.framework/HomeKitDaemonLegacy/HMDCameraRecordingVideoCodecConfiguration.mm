@interface HMDCameraRecordingVideoCodecConfiguration
- (BOOL)_parseFromTLVData;
- (HMDCameraRecordingVideoCodecConfiguration)initWithCodec:(id)a3 codecParameters:(id)a4 videoAttributes:(id)a5;
- (HMDCameraRecordingVideoCodecConfiguration)initWithCoder:(id)a3;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDCameraRecordingVideoCodecConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingVideoCodecConfiguration *)self codec];
  [v4 encodeObject:v5 forKey:@"VideoCodecConfigurationCodec"];

  v6 = [(HMDCameraRecordingVideoCodecConfiguration *)self parameters];
  [v4 encodeObject:v6 forKey:@"VideoCodecConfigurationCodecParameters"];

  v7 = [(HMDCameraRecordingVideoCodecConfiguration *)self videoAttributes];
  [v4 encodeObject:v7 forKey:@"VideoCodecConfigurationAttributes"];
}

- (HMDCameraRecordingVideoCodecConfiguration)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HMDCameraRecordingVideoCodecConfiguration;
  v5 = [(HMDCameraRecordingVideoCodecConfiguration *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VideoCodecConfigurationCodec"];
    codec = v5->_codec;
    v5->_codec = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VideoCodecConfigurationCodecParameters"];
    parameters = v5->_parameters;
    v5->_parameters = v8;

    v10 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"VideoCodecConfigurationAttributes"];
    videoAttributes = v5->_videoAttributes;
    v5->_videoAttributes = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HAPTLVBase *)self tlvDatablob];
  [v7 appendFormat:@"\n%@tlvDatablob = %@ ", v6, v8];

  v9 = [(HMDCameraRecordingVideoCodecConfiguration *)self codec];
  v10 = [v9 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n%@codec = %@ ", v6, v10];

  v11 = [(HMDCameraRecordingVideoCodecConfiguration *)self parameters];
  v12 = [v11 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n%@parameters = %@ ", v6, v12];

  v15 = [(HMDCameraRecordingVideoCodecConfiguration *)self videoAttributes];
  v13 = [v6 indentationByLevels:1];
  v14 = HAPTLVCreateParseArrayToString();
  [v7 appendFormat:@"\n%@attributes = %@ ", v6, v14];
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(HMDCameraRecordingVideoCodecConfiguration *)self codec];
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "type")}];
  [v3 addTLV:1 length:1 number:v6];

  v7 = [(HMDCameraRecordingVideoCodecConfiguration *)self parameters];
  v8 = [v7 tlvData];

  [v3 addTLV:2 data:v8];
  v9 = [(HMDCameraRecordingVideoCodecConfiguration *)self videoAttributes];
  v10 = [v9 firstObject];
  v11 = [v10 tlvData];

  [v3 addTLV:3 data:v11];
  v12 = [v3 serialize];

  return v12;
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
    v9 = [v3 field];
    v10 = -[HMDCameraRecordingVideoCodec initWithCodec:](v8, "initWithCodec:", [v9 integerValue]);
    codec = self->_codec;
    self->_codec = v10;

    v12 = [HMDCameraRecordingVideoCodecParameters alloc];
    v13 = [v4 field];
    v14 = [(HAPTLVBase *)v12 initWithTLVData:v13];
    parameters = self->_parameters;
    self->_parameters = v14;

    v16 = [v5 field];
    videoAttributes = self->_videoAttributes;
    self->_videoAttributes = v16;
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

- (HMDCameraRecordingVideoCodecConfiguration)initWithCodec:(id)a3 codecParameters:(id)a4 videoAttributes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDCameraRecordingVideoCodecConfiguration;
  v12 = [(HMDCameraRecordingVideoCodecConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_codec, a3);
    objc_storeStrong(&v13->_parameters, a4);
    objc_storeStrong(&v13->_videoAttributes, a5);
  }

  return v13;
}

@end