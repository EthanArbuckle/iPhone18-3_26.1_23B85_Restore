@interface GTTransportClient
- (GTTransportClient)initWithConnection:(id)a3;
- (id)capture;
- (id)launcher;
- (id)loopback;
- (id)replayer;
- (id)serviceProvider;
@end

@implementation GTTransportClient

- (GTTransportClient)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GTTransportClient;
  v6 = [(GTTransportClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

- (id)capture
{
  v3 = allServices(self->_connection);
  v4 = filteredArrayByService(v3, &unk_2860F0CF8);
  v5 = [v4 firstObject];

  v6 = [GTMTLCaptureServiceXPCProxy alloc];
  connection = self->_connection;
  v8 = [v5 serviceProperties];
  v9 = [(GTMTLCaptureServiceXPCProxy *)v6 initWithConnection:connection remoteProperties:v8];

  return v9;
}

- (id)launcher
{
  v3 = allServices(self->_connection);
  v4 = filteredArrayByService(v3, &unk_2860F1308);
  v5 = [v4 firstObject];

  v6 = [GTLaunchServiceXPCProxy alloc];
  connection = self->_connection;
  v8 = [v5 serviceProperties];
  v9 = [(GTLaunchServiceXPCProxy *)v6 initWithConnection:connection remoteProperties:v8];

  return v9;
}

- (id)replayer
{
  v3 = allServices(self->_connection);
  v4 = filteredArrayByService(v3, &unk_2860EE930);
  v5 = [v4 firstObject];

  v6 = [[GTMTLReplayServiceXPCProxy alloc] initWithConnection:self->_connection serviceInfo:v5];

  return v6;
}

- (id)serviceProvider
{
  v3 = allServices(self->_connection);
  v4 = filteredArrayByService(v3, &unk_2860EC7A8);
  v5 = [v4 firstObject];

  v6 = [GTServiceProviderXPCProxy alloc];
  connection = self->_connection;
  v8 = [v5 serviceProperties];
  v9 = [(GTServiceProviderXPCProxy *)v6 initWithConnection:connection remoteProperties:v8];

  return v9;
}

- (id)loopback
{
  v3 = allServices(self->_connection);
  v4 = filteredArrayByService(v3, &unk_2860F1078);
  v5 = [v4 firstObject];

  v6 = [GTLoopbackServiceXPCProxy alloc];
  connection = self->_connection;
  v8 = [v5 serviceProperties];
  v9 = [(GTLoopbackServiceXPCProxy *)v6 initWithConnection:connection remoteProperties:v8];

  return v9;
}

@end