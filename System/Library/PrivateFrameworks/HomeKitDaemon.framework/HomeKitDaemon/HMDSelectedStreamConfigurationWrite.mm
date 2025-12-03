@interface HMDSelectedStreamConfigurationWrite
- (BOOL)_parseFromTLVData;
- (HMDSelectedStreamConfigurationWrite)initWithCoder:(id)coder;
- (HMDSelectedStreamConfigurationWrite)initWithSessionControl:(id)control;
- (HMDSelectedStreamConfigurationWrite)initWithSessionControl:(id)control videoParameters:(id)parameters audioParameters:(id)audioParameters;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDSelectedStreamConfigurationWrite

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sessionControl = [(HMDSelectedStreamConfigurationWrite *)self sessionControl];
  [coderCopy encodeObject:sessionControl forKey:@"kSelectedStreamConfigurationWrite__SessionControl"];

  videoParameters = [(HMDSelectedStreamConfigurationWrite *)self videoParameters];
  [coderCopy encodeObject:videoParameters forKey:@"kSelectedStreamConfigurationWrite__SelectedVideoParameters"];

  audioParameters = [(HMDSelectedStreamConfigurationWrite *)self audioParameters];
  [coderCopy encodeObject:audioParameters forKey:@"kSelectedStreamConfigurationWrite__SelectedAudioParameters"];
}

- (HMDSelectedStreamConfigurationWrite)initWithCoder:(id)coder
{
  v26[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = HMDSelectedStreamConfigurationWrite;
  v5 = [(HMDSelectedStreamConfigurationWrite *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v26[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kSelectedStreamConfigurationWrite__SessionControl"];
    sessionControl = v5->_sessionControl;
    v5->_sessionControl = v9;

    v11 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"kSelectedStreamConfigurationWrite__SelectedVideoParameters"];
    videoParameters = v5->_videoParameters;
    v5->_videoParameters = v14;

    v16 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v18 = [v16 setWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"kSelectedStreamConfigurationWrite__SelectedAudioParameters"];
    audioParameters = v5->_audioParameters;
    v5->_audioParameters = v19;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  sessionControl = [(HMDSelectedStreamConfigurationWrite *)self sessionControl];
  v9 = [sessionControl descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n %@ sessionControl = %@ ", indentCopy, v9];

  videoParameters = [(HMDSelectedStreamConfigurationWrite *)self videoParameters];
  v11 = [videoParameters descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n %@ videoParameters = %@ ", indentCopy, v11];

  audioParameters = [(HMDSelectedStreamConfigurationWrite *)self audioParameters];
  v12 = [audioParameters descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n %@ audioParameters = %@ ", indentCopy, v12];
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
    field = [v3 field];
    v11 = [(HAPTLVBase *)v9 initWithTLVData:field];
    sessionControl = self->_sessionControl;
    self->_sessionControl = v11;

    v20 = checkForParseResult(1, v13, v14, v15, v16, v17, v18, v19, self->_sessionControl, v38);
    if ([(HMDSessionControl *)self->_sessionControl controlCommand]== 1)
    {
      v21 = [HMDSelectedVideoParameters alloc];
      field2 = [v4 field];
      v23 = [(HAPTLVBase *)v21 initWithTLVData:field2];
      videoParameters = self->_videoParameters;
      self->_videoParameters = v23;

      v25 = [HMDSelectedAudioParameters alloc];
      field3 = [v5 field];
      v27 = [(HAPTLVBase *)v25 initWithTLVData:field3];
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
  creator = [MEMORY[0x277CFEC80] creator];
  sessionControl = [(HMDSelectedStreamConfigurationWrite *)self sessionControl];
  tlvData = [sessionControl tlvData];

  [creator addTLV:1 data:tlvData];
  videoParameters = [(HMDSelectedStreamConfigurationWrite *)self videoParameters];
  tlvData2 = [videoParameters tlvData];

  [creator addTLV:2 data:tlvData2];
  audioParameters = [(HMDSelectedStreamConfigurationWrite *)self audioParameters];
  tlvData3 = [audioParameters tlvData];

  [creator addTLV:3 data:tlvData3];
  serialize = [creator serialize];

  return serialize;
}

- (HMDSelectedStreamConfigurationWrite)initWithSessionControl:(id)control
{
  controlCopy = control;
  v9.receiver = self;
  v9.super_class = HMDSelectedStreamConfigurationWrite;
  v6 = [(HMDSelectedStreamConfigurationWrite *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionControl, control);
  }

  return v7;
}

- (HMDSelectedStreamConfigurationWrite)initWithSessionControl:(id)control videoParameters:(id)parameters audioParameters:(id)audioParameters
{
  controlCopy = control;
  parametersCopy = parameters;
  audioParametersCopy = audioParameters;
  v15.receiver = self;
  v15.super_class = HMDSelectedStreamConfigurationWrite;
  v12 = [(HMDSelectedStreamConfigurationWrite *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionControl, control);
    objc_storeStrong(&v13->_videoParameters, parameters);
    objc_storeStrong(&v13->_audioParameters, audioParameters);
  }

  return v13;
}

@end