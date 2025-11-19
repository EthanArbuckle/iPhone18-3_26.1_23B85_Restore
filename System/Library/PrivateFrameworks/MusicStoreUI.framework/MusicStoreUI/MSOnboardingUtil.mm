@interface MSOnboardingUtil
+ (BOOL)shouldShowOnboarding;
+ (id)viewControllerForMediaType:(int64_t)a3 completion:(id)a4;
+ (void)markAsShown;
+ (void)presentIfNeededFromViewController:(id)a3 mediaTypes:(int64_t)a4 completion:(id)a5;
@end

@implementation MSOnboardingUtil

+ (void)markAsShown
{
  CFPreferencesSetAppValue(@"MSOnboardingVersionKey", [MEMORY[0x277CCABB0] numberWithInteger:kMSCurrentOnboardingVersion], @"com.apple.MobileStore");
  CFPreferencesAppSynchronize(@"com.apple.MobileStore");
  v6 = 0;
  v2 = [objc_msgSend(MEMORY[0x277D69C88] URLBagForContext:{objc_msgSend(MEMORY[0x277D69C90], "contextWithBagType:", 0)), "valueForKey:error:", @"privacyAcknowledgementUrl", &v6}];
  v3 = MEMORY[0x277CBEBC0];
  if ([(__CFString *)v2 length])
  {
    v4 = v2;
  }

  else
  {
    v4 = @"https://buy.itunes.apple.com/WebObjects/MZFinance.woa/wa/acknowledgePrivacy";
  }

  v5 = [v3 URLWithString:v4];
  [MEMORY[0x277D69BF8] acknowledgePrivacyLinkWithIdentifier:*MEMORY[0x277D6A500] URL:v5];
}

+ (void)presentIfNeededFromViewController:(id)a3 mediaTypes:(int64_t)a4 completion:(id)a5
{
  if ([a1 shouldShowOnboarding])
  {
    [a3 presentedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [a3 presentedViewController];
    }

    else
    {
      v9 = 0;
    }

    if (![objc_msgSend(v9 "viewControllers")])
    {
      [a3 presentedViewController];
    }

    getAMPOnboardingViewControllerClass();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __76__MSOnboardingUtil_presentIfNeededFromViewController_mediaTypes_completion___block_invoke;
      v14[3] = &unk_279926C58;
      v14[4] = a5;
      v13 = [a1 viewControllerForMediaType:a4 completion:v14];
      [v13 setModalPresentationStyle:2];
      [a3 presentViewController:v13 animated:1 completion:0];
      return;
    }

    v10 = *(a5 + 2);
    v11 = a5;
    v12 = 0;
  }

  else
  {
    v10 = *(a5 + 2);
    v11 = a5;
    v12 = 1;
  }

  v10(v11, v12);
}

uint64_t __76__MSOnboardingUtil_presentIfNeededFromViewController_mediaTypes_completion___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __76__MSOnboardingUtil_presentIfNeededFromViewController_mediaTypes_completion___block_invoke_2;
  v3[3] = &unk_279926C30;
  v3[4] = *(a1 + 32);
  return [a2 dismissViewControllerAnimated:1 completion:v3];
}

uint64_t __76__MSOnboardingUtil_presentIfNeededFromViewController_mediaTypes_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

+ (BOOL)shouldShowOnboarding
{
  if (CFPreferencesGetAppIntegerValue(@"MSOnboardingVersionKey", @"com.apple.MobileStore", 0) != kMSCurrentOnboardingVersion)
  {
    return 1;
  }

  v2 = MEMORY[0x277D69BF8];
  v3 = *MEMORY[0x277D6A500];

  return [v2 shouldDisplayPrivacyLinkWithIdentifier:v3];
}

+ (id)viewControllerForMediaType:(int64_t)a3 completion:(id)a4
{
  v31[3] = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277D37670] linkWithBundleIdentifier:@"com.apple.onboarding.itunesstore"];
  if (a3 == 2)
  {
    v21 = objc_alloc(getAMPOnboardingViewControllerClass());
    v22 = [a1 iTunesStoreAppIcon];
    v23 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"ONBOARDING_TITLE", &stru_286C31D20, 0}];
    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = @"ONBOARDING_DESCRIPTION_MUSIC";
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v21 = objc_alloc(getAMPOnboardingViewControllerClass());
    v22 = [a1 iTunesStoreAppIcon];
    v23 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"ONBOARDING_TITLE", &stru_286C31D20, 0}];
    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = @"ONBOARDING_DESCRIPTION_MUSIC_AND_MOVIES";
LABEL_7:
    v26 = [v24 localizedStringForKey:v25 value:&stru_286C31D20 table:0];
    v20 = [v21 initWithHeaderImage:v22 titleText:v23 descriptionText:v26 primaryButtonText:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] privacyLinkController:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"ONBOARDING_CONTINUE", &stru_286C31D20, 0), v7}];
    goto LABEL_8;
  }

  if (a3)
  {
    v27 = 0;
    goto LABEL_10;
  }

  v8 = objc_alloc(getAMPOnboardingFeatureClass());
  v29 = v7;
  v9 = [MEMORY[0x277D755B8] imageNamed:@"WelcomeMusic" inBundle:objc_msgSend(MEMORY[0x277CCA8D8] compatibleWithTraitCollection:{"bundleForClass:", objc_opt_class()), 0}];
  v10 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"ONBOARDING_FEATURE_TITLE_MUSIC", &stru_286C31D20, 0}];
  v31[0] = [v8 initWithImage:v9 titleText:v10 descriptionText:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"ONBOARDING_FEATURE_DESCRIPTION_MUSIC", &stru_286C31D20, 0)}];
  v11 = objc_alloc(getAMPOnboardingFeatureClass());
  v12 = [MEMORY[0x277D755B8] imageNamed:@"WelcomeMovies" inBundle:objc_msgSend(MEMORY[0x277CCA8D8] compatibleWithTraitCollection:{"bundleForClass:", objc_opt_class()), 0}];
  v13 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"ONBOARDING_FEATURE_TITLE_MOVIES", &stru_286C31D20, 0}];
  v31[1] = [v11 initWithImage:v12 titleText:v13 descriptionText:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"ONBOARDING_FEATURE_DESCRIPTION_MOVIES", &stru_286C31D20, 0)}];
  v14 = objc_alloc(getAMPOnboardingFeatureClass());
  v15 = [MEMORY[0x277D755B8] imageNamed:@"WelcomeTV" inBundle:objc_msgSend(MEMORY[0x277CCA8D8] compatibleWithTraitCollection:{"bundleForClass:", objc_opt_class()), 0}];
  v16 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"ONBOARDING_FEATURE_TITLE_TV", &stru_286C31D20, 0}];
  v31[2] = [v14 initWithImage:v15 titleText:v16 descriptionText:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"ONBOARDING_FEATURE_DESCRIPTION_TV", &stru_286C31D20, 0)}];
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
  v18 = objc_alloc(getAMPOnboardingViewControllerClass());
  v19 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"ONBOARDING_TITLE", &stru_286C31D20, 0}];
  v20 = [v18 initWithTitleText:v19 features:v17 primaryButtonText:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] privacyLinkController:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"ONBOARDING_CONTINUE", &stru_286C31D20, 0), v7}];
LABEL_8:
  v27 = v20;
LABEL_10:
  [objc_msgSend(v27 "view")];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __58__MSOnboardingUtil_viewControllerForMediaType_completion___block_invoke;
  v30[3] = &unk_279926C80;
  v30[4] = a4;
  [v27 setPrimaryButtonCallback:v30];
  return v27;
}

uint64_t __58__MSOnboardingUtil_viewControllerForMediaType_completion___block_invoke(uint64_t a1)
{
  +[MSOnboardingUtil markAsShown];
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

@end