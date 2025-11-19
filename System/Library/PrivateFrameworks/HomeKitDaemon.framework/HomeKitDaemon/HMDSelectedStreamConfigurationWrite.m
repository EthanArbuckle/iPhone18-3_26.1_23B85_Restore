@interface HMDSelectedStreamConfigurationWrite
- (BOOL)_parseFromTLVData;
- (HMDSelectedStreamConfigurationWrite)initWithCoder:(id)a3;
- (HMDSelectedStreamConfigurationWrite)initWithSessionControl:(id)a3;
- (HMDSelectedStreamConfigurationWrite)initWithSessionControl:(id)a3 videoParameters:(id)a4 audioParameters:(id)a5;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDSelectedStreamConfigurationWrite

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDSelectedStreamConfigurationWrite *)self sessionControl];
  [v4 encodeObject:v5 forKey:@"kSelectedStreamConfigurationWrite__SessionControl"];

  v6 = [(HMDSelectedStreamConfigurationWrite *)self videoParameters];
  [v4 encodeObject:v6 forKey:@"kSelectedStreamConfigurationWrite__SelectedVideoParameters"];

  v7 = [(HMDSelectedStreamConfigurationWrite *)self audioParameters];
  [v4 encodeObject:v7 forKey:@"kSelectedStreamConfigurationWrite__SelectedAudioParameters"];
}

- (HMDSelectedStreamConfigurationWrite)initWithCoder:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HMDSelectedStreamConfigurationWrite;
  v5 = [(HMDSelectedStreamConfigurationWrite *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v26[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kSelectedStreamConfigurationWrite__SessionControl"];
    sessionControl = v5->_sessionControl;
    v5->_sessionControl = v9;

    v11 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"kSelectedStreamConfigurationWrite__SelectedVideoParameters"];
    videoParameters = v5->_videoParameters;
    v5->_videoParameters = v14;

    v16 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v18 = [v16 setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"kSelectedStreamConfigurationWrite__SelectedAudioParameters"];
    audioParameters = v5->_audioParameters;
    v5->_audioParameters = v19;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDSelectedStreamConfigurationWrite *)self sessionControl];
  v9 = [v8 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n %@ sessionControl = %@ ", v6, v9];

  v10 = [(HMDSelectedStreamConfigurationWrite *)self videoParameters];
  v11 = [v10 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n %@ videoParameters = %@ ", v6, v11];

  v13 = [(HMDSelectedStreamConfigurationWrite *)self audioParameters];
  v12 = [v13 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n %@ audioParameters = %@ ", v6, v12];
}

- (BOOL)_parseFromTLVData
{
  v40[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEB38] wrappertlv:1 name:@"kSelectedStreamConfigurationWrite__SessionControl"];
  v4 = [MEMORY[0x277CFEB38] wrappertlv:2 name:@"kSelectedStreamConfigurationWrite__SelectedVideoParameters"];
  v5 = [MEMORY[0x277CFEB38] wrappertlv:3 name:@"kSelectedStreamConfigurationWrite__SelectedAudioParameters"];
  v40[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  v39[0] = v4;
  v39[1] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  v8 = [(HAPTLVBase *)self _parseMandatory:v6 optional:v7];

  if (v8)
  {
    v9 = [HMDSessionControl alloc];
    v10 = [v3 field];
    v11 = [(HAPTLVBase *)v9 initWithTLVData:v10];
    sessionControl = self->_sessionControl;
    self->_sessionControl = v11;

    v20 = checkForParseResult(1, v13, v14, v15, v16, v17, v18, v19, self->_sessionControl, v38);
    if ([(HMDSessionControl *)self->_sessionControl controlCommand]== 1)
    {
      v21 = [HMDSelectedVideoParameters alloc];
      v22 = [v4 field];
      v23 = [(HAPTLVBase *)v21 initWithTLVData:v22];
      videoParameters = self->_videoParameters;
      self->_videoParameters = v23;

      v25 = [HMDSelectedAudioParameters alloc];
      v26 = [v5 field];
      v27 = [(HAPTLVBase *)v25 initWithTLVData:v26];
      audioParameters = self->_audioParameters;
      self->_audioParameters = v27;

      if (v20)
      {
        LOBYTE(v20) = checkForParseResult(2, v29, v30, v31, v32, v33, v34, v35, self->_videoParameters, self->_audioParameters);
      }
    }
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v20;
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = [(HMDSelectedStreamConfigurationWrite *)self sessionControl];
  v5 = [v4 tlvData];

  [v3 addTLV:1 data:v5];
  v6 = [(HMDSelectedStreamConfigurationWrite *)self videoParameters];
  v7 = [v6 tlvData];

  [v3 addTLV:2 data:v7];
  v8 = [(HMDSelectedStreamConfigurationWrite *)self audioParameters];
  v9 = [v8 tlvData];

  [v3 addTLV:3 data:v9];
  v10 = [v3 serialize];

  return v10;
}

- (HMDSelectedStreamConfigurationWrite)initWithSessionControl:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDSelectedStreamConfigurationWrite;
  v6 = [(HMDSelectedStreamConfigurationWrite *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionControl, a3);
  }

  return v7;
}

- (HMDSelectedStreamConfigurationWrite)initWithSessionControl:(id)a3 videoParameters:(id)a4 audioParameters:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDSelectedStreamConfigurationWrite;
  v12 = [(HMDSelectedStreamConfigurationWrite *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionControl, a3);
    objc_storeStrong(&v13->_videoParameters, a4);
    objc_storeStrong(&v13->_audioParameters, a5);
  }

  return v13;
}

@end