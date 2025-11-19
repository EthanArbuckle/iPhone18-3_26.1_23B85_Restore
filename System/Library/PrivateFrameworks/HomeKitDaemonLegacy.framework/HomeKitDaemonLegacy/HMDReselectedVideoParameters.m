@interface HMDReselectedVideoParameters
- (BOOL)_parseFromTLVData;
- (HMDReselectedVideoParameters)initWithAttribute:(id)a3 rtpParameter:(id)a4;
- (HMDReselectedVideoParameters)initWithCoder:(id)a3;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDReselectedVideoParameters

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDReselectedVideoParameters *)self videoAttributes];
  [v4 encodeObject:v5 forKey:@"kVideoParameters_Attributes"];

  v6 = [(HMDReselectedVideoParameters *)self rtpParameters];
  [v4 encodeObject:v6 forKey:@"kVideoParameters_RTPParameter"];
}

- (HMDReselectedVideoParameters)initWithCoder:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HMDReselectedVideoParameters;
  v5 = [(HMDReselectedVideoParameters *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kVideoParameters_Attributes"];
    videoAttributes = v5->_videoAttributes;
    v5->_videoAttributes = v9;

    v11 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"kVideoParameters_RTPParameter"];
    rtpParameters = v5->_rtpParameters;
    v5->_rtpParameters = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HAPTLVBase *)self tlvDatablob];
  [v7 appendFormat:@"\n %@ tlvDatablob = %@ ", v6, v8];

  v9 = [(HMDReselectedVideoParameters *)self videoAttributes];
  v10 = [v9 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n %@ attributes = %@ ", v6, v10];

  v12 = [(HMDReselectedVideoParameters *)self rtpParameters];
  v11 = [v12 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n %@ rtpParameters = %@ ", v6, v11];
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
    v7 = [v3 field];
    v8 = [(HAPTLVBase *)v6 initWithTLVData:v7];
    videoAttributes = self->_videoAttributes;
    self->_videoAttributes = v8;

    v10 = [HMDReselectedRTPParameters alloc];
    v11 = [v4 field];
    v12 = [(HAPTLVBase *)v10 initWithTLVData:v11];
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
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = [(HMDReselectedVideoParameters *)self videoAttributes];
  v5 = [v4 tlvData];

  [v3 addTLV:3 data:v5];
  v6 = [(HMDReselectedVideoParameters *)self rtpParameters];
  v7 = [v6 tlvData];

  [v3 addTLV:4 data:v7];
  v8 = [v3 serialize];

  return v8;
}

- (HMDReselectedVideoParameters)initWithAttribute:(id)a3 rtpParameter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDReselectedVideoParameters;
  v9 = [(HMDReselectedVideoParameters *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_videoAttributes, a3);
    objc_storeStrong(&v10->_rtpParameters, a4);
  }

  return v10;
}

@end