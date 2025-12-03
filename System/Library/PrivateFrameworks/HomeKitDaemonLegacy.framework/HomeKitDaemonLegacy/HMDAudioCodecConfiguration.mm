@interface HMDAudioCodecConfiguration
- (BOOL)_parseFromTLVData;
- (HMDAudioCodecConfiguration)initWithAudioCodecGroup:(id)group codecParameter:(id)parameter;
- (HMDAudioCodecConfiguration)initWithCoder:(id)coder;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDAudioCodecConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  codecGroup = [(HMDAudioCodecConfiguration *)self codecGroup];
  [coderCopy encodeObject:codecGroup forKey:@"kAudioCodecConfiguration__CodecGroupType"];

  audioCodecParameters = [(HMDAudioCodecConfiguration *)self audioCodecParameters];
  [coderCopy encodeObject:audioCodecParameters forKey:@"kAudioCodecConfiguration__CodecParameters"];
}

- (HMDAudioCodecConfiguration)initWithCoder:(id)coder
{
  v20[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = HMDAudioCodecConfiguration;
  v5 = [(HMDAudioCodecConfiguration *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kAudioCodecConfiguration__CodecGroupType"];
    codecGroup = v5->_codecGroup;
    v5->_codecGroup = v9;

    v11 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"kAudioCodecConfiguration__CodecParameters"];
    audioCodecParameters = v5->_audioCodecParameters;
    v5->_audioCodecParameters = v14;
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

  codecGroup = [(HMDAudioCodecConfiguration *)self codecGroup];
  v10 = [codecGroup descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n %@ audiocodec = %@ ", indentCopy, v10];

  audioCodecParameters = [(HMDAudioCodecConfiguration *)self audioCodecParameters];
  v11 = [audioCodecParameters descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n %@ codecParameters = %@ ", indentCopy, v11];
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  v4 = MEMORY[0x277CCABB0];
  codecGroup = [(HMDAudioCodecConfiguration *)self codecGroup];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(codecGroup, "codec")}];
  [creator addTLV:1 number:v6];

  audioCodecParameters = [(HMDAudioCodecConfiguration *)self audioCodecParameters];
  tlvData = [audioCodecParameters tlvData];

  [creator addTLV:2 data:tlvData];
  serialize = [creator serialize];

  return serialize;
}

- (BOOL)_parseFromTLVData
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC08] wrappertlv:1 name:@"kAudioCodecConfiguration__CodecGroupType"];
  v4 = [MEMORY[0x277CFEB38] wrappertlv:2 name:@"kAudioCodecConfiguration__CodecParameters"];
  v24[0] = v3;
  v24[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  if ([(HAPTLVBase *)self _parse:v5])
  {
    v6 = [HMDAudioCodecGroup alloc];
    field = [v3 field];
    v8 = -[HMDAudioCodecGroup initWithAudioCodecGroup:](v6, "initWithAudioCodecGroup:", [field unsignedIntegerValue]);
    codecGroup = self->_codecGroup;
    self->_codecGroup = v8;

    v10 = [HMDAudioCodecParameters alloc];
    field2 = [v4 field];
    v12 = [(HAPTLVBase *)v10 initWithTLVData:field2];
    audioCodecParameters = self->_audioCodecParameters;
    self->_audioCodecParameters = v12;

    v21 = checkForParseResult(1, v14, v15, v16, v17, v18, v19, v20, self->_audioCodecParameters, v24[0]);
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (HMDAudioCodecConfiguration)initWithAudioCodecGroup:(id)group codecParameter:(id)parameter
{
  groupCopy = group;
  parameterCopy = parameter;
  v12.receiver = self;
  v12.super_class = HMDAudioCodecConfiguration;
  v9 = [(HMDAudioCodecConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_codecGroup, group);
    objc_storeStrong(&v10->_audioCodecParameters, parameter);
  }

  return v10;
}

@end