@interface RemoteAlertHandleObserver
- (_TtC21DeviceSharingServicesP33_DCC69EBB8BA68A324D11B2F382DAF43C25RemoteAlertHandleObserver)init;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation RemoteAlertHandleObserver

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  selfCopy = self;
  sub_248A5C330(deactivateCopy);
}

- (_TtC21DeviceSharingServicesP33_DCC69EBB8BA68A324D11B2F382DAF43C25RemoteAlertHandleObserver)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC21DeviceSharingServicesP33_DCC69EBB8BA68A324D11B2F382DAF43C25RemoteAlertHandleObserver_remoteAlertHandle) = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtC21DeviceSharingServicesP33_DCC69EBB8BA68A324D11B2F382DAF43C25RemoteAlertHandleObserver_onRemoteAlertHandleDidDeactivate);
  *v4 = 0;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(RemoteAlertHandleObserver *)&v6 init];
}

@end