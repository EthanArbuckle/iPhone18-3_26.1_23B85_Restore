@interface IPLanguageSelectingEntryField
- (id)_additionalTextInputLocales;
- (id)textInputMode;
- (void)setLanguage:(id)language;
@end

@implementation IPLanguageSelectingEntryField

- (void)setLanguage:(id)language
{
  languageCopy = language;
  if ([languageCopy isEqualToString:@"no"])
  {
    v4 = @"nb";
  }

  else
  {
    v4 = languageCopy;
  }

  language = self->_language;
  self->_language = &v4->isa;
}

- (id)_additionalTextInputLocales
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEAF8];
  language = [(IPLanguageSelectingEntryField *)self language];
  v4 = [v2 localeWithLocaleIdentifier:language];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)textInputMode
{
  mEMORY[0x277D75688] = [MEMORY[0x277D75688] sharedInputModeController];
  language = [(IPLanguageSelectingEntryField *)self language];
  v5 = [mEMORY[0x277D75688] inputModeLastUsedForLanguage:language];

  return v5;
}

@end