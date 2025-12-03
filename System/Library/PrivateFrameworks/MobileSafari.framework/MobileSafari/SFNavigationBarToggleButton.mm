@interface SFNavigationBarToggleButton
+ (CGSize)glyphSize;
+ (UIImage)formatMenuBottomOnlyImage;
+ (id)pageMenuImageWithIntelligence:(BOOL)intelligence usingMulticolorSymbol:(BOOL)symbol;
+ (id)readerImageWithSummary:(BOOL)summary usingMulticolorSymbol:(BOOL)symbol;
- (CGSize)intrinsicContentSize;
- (SFNavigationBarToggleButton)initWithImage:(id)image forInputMode:(unint64_t)mode;
- (UIView)pointerPreviewContainer;
- (id)_createAccessoryImageView;
- (id)_imageForAccessoryItem:(uint64_t)item;
- (id)_leadingBottomView;
- (id)_leadingTopView;
- (id)_resolvedQuaternaryView;
- (id)_resolvedSecondaryView;
- (id)_resolvedTertiaryView;
- (id)_trailingBottomView;
- (id)_trailingTopView;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)preferredSymbolConfigurationForImageAtIndex:(uint64_t)index numberOfAccessories:;
- (void)_colorForAccessoryItem:(void *)item;
- (void)_updateDefaultStateImageView;
- (void)_updateImageViews;
- (void)_updateSelectedStateView;
- (void)intrinsicContentSize;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)setAccessoryItems:(id)items;
- (void)setAccessoryView:(id)view;
- (void)setCornerRoundingMode:(int64_t)mode;
- (void)setGlyphTintColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
- (void)setInsetFromBackground:(double)background;
- (void)setMediaStateIcon:(unint64_t)icon;
- (void)setMinimumSideMargin:(double)margin;
- (void)setOverrideColor:(id)color forAccessory:(int64_t)accessory;
- (void)setPreferredSymbolConfiguration:(id)configuration;
- (void)setResizableBackgroundCornerRadius:(double)radius;
- (void)setSelected:(BOOL)selected;
- (void)setShowsBadge:(BOOL)badge;
- (void)setUsesInsetFromBackground:(BOOL)background;
- (void)tintColorDidChange;
@end

@implementation SFNavigationBarToggleButton

- (void)_updateDefaultStateImageView
{
  if (!self)
  {
    return;
  }

  if ([self tintAdjustmentMode] == 2 || (v2 = *(self + 912)) == 0)
  {
    [self tintColor];
    objc_claimAutoreleasedReturnValue();
  }

  else
  {
    v3 = v2;
  }

  v4 = OUTLINED_FUNCTION_7();
  v7 = v5;
  [v4 setTintColor:v5];
  [*(self + 768) setTintColor:v7];
  if (![self isHighlighted])
  {
    [self isSelected];
LABEL_12:
    [OUTLINED_FUNCTION_7() setAlpha:?];
    goto LABEL_13;
  }

  v6 = *(self + 851);
  [self isSelected];
  if ((v6 & 1) != 0 || ([self isSelected] & 1) == 0)
  {
    goto LABEL_12;
  }

  [OUTLINED_FUNCTION_7() setAlpha:0.0];
LABEL_13:
  OUTLINED_FUNCTION_9(776);
  OUTLINED_FUNCTION_9(784);
  OUTLINED_FUNCTION_9(792);
  OUTLINED_FUNCTION_9(800);
  OUTLINED_FUNCTION_9(824);
}

- (id)_createAccessoryImageView
{
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [v2 setUserInteractionEnabled:0];
    [v2 setContentMode:4];
    v3 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:1];
    v4 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
    v5 = [v3 configurationByApplyingConfiguration:v4];
    [v2 setPreferredSymbolConfiguration:v5];

    [self addSubview:v2];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_updateImageViews
{
  if (!self)
  {
    return;
  }

  v2 = [*(self + 864) count];
  v3 = [OUTLINED_FUNCTION_2_0() count];
  if (*(self + 800))
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = [(SFNavigationBarToggleButton *)self preferredSymbolConfigurationForImageAtIndex:v4 numberOfAccessories:?];
  [OUTLINED_FUNCTION_4(760) setPreferredSymbolConfiguration:?];

  v6 = [(SFNavigationBarToggleButton *)self preferredSymbolConfigurationForImageAtIndex:v4 numberOfAccessories:?];
  [OUTLINED_FUNCTION_4(768) setPreferredSymbolConfiguration:?];

  if (!v2)
  {
    [*(self + 776) setImage:0];
LABEL_8:
    [*(self + 784) setImage:0];
    goto LABEL_9;
  }

  v7 = [OUTLINED_FUNCTION_2_0() objectAtIndexedSubscript:0];
  [v7 unsignedIntegerValue];
  v8 = OUTLINED_FUNCTION_3();
  v10 = [(SFNavigationBarToggleButton *)v8 _imageForAccessoryItem:v9];
  [OUTLINED_FUNCTION_10(776) setImage:?];

  v11 = [OUTLINED_FUNCTION_2_0() objectAtIndexedSubscript:0];
  [v11 unsignedIntegerValue];
  v12 = OUTLINED_FUNCTION_3();
  v14 = [(SFNavigationBarToggleButton *)v12 _colorForAccessoryItem:v13];
  [OUTLINED_FUNCTION_10(776) setTintColor:?];

  v15 = [(SFNavigationBarToggleButton *)self preferredSymbolConfigurationForImageAtIndex:v4 numberOfAccessories:?];
  [OUTLINED_FUNCTION_4(776) setPreferredSymbolConfiguration:?];

  if (v2 == 1)
  {
    goto LABEL_8;
  }

  v18 = [OUTLINED_FUNCTION_2_0() objectAtIndexedSubscript:1];
  [v18 unsignedIntegerValue];
  v19 = OUTLINED_FUNCTION_3();
  v21 = [(SFNavigationBarToggleButton *)v19 _imageForAccessoryItem:v20];
  [OUTLINED_FUNCTION_10(784) setImage:?];

  v22 = [OUTLINED_FUNCTION_2_0() objectAtIndexedSubscript:1];
  [v22 unsignedIntegerValue];
  v23 = OUTLINED_FUNCTION_3();
  v25 = [(SFNavigationBarToggleButton *)v23 _colorForAccessoryItem:v24];
  [OUTLINED_FUNCTION_10(784) setTintColor:?];

  v26 = [(SFNavigationBarToggleButton *)self preferredSymbolConfigurationForImageAtIndex:v4 numberOfAccessories:?];
  [OUTLINED_FUNCTION_4(784) setPreferredSymbolConfiguration:?];

  if (v2 >= 3 && !*(self + 800))
  {
    v27 = [OUTLINED_FUNCTION_2_0() objectAtIndexedSubscript:2];
    [v27 unsignedIntegerValue];
    v28 = OUTLINED_FUNCTION_3();
    v30 = [(SFNavigationBarToggleButton *)v28 _imageForAccessoryItem:v29];
    [OUTLINED_FUNCTION_4(792) setImage:?];

    v31 = [OUTLINED_FUNCTION_2_0() objectAtIndexedSubscript:2];
    [v31 unsignedIntegerValue];
    v32 = OUTLINED_FUNCTION_3();
    v34 = [(SFNavigationBarToggleButton *)v32 _colorForAccessoryItem:v33];
    [OUTLINED_FUNCTION_4(792) setTintColor:?];

    v35 = [(SFNavigationBarToggleButton *)self preferredSymbolConfigurationForImageAtIndex:v4 numberOfAccessories:?];
    [OUTLINED_FUNCTION_6(792) setPreferredSymbolConfiguration:?];

    goto LABEL_10;
  }

LABEL_9:
  [*(self + 792) setImage:0];
LABEL_10:
  v16 = [(SFNavigationBarToggleButton *)self _colorForAccessoryItem:?];
  accessoryView = [self accessoryView];
  [accessoryView setTintColor:v16];

  [(SFNavigationBarToggleButton *)self _updateDefaultStateImageView];

  [(SFNavigationBarToggleButton *)self _updateSelectedStateView];
}

- (void)_updateSelectedStateView
{
  if (self)
  {
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [*(self + 816) setBackgroundColor:?];
    if ([self isSelected])
    {
      v2 = *(self + 752);
    }

    else
    {
      v2 = 0;
    }

    if ([systemBlueColor sf_isDarkColor])
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] blackColor];
    }
    v3 = ;
    v4 = [v3 colorWithAlphaComponent:(v2 & 1)];
    [self setBackgroundColor:v4];

    if (v2)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(self + 896);
    }

    v6 = *(self + 808);
    if (v6 && v6[53] != v5)
    {
      v6[53] = v5;
      [v6 setNeedsLayout];
    }

    if ([self isHighlighted])
    {
      if (*(self + 851))
      {
        isSelected = 1;
      }

      else
      {
        isSelected = [self isSelected];
      }
    }

    else
    {
      isSelected = 0;
    }

    isSelected2 = [self isSelected];
    v9 = *(self + 816);
    if (isSelected2)
    {
      if (isSelected)
      {
        v10 = 0.8;
      }

      else
      {
        v10 = 1.0;
      }

      [v9 setAlpha:v10];
      if ([MEMORY[0x1E69C8880] isSolariumEnabled])
      {
        [OUTLINED_FUNCTION_7() setAlpha:v10];
        if ([systemBlueColor sf_isDarkColor])
        {
          [MEMORY[0x1E69DC888] whiteColor];
        }

        else
        {
          [MEMORY[0x1E69DC888] blackColor];
        }
        v12 = ;
        [OUTLINED_FUNCTION_6(760) setTintColor:?];
      }
    }

    else
    {
      v11 = 0.2;
      if (!isSelected)
      {
        v11 = 0.0;
      }

      [v9 setAlpha:v11];
    }

    if ([self isSelected])
    {
      traitCollection = [self traitCollection];
      [traitCollection userInterfaceStyle];
    }

    [OUTLINED_FUNCTION_6(776) setOverrideUserInterfaceStyle:?];
    [OUTLINED_FUNCTION_6(784) setOverrideUserInterfaceStyle:?];
    [OUTLINED_FUNCTION_6(800) setOverrideUserInterfaceStyle:?];
  }
}

+ (CGSize)glyphSize
{
  v2 = 40.0;
  v3 = 36.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)pageMenuImageWithIntelligence:(BOOL)intelligence usingMulticolorSymbol:(BOOL)symbol
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (intelligence)
  {
    symbolCopy = symbol;
    v5 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"apple.page.menu.badge.sparkles"];
    if (symbolCopy)
    {
      v6 = MEMORY[0x1E69DCAD8];
      v7 = badgeTintColor();
      v13[0] = v7;
      tintColor = [MEMORY[0x1E69DC888] tintColor];
      v13[1] = tintColor;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
      v10 = [v6 configurationWithPaletteColors:v9];
      v11 = [v5 imageWithSymbolConfiguration:v10];

      v5 = v11;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E69DCAB8] _systemImageNamed:{@"apple.page.menu", symbol}];
  }

  return v5;
}

+ (id)readerImageWithSummary:(BOOL)summary usingMulticolorSymbol:(BOOL)symbol
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (summary)
  {
    symbolCopy = symbol;
    v5 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"text.page.badge.sparkles"];
    if (symbolCopy)
    {
      v6 = MEMORY[0x1E69DCAD8];
      v7 = badgeTintColor();
      v13[0] = v7;
      tintColor = [MEMORY[0x1E69DC888] tintColor];
      v13[1] = tintColor;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
      v10 = [v6 configurationWithPaletteColors:v9];
      v11 = [v5 imageWithSymbolConfiguration:v10];

      v5 = v11;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"text.page", symbol}];
  }

  return v5;
}

+ (UIImage)formatMenuBottomOnlyImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v2 imageNamed:@"text.below.spacer" inBundle:v3 withConfiguration:0];

  return v4;
}

- (SFNavigationBarToggleButton)initWithImage:(id)image forInputMode:(unint64_t)mode
{
  imageCopy = image;
  v10.receiver = self;
  v10.super_class = SFNavigationBarToggleButton;
  v7 = [(SFNavigationBarToggleButton *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    [(SFNavigationBarToggleButton *)v7 initWithImage:imageCopy forInputMode:mode];
  }

  return v8;
}

- (void)setOverrideColor:(id)color forAccessory:(int64_t)accessory
{
  colorCopy = color;
  accessoryColorOverrides = self->_accessoryColorOverrides;
  if (!accessoryColorOverrides)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v8 = self->_accessoryColorOverrides;
    self->_accessoryColorOverrides = dictionary;

    accessoryColorOverrides = self->_accessoryColorOverrides;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:accessory];
  [(NSMutableDictionary *)accessoryColorOverrides setObject:colorCopy forKeyedSubscript:v9];
}

- (void)setAccessoryItems:(id)items
{
  itemsCopy = items;
  if ((WBSIsEqual() & 1) == 0)
  {
    v4 = [itemsCopy copy];
    accessoryItems = self->_accessoryItems;
    self->_accessoryItems = v4;

    [(SFNavigationBarToggleButton *)self _updateImageViews];
    [(SFNavigationBarToggleButton *)self invalidateIntrinsicContentSize];
    [(SFNavigationBarToggleButton *)self setNeedsLayout];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_image, image);
    [(UIImageView *)self->_selectedStateImageView setImage:imageCopy];
    [(UIImageView *)self->_defaultStateImageView setImage:imageCopy];
    [(SFNavigationBarToggleButton *)self setNeedsLayout];
  }
}

- (void)setAccessoryView:(id)view
{
  viewCopy = view;
  accessoryView = self->_accessoryView;
  if (accessoryView != viewCopy)
  {
    v8 = viewCopy;
    if (viewCopy)
    {
      v7 = [(NSArray *)self->_accessoryItems count];
      viewCopy = v8;
      if (v7 > 1)
      {
        goto LABEL_7;
      }

      [(SFNavigationBarToggleButton *)self addSubview:v8];
    }

    else
    {
      [(UIView *)accessoryView removeFromSuperview];
    }

    objc_storeStrong(&self->_accessoryView, view);
    [(SFNavigationBarToggleButton *)self setNeedsLayout];
    viewCopy = v8;
  }

LABEL_7:
}

- (void)setMediaStateIcon:(unint64_t)icon
{
  if (self->_mediaStateIcon != icon)
  {
    self->_mediaStateIcon = icon;
    [(SFNavigationBarToggleButton *)self _updateImageViews];
  }
}

- (void)setMinimumSideMargin:(double)margin
{
  if (self->_minimumSideMargin != margin)
  {
    self->_minimumSideMargin = margin;
    [(SFNavigationBarToggleButton *)self invalidateIntrinsicContentSize];
  }
}

- (void)setShowsBadge:(BOOL)badge
{
  if (self->_showsBadge != badge)
  {
    self->_showsBadge = badge;
    [(UIView *)self->_badgeView setHidden:!badge];
  }
}

- (void)layoutSubviews
{
  v99.receiver = self;
  v99.super_class = SFNavigationBarToggleButton;
  [(SFNavigationBarToggleButton *)&v99 layoutSubviews];
  _sf_usesLeftToRightLayout = [(UIView *)self _sf_usesLeftToRightLayout];
  [(SFNavigationBarToggleButton *)self bounds];
  x = v100.origin.x;
  y = v100.origin.y;
  v98 = v100.origin.y;
  width = v100.size.width;
  height = v100.size.height;
  v90 = CGRectGetWidth(v100);
  v101.origin.x = x;
  v101.origin.y = y;
  v101.size.width = width;
  v101.size.height = height;
  rect_24 = CGRectGetHeight(v101);
  _leadingTopView = [(SFNavigationBarToggleButton *)&self->super.super.super.super.super.super.isa _leadingTopView];
  _leadingBottomView = [(SFNavigationBarToggleButton *)&self->super.super.super.super.super.super.isa _leadingBottomView];
  _trailingTopView = [(SFNavigationBarToggleButton *)&self->super.super.super.super.super.super.isa _trailingTopView];
  _trailingBottomView = [(SFNavigationBarToggleButton *)&self->super.super.super.super.super.super.isa _trailingBottomView];
  v12 = *MEMORY[0x1E695F060];
  v13 = *(MEMORY[0x1E695F060] + 8);
  [_leadingTopView sizeThatFits:{*MEMORY[0x1E695F060], v13}];
  v15 = v14;
  [_leadingBottomView sizeThatFits:{v12, v13}];
  v17 = v16;
  [_trailingTopView sizeThatFits:{v12, v13}];
  v19 = v18;
  [_trailingBottomView sizeThatFits:{v12, v13}];
  v93 = fmax(v15, v17);
  rect_16 = width;
  v92 = fmax(v19, v20);
  v21 = 1.0;
  if (!_trailingTopView)
  {
    v21 = 0.0;
  }

  v22 = v21 + width - v92;
  v23 = *MEMORY[0x1E695EFF8];
  v24 = *(MEMORY[0x1E695EFF8] + 8);
  [(UIImageView *)self->_defaultStateImageView sizeThatFits:v12, v13, *&v90];
  [(UIImageView *)self->_defaultStateImageView alignmentRectForFrame:v23, v24, v25, v26];
  rect = x;
  v32 = _SFCGRectOfSizeAlignedWithinRect(0, 0, v27, v28, x, v98, v22, height);
  v33 = v29;
  v34 = v30;
  v35 = v31;
  if (self->_minimumSideMargin != 0.0)
  {
    if (_sf_usesLeftToRightLayout)
    {
      v36 = v32;
      v32 = fmax(CGRectGetMinX(*(&v29 - 1)), self->_minimumSideMargin);
    }

    else
    {
      v102.origin.x = x;
      v102.origin.y = v98;
      v102.size.width = width;
      v102.size.height = height;
      v37 = CGRectGetWidth(v102);
      v103.origin.x = v32;
      v103.origin.y = v33;
      v103.size.width = v34;
      v103.size.height = v35;
      v32 = v37 - fmax(CGRectGetMaxX(v103), self->_minimumSideMargin);
    }
  }

  [(UIImageView *)self->_defaultStateImageView frameForAlignmentRect:v32, v33, v34, v35];
  v39 = _SFRoundRectToPixels(v38);
  v41 = v40;
  v43 = v42;
  v45 = v44;
  [(UIImageView *)self->_defaultStateImageView setFrame:?];
  [(UIImageView *)self->_selectedStateImageView setFrame:v39, v41, v43, v45];
  v46 = fmax(v43, v93);
  if (_leadingBottomView)
  {
    v46 = v93;
  }

  v94 = v46;
  if (self->_inputMode == 1)
  {
    v47 = fmin(v91, rect_24);
    v48 = rect;
    if (self->_accessoryView || ([(UIImageView *)self->_secondaryImageView image], v49 = objc_claimAutoreleasedReturnValue(), v49, v50 = v47, v49))
    {
      v50 = v91;
    }

    p_selectedStateMaskView = &self->_selectedStateMaskView;
    [(SFToggleBackgroundView *)self->_selectedStateMaskView setBounds:0.0, 0.0, v50, v47];
    UIRectGetCenter();
    [(SFToggleBackgroundView *)self->_selectedStateMaskView setCenter:?];
    isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
    v53 = 12.0;
    if (isSolariumEnabled)
    {
      v104.origin.x = rect;
      v104.origin.y = v98;
      v104.size.width = rect_16;
      v104.size.height = height;
      v53 = CGRectGetHeight(v104) * 0.5;
    }

    v54 = rect_24;
  }

  else
  {
    v54 = rect_24;
    insetFromBackground = 0.0;
    v48 = rect;
    if (self->_usesInsetFromBackground)
    {
      insetFromBackground = self->_insetFromBackground;
    }

    v105.origin.x = rect;
    v105.origin.y = v98;
    v105.size.height = height;
    v105.size.width = rect_16;
    v106 = CGRectInset(v105, insetFromBackground, insetFromBackground);
    p_selectedStateMaskView = &self->_selectedStateMaskView;
    [(SFToggleBackgroundView *)self->_selectedStateMaskView setFrame:v106.origin.x, v106.origin.y, v106.size.width, v106.size.height];
    v53 = _SFContinuousCornerRadiusMatchingRadiusWithInset(self->_resizableBackgroundCornerRadius, insetFromBackground);
  }

  [(SFToggleBackgroundView *)*p_selectedStateMaskView _setContinuousCornerRadius:v53];
  v107.origin.x = v39;
  v107.origin.y = v41;
  v107.size.width = v43;
  v107.size.height = v45;
  MinX = CGRectGetMinX(v107);
  v108.origin.x = v39;
  v108.origin.y = v41;
  v108.size.width = v43;
  v108.size.height = v45;
  [(UIView *)self->_tiplessPopoverSourceView setFrame:MinX, 7.0, CGRectGetWidth(v108), v54];
  v57 = v39;
  v58 = v41;
  v59 = v43;
  v60 = v45;
  if (_sf_usesLeftToRightLayout)
  {
    v61 = CGRectGetMaxX(*&v57) + -5.0;
  }

  else
  {
    v61 = CGRectGetMinX(*&v57);
  }

  [(UIView *)self->_badgeView setFrame:v61, v41, 5.0, 5.0];
  [(UIImageView *)self->_defaultStateImageView setHidden:_leadingBottomView != 0];
  [(UIImageView *)self->_selectedStateImageView setHidden:_leadingBottomView != 0];
  v62 = v39;
  v63 = v41;
  v64 = v43;
  v65 = v45;
  if (_sf_usesLeftToRightLayout)
  {
    v66 = CGRectGetMinX(*&v62);
  }

  else
  {
    v66 = CGRectGetMaxX(*&v62) - v94;
  }

  v67 = [(NSArray *)self->_accessoryItems count];
  if (self->_accessoryView)
  {
    v68 = v67 + 1;
  }

  else
  {
    v68 = v67;
  }

  if (v68 == 2)
  {
    v109.origin.x = v48;
    v109.origin.y = v98;
    v109.size.height = height;
    v109.size.width = rect_16;
    CGRectGetHeight(v109);
  }

  else
  {
    v110.origin.x = v39;
    v110.origin.y = v41;
    v110.size.width = v43;
    v110.size.height = v45;
    CGRectGetMinY(v110);
  }

  v69 = _SFRoundRectToPixels(v66);
  v71 = v70;
  v73 = v72;
  v75 = v74;
  [_leadingTopView setFrame:?];
  v111.origin.x = v69;
  v111.origin.y = v71;
  v111.size.width = v73;
  v111.size.height = v75;
  CGRectGetMaxY(v111);
  [_leadingBottomView setFrame:_SFRoundRectToPixels(v66)];
  v76 = v69;
  v77 = v71;
  v78 = v73;
  v79 = v75;
  if (_sf_usesLeftToRightLayout)
  {
    v80 = CGRectGetMaxX(*&v76) + 1.0;
  }

  else
  {
    v80 = CGRectGetMinX(*&v76) - v92 + -1.0;
  }

  v81 = _SFRoundRectToPixels(v80);
  v83 = v82;
  v85 = v84;
  v87 = v86;
  [_trailingTopView setFrame:?];
  v112.origin.x = v81;
  v112.origin.y = v83;
  v112.size.width = v85;
  v112.size.height = v87;
  CGRectGetMaxY(v112);
  [_trailingBottomView setFrame:_SFRoundRectToPixels(v80)];
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v113.origin.x = rect;
    v113.size.height = height;
    v113.origin.y = v98;
    v113.size.width = rect_16;
    v88 = CGRectGetHeight(v113) * 0.5;
    layer = [(SFNavigationBarToggleButton *)self layer];
    [layer setCornerRadius:v88];
  }
}

- (CGSize)intrinsicContentSize
{
  if (self->_minimumSideMargin == 0.0)
  {
    v4.receiver = self;
    v4.super_class = SFNavigationBarToggleButton;
    [(SFNavigationBarToggleButton *)&v4 intrinsicContentSize];
  }

  else
  {
    [(SFNavigationBarToggleButton *)&self->super.super.super.super.super.super.isa intrinsicContentSize];
    v2 = *v5;
    v3 = *&v5[1];
  }

  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setGlyphTintColor:(id)color
{
  obj = color;
  if ((WBSIsEqual() & 1) == 0)
  {
    [(SFNavigationBarToggleButton *)obj setGlyphTintColor:self];
  }
}

- (void)setPreferredSymbolConfiguration:(id)configuration
{
  configurationCopy = configuration;
  preferredSymbolConfiguration = self->_preferredSymbolConfiguration;
  if (preferredSymbolConfiguration != configurationCopy)
  {
    v8 = configurationCopy;
    v7 = [(UIImageSymbolConfiguration *)preferredSymbolConfiguration isEqualToConfiguration:configurationCopy];
    configurationCopy = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_preferredSymbolConfiguration, configuration);
      [(SFNavigationBarToggleButton *)self _updateImageViews];
      configurationCopy = v8;
    }
  }
}

- (void)setResizableBackgroundCornerRadius:(double)radius
{
  if (self->_resizableBackgroundCornerRadius != radius)
  {
    self->_resizableBackgroundCornerRadius = radius;
    [(SFNavigationBarToggleButton *)self setNeedsLayout];
  }
}

- (void)setInsetFromBackground:(double)background
{
  if (self->_insetFromBackground != background)
  {
    self->_insetFromBackground = background;
    [(SFNavigationBarToggleButton *)self setNeedsLayout];
  }
}

- (void)setUsesInsetFromBackground:(BOOL)background
{
  backgroundCopy = background;
  if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0 && self->_usesInsetFromBackground != backgroundCopy)
  {
    self->_usesInsetFromBackground = backgroundCopy;

    [(SFNavigationBarToggleButton *)self setNeedsLayout];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v8.receiver = self;
  v8.super_class = SFNavigationBarToggleButton;
  if ([(SFNavigationBarToggleButton *)&v8 isHighlighted]!= highlighted)
  {
    v7.receiver = self;
    v7.super_class = SFNavigationBarToggleButton;
    [(SFNavigationBarToggleButton *)&v7 setHighlighted:highlightedCopy];
    v5 = 0.2;
    if (highlightedCopy)
    {
      v5 = 0.0;
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__SFNavigationBarToggleButton_setHighlighted___block_invoke;
    v6[3] = &unk_1E721B360;
    v6[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:50659332 delay:v6 options:0 animations:v5 completion:0.0];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v9.receiver = self;
  v9.super_class = SFNavigationBarToggleButton;
  if ([(SFNavigationBarToggleButton *)&v9 isSelected]!= selected)
  {
    v8.receiver = self;
    v8.super_class = SFNavigationBarToggleButton;
    [(SFNavigationBarToggleButton *)&v8 setSelected:selectedCopy];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__SFNavigationBarToggleButton_setSelected___block_invoke;
    v7[3] = &unk_1E721B360;
    v7[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:50659332 delay:v7 options:0 animations:0.25 completion:0.0];
    v5 = 0.195;
    if (selectedCopy)
    {
      v5 = 0.205;
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__SFNavigationBarToggleButton_setSelected___block_invoke_2;
    v6[3] = &unk_1E721B360;
    v6[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:50659332 delay:v6 options:0 animations:v5 completion:0.0];
    [(UIPointerInteraction *)self->_pointerInteraction invalidate];
  }
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = [(SFNavigationBarToggleButton *)self superview:interaction];
  WeakRetained = objc_loadWeakRetained(&self->_pointerPreviewContainer);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  [(SFNavigationBarToggleButton *)self center];
  [v9 convertPoint:v5 fromView:?];
  v12 = [objc_alloc(MEMORY[0x1E69DCE38]) initWithContainer:v9 center:{v10, v11}];

  v13 = objc_alloc(MEMORY[0x1E69DD070]);
  v14 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  v15 = [v13 initWithView:self parameters:v14 target:v12];

  if ([(SFNavigationBarToggleButton *)self isSelected])
  {
    v16 = MEMORY[0x1E69DCDC8];
    superview = [(SFNavigationBarToggleButton *)self superview];
    [(SFToggleBackgroundView *)self->_selectedStateMaskView bounds];
    [superview convertRect:self->_selectedStateMaskView fromView:?];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [(SFToggleBackgroundView *)self->_selectedStateMaskView _continuousCornerRadius];
    v27 = [v16 shapeWithRoundedRect:v19 cornerRadius:{v21, v23, v25, v26}];

    v28 = 0x1E69DCDB8;
  }

  else
  {
    v29 = MEMORY[0x1E69DCDC8];
    if (self->_inputMode)
    {
      [MEMORY[0x1E69DCDC8] sf_shapeForToolbarButton:self];
    }

    else
    {
      [(SFNavigationBarToggleButton *)self frame];
      v35 = CGRectInset(v34, 2.0, 2.0);
      [v29 shapeWithRoundedRect:v35.origin.x cornerRadius:{v35.origin.y, v35.size.width, v35.size.height, self->_resizableBackgroundCornerRadius + -2.0}];
    }
    v27 = ;
    v28 = 0x1E69DCD98;
  }

  v30 = [*v28 effectWithPreview:v15];
  v31 = [MEMORY[0x1E69DCDD0] styleWithEffect:v30 shape:v27];

  return v31;
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  self->_liftedForCursor = 1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__SFNavigationBarToggleButton_pointerInteraction_willEnterRegion_animator___block_invoke;
  v5[3] = &unk_1E721B360;
  v5[4] = self;
  [animator addAnimations:{v5, region}];
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  self->_liftedForCursor = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__SFNavigationBarToggleButton_pointerInteraction_willExitRegion_animator___block_invoke;
  v5[3] = &unk_1E721B360;
  v5[4] = self;
  [animator addAnimations:{v5, region}];
}

- (UIView)pointerPreviewContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_pointerPreviewContainer);

  return WeakRetained;
}

- (id)_imageForAccessoryItem:(uint64_t)item
{
  if (!item)
  {
    goto LABEL_6;
  }

  if (a2 == 4)
  {
    v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"eye.slash"];
    goto LABEL_9;
  }

  if (a2 == 3)
  {
    v4 = _SFImageForMediaStateIcon(*(item + 872));
    v3 = [v4 imageWithRenderingMode:2];

    goto LABEL_10;
  }

  if (a2 != 2)
  {
LABEL_6:
    v3 = 0;
    goto LABEL_10;
  }

  v2 = +[SFNavigationBarToggleButton extensionsImage];
LABEL_9:
  v3 = v2;
LABEL_10:

  return v3;
}

- (void)_colorForAccessoryItem:(void *)item
{
  itemCopy = item;
  if (item)
  {
    if (![item isSelected] || !objc_msgSend(MEMORY[0x1E69C8880], "isSolariumEnabled"))
    {
      v6 = itemCopy[105];
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
      traitCollection = [v6 objectForKeyedSubscript:v7];

      switch(a2)
      {
        case 0:
        case 1:
          if (traitCollection)
          {
            goto LABEL_15;
          }

          glyphTintColor = [itemCopy glyphTintColor];
          goto LABEL_16;
        case 2:
          if (traitCollection)
          {
            goto LABEL_15;
          }

          glyphTintColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
          goto LABEL_16;
        case 3:
          if (traitCollection)
          {
LABEL_15:
            glyphTintColor = traitCollection;
            traitCollection = glyphTintColor;
          }

          else
          {
            glyphTintColor = SFColorForMediaStateIcon(itemCopy[109], 1);
          }

          goto LABEL_16;
        case 4:
          glyphTintColor = [MEMORY[0x1E69DC888] safari_scribbleThemeColor];
          goto LABEL_16;
        default:
          goto LABEL_17;
      }
    }

    traitCollection = [itemCopy traitCollection];
    if ([traitCollection userInterfaceStyle] == 1)
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] blackColor];
    }
    glyphTintColor = ;
LABEL_16:
    itemCopy = glyphTintColor;
LABEL_17:
  }

  return itemCopy;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = SFNavigationBarToggleButton;
  [(SFNavigationBarToggleButton *)&v3 tintColorDidChange];
  [(SFNavigationBarToggleButton *)self _updateDefaultStateImageView];
  [(SFNavigationBarToggleButton *)self _updateSelectedStateView];
  [(SFNavigationBarToggleButton *)self _updateImageViews];
}

- (id)_leadingTopView
{
  if (self)
  {
    self = [(SFNavigationBarToggleButton *)self _resolvedSecondaryView];
    v1 = vars8;
  }

  return self;
}

- (id)_leadingBottomView
{
  if (self)
  {
    selfCopy = self;
    _resolvedQuaternaryView = [(SFNavigationBarToggleButton *)self _resolvedQuaternaryView];

    if (_resolvedQuaternaryView)
    {
      self = 0;
    }

    else
    {
      self = [(SFNavigationBarToggleButton *)selfCopy _resolvedTertiaryView];
    }

    v1 = vars8;
  }

  return self;
}

- (id)_trailingTopView
{
  if (self)
  {
    selfCopy = self;
    _resolvedQuaternaryView = [(SFNavigationBarToggleButton *)self _resolvedQuaternaryView];

    if (_resolvedQuaternaryView)
    {
      self = [(SFNavigationBarToggleButton *)selfCopy _resolvedTertiaryView];
    }

    else
    {
      self = 0;
    }

    v1 = vars8;
  }

  return self;
}

- (id)_trailingBottomView
{
  if (self)
  {
    self = [(SFNavigationBarToggleButton *)self _resolvedQuaternaryView];
    v1 = vars8;
  }

  return self;
}

- (id)_resolvedSecondaryView
{
  selfCopy = self;
  if (self)
  {
    image = [self[97] image];
    OUTLINED_FUNCTION_5();
    selfCopy = *(selfCopy + v3);
  }

  return selfCopy;
}

- (id)_resolvedTertiaryView
{
  selfCopy = self;
  if (self)
  {
    _resolvedSecondaryView = [(SFNavigationBarToggleButton *)self _resolvedSecondaryView];
    v3 = selfCopy[100];

    if (_resolvedSecondaryView == v3)
    {
      selfCopy = 0;
    }

    else
    {
      image = [selfCopy[98] image];
      OUTLINED_FUNCTION_5();
      selfCopy = *(selfCopy + v5);
    }
  }

  return selfCopy;
}

- (id)_resolvedQuaternaryView
{
  selfCopy = self;
  if (self)
  {
    _resolvedSecondaryView = [(SFNavigationBarToggleButton *)self _resolvedSecondaryView];
    if (_resolvedSecondaryView == selfCopy[100])
    {
      selfCopy = 0;
LABEL_4:

      goto LABEL_5;
    }

    _resolvedTertiaryView = [(SFNavigationBarToggleButton *)selfCopy _resolvedTertiaryView];
    v5 = selfCopy[100];

    if (_resolvedTertiaryView != v5)
    {
      _resolvedSecondaryView = [selfCopy[99] image];
      OUTLINED_FUNCTION_5();
      selfCopy = *(selfCopy + v6);
      goto LABEL_4;
    }

    selfCopy = 0;
  }

LABEL_5:

  return selfCopy;
}

- (id)preferredSymbolConfigurationForImageAtIndex:(uint64_t)index numberOfAccessories:
{
  if (self)
  {
    if (a2 > 1)
    {
      v3 = MEMORY[0x1E69DB878];
      v4 = *MEMORY[0x1E69DB970];
      v5 = 10.0;
      goto LABEL_6;
    }

    if (index == 2)
    {
      v3 = MEMORY[0x1E69DB878];
      v4 = *MEMORY[0x1E69DB970];
      v5 = 11.0;
LABEL_6:
      v6 = [v3 systemFontOfSize:v5 weight:v4];
      defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
      v8 = [defaultMetrics scaledFontForFont:v6];

      v9 = [MEMORY[0x1E69DCAD8] configurationWithFont:v8];
LABEL_7:
      v10 = v9;

      goto LABEL_8;
    }

    if (a2)
    {
      v6 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:1];
      v8 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
      v9 = [v6 configurationByApplyingConfiguration:v8];
      goto LABEL_7;
    }

    v10 = *(self + 920);
  }

  else
  {
    v10 = 0;
  }

LABEL_8:

  return v10;
}

- (void)setCornerRoundingMode:(int64_t)mode
{
  if (self->_cornerRoundingMode != mode)
  {
    self->_cornerRoundingMode = mode;
    selectedStateMaskView = self->_selectedStateMaskView;
    if (selectedStateMaskView)
    {
      if (selectedStateMaskView->_cornerRoundingMode != mode)
      {
        selectedStateMaskView->_cornerRoundingMode = mode;
        [(SFToggleBackgroundView *)selectedStateMaskView setNeedsLayout];
      }
    }
  }
}

void __43__SFNavigationBarToggleButton_setSelected___block_invoke(uint64_t a1)
{
  [(SFNavigationBarToggleButton *)*(a1 + 32) _updateImageViews];
  v2 = *(a1 + 32);

  [(SFNavigationBarToggleButton *)v2 _updateDefaultStateImageView];
}

void __43__SFNavigationBarToggleButton_setSelected___block_invoke_2(uint64_t a1)
{
  [(SFNavigationBarToggleButton *)*(a1 + 32) _updateImageViews];
  v2 = *(a1 + 32);

  [(SFNavigationBarToggleButton *)v2 _updateSelectedStateView];
}

- (void)initWithImage:(uint64_t)a3 forInputMode:.cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  objc_storeStrong((a1 + 856), a2);
  *(a1 + 832) = a3;
  *(a1 + 896) = a3 != 1;
  *(a1 + 904) = _SFOnePixel();
  v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v6 = *(a1 + 944);
  *(a1 + 944) = v5;

  [*(a1 + 944) setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(a1 + 944) setUserInteractionEnabled:0];
  [a1 addSubview:*(a1 + 944)];
  v7 = objc_alloc_init(SFToggleBackgroundView);
  v8 = *(a1 + 808);
  *(a1 + 808) = v7;

  v9 = a1;
  v10 = *(a1 + 808);
  if (v10)
  {
    v11 = *(a1 + 896);
    if (v10[53] != v11)
    {
      v10[53] = v11;
      [v10 setNeedsLayout];
      v9 = a1;
      v10 = *(a1 + 808);
    }
  }

  [v9 setMaskView:v10];
  v12 = objc_alloc(MEMORY[0x1E69DD250]);
  [a1 bounds];
  v13 = [v12 initWithFrame:?];
  v14 = *(a1 + 816);
  *(a1 + 816) = v13;

  [*(a1 + 816) setAutoresizingMask:18];
  [*(a1 + 816) setUserInteractionEnabled:0];
  [*(a1 + 816) setAlpha:0.0];
  if (![MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:a2];
    v16 = *(a1 + 768);
    *(a1 + 768) = v15;

    v17 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
    v18 = [*(a1 + 768) layer];
    [v18 setCompositingFilter:v17];

    [*(a1 + 816) addSubview:*(a1 + 768)];
  }

  [a1 addSubview:*(a1 + 816)];
  v19 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:a2];
  v20 = *(a1 + 760);
  *(a1 + 760) = v19;

  [*(a1 + 760) setUserInteractionEnabled:0];
  [a1 addSubview:*(a1 + 760)];
  v21 = [(SFNavigationBarToggleButton *)a1 _createAccessoryImageView];
  OUTLINED_FUNCTION_8(v21, 776, v62, a1);
  v22 = [(SFNavigationBarToggleButton *)v70 _createAccessoryImageView];
  OUTLINED_FUNCTION_8(v22, 784, v63, v70);
  v23 = [(SFNavigationBarToggleButton *)v71 _createAccessoryImageView];
  OUTLINED_FUNCTION_8(v23, 792, v64, v71);
  v24 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v25 = v72[103];
  v72[103] = v24;

  [OUTLINED_FUNCTION_11(v26 v27];
  v34 = [MEMORY[0x1E69DC888] systemBlueColor];
  [OUTLINED_FUNCTION_11(v34 v35];

  v50 = [OUTLINED_FUNCTION_11(v42 v43];
  [OUTLINED_FUNCTION_11(v50 v51];
  [v76 addSubview:v76[103]];
  v58 = [MEMORY[0x1E69DC888] labelColor];
  [v76 setGlyphTintColor:v58];

  v59 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v76];
  v60 = v76[116];
  v76[116] = v59;

  [v76 addInteraction:v76[116]];

  return v76;
}

- (void)intrinsicContentSize
{
  _leadingTopView = [(SFNavigationBarToggleButton *)self _leadingTopView];
  _leadingBottomView = [(SFNavigationBarToggleButton *)self _leadingBottomView];
  _trailingTopView = [(SFNavigationBarToggleButton *)self _trailingTopView];
  _trailingBottomView = [(SFNavigationBarToggleButton *)self _trailingBottomView];
  OUTLINED_FUNCTION_12(_leadingTopView, v9);
  v11 = v10;
  OUTLINED_FUNCTION_12(_leadingBottomView, v12);
  v14 = v13;
  OUTLINED_FUNCTION_12(_trailingTopView, v15);
  v17 = v16;
  OUTLINED_FUNCTION_12(_trailingBottomView, v18);
  if (v11 <= v14)
  {
    v20 = v14;
  }

  else
  {
    v20 = v11;
  }

  v21 = *a2;
  v22 = *a2 + fmax(v20, 30.34);
  v23 = fmax(v17, v19) + 1.0;
  if (!_trailingTopView)
  {
    v23 = 0.0;
  }

  *(a3 + 8) = 0x4035000000000000;
  *a3 = v21 + v22 + v23;
}

- (uint64_t)setGlyphTintColor:(void *)a3 .cold.1(id obj, id *location, void *a3)
{
  objc_storeStrong(location, obj);
  [(SFNavigationBarToggleButton *)a3 _updateImageViews];

  return [a3 setTintColor:obj];
}

@end