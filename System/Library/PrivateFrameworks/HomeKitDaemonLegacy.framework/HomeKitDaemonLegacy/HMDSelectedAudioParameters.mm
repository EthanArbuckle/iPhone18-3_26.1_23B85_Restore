@interface HMDSelectedAudioParameters
- (BOOL)_parseFromTLVData;
- (HMDSelectedAudioParameters)initWithCodecGroup:(id)a3 codecParameter:(id)a4 rtpParameter:(id)a5 comfortNoiseEnabled:(id)a6;
- (HMDSelectedAudioParameters)initWithCoder:(id)a3;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDSelectedAudioParameters

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDSelectedAudioParameters *)self codecGroup];
  [v4 encodeObject:v5 forKey:@"kAudioParameters_CodecGroup"];

  v6 = [(HMDSelectedAudioParameters *)self codecParameters];
  [v4 encodeObject:v6 forKey:@"kAudioParameters_CodecParameters"];

  v7 = [(HMDSelectedAudioParameters *)self rtpParameters];
  [v4 encodeObject:v7 forKey:@"kAudioParameters_RTPParameter"];

  v8 = [(HMDSelectedAudioParameters *)self comfortNoiseEnabled];
  [v4 encodeObject:v8 forKey:@"kAudioParameters_ComfortNoise"];
}

- (HMDSelectedAudioParameters)initWithCoder:(id)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = HMDSelectedAudioParameters;
  v5 = [(HMDSelectedAudioParameters *)&v28 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v32[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kAudioParameters_CodecGroup"];
    codecGroup = v5->_codecGroup;
    v5->_codecGroup = v9;

    v11 = MEMORY[0x277CBEB98];
    v31 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"kAudioParameters_CodecParameters"];
    codecParameters = v5->_codecParameters;
    v5->_codecParameters = v14;

    v16 = MEMORY[0x277CBEB98];
    v30 = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    v18 = [v16 setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"kAudioParameters_RTPParameter"];
    rtpParameters = v5->_rtpParameters;
    v5->_rtpParameters = v19;

    v21 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    v23 = [v21 setWithArray:v22];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"kAudioParameters_ComfortNoise"];
    comfortNoiseEnabled = v5->_comfortNoiseEnabled;
    v5->_comfortNoiseEnabled = v24;
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

  v9 = [(HMDSelectedAudioParameters *)self codecGroup];
  v10 = [v9 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n %@ selected-audio-codec = %@ ", v6, v10];

  v11 = [(HMDSelectedAudioParameters *)self codecParameters];
  v12 = [v11 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n %@ codecParameters = %@ ", v6, v12];

  v13 = [(HMDSelectedAudioParameters *)self rtpParameters];
  v14 = [v13 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n %@ rtpParameters = %@ ", v6, v14];

  v15 = [(HMDSelectedAudioParameters *)self comfortNoiseEnabled];
  [v7 appendFormat:@"\n %@ comfortNoiseEnabled = %@ ", v6, v15];
}

- (BOOL)_parseFromTLVData
{
  v32[4] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC08] wrappertlv:1 name:@"kAudioParameters_CodecGroup"];
  v4 = [MEMORY[0x277CFEB38] wrappertlv:2 name:@"kAudioParameters_CodecParameters"];
  v5 = [MEMORY[0x277CFEB38] wrappertlv:3 name:@"kAudioParameters_RTPParameter"];
  v6 = [MEMORY[0x277CFEC08] wrappertlv:4 name:@"kAudioParameters_ComfortNoise"];
  v32[0] = v3;
  v32[1] = v4;
  v32[2] = v5;
  v32[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
  if ([(HAPTLVBase *)self _parse:v7])
  {
    v8 = [HMDAudioCodecGroup alloc];
    v9 = [v3 field];
    v10 = -[HMDAudioCodecGroup initWithAudioCodecGroup:](v8, "initWithAudioCodecGroup:", [v9 unsignedIntegerValue]);
    codecGroup = self->_codecGroup;
    self->_codecGroup = v10;

    v12 = [HMDAudioCodecParameters alloc];
    v13 = [v4 field];
    v14 = [(HAPTLVBase *)v12 initWithTLVData:v13];
    codecParameters = self->_codecParameters;
    self->_codecParameters = v14;

    v16 = [HMDSelectedRTPParameters alloc];
    v17 = [v5 field];
    v18 = [(HAPTLVBase *)v16 initWithTLVData:v17];
    rtpParameters = self->_rtpParameters;
    self->_rtpParameters = v18;

    v20 = [v6 field];
    comfortNoiseEnabled = self->_comfortNoiseEnabled;
    self->_comfortNoiseEnabled = v20;

    v29 = checkForParseResult(2, v22, v23, v24, v25, v26, v27, v28, self->_codecParameters, self->_rtpParameters);
  }

  else
  {
    v29 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(HMDSelectedAudioParameters *)self codecGroup];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "codec")}];
  [v3 addTLV:1 number:v6];

  v7 = [(HMDSelectedAudioParameters *)self codecParameters];
  v8 = [v7 tlvData];

  [v3 addTLV:2 data:v8];
  v9 = [(HMDSelectedAudioParameters *)self rtpParameters];
  v10 = [v9 tlvData];

  [v3 addTLV:3 data:v10];
  v11 = [(HMDSelectedAudioParameters *)self comfortNoiseEnabled];
  [v3 addTLV:4 number:v11];

  v12 = [v3 serialize];

  return v12;
}

- (HMDSelectedAudioParameters)initWithCodecGroup:(id)a3 codecParameter:(id)a4 rtpParameter:(id)a5 comfortNoiseEnabled:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMDSelectedAudioParameters;
  v15 = [(HMDSelectedAudioParameters *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_codecGroup, a3);
    objc_storeStrong(&v16->_codecParameters, a4);
    objc_storeStrong(&v16->_rtpParameters, a5);
    objc_storeStrong(&v16->_comfortNoiseEnabled, a6);
  }

  return v16;
}

@end