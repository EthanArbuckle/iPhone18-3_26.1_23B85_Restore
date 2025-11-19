@interface HMDVideoCodecConfiguration
- (BOOL)_parseFromTLVData;
- (HMDVideoCodecConfiguration)initWithCodec:(id)a3 codecParameters:(id)a4 attributes:(id)a5;
- (HMDVideoCodecConfiguration)initWithCoder:(id)a3;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDVideoCodecConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDVideoCodecConfiguration *)self videoCodec];
  [v4 encodeObject:v5 forKey:@"kVideoCodecConfiguration__CodecType"];

  v6 = [(HMDVideoCodecConfiguration *)self codecParameters];
  [v4 encodeObject:v6 forKey:@"kVideoCodecConfiguration__CodecParameters"];

  v7 = [(HMDVideoCodecConfiguration *)self videoAttributes];
  [v4 encodeObject:v7 forKey:@"kVideoCodecConfiguration__Attributes"];
}

- (HMDVideoCodecConfiguration)initWithCoder:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HMDVideoCodecConfiguration;
  v5 = [(HMDVideoCodecConfiguration *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v26[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kVideoCodecConfiguration__CodecType"];
    videoCodec = v5->_videoCodec;
    v5->_videoCodec = v9;

    v11 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"kVideoCodecConfiguration__CodecParameters"];
    codecParameters = v5->_codecParameters;
    v5->_codecParameters = v14;

    v16 = MEMORY[0x277CBEB98];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"kVideoCodecConfiguration__Attributes"];
    videoAttributes = v5->_videoAttributes;
    v5->_videoAttributes = v19;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HAPTLVBase *)self tlvDatablob];
  [v7 appendFormat:@"\n %@ tlvDatablob = %@ ", v6, v8];

  v9 = [(HMDVideoCodecConfiguration *)self videoCodec];
  v10 = [v9 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n %@ videoCodec = %@ ", v6, v10];

  v11 = [(HMDVideoCodecConfiguration *)self codecParameters];
  v12 = [v11 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n %@ codecParameters = %@ ", v6, v12];

  v14 = [(HMDVideoCodecConfiguration *)self videoAttributes];
  v13 = arrayToString(v14, v6);
  [v7 appendFormat:@"\n %@ attributes = %@ ", v6, v13];
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(HMDVideoCodecConfiguration *)self videoCodec];
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "codecType")}];
  [v3 addTLV:1 number:v6];

  v7 = [(HMDVideoCodecConfiguration *)self codecParameters];
  v8 = [v7 tlvData];

  [v3 addTLV:2 data:v8];
  v9 = [(HMDVideoCodecConfiguration *)self videoAttributes];
  v10 = [v9 objectAtIndex:0];
  v11 = [v10 tlvData];

  [v3 addTLV:3 data:v11];
  v12 = [v3 serialize];

  return v12;
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
    v8 = [v3 field];
    v9 = -[HMDVideoCodec initWithCodec:](v7, "initWithCodec:", [v8 unsignedIntegerValue]);
    videoCodec = self->_videoCodec;
    self->_videoCodec = v9;

    v11 = [HMDVideoCodecParameters alloc];
    v12 = [v4 field];
    v13 = [(HAPTLVBase *)v11 initWithTLVData:v12];
    codecParameters = self->_codecParameters;
    self->_codecParameters = v13;

    v15 = [v5 field];
    videoAttributes = self->_videoAttributes;
    self->_videoAttributes = v15;

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

- (HMDVideoCodecConfiguration)initWithCodec:(id)a3 codecParameters:(id)a4 attributes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDVideoCodecConfiguration;
  v12 = [(HMDVideoCodecConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_videoCodec, a3);
    objc_storeStrong(&v13->_codecParameters, a4);
    objc_storeStrong(&v13->_videoAttributes, a5);
  }

  return v13;
}

@end