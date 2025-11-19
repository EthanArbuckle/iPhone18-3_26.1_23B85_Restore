@interface HMDSelectedVideoParameters
- (BOOL)_parseFromTLVData;
- (HMDSelectedVideoParameters)initWithCodec:(id)a3 codecParameter:(id)a4 attribute:(id)a5 rtpParameter:(id)a6;
- (HMDSelectedVideoParameters)initWithCoder:(id)a3;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDSelectedVideoParameters

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDSelectedVideoParameters *)self codec];
  [v4 encodeObject:v5 forKey:@"kVideoParameters_Codec"];

  v6 = [(HMDSelectedVideoParameters *)self codecParameters];
  [v4 encodeObject:v6 forKey:@"kVideoParameters_CodecParameters"];

  v7 = [(HMDSelectedVideoParameters *)self videoAttributes];
  [v4 encodeObject:v7 forKey:@"kVideoParameters_Attributes"];

  v8 = [(HMDSelectedVideoParameters *)self rtpParameters];
  [v4 encodeObject:v8 forKey:@"kVideoParameters_RTPParameter"];
}

- (HMDSelectedVideoParameters)initWithCoder:(id)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = HMDSelectedVideoParameters;
  v5 = [(HMDSelectedVideoParameters *)&v28 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v32[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kVideoParameters_Codec"];
    codec = v5->_codec;
    v5->_codec = v9;

    v11 = MEMORY[0x277CBEB98];
    v31 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"kVideoParameters_CodecParameters"];
    codecParameters = v5->_codecParameters;
    v5->_codecParameters = v14;

    v16 = MEMORY[0x277CBEB98];
    v30 = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    v18 = [v16 setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"kVideoParameters_Attributes"];
    videoAttributes = v5->_videoAttributes;
    v5->_videoAttributes = v19;

    v21 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    v23 = [v21 setWithArray:v22];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"kVideoParameters_RTPParameter"];
    rtpParameters = v5->_rtpParameters;
    v5->_rtpParameters = v24;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HAPTLVBase *)self tlvDatablob];
  [v7 appendFormat:@"\n %@ tlvDatablob = %@ ", v6, v8];

  v9 = [(HMDSelectedVideoParameters *)self codec];
  [v7 appendFormat:@"\n %@ videocodec = %@ ", v6, v9];

  v10 = [(HMDSelectedVideoParameters *)self codecParameters];
  v11 = [v10 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n %@ codecParameters = %@ ", v6, v11];

  v12 = [(HMDSelectedVideoParameters *)self videoAttributes];
  v13 = [v12 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n %@ attributes = %@ ", v6, v13];

  v15 = [(HMDSelectedVideoParameters *)self rtpParameters];
  v14 = [v15 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n %@ rtpParameters = %@ ", v6, v14];
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
    v9 = [v3 field];
    v10 = -[HMDVideoCodec initWithCodec:](v8, "initWithCodec:", [v9 unsignedIntegerValue]);
    codec = self->_codec;
    self->_codec = v10;

    v12 = [HMDVideoCodecParameters alloc];
    v13 = [v4 field];
    v14 = [(HAPTLVBase *)v12 initWithTLVData:v13];
    codecParameters = self->_codecParameters;
    self->_codecParameters = v14;

    v16 = [HMDVideoAttributes alloc];
    v17 = [v5 field];
    v18 = [(HAPTLVBase *)v16 initWithTLVData:v17];
    videoAttributes = self->_videoAttributes;
    self->_videoAttributes = v18;

    v20 = [HMDSelectedRTPParameters alloc];
    v21 = [v6 field];
    v22 = [(HAPTLVBase *)v20 initWithTLVData:v21];
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
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(HMDSelectedVideoParameters *)self codec];
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "codecType")}];
  [v3 addTLV:1 number:v6];

  v7 = [(HMDSelectedVideoParameters *)self codecParameters];
  v8 = [v7 tlvData];

  [v3 addTLV:2 data:v8];
  v9 = [(HMDSelectedVideoParameters *)self videoAttributes];
  v10 = [v9 tlvData];

  [v3 addTLV:3 data:v10];
  v11 = [(HMDSelectedVideoParameters *)self rtpParameters];
  v12 = [v11 tlvData];

  [v3 addTLV:4 data:v12];
  v13 = [v3 serialize];

  return v13;
}

- (HMDSelectedVideoParameters)initWithCodec:(id)a3 codecParameter:(id)a4 attribute:(id)a5 rtpParameter:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMDSelectedVideoParameters;
  v15 = [(HMDSelectedVideoParameters *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_codec, a3);
    objc_storeStrong(&v16->_codecParameters, a4);
    objc_storeStrong(&v16->_videoAttributes, a5);
    objc_storeStrong(&v16->_rtpParameters, a6);
  }

  return v16;
}

@end