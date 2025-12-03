@interface PushNotificationCoordinator.DelegateWrapper
- (_TtCC13FinanceDaemon27PushNotificationCoordinatorP33_78F3D932150F9D772EA7172189F2498315DelegateWrapper)init;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forInfo:(id)info;
@end

@implementation PushNotificationCoordinator.DelegateWrapper

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  if (token)
  {
    tokenCopy = token;
    v4 = sub_226D6D21C();
    sub_226B11B98(v4, v5);
  }
}

- (void)connection:(id)connection didReceiveToken:(id)token forInfo:(id)info
{
  if (token)
  {
    connectionCopy = connection;
    infoCopy = info;
    selfCopy = self;
    tokenCopy = token;
    v12 = sub_226D6D21C();
    v14 = v13;
  }

  else
  {
    connectionCopy2 = connection;
    infoCopy2 = info;
    selfCopy2 = self;
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  sub_226D0B814(v12, v14, info);
  sub_226B3FAEC(v12, v14);
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  selfCopy = self;
  sub_226D0BA74(message);
}

- (_TtCC13FinanceDaemon27PushNotificationCoordinatorP33_78F3D932150F9D772EA7172189F2498315DelegateWrapper)init
{
  ObjectType = swift_getObjectType();
  *&self->delegate[OBJC_IVAR____TtCC13FinanceDaemon27PushNotificationCoordinatorP33_78F3D932150F9D772EA7172189F2498315DelegateWrapper_delegate] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(PushNotificationCoordinator.DelegateWrapper *)&v5 init];
}

@end