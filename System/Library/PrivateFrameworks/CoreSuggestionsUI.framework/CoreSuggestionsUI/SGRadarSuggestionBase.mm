@interface SGRadarSuggestionBase
- (SGRadarSuggestionBase)initWithSourceMessageId:(id)a3;
- (SGSuggestionDelegate)suggestionDelegate;
- (id)primaryActionTitle;
- (id)suggestionCategoryLocalizedCountOfItems:(id)a3;
- (id)suggestionCategorySubtitleForItems:(id)a3;
- (id)suggestionCategoryTitleForItems:(id)a3;
- (int64_t)suggestionActionButtonType;
@end

@implementation SGRadarSuggestionBase

- (SGSuggestionDelegate)suggestionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_suggestionDelegate);

  return WeakRetained;
}

- (id)primaryActionTitle
{
  if (_currentContext)
  {
    return @"File a Radar";
  }

  else
  {
    return @"File";
  }
}

- (id)suggestionCategoryTitleForItems:(id)a3
{
  if ([a3 count])
  {
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
    v4 = [v3 localizedStringForKey:@"SuggestionsBannerMultipleSuggestionsTitleFormat" value:&stru_1F3012140 table:0];
  }

  else
  {
    v4 = &stru_1F3012140;
  }

  return v4;
}

- (id)suggestionCategorySubtitleForItems:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = [v3 objectAtIndexedSubscript:0];
      v6 = [v5 suggestionTitle];
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%tu radars", v4];
    }
  }

  else
  {
    v6 = &stru_1F3012140;
  }

  return v6;
}

- (id)suggestionCategoryLocalizedCountOfItems:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = @"1 radar";
  }

  else if ([v3 count] < 2)
  {
    v4 = @"No radars";
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%tu radars", objc_msgSend(v3, "count")];
  }

  return v4;
}

- (int64_t)suggestionActionButtonType
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 6;

  return 4 * v3;
}

- (SGRadarSuggestionBase)initWithSourceMessageId:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SGRadarSuggestionBase;
  v6 = [(SGRadarSuggestionBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceMessageId, a3);
  }

  return v7;
}

@end