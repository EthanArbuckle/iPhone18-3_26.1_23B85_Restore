@interface HMDCameraProtocolParameters
- (HMDCameraProtocolParameters)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDCameraProtocolParameters

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  setupEndPointRead = [(HMDCameraProtocolParameters *)self setupEndPointRead];
  [coderCopy encodeObject:setupEndPointRead forKey:@"kHMDSetupEndPointReadKey"];

  setupEndPointWrite = [(HMDCameraProtocolParameters *)self setupEndPointWrite];
  [coderCopy encodeObject:setupEndPointWrite forKey:@"kHMDSetupEndPointWriteKey"];

  selectedStreamConfigurationWrite = [(HMDCameraProtocolParameters *)self selectedStreamConfigurationWrite];
  [coderCopy encodeObject:selectedStreamConfigurationWrite forKey:@"kHMDSelectedStreamConfigurationWriteKey"];

  reselectedStreamConfigurationWrite = [(HMDCameraProtocolParameters *)self reselectedStreamConfigurationWrite];
  [coderCopy encodeObject:reselectedStreamConfigurationWrite forKey:@"kHMDReselectedStreamConfigurationWriteKey"];
}

- (HMDCameraProtocolParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HMDCameraProtocolParameters;
  v5 = [(HMDCameraProtocolParameters *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kHMDSetupEndPointReadKey"];
    setupEndPointRead = v5->_setupEndPointRead;
    v5->_setupEndPointRead = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kHMDSetupEndPointWriteKey"];
    setupEndPointWrite = v5->_setupEndPointWrite;
    v5->_setupEndPointWrite = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kHMDSelectedStreamConfigurationWriteKey"];
    selectedStreamConfigurationWrite = v5->_selectedStreamConfigurationWrite;
    v5->_selectedStreamConfigurationWrite = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kHMDReselectedStreamConfigurationWriteKey"];
    reselectedStreamConfigurationWrite = v5->_reselectedStreamConfigurationWrite;
    v5->_reselectedStreamConfigurationWrite = v12;
  }

  return v5;
}

@end