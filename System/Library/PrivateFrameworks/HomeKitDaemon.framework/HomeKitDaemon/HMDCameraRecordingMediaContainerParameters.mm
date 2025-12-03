@interface HMDCameraRecordingMediaContainerParameters
- (BOOL)_parseFromTLVData;
- (HMDCameraRecordingMediaContainerParameters)initWithCoder:(id)coder;
- (HMDCameraRecordingMediaContainerParameters)initWithFragmentLength:(id)length;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDCameraRecordingMediaContainerParameters

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fragmentLength = [(HMDCameraRecordingMediaContainerParameters *)self fragmentLength];
  [coderCopy encodeObject:fragmentLength forKey:@"kMediaContainerParametersFragmentLength"];
}

- (HMDCameraRecordingMediaContainerParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HMDCameraRecordingMediaContainerParameters;
  v5 = [(HMDCameraRecordingMediaContainerParameters *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMediaContainerParametersFragmentLength"];
    fragmentLength = v5->_fragmentLength;
    v5->_fragmentLength = v6;
  }

  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  [descriptionCopy appendFormat:@"\n%@tlvDatablob = %@ ", indentCopy, tlvDatablob];

  fragmentLength = [(HMDCameraRecordingMediaContainerParameters *)self fragmentLength];
  [descriptionCopy appendFormat:@"\n%@fragmentLength = %@ ", indentCopy, fragmentLength];
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  fragmentLength = [(HMDCameraRecordingMediaContainerParameters *)self fragmentLength];
  [creator addTLV:1 length:4 number:fragmentLength];

  serialize = [creator serialize];

  return serialize;
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
    field = [v3 field];
    fragmentLength = self->_fragmentLength;
    self->_fragmentLength = field;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (HMDCameraRecordingMediaContainerParameters)initWithFragmentLength:(id)length
{
  lengthCopy = length;
  v9.receiver = self;
  v9.super_class = HMDCameraRecordingMediaContainerParameters;
  v6 = [(HMDCameraRecordingMediaContainerParameters *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fragmentLength, length);
  }

  return v7;
}

@end