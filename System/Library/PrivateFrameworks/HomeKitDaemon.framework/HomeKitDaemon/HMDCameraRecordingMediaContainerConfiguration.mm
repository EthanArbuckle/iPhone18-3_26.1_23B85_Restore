@interface HMDCameraRecordingMediaContainerConfiguration
- (BOOL)_parseFromTLVData;
- (HMDCameraRecordingMediaContainerConfiguration)initWithCoder:(id)coder;
- (HMDCameraRecordingMediaContainerConfiguration)initWithMediaContainer:(id)container containerParameters:(id)parameters;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDCameraRecordingMediaContainerConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  container = [(HMDCameraRecordingMediaContainerConfiguration *)self container];
  [coderCopy encodeObject:container forKey:@"kMediaContainerConfigurationContainerType"];

  parameters = [(HMDCameraRecordingMediaContainerConfiguration *)self parameters];
  [coderCopy encodeObject:parameters forKey:@"MediaContainerConfigurationContainerParameters"];
}

- (HMDCameraRecordingMediaContainerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HMDCameraRecordingMediaContainerConfiguration;
  v5 = [(HMDCameraRecordingMediaContainerConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMediaContainerConfigurationContainerType"];
    container = v5->_container;
    v5->_container = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MediaContainerConfigurationContainerParameters"];
    parameters = v5->_parameters;
    v5->_parameters = v8;
  }

  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  [descriptionCopy appendFormat:@"\n%@tlvDatablob = %@ ", indentCopy, tlvDatablob];

  container = [(HMDCameraRecordingMediaContainerConfiguration *)self container];
  v10 = [container descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n%@container = %@ ", indentCopy, v10];

  parameters = [(HMDCameraRecordingMediaContainerConfiguration *)self parameters];
  v11 = [parameters descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n%@parameters = %@ ", indentCopy, v11];
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  v4 = MEMORY[0x277CCABB0];
  container = [(HMDCameraRecordingMediaContainerConfiguration *)self container];
  v6 = [v4 numberWithInteger:{objc_msgSend(container, "type")}];
  [creator addTLV:1 length:1 number:v6];

  parameters = [(HMDCameraRecordingMediaContainerConfiguration *)self parameters];
  tlvData = [parameters tlvData];

  [creator addTLV:2 data:tlvData];
  serialize = [creator serialize];

  return serialize;
}

- (BOOL)_parseFromTLVData
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC08] wrappertlv:1 name:@"kMediaContainerConfigurationContainerType"];
  v4 = [MEMORY[0x277CFEB38] wrappertlv:2 name:@"MediaContainerConfigurationContainerParameters"];
  v17[0] = v3;
  v17[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v6 = [(HAPTLVBase *)self _parse:v5];
  if (v6)
  {
    v7 = [HMDCameraRecordingMediaContainer alloc];
    field = [v3 field];
    v9 = -[HMDCameraRecordingMediaContainer initWithContainer:](v7, "initWithContainer:", [field integerValue]);
    container = self->_container;
    self->_container = v9;

    v11 = [HMDCameraRecordingMediaContainerParameters alloc];
    field2 = [v4 field];
    v13 = [(HAPTLVBase *)v11 initWithTLVData:field2];
    parameters = self->_parameters;
    self->_parameters = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (HMDCameraRecordingMediaContainerConfiguration)initWithMediaContainer:(id)container containerParameters:(id)parameters
{
  containerCopy = container;
  parametersCopy = parameters;
  v12.receiver = self;
  v12.super_class = HMDCameraRecordingMediaContainerConfiguration;
  v9 = [(HMDCameraRecordingMediaContainerConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_container, container);
    objc_storeStrong(&v10->_parameters, parameters);
  }

  return v10;
}

@end