@interface GTCaptureObjects
- (GTCaptureObjects)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTCaptureObjects

- (GTCaptureObjects)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = GTCaptureObjects;
  v5 = [(GTCaptureObjects *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"devices"];
    devices = v5->_devices;
    v5->_devices = v6;

    v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"commandQueues"];
    commandQueues = v5->_commandQueues;
    v5->_commandQueues = v8;

    v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"captureScopes"];
    captureScopes = v5->_captureScopes;
    v5->_captureScopes = v10;

    v12 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"metalLayers"];
    metalLayers = v5->_metalLayers;
    v5->_metalLayers = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  devices = self->_devices;
  coderCopy = coder;
  [coderCopy encodeObject:devices forKey:@"devices"];
  [coderCopy encodeObject:self->_commandQueues forKey:@"commandQueues"];
  [coderCopy encodeObject:self->_captureScopes forKey:@"captureScopes"];
  [coderCopy encodeObject:self->_metalLayers forKey:@"metalLayers"];
}

@end