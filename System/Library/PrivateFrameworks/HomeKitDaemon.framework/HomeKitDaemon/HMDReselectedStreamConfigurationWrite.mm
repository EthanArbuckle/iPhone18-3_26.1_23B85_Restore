@interface HMDReselectedStreamConfigurationWrite
- (BOOL)_parseFromTLVData;
- (HMDReselectedStreamConfigurationWrite)initWithCoder:(id)coder;
- (HMDReselectedStreamConfigurationWrite)initWithSessionControl:(id)control;
- (HMDReselectedStreamConfigurationWrite)initWithSessionControl:(id)control videoParameters:(id)parameters;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDReselectedStreamConfigurationWrite

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sessionControl = [(HMDReselectedStreamConfigurationWrite *)self sessionControl];
  [coderCopy encodeObject:sessionControl forKey:@"kSelectedStreamConfigurationWrite__SessionControl"];

  videoParameters = [(HMDReselectedStreamConfigurationWrite *)self videoParameters];
  [coderCopy encodeObject:videoParameters forKey:@"kSelectedStreamConfigurationWrite__SelectedVideoParameters"];
}

- (HMDReselectedStreamConfigurationWrite)initWithCoder:(id)coder
{
  v20[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = HMDReselectedStreamConfigurationWrite;
  v5 = [(HMDReselectedStreamConfigurationWrite *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kSelectedStreamConfigurationWrite__SessionControl"];
    sessionControl = v5->_sessionControl;
    v5->_sessionControl = v9;

    v11 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"kSelectedStreamConfigurationWrite__SelectedVideoParameters"];
    videoParameters = v5->_videoParameters;
    v5->_videoParameters = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  sessionControl = [(HMDReselectedStreamConfigurationWrite *)self sessionControl];
  v9 = [sessionControl descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n %@ sessionControl = %@ ", indentCopy, v9];

  videoParameters = [(HMDReselectedStreamConfigurationWrite *)self videoParameters];
  v10 = [videoParameters descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n %@ videoParameters = %@ ", indentCopy, v10];
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
    field = [v3 field];
    v10 = [(HAPTLVBase *)v8 initWithTLVData:field];
    sessionControl = self->_sessionControl;
    self->_sessionControl = v10;

    v12 = [HMDReselectedVideoParameters alloc];
    field2 = [v4 field];
    v14 = [(HAPTLVBase *)v12 initWithTLVData:field2];
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
  creator = [MEMORY[0x277CFEC80] creator];
  sessionControl = [(HMDReselectedStreamConfigurationWrite *)self sessionControl];
  tlvData = [sessionControl tlvData];

  [creator addTLV:1 data:tlvData];
  videoParameters = [(HMDReselectedStreamConfigurationWrite *)self videoParameters];
  tlvData2 = [videoParameters tlvData];

  [creator addTLV:2 data:tlvData2];
  serialize = [creator serialize];

  return serialize;
}

- (HMDReselectedStreamConfigurationWrite)initWithSessionControl:(id)control
{
  controlCopy = control;
  v9.receiver = self;
  v9.super_class = HMDReselectedStreamConfigurationWrite;
  v6 = [(HMDReselectedStreamConfigurationWrite *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionControl, control);
  }

  return v7;
}

- (HMDReselectedStreamConfigurationWrite)initWithSessionControl:(id)control videoParameters:(id)parameters
{
  controlCopy = control;
  parametersCopy = parameters;
  v12.receiver = self;
  v12.super_class = HMDReselectedStreamConfigurationWrite;
  v9 = [(HMDReselectedStreamConfigurationWrite *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sessionControl, control);
    objc_storeStrong(&v10->_videoParameters, parameters);
  }

  return v10;
}

@end