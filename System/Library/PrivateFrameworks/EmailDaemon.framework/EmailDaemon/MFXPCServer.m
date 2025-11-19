@interface MFXPCServer
+ (id)endpointInfo;
- (MFXPCServer)initWithClient:(id)a3;
- (MFXPCServer)initWithRemoteObjectInterface:(id)a3;
@end

@implementation MFXPCServer

+ (id)endpointInfo
{
  v3 = [a1 exportedInterface];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B0444;
  v6[3] = &unk_100158888;
  v6[4] = a1;
  v4 = [MFXPCEndpointInfo endpointInfoWithExportedInterface:v3 remoteObjectInterface:0 shouldAcceptClient:0 exportedObjectForClient:v6];

  return v4;
}

- (MFXPCServer)initWithRemoteObjectInterface:(id)a3
{
  v5 = a3;
  [(MFXPCServer *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFXPCServer initWithRemoteObjectInterface:]", "MFXPCServer.m", 49, "0");
}

- (MFXPCServer)initWithClient:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFXPCServer;
  v6 = [(MFXPCServer *)&v9 initWithRemoteObjectInterface:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_client, a3);
  }

  return v7;
}

@end