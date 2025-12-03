@interface GamePolicyDaemonPrivilegedProxyBridge
+ (void)requestLaunchGameOverlayWithConditional:(BOOL)conditional fallbackToApp:(BOOL)app withReply:(id)reply;
- (_TtC10GamePolicy37GamePolicyDaemonPrivilegedProxyBridge)init;
@end

@implementation GamePolicyDaemonPrivilegedProxyBridge

+ (void)requestLaunchGameOverlayWithConditional:(BOOL)conditional fallbackToApp:(BOOL)app withReply:(id)reply
{
  v7 = _Block_copy(reply);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  _s10GamePolicy0aB27DaemonPrivilegedProxyBridgeC013requestLaunchA7Overlay11conditional13fallbackToApp9withReplyySb_SbySb_SbtctFZ_0(conditional, app, sub_24E5D00AC, v8);
}

- (_TtC10GamePolicy37GamePolicyDaemonPrivilegedProxyBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GamePolicyDaemonPrivilegedProxyBridge();
  return [(GamePolicyDaemonPrivilegedProxyBridge *)&v3 init];
}

@end