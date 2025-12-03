@interface MRDAVHostedRoutingControllerGroup
- (MRDAVHostedRoutingControllerGroup)initWithEndpoint:(id)endpoint externalDevice:(id)device;
- (id)description;
@end

@implementation MRDAVHostedRoutingControllerGroup

- (MRDAVHostedRoutingControllerGroup)initWithEndpoint:(id)endpoint externalDevice:(id)device
{
  endpointCopy = endpoint;
  deviceCopy = device;
  v17.receiver = self;
  v17.super_class = MRDAVHostedRoutingControllerGroup;
  v9 = [(MRDAVHostedRoutingControllerGroup *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_concreteEndpoint, endpoint);
    objc_storeStrong(&v10->_externalDevice, device);
    v11 = [MRAVDistantEndpoint alloc];
    descriptor = [endpointCopy descriptor];
    v13 = [v11 initWithDescriptor:descriptor];

    externalDeviceListenerEndpoint = [deviceCopy externalDeviceListenerEndpoint];
    [v13 setExternalDeviceListenerEndpoint:externalDeviceListenerEndpoint];

    distantEndpoint = v10->_distantEndpoint;
    v10->_distantEndpoint = v13;
  }

  return v10;
}

- (id)description
{
  v3 = [NSString alloc];
  concreteEndpoint = self->_concreteEndpoint;
  v5 = [v3 initWithFormat:@"%@ - %@", concreteEndpoint, self->_externalDevice];

  return v5;
}

@end