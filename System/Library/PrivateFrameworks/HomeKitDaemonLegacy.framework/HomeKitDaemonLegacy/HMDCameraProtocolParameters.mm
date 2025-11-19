@interface HMDCameraProtocolParameters
- (HMDCameraProtocolParameters)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDCameraProtocolParameters

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraProtocolParameters *)self setupEndPointRead];
  [v4 encodeObject:v5 forKey:@"kHMDSetupEndPointReadKey"];

  v6 = [(HMDCameraProtocolParameters *)self setupEndPointWrite];
  [v4 encodeObject:v6 forKey:@"kHMDSetupEndPointWriteKey"];

  v7 = [(HMDCameraProtocolParameters *)self selectedStreamConfigurationWrite];
  [v4 encodeObject:v7 forKey:@"kHMDSelectedStreamConfigurationWriteKey"];

  v8 = [(HMDCameraProtocolParameters *)self reselectedStreamConfigurationWrite];
  [v4 encodeObject:v8 forKey:@"kHMDReselectedStreamConfigurationWriteKey"];
}

- (HMDCameraProtocolParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HMDCameraProtocolParameters;
  v5 = [(HMDCameraProtocolParameters *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kHMDSetupEndPointReadKey"];
    setupEndPointRead = v5->_setupEndPointRead;
    v5->_setupEndPointRead = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kHMDSetupEndPointWriteKey"];
    setupEndPointWrite = v5->_setupEndPointWrite;
    v5->_setupEndPointWrite = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kHMDSelectedStreamConfigurationWriteKey"];
    selectedStreamConfigurationWrite = v5->_selectedStreamConfigurationWrite;
    v5->_selectedStreamConfigurationWrite = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kHMDReselectedStreamConfigurationWriteKey"];
    reselectedStreamConfigurationWrite = v5->_reselectedStreamConfigurationWrite;
    v5->_reselectedStreamConfigurationWrite = v12;
  }

  return v5;
}

@end