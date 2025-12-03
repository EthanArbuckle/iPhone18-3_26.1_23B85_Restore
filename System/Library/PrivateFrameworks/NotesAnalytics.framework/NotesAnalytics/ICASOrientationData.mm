@interface ICASOrientationData
- (ICASOrientationData)initWithDeviceOrientation:(id)orientation interfaceOrientation:(id)interfaceOrientation;
- (id)toDict;
@end

@implementation ICASOrientationData

- (ICASOrientationData)initWithDeviceOrientation:(id)orientation interfaceOrientation:(id)interfaceOrientation
{
  orientationCopy = orientation;
  interfaceOrientationCopy = interfaceOrientation;
  v12.receiver = self;
  v12.super_class = ICASOrientationData;
  v9 = [(ICASOrientationData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deviceOrientation, orientation);
    objc_storeStrong(&v10->_interfaceOrientation, interfaceOrientation);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"deviceOrientation";
  deviceOrientation = [(ICASOrientationData *)self deviceOrientation];
  if (deviceOrientation)
  {
    deviceOrientation2 = [(ICASOrientationData *)self deviceOrientation];
  }

  else
  {
    deviceOrientation2 = objc_opt_new();
  }

  v5 = deviceOrientation2;
  v12[1] = @"interfaceOrientation";
  v13[0] = deviceOrientation2;
  interfaceOrientation = [(ICASOrientationData *)self interfaceOrientation];
  if (interfaceOrientation)
  {
    interfaceOrientation2 = [(ICASOrientationData *)self interfaceOrientation];
  }

  else
  {
    interfaceOrientation2 = objc_opt_new();
  }

  v8 = interfaceOrientation2;
  v13[1] = interfaceOrientation2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end