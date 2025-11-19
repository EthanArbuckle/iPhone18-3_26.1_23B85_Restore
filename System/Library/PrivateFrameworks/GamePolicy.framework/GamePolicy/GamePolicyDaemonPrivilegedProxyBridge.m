@interface GamePolicyDaemonPrivilegedProxyBridge
+ (void)requestLaunchGameOverlayWithConditional:(BOOL)a3 fallbackToApp:(BOOL)a4 withReply:(id)a5;
- (_TtC10GamePolicy37GamePolicyDaemonPrivilegedProxyBridge)init;
@end

@implementation GamePolicyDaemonPrivilegedProxyBridge

+ (void)requestLaunchGameOverlayWithConditional:(BOOL)a3 fallbackToApp:(BOOL)a4 withReply:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  _s10GamePolicy0aB27DaemonPrivilegedProxyBridgeC013requestLaunchA7Overlay11conditional13fallbackToApp9withReplyySb_SbySb_SbtctFZ_0(a3, a4, sub_24E5D00AC, v8);
}

- (_TtC10GamePolicy37GamePolicyDaemonPrivilegedProxyBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GamePolicyDaemonPrivilegedProxyBridge();
  return [(GamePolicyDaemonPrivilegedProxyBridge *)&v3 init];
}

@end