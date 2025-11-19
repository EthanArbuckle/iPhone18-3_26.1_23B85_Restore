@interface HMDReselectedStreamConfigurationWrite
- (BOOL)_parseFromTLVData;
- (HMDReselectedStreamConfigurationWrite)initWithCoder:(id)a3;
- (HMDReselectedStreamConfigurationWrite)initWithSessionControl:(id)a3;
- (HMDReselectedStreamConfigurationWrite)initWithSessionControl:(id)a3 videoParameters:(id)a4;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDReselectedStreamConfigurationWrite

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDReselectedStreamConfigurationWrite *)self sessionControl];
  [v4 encodeObject:v5 forKey:@"kSelectedStreamConfigurationWrite__SessionControl"];

  v6 = [(HMDReselectedStreamConfigurationWrite *)self videoParameters];
  [v4 encodeObject:v6 forKey:@"kSelectedStreamConfigurationWrite__SelectedVideoParameters"];
}

- (HMDReselectedStreamConfigurationWrite)initWithCoder:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HMDReselectedStreamConfigurationWrite;
  v5 = [(HMDReselectedStreamConfigurationWrite *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kSelectedStreamConfigurationWrite__SessionControl"];
    sessionControl = v5->_sessionControl;
    v5->_sessionControl = v9;

    v11 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"kSelectedStreamConfigurationWrite__SelectedVideoParameters"];
    videoParameters = v5->_videoParameters;
    v5->_videoParameters = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDReselectedStreamConfigurationWrite *)self sessionControl];
  v9 = [v8 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n %@ sessionControl = %@ ", v6, v9];

  v11 = [(HMDReselectedStreamConfigurationWrite *)self videoParameters];
  v10 = [v11 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n %@ videoParameters = %@ ", v6, v10];
}

- (BOOL)_parseFromTLVData
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEB38] wrappertlv:1 name:@"kSelectedStreamConfigurationWrite__SessionControl"];
  v4 = [MEMORY[0x277CFEB38] wrappertlv:2 name:@"kSelectedStreamConfigurationWrite__SelectedVideoParameters"];
  v27[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v26 = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v7 = [(HAPTLVBase *)self _parseMandatory:v5 optional:v6];

  if (v7)
  {
    v8 = [HMDSessionControl alloc];
    v9 = [v3 field];
    v10 = [(HAPTLVBase *)v8 initWithTLVData:v9];
    sessionControl = self->_sessionControl;
    self->_sessionControl = v10;

    v12 = [HMDReselectedVideoParameters alloc];
    v13 = [v4 field];
    v14 = [(HAPTLVBase *)v12 initWithTLVData:v13];
    videoParameters = self->_videoParameters;
    self->_videoParameters = v14;

    v23 = checkForParseResult(2, v16, v17, v18, v19, v20, v21, v22, self->_sessionControl, self->_videoParameters);
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = [(HMDReselectedStreamConfigurationWrite *)self sessionControl];
  v5 = [v4 tlvData];

  [v3 addTLV:1 data:v5];
  v6 = [(HMDReselectedStreamConfigurationWrite *)self videoParameters];
  v7 = [v6 tlvData];

  [v3 addTLV:2 data:v7];
  v8 = [v3 serialize];

  return v8;
}

- (HMDReselectedStreamConfigurationWrite)initWithSessionControl:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDReselectedStreamConfigurationWrite;
  v6 = [(HMDReselectedStreamConfigurationWrite *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionControl, a3);
  }

  return v7;
}

- (HMDReselectedStreamConfigurationWrite)initWithSessionControl:(id)a3 videoParameters:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDReselectedStreamConfigurationWrite;
  v9 = [(HMDReselectedStreamConfigurationWrite *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sessionControl, a3);
    objc_storeStrong(&v10->_videoParameters, a4);
  }

  return v10;
}

@end