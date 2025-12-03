@interface BLTIDSDevice
- (BLTIDSDevice)initWithIDSDevice:(id)device;
- (BOOL)isCloudReachable;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)dealloc;
@end

@implementation BLTIDSDevice

- (BLTIDSDevice)initWithIDSDevice:(id)device
{
  deviceCopy = device;
  v10.receiver = self;
  v10.super_class = BLTIDSDevice;
  v6 = [(BLTIDSDevice *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = +[BLTReachabilityManager sharedInstance];
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BLTIDSDevice;
  [(BLTIDSDevice *)&v2 dealloc];
}

- (BOOL)isCloudReachable
{
  v2 = +[BLTReachabilityManager sharedInstance];
  isInternetReachable = [v2 isInternetReachable];

  return isInternetReachable;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BLTIDSDevice *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BLTIDSDevice *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BLTIDSDevice *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendPointer:self->_device withName:@"device"];
  v6 = [succinctDescriptionBuilder appendBool:-[BLTIDSDevice isDefaultPairedDevice](self withName:{"isDefaultPairedDevice"), @"isDefaultPairedDevice"}];
  v7 = [succinctDescriptionBuilder appendBool:-[BLTIDSDevice isNearby](self withName:{"isNearby"), @"isNearby"}];
  v8 = [succinctDescriptionBuilder appendBool:-[BLTIDSDevice isConnected](self withName:{"isConnected"), @"isConnected"}];
  v9 = [succinctDescriptionBuilder appendBool:-[BLTIDSDevice isCloudReachable](self withName:{"isCloudReachable"), @"isCloudReachable"}];

  return succinctDescriptionBuilder;
}

@end