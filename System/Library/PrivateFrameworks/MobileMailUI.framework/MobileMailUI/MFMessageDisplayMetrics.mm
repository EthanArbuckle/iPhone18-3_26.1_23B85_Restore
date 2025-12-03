@interface MFMessageDisplayMetrics
+ (MFMessageDisplayMetrics)displayMetricsWithTraitCollection:(id)collection layoutMargins:(UIEdgeInsets)margins safeAreaInsets:(UIEdgeInsets)insets interfaceOrientation:(int64_t)orientation;
+ (double)avatarDiameter;
- (BOOL)conversationHeaderViewShouldHideCollapsedSuperTitle;
- (BOOL)hasCompactLayout;
- (BOOL)hasGenerousMargins;
- (BOOL)isEqual:(id)equal;
- (BOOL)prefersFlushSeparator;
- (BOOL)prefersFlushSeparatorForLeadingEdge;
- (BOOL)usePhoneLandscapeSymbolConfiguration;
- (UIEdgeInsets)layoutMargins;
- (UIEdgeInsets)safeAreaInsets;
- (double)_calculateFooterViewButtonsAnimationOffset;
- (double)_scaledFloatWithValue:(double)value fontStyle:(id)style;
- (double)_scaledFloatWithValue:(double)value fontStyle:(id)style maximumContentSizeCategory:(id)category;
- (double)avatarDiameterForCurrentContentSize;
- (double)cellHeightToStartScroll;
- (double)conversationHeaderViewCollapsedTitleTopToFirstBaseline;
- (double)estimatedFooterViewHeight;
- (double)footerViewTopToBaseline;
- (double)messageBottomPaddingInConversationForCollapsedCell;
- (double)messageBottomPaddingInConversationForExpandedCell;
- (double)messageBottomPaddingInConversationForMailActionHeader;
- (double)recipientBaselineToFirstSeparatorInConversation;
- (id)_cachedFontForStyle:(id)style;
- (id)description;
- (unint64_t)hash;
- (void)setFooterViewDisplayMetrics:(id)metrics;
@end

@implementation MFMessageDisplayMetrics

+ (MFMessageDisplayMetrics)displayMetricsWithTraitCollection:(id)collection layoutMargins:(UIEdgeInsets)margins safeAreaInsets:(UIEdgeInsets)insets interfaceOrientation:(int64_t)orientation
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v11 = margins.right;
  v12 = margins.bottom;
  v13 = margins.left;
  v14 = margins.top;
  collectionCopy = collection;
  userInterfaceIdiom = [collectionCopy userInterfaceIdiom];
  if (userInterfaceIdiom == -1)
  {
    v19 = 0;
  }

  else
  {
    v17 = off_2781809C8;
    if (userInterfaceIdiom && [collectionCopy horizontalSizeClass] != 1)
    {
      v17 = off_2781809D0;
    }

    v18 = *v17;
    v19 = objc_alloc_init(objc_opt_class());
    [v19 setTraitCollection:collectionCopy];
    [v19 setLayoutMargins:{v14, v13, v12, v11}];
    [v19 setSafeAreaInsets:{top, left, bottom, right}];
    right = [ConversationFooterViewDisplayMetrics displayMetricsWithSafeAreaInsets:orientation interfaceOrientation:collectionCopy traitCollection:top, left, bottom, right];
    [v19 setFooterViewDisplayMetrics:right];
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
      traitCollection = [(MFMessageDisplayMetrics *)self traitCollection];
      traitCollection2 = [(MFMessageDisplayMetrics *)v7 traitCollection];
      if ([traitCollection isEqual:traitCollection2])
      {
        [(MFMessageDisplayMetrics *)self layoutMargins];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        [(MFMessageDisplayMetrics *)v7 layoutMargins];
        v6 = 0;
        if (v13 == v21 && v11 == v18 && v17 == v20 && v15 == v19)
        {
          [(MFMessageDisplayMetrics *)self safeAreaInsets];
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;
          [(MFMessageDisplayMetrics *)v7 safeAreaInsets];
          v33 = v25 == v32;
          if (v23 != v34)
          {
            v33 = 0;
          }

          if (v29 != v31)
          {
            v33 = 0;
          }

          v6 = v27 == v30 && v33;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  traitCollection = [(MFMessageDisplayMetrics *)self traitCollection];
  v3 = [traitCollection hash];

  return v3;
}

- (BOOL)hasCompactLayout
{
  traitCollection = [(MFMessageDisplayMetrics *)self traitCollection];
  if ([traitCollection userInterfaceIdiom])
  {
    traitCollection2 = [(MFMessageDisplayMetrics *)self traitCollection];
    v5 = [traitCollection2 horizontalSizeClass] == 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)hasGenerousMargins
{
  layoutMargins = [(MFMessageDisplayMetrics *)self layoutMargins];
  v4.n128_u64[0] = v3;

  return MEMORY[0x282123C58](layoutMargins, v4);
}

- (BOOL)prefersFlushSeparator
{
  if (MUISolariumFeatureEnabled())
  {
    return 0;
  }

  if ([(MFMessageDisplayMetrics *)self hasCompactLayout]|| ![(MFMessageDisplayMetrics *)self hasGenerousMargins])
  {
    return 1;
  }

  v4 = MEMORY[0x277D75780];
  traitCollection = [(MFMessageDisplayMetrics *)self traitCollection];
  v3 = [v4 mf_shouldUseDesktopClassNavigationBarForTraitCollection:traitCollection];

  return v3;
}

- (BOOL)prefersFlushSeparatorForLeadingEdge
{
  if (MUISolariumFeatureEnabled())
  {
    return 0;
  }

  v4 = MEMORY[0x277D75780];
  traitCollection = [(MFMessageDisplayMetrics *)self traitCollection];
  v3 = [v4 mf_shouldUseDesktopClassNavigationBarForTraitCollection:traitCollection];

  return v3;
}

- (double)recipientBaselineToFirstSeparatorInConversation
{
  [(MFMessageDisplayMetrics *)self _scaledFloatWithValue:*MEMORY[0x277D76968] fontStyle:17.0];
  v4 = v3;
  [(MFMessageDisplayMetrics *)self messageTopPaddingInConversation];
  return v4 + v5;
}

+ (double)avatarDiameter
{
  v2 = MUISolariumFeatureEnabled();
  result = 37.0;
  if (v2)
  {
    return 44.0;
  }

  return result;
}

- (double)avatarDiameterForCurrentContentSize
{
  v20[12] = *MEMORY[0x277D85DE8];
  traitCollection = [(MFMessageDisplayMetrics *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  [objc_opt_class() avatarDiameter];
  v4 = preferredContentSizeCategory;
  v5 = _avatarScaleForContentSize_avatarScales;
  if (!_avatarScaleForContentSize_avatarScales)
  {
    v6 = *MEMORY[0x277D76858];
    v19[0] = *MEMORY[0x277D76830];
    v19[1] = v6;
    v20[0] = &unk_2826DCA88;
    v20[1] = &unk_2826DCA88;
    v7 = *MEMORY[0x277D76838];
    v19[2] = *MEMORY[0x277D76840];
    v19[3] = v7;
    v20[2] = &unk_2826DCA88;
    v20[3] = &unk_2826DCA88;
    v8 = *MEMORY[0x277D76820];
    v19[4] = *MEMORY[0x277D76828];
    v19[5] = v8;
    v20[4] = &unk_2826DCAA8;
    v20[5] = &unk_2826DCAB8;
    v9 = *MEMORY[0x277D76808];
    v19[6] = *MEMORY[0x277D76818];
    v19[7] = v9;
    v20[6] = &unk_2826DCA98;
    v20[7] = &unk_2826DCA88;
    v10 = *MEMORY[0x277D767F8];
    v19[8] = *MEMORY[0x277D76800];
    v19[9] = v10;
    v20[8] = &unk_2826DCA88;
    v20[9] = &unk_2826DCA88;
    v11 = *MEMORY[0x277D767E8];
    v19[10] = *MEMORY[0x277D767F0];
    v19[11] = v11;
    v20[10] = &unk_2826DCA88;
    v20[11] = &unk_2826DCA88;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:12];
    v13 = _avatarScaleForContentSize_avatarScales;
    _avatarScaleForContentSize_avatarScales = v12;

    v5 = _avatarScaleForContentSize_avatarScales;
  }

  v14 = [v5 objectForKeyedSubscript:v4];
  [v14 floatValue];

  UIRoundToViewScale();
  v16 = v15;

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (double)messageBottomPaddingInConversationForCollapsedCell
{
  [(MFMessageDisplayMetrics *)self messageTopPaddingInConversation];
  v4 = v3;
  [(MFMessageDisplayMetrics *)self topToSenderBaselineInConversationForCollapsedCell];
  v6 = v4 + v5;
  [(MFMessageDisplayMetrics *)self baselineToBaselineSpacingInConversation];
  v8 = v6 + v7;
  [(MFMessageDisplayMetrics *)self avatarDiameterForCurrentContentSize];
  return v8 - v9 + 1.0;
}

- (double)messageBottomPaddingInConversationForExpandedCell
{
  [(MFMessageDisplayMetrics *)self messageTopPaddingInConversation];
  v4 = v3;
  [(MFMessageDisplayMetrics *)self topToSenderBaselineInConversationForExpandedCell];
  v6 = v4 + v5;
  [(MFMessageDisplayMetrics *)self baselineToBaselineSpacingInConversation];
  v8 = v6 + v7;
  [(MFMessageDisplayMetrics *)self avatarDiameterForCurrentContentSize];
  result = v8 - v9 + 1.0;
  if (result < 10.0)
  {
    return 10.0;
  }

  return result;
}

- (double)messageBottomPaddingInConversationForMailActionHeader
{
  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v5 = 64.0;
  }

  else
  {
    [(MFMessageDisplayMetrics *)self avatarDiameterForCurrentContentSize];
    v5 = v6;
  }

  [(MFMessageDisplayMetrics *)self messageTopPaddingInConversationForMailActionHeader];
  v8 = v7;
  [(MFMessageDisplayMetrics *)self topToSenderBaselineInConversationForMailActionHeader];
  v10 = v8 + v9;
  [(MFMessageDisplayMetrics *)self baselineToBaselineSpacingInConversationForMailActionHeader];
  return v10 + v11 - v5 + 1.0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  traitCollection = [(MFMessageDisplayMetrics *)self traitCollection];
  v6 = [v3 stringWithFormat:@"<%@: %p> traitCollection = %@", v4, self, traitCollection];

  return v6;
}

- (id)_cachedFontForStyle:(id)style
{
  styleCopy = style;
  mEMORY[0x277CD6870] = [MEMORY[0x277CD6870] sharedFontMetricCache];
  v5 = [mEMORY[0x277CD6870] cachedPreferredFontForStyle:styleCopy];

  return v5;
}

- (double)_scaledFloatWithValue:(double)value fontStyle:(id)style
{
  styleCopy = style;
  mEMORY[0x277CD6870] = [MEMORY[0x277CD6870] sharedFontMetricCache];
  [mEMORY[0x277CD6870] cachedScaledFloatWithValue:styleCopy fontStyle:value];
  v8 = v7;

  return v8;
}

- (double)_scaledFloatWithValue:(double)value fontStyle:(id)style maximumContentSizeCategory:(id)category
{
  styleCopy = style;
  categoryCopy = category;
  mEMORY[0x277CD6870] = [MEMORY[0x277CD6870] sharedFontMetricCache];
  [mEMORY[0x277CD6870] cachedScaledFloatWithValue:styleCopy fontStyle:categoryCopy maximumContentSizeCategory:value];
  v11 = v10;

  return v11;
}

- (double)cellHeightToStartScroll
{
  if ([(MFMessageDisplayMetrics *)self usePhoneLandscapeSymbolConfiguration])
  {
    v3 = 175.0;
  }

  else
  {
    v3 = 300.0;
  }

  [(MFMessageDisplayMetrics *)self estimatedFooterViewHeight];
  v5 = v4;
  [(MFMessageDisplayMetrics *)self footerViewTopToBaseline];
  return v3 + v5 - v6;
}

- (double)estimatedFooterViewHeight
{
  footerViewDisplayMetrics = [(MFMessageDisplayMetrics *)self footerViewDisplayMetrics];
  [footerViewDisplayMetrics toolbarHeight];
  v4 = v3;

  return v4;
}

- (double)footerViewTopToBaseline
{
  footerViewDisplayMetrics = [(MFMessageDisplayMetrics *)self footerViewDisplayMetrics];
  [footerViewDisplayMetrics topToBaseline];
  v4 = v3;

  return v4;
}

- (BOOL)usePhoneLandscapeSymbolConfiguration
{
  footerViewDisplayMetrics = [(MFMessageDisplayMetrics *)self footerViewDisplayMetrics];
  usePhoneLandscapeSymbolConfiguration = [footerViewDisplayMetrics usePhoneLandscapeSymbolConfiguration];

  return usePhoneLandscapeSymbolConfiguration;
}

- (double)_calculateFooterViewButtonsAnimationOffset
{
  if ([(MFMessageDisplayMetrics *)self usePhoneLandscapeSymbolConfiguration])
  {
    v3 = 18;
  }

  else
  {
    v3 = 17;
  }

  v4 = [MEMORY[0x277D755B8] mf_systemImageNamed:*MEMORY[0x277CD6808] forView:v3];
  [v4 size];
  v6 = v5;
  [(MFMessageDisplayMetrics *)self footerViewTopToBaseline];
  v8 = v7;
  [(MFMessageDisplayMetrics *)self estimatedFooterViewHeight];
  v10 = v9 - (v6 + (v8 - v6) * 2.0);
  v11 = 0.0;
  if (v10 > 0.0)
  {
    [(MFMessageDisplayMetrics *)self safeAreaInsets];
    if (v12 != 0.0)
    {
      v11 = fmin(v10, 15.0);
    }
  }

  return v11;
}

- (void)setFooterViewDisplayMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (self->_footerViewDisplayMetrics != metricsCopy)
  {
    v7 = metricsCopy;
    objc_storeStrong(&self->_footerViewDisplayMetrics, metrics);
    [(MFMessageDisplayMetrics *)self _calculateFooterViewButtonsAnimationOffset];
    self->_footerViewButtonsAnimationOffset = v6;
    metricsCopy = v7;
  }
}

- (BOOL)conversationHeaderViewShouldHideCollapsedSuperTitle
{
  footerViewDisplayMetrics = [(MFMessageDisplayMetrics *)self footerViewDisplayMetrics];
  [footerViewDisplayMetrics toolbarHeight];
  v4 = v3 < 44.0;

  return v4;
}

- (double)conversationHeaderViewCollapsedTitleTopToFirstBaseline
{
  conversationHeaderViewShouldHideCollapsedSuperTitle = [(MFMessageDisplayMetrics *)self conversationHeaderViewShouldHideCollapsedSuperTitle];
  result = 28.0;
  if (conversationHeaderViewShouldHideCollapsedSuperTitle)
  {
    return 21.0;
  }

  return result;
}

- (UIEdgeInsets)layoutMargins
{
  top = self->_layoutMargins.top;
  left = self->_layoutMargins.left;
  bottom = self->_layoutMargins.bottom;
  right = self->_layoutMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)safeAreaInsets
{
  top = self->_safeAreaInsets.top;
  left = self->_safeAreaInsets.left;
  bottom = self->_safeAreaInsets.bottom;
  right = self->_safeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end