@interface SGRadarSuggestionBase
- (SGRadarSuggestionBase)initWithSourceMessageId:(id)id;
- (SGSuggestionDelegate)suggestionDelegate;
- (id)primaryActionTitle;
- (id)suggestionCategoryLocalizedCountOfItems:(id)items;
- (id)suggestionCategorySubtitleForItems:(id)items;
- (id)suggestionCategoryTitleForItems:(id)items;
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

- (id)suggestionCategoryTitleForItems:(id)items
{
  if ([items count])
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

- (id)suggestionCategorySubtitleForItems:(id)items
{
  itemsCopy = items;
  v4 = [itemsCopy count];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = [itemsCopy objectAtIndexedSubscript:0];
      suggestionTitle = [v5 suggestionTitle];
    }

    else
    {
      suggestionTitle = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%tu radars", v4];
    }
  }

  else
  {
    suggestionTitle = &stru_1F3012140;
  }

  return suggestionTitle;
}

- (id)suggestionCategoryLocalizedCountOfItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count] == 1)
  {
    v4 = @"1 radar";
  }

  else if ([itemsCopy count] < 2)
  {
    v4 = @"No radars";
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%tu radars", objc_msgSend(itemsCopy, "count")];
  }

  return v4;
}

- (int64_t)suggestionActionButtonType
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 6;

  return 4 * v3;
}

- (SGRadarSuggestionBase)initWithSourceMessageId:(id)id
{
  idCopy = id;
  v9.receiver = self;
  v9.super_class = SGRadarSuggestionBase;
  v6 = [(SGRadarSuggestionBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceMessageId, id);
  }

  return v7;
}

@end