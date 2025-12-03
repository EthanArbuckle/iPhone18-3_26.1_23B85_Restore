@interface GTTransportClient
- (GTTransportClient)initWithConnection:(id)connection;
- (id)capture;
- (id)launcher;
- (id)loopback;
- (id)replayer;
- (id)serviceProvider;
@end

@implementation GTTransportClient

- (GTTransportClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = GTTransportClient;
  v6 = [(GTTransportClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (id)capture
{
  v3 = allServices(self->_connection);
  v4 = filteredArrayByService(v3, &unk_2860F0CF8);
  firstObject = [v4 firstObject];

  v6 = [GTMTLCaptureServiceXPCProxy alloc];
  connection = self->_connection;
  serviceProperties = [firstObject serviceProperties];
  v9 = [(GTMTLCaptureServiceXPCProxy *)v6 initWithConnection:connection remoteProperties:serviceProperties];

  return v9;
}

- (id)launcher
{
  v3 = allServices(self->_connection);
  v4 = filteredArrayByService(v3, &unk_2860F1308);
  firstObject = [v4 firstObject];

  v6 = [GTLaunchServiceXPCProxy alloc];
  connection = self->_connection;
  serviceProperties = [firstObject serviceProperties];
  v9 = [(GTLaunchServiceXPCProxy *)v6 initWithConnection:connection remoteProperties:serviceProperties];

  return v9;
}

- (id)replayer
{
  v3 = allServices(self->_connection);
  v4 = filteredArrayByService(v3, &unk_2860EE930);
  firstObject = [v4 firstObject];

  v6 = [[GTMTLReplayServiceXPCProxy alloc] initWithConnection:self->_connection serviceInfo:firstObject];

  return v6;
}

- (id)serviceProvider
{
  v3 = allServices(self->_connection);
  v4 = filteredArrayByService(v3, &unk_2860EC7A8);
  firstObject = [v4 firstObject];

  v6 = [GTServiceProviderXPCProxy alloc];
  connection = self->_connection;
  serviceProperties = [firstObject serviceProperties];
  v9 = [(GTServiceProviderXPCProxy *)v6 initWithConnection:connection remoteProperties:serviceProperties];

  return v9;
}

- (id)loopback
{
  v3 = allServices(self->_connection);
  v4 = filteredArrayByService(v3, &unk_2860F1078);
  firstObject = [v4 firstObject];

  v6 = [GTLoopbackServiceXPCProxy alloc];
  connection = self->_connection;
  serviceProperties = [firstObject serviceProperties];
  v9 = [(GTLoopbackServiceXPCProxy *)v6 initWithConnection:connection remoteProperties:serviceProperties];

  return v9;
}

@end