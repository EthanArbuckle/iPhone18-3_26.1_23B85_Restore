@interface MFMessageDisplayMetrics
+ (MFMessageDisplayMetrics)displayMetricsWithTraitCollection:(id)a3 layoutMargins:(UIEdgeInsets)a4 safeAreaInsets:(UIEdgeInsets)a5 interfaceOrientation:(int64_t)a6;
+ (double)avatarDiameter;
- (BOOL)conversationHeaderViewShouldHideCollapsedSuperTitle;
- (BOOL)hasCompactLayout;
- (BOOL)hasGenerousMargins;
- (BOOL)isEqual:(id)a3;
- (BOOL)prefersFlushSeparator;
- (BOOL)prefersFlushSeparatorForLeadingEdge;
- (BOOL)usePhoneLandscapeSymbolConfiguration;
- (UIEdgeInsets)layoutMargins;
- (UIEdgeInsets)safeAreaInsets;
- (double)_calculateFooterViewButtonsAnimationOffset;
- (double)_scaledFloatWithValue:(double)a3 fontStyle:(id)a4;
- (double)_scaledFloatWithValue:(double)a3 fontStyle:(id)a4 maximumContentSizeCategory:(id)a5;
- (double)avatarDiameterForCurrentContentSize;
- (double)cellHeightToStartScroll;
- (double)conversationHeaderViewCollapsedTitleTopToFirstBaseline;
- (double)estimatedFooterViewHeight;
- (double)footerViewTopToBaseline;
- (double)messageBottomPaddingInConversationForCollapsedCell;
- (double)messageBottomPaddingInConversationForExpandedCell;
- (double)messageBottomPaddingInConversationForMailActionHeader;
- (double)recipientBaselineToFirstSeparatorInConversation;
- (id)_cachedFontForStyle:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)setFooterViewDisplayMetrics:(id)a3;
@end

@implementation MFMessageDisplayMetrics

+ (MFMessageDisplayMetrics)displayMetricsWithTraitCollection:(id)a3 layoutMargins:(UIEdgeInsets)a4 safeAreaInsets:(UIEdgeInsets)a5 interfaceOrientation:(int64_t)a6
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v11 = a4.right;
  v12 = a4.bottom;
  v13 = a4.left;
  v14 = a4.top;
  v15 = a3;
  v16 = [v15 userInterfaceIdiom];
  if (v16 == -1)
  {
    v19 = 0;
  }

  else
  {
    v17 = off_2781809C8;
    if (v16 && [v15 horizontalSizeClass] != 1)
    {
      v17 = off_2781809D0;
    }

    v18 = *v17;
    v19 = objc_alloc_init(objc_opt_class());
    [v19 setTraitCollection:v15];
    [v19 setLayoutMargins:{v14, v13, v12, v11}];
    [v19 setSafeAreaInsets:{top, left, bottom, right}];
    v20 = [ConversationFooterViewDisplayMetrics displayMetricsWithSafeAreaInsets:a6 interfaceOrientation:v15 traitCollection:top, left, bottom, right];
    [v19 setFooterViewDisplayMetrics:v20];
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
      v8 = [(MFMessageDisplayMetrics *)self traitCollection];
      v9 = [(MFMessageDisplayMetrics *)v7 traitCollection];
      if ([v8 isEqual:v9])
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
  v2 = [(MFMessageDisplayMetrics *)self traitCollection];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)hasCompactLayout
{
  v3 = [(MFMessageDisplayMetrics *)self traitCollection];
  if ([v3 userInterfaceIdiom])
  {
    v4 = [(MFMessageDisplayMetrics *)self traitCollection];
    v5 = [v4 horizontalSizeClass] == 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)hasGenerousMargins
{
  v2 = [(MFMessageDisplayMetrics *)self layoutMargins];
  v4.n128_u64[0] = v3;

  return MEMORY[0x282123C58](v2, v4);
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
  v5 = [(MFMessageDisplayMetrics *)self traitCollection];
  v3 = [v4 mf_shouldUseDesktopClassNavigationBarForTraitCollection:v5];

  return v3;
}

- (BOOL)prefersFlushSeparatorForLeadingEdge
{
  if (MUISolariumFeatureEnabled())
  {
    return 0;
  }

  v4 = MEMORY[0x277D75780];
  v5 = [(MFMessageDisplayMetrics *)self traitCollection];
  v3 = [v4 mf_shouldUseDesktopClassNavigationBarForTraitCollection:v5];

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
  v2 = [(MFMessageDisplayMetrics *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  [objc_opt_class() avatarDiameter];
  v4 = v3;
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
  v3 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

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
  v5 = [(MFMessageDisplayMetrics *)self traitCollection];
  v6 = [v3 stringWithFormat:@"<%@: %p> traitCollection = %@", v4, self, v5];

  return v6;
}

- (id)_cachedFontForStyle:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CD6870] sharedFontMetricCache];
  v5 = [v4 cachedPreferredFontForStyle:v3];

  return v5;
}

- (double)_scaledFloatWithValue:(double)a3 fontStyle:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CD6870] sharedFontMetricCache];
  [v6 cachedScaledFloatWithValue:v5 fontStyle:a3];
  v8 = v7;

  return v8;
}

- (double)_scaledFloatWithValue:(double)a3 fontStyle:(id)a4 maximumContentSizeCategory:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277CD6870] sharedFontMetricCache];
  [v9 cachedScaledFloatWithValue:v7 fontStyle:v8 maximumContentSizeCategory:a3];
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
  v2 = [(MFMessageDisplayMetrics *)self footerViewDisplayMetrics];
  [v2 toolbarHeight];
  v4 = v3;

  return v4;
}

- (double)footerViewTopToBaseline
{
  v2 = [(MFMessageDisplayMetrics *)self footerViewDisplayMetrics];
  [v2 topToBaseline];
  v4 = v3;

  return v4;
}

- (BOOL)usePhoneLandscapeSymbolConfiguration
{
  v2 = [(MFMessageDisplayMetrics *)self footerViewDisplayMetrics];
  v3 = [v2 usePhoneLandscapeSymbolConfiguration];

  return v3;
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

- (void)setFooterViewDisplayMetrics:(id)a3
{
  v5 = a3;
  if (self->_footerViewDisplayMetrics != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_footerViewDisplayMetrics, a3);
    [(MFMessageDisplayMetrics *)self _calculateFooterViewButtonsAnimationOffset];
    self->_footerViewButtonsAnimationOffset = v6;
    v5 = v7;
  }
}

- (BOOL)conversationHeaderViewShouldHideCollapsedSuperTitle
{
  v2 = [(MFMessageDisplayMetrics *)self footerViewDisplayMetrics];
  [v2 toolbarHeight];
  v4 = v3 < 44.0;

  return v4;
}

- (double)conversationHeaderViewCollapsedTitleTopToFirstBaseline
{
  v2 = [(MFMessageDisplayMetrics *)self conversationHeaderViewShouldHideCollapsedSuperTitle];
  result = 28.0;
  if (v2)
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