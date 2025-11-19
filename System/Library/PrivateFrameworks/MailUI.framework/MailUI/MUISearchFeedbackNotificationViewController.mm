@interface MUISearchFeedbackNotificationViewController
+ (OS_os_log)log;
- (MUISearchFeedbackNotificationViewController)initWithTitleText:(id)a3 messageText:(id)a4;
- (MUISearchFeedbackNotificationViewControllerDelegate)delegate;
- (void)_handleThumbsDown:(id)a3;
- (void)_handleThumbsUp:(id)a3;
@end

@implementation MUISearchFeedbackNotificationViewController

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MUISearchFeedbackNotificationViewController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_0 != -1)
  {
    dispatch_once(&log_onceToken_0, block);
  }

  v2 = log_log_0;

  return v2;
}

void __50__MUISearchFeedbackNotificationViewController_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = log_log_0;
  log_log_0 = v2;
}

- (MUISearchFeedbackNotificationViewController)initWithTitleText:(id)a3 messageText:(id)a4
{
  v8.receiver = self;
  v8.super_class = MUISearchFeedbackNotificationViewController;
  v4 = [(MUIFeedbackNotificationViewController *)&v8 initWithTitleText:a3 messageText:a4];
  if (v4)
  {
    v5 = createButton(@"hand.thumbsup", v4, sel__handleThumbsUp_);
    [(MUIFeedbackNotificationViewController *)v4 setLeadingAccessoryView:v5];

    v6 = createButton(@"hand.thumbsdown", v4, sel__handleThumbsDown_);
    [(MUIFeedbackNotificationViewController *)v4 setTrailingAccessoryView:v6];
  }

  return v4;
}

- (void)_handleThumbsUp:(id)a3
{
  v4 = +[MUISearchFeedbackNotificationViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_214A5E000, v4, OS_LOG_TYPE_DEFAULT, "User selected thumbs up button on search feedback notification", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained shouldTriggerTapToRadarForViewController:self shouldTrigger:0];
}

- (void)_handleThumbsDown:(id)a3
{
  v4 = +[MUISearchFeedbackNotificationViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_214A5E000, v4, OS_LOG_TYPE_DEFAULT, "User selected thumbs down button on search feedback notification. Will trigger Tap To Radar.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained shouldTriggerTapToRadarForViewController:self shouldTrigger:1];
}

- (MUISearchFeedbackNotificationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end