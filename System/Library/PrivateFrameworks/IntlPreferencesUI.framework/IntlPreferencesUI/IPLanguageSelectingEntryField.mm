@interface IPLanguageSelectingEntryField
- (id)_additionalTextInputLocales;
- (id)textInputMode;
- (void)setLanguage:(id)a3;
@end

@implementation IPLanguageSelectingEntryField

- (void)setLanguage:(id)a3
{
  v6 = a3;
  if ([v6 isEqualToString:@"no"])
  {
    v4 = @"nb";
  }

  else
  {
    v4 = v6;
  }

  language = self->_language;
  self->_language = &v4->isa;
}

- (id)_additionalTextInputLocales
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEAF8];
  v3 = [(IPLanguageSelectingEntryField *)self language];
  v4 = [v2 localeWithLocaleIdentifier:v3];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)textInputMode
{
  v3 = [MEMORY[0x277D75688] sharedInputModeController];
  v4 = [(IPLanguageSelectingEntryField *)self language];
  v5 = [v3 inputModeLastUsedForLanguage:v4];

  return v5;
}

@end