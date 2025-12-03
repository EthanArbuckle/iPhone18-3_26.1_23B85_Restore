@interface HMDVideoCodecConfiguration
- (BOOL)_parseFromTLVData;
- (HMDVideoCodecConfiguration)initWithCodec:(id)codec codecParameters:(id)parameters attributes:(id)attributes;
- (HMDVideoCodecConfiguration)initWithCoder:(id)coder;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDVideoCodecConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  videoCodec = [(HMDVideoCodecConfiguration *)self videoCodec];
  [coderCopy encodeObject:videoCodec forKey:@"kVideoCodecConfiguration__CodecType"];

  codecParameters = [(HMDVideoCodecConfiguration *)self codecParameters];
  [coderCopy encodeObject:codecParameters forKey:@"kVideoCodecConfiguration__CodecParameters"];

  videoAttributes = [(HMDVideoCodecConfiguration *)self videoAttributes];
  [coderCopy encodeObject:videoAttributes forKey:@"kVideoCodecConfiguration__Attributes"];
}

- (HMDVideoCodecConfiguration)initWithCoder:(id)coder
{
  v26[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = HMDVideoCodecConfiguration;
  v5 = [(HMDVideoCodecConfiguration *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v26[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kVideoCodecConfiguration__CodecType"];
    videoCodec = v5->_videoCodec;
    v5->_videoCodec = v9;

    v11 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"kVideoCodecConfiguration__CodecParameters"];
    codecParameters = v5->_codecParameters;
    v5->_codecParameters = v14;

    v16 = MEMORY[0x277CBEB98];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"kVideoCodecConfiguration__Attributes"];
    videoAttributes = v5->_videoAttributes;
    v5->_videoAttributes = v19;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  [descriptionCopy appendFormat:@"\n %@ tlvDatablob = %@ ", indentCopy, tlvDatablob];

  videoCodec = [(HMDVideoCodecConfiguration *)self videoCodec];
  v10 = [videoCodec descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n %@ videoCodec = %@ ", indentCopy, v10];

  codecParameters = [(HMDVideoCodecConfiguration *)self codecParameters];
  v12 = [codecParameters descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n %@ codecParameters = %@ ", indentCopy, v12];

  videoAttributes = [(HMDVideoCodecConfiguration *)self videoAttributes];
  v13 = arrayToString(videoAttributes, indentCopy);
  [descriptionCopy appendFormat:@"\n %@ attributes = %@ ", indentCopy, v13];
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  v4 = MEMORY[0x277CCABB0];
  videoCodec = [(HMDVideoCodecConfiguration *)self videoCodec];
  v6 = [v4 numberWithInteger:{objc_msgSend(videoCodec, "codecType")}];
  [creator addTLV:1 number:v6];

  codecParameters = [(HMDVideoCodecConfiguration *)self codecParameters];
  tlvData = [codecParameters tlvData];

  [creator addTLV:2 data:tlvData];
  videoAttributes = [(HMDVideoCodecConfiguration *)self videoAttributes];
  v10 = [videoAttributes objectAtIndex:0];
  tlvData2 = [v10 tlvData];

  [creator addTLV:3 data:tlvData2];
  serialize = [creator serialize];

  return serialize;
}

- (BOOL)_parseFromTLVData
{
  v28[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC08] wrappertlv:1 name:@"kVideoCodecConfiguration__CodecType"];
  v4 = [MEMORY[0x277CFEB38] wrappertlv:2 name:@"kVideoCodecConfiguration__CodecParameters"];
  v5 = [MEMORY[0x277CFEA58] wrappertlv:3 name:@"kVideoCodecConfiguration__Attributes" objectCreator:&__block_literal_global_296];
  v28[0] = v3;
  v28[1] = v4;
  v28[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  if ([(HAPTLVBase *)self _parse:v6])
  {
    v7 = [HMDVideoCodec alloc];
    field = [v3 field];
    v9 = -[HMDVideoCodec initWithCodec:](v7, "initWithCodec:", [field unsignedIntegerValue]);
    videoCodec = self->_videoCodec;
    self->_videoCodec = v9;

    v11 = [HMDVideoCodecParameters alloc];
    field2 = [v4 field];
    v13 = [(HAPTLVBase *)v11 initWithTLVData:field2];
    codecParameters = self->_codecParameters;
    self->_codecParameters = v13;

    field3 = [v5 field];
    videoAttributes = self->_videoAttributes;
    self->_videoAttributes = field3;

    v24 = checkForParseResult(1, v17, v18, v19, v20, v21, v22, v23, self->_codecParameters, v27);
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

HMDVideoAttributes *__47__HMDVideoCodecConfiguration__parseFromTLVData__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(HAPTLVBase *)[HMDVideoAttributes alloc] initWithTLVData:v2];

  return v3;
}

- (HMDVideoCodecConfiguration)initWithCodec:(id)codec codecParameters:(id)parameters attributes:(id)attributes
{
  codecCopy = codec;
  parametersCopy = parameters;
  attributesCopy = attributes;
  v15.receiver = self;
  v15.super_class = HMDVideoCodecConfiguration;
  v12 = [(HMDVideoCodecConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_videoCodec, codec);
    objc_storeStrong(&v13->_codecParameters, parameters);
    objc_storeStrong(&v13->_videoAttributes, attributes);
  }

  return v13;
}

@end