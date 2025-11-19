@interface HMDCameraRecordingMediaContainerParameters
- (BOOL)_parseFromTLVData;
- (HMDCameraRecordingMediaContainerParameters)initWithCoder:(id)a3;
- (HMDCameraRecordingMediaContainerParameters)initWithFragmentLength:(id)a3;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDCameraRecordingMediaContainerParameters

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingMediaContainerParameters *)self fragmentLength];
  [v4 encodeObject:v5 forKey:@"kMediaContainerParametersFragmentLength"];
}

- (HMDCameraRecordingMediaContainerParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDCameraRecordingMediaContainerParameters;
  v5 = [(HMDCameraRecordingMediaContainerParameters *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMediaContainerParametersFragmentLength"];
    fragmentLength = v5->_fragmentLength;
    v5->_fragmentLength = v6;
  }

  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HAPTLVBase *)self tlvDatablob];
  [v7 appendFormat:@"\n%@tlvDatablob = %@ ", v6, v8];

  v9 = [(HMDCameraRecordingMediaContainerParameters *)self fragmentLength];
  [v7 appendFormat:@"\n%@fragmentLength = %@ ", v6, v9];
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = [(HMDCameraRecordingMediaContainerParameters *)self fragmentLength];
  [v3 addTLV:1 length:4 number:v4];

  v5 = [v3 serialize];

  return v5;
}

- (BOOL)_parseFromTLVData
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC08] wrappertlv:1 name:@"kMediaContainerParametersFragmentLength"];
  v10[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v5 = [(HAPTLVBase *)self _parse:v4];
  if (v5)
  {
    v6 = [v3 field];
    fragmentLength = self->_fragmentLength;
    self->_fragmentLength = v6;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (HMDCameraRecordingMediaContainerParameters)initWithFragmentLength:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDCameraRecordingMediaContainerParameters;
  v6 = [(HMDCameraRecordingMediaContainerParameters *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fragmentLength, a3);
  }

  return v7;
}

@end