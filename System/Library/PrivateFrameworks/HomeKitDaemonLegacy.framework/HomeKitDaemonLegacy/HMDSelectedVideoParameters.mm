@interface HMDSelectedVideoParameters
- (BOOL)_parseFromTLVData;
- (HMDSelectedVideoParameters)initWithCodec:(id)codec codecParameter:(id)parameter attribute:(id)attribute rtpParameter:(id)rtpParameter;
- (HMDSelectedVideoParameters)initWithCoder:(id)coder;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDSelectedVideoParameters

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  codec = [(HMDSelectedVideoParameters *)self codec];
  [coderCopy encodeObject:codec forKey:@"kVideoParameters_Codec"];

  codecParameters = [(HMDSelectedVideoParameters *)self codecParameters];
  [coderCopy encodeObject:codecParameters forKey:@"kVideoParameters_CodecParameters"];

  videoAttributes = [(HMDSelectedVideoParameters *)self videoAttributes];
  [coderCopy encodeObject:videoAttributes forKey:@"kVideoParameters_Attributes"];

  rtpParameters = [(HMDSelectedVideoParameters *)self rtpParameters];
  [coderCopy encodeObject:rtpParameters forKey:@"kVideoParameters_RTPParameter"];
}

- (HMDSelectedVideoParameters)initWithCoder:(id)coder
{
  v32[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = HMDSelectedVideoParameters;
  v5 = [(HMDSelectedVideoParameters *)&v28 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v32[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kVideoParameters_Codec"];
    codec = v5->_codec;
    v5->_codec = v9;

    v11 = MEMORY[0x277CBEB98];
    v31 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"kVideoParameters_CodecParameters"];
    codecParameters = v5->_codecParameters;
    v5->_codecParameters = v14;

    v16 = MEMORY[0x277CBEB98];
    v30 = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    v18 = [v16 setWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"kVideoParameters_Attributes"];
    videoAttributes = v5->_videoAttributes;
    v5->_videoAttributes = v19;

    v21 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    v23 = [v21 setWithArray:v22];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"kVideoParameters_RTPParameter"];
    rtpParameters = v5->_rtpParameters;
    v5->_rtpParameters = v24;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  [descriptionCopy appendFormat:@"\n %@ tlvDatablob = %@ ", indentCopy, tlvDatablob];

  codec = [(HMDSelectedVideoParameters *)self codec];
  [descriptionCopy appendFormat:@"\n %@ videocodec = %@ ", indentCopy, codec];

  codecParameters = [(HMDSelectedVideoParameters *)self codecParameters];
  v11 = [codecParameters descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n %@ codecParameters = %@ ", indentCopy, v11];

  videoAttributes = [(HMDSelectedVideoParameters *)self videoAttributes];
  v13 = [videoAttributes descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n %@ attributes = %@ ", indentCopy, v13];

  rtpParameters = [(HMDSelectedVideoParameters *)self rtpParameters];
  v14 = [rtpParameters descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n %@ rtpParameters = %@ ", indentCopy, v14];
}

- (BOOL)_parseFromTLVData
{
  v35[4] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC08] wrappertlv:1 name:@"kVideoParameters_Codec"];
  v4 = [MEMORY[0x277CFEB38] wrappertlv:2 name:@"kVideoParameters_CodecParameters"];
  v5 = [MEMORY[0x277CFEB38] wrappertlv:3 name:@"kVideoParameters_Attributes"];
  v6 = [MEMORY[0x277CFEB38] wrappertlv:4 name:@"kVideoParameters_RTPParameter"];
  v35[0] = v3;
  v35[1] = v4;
  v35[2] = v5;
  v35[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
  if ([(HAPTLVBase *)self _parse:v7])
  {
    v8 = [HMDVideoCodec alloc];
    field = [v3 field];
    v10 = -[HMDVideoCodec initWithCodec:](v8, "initWithCodec:", [field unsignedIntegerValue]);
    codec = self->_codec;
    self->_codec = v10;

    v12 = [HMDVideoCodecParameters alloc];
    field2 = [v4 field];
    v14 = [(HAPTLVBase *)v12 initWithTLVData:field2];
    codecParameters = self->_codecParameters;
    self->_codecParameters = v14;

    v16 = [HMDVideoAttributes alloc];
    field3 = [v5 field];
    v18 = [(HAPTLVBase *)v16 initWithTLVData:field3];
    videoAttributes = self->_videoAttributes;
    self->_videoAttributes = v18;

    v20 = [HMDSelectedRTPParameters alloc];
    field4 = [v6 field];
    v22 = [(HAPTLVBase *)v20 initWithTLVData:field4];
    rtpParameters = self->_rtpParameters;
    self->_rtpParameters = v22;

    v34 = self->_rtpParameters;
    v31 = checkForParseResult(3, v24, v25, v26, v27, v28, v29, v30, self->_codecParameters, self->_videoAttributes);
  }

  else
  {
    v31 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  v4 = MEMORY[0x277CCABB0];
  codec = [(HMDSelectedVideoParameters *)self codec];
  v6 = [v4 numberWithInteger:{objc_msgSend(codec, "codecType")}];
  [creator addTLV:1 number:v6];

  codecParameters = [(HMDSelectedVideoParameters *)self codecParameters];
  tlvData = [codecParameters tlvData];

  [creator addTLV:2 data:tlvData];
  videoAttributes = [(HMDSelectedVideoParameters *)self videoAttributes];
  tlvData2 = [videoAttributes tlvData];

  [creator addTLV:3 data:tlvData2];
  rtpParameters = [(HMDSelectedVideoParameters *)self rtpParameters];
  tlvData3 = [rtpParameters tlvData];

  [creator addTLV:4 data:tlvData3];
  serialize = [creator serialize];

  return serialize;
}

- (HMDSelectedVideoParameters)initWithCodec:(id)codec codecParameter:(id)parameter attribute:(id)attribute rtpParameter:(id)rtpParameter
{
  codecCopy = codec;
  parameterCopy = parameter;
  attributeCopy = attribute;
  rtpParameterCopy = rtpParameter;
  v18.receiver = self;
  v18.super_class = HMDSelectedVideoParameters;
  v15 = [(HMDSelectedVideoParameters *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_codec, codec);
    objc_storeStrong(&v16->_codecParameters, parameter);
    objc_storeStrong(&v16->_videoAttributes, attribute);
    objc_storeStrong(&v16->_rtpParameters, rtpParameter);
  }

  return v16;
}

@end