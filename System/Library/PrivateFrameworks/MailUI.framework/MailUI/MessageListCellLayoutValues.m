@interface MessageListCellLayoutValues
- (BOOL)isAvatarHidden;
- (BOOL)useSelectedColorForConfigurationState:(id)a3 backgroundConfiguration:(id)a4;
- (NSDirectionalEdgeInsets)padding;
- (NSDirectionalEdgeInsets)systemLayoutMargins;
- (UIBackgroundConfiguration)defaultBackgroundConfiguration;
- (UIFont)dateFont;
- (UIFont)summaryFont;
- (UIFont)summarySymbolFont;
- (double)addressAndSubjectHeight;
- (double)addressCapHeight;
- (double)backgroundCornerRadius;
- (double)bodyLeading;
- (double)bottomLeadingSeparatorInsetShowingAvatar:(BOOL)a3;
- (double)bottomMargin;
- (double)bottomPadding;
- (double)heightWithNumberOfSummaryLines:(int64_t)a3 isAvatarHidden:(BOOL)a4;
- (double)indicatorMaxWidth;
- (double)indicatorToTrailingMargin;
- (double)leadingPadding;
- (double)leadingToIndicatorMargin;
- (double)standardAvatarSize;
- (double)subjectHeight;
- (double)topLeadingSeparatorInset;
- (double)topMargin;
- (double)trailingPadding;
- (id)_init;
- (id)absentDataColorForConfigurationState:(id)a3 contentConfiguration:(id)a4 backgroundConfiguration:(id)a5;
- (id)addressColorForContentConfiguration:(id)a3;
- (id)annotationColorForConfigurationState:(id)a3 contentConfiguration:(id)a4 backgroundConfiguration:(id)a5;
- (id)backgroundColorForConfigurationState:(id)a3 backgroundConfiguration:(id)a4;
- (id)dateColorForConfigurationState:(id)a3 contentConfiguration:(id)a4 backgroundConfiguration:(id)a5;
- (id)recipientColorForConfigurationState:(id)a3 contentConfiguration:(id)a4 backgroundConfiguration:(id)a5;
- (id)subjectColorForContentConfiguration:(id)a3;
- (id)summaryColorForConfigurationState:(id)a3 contentConfiguration:(id)a4 backgroundConfiguration:(id)a5;
- (id)summarySymbolColorForConfigurationState:(id)a3 contentConfiguration:(id)a4 backgroundConfiguration:(id)a5;
- (id)threadDisclosureColorForConfigurationState:(id)a3 contentConfiguration:(id)a4 backgroundConfiguration:(id)a5;
- (int64_t)actualLineCountForSummary:(id)a3 hasGeneratedSummary:(BOOL)a4 bounds:(CGRect)a5;
- (void)_invalidateAndNotify:(BOOL)a3;
- (void)setSystemLayoutMargins:(NSDirectionalEdgeInsets)a3;
- (void)setTraitCollection:(id)a3;
@end

@implementation MessageListCellLayoutValues

- (id)_init
{
  v14.receiver = self;
  v14.super_class = MessageListCellLayoutValues;
  v2 = [(MessageListCellLayoutValues *)&v14 init];
  v3 = v2;
  if (v2)
  {
    [(MessageListCellLayoutValues *)v2 _invalidateAndNotify:0];
    v4 = [MEMORY[0x277CBEBD0] em_userDefaults];
    v5 = *MEMORY[0x277D06C88];
    v3->_isAvatarHidden = [v4 BOOLForKey:*MEMORY[0x277D06C88]];
    objc_initWeak(&location, v3);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__MessageListCellLayoutValues__init__block_invoke;
    v10[3] = &unk_278188C80;
    objc_copyWeak(&v12, &location);
    v6 = v4;
    v11 = v6;
    v7 = [v6 ef_observeKeyPath:v5 options:1 autoCancelToken:1 usingBlock:v10];
    isAvatarHiddenToken = v3->_isAvatarHiddenToken;
    v3->_isAvatarHiddenToken = v7;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (double)leadingPadding
{
  leadingPadding = self->_leadingPadding;
  if (leadingPadding == 2.22507386e-308)
  {
    leadingPadding = 16.0;
    if ((MUISolariumFeatureEnabled() & 1) == 0)
    {
      [(MessageListCellLayoutValues *)self leadingToIndicatorMargin];
      v5 = v4;
      [(MessageListCellLayoutValues *)self indicatorMaxWidth];
      leadingPadding = v6 + v5 * 2.0;
    }

    self->_leadingPadding = leadingPadding;
  }

  return leadingPadding;
}

- (double)indicatorMaxWidth
{
  result = self->_indicatorMaxWidth;
  if (result == 2.22507386e-308)
  {
    v4 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

    result = 30.0;
    if (!IsAccessibilityCategory)
    {
      v6 = MUISolariumFeatureEnabled();
      result = 16.0;
      if (v6)
      {
        result = 10.0;
      }
    }

    self->_indicatorMaxWidth = result;
  }

  return result;
}

- (double)standardAvatarSize
{
  if (MUISolariumFeatureEnabled())
  {
    return 44.0;
  }

  v4 = [(MessageListCellLayoutValues *)self addressFont];
  [v4 lineHeight];
  v6 = v5;
  v7 = [(MessageListCellLayoutValues *)self subjectFont];
  [v7 lineHeight];
  v3 = v6 + v8;

  return v3;
}

- (double)trailingPadding
{
  result = self->_trailingPadding;
  if (result == 2.22507386e-308)
  {
    [(MessageListCellLayoutValues *)self indicatorToTrailingMargin];
    self->_trailingPadding = result;
  }

  return result;
}

- (double)indicatorToTrailingMargin
{
  indicatorToTrailingMargin = self->_indicatorToTrailingMargin;
  if (indicatorToTrailingMargin == 2.22507386e-308)
  {
    indicatorToTrailingMargin = 16.0;
    if ((MUISolariumFeatureEnabled() & 1) == 0)
    {
      if (self->_useSidebarAppearance)
      {
        v4 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
        IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

        if (IsAccessibilityCategory)
        {
          indicatorToTrailingMargin = 4.0;
        }

        else
        {
          indicatorToTrailingMargin = 8.0;
        }
      }

      else
      {
        indicatorToTrailingMargin = self->_systemLayoutMargins.trailing;
      }
    }

    self->_indicatorToTrailingMargin = indicatorToTrailingMargin;
  }

  return indicatorToTrailingMargin;
}

- (NSDirectionalEdgeInsets)padding
{
  [(MessageListCellLayoutValues *)self topPadding];
  v4 = v3;
  [(MessageListCellLayoutValues *)self leadingPadding];
  v6 = v5;
  [(MessageListCellLayoutValues *)self bottomPadding];
  v8 = v7;
  [(MessageListCellLayoutValues *)self trailingPadding];
  v10 = v9;
  v11 = v4;
  v12 = v6;
  v13 = v8;
  result.trailing = v10;
  result.bottom = v13;
  result.leading = v12;
  result.top = v11;
  return result;
}

- (UIFont)summaryFont
{
  summaryFont = self->_summaryFont;
  if (!summaryFont)
  {
    v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    v5 = self->_summaryFont;
    self->_summaryFont = v4;

    summaryFont = self->_summaryFont;
  }

  return summaryFont;
}

- (double)bottomPadding
{
  if (self->_bottomPadding == 2.22507386e-308)
  {
    if (MUISolariumFeatureEnabled())
    {
      self->_bottomPadding = 12.0;
    }

    else
    {
      v3 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
      UIContentSizeCategoryIsAccessibilityCategory(v3);

      v4 = [(MessageListCellLayoutValues *)self summaryFont];
      [v4 _bodyLeading];
      [(MessageListCellLayoutValues *)self bottomMargin];
      UIRoundToViewScale();
      self->_bottomPadding = v5;
    }
  }

  return self->_bottomPadding;
}

- (double)addressAndSubjectHeight
{
  v3 = MUISolariumFeatureEnabled();
  [(MessageListCellLayoutValues *)self addressCapHeight];
  v5 = v4;
  v6 = [(MessageListCellLayoutValues *)self isSubjectVisible];
  if (v3)
  {
    if (v6)
    {
      [(MessageListCellLayoutValues *)self subjectHeight];
      return v5 + v7;
    }
  }

  else
  {
    if (v6)
    {
      v8 = [(MessageListCellLayoutValues *)self subjectNumberOfLines];
      [(MessageListCellLayoutValues *)self bodyLeading];
      v5 = v5 + v8 * v9;
    }

    v10 = [MEMORY[0x277D759A0] mainScreen];
    [v10 scale];
    v5 = v5 + 1.0 / v11;
  }

  return v5;
}

- (double)addressCapHeight
{
  if (self->_addressCapHeight == 2.22507386e-308)
  {
    v3 = MUISolariumFeatureEnabled();
    v4 = [(MessageListCellLayoutValues *)self addressFont];
    v5 = v4;
    if (v3)
    {
      [v4 lineHeight];
    }

    else
    {
      [v4 capHeight];
    }

    UICeilToViewScale();
    self->_addressCapHeight = v6;
  }

  return self->_addressCapHeight;
}

- (double)subjectHeight
{
  if (self->_subjectHeight == 2.22507386e-308)
  {
    v3 = MUISolariumFeatureEnabled();
    v4 = [(MessageListCellLayoutValues *)self subjectFont];
    [v4 lineHeight];
    [(MessageListCellLayoutValues *)self subjectNumberOfLines];
    if (v3)
    {
      UIRoundToViewScale();
      self->_subjectHeight = v5;
    }

    else
    {
      v6 = [(MessageListCellLayoutValues *)self subjectFont];
      [v6 descender];
      UIRoundToViewScale();
      self->_subjectHeight = v7;
    }
  }

  return self->_subjectHeight;
}

- (UIFont)dateFont
{
  dateFont = self->_dateFont;
  if (!dateFont)
  {
    v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    v5 = self->_dateFont;
    self->_dateFont = v4;

    dateFont = self->_dateFont;
  }

  return dateFont;
}

- (UIBackgroundConfiguration)defaultBackgroundConfiguration
{
  v2 = [(UIBackgroundConfiguration *)self->_defaultBackgroundConfiguration copy];

  return v2;
}

- (BOOL)isAvatarHidden
{
  if (self->_isAvatarHidden)
  {
    return 1;
  }

  v3 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

  return IsAccessibilityCategory;
}

- (double)bodyLeading
{
  result = self->_bodyLeading;
  if (result == 2.22507386e-308)
  {
    v4 = [(MessageListCellLayoutValues *)self summaryFont];
    [v4 _bodyLeading];
    UIRoundToViewScale();
    self->_bodyLeading = v5;

    return self->_bodyLeading;
  }

  return result;
}

void __36__MessageListCellLayoutValues__init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setIsAvatarHidden:{objc_msgSend(*(a1 + 32), "BOOLForKey:", *MEMORY[0x277D06C88])}];
    WeakRetained = v3;
  }
}

- (void)_invalidateAndNotify:(BOOL)a3
{
  v3 = a3;
  if (pthread_main_np() != 1)
  {
    [MessageListCellLayoutValues _invalidateAndNotify:];
  }

  addressFont = self->_addressFont;
  self->_addressFont = 0;

  dateFont = self->_dateFont;
  self->_dateFont = 0;

  subjectFont = self->_subjectFont;
  self->_subjectFont = 0;

  summaryFont = self->_summaryFont;
  self->_summaryFont = 0;

  summarySymbolFont = self->_summarySymbolFont;
  self->_summarySymbolFont = 0;

  v10 = vdupq_n_s64(0x10000000000000uLL);
  *&self->_defaultRowHeight = v10;
  *&self->_topMargin = v10;
  *&self->_leadingPadding = v10;
  *&self->_bottomMargin = v10;
  *&self->_addressCapHeight = v10;
  *&self->_bottomPadding = v10;
  *&self->_indicatorToTrailingMargin = v10;
  if (v3)
  {
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 postNotificationName:@"kMessageListCellLayoutValuesDidChangeNotification" object:self];
  }
}

- (void)setTraitCollection:(id)a3
{
  v6 = a3;
  traitCollection = self->_traitCollection;
  if (!traitCollection || [(UITraitCollection *)traitCollection mf_traitDifferenceAffectsTextLayout:v6])
  {
    objc_storeStrong(&self->_traitCollection, a3);
    self->_useSidebarAppearance = [v6 mf_useSplitViewStyling];
    [(MessageListCellLayoutValues *)self _invalidateAndNotify:0];
  }
}

- (void)setSystemLayoutMargins:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  v8 = self->_systemLayoutMargins.leading - a3.leading;
  if (v8 < 0.0)
  {
    v8 = -v8;
  }

  if (v8 >= 2.22044605e-16)
  {
    goto LABEL_7;
  }

  v9 = self->_systemLayoutMargins.trailing - a3.trailing;
  if (v9 < 0.0)
  {
    v9 = -v9;
  }

  if (v9 >= 2.22044605e-16)
  {
LABEL_7:
    [(MessageListCellLayoutValues *)self _invalidateAndNotify:1];
    self->_systemLayoutMargins.top = top;
    self->_systemLayoutMargins.leading = leading;
    self->_systemLayoutMargins.bottom = bottom;
    self->_systemLayoutMargins.trailing = trailing;
  }
}

- (double)heightWithNumberOfSummaryLines:(int64_t)a3 isAvatarHidden:(BOOL)a4
{
  [(MessageListCellLayoutValues *)self topPadding];
  v8 = v7;
  if (a3 || a4)
  {
    [(MessageListCellLayoutValues *)self addressAndSubjectHeight];
    v13 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v13);

    if (IsAccessibilityCategory)
    {
      v15 = [(MessageListCellLayoutValues *)self dateFont];
      [v15 _bodyLeading];
      [v15 descender];
    }

    if (a3)
    {
      v16 = [(MessageListCellLayoutValues *)self summaryFont];
      v17 = [(MessageListCellLayoutValues *)self summaryFont];
      [v17 lineHeight];

      if (a3 >= 2)
      {
        [v16 _bodyLeading];
      }
    }

    [(MessageListCellLayoutValues *)self bottomPadding];
    UICeilToViewScale();
    if (v12 < 44.0)
    {
      v18 = vabdd_f64(44.0, v12) * 0.5;
      self->_topMargin = floor(v18);
      self->_bottomMargin = ceil(v18);
      v12 = 44.0;
    }
  }

  else
  {
    [(MessageListCellLayoutValues *)self avatarSize];
    v10 = v9;
    [(MessageListCellLayoutValues *)self bottomPadding];
    v12 = v8 + v10 + v11;
  }

  return ceil(v12);
}

- (double)topMargin
{
  result = self->_topMargin;
  if (result == 2.22507386e-308)
  {
    v4 = [MEMORY[0x277D759A0] mui_isLargeFormatPad];
    result = 0.0;
    if (v4)
    {
      result = 4.0;
    }

    self->_topMargin = result;
  }

  return result;
}

- (double)bottomMargin
{
  result = self->_bottomMargin;
  if (result == 2.22507386e-308)
  {
    v4 = [MEMORY[0x277D759A0] mui_isLargeFormatPad];
    result = 0.0;
    if (v4)
    {
      result = 4.0;
    }

    self->_bottomMargin = result;
  }

  return result;
}

- (double)backgroundCornerRadius
{
  result = 0.0;
  if (self->_useSidebarAppearance)
  {
    v3 = MUISolariumFeatureEnabled();
    result = 10.0;
    if (v3)
    {
      return 20.0;
    }
  }

  return result;
}

- (double)leadingToIndicatorMargin
{
  result = self->_leadingToIndicatorMargin;
  if (result == 2.22507386e-308)
  {
    v4 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

    result = 4.0;
    if (!IsAccessibilityCategory)
    {
      result = 8.0;
      if (!self->_useSidebarAppearance)
      {
        [(MessageListCellLayoutValues *)self indicatorMaxWidth];
        v7 = v6;
        leading = self->_systemLayoutMargins.leading;
        [(UITraitCollection *)self->_traitCollection mf_leadingEdgeToBackButtonText];
        result = (leading + v9 - v7) * 0.5;
      }
    }

    self->_leadingToIndicatorMargin = result;
  }

  return result;
}

- (double)topLeadingSeparatorInset
{
  v3 = [MEMORY[0x277D07148] currentDevice];
  v4 = [v3 isPad];

  if (v4)
  {
    return 0.0;
  }

  [(MessageListCellLayoutValues *)self leadingPadding];
  return result;
}

- (double)bottomLeadingSeparatorInsetShowingAvatar:(BOOL)a3
{
  v3 = a3;
  [(MessageListCellLayoutValues *)self leadingPadding];
  v6 = v5;
  if (MUISolariumFeatureEnabled())
  {
    [(MessageListCellLayoutValues *)self indicatorMaxWidth];
    v8 = v7;
    [(MessageListCellLayoutValues *)self horizontalSpacing];
    v6 = v6 + v8 + v9;
  }

  if (v3)
  {
    [(MessageListCellLayoutValues *)self avatarSize];
    v11 = v10;
    [(MessageListCellLayoutValues *)self horizontalSpacing];
    return v6 + v11 + v12;
  }

  return v6;
}

- (UIFont)summarySymbolFont
{
  summarySymbolFont = self->_summarySymbolFont;
  if (!summarySymbolFont)
  {
    v4 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D769D0] weight:*MEMORY[0x277D74420]];
    v5 = self->_summarySymbolFont;
    self->_summarySymbolFont = v4;

    summarySymbolFont = self->_summarySymbolFont;
  }

  return summarySymbolFont;
}

- (id)backgroundColorForConfigurationState:(id)a3 backgroundConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 isSelected];
  v9 = [v6 isFocused];
  v10 = [v6 isEditing];
  if ([v6 isPriority] && _os_feature_enabled_impl())
  {
    v11 = EMIsGreymatterAvailable() ^ 1;
  }

  else
  {
    v11 = 1;
  }

  if (self->_useSidebarAppearance)
  {
    v12 = [v6 isFocusSystemActive];
    if (((v8 ^ 1 | v9) & 1) == 0 && ((v10 ^ 1) & 1) == 0)
    {
      v13 = [v6 copy];
      [v13 setEditing:0];
      v14 = [v7 updatedConfigurationForState:v13];

      v15 = [(MessageListCellLayoutValues *)self tintColor];
      v16 = [v14 resolvedBackgroundColorForTintColor:v15];

      v7 = v14;
      goto LABEL_20;
    }

    if ((v12 | v8 ^ 1))
    {
      if ((v8 | v9))
      {
LABEL_15:
        v16 = 0;
        goto LABEL_20;
      }

      if ([v6 isParent])
      {
        v17 = [MEMORY[0x277D75348] mailMessageListSecondarySelectionColor];
      }

      else
      {
        if (![v6 isChild])
        {
          goto LABEL_15;
        }

        v17 = [MEMORY[0x277D75348] mailMessageListTertiarySelectionColor];
      }
    }

    else
    {
      v17 = [(MessageListCellLayoutValues *)self tintColor];
    }
  }

  else if ((v11 | v8 | v9))
  {
    if (v11 & 1 | ((v10 & 1) == 0) || ((v8 ^ 1) & 1) != 0)
    {
      v17 = -[MessageListCellLayoutValues backgroundColorForSelectedState:disclosureEnabled:](self, "backgroundColorForSelectedState:disclosureEnabled:", v8, [v6 isParent]);
    }

    else
    {
      v17 = [MEMORY[0x277D75348] mailMessageListPriorityEditSelectionColor];
    }
  }

  else
  {
    v17 = [MEMORY[0x277D75348] clearColor];
  }

  v16 = v17;
LABEL_20:

  return v16;
}

- (id)addressColorForContentConfiguration:(id)a3
{
  v3 = [a3 textProperties];
  v4 = [v3 resolvedColor];

  return v4;
}

- (id)subjectColorForContentConfiguration:(id)a3
{
  v3 = [a3 textProperties];
  v4 = [v3 resolvedColor];

  return v4;
}

- (id)absentDataColorForConfigurationState:(id)a3 contentConfiguration:(id)a4 backgroundConfiguration:(id)a5
{
  v8 = a4;
  if ([(MessageListCellLayoutValues *)self useSelectedColorForConfigurationState:a3 backgroundConfiguration:a5])
  {
    v9 = [MEMORY[0x277D75348] mailMessageListSelectedSummaryColor];
  }

  else
  {
    v10 = [v8 secondaryTextProperties];
    v9 = [v10 resolvedColor];
  }

  return v9;
}

- (id)summaryColorForConfigurationState:(id)a3 contentConfiguration:(id)a4 backgroundConfiguration:(id)a5
{
  v8 = a4;
  if ([(MessageListCellLayoutValues *)self useSelectedColorForConfigurationState:a3 backgroundConfiguration:a5])
  {
    v9 = [MEMORY[0x277D75348] mailMessageListSelectedSummaryColor];
  }

  else
  {
    v10 = [v8 secondaryTextProperties];
    v9 = [v10 resolvedColor];
  }

  return v9;
}

- (id)summarySymbolColorForConfigurationState:(id)a3 contentConfiguration:(id)a4 backgroundConfiguration:(id)a5
{
  if ([(MessageListCellLayoutValues *)self useSelectedColorForConfigurationState:a3 backgroundConfiguration:a5])
  {
    [MEMORY[0x277D75348] mailMessageListSelectedSummarySymbolColor];
  }

  else
  {
    [MEMORY[0x277D75348] mailMessageListSummarySymbolColor];
  }
  v5 = ;

  return v5;
}

- (id)annotationColorForConfigurationState:(id)a3 contentConfiguration:(id)a4 backgroundConfiguration:(id)a5
{
  v8 = a4;
  if ([(MessageListCellLayoutValues *)self useSelectedColorForConfigurationState:a3 backgroundConfiguration:a5])
  {
    v9 = [MEMORY[0x277D75348] mailMessageListSelectedAnnotationColor];
  }

  else
  {
    v10 = [v8 secondaryTextProperties];
    v9 = [v10 resolvedColor];
  }

  return v9;
}

- (id)dateColorForConfigurationState:(id)a3 contentConfiguration:(id)a4 backgroundConfiguration:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = *MEMORY[0x277D76620];
  v11 = a4;
  v12 = [v10 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v12);

  if (IsAccessibilityCategory)
  {
    v14 = [v11 textProperties];

    v15 = [v14 resolvedColor];
    v11 = v14;
  }

  else
  {
    v15 = [(MessageListCellLayoutValues *)self summaryColorForConfigurationState:v8 contentConfiguration:v11 backgroundConfiguration:v9];
  }

  return v15;
}

- (id)threadDisclosureColorForConfigurationState:(id)a3 contentConfiguration:(id)a4 backgroundConfiguration:(id)a5
{
  v8 = a4;
  if ([(MessageListCellLayoutValues *)self useSelectedColorForConfigurationState:a3 backgroundConfiguration:a5])
  {
    v9 = [v8 textProperties];
    v10 = [v9 resolvedColor];
  }

  else
  {
    v10 = [MEMORY[0x277D75348] mailInteractiveColor];
  }

  return v10;
}

- (id)recipientColorForConfigurationState:(id)a3 contentConfiguration:(id)a4 backgroundConfiguration:(id)a5
{
  v8 = a4;
  if ([(MessageListCellLayoutValues *)self useSelectedColorForConfigurationState:a3 backgroundConfiguration:a5])
  {
    v9 = [MEMORY[0x277D75348] mailMessageListSelectedRecipientColor];
  }

  else
  {
    v10 = [v8 secondaryTextProperties];
    v9 = [v10 resolvedColor];
  }

  return v9;
}

- (int64_t)actualLineCountForSummary:(id)a3 hasGeneratedSummary:(BOOL)a4 bounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4;
  v34[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = [(MessageListCellLayoutValues *)self linesOfSummaryForCompactHeight:0];
  v13 = objc_alloc_init(MEMORY[0x277D756B8]);
  v14 = [(MessageListCellLayoutValues *)self summaryFont];
  [v13 setFont:v14];

  [v13 setNumberOfLines:0];
  if (v9)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"xx %@", v11];

    v11 = v15;
  }

  [v13 setText:v11];

  v16 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v16);

  if (IsAccessibilityCategory)
  {
    LODWORD(v18) = 1.0;
    [v13 _setHyphenationFactor:v18];
  }

  [v13 setFrame:{x, y, width, height}];
  [v13 frame];
  v20 = v19;
  v21 = [v13 text];
  v33 = *MEMORY[0x277D740A8];
  v22 = [v13 font];
  v34[0] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  [v21 boundingRectWithSize:1 options:v23 attributes:0 context:{v20, 3.40282347e38}];
  v25 = v24;

  v26 = [v13 font];
  [v26 _bodyLeading];
  v28 = v27;
  v29 = [v13 font];
  [v29 descender];
  v31 = vcvtpd_s64_f64(v25 / (v28 - v30));

  if (v12 >= v31)
  {
    v12 = v31;
  }

  return v12;
}

- (BOOL)useSelectedColorForConfigurationState:(id)a3 backgroundConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_useSidebarAppearance)
  {
    v8 = [v6 isSelected];
    v9 = [v6 isFocusSystemActive];
    if (v8 && !v9 || ([v6 isFocused] & 1) != 0 || (v12 = objc_msgSend(v6, "isEditing"), (v8 & objc_msgSend(v6, "isFocusingOnMessageListCell")) == 1) && ((v12 & 1) != 0 || -[MessageListCellLayoutValues inMultiSelectionMode](self, "inMultiSelectionMode")))
    {
      v10 = 1;
    }

    else
    {
      v13 = [v7 backgroundColor];
      v14 = [(MessageListCellLayoutValues *)self tintColor];
      v10 = [v13 isEqual:v14];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSDirectionalEdgeInsets)systemLayoutMargins
{
  top = self->_systemLayoutMargins.top;
  leading = self->_systemLayoutMargins.leading;
  bottom = self->_systemLayoutMargins.bottom;
  trailing = self->_systemLayoutMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (void)_invalidateAndNotify:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end