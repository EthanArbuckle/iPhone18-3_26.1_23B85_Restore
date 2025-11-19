@interface BLTIDSDevice
- (BLTIDSDevice)initWithIDSDevice:(id)a3;
- (BOOL)isCloudReachable;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)dealloc;
@end

@implementation BLTIDSDevice

- (BLTIDSDevice)initWithIDSDevice:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = BLTIDSDevice;
  v6 = [(BLTIDSDevice *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
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
  v3 = [v2 isInternetReachable];

  return v3;
}

- (id)succinctDescription
{
  v2 = [(BLTIDSDevice *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BLTIDSDevice *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(BLTIDSDevice *)self succinctDescriptionBuilder];
  v5 = [v4 appendPointer:self->_device withName:@"device"];
  v6 = [v4 appendBool:-[BLTIDSDevice isDefaultPairedDevice](self withName:{"isDefaultPairedDevice"), @"isDefaultPairedDevice"}];
  v7 = [v4 appendBool:-[BLTIDSDevice isNearby](self withName:{"isNearby"), @"isNearby"}];
  v8 = [v4 appendBool:-[BLTIDSDevice isConnected](self withName:{"isConnected"), @"isConnected"}];
  v9 = [v4 appendBool:-[BLTIDSDevice isCloudReachable](self withName:{"isCloudReachable"), @"isCloudReachable"}];

  return v4;
}

@end