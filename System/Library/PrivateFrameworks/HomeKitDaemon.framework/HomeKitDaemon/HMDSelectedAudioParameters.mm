@interface HMDSelectedAudioParameters
- (BOOL)_parseFromTLVData;
- (HMDSelectedAudioParameters)initWithCodecGroup:(id)group codecParameter:(id)parameter rtpParameter:(id)rtpParameter comfortNoiseEnabled:(id)enabled;
- (HMDSelectedAudioParameters)initWithCoder:(id)coder;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDSelectedAudioParameters

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  codecGroup = [(HMDSelectedAudioParameters *)self codecGroup];
  [coderCopy encodeObject:codecGroup forKey:@"kAudioParameters_CodecGroup"];

  codecParameters = [(HMDSelectedAudioParameters *)self codecParameters];
  [coderCopy encodeObject:codecParameters forKey:@"kAudioParameters_CodecParameters"];

  rtpParameters = [(HMDSelectedAudioParameters *)self rtpParameters];
  [coderCopy encodeObject:rtpParameters forKey:@"kAudioParameters_RTPParameter"];

  comfortNoiseEnabled = [(HMDSelectedAudioParameters *)self comfortNoiseEnabled];
  [coderCopy encodeObject:comfortNoiseEnabled forKey:@"kAudioParameters_ComfortNoise"];
}

- (HMDSelectedAudioParameters)initWithCoder:(id)coder
{
  v32[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = HMDSelectedAudioParameters;
  v5 = [(HMDSelectedAudioParameters *)&v28 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v32[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kAudioParameters_CodecGroup"];
    codecGroup = v5->_codecGroup;
    v5->_codecGroup = v9;

    v11 = MEMORY[0x277CBEB98];
    v31 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"kAudioParameters_CodecParameters"];
    codecParameters = v5->_codecParameters;
    v5->_codecParameters = v14;

    v16 = MEMORY[0x277CBEB98];
    v30 = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    v18 = [v16 setWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"kAudioParameters_RTPParameter"];
    rtpParameters = v5->_rtpParameters;
    v5->_rtpParameters = v19;

    v21 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    v23 = [v21 setWithArray:v22];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"kAudioParameters_ComfortNoise"];
    comfortNoiseEnabled = v5->_comfortNoiseEnabled;
    v5->_comfortNoiseEnabled = v24;
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

  codecGroup = [(HMDSelectedAudioParameters *)self codecGroup];
  v10 = [codecGroup descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n %@ selected-audio-codec = %@ ", indentCopy, v10];

  codecParameters = [(HMDSelectedAudioParameters *)self codecParameters];
  v12 = [codecParameters descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n %@ codecParameters = %@ ", indentCopy, v12];

  rtpParameters = [(HMDSelectedAudioParameters *)self rtpParameters];
  v14 = [rtpParameters descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n %@ rtpParameters = %@ ", indentCopy, v14];

  comfortNoiseEnabled = [(HMDSelectedAudioParameters *)self comfortNoiseEnabled];
  [descriptionCopy appendFormat:@"\n %@ comfortNoiseEnabled = %@ ", indentCopy, comfortNoiseEnabled];
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
    field = [v3 field];
    v10 = -[HMDAudioCodecGroup initWithAudioCodecGroup:](v8, "initWithAudioCodecGroup:", [field unsignedIntegerValue]);
    codecGroup = self->_codecGroup;
    self->_codecGroup = v10;

    v12 = [HMDAudioCodecParameters alloc];
    field2 = [v4 field];
    v14 = [(HAPTLVBase *)v12 initWithTLVData:field2];
    codecParameters = self->_codecParameters;
    self->_codecParameters = v14;

    v16 = [HMDSelectedRTPParameters alloc];
    field3 = [v5 field];
    v18 = [(HAPTLVBase *)v16 initWithTLVData:field3];
    rtpParameters = self->_rtpParameters;
    self->_rtpParameters = v18;

    field4 = [v6 field];
    comfortNoiseEnabled = self->_comfortNoiseEnabled;
    self->_comfortNoiseEnabled = field4;

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
  creator = [MEMORY[0x277CFEC80] creator];
  v4 = MEMORY[0x277CCABB0];
  codecGroup = [(HMDSelectedAudioParameters *)self codecGroup];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(codecGroup, "codec")}];
  [creator addTLV:1 number:v6];

  codecParameters = [(HMDSelectedAudioParameters *)self codecParameters];
  tlvData = [codecParameters tlvData];

  [creator addTLV:2 data:tlvData];
  rtpParameters = [(HMDSelectedAudioParameters *)self rtpParameters];
  tlvData2 = [rtpParameters tlvData];

  [creator addTLV:3 data:tlvData2];
  comfortNoiseEnabled = [(HMDSelectedAudioParameters *)self comfortNoiseEnabled];
  [creator addTLV:4 number:comfortNoiseEnabled];

  serialize = [creator serialize];

  return serialize;
}

- (HMDSelectedAudioParameters)initWithCodecGroup:(id)group codecParameter:(id)parameter rtpParameter:(id)rtpParameter comfortNoiseEnabled:(id)enabled
{
  groupCopy = group;
  parameterCopy = parameter;
  rtpParameterCopy = rtpParameter;
  enabledCopy = enabled;
  v18.receiver = self;
  v18.super_class = HMDSelectedAudioParameters;
  v15 = [(HMDSelectedAudioParameters *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_codecGroup, group);
    objc_storeStrong(&v16->_codecParameters, parameter);
    objc_storeStrong(&v16->_rtpParameters, rtpParameter);
    objc_storeStrong(&v16->_comfortNoiseEnabled, enabled);
  }

  return v16;
}

@end