@interface HMDCameraRecordingMediaContainerConfiguration
- (BOOL)_parseFromTLVData;
- (HMDCameraRecordingMediaContainerConfiguration)initWithCoder:(id)a3;
- (HMDCameraRecordingMediaContainerConfiguration)initWithMediaContainer:(id)a3 containerParameters:(id)a4;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDCameraRecordingMediaContainerConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingMediaContainerConfiguration *)self container];
  [v4 encodeObject:v5 forKey:@"kMediaContainerConfigurationContainerType"];

  v6 = [(HMDCameraRecordingMediaContainerConfiguration *)self parameters];
  [v4 encodeObject:v6 forKey:@"MediaContainerConfigurationContainerParameters"];
}

- (HMDCameraRecordingMediaContainerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HMDCameraRecordingMediaContainerConfiguration;
  v5 = [(HMDCameraRecordingMediaContainerConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMediaContainerConfigurationContainerType"];
    container = v5->_container;
    v5->_container = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MediaContainerConfigurationContainerParameters"];
    parameters = v5->_parameters;
    v5->_parameters = v8;
  }

  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HAPTLVBase *)self tlvDatablob];
  [v7 appendFormat:@"\n%@tlvDatablob = %@ ", v6, v8];

  v9 = [(HMDCameraRecordingMediaContainerConfiguration *)self container];
  v10 = [v9 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n%@container = %@ ", v6, v10];

  v12 = [(HMDCameraRecordingMediaContainerConfiguration *)self parameters];
  v11 = [v12 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n%@parameters = %@ ", v6, v11];
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(HMDCameraRecordingMediaContainerConfiguration *)self container];
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "type")}];
  [v3 addTLV:1 length:1 number:v6];

  v7 = [(HMDCameraRecordingMediaContainerConfiguration *)self parameters];
  v8 = [v7 tlvData];

  [v3 addTLV:2 data:v8];
  v9 = [v3 serialize];

  return v9;
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
    v8 = [v3 field];
    v9 = -[HMDCameraRecordingMediaContainer initWithContainer:](v7, "initWithContainer:", [v8 integerValue]);
    container = self->_container;
    self->_container = v9;

    v11 = [HMDCameraRecordingMediaContainerParameters alloc];
    v12 = [v4 field];
    v13 = [(HAPTLVBase *)v11 initWithTLVData:v12];
    parameters = self->_parameters;
    self->_parameters = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (HMDCameraRecordingMediaContainerConfiguration)initWithMediaContainer:(id)a3 containerParameters:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDCameraRecordingMediaContainerConfiguration;
  v9 = [(HMDCameraRecordingMediaContainerConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_container, a3);
    objc_storeStrong(&v10->_parameters, a4);
  }

  return v10;
}

@end