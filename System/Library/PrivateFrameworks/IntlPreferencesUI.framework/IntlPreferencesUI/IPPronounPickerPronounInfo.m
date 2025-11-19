@interface IPPronounPickerPronounInfo
- (BOOL)hasErrorMessage;
- (BOOL)hasValidValue;
- (BOOL)hasValue;
- (IPPronounPickerPronounInfo)initWithExampleText:(id)a3 examplePlaceholder:(id)a4 morphology:(id)a5 language:(id)a6;
- (UILabel)exampleLabel;
- (UITextField)entryField;
- (id)generateExampleLabelText;
- (void)autofillValue:(id)a3;
@end

@implementation IPPronounPickerPronounInfo

- (IPPronounPickerPronounInfo)initWithExampleText:(id)a3 examplePlaceholder:(id)a4 morphology:(id)a5 language:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = IPPronounPickerPronounInfo;
  v14 = [(IPPronounPickerPronounInfo *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(IPPronounPickerPronounInfo *)v14 setExampleText:v10];
    [(IPPronounPickerPronounInfo *)v15 setExamplePlaceholder:v11];
    [(IPPronounPickerPronounInfo *)v15 setMorphology:v12];
    [(IPPronounPickerPronounInfo *)v15 setLanguage:v13];
  }

  return v15;
}

- (UITextField)entryField
{
  v22[1] = *MEMORY[0x277D85DE8];
  entryField = self->_entryField;
  if (!entryField)
  {
    v4 = [IPLanguageSelectingEntryField alloc];
    v5 = [(IPLanguageSelectingEntryField *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v6 = self->_entryField;
    self->_entryField = v5;

    v7 = [(IPPronounPickerPronounInfo *)self language];
    [(UITextField *)self->_entryField setLanguage:v7];

    v8 = MEMORY[0x277CCA8D8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizations];
    v11 = [(IPPronounPickerPronounInfo *)self language];
    v22[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v13 = [v8 preferredLocalizationsFromArray:v10 forPreferences:v12];
    v14 = [v13 firstObject];

    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"Pronoun" value:0 table:@"PronounPicker" localization:v14];
    [(UITextField *)self->_entryField setPlaceholder:v16];

    v17 = MEMORY[0x277CBEAF8];
    v18 = [(IPPronounPickerPronounInfo *)self language];
    -[UITextField setTextAlignment:](self->_entryField, "setTextAlignment:", 2 * ([v17 characterDirectionForLanguage:v18] == 2));

    [(UITextField *)self->_entryField setClearButtonMode:0];
    [(UITextField *)self->_entryField setAutocapitalizationType:0];
    [(UITextField *)self->_entryField setAutocorrectionType:1];
    [(UITextField *)self->_entryField setSpellCheckingType:1];
    v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UITextField *)self->_entryField setFont:v19];

    [(UITextField *)self->_entryField setAdjustsFontForContentSizeCategory:1];
    entryField = self->_entryField;
  }

  v20 = *MEMORY[0x277D85DE8];

  return entryField;
}

- (UILabel)exampleLabel
{
  exampleLabel = self->_exampleLabel;
  if (!exampleLabel)
  {
    v4 = objc_opt_new();
    v5 = self->_exampleLabel;
    self->_exampleLabel = v4;

    [(UILabel *)self->_exampleLabel setNumberOfLines:0];
    v6 = MEMORY[0x277CBEAF8];
    v7 = [(IPPronounPickerPronounInfo *)self language];
    -[UILabel setTextAlignment:](self->_exampleLabel, "setTextAlignment:", 2 * ([v6 characterDirectionForLanguage:v7] == 2));

    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)self->_exampleLabel setFont:v8];

    [(UILabel *)self->_exampleLabel setAdjustsFontForContentSizeCategory:1];
    v9 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)self->_exampleLabel setTextColor:v9];

    [(UILabel *)self->_exampleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    exampleLabel = self->_exampleLabel;
  }

  return exampleLabel;
}

- (BOOL)hasValue
{
  v3 = [(IPPronounPickerPronounInfo *)self value];
  if (v3)
  {
    v4 = [(IPPronounPickerPronounInfo *)self value];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasErrorMessage
{
  v3 = [(IPPronounPickerPronounInfo *)self validationErrorMessage];
  if (v3)
  {
    v4 = [(IPPronounPickerPronounInfo *)self validationErrorMessage];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasValidValue
{
  v3 = [(IPPronounPickerPronounInfo *)self hasValue];
  if (v3)
  {
    LOBYTE(v3) = ![(IPPronounPickerPronounInfo *)self hasErrorMessage];
  }

  return v3;
}

- (void)autofillValue:(id)a3
{
  v4 = a3;
  [(IPPronounPickerPronounInfo *)self setTextWasEnteredByUser:0];
  [(IPPronounPickerPronounInfo *)self setValue:v4];
  [(IPPronounPickerPronounInfo *)self setValidationErrorMessage:0];
  v5 = [(IPPronounPickerPronounInfo *)self entryField];
  [v5 setText:v4];

  v7 = [(IPPronounPickerPronounInfo *)self generateExampleLabelText];
  v6 = [(IPPronounPickerPronounInfo *)self exampleLabel];
  [v6 setAttributedText:v7];
}

- (id)generateExampleLabelText
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = [(IPPronounPickerPronounInfo *)self validationErrorMessage];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CCA898]);
    v5 = [(IPPronounPickerPronounInfo *)self validationErrorMessage];
    v25 = *MEMORY[0x277D740C0];
    v6 = [MEMORY[0x277D75348] systemRedColor];
    v26[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v8 = [v4 initWithString:v5 attributes:v7];
  }

  else
  {
    v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    v9 = objc_alloc(MEMORY[0x277CCA898]);
    v10 = [(IPPronounPickerPronounInfo *)self exampleText];
    v6 = [v9 initWithString:v10];

    v11 = *MEMORY[0x277D741F0];
    v24[0] = &unk_286774E30;
    v12 = *MEMORY[0x277D740A8];
    v23[0] = v11;
    v23[1] = v12;
    v13 = MEMORY[0x277D74300];
    [v5 pointSize];
    v14 = *MEMORY[0x277D743F8];
    v15 = [v13 systemFontOfSize:? weight:?];
    v24[1] = v15;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

    if ([(IPPronounPickerPronounInfo *)self hasValue])
    {
      [(IPPronounPickerPronounInfo *)self value];
    }

    else
    {
      [(IPPronounPickerPronounInfo *)self examplePlaceholder];
    }
    v16 = ;
    v17 = [(IPPronounPickerPronounInfo *)self exampleText];
    v18 = [v17 hasPrefix:@"%@"];

    if (v18)
    {
      v19 = [v16 localizedCapitalizedString];

      v16 = v19;
    }

    v20 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v16 attributes:v7];
    v8 = [MEMORY[0x277CCA898] localizedAttributedStringWithFormat:v6, v20];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v8;
}

@end