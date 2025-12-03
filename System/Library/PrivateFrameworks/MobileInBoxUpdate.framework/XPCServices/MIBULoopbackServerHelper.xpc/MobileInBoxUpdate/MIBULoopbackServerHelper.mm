@interface MIBULoopbackServerHelper
- (_TtC24MIBULoopbackServerHelper24MIBULoopbackServerHelper)init;
- (void)startServerWithWebPort:(unsigned __int16)port webRoot:(id)root waitTillDone:(BOOL)done with:(id)with;
- (void)stopServer;
@end

@implementation MIBULoopbackServerHelper

- (void)startServerWithWebPort:(unsigned __int16)port webRoot:(id)root waitTillDone:(BOOL)done with:(id)with
{
  portCopy = port;
  v9 = _Block_copy(with);
  v10 = sub_10000A1A8();
  v12 = v11;
  _Block_copy(v9);
  selfCopy = self;
  sub_100002F4C(portCopy, v10, v12, done, selfCopy, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (void)stopServer
{
  selfCopy = self;
  sub_100002A9C();
}

- (_TtC24MIBULoopbackServerHelper24MIBULoopbackServerHelper)init
{
  *(&self->super.isa + OBJC_IVAR____TtC24MIBULoopbackServerHelper24MIBULoopbackServerHelper_server) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for MIBULoopbackServerHelper();
  return [(MIBULoopbackServerHelper *)&v3 init];
}

@end