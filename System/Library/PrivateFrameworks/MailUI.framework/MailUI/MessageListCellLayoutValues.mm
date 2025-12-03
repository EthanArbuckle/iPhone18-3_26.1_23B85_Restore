@interface MessageListCellLayoutValues
- (BOOL)isAvatarHidden;
- (BOOL)useSelectedColorForConfigurationState:(id)state backgroundConfiguration:(id)configuration;
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
- (double)bottomLeadingSeparatorInsetShowingAvatar:(BOOL)avatar;
- (double)bottomMargin;
- (double)bottomPadding;
- (double)heightWithNumberOfSummaryLines:(int64_t)lines isAvatarHidden:(BOOL)hidden;
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
- (id)absentDataColorForConfigurationState:(id)state contentConfiguration:(id)configuration backgroundConfiguration:(id)backgroundConfiguration;
- (id)addressColorForContentConfiguration:(id)configuration;
- (id)annotationColorForConfigurationState:(id)state contentConfiguration:(id)configuration backgroundConfiguration:(id)backgroundConfiguration;
- (id)backgroundColorForConfigurationState:(id)state backgroundConfiguration:(id)configuration;
- (id)dateColorForConfigurationState:(id)state contentConfiguration:(id)configuration backgroundConfiguration:(id)backgroundConfiguration;
- (id)recipientColorForConfigurationState:(id)state contentConfiguration:(id)configuration backgroundConfiguration:(id)backgroundConfiguration;
- (id)subjectColorForContentConfiguration:(id)configuration;
- (id)summaryColorForConfigurationState:(id)state contentConfiguration:(id)configuration backgroundConfiguration:(id)backgroundConfiguration;
- (id)summarySymbolColorForConfigurationState:(id)state contentConfiguration:(id)configuration backgroundConfiguration:(id)backgroundConfiguration;
- (id)threadDisclosureColorForConfigurationState:(id)state contentConfiguration:(id)configuration backgroundConfiguration:(id)backgroundConfiguration;
- (int64_t)actualLineCountForSummary:(id)summary hasGeneratedSummary:(BOOL)generatedSummary bounds:(CGRect)bounds;
- (void)_invalidateAndNotify:(BOOL)notify;
- (void)setSystemLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (void)setTraitCollection:(id)collection;
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
    em_userDefaults = [MEMORY[0x277CBEBD0] em_userDefaults];
    v5 = *MEMORY[0x277D06C88];
    v3->_isAvatarHidden = [em_userDefaults BOOLForKey:*MEMORY[0x277D06C88]];
    objc_initWeak(&location, v3);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__MessageListCellLayoutValues__init__block_invoke;
    v10[3] = &unk_278188C80;
    objc_copyWeak(&v12, &location);
    v6 = em_userDefaults;
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
    preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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

  addressFont = [(MessageListCellLayoutValues *)self addressFont];
  [addressFont lineHeight];
  v6 = v5;
  subjectFont = [(MessageListCellLayoutValues *)self subjectFont];
  [subjectFont lineHeight];
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
        preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
        IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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
      preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
      UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

      summaryFont = [(MessageListCellLayoutValues *)self summaryFont];
      [summaryFont _bodyLeading];
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
  isSubjectVisible = [(MessageListCellLayoutValues *)self isSubjectVisible];
  if (v3)
  {
    if (isSubjectVisible)
    {
      [(MessageListCellLayoutValues *)self subjectHeight];
      return v5 + v7;
    }
  }

  else
  {
    if (isSubjectVisible)
    {
      subjectNumberOfLines = [(MessageListCellLayoutValues *)self subjectNumberOfLines];
      [(MessageListCellLayoutValues *)self bodyLeading];
      v5 = v5 + subjectNumberOfLines * v9;
    }

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v5 = v5 + 1.0 / v11;
  }

  return v5;
}

- (double)addressCapHeight
{
  if (self->_addressCapHeight == 2.22507386e-308)
  {
    v3 = MUISolariumFeatureEnabled();
    addressFont = [(MessageListCellLayoutValues *)self addressFont];
    v5 = addressFont;
    if (v3)
    {
      [addressFont lineHeight];
    }

    else
    {
      [addressFont capHeight];
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
    subjectFont = [(MessageListCellLayoutValues *)self subjectFont];
    [subjectFont lineHeight];
    [(MessageListCellLayoutValues *)self subjectNumberOfLines];
    if (v3)
    {
      UIRoundToViewScale();
      self->_subjectHeight = v5;
    }

    else
    {
      subjectFont2 = [(MessageListCellLayoutValues *)self subjectFont];
      [subjectFont2 descender];
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

  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return IsAccessibilityCategory;
}

- (double)bodyLeading
{
  result = self->_bodyLeading;
  if (result == 2.22507386e-308)
  {
    summaryFont = [(MessageListCellLayoutValues *)self summaryFont];
    [summaryFont _bodyLeading];
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

- (void)_invalidateAndNotify:(BOOL)notify
{
  notifyCopy = notify;
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
  if (notifyCopy)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"kMessageListCellLayoutValuesDidChangeNotification" object:self];
  }
}

- (void)setTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = self->_traitCollection;
  if (!traitCollection || [(UITraitCollection *)traitCollection mf_traitDifferenceAffectsTextLayout:collectionCopy])
  {
    objc_storeStrong(&self->_traitCollection, collection);
    self->_useSidebarAppearance = [collectionCopy mf_useSplitViewStyling];
    [(MessageListCellLayoutValues *)self _invalidateAndNotify:0];
  }
}

- (void)setSystemLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  trailing = margins.trailing;
  bottom = margins.bottom;
  leading = margins.leading;
  top = margins.top;
  v8 = self->_systemLayoutMargins.leading - margins.leading;
  if (v8 < 0.0)
  {
    v8 = -v8;
  }

  if (v8 >= 2.22044605e-16)
  {
    goto LABEL_7;
  }

  v9 = self->_systemLayoutMargins.trailing - margins.trailing;
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

- (double)heightWithNumberOfSummaryLines:(int64_t)lines isAvatarHidden:(BOOL)hidden
{
  [(MessageListCellLayoutValues *)self topPadding];
  v8 = v7;
  if (lines || hidden)
  {
    [(MessageListCellLayoutValues *)self addressAndSubjectHeight];
    preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      dateFont = [(MessageListCellLayoutValues *)self dateFont];
      [dateFont _bodyLeading];
      [dateFont descender];
    }

    if (lines)
    {
      summaryFont = [(MessageListCellLayoutValues *)self summaryFont];
      summaryFont2 = [(MessageListCellLayoutValues *)self summaryFont];
      [summaryFont2 lineHeight];

      if (lines >= 2)
      {
        [summaryFont _bodyLeading];
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
    mui_isLargeFormatPad = [MEMORY[0x277D759A0] mui_isLargeFormatPad];
    result = 0.0;
    if (mui_isLargeFormatPad)
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
    mui_isLargeFormatPad = [MEMORY[0x277D759A0] mui_isLargeFormatPad];
    result = 0.0;
    if (mui_isLargeFormatPad)
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
    preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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
  currentDevice = [MEMORY[0x277D07148] currentDevice];
  isPad = [currentDevice isPad];

  if (isPad)
  {
    return 0.0;
  }

  [(MessageListCellLayoutValues *)self leadingPadding];
  return result;
}

- (double)bottomLeadingSeparatorInsetShowingAvatar:(BOOL)avatar
{
  avatarCopy = avatar;
  [(MessageListCellLayoutValues *)self leadingPadding];
  v6 = v5;
  if (MUISolariumFeatureEnabled())
  {
    [(MessageListCellLayoutValues *)self indicatorMaxWidth];
    v8 = v7;
    [(MessageListCellLayoutValues *)self horizontalSpacing];
    v6 = v6 + v8 + v9;
  }

  if (avatarCopy)
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

- (id)backgroundColorForConfigurationState:(id)state backgroundConfiguration:(id)configuration
{
  stateCopy = state;
  configurationCopy = configuration;
  isSelected = [stateCopy isSelected];
  isFocused = [stateCopy isFocused];
  isEditing = [stateCopy isEditing];
  if ([stateCopy isPriority] && _os_feature_enabled_impl())
  {
    v11 = EMIsGreymatterAvailable() ^ 1;
  }

  else
  {
    v11 = 1;
  }

  if (self->_useSidebarAppearance)
  {
    isFocusSystemActive = [stateCopy isFocusSystemActive];
    if (((isSelected ^ 1 | isFocused) & 1) == 0 && ((isEditing ^ 1) & 1) == 0)
    {
      v13 = [stateCopy copy];
      [v13 setEditing:0];
      v14 = [configurationCopy updatedConfigurationForState:v13];

      tintColor = [(MessageListCellLayoutValues *)self tintColor];
      v16 = [v14 resolvedBackgroundColorForTintColor:tintColor];

      configurationCopy = v14;
      goto LABEL_20;
    }

    if ((isFocusSystemActive | isSelected ^ 1))
    {
      if ((isSelected | isFocused))
      {
LABEL_15:
        v16 = 0;
        goto LABEL_20;
      }

      if ([stateCopy isParent])
      {
        mailMessageListSecondarySelectionColor = [MEMORY[0x277D75348] mailMessageListSecondarySelectionColor];
      }

      else
      {
        if (![stateCopy isChild])
        {
          goto LABEL_15;
        }

        mailMessageListSecondarySelectionColor = [MEMORY[0x277D75348] mailMessageListTertiarySelectionColor];
      }
    }

    else
    {
      mailMessageListSecondarySelectionColor = [(MessageListCellLayoutValues *)self tintColor];
    }
  }

  else if ((v11 | isSelected | isFocused))
  {
    if (v11 & 1 | ((isEditing & 1) == 0) || ((isSelected ^ 1) & 1) != 0)
    {
      mailMessageListSecondarySelectionColor = -[MessageListCellLayoutValues backgroundColorForSelectedState:disclosureEnabled:](self, "backgroundColorForSelectedState:disclosureEnabled:", isSelected, [stateCopy isParent]);
    }

    else
    {
      mailMessageListSecondarySelectionColor = [MEMORY[0x277D75348] mailMessageListPriorityEditSelectionColor];
    }
  }

  else
  {
    mailMessageListSecondarySelectionColor = [MEMORY[0x277D75348] clearColor];
  }

  v16 = mailMessageListSecondarySelectionColor;
LABEL_20:

  return v16;
}

- (id)addressColorForContentConfiguration:(id)configuration
{
  textProperties = [configuration textProperties];
  resolvedColor = [textProperties resolvedColor];

  return resolvedColor;
}

- (id)subjectColorForContentConfiguration:(id)configuration
{
  textProperties = [configuration textProperties];
  resolvedColor = [textProperties resolvedColor];

  return resolvedColor;
}

- (id)absentDataColorForConfigurationState:(id)state contentConfiguration:(id)configuration backgroundConfiguration:(id)backgroundConfiguration
{
  configurationCopy = configuration;
  if ([(MessageListCellLayoutValues *)self useSelectedColorForConfigurationState:state backgroundConfiguration:backgroundConfiguration])
  {
    mailMessageListSelectedSummaryColor = [MEMORY[0x277D75348] mailMessageListSelectedSummaryColor];
  }

  else
  {
    secondaryTextProperties = [configurationCopy secondaryTextProperties];
    mailMessageListSelectedSummaryColor = [secondaryTextProperties resolvedColor];
  }

  return mailMessageListSelectedSummaryColor;
}

- (id)summaryColorForConfigurationState:(id)state contentConfiguration:(id)configuration backgroundConfiguration:(id)backgroundConfiguration
{
  configurationCopy = configuration;
  if ([(MessageListCellLayoutValues *)self useSelectedColorForConfigurationState:state backgroundConfiguration:backgroundConfiguration])
  {
    mailMessageListSelectedSummaryColor = [MEMORY[0x277D75348] mailMessageListSelectedSummaryColor];
  }

  else
  {
    secondaryTextProperties = [configurationCopy secondaryTextProperties];
    mailMessageListSelectedSummaryColor = [secondaryTextProperties resolvedColor];
  }

  return mailMessageListSelectedSummaryColor;
}

- (id)summarySymbolColorForConfigurationState:(id)state contentConfiguration:(id)configuration backgroundConfiguration:(id)backgroundConfiguration
{
  if ([(MessageListCellLayoutValues *)self useSelectedColorForConfigurationState:state backgroundConfiguration:backgroundConfiguration])
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

- (id)annotationColorForConfigurationState:(id)state contentConfiguration:(id)configuration backgroundConfiguration:(id)backgroundConfiguration
{
  configurationCopy = configuration;
  if ([(MessageListCellLayoutValues *)self useSelectedColorForConfigurationState:state backgroundConfiguration:backgroundConfiguration])
  {
    mailMessageListSelectedAnnotationColor = [MEMORY[0x277D75348] mailMessageListSelectedAnnotationColor];
  }

  else
  {
    secondaryTextProperties = [configurationCopy secondaryTextProperties];
    mailMessageListSelectedAnnotationColor = [secondaryTextProperties resolvedColor];
  }

  return mailMessageListSelectedAnnotationColor;
}

- (id)dateColorForConfigurationState:(id)state contentConfiguration:(id)configuration backgroundConfiguration:(id)backgroundConfiguration
{
  stateCopy = state;
  backgroundConfigurationCopy = backgroundConfiguration;
  v10 = *MEMORY[0x277D76620];
  configurationCopy = configuration;
  preferredContentSizeCategory = [v10 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    textProperties = [configurationCopy textProperties];

    resolvedColor = [textProperties resolvedColor];
    configurationCopy = textProperties;
  }

  else
  {
    resolvedColor = [(MessageListCellLayoutValues *)self summaryColorForConfigurationState:stateCopy contentConfiguration:configurationCopy backgroundConfiguration:backgroundConfigurationCopy];
  }

  return resolvedColor;
}

- (id)threadDisclosureColorForConfigurationState:(id)state contentConfiguration:(id)configuration backgroundConfiguration:(id)backgroundConfiguration
{
  configurationCopy = configuration;
  if ([(MessageListCellLayoutValues *)self useSelectedColorForConfigurationState:state backgroundConfiguration:backgroundConfiguration])
  {
    textProperties = [configurationCopy textProperties];
    resolvedColor = [textProperties resolvedColor];
  }

  else
  {
    resolvedColor = [MEMORY[0x277D75348] mailInteractiveColor];
  }

  return resolvedColor;
}

- (id)recipientColorForConfigurationState:(id)state contentConfiguration:(id)configuration backgroundConfiguration:(id)backgroundConfiguration
{
  configurationCopy = configuration;
  if ([(MessageListCellLayoutValues *)self useSelectedColorForConfigurationState:state backgroundConfiguration:backgroundConfiguration])
  {
    mailMessageListSelectedRecipientColor = [MEMORY[0x277D75348] mailMessageListSelectedRecipientColor];
  }

  else
  {
    secondaryTextProperties = [configurationCopy secondaryTextProperties];
    mailMessageListSelectedRecipientColor = [secondaryTextProperties resolvedColor];
  }

  return mailMessageListSelectedRecipientColor;
}

- (int64_t)actualLineCountForSummary:(id)summary hasGeneratedSummary:(BOOL)generatedSummary bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  generatedSummaryCopy = generatedSummary;
  v34[1] = *MEMORY[0x277D85DE8];
  summaryCopy = summary;
  v12 = [(MessageListCellLayoutValues *)self linesOfSummaryForCompactHeight:0];
  v13 = objc_alloc_init(MEMORY[0x277D756B8]);
  summaryFont = [(MessageListCellLayoutValues *)self summaryFont];
  [v13 setFont:summaryFont];

  [v13 setNumberOfLines:0];
  if (generatedSummaryCopy)
  {
    summaryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"xx %@", summaryCopy];

    summaryCopy = summaryCopy;
  }

  [v13 setText:summaryCopy];

  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    LODWORD(v18) = 1.0;
    [v13 _setHyphenationFactor:v18];
  }

  [v13 setFrame:{x, y, width, height}];
  [v13 frame];
  v20 = v19;
  text = [v13 text];
  v33 = *MEMORY[0x277D740A8];
  font = [v13 font];
  v34[0] = font;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  [text boundingRectWithSize:1 options:v23 attributes:0 context:{v20, 3.40282347e38}];
  v25 = v24;

  font2 = [v13 font];
  [font2 _bodyLeading];
  v28 = v27;
  font3 = [v13 font];
  [font3 descender];
  v31 = vcvtpd_s64_f64(v25 / (v28 - v30));

  if (v12 >= v31)
  {
    v12 = v31;
  }

  return v12;
}

- (BOOL)useSelectedColorForConfigurationState:(id)state backgroundConfiguration:(id)configuration
{
  stateCopy = state;
  configurationCopy = configuration;
  if (self->_useSidebarAppearance)
  {
    isSelected = [stateCopy isSelected];
    isFocusSystemActive = [stateCopy isFocusSystemActive];
    if (isSelected && !isFocusSystemActive || ([stateCopy isFocused] & 1) != 0 || (v12 = objc_msgSend(stateCopy, "isEditing"), (isSelected & objc_msgSend(stateCopy, "isFocusingOnMessageListCell")) == 1) && ((v12 & 1) != 0 || -[MessageListCellLayoutValues inMultiSelectionMode](self, "inMultiSelectionMode")))
    {
      v10 = 1;
    }

    else
    {
      backgroundColor = [configurationCopy backgroundColor];
      tintColor = [(MessageListCellLayoutValues *)self tintColor];
      v10 = [backgroundColor isEqual:tintColor];
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