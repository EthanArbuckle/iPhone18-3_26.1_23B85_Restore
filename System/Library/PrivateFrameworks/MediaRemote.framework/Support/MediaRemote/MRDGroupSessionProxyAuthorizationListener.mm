@interface MRDGroupSessionProxyAuthorizationListener
- (MRDGroupSessionProxyAuthorizationListener)init;
- (MRDGroupSessionProxyAuthorizationListenerDelegate)delegate;
@end

@implementation MRDGroupSessionProxyAuthorizationListener

- (MRDGroupSessionProxyAuthorizationListenerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (MRDGroupSessionProxyAuthorizationListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end