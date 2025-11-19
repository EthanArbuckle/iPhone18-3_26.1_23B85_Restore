@interface CMLXPCServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC8CipherML12CMLXPCServer)init;
@end

@implementation CMLXPCServer

- (_TtC8CipherML12CMLXPCServer)init
{
  ObjectType = swift_getObjectType();
  type metadata accessor for RequestsManager();
  swift_allocObject();
  v3 = RequestsManager.init(cache:keyStorage:activeUseCaseTracker:allowList:currentTime:)(0, 0, 0, 0, 0, closure #1 in default argument 4 of RequestsManager.init(cache:keyStorage:activeUseCaseTracker:allowList:currentTime:), 0);
  v4 = (*(ObjectType + 112))(v3);
  swift_deallocPartialClassInstance();
  return v4;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = specialized CMLXPCServer.listener(_:shouldAcceptNewConnection:)(v7);

  return v9 & 1;
}

@end