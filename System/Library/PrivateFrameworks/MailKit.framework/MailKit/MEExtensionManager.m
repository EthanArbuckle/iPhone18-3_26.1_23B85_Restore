@interface MEExtensionManager
+ (void)reloadContentBlockerWithIdentifier:(NSString *)identifier completionHandler:(void *)completionHandler;
+ (void)reloadVisibleMessagesWithCompletionHandler:(void *)completionHandler;
@end

@implementation MEExtensionManager

+ (void)reloadContentBlockerWithIdentifier:(NSString *)identifier completionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  notify_post([@"MEContentBlockerMangerReload" UTF8String]);
  v4[2](v4, 0);
}

+ (void)reloadVisibleMessagesWithCompletionHandler:(void *)completionHandler
{
  v3 = completionHandler;
  notify_post([@"MEVisibleMessagesReload" UTF8String]);
  v3[2](v3, 0);
}

@end