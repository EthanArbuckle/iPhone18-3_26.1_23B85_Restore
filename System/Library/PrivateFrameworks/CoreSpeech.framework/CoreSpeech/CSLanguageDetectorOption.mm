@interface CSLanguageDetectorOption
- (id)languageDetectorRequestContext;
@end

@implementation CSLanguageDetectorOption

- (id)languageDetectorRequestContext
{
  v3 = objc_alloc_init(MEMORY[0x277D07260]);
  dictationLanguages = [(CSLanguageDetectorOption *)self dictationLanguages];
  [v3 setDictationLanguages:dictationLanguages];

  currentKeyboard = [(CSLanguageDetectorOption *)self currentKeyboard];
  [v3 setCurrentDictationLanguage:currentKeyboard];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[CSLanguageDetectorOption wasLanguageToggled](self, "wasLanguageToggled")}];
  [v3 setWasLanguageToggled:v6];

  multilingualKeyboardLanguages = [(CSLanguageDetectorOption *)self multilingualKeyboardLanguages];
  [v3 setMultilingualKeyboardLanguages:multilingualKeyboardLanguages];

  keyboardConvoLanguagePriors = [(CSLanguageDetectorOption *)self keyboardConvoLanguagePriors];
  [v3 setKeyboardConvoLanguagePriors:keyboardConvoLanguagePriors];

  keyboardGlobalLanguagePriors = [(CSLanguageDetectorOption *)self keyboardGlobalLanguagePriors];
  [v3 setKeyboardGlobalLanguagePriors:keyboardGlobalLanguagePriors];

  previousMessageLanguage = [(CSLanguageDetectorOption *)self previousMessageLanguage];
  [v3 setPreviousMessageLanguage:previousMessageLanguage];

  globalLastKeyboardUsed = [(CSLanguageDetectorOption *)self globalLastKeyboardUsed];
  [v3 setGlobalLastKeyboardUsed:globalLastKeyboardUsed];

  dictationLanguagePriors = [(CSLanguageDetectorOption *)self dictationLanguagePriors];
  [v3 setDictationLanguagePriors:dictationLanguagePriors];

  conversationalMessages = [(CSLanguageDetectorOption *)self conversationalMessages];
  [v3 setRecentMessages:conversationalMessages];

  return v3;
}

@end