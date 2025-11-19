@interface CSLanguageDetectorOption
- (id)languageDetectorRequestContext;
@end

@implementation CSLanguageDetectorOption

- (id)languageDetectorRequestContext
{
  v3 = objc_alloc_init(MEMORY[0x277D07260]);
  v4 = [(CSLanguageDetectorOption *)self dictationLanguages];
  [v3 setDictationLanguages:v4];

  v5 = [(CSLanguageDetectorOption *)self currentKeyboard];
  [v3 setCurrentDictationLanguage:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[CSLanguageDetectorOption wasLanguageToggled](self, "wasLanguageToggled")}];
  [v3 setWasLanguageToggled:v6];

  v7 = [(CSLanguageDetectorOption *)self multilingualKeyboardLanguages];
  [v3 setMultilingualKeyboardLanguages:v7];

  v8 = [(CSLanguageDetectorOption *)self keyboardConvoLanguagePriors];
  [v3 setKeyboardConvoLanguagePriors:v8];

  v9 = [(CSLanguageDetectorOption *)self keyboardGlobalLanguagePriors];
  [v3 setKeyboardGlobalLanguagePriors:v9];

  v10 = [(CSLanguageDetectorOption *)self previousMessageLanguage];
  [v3 setPreviousMessageLanguage:v10];

  v11 = [(CSLanguageDetectorOption *)self globalLastKeyboardUsed];
  [v3 setGlobalLastKeyboardUsed:v11];

  v12 = [(CSLanguageDetectorOption *)self dictationLanguagePriors];
  [v3 setDictationLanguagePriors:v12];

  v13 = [(CSLanguageDetectorOption *)self conversationalMessages];
  [v3 setRecentMessages:v13];

  return v3;
}

@end