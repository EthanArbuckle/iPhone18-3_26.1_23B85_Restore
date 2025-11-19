@interface UIDevice
@end

@implementation UIDevice

void __38__UIDevice_IC__ic_isLiveTextAvailable__block_invoke()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"AppleLiveTextEnabled" inDomain:*MEMORY[0x1E696A400]];

  if (v1)
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v3 = MEMORY[0x1E695DF58];
    v4 = [MEMORY[0x1E695DF58] _deviceLanguage];
    v7[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    v6 = [v3 matchedLanguagesFromAvailableLanguages:&unk_1F4FC3A98 forPreferredLanguages:v5];

    v2 = [v6 count] != 0;
  }

  ic_isLiveTextAvailable_isIPLiveTextEnabled = v2;
}

@end