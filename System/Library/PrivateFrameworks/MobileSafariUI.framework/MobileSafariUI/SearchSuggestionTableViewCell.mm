@interface SearchSuggestionTableViewCell
+ (id)_matchedTextAttributes;
+ (id)_suggestedTextAttributes;
- (BOOL)hidesImage;
- (SearchSuggestionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_accessoryButtonTapped:(id)a3;
- (void)layoutSubviews;
- (void)preferredContentSizeCategoryDidChange;
- (void)prepareForReuse;
- (void)setHidesCompletionArrowView:(BOOL)a3;
- (void)setHidesHistoryLastAccessedLabel:(BOOL)a3;
- (void)setHidesImage:(BOOL)a3;
- (void)setHistoryLastAccessedLabel:(id)a3;
- (void)setSearchSuggestion:(id)a3 withQuery:(id)a4;
@end

@implementation SearchSuggestionTableViewCell

+ (id)_matchedTextAttributes
{
  v7[3] = *MEMORY[0x277D85DE8];
  if (_matchedTextAttributes_onceToken != -1)
  {
    +[SearchSuggestionTableViewCell _matchedTextAttributes];
  }

  v2 = *MEMORY[0x277D740C0];
  v6[0] = *MEMORY[0x277D74118];
  v6[1] = v2;
  v7[0] = _matchedTextAttributes_paragraphStyle;
  v7[1] = _matchedTextAttributes_color;
  v6[2] = *MEMORY[0x277D740A8];
  v3 = [_matchedTextAttributes_font _fontAdjustedForCurrentContentSizeCategory];
  v7[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

void __55__SearchSuggestionTableViewCell__matchedTextAttributes__block_invoke()
{
  v0 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v1 = [v0 mutableCopy];
  v2 = _matchedTextAttributes_paragraphStyle;
  _matchedTextAttributes_paragraphStyle = v1;

  [_matchedTextAttributes_paragraphStyle setLineBreakMode:4];
  v3 = MEMORY[0x277D75348];
  v4 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v5 = [v4 safari_numberForKey:*MEMORY[0x277D29060]];
  v6 = [v3 safari_labelColorFromNumber:v5];
  v7 = _matchedTextAttributes_color;
  _matchedTextAttributes_color = v6;

  v8 = MEMORY[0x277D74300];
  v9 = *MEMORY[0x277D76918];
  v14 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v10 = [v14 safari_numberForKey:*MEMORY[0x277D29068]];
  [v10 floatValue];
  v12 = [v8 _preferredFontForTextStyle:v9 weight:v11];
  v13 = _matchedTextAttributes_font;
  _matchedTextAttributes_font = v12;
}

+ (id)_suggestedTextAttributes
{
  v7[2] = *MEMORY[0x277D85DE8];
  if (_suggestedTextAttributes_onceToken != -1)
  {
    +[SearchSuggestionTableViewCell _suggestedTextAttributes];
  }

  v2 = *MEMORY[0x277D740A8];
  v6[0] = *MEMORY[0x277D740C0];
  v6[1] = v2;
  v7[0] = _suggestedTextAttributes_color;
  v3 = [_suggestedTextAttributes_font _fontAdjustedForCurrentContentSizeCategory];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

void __57__SearchSuggestionTableViewCell__suggestedTextAttributes__block_invoke()
{
  v0 = MEMORY[0x277D75348];
  v1 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v2 = [v1 safari_numberForKey:*MEMORY[0x277D29110]];
  v3 = [v0 safari_labelColorFromNumber:v2];
  v4 = _suggestedTextAttributes_color;
  _suggestedTextAttributes_color = v3;

  v5 = MEMORY[0x277D74300];
  v6 = *MEMORY[0x277D76918];
  v11 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v7 = [v11 safari_numberForKey:*MEMORY[0x277D29118]];
  [v7 floatValue];
  v9 = [v5 _preferredFontForTextStyle:v6 weight:v8];
  v10 = _suggestedTextAttributes_font;
  _suggestedTextAttributes_font = v9;
}

- (SearchSuggestionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = SearchSuggestionTableViewCell;
  v4 = [(SearchSuggestionTableViewCell *)&v17 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"magnifyingglass"];
    v6 = [(SearchSuggestionTableViewCell *)v4 imageView];
    [v6 setImage:v5];

    v7 = [MEMORY[0x277D75348] labelColor];
    v8 = [(SearchSuggestionTableViewCell *)v4 imageView];
    [v8 setTintColor:v7];

    v9 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:2];
    v10 = [(SearchSuggestionTableViewCell *)v4 imageView];
    [v10 setPreferredSymbolConfiguration:v9];

    v11 = objc_alloc_init(CompletionArrowView);
    completionArrowView = v4->_completionArrowView;
    v4->_completionArrowView = v11;

    [(CompletionArrowView *)v4->_completionArrowView setParentCell:v4];
    [(CompletionArrowView *)v4->_completionArrowView addTarget:v4 action:sel__accessoryButtonTapped_ forControlEvents:0x2000];
    if ([MEMORY[0x277D49A08] isLabelPreviousSearchesInCompletionListEnabled])
    {
      [(SearchSuggestionTableViewCell *)v4 setHidesHistoryLastAccessedLabel:1];
    }

    [(SearchSuggestionTableViewCell *)v4 setHidesCompletionArrowView:1];
    v18[0] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v14 = [(SearchSuggestionTableViewCell *)v4 registerForTraitChanges:v13 withTarget:v4 action:sel_preferredContentSizeCategoryDidChange];

    v15 = v4;
  }

  return v4;
}

- (BOOL)hidesImage
{
  v2 = [(SearchSuggestionTableViewCell *)self imageView];
  v3 = [v2 image];
  v4 = v3 == 0;

  return v4;
}

- (void)setHidesImage:(BOOL)a3
{
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"magnifyingglass"];
  }

  v6 = [(SearchSuggestionTableViewCell *)self imageView];
  [v6 setImage:v5];

  if (!a3)
  {
  }

  [(SearchSuggestionTableViewCell *)self setNeedsDisplay];

  [(SearchSuggestionTableViewCell *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SearchSuggestionTableViewCell;
  [(SearchSuggestionTableViewCell *)&v3 prepareForReuse];
  [(SearchSuggestionTableViewCell *)self setHidesCompletionArrowView:1];
  if ([(SearchSuggestionTableViewCell *)self _isLabelPreviousSearchesInCompletionListEnabled])
  {
    [(SearchSuggestionTableViewCell *)self setHidesHistoryLastAccessedLabel:1];
  }
}

- (void)setHidesCompletionArrowView:(BOOL)a3
{
  if (self->_hidesCompletionArrowView != a3)
  {
    self->_hidesCompletionArrowView = a3;
    if (a3)
    {
      completionArrowView = 0;
    }

    else
    {
      [(CompletionArrowView *)self->_completionArrowView sizeToFit];
      completionArrowView = self->_completionArrowView;
    }

    [(SearchSuggestionTableViewCell *)self setAccessoryView:completionArrowView];
  }
}

- (void)setHidesHistoryLastAccessedLabel:(BOOL)a3
{
  if (self->_hidesHistoryLastAccessedLabel != a3)
  {
    self->_hidesHistoryLastAccessedLabel = a3;
    v5 = [(SearchSuggestionTableViewCell *)self detailTextLabel];
    v6 = v5;
    if (a3)
    {
      [v5 setText:0];
    }

    else
    {
      [v5 sizeToFit];
    }
  }
}

- (void)setHistoryLastAccessedLabel:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAB48];
  v5 = a3;
  v6 = [v4 alloc];
  v13[0] = *MEMORY[0x277D740C0];
  v7 = [MEMORY[0x277D75348] secondaryLabelColor];
  v14[0] = v7;
  v13[1] = *MEMORY[0x277D740A8];
  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  v9 = [v8 _fontAdjustedForCurrentContentSizeCategory];
  v14[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v11 = [v6 initWithString:v5 attributes:v10];

  v12 = [(SearchSuggestionTableViewCell *)self detailTextLabel];
  [v12 setAttributedText:v11];
}

- (void)setSearchSuggestion:(id)a3 withQuery:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CCAB48]);
  v9 = +[SearchSuggestionTableViewCell _matchedTextAttributes];
  v10 = [v8 initWithString:v6 attributes:v9];

  if ([v10 length])
  {
    v27 = self;
    v11 = +[SearchSuggestionTableViewCell _suggestedTextAttributes];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = [v10 string];
    v13 = [v7 rangesToHighlightInSearchSuggestion:v12];

    v14 = [v13 countByEnumeratingWithState:&v28 objects:v42 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v28 + 1) + 8 * i) rangeValue];
          v20 = v19;
          if (v19 + v18 > [v10 length])
          {
            v21 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v24 = v21;
              v25 = [v10 length];
              v26 = [v6 length];
              *buf = 134219011;
              v33 = v18;
              v34 = 2048;
              v35 = v20;
              v36 = 2117;
              v37 = v10;
              v38 = 2048;
              v39 = v25;
              v40 = 2048;
              v41 = v26;
              _os_log_error_impl(&dword_215819000, v24, OS_LOG_TYPE_ERROR, "Invalid range(loc=%lu, len=%lu) for attributedString %{sensitive}@ with length=%lu generated from suggestion with length=%lu", buf, 0x34u);
            }

            goto LABEL_13;
          }

          [v10 addAttributes:v11 range:{v18, v20}];
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v42 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v22 = [(SearchSuggestionTableViewCell *)v27 textLabel];
    [v22 setAttributedText:v10];
  }

  else
  {
    v23 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SearchSuggestionTableViewCell setSearchSuggestion:v23 withQuery:?];
    }
  }
}

- (void)preferredContentSizeCategoryDidChange
{
  if (!self->_hidesCompletionArrowView)
  {
    [(SearchSuggestionTableViewCell *)self setHidesCompletionArrowView:1];

    [(SearchSuggestionTableViewCell *)self setHidesCompletionArrowView:0];
  }
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = SearchSuggestionTableViewCell;
  [(CompletionListTableViewCell *)&v15 layoutSubviews];
  if (([(SearchSuggestionTableViewCell *)self _sf_usesLeftToRightLayout]& 1) == 0)
  {
    v3 = [(SearchSuggestionTableViewCell *)self textLabel];
    [v3 frame];
    v4 = [(SearchSuggestionTableViewCell *)self layoutManager];
    [(SearchSuggestionTableViewCell *)self frame];
    [v4 textRectForCell:self rowWidth:0 forSizing:v5];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v16.origin.x = v7;
    v16.origin.y = v9;
    v16.size.width = v11;
    v16.size.height = v13;
    CGRectGetWidth(v16);
    _SFRoundRectToPixels();
    [v3 setFrame:?];
    v14 = [(SearchSuggestionTableViewCell *)self detailTextLabel];
    [v14 frame];
    v17.origin.x = v7;
    v17.origin.y = v9;
    v17.size.width = v11;
    v17.size.height = v13;
    CGRectGetWidth(v17);
    _SFRoundRectToPixels();
    [v14 setFrame:?];
  }
}

- (void)_accessoryButtonTapped:(id)a3
{
  accessoryActionHandler = self->_accessoryActionHandler;
  if (accessoryActionHandler)
  {
    accessoryActionHandler[2]();
  }
}

@end