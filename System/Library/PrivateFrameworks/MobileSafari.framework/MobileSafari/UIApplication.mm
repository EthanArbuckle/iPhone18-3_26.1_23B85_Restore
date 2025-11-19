@interface UIApplication
@end

@implementation UIApplication

void __78__UIApplication_MobileSafariFrameworkExtras__safari_currentKeyboardInputIsRTL__block_invoke(uint64_t a1)
{
  safari_currentKeyboardInputIsRTL_safariAppIsRTL = [*(a1 + 32) safari_prefersRTLLayout];
  v2 = *(a1 + 40);
  v3 = *MEMORY[0x1E69DE6B8];
  v4 = [MEMORY[0x1E696ADC8] mainQueue];
  v5 = [v2 addObserverForName:v3 object:0 queue:v4 usingBlock:&__block_literal_global_31];

  v6 = *(a1 + 40);
  v8 = [MEMORY[0x1E696ADC8] mainQueue];
  v7 = [v6 addObserverForName:@"SFBrowserViewDidLoadNotification" object:0 queue:v8 usingBlock:&__block_literal_global_7_2];
}

uint64_t __78__UIApplication_MobileSafariFrameworkExtras__safari_currentKeyboardInputIsRTL__block_invoke_4(uint64_t result)
{
  if ((safari_currentKeyboardInputIsRTL_hasValidCache & 1) == 0)
  {
    v1 = result;
    v2 = MEMORY[0x1E695DF58];
    v3 = [*(result + 32) textInputMode];
    v4 = [v3 primaryLanguage];
    safari_currentKeyboardInputIsRTL_currentKeyboardUsesRTL = [v2 characterDirectionForLanguage:v4] == 2;

    safari_currentKeyboardInputIsRTL_hasValidCache = 1;
    safari_currentKeyboardInputIsRTL_useSafariAppDirectionality = 1;
    v5 = *(v1 + 40);

    return [v5 postNotificationName:@"SFDidGetTextInputModeDirectionality" object:0];
  }

  return result;
}

@end