@interface MIBULoopbackServerHelper
- (_TtC24MIBULoopbackServerHelper24MIBULoopbackServerHelper)init;
- (void)startServerWithWebPort:(unsigned __int16)a3 webRoot:(id)a4 waitTillDone:(BOOL)a5 with:(id)a6;
- (void)stopServer;
@end

@implementation MIBULoopbackServerHelper

- (void)startServerWithWebPort:(unsigned __int16)a3 webRoot:(id)a4 waitTillDone:(BOOL)a5 with:(id)a6
{
  v7 = a3;
  v9 = _Block_copy(a6);
  v10 = sub_10000A1A8();
  v12 = v11;
  _Block_copy(v9);
  v13 = self;
  sub_100002F4C(v7, v10, v12, a5, v13, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (void)stopServer
{
  v2 = self;
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