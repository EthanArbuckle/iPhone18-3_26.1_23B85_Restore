@interface CKChatBotInfoController
- (CKChatBotInfoController)initWithCoder:(id)a3;
- (CKChatBotInfoController)initWithHandle:(id)a3 fallbackHandle:(id)a4;
- (CKChatBotInfoController)initWithNibName:(id)a3 bundle:(id)a4;
- (IMHandle)handle;
- (NSString)fallbackHandle;
- (void)setFallbackHandle:(id)a3;
- (void)setHandle:(id)a3;
- (void)viewDidLoad;
@end

@implementation CKChatBotInfoController

- (IMHandle)handle
{
  v3 = OBJC_IVAR___CKChatBotInfoController_handle;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHandle:(id)a3
{
  v5 = OBJC_IVAR___CKChatBotInfoController_handle;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (NSString)fallbackHandle
{
  swift_beginAccess();
  sub_190D52690();
  v2 = sub_190D56ED0();

  return v2;
}

- (void)setFallbackHandle:(id)a3
{
  v4 = sub_190D56F10();
  v6 = v5;
  v7 = (self + OBJC_IVAR___CKChatBotInfoController_fallbackHandle);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (CKChatBotInfoController)initWithHandle:(id)a3 fallbackHandle:(id)a4
{
  v6 = sub_190D56F10();
  *(self + OBJC_IVAR___CKChatBotInfoController_handle) = a3;
  v7 = (self + OBJC_IVAR___CKChatBotInfoController_fallbackHandle);
  *v7 = v6;
  v7[1] = v8;
  v11.receiver = self;
  v11.super_class = type metadata accessor for ChatBotInfoController();
  v9 = a3;
  return [(CKChatBotInfoController *)&v11 initWithNibName:0 bundle:0];
}

- (CKChatBotInfoController)initWithCoder:(id)a3
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1908B47A4();
}

- (CKChatBotInfoController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end