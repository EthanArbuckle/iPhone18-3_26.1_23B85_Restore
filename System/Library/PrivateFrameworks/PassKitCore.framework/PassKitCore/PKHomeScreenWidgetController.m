@interface PKHomeScreenWidgetController
+ (void)reloadWidget:(id)a3 budgeted:(BOOL)a4 reason:(id)a5;
@end

@implementation PKHomeScreenWidgetController

+ (void)reloadWidget:(id)a3 budgeted:(BOOL)a4 reason:(id)a5
{
  v6 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = PKLogFacilityTypeGetObject(0x21uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "false";
    v17 = 136315906;
    v18 = "+[PKHomeScreenWidgetController reloadWidget:budgeted:reason:]";
    v19 = 2112;
    v20 = v7;
    if (v6)
    {
      v10 = "true";
    }

    v21 = 2080;
    v22 = v10;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "%s, identifier: %@ budgeted: %s, reason: %@", &v17, 0x2Au);
  }

  v11 = PKIsPad();
  v12 = PKHomeScreenWidgetStubBundleIdentifier;
  if (!v11)
  {
    v12 = PKHomeScreenWidgetBundleIdentifier;
  }

  v13 = *v12;
  v14 = [objc_alloc(getCHSTimelineControllerClass[0]()) initWithExtensionBundleIdentifier:v13 kind:v7];
  v15 = v14;
  if (v6)
  {
    [v14 reloadTimelineBudgetedWithReason:v8];
  }

  else
  {
    [v14 reloadTimelineWithReason:v8];
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