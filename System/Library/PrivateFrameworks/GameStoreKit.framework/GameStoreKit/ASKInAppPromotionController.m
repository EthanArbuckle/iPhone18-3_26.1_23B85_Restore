@interface ASKInAppPromotionController
+ (void)fetchOverridesForVisibilityAndOrderForApplicationBundleIdentifier:(id)a3 completionHandler:(id)a4;
@end

@implementation ASKInAppPromotionController

+ (void)fetchOverridesForVisibilityAndOrderForApplicationBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CDD358];
  v7 = a3;
  v8 = [v6 defaultController];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __115__ASKInAppPromotionController_fetchOverridesForVisibilityAndOrderForApplicationBundleIdentifier_completionHandler___block_invoke;
  v10[3] = &unk_27968B7F0;
  v11 = v5;
  v9 = v5;
  [v8 fetchOverridesForVisibilityAndOrderForApplicationBundleIdentifier:v7 completionHandler:v10];
}

@end