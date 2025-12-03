@interface WDClinicalOnboardingSearchResultCell
- (WDClinicalOnboardingSearchResultCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setAccessibilityIdentifier;
- (void)_updateContentWithSearchResult:(id)result dataProvider:(id)provider searchTerms:(id)terms;
- (void)_updateForContentSizeCategory:(id)category;
- (void)_updateLabelVisibility;
- (void)setSearchResult:(id)result dataProvider:(id)provider searchTerms:(id)terms;
@end

@implementation WDClinicalOnboardingSearchResultCell

- (WDClinicalOnboardingSearchResultCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = WDClinicalOnboardingSearchResultCell;
  v4 = [(WDMedicalRecordBrandLogoCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(WDClinicalOnboardingSearchResultCell *)v4 setAccessoryType:1];
    brandTitleLabel = [(WDMedicalRecordBrandCell *)v5 brandTitleLabel];
    [brandTitleLabel setAccessibilityIdentifier:@"UIA.Health.ClinicalOnboarding.Search.SearchResult.Name"];

    searchTerms = v5->_searchTerms;
    v5->_searchTerms = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (void)setSearchResult:(id)result dataProvider:(id)provider searchTerms:(id)terms
{
  termsCopy = terms;
  providerCopy = provider;
  resultCopy = result;
  [(WDClinicalOnboardingSearchResultCell *)self setSearchResult:resultCopy];
  [(WDClinicalOnboardingSearchResultCell *)self setSearchTerms:termsCopy];
  [(WDClinicalOnboardingSearchResultCell *)self _updateContentWithSearchResult:resultCopy dataProvider:providerCopy searchTerms:termsCopy];

  v11.receiver = self;
  v11.super_class = WDClinicalOnboardingSearchResultCell;
  [(WDMedicalRecordBrandCell *)&v11 setBrandable:resultCopy dataProvider:providerCopy];
}

- (void)_updateLabelVisibility
{
  brandTitleLabel = [(WDMedicalRecordBrandCell *)self brandTitleLabel];
  attributedText = [brandTitleLabel attributedText];
  v5 = [attributedText length] == 0;
  brandTitleLabel2 = [(WDMedicalRecordBrandCell *)self brandTitleLabel];
  [brandTitleLabel2 setHidden:v5];

  brandSubtitleLabel = [(WDMedicalRecordBrandCell *)self brandSubtitleLabel];
  attributedText2 = [brandSubtitleLabel attributedText];
  v9 = [attributedText2 length] == 0;
  brandSubtitleLabel2 = [(WDMedicalRecordBrandCell *)self brandSubtitleLabel];
  [brandSubtitleLabel2 setHidden:v9];

  brandDetailLabel = [(WDMedicalRecordBrandCell *)self brandDetailLabel];
  attributedText3 = [brandDetailLabel attributedText];
  v13 = [attributedText3 length] == 0;
  brandDetailLabel2 = [(WDMedicalRecordBrandCell *)self brandDetailLabel];
  [brandDetailLabel2 setHidden:v13];

  [(WDClinicalOnboardingSearchResultCell *)self setNeedsUpdateConstraints];
}

- (void)_updateContentWithSearchResult:(id)result dataProvider:(id)provider searchTerms:(id)terms
{
  v6 = [(WDClinicalOnboardingSearchResultCell *)self searchResult:result];

  brandTitleLabel = [(WDMedicalRecordBrandCell *)self brandTitleLabel];
  v8 = brandTitleLabel;
  if (v6)
  {
    font = [brandTitleLabel font];
    v10 = [font hk_fontByAddingSymbolicTraits:2];

    v11 = MEMORY[0x1E696AD40];
    v12 = v10;
    searchResult = [(WDClinicalOnboardingSearchResultCell *)self searchResult];
    title = [searchResult title];
    searchTerms = [(WDClinicalOnboardingSearchResultCell *)self searchTerms];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    v19 = [v11 wd_stringWithString:title highlightingStrings:searchTerms baseColor:labelColor baseFont:v12 highlightingBaseColor:secondaryLabelColor highlightColor:labelColor2 highlightFont:v12];

    brandTitleLabel2 = [(WDMedicalRecordBrandCell *)self brandTitleLabel];
    [brandTitleLabel2 setAttributedText:v19];

    searchResult2 = [(WDClinicalOnboardingSearchResultCell *)self searchResult];
    subtitle = [searchResult2 subtitle];

    if (subtitle)
    {
      brandSubtitleLabel = [(WDMedicalRecordBrandCell *)self brandSubtitleLabel];
      font2 = [brandSubtitleLabel font];

      v25 = [font2 hk_fontByAddingSymbolicTraits:2];
      v26 = MEMORY[0x1E696AD40];
      searchResult3 = [(WDClinicalOnboardingSearchResultCell *)self searchResult];
      subtitle2 = [searchResult3 subtitle];
      searchTerms2 = [(WDClinicalOnboardingSearchResultCell *)self searchTerms];
      labelColor3 = [MEMORY[0x1E69DC888] labelColor];
      secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      labelColor4 = [MEMORY[0x1E69DC888] labelColor];
      v32 = [v26 wd_stringWithString:subtitle2 highlightingStrings:searchTerms2 baseColor:labelColor3 baseFont:font2 highlightingBaseColor:secondaryLabelColor2 highlightColor:labelColor4 highlightFont:v25];
      brandSubtitleLabel2 = [(WDMedicalRecordBrandCell *)self brandSubtitleLabel];
      [brandSubtitleLabel2 setAttributedText:v32];
    }

    searchResult4 = [(WDClinicalOnboardingSearchResultCell *)self searchResult];
    location = [searchResult4 location];

    brandDetailLabel = [(WDMedicalRecordBrandCell *)self brandDetailLabel];
    v37 = brandDetailLabel;
    if (location)
    {
      font3 = [brandDetailLabel font];
      v39 = [font3 hk_fontByAddingSymbolicTraits:2];
      v40 = MEMORY[0x1E696AD40];
      searchTerms3 = [(WDClinicalOnboardingSearchResultCell *)self searchTerms];
      secondaryLabelColor3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      secondaryLabelColor4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      labelColor5 = [MEMORY[0x1E69DC888] labelColor];
      v45 = [v40 wd_stringWithString:location highlightingStrings:searchTerms3 baseColor:secondaryLabelColor3 baseFont:font3 highlightingBaseColor:secondaryLabelColor4 highlightColor:labelColor5 highlightFont:v39];
      [v37 setAttributedText:v45];
    }

    [(WDClinicalOnboardingSearchResultCell *)self _updateLabelVisibility];

    [(WDClinicalOnboardingSearchResultCell *)self _setAccessibilityIdentifier];
  }

  else
  {
    [brandTitleLabel setAttributedText:0];

    brandSubtitleLabel3 = [(WDMedicalRecordBrandCell *)self brandSubtitleLabel];
    [brandSubtitleLabel3 setAttributedText:0];

    brandDetailLabel2 = [(WDMedicalRecordBrandCell *)self brandDetailLabel];
    [brandDetailLabel2 setAttributedText:0];

    [(WDClinicalOnboardingSearchResultCell *)self _updateLabelVisibility];
  }
}

- (void)_updateForContentSizeCategory:(id)category
{
  v7.receiver = self;
  v7.super_class = WDClinicalOnboardingSearchResultCell;
  [(WDMedicalRecordBrandCell *)&v7 _updateForContentSizeCategory:category];
  searchResult = [(WDClinicalOnboardingSearchResultCell *)self searchResult];
  dataProvider = [(WDMedicalRecordBrandLogoCell *)self dataProvider];
  searchTerms = [(WDClinicalOnboardingSearchResultCell *)self searchTerms];
  [(WDClinicalOnboardingSearchResultCell *)self _updateContentWithSearchResult:searchResult dataProvider:dataProvider searchTerms:searchTerms];
}

- (void)_setAccessibilityIdentifier
{
  v34[2] = *MEMORY[0x1E69E9840];
  v3 = HKUIJoinStringsForAutomationIdentifier();
  v34[0] = v3;
  brandTitleLabel = [(WDMedicalRecordBrandCell *)self brandTitleLabel];
  text = [brandTitleLabel text];
  v6 = text;
  if (!text)
  {
    text = &stru_1F4D16E38;
  }

  removeSpecialCharactersAndWhiteSpaces = [(__CFString *)text removeSpecialCharactersAndWhiteSpaces];
  v34[1] = removeSpecialCharactersAndWhiteSpaces;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v9 = HKUIJoinStringsForAutomationIdentifier();
  brandTitleLabel2 = [(WDMedicalRecordBrandCell *)self brandTitleLabel];
  [brandTitleLabel2 setAccessibilityIdentifier:v9];

  v33[0] = v3;
  brandSubtitleLabel = [(WDMedicalRecordBrandCell *)self brandSubtitleLabel];
  text2 = [brandSubtitleLabel text];
  v13 = text2;
  if (!text2)
  {
    text2 = &stru_1F4D16E38;
  }

  removeSpecialCharactersAndWhiteSpaces2 = [(__CFString *)text2 removeSpecialCharactersAndWhiteSpaces];
  v33[1] = removeSpecialCharactersAndWhiteSpaces2;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v16 = HKUIJoinStringsForAutomationIdentifier();
  brandSubtitleLabel2 = [(WDMedicalRecordBrandCell *)self brandSubtitleLabel];
  [brandSubtitleLabel2 setAccessibilityIdentifier:v16];

  v32[0] = v3;
  brandDetailLabel = [(WDMedicalRecordBrandCell *)self brandDetailLabel];
  text3 = [brandDetailLabel text];
  v20 = text3;
  if (!text3)
  {
    text3 = &stru_1F4D16E38;
  }

  removeSpecialCharactersAndWhiteSpaces3 = [(__CFString *)text3 removeSpecialCharactersAndWhiteSpaces];
  v32[1] = removeSpecialCharactersAndWhiteSpaces3;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v23 = HKUIJoinStringsForAutomationIdentifier();
  brandDetailLabel2 = [(WDMedicalRecordBrandCell *)self brandDetailLabel];
  [brandDetailLabel2 setAccessibilityIdentifier:v23];

  searchResult = [(WDClinicalOnboardingSearchResultCell *)self searchResult];
  title = [searchResult title];
  v27 = title;
  if (!title)
  {
    title = &stru_1F4D16E38;
  }

  removeSpecialCharactersAndWhiteSpaces4 = [(__CFString *)title removeSpecialCharactersAndWhiteSpaces];
  v31[1] = removeSpecialCharactersAndWhiteSpaces4;
  v31[2] = @"tableCell";
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
  v30 = HKUIJoinStringsForAutomationIdentifier();
  [(WDClinicalOnboardingSearchResultCell *)self setAccessibilityIdentifier:v30];
}

@end