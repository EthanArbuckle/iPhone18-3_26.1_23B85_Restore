@interface MFXPCServer
+ (id)endpointInfo;
- (MFXPCServer)initWithClient:(id)client;
- (MFXPCServer)initWithRemoteObjectInterface:(id)interface;
@end

@implementation MFXPCServer

+ (id)endpointInfo
{
  exportedInterface = [self exportedInterface];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B0444;
  v6[3] = &unk_100158888;
  v6[4] = self;
  v4 = [MFXPCEndpointInfo endpointInfoWithExportedInterface:exportedInterface remoteObjectInterface:0 shouldAcceptClient:0 exportedObjectForClient:v6];

  return v4;
}

- (MFXPCServer)initWithRemoteObjectInterface:(id)interface
{
  interfaceCopy = interface;
  [(MFXPCServer *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFXPCServer initWithRemoteObjectInterface:]", "MFXPCServer.m", 49, "0");
}

- (MFXPCServer)initWithClient:(id)client
{
  clientCopy = client;
  v9.receiver = self;
  v9.super_class = MFXPCServer;
  v6 = [(MFXPCServer *)&v9 initWithRemoteObjectInterface:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_client, client);
  }

  return v7;
}

@end