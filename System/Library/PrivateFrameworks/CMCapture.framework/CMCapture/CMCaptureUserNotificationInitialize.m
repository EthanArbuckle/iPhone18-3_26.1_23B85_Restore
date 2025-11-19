@interface CMCaptureUserNotificationInitialize
+ (void)initialize;
@end

@implementation CMCaptureUserNotificationInitialize

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

@end