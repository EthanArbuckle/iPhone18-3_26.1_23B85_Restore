@interface PKHomeScreenWidgetController
+ (void)reloadWidget:(id)widget budgeted:(BOOL)budgeted reason:(id)reason;
@end

@implementation PKHomeScreenWidgetController

+ (void)reloadWidget:(id)widget budgeted:(BOOL)budgeted reason:(id)reason
{
  budgetedCopy = budgeted;
  v25 = *MEMORY[0x1E69E9840];
  widgetCopy = widget;
  reasonCopy = reason;
  v9 = PKLogFacilityTypeGetObject(0x21uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "false";
    v17 = 136315906;
    v18 = "+[PKHomeScreenWidgetController reloadWidget:budgeted:reason:]";
    v19 = 2112;
    v20 = widgetCopy;
    if (budgetedCopy)
    {
      v10 = "true";
    }

    v21 = 2080;
    v22 = v10;
    v23 = 2112;
    v24 = reasonCopy;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "%s, identifier: %@ budgeted: %s, reason: %@", &v17, 0x2Au);
  }

  v11 = PKIsPad();
  v12 = PKHomeScreenWidgetStubBundleIdentifier;
  if (!v11)
  {
    v12 = PKHomeScreenWidgetBundleIdentifier;
  }

  v13 = *v12;
  v14 = [objc_alloc(getCHSTimelineControllerClass[0]()) initWithExtensionBundleIdentifier:v13 kind:widgetCopy];
  v15 = v14;
  if (budgetedCopy)
  {
    [v14 reloadTimelineBudgetedWithReason:reasonCopy];
  }

  else
  {
    [v14 reloadTimelineWithReason:reasonCopy];
  }
  v16 = ;
  if (v16)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v16;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Chrono failied to reload timeline with error: %@", &v17, 0xCu);
    }
  }
}

@end