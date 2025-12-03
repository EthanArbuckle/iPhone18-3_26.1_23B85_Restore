@interface FCAMSPushHandler
- (BOOL)shouldHandleNotification:(id)notification;
- (FCAMSPushHandler)init;
- (void)handleNotification:(id)notification;
- (void)handleNotificationResponse:(id)response;
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

- (BOOL)shouldHandleNotification:(id)notification
{
  notificationCopy = notification;
  lazyHandler = [(FCAMSPushHandler *)self lazyHandler];
  value = [lazyHandler value];
  v7 = [value shouldHandleNotification:notificationCopy];

  return v7;
}

- (void)handleNotification:(id)notification
{
  notificationCopy = notification;
  lazyHandler = [(FCAMSPushHandler *)self lazyHandler];
  value = [lazyHandler value];
  [value handleNotification:notificationCopy];
}

- (void)handleNotificationResponse:(id)response
{
  responseCopy = response;
  v3 = MEMORY[0x1E698CBC0];
  v4 = +[FCAMSBag bag];
  v5 = [v3 handleNotificationResponse:responseCopy bag:v4];
}

@end