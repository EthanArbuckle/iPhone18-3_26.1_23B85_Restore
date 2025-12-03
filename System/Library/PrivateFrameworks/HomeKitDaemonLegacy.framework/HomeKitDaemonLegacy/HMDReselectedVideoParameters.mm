@interface HMDReselectedVideoParameters
- (BOOL)_parseFromTLVData;
- (HMDReselectedVideoParameters)initWithAttribute:(id)attribute rtpParameter:(id)parameter;
- (HMDReselectedVideoParameters)initWithCoder:(id)coder;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDReselectedVideoParameters

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  videoAttributes = [(HMDReselectedVideoParameters *)self videoAttributes];
  [coderCopy encodeObject:videoAttributes forKey:@"kVideoParameters_Attributes"];

  rtpParameters = [(HMDReselectedVideoParameters *)self rtpParameters];
  [coderCopy encodeObject:rtpParameters forKey:@"kVideoParameters_RTPParameter"];
}

- (HMDReselectedVideoParameters)initWithCoder:(id)coder
{
  v20[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = HMDReselectedVideoParameters;
  v5 = [(HMDReselectedVideoParameters *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kVideoParameters_Attributes"];
    videoAttributes = v5->_videoAttributes;
    v5->_videoAttributes = v9;

    v11 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"kVideoParameters_RTPParameter"];
    rtpParameters = v5->_rtpParameters;
    v5->_rtpParameters = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  [descriptionCopy appendFormat:@"\n %@ tlvDatablob = %@ ", indentCopy, tlvDatablob];

  videoAttributes = [(HMDReselectedVideoParameters *)self videoAttributes];
  v10 = [videoAttributes descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n %@ attributes = %@ ", indentCopy, v10];

  rtpParameters = [(HMDReselectedVideoParameters *)self rtpParameters];
  v11 = [rtpParameters descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n %@ rtpParameters = %@ ", indentCopy, v11];
}

- (BOOL)_parseFromTLVData
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEB38] wrappertlv:3 name:@"kVideoParameters_Attributes"];
  v4 = [MEMORY[0x277CFEB38] wrappertlv:4 name:@"kVideoParameters_RTPParameter"];
  v24[0] = v3;
  v24[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  if ([(HAPTLVBase *)self _parse:v5])
  {
    v6 = [HMDVideoAttributes alloc];
    field = [v3 field];
    v8 = [(HAPTLVBase *)v6 initWithTLVData:field];
    videoAttributes = self->_videoAttributes;
    self->_videoAttributes = v8;

    v10 = [HMDReselectedRTPParameters alloc];
    field2 = [v4 field];
    v12 = [(HAPTLVBase *)v10 initWithTLVData:field2];
    rtpParameters = self->_rtpParameters;
    self->_rtpParameters = v12;

    v21 = checkForParseResult(2, v14, v15, v16, v17, v18, v19, v20, self->_videoAttributes, self->_rtpParameters);
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  videoAttributes = [(HMDReselectedVideoParameters *)self videoAttributes];
  tlvData = [videoAttributes tlvData];

  [creator addTLV:3 data:tlvData];
  rtpParameters = [(HMDReselectedVideoParameters *)self rtpParameters];
  tlvData2 = [rtpParameters tlvData];

  [creator addTLV:4 data:tlvData2];
  serialize = [creator serialize];

  return serialize;
}

- (HMDReselectedVideoParameters)initWithAttribute:(id)attribute rtpParameter:(id)parameter
{
  attributeCopy = attribute;
  parameterCopy = parameter;
  v12.receiver = self;
  v12.super_class = HMDReselectedVideoParameters;
  v9 = [(HMDReselectedVideoParameters *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_videoAttributes, attribute);
    objc_storeStrong(&v10->_rtpParameters, parameter);
  }

  return v10;
}

@end