@interface FCAMSPushHandler
- (BOOL)shouldHandleNotification:(id)a3;
- (FCAMSPushHandler)init;
- (void)handleNotification:(id)a3;
- (void)handleNotificationResponse:(id)a3;
@end

@implementation FCAMSPushHandler

- (FCAMSPushHandler)init
{
  v6.receiver = self;
  v6.super_class = FCAMSPushHandler;
  v2 = [(FCAMSPushHandler *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69B68D8]) initWithConstructor:&__block_literal_global_88];
    lazyHandler = v2->_lazyHandler;
    v2->_lazyHandler = v3;
  }

  return v2;
}

id __24__FCAMSPushHandler_init__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E698CB00]);
  [v0 setUserNotificationExtensionId:@"extension-marketing"];
  v1 = objc_alloc(MEMORY[0x1E698CB08]);
  v2 = +[FCAMSBag bag];
  v3 = [v1 initWithConfiguration:v0 bag:v2];

  return v3;
}

- (BOOL)shouldHandleNotification:(id)a3
{
  v4 = a3;
  v5 = [(FCAMSPushHandler *)self lazyHandler];
  v6 = [v5 value];
  v7 = [v6 shouldHandleNotification:v4];

  return v7;
}

- (void)handleNotification:(id)a3
{
  v4 = a3;
  v6 = [(FCAMSPushHandler *)self lazyHandler];
  v5 = [v6 value];
  [v5 handleNotification:v4];
}

- (void)handleNotificationResponse:(id)a3
{
  v6 = a3;
  v3 = MEMORY[0x1E698CBC0];
  v4 = +[FCAMSBag bag];
  v5 = [v3 handleNotificationResponse:v6 bag:v4];
}

@end