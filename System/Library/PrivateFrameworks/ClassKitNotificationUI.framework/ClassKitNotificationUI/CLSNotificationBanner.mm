@interface CLSNotificationBanner
+ (void)showBannerWithTitle:(id)title message:(id)message completionHandler:(id)handler;
@end

@implementation CLSNotificationBanner

+ (void)showBannerWithTitle:(id)title message:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  titleCopy = title;
  v10 = [CLSNotificationBannerView alloc];
  v13 = objc_msgSend_initWithTitle_message_(v10, v11, titleCopy, messageCopy);

  objc_msgSend_showWithCompletionHandler_(v13, v12, handlerCopy);
}

@end