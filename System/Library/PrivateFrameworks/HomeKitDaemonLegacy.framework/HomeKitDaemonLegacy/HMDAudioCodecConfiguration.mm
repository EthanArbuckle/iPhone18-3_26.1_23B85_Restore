@interface HMDAudioCodecConfiguration
- (BOOL)_parseFromTLVData;
- (HMDAudioCodecConfiguration)initWithAudioCodecGroup:(id)a3 codecParameter:(id)a4;
- (HMDAudioCodecConfiguration)initWithCoder:(id)a3;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDAudioCodecConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDAudioCodecConfiguration *)self codecGroup];
  [v4 encodeObject:v5 forKey:@"kAudioCodecConfiguration__CodecGroupType"];

  v6 = [(HMDAudioCodecConfiguration *)self audioCodecParameters];
  [v4 encodeObject:v6 forKey:@"kAudioCodecConfiguration__CodecParameters"];
}

- (HMDAudioCodecConfiguration)initWithCoder:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HMDAudioCodecConfiguration;
  v5 = [(HMDAudioCodecConfiguration *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kAudioCodecConfiguration__CodecGroupType"];
    codecGroup = v5->_codecGroup;
    v5->_codecGroup = v9;

    v11 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"kAudioCodecConfiguration__CodecParameters"];
    audioCodecParameters = v5->_audioCodecParameters;
    v5->_audioCodecParameters = v14;
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

  v9 = [(HMDAudioCodecConfiguration *)self codecGroup];
  v10 = [v9 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n %@ audiocodec = %@ ", v6, v10];

  v12 = [(HMDAudioCodecConfiguration *)self audioCodecParameters];
  v11 = [v12 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n %@ codecParameters = %@ ", v6, v11];
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(HMDAudioCodecConfiguration *)self codecGroup];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "codec")}];
  [v3 addTLV:1 number:v6];

  v7 = [(HMDAudioCodecConfiguration *)self audioCodecParameters];
  v8 = [v7 tlvData];

  [v3 addTLV:2 data:v8];
  v9 = [v3 serialize];

  return v9;
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
    v7 = [v3 field];
    v8 = -[HMDAudioCodecGroup initWithAudioCodecGroup:](v6, "initWithAudioCodecGroup:", [v7 unsignedIntegerValue]);
    codecGroup = self->_codecGroup;
    self->_codecGroup = v8;

    v10 = [HMDAudioCodecParameters alloc];
    v11 = [v4 field];
    v12 = [(HAPTLVBase *)v10 initWithTLVData:v11];
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

- (HMDAudioCodecConfiguration)initWithAudioCodecGroup:(id)a3 codecParameter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDAudioCodecConfiguration;
  v9 = [(HMDAudioCodecConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_codecGroup, a3);
    objc_storeStrong(&v10->_audioCodecParameters, a4);
  }

  return v10;
}

@end