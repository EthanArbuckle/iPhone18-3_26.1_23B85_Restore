@interface CLSNotificationBanner
+ (void)showBannerWithTitle:(id)a3 message:(id)a4 completionHandler:(id)a5;
@end

@implementation CLSNotificationBanner

+ (void)showBannerWithTitle:(id)a3 message:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [CLSNotificationBannerView alloc];
  v13 = objc_msgSend_initWithTitle_message_(v10, v11, v9, v8);

  objc_msgSend_showWithCompletionHandler_(v13, v12, v7);
}

@end