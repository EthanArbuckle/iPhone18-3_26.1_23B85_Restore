@interface MRDAVHostedRoutingControllerGroup
- (MRDAVHostedRoutingControllerGroup)initWithEndpoint:(id)a3 externalDevice:(id)a4;
- (id)description;
@end

@implementation MRDAVHostedRoutingControllerGroup

- (MRDAVHostedRoutingControllerGroup)initWithEndpoint:(id)a3 externalDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = MRDAVHostedRoutingControllerGroup;
  v9 = [(MRDAVHostedRoutingControllerGroup *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_concreteEndpoint, a3);
    objc_storeStrong(&v10->_externalDevice, a4);
    v11 = [MRAVDistantEndpoint alloc];
    v12 = [v7 descriptor];
    v13 = [v11 initWithDescriptor:v12];

    v14 = [v8 externalDeviceListenerEndpoint];
    [v13 setExternalDeviceListenerEndpoint:v14];

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