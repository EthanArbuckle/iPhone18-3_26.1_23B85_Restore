@interface CRKRemoteDeviceRequest
- (CRKRemoteDeviceRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKRemoteDeviceRequest

- (CRKRemoteDeviceRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CRKRemoteDeviceRequest;
  v5 = [(CATTaskRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"remoteRequest"];
    remoteRequest = v5->_remoteRequest;
    v5->_remoteRequest = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"deviceIdentifier"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CRKRemoteDeviceRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CRKRemoteDeviceRequest *)self remoteRequest:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"remoteRequest"];

  deviceIdentifier = [(CRKRemoteDeviceRequest *)self deviceIdentifier];
  [coderCopy encodeObject:deviceIdentifier forKey:@"deviceIdentifier"];
}

@end