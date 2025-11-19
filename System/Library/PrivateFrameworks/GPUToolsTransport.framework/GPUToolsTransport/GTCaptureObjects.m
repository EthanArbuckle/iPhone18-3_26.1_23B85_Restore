@interface GTCaptureObjects
- (GTCaptureObjects)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTCaptureObjects

- (GTCaptureObjects)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = GTCaptureObjects;
  v5 = [(GTCaptureObjects *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"devices"];
    devices = v5->_devices;
    v5->_devices = v6;

    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"commandQueues"];
    commandQueues = v5->_commandQueues;
    v5->_commandQueues = v8;

    v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"captureScopes"];
    captureScopes = v5->_captureScopes;
    v5->_captureScopes = v10;

    v12 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"metalLayers"];
    metalLayers = v5->_metalLayers;
    v5->_metalLayers = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  devices = self->_devices;
  v5 = a3;
  [v5 encodeObject:devices forKey:@"devices"];
  [v5 encodeObject:self->_commandQueues forKey:@"commandQueues"];
  [v5 encodeObject:self->_captureScopes forKey:@"captureScopes"];
  [v5 encodeObject:self->_metalLayers forKey:@"metalLayers"];
}

@end