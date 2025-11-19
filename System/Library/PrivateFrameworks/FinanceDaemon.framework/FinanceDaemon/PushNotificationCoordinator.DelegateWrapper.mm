@interface PushNotificationCoordinator.DelegateWrapper
- (_TtCC13FinanceDaemon27PushNotificationCoordinatorP33_78F3D932150F9D772EA7172189F2498315DelegateWrapper)init;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forInfo:(id)a5;
@end

@implementation PushNotificationCoordinator.DelegateWrapper

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v4 = sub_226D6D21C();
    sub_226B11B98(v4, v5);
  }
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forInfo:(id)a5
{
  if (a4)
  {
    v8 = a3;
    v9 = a5;
    v10 = self;
    v11 = a4;
    v12 = sub_226D6D21C();
    v14 = v13;
  }

  else
  {
    v15 = a3;
    v16 = a5;
    v17 = self;
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  sub_226D0B814(v12, v14, a5);
  sub_226B3FAEC(v12, v14);
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_226D0BA74(a4);
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