@interface CNAtomView
+ (BOOL)presentationOptions:(unint64_t *)a3 encodedIntoAddress:(id)a4;
+ (CGPoint)defaultBaselinePoint;
+ (id)_badgeImagesForPresentationOptions:(unint64_t)a3 iconOrder:(const unint64_t *)a4 orderingLength:(unint64_t)a5 tintColor:(id)a6 large:(BOOL)a7 variant:(int)a8;
+ (id)_badgeImagesForPresentationOptions:(unint64_t)a3 iconOrder:(const unint64_t *)a4 orderingLength:(unint64_t)a5 tintColor:(id)a6 large:(BOOL)a7 variant:(int)a8 selected:(BOOL)a9;
+ (id)_defaultLabelAttributesWithFont:(id)a3 wrappingEnabled:(BOOL)a4;
+ (id)_defaultLabelAttributesWithWrappingEnabled:(BOOL)a3;
+ (id)_faceTimeTintColor;
+ (id)_newTextLabel;
+ (id)defaultFont;
+ (id)primaryAtomFont;
- (BOOL)appearsSelected;
- (BOOL)isWrappingEnabled;
- (BOOL)separatorHidden;
- (CGPoint)baselinePoint;
- (CGRect)selectionFrame;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CNAtomView)initWithFrame:(CGRect)a3 presentationOptions:(unint64_t)a4 separatorStyle:(int)a5 wrappingSupported:(BOOL)a6;
- (NSString)description;
- (UIColor)effectiveTintColor;
- (UIEdgeInsets)edgeInsets;
- (UIFont)titleFont;
- (double)_leftPadding;
- (double)_rightInset;
- (double)_rightPadding;
- (double)preferredWidthWithSizeConstraints:(CGSize)a3;
- (id)_centeredTextAttachmentWithImage:(id)a3;
- (id)_chevronTextAttachment;
- (int)_preferredIconVariant;
- (int)separatorStyle;
- (void)_invalidatePresentationOptions;
- (void)_setEffectiveTintColor:(id)a3;
- (void)_setPresentationOption:(unint64_t)a3 enabled:(BOOL)a4;
- (void)_setupOverlayLabelForNonColoredGlyphs;
- (void)_updateActivityIndicator;
- (void)_updateCompositingFilters;
- (void)_updateFontIfNecessary;
- (void)_updateIconViewsSemanticContentAttribute;
- (void)_updateLabelAttributes;
- (void)_updateOverlayLabelText;
- (void)_updateSubviewsForWrapping;
- (void)displaySelectionChangeWithAnimation:(BOOL)a3;
- (void)layoutSubviews;
- (void)performBuildInAnimationFromTextColor:(id)a3 withDuration:(double)a4;
- (void)setFirstLineIndent:(double)a3;
- (void)setIsPrimaryAddressAtom:(BOOL)a3;
- (void)setPresentationOptions:(unint64_t)a3;
- (void)setScale:(double)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4 style:(unint64_t)a5;
- (void)setSeparatorHidden:(BOOL)a3;
- (void)setSeparatorIsLeftAligned:(BOOL)a3;
- (void)setSeparatorStyle:(int)a3;
- (void)setTitle:(id)a3;
- (void)setTitleFont:(id)a3;
- (void)setupOverlayLabelTextForEmojiRanges:(id)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateDisplayForInvalidAddressForSelectedState:(BOOL)a3;
@end

@implementation CNAtomView

+ (CGPoint)defaultBaselinePoint
{
  v2 = +[CNAtomView defaultFont];
  [v2 cn_baselinePointFromOriginPoint:{0.0, 0.0}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

+ (id)defaultFont
{
  v2 = +[CNAutocompleteFontMetricCache sharedFontMetricCache];
  v3 = [v2 cachedFont:&__block_literal_global_11 forKey:@"CNAtomViewDefaultFont"];

  return v3;
}

id __25__CNAtomView_defaultFont__block_invoke()
{
  v0 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x8000 options:0];
  v1 = [MEMORY[0x1E69DB878] fontWithDescriptor:v0 size:0.0];

  return v1;
}

+ (id)primaryAtomFont
{
  v2 = +[CNAutocompleteFontMetricCache sharedFontMetricCache];
  v3 = [v2 cachedFont:&__block_literal_global_38 forKey:@"CNAtomViewPrimaryFont"];

  return v3;
}

id __29__CNAtomView_primaryAtomFont__block_invoke()
{
  v0 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD48]];
  v1 = [v0 fontDescriptorWithSymbolicTraits:0x8000];

  v2 = [MEMORY[0x1E69DB878] fontWithDescriptor:v1 size:0.0];

  return v2;
}

id __38__CNAtomView__hoveredDefaultTintColor__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    v2 = 0.086;
    v3 = 0.42;
    v4 = 0.25;
  }

  else
  {
    v2 = 0.731;
    v4 = 0.847;
    v3 = 1.0;
  }

  v5 = [MEMORY[0x1E69DC888] colorWithRed:v2 green:v4 blue:v3 alpha:1.0];

  return v5;
}

id __38__CNAtomView__hoveredFailureTintColor__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    v2 = 0.462;
    v3 = 0.233;
    v4 = 0.252;
  }

  else
  {
    v2 = 0.986;
    v3 = 0.778;
    v4 = 0.767;
  }

  v5 = [MEMORY[0x1E69DC888] colorWithRed:v2 green:v3 blue:v4 alpha:1.0];

  return v5;
}

id __34__CNAtomView__hoveredSMSTintColor__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    v2 = 0.22;
    v3 = 0.405;
    v4 = 0.243;
  }

  else
  {
    v2 = 0.73;
    v3 = 0.897;
    v4 = 0.755;
  }

  v5 = [MEMORY[0x1E69DC888] colorWithRed:v2 green:v3 blue:v4 alpha:1.0];

  return v5;
}

+ (id)_faceTimeTintColor
{
  if (CNComposeIsAppDesignedForVisionOS())
  {
    [MEMORY[0x1E69DC888] systemBlueColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemTealColor];
  }
  v2 = ;

  return v2;
}

+ (id)_defaultLabelAttributesWithWrappingEnabled:(BOOL)a3
{
  v3 = a3;
  v14[3] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  v5 = v4;
  if (v3)
  {
    [v4 setLineBreakMode:0];
    LODWORD(v6) = 1.0;
    [v5 setHyphenationFactor:v6];
  }

  else
  {
    [v4 setLineBreakMode:4];
  }

  v7 = *MEMORY[0x1E69DB688];
  v14[0] = v5;
  v8 = *MEMORY[0x1E69DB650];
  v13[0] = v7;
  v13[1] = v8;
  v9 = +[CNAtomView _defaultTintColor];
  v14[1] = v9;
  v13[2] = *MEMORY[0x1E69DB648];
  v10 = +[CNAtomView defaultFont];
  v14[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  return v11;
}

- (void)setFirstLineIndent:(double)a3
{
  self->_firstLineIndent = a3;
  if ([(CNAtomView *)self isWrappingEnabled])
  {

    [(CNAtomView *)self _updateLabelAttributes];
  }
}

+ (id)_defaultLabelAttributesWithFont:(id)a3 wrappingEnabled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [CNAtomView _defaultLabelAttributesWithWrappingEnabled:v4];
  v7 = [v6 mutableCopy];

  [v7 setObject:v5 forKey:*MEMORY[0x1E69DB648]];

  return v7;
}

+ (id)_badgeImagesForPresentationOptions:(unint64_t)a3 iconOrder:(const unint64_t *)a4 orderingLength:(unint64_t)a5 tintColor:(id)a6 large:(BOOL)a7 variant:(int)a8
{
  v8 = *&a8;
  v9 = a7;
  v13 = a6;
  LOBYTE(v16) = 0;
  v14 = [objc_opt_class() _badgeImagesForPresentationOptions:a3 iconOrder:a4 orderingLength:a5 tintColor:v13 large:v9 variant:v8 selected:v16];

  return v14;
}

+ (id)_badgeImagesForPresentationOptions:(unint64_t)a3 iconOrder:(const unint64_t *)a4 orderingLength:(unint64_t)a5 tintColor:(id)a6 large:(BOOL)a7 variant:(int)a8 selected:(BOOL)a9
{
  v12 = a6;
  for (i = [MEMORY[0x1E695DF70] array];
  {
    v16 = *a4++;
    v15 = v16;
    if ((v16 & a3) != 0)
    {
      v17 = CNIconImageForPresentationOption(v15, v12, v13, 0, a9);
      if (v17)
      {
        [i addObject:v17];
      }
    }
  }

  return i;
}

+ (BOOL)presentationOptions:(unint64_t *)a3 encodedIntoAddress:(id)a4
{
  v5 = a4;
  if ([v5 length])
  {
    v6 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(?:\\{PO\\:)([0-9]+)(?:\\})" options:0 error:0];
    v7 = [v5 length];
    if ([v6 numberOfMatchesInString:v5 options:0 range:{0, v7}])
    {
      v8 = [v6 firstMatchInString:v5 options:0 range:{0, v7}];
      v9 = [v8 rangeAtIndex:1];
      v11 = v10;

      v12 = [v5 substringWithRange:{v9, v11}];
      v13 = [v12 length];
      v14 = v13 != 0;
      if (v13)
      {
        *a3 = [v12 integerValue];
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CNAtomView)initWithFrame:(CGRect)a3 presentationOptions:(unint64_t)a4 separatorStyle:(int)a5 wrappingSupported:(BOOL)a6
{
  v7 = *&a5;
  v37.receiver = self;
  v37.super_class = CNAtomView;
  v9 = [(CNAtomView *)&v37 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v10 = v9;
  if (v9)
  {
    v9->_scalingFactor = 1.0;
    v9->_separatorHidden = 0;
    v9->_presentationOptions = a4;
    v9->_firstLineIndent = 0.0;
    v9->_wrappingSupported = a6;
    v9->_cachedIsWrappingEnabled = [(CNAtomView *)v9 isWrappingEnabled];
    v11 = [MEMORY[0x1E69DC668] sharedApplication];
    v10->_separatorIsLeftAligned = [v11 userInterfaceLayoutDirection] == 1;

    v12 = objc_alloc(MEMORY[0x1E69DD250]);
    v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    titleLabelFillView = v10->_titleLabelFillView;
    v10->_titleLabelFillView = v13;

    [(UIView *)v10->_titleLabelFillView setUserInteractionEnabled:0];
    [(CNAtomView *)v10 addSubview:v10->_titleLabelFillView];
    v15 = objc_alloc(MEMORY[0x1E69DD250]);
    [(CNAtomView *)v10 bounds];
    v16 = [v15 initWithFrame:?];
    compositingView = v10->_compositingView;
    v10->_compositingView = v16;

    [(UIView *)v10->_compositingView setAutoresizingMask:2];
    [(UIView *)v10->_compositingView setUserInteractionEnabled:0];
    [(CNAtomView *)v10 addSubview:v10->_compositingView];
    v18 = [CNModernAtomBackgroundView alloc];
    [(CNAtomView *)v10 bounds];
    v19 = [(CNModernAtomBackgroundView *)v18 initWithFrame:?];
    [(CNModernAtomBackgroundView *)v19 setOpaque:0];
    v20 = [MEMORY[0x1E69DC888] clearColor];
    [(CNModernAtomBackgroundView *)v19 setBackgroundColor:v20];

    [(CNModernAtomBackgroundView *)v19 setUserInteractionEnabled:0];
    [(CNModernAtomBackgroundView *)v19 setAutoresizingMask:18];
    [(CNModernAtomBackgroundView *)v19 setHostAtomView:v10];
    [(CNModernAtomBackgroundView *)v19 setSeparatorStyle:v7];
    [(UIView *)v10->_compositingView addSubview:v19];
    objc_storeStrong(&v10->_background, v19);
    v21 = +[CNAtomView _newTextLabel];
    label = v10->_label;
    v10->_label = v21;

    [(UIView *)v10->_compositingView addSubview:v10->_label];
    v23 = [CNModernAtomIconView alloc];
    [(CNAtomView *)v10 bounds];
    v24 = [(CNModernAtomIconView *)v23 initWithFrame:?];
    badgeIconView = v10->_badgeIconView;
    v10->_badgeIconView = v24;

    [(CNModernAtomIconView *)v10->_badgeIconView setIconPadding:1.25];
    [(CNModernAtomIconView *)v10->_badgeIconView setAutoresizingMask:16];
    v26 = [MEMORY[0x1E69DC888] clearColor];
    [(CNModernAtomIconView *)v10->_badgeIconView setBackgroundColor:v26];

    [(CNModernAtomIconView *)v10->_badgeIconView setContentMode:3];
    v27 = [CNModernAtomIconView alloc];
    [(CNAtomView *)v10 bounds];
    v28 = [(CNModernAtomIconView *)v27 initWithFrame:?];
    accessoryIconView = v10->_accessoryIconView;
    v10->_accessoryIconView = v28;

    [(CNModernAtomIconView *)v10->_accessoryIconView setIconPadding:2.5];
    [(CNModernAtomIconView *)v10->_accessoryIconView setAutoresizingMask:20];
    v30 = [MEMORY[0x1E69DC888] clearColor];
    [(CNModernAtomIconView *)v10->_accessoryIconView setBackgroundColor:v30];

    [(CNModernAtomIconView *)v10->_accessoryIconView setContentMode:3];
    [(CNAtomView *)v10 _updateIconViewsSemanticContentAttribute];
    [(CNAtomView *)v10 _updateSubviewsForWrapping];
    if ((a4 & 0x204) != 0)
    {
      v31 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:4];
      activityIndicator = v10->_activityIndicator;
      v10->_activityIndicator = v31;
    }

    v10->_disabledPresentationOptions = 0;
    v33 = [MEMORY[0x1E696AD88] defaultCenter];
    [v33 addObserver:v10 selector:sel__invalidatePresentationOptions name:*MEMORY[0x1E69DDC48] object:0];

    v34 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    [(CNAtomView *)v10 setBackgroundColor:v34];

    [(CNAtomView *)v10 _setContinuousCornerRadius:4.5];
    v35 = [objc_opt_class() _defaultTintColor];
    [(CNAtomView *)v10 setTintColor:v35];
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(CNAtomView *)self frame];
  v6 = NSStringFromCGRect(v11);
  v7 = [(UILabel *)self->_label text];
  v8 = [v3 stringWithFormat:@"<%@: %x frame = %@; text = '%@'>", v5, self, v6, v7];;

  return v8;
}

- (int)_preferredIconVariant
{
  v26[12] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69DDC88];
  v26[0] = *MEMORY[0x1E69DDC68];
  v26[1] = v3;
  v4 = *MEMORY[0x1E69DDC70];
  v26[2] = *MEMORY[0x1E69DDC78];
  v26[3] = v4;
  v5 = *MEMORY[0x1E69DDC58];
  v26[4] = *MEMORY[0x1E69DDC60];
  v26[5] = v5;
  v6 = *MEMORY[0x1E69DDC40];
  v26[6] = *MEMORY[0x1E69DDC50];
  v26[7] = v6;
  v7 = *MEMORY[0x1E69DDC30];
  v26[8] = *MEMORY[0x1E69DDC38];
  v26[9] = v7;
  v8 = *MEMORY[0x1E69DDC20];
  v26[10] = *MEMORY[0x1E69DDC28];
  v26[11] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:12];
  v10 = [MEMORY[0x1E69DC668] sharedApplication];
  v11 = [v10 preferredContentSizeCategory];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v22;
    while (2)
    {
      v17 = 0;
      v18 = v15;
      v15 += v14;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v12);
        }

        if ([*(*(&v21 + 1) + 8 * v17) isEqualToString:{v11, v21}])
        {
          v15 = v18;
          goto LABEL_12;
        }

        ++v18;
        ++v17;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_12:

  [(CNAtomView *)self scale];
  if (v19 > 1.0)
  {
    if (v15 + 3 >= [v12 count])
    {
      LODWORD(v15) = 6;
    }

    else
    {
      LODWORD(v15) = v15 + 3;
    }
  }

  return v15;
}

- (void)_updateIconViewsSemanticContentAttribute
{
  if (self->_separatorIsLeftAligned)
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  [(CNModernAtomIconView *)self->_accessoryIconView setSemanticContentAttribute:v3];
  badgeIconView = self->_badgeIconView;

  [(CNModernAtomIconView *)badgeIconView setSemanticContentAttribute:v3];
}

- (void)_updateSubviewsForWrapping
{
  v3 = [(CNAtomView *)self isWrappingEnabled];
  [(UILabel *)self->_label setNumberOfLines:!v3];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  [(UILabel *)self->_label setLineBreakMode:v4];
  v5 = [(CNAtomView *)self separatorStyle];
  v6 = [(CNAtomView *)self backgroundView];
  [v6 setSeparatorStyle:2];

  v7 = [(CNAtomView *)self backgroundView];
  [v7 setSeparatorStyle:v5];

  if (v3)
  {
    [(CNModernAtomIconView *)self->_badgeIconView removeFromSuperview];
    accessoryIconView = self->_accessoryIconView;

    [(CNModernAtomIconView *)accessoryIconView removeFromSuperview];
  }

  else
  {
    [(UIView *)self->_compositingView addSubview:self->_badgeIconView];
    [(UIView *)self->_compositingView addSubview:self->_accessoryIconView];
    [(CNModernAtomIconView *)self->_badgeIconView setNeedsDisplay];
    v9 = self->_accessoryIconView;

    [(CNModernAtomIconView *)v9 setNeedsDisplay];
  }
}

- (id)_centeredTextAttachmentWithImage:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CNAtomCenteredTextAttachment);
  [v4 size];
  v7 = v6;
  [v4 size];
  v9 = v8;
  [v4 size];
  v11 = v10 + 3.0;
  [v4 size];
  v13 = v12;
  v14 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v14 scale];
  v16 = v15;
  v20.width = v11;
  v20.height = v13;
  UIGraphicsBeginImageContextWithOptions(v20, 0, v16);

  [v4 drawInRect:{3.0, 0.0, v7, v9}];
  v17 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [(UIFont *)self->_titleFont capHeight];
  [(CNAtomCenteredTextAttachment *)v5 setHeight:?];
  [(CNAtomCenteredTextAttachment *)v5 setImage:v17];

  return v5;
}

- (id)_chevronTextAttachment
{
  v3 = objc_alloc_init(CNAtomCenteredTextAttachment);
  v4 = MEMORY[0x1E69DCAD8];
  v5 = [(CNAtomView *)self titleFont];
  [v5 pointSize];
  v6 = [v4 configurationWithPointSize:6 weight:1 scale:?];

  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward" withConfiguration:v6];
  v8 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  v9 = [v7 imageWithTintColor:v8 renderingMode:1];

  [v9 size];
  v11 = v10;
  [v9 size];
  v13 = v12;
  [v9 size];
  v15 = v14 + 9.0;
  [v9 size];
  v17 = v16;
  v18 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v18 scale];
  v20 = v19;
  v24.width = v15;
  v24.height = v17;
  UIGraphicsBeginImageContextWithOptions(v24, 0, v20);

  [v9 drawInRect:{3.0, 0.0, v11, v13}];
  v21 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [(UIFont *)self->_titleFont capHeight];
  [(CNAtomCenteredTextAttachment *)v3 setHeight:?];
  [(CNAtomCenteredTextAttachment *)v3 setImage:v21];

  return v3;
}

- (BOOL)isWrappingEnabled
{
  if (!self->_wrappingSupported)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

  return IsAccessibilityCategory;
}

- (void)setIsPrimaryAddressAtom:(BOOL)a3
{
  if (self->_isPrimaryAddressAtom != a3)
  {
    self->_isPrimaryAddressAtom = a3;
    if (a3)
    {
      +[CNAtomView primaryAtomFont];
    }

    else
    {
      +[CNAtomView defaultFont];
    }
    v5 = ;
    [(CNAtomView *)self setTitleFont:v5];
  }
}

- (UIColor)effectiveTintColor
{
  effectiveTintColor = self->_effectiveTintColor;
  if (effectiveTintColor)
  {
    v3 = effectiveTintColor;
  }

  else
  {
    v3 = [(CNAtomView *)self tintColor];
  }

  return v3;
}

- (void)_setEffectiveTintColor:(id)a3
{
  v5 = a3;
  if (self->_effectiveTintColor != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_effectiveTintColor, a3);
    label = self->_label;
    v7 = v9;
    [(UILabel *)label setTextColor:v7];
    v8 = [(CNAtomView *)self backgroundView];
    [v8 setTintColor:v7];

    v5 = v9;
  }
}

- (void)tintColorDidChange
{
  if (!self->_effectiveTintColor || (-[CNAtomView effectiveTintColor](self, "effectiveTintColor"), v3 = objc_claimAutoreleasedReturnValue(), -[CNAtomView tintColor](self, "tintColor"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v3 isEqual:v4], v4, v3, (v5 & 1) == 0))
  {
    v6 = [(CNAtomView *)self tintColor];
    [(CNAtomView *)self _setEffectiveTintColor:v6];

    [(CNAtomView *)self _invalidatePresentationOptions];
  }
}

- (UIFont)titleFont
{
  titleFont = self->_titleFont;
  if (!titleFont)
  {
    v4 = +[CNAtomView defaultFont];
    v5 = self->_titleFont;
    self->_titleFont = v4;

    titleFont = self->_titleFont;
  }

  return titleFont;
}

- (void)setTitleFont:(id)a3
{
  v10 = a3;
  if (([(UIFont *)self->_titleFont isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_titleFont, a3);
    v5 = [(UILabel *)self->_label attributedText];
    v6 = [v5 length];

    v7 = [(UILabel *)self->_label attributedText];
    v8 = [v7 mutableCopy];

    v9 = *MEMORY[0x1E69DB648];
    [v8 removeAttribute:*MEMORY[0x1E69DB648] range:{0, v6}];
    [v8 addAttribute:v9 value:self->_titleFont range:{0, v6}];
    [(UILabel *)self->_label setAttributedText:v8];
    [(CNAtomView *)self _updateOverlayLabelText];
    [(CNAtomView *)self _invalidatePresentationOptions];
  }
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  [(CNAtomView *)self _updateLabelAttributes];
}

- (void)_updateLabelAttributes
{
  v3 = [(CNAtomView *)self title];
  v4 = [v3 length];

  if (!v4)
  {
    return;
  }

  v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"⁠"];
  if ([(CNAtomView *)self isWrappingEnabled])
  {
    v6 = [(CNAtomView *)self titleFont];
    v7 = [CNAtomView _defaultLabelAttributesWithFont:v6 wrappingEnabled:1];
    v8 = [v7 mutableCopy];

    v9 = [(CNAtomView *)self effectiveTintColor];
    v10 = *MEMORY[0x1E69DB650];
    [v8 setObject:v9 forKey:*MEMORY[0x1E69DB650]];
    v38 = [v8 objectForKey:*MEMORY[0x1E69DB688]];
    [v38 setFirstLineHeadIndent:self->_firstLineIndent];
    v11 = [MEMORY[0x1E696AD60] stringWithString:self->_title];
    [v11 insertString:@"​" atIndex:0];
    v37 = v11;
    v40 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v11 attributes:v8];
    v12 = [(CNAtomView *)self separatorStyle];
    if (v12 == 1)
    {
      v22 = MEMORY[0x1E696AD40];
      v14 = [(CNAtomView *)self _chevronTextAttachment];
      v13 = [v22 attributedStringWithAttachment:v14];
    }

    else
    {
      v13 = 0;
      if (v12)
      {
LABEL_10:
        v36 = v13;
        v39 = v9;
        v23 = [(CNModernAtomIconView *)self->_accessoryIconView iconImages];
        v24 = [(CNModernAtomIconView *)self->_badgeIconView iconImages];
        if ([v24 count])
        {
          v25 = 0;
          do
          {
            v26 = [v24 objectAtIndex:v25];
            v27 = MEMORY[0x1E696AAB0];
            v28 = [(CNAtomView *)self _centeredTextAttachmentWithImage:v26];
            v29 = [v27 attributedStringWithAttachment:v28];

            [v40 insertAttributedString:v5 atIndex:1];
            [v40 insertAttributedString:v29 atIndex:1];

            ++v25;
          }

          while ([v24 count] > v25);
        }

        if ([v23 count])
        {
          v30 = 0;
          do
          {
            v31 = [v23 objectAtIndex:v30];
            v32 = MEMORY[0x1E696AAB0];
            v33 = [(CNAtomView *)self _centeredTextAttachmentWithImage:v31];
            v34 = [v32 attributedStringWithAttachment:v33];

            [v40 insertAttributedString:v5 atIndex:{objc_msgSend(v40, "length")}];
            [v40 insertAttributedString:v34 atIndex:{objc_msgSend(v40, "length")}];

            ++v30;
          }

          while ([v23 count] > v30);
        }

        if (v36 && !self->_separatorHidden)
        {
          [v40 insertAttributedString:v5 atIndex:{objc_msgSend(v40, "length")}];
          [v40 insertAttributedString:v36 atIndex:{objc_msgSend(v40, "length")}];
        }

        v21 = v39;
        goto LABEL_20;
      }

      v14 = [MEMORY[0x1E695DF90] dictionary];
      v15 = [(CNAtomView *)self titleFont];
      [v14 setObject:v15 forKey:*MEMORY[0x1E69DB648]];

      v16 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
      [v14 setObject:v16 forKey:v10];

      v17 = objc_alloc(MEMORY[0x1E696AD40]);
      v18 = CNAUILocalizedAddressSeparator();
      v13 = [v17 initWithString:v18 attributes:v14];
    }

    goto LABEL_10;
  }

  v19 = objc_alloc(MEMORY[0x1E696AD40]);
  title = self->_title;
  v8 = [(CNAtomView *)self titleFont];
  v21 = [CNAtomView _defaultLabelAttributesWithFont:v8 wrappingEnabled:0];
  v40 = [v19 initWithString:title attributes:v21];
LABEL_20:

  [(UILabel *)self->_label setAttributedText:v40];
  v35 = [(CNAtomView *)self effectiveTintColor];
  [(UILabel *)self->_label setTextColor:v35];
  [(CNAtomView *)self _updateOverlayLabelText];
  [(UILabel *)self->_label sizeToFit];
  [(CNAtomView *)self sizeToFit];
  [(CNAtomView *)self setNeedsLayout];
}

- (void)_invalidatePresentationOptions
{
  [(CNAtomView *)self invalidateIntrinsicContentSize];
  if ([(CNAtomView *)self tintAdjustmentMode]== 2)
  {
    v3 = 0;
    goto LABEL_18;
  }

  if (([(CNAtomView *)self presentationOptions]& 0x2000) != 0)
  {
    v4 = +[CNAtomView _downtimeBlockedTintColor];
  }

  else if (([(CNAtomView *)self presentationOptions]& 1) != 0)
  {
    v4 = +[CNAtomView _failureTintColor];
  }

  else if (([(CNAtomView *)self presentationOptions]& 0x10000) != 0)
  {
    v4 = +[CNAtomView _faceTimeUnresolvedColor];
  }

  else if (([(CNAtomView *)self presentationOptions]& 2) != 0)
  {
    v4 = +[CNAtomView _SMSTintColor];
  }

  else if (([(CNAtomView *)self presentationOptions]& 0x8000) != 0)
  {
    v4 = +[CNAtomView _faceTimeTintColor];
  }

  else
  {
    if (([(CNAtomView *)self presentationOptions]& 0x20000) == 0)
    {
LABEL_16:
      v3 = [(CNAtomView *)self tintColor];
      goto LABEL_17;
    }

    v4 = +[CNAtomView _invalidAddressTintColor];
  }

  v3 = v4;
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_17:
  [(CNAtomView *)self _setEffectiveTintColor:v3];
LABEL_18:
  v5 = [(CNAtomView *)self presentationOptions];
  v6 = [(CNAtomView *)self _preferredIconVariant];
  v11 = v3;
  v7 = [(CNAtomView *)self isPrimaryAddressAtom];
  v8 = [CNAtomView _badgeImagesForPresentationOptions:v5 iconOrder:&_badgeStyleOrder orderingLength:6 tintColor:v11 large:v7 variant:v6];
  [(CNModernAtomIconView *)self->_badgeIconView setIconImages:v8];
  v9 = [CNAtomView _badgeImagesForPresentationOptions:v5 iconOrder:&_accessoryStyleOrder orderingLength:5 tintColor:v11 large:v7 variant:v6];
  [(CNModernAtomIconView *)self->_accessoryIconView setIconImages:v9];
  [(CNAtomView *)self _updateActivityIndicator];
  [(CNAtomView *)self setNeedsLayout];
  cachedIsWrappingEnabled = self->_cachedIsWrappingEnabled;
  if (cachedIsWrappingEnabled == [(CNAtomView *)self isWrappingEnabled])
  {
    [(CNModernAtomIconView *)self->_badgeIconView setNeedsDisplay];
    [(CNModernAtomIconView *)self->_accessoryIconView setNeedsDisplay];
  }

  else
  {
    self->_cachedIsWrappingEnabled = [(CNAtomView *)self isWrappingEnabled];
    [(CNAtomView *)self _updateSubviewsForWrapping];
    [(CNAtomView *)self _updateLabelAttributes];
  }

  [(CNModernAtomBackgroundView *)self->_background invalidateIntrinsicContentSize];
  [(CNModernAtomBackgroundView *)self->_background setNeedsLayout];
}

- (void)setPresentationOptions:(unint64_t)a3
{
  if (self->_presentationOptions != a3)
  {
    self->_presentationOptions = a3;
    [(CNAtomView *)self _invalidatePresentationOptions];
  }
}

- (void)_setPresentationOption:(unint64_t)a3 enabled:(BOOL)a4
{
  if (a4)
  {
    v4 = self->_disabledPresentationOptions & ~a3;
  }

  else
  {
    v4 = self->_disabledPresentationOptions | a3;
  }

  self->_disabledPresentationOptions = v4;
  [(CNAtomView *)self _invalidatePresentationOptions];
}

- (void)setSeparatorHidden:(BOOL)a3
{
  v3 = a3;
  self->_separatorHidden = a3;
  if ([(CNAtomView *)self isWrappingEnabled])
  {
    [(CNAtomView *)self _updateLabelAttributes];
  }

  else
  {
    v5 = [(CNAtomView *)self backgroundView];
    v6 = [v5 separatorView];
    [v6 setHidden:v3];
  }

  [(CNAtomView *)self invalidateIntrinsicContentSize];
}

- (BOOL)separatorHidden
{
  if (self->_separatorHidden)
  {
    return 1;
  }

  v3 = [(CNAtomView *)self backgroundView];
  v2 = [v3 separatorStyle] == 2;

  return v2;
}

- (void)setSeparatorStyle:(int)a3
{
  v3 = *&a3;
  self->_separatorStyle = a3;
  v5 = [(CNAtomView *)self backgroundView];
  [v5 setSeparatorStyle:v3];

  if ([(CNAtomView *)self isWrappingEnabled])
  {

    [(CNAtomView *)self _updateLabelAttributes];
  }

  else
  {

    [(CNAtomView *)self sizeToFit];
  }
}

- (int)separatorStyle
{
  v2 = [(CNAtomView *)self backgroundView];
  v3 = [v2 separatorStyle];

  return v3;
}

- (void)setSeparatorIsLeftAligned:(BOOL)a3
{
  if (self->_separatorIsLeftAligned != a3)
  {
    self->_separatorIsLeftAligned = a3;
    [(CNAtomView *)self _updateIconViewsSemanticContentAttribute];
    v5 = [(CNAtomView *)self backgroundView];
    [v5 layoutSubviews];

    [(CNAtomView *)self layoutSubviews];
  }
}

- (BOOL)appearsSelected
{
  if (![(CNAtomView *)self isSelected])
  {
    return 0;
  }

  v3 = [(CNAtomView *)self traitCollection];
  v4 = [v3 activeAppearance] == 1;

  return v4;
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4 style:(unint64_t)a5
{
  v6 = a4;
  v7 = a3;
  v9 = [(CNAtomView *)self traitCollection];
  v10 = [v9 activeAppearance];

  v11 = [(CNAtomView *)self backgroundView];
  [v11 setSelected:v7 animated:v6 style:a5 updateVisualSelection:v10 == 1];

  if (self->_selected != v7)
  {
    self->_selected = v7;
    if (v10 == 1)
    {

      [(CNAtomView *)self displaySelectionChangeWithAnimation:v6];
    }
  }
}

- (void)displaySelectionChangeWithAnimation:(BOOL)a3
{
  [(CNAtomView *)self _updateActivityIndicator];
  v5 = [(CNAtomView *)self appearsSelected];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__CNAtomView_displaySelectionChangeWithAnimation___block_invoke;
  v9[3] = &unk_1E7CD2750;
  v9[4] = self;
  v10 = v5;
  v6 = MEMORY[0x1B8CB9350](v9);
  v7 = v6;
  if (!a3)
  {
    (*(v6 + 16))(v6);
    goto LABEL_5;
  }

  [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:0.15];
  if (v5)
  {
LABEL_5:
    [(CNAtomView *)self _updateCompositingFilters];
    goto LABEL_6;
  }

  UIAnimationDragCoefficient();
  [(CNAtomView *)self performSelector:sel__updateCompositingFilters withObject:0 afterDelay:v8 * 0.15];
LABEL_6:
}

void __50__CNAtomView_displaySelectionChangeWithAnimation___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) presentationOptions] & 0x20000) != 0)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);

    [v2 updateDisplayForInvalidAddressForSelectedState:v3];
  }

  else
  {
    if (*(a1 + 40) == 1)
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] clearColor];
    }
    v4 = ;
    [*(*(a1 + 32) + 464) setBackgroundColor:v4];
  }
}

- (void)updateDisplayForInvalidAddressForSelectedState:(BOOL)a3
{
  if (a3)
  {
    v8 = [MEMORY[0x1E69DC888] systemWhiteColor];
    v4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(CNAtomView *)self _setEffectiveTintColor:v8];
    v5 = [(CNAtomView *)self backgroundView];
    [v5 setTintColor:v4];

    LOBYTE(v7) = 1;
    v6 = [CNAtomView _badgeImagesForPresentationOptions:self->_presentationOptions iconOrder:&_badgeStyleOrder orderingLength:6 tintColor:v8 large:[(CNAtomView *)self isPrimaryAddressAtom] variant:[(CNAtomView *)self _preferredIconVariant] selected:v7];
    [(CNModernAtomIconView *)self->_badgeIconView setIconImages:v6];
  }

  else
  {

    [(CNAtomView *)self _invalidatePresentationOptions];
  }
}

+ (id)_newTextLabel
{
  v2 = objc_alloc(MEMORY[0x1E69DCC10]);
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v3 setAutoresizingMask:16];
  [v3 setOpaque:0];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setAdjustsFontForContentSizeCategory:1];
  [v3 setUserInteractionEnabled:0];
  [v3 _setWantsUnderlineForAccessibilityButtonShapesEnabled:1];
  [v3 _setOverallWritingDirectionFollowsLayoutDirection:1];
  return v3;
}

- (void)_updateOverlayLabelText
{
  if (self->_overlayLabelForNonColoredGlyphs)
  {
    v3 = [(UILabel *)self->_label text];
    v4 = CNSubstringRangesContainingEmojiInString();

    [(CNAtomView *)self setupOverlayLabelTextForEmojiRanges:v4];
  }
}

- (void)setupOverlayLabelTextForEmojiRanges:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E696AD40]);
  v6 = [(UILabel *)self->_label attributedText];
  v7 = [v5 initWithAttributedString:v6];

  v8 = [v7 length];
  [v7 addAttribute:*MEMORY[0x1E69DB648] value:self->_titleFont range:{0, v8}];
  v9 = *MEMORY[0x1E69DB650];
  v10 = [MEMORY[0x1E69DC888] clearColor];
  [v7 addAttribute:v9 value:v10 range:{0, v8}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        v17 = [MEMORY[0x1E69DC888] labelColor];
        v18 = [v16 rangeValue];
        [v7 addAttribute:v9 value:v17 range:{v18, v19}];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  [(UILabel *)self->_overlayLabelForNonColoredGlyphs setAttributedText:v7];
}

- (void)_setupOverlayLabelForNonColoredGlyphs
{
  if (!self->_overlayLabelForNonColoredGlyphs)
  {
    v3 = [(UILabel *)self->_label text];
    v6 = CNSubstringRangesContainingEmojiInString();

    if ([v6 count])
    {
      v4 = +[CNAtomView _newTextLabel];
      overlayLabelForNonColoredGlyphs = self->_overlayLabelForNonColoredGlyphs;
      self->_overlayLabelForNonColoredGlyphs = v4;

      [(CNAtomView *)self setupOverlayLabelTextForEmojiRanges:v6];
      [(CNAtomView *)self addSubview:self->_overlayLabelForNonColoredGlyphs];
    }
  }
}

- (void)_updateCompositingFilters
{
  v10[4] = *MEMORY[0x1E69E9840];
  [(CNAtomView *)self _setupOverlayLabelForNonColoredGlyphs];
  v3 = [(CNAtomView *)self presentationOptions]& 0x20000;
  if (self->_selected && v3 == 0)
  {
    v5 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D98]];
  }

  else
  {
    v5 = 0;
  }

  v10[0] = self->_badgeIconView;
  v10[1] = self->_accessoryIconView;
  v10[2] = self->_label;
  v6 = [(CNAtomView *)self backgroundView];
  v10[3] = [v6 separatorView];

  for (i = 0; i != 4; ++i)
  {
    v8 = [v10[i] layer];
    [v8 setCompositingFilter:v5];
  }

  for (j = 3; j != -1; --j)
  {
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CNAtomView;
  [(CNAtomView *)&v9 traitCollectionDidChange:v4];
  [(CNAtomView *)self _updateActivityIndicator];
  if ([(CNAtomView *)self isSelected])
  {
    v5 = [(CNAtomView *)self traitCollection];
    v6 = [v5 activeAppearance];
    v7 = [v4 activeAppearance];

    if (v6 != v7)
    {
      v8 = [(CNAtomView *)self backgroundView];
      [v8 displaySelectionChangeWithAnimation:0];

      [(CNAtomView *)self displaySelectionChangeWithAnimation:0];
    }
  }
}

- (void)_updateActivityIndicator
{
  v3 = [(CNAtomView *)self presentationOptions]& 0x204;
  if ([(CNAtomView *)self isSelected])
  {
    v4 = 3;
  }

  else
  {
    v5 = [(CNAtomView *)self traitCollection];
    if ([v5 userInterfaceStyle] == 2)
    {
      v4 = 3;
    }

    else
    {
      v4 = 4;
    }
  }

  activityIndicator = self->_activityIndicator;
  if (v3)
  {
    if (activityIndicator)
    {
      if ([(UIActivityIndicatorView *)activityIndicator activityIndicatorViewStyle]== v4)
      {
        return;
      }

      [(UIActivityIndicatorView *)self->_activityIndicator removeFromSuperview];
      v7 = self->_activityIndicator;
      self->_activityIndicator = 0;
    }

    v8 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:v4];
    v9 = self->_activityIndicator;
    self->_activityIndicator = v8;

    [(CNAtomView *)self addSubview:self->_activityIndicator];
    [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
    [(CNAtomView *)self setNeedsLayout];

    [(CNAtomView *)self invalidateIntrinsicContentSize];
  }

  else if (activityIndicator)
  {
    [(UIActivityIndicatorView *)activityIndicator removeFromSuperview];
    v10 = self->_activityIndicator;
    self->_activityIndicator = 0;
  }
}

- (void)_updateFontIfNecessary
{
  if ([(CNAtomView *)self isPrimaryAddressAtom])
  {
    v3 = [objc_opt_class() primaryAtomFont];
  }

  else
  {
    titleFont = self->_titleFont;
    if (titleFont)
    {
      v5 = [objc_opt_class() primaryAtomFont];
      v6 = [(UIFont *)titleFont isEqual:v5];

      if (!v6)
      {
        return;
      }
    }

    v3 = [objc_opt_class() defaultFont];
  }

  v7 = v3;
  [(CNAtomView *)self setTitleFont:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(CNAtomView *)self isWrappingEnabled])
  {
    [(CNAtomView *)self _leftPadding];
    v7 = v6;
    [(CNAtomView *)self _rightPadding];
    label = self->_label;
    v10 = fmax(width - (v7 + v8), 0.0);

    [(UILabel *)label sizeThatFits:v10, 1.79769313e308];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CNAtomView;
    [(CNAtomView *)&v13 sizeThatFits:width, height];
  }

  result.height = v12;
  result.width = v11;
  return result;
}

- (double)preferredWidthWithSizeConstraints:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(CNAtomView *)self _leftPadding];
  v7 = v6;
  [(CNAtomView *)self _rightPadding];
  v9 = fmax(width - (v7 + v8), 0.0);
  v10 = [(UILabel *)self->_label attributedText];
  [v10 boundingRectWithSize:1 options:0 context:{v9, height}];
  v12 = ceil(v11);

  [(CNAtomView *)self _leftPadding];
  v14 = v13 + v12;
  [(CNAtomView *)self _rightPadding];
  result = fmax(v15 + v14, 25.0);
  if (width < result && width > 0.0)
  {
    return width;
  }

  return result;
}

- (void)layoutSubviews
{
  [(CNAtomView *)self _updateFontIfNecessary];
  [(CNAtomView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_compositingView setFrame:?];
  rect = v8;
  [(CNAtomView *)self preferredWidthWithSizeConstraints:v8, v10];
  v12 = v11;
  [(UILabel *)self->_label bounds];
  v14 = v13;
  v15 = [(UILabel *)self->_label font];
  [v15 lineHeight];
  v17 = round(v14 / v16);

  if ([(CNAtomView *)self isWrappingEnabled])
  {
    v18 = [(CNAtomView *)self titleLabel];
    [v18 frame];
    v12 = v19 + 8.0;

    if (v17 == 1.0)
    {
      firstLineIndent = self->_firstLineIndent;
      v12 = v12 - firstLineIndent;
      v21 = firstLineIndent + 0.0;
    }

    else
    {
      v21 = 0.0;
    }
  }

  else
  {
    v21 = 0.0;
    if (![(CNAtomView *)self separatorHidden]&& ![(CNAtomView *)self separatorStyle])
    {
      v22 = [(CNAtomView *)self backgroundView];
      [v22 separatorWidth];
      v12 = v12 - v23;
    }
  }

  [(CNModernAtomBackgroundView *)self->_background setFrame:v21, 0.0, v12, v10];
  if ([(CNAtomView *)self isWrappingEnabled])
  {
    label = self->_label;
    [(CNAtomView *)self bounds];
    [(UILabel *)label sizeThatFits:v25, v26];
    v28 = v27;
    v30 = v29;
  }

  else
  {
    [(CNAtomView *)self _leftPadding];
    [(CNAtomView *)self _rightPadding];
    [(UILabel *)self->_label sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    v30 = v31;
    UIRoundToViewScale();
    v28 = v32;
  }

  [(CNAtomView *)self _leftPadding];
  v34 = v33;
  separatorIsLeftAligned = self->_separatorIsLeftAligned;
  if (separatorIsLeftAligned)
  {
    v36 = *(MEMORY[0x1E695F058] + 8);
    v73.origin.x = v4;
    v73.origin.y = v6;
    v73.size.width = rect;
    v73.size.height = v10;
    MaxX = CGRectGetMaxX(v73);
    v74.origin.x = v34;
    v74.origin.y = v36;
    v74.size.width = v28;
    v74.size.height = v30;
    v38 = MaxX - CGRectGetWidth(v74);
    [(CNAtomView *)self _leftPadding];
    v34 = v38 - v39;
  }

  v40 = round(v10 * 0.5 - v30 * 0.5);
  [(UILabel *)self->_label setFrame:v34, v40, v28, v30];
  if (self->_overlayLabelForNonColoredGlyphs)
  {
    [(UILabel *)self->_label frame];
    [(UILabel *)self->_overlayLabelForNonColoredGlyphs setFrame:?];
  }

  v41 = [(CNAtomView *)self isWrappingEnabled];
  if (v17 != 1.0 || !v41)
  {
    titleLabelFillView = self->_titleLabelFillView;
    v44 = v34;
    v47 = v40;
    v45 = v28;
  }

  else
  {
    v43 = self->_firstLineIndent;
    v44 = v34 + v43;
    v45 = v28 - v43;
    titleLabelFillView = self->_titleLabelFillView;
    v47 = v40;
  }

  [(UIView *)titleLabelFillView setFrame:v44, v47, v45, v30];
  [(CNModernAtomIconView *)self->_badgeIconView preferredWidth];
  v49 = v48;
  [(CNModernAtomIconView *)self->_accessoryIconView preferredWidth];
  v51 = v50;
  [(CNAtomView *)self _leftInset];
  if (separatorIsLeftAligned)
  {
    v53 = rect - v49 - v52;
    v75.origin.x = v34;
    v75.origin.y = v40;
    v75.size.width = v28;
    v75.size.height = v30;
    v54 = CGRectGetMinX(v75) + -2.5 - v51;
  }

  else
  {
    v53 = v52 + self->_firstLineIndent;
    v76.origin.x = v34;
    v76.origin.y = v40;
    v76.size.width = v28;
    v76.size.height = v30;
    v54 = CGRectGetMaxX(v76) + 2.5;
  }

  [(CNModernAtomIconView *)self->_badgeIconView setFrame:v53, 0.0, v49, v10];
  [(CNModernAtomIconView *)self->_accessoryIconView setFrame:v54, 0.0, v51, v10];
  [(CNAtomView *)self baselinePoint];
  v56 = v55;
  [(CNModernAtomIconView *)self->_accessoryIconView setDrawingOffset:0.0];
  [(CNModernAtomIconView *)self->_badgeIconView setDrawingOffset:0.0, v56];
  activityIndicator = self->_activityIndicator;
  if (activityIndicator)
  {
    [(UIActivityIndicatorView *)activityIndicator frame];
    v59 = v58;
    v61 = v60;
    UIRoundToViewScale();
    v63 = v62;
    v64 = (self->_presentationOptions >> 9) & 1 ^ separatorIsLeftAligned;
    v65 = [(CNAtomView *)self separatorHidden]|| [(CNAtomView *)self separatorStyle]!= 0;
    if (v64)
    {
      if (separatorIsLeftAligned)
      {
        v66 = 7.0;
      }

      else
      {
        v66 = 5.0;
      }

      if (v65 || !separatorIsLeftAligned)
      {
        goto LABEL_39;
      }

      v67 = [(CNAtomView *)self backgroundView];
      [v67 separatorWidth];
      v66 = v66 + v68;
    }

    else
    {
      v69 = 7.0;
      if (separatorIsLeftAligned)
      {
        v69 = 5.0;
      }

      v66 = rect - v69 - v59;
      if (separatorIsLeftAligned || v65)
      {
        goto LABEL_39;
      }

      v67 = [(CNAtomView *)self backgroundView];
      [v67 separatorWidth];
      v66 = v66 - v70;
    }

LABEL_39:
    [(UIActivityIndicatorView *)self->_activityIndicator setFrame:v66, v63, v59, v61];
  }

  v72.receiver = self;
  v72.super_class = CNAtomView;
  [(CNAtomView *)&v72 layoutSubviews];
  [(UIView *)self cn_applyCornerRadius:4];
  [(CNAtomView *)self setClipsToBounds:1];
}

- (CGRect)selectionFrame
{
  v3 = [(CNModernAtomBackgroundView *)self->_background selectedView];
  [v3 frame];
  [(CNAtomView *)self convertRect:self->_background fromView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (UIEdgeInsets)edgeInsets
{
  [(CNAtomView *)self _leftInset];
  v4 = v3;
  [(CNAtomView *)self _rightInset];
  v6 = v5;
  v7 = 0.0;
  v8 = 0.0;
  v9 = v4;
  result.right = v6;
  result.bottom = v8;
  result.left = v9;
  result.top = v7;
  return result;
}

- (double)_rightInset
{
  v3 = 3.0;
  if (![(CNAtomView *)self separatorHidden])
  {
    v4 = [(CNAtomView *)self backgroundView];
    [v4 separatorWidth];
    v3 = v5 + 5.0;
  }

  result = 0.0;
  if (self->_separatorIsLeftAligned)
  {
    return v3;
  }

  return result;
}

- (double)_rightPadding
{
  v3 = [(CNAtomView *)self separatorHidden];
  if ([(CNAtomView *)self isWrappingEnabled])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CNModernAtomIconView *)self->_accessoryIconView iconImages];
    v4 = [v5 count] == 0;
  }

  v6 = 8.0;
  if (!v3 || !v4)
  {
    v6 = 6.0;
    if (!v3)
    {
      v7 = [(CNAtomView *)self backgroundView];
      [v7 separatorWidth];
      v9 = v8 + 6.0;

      v6 = v9 + 2.0;
    }

    if (!v4)
    {
      [(CNModernAtomIconView *)self->_accessoryIconView preferredWidth];
      v6 = v6 + -6.0 + v10 + 5.0;
    }
  }

  activityIndicator = self->_activityIndicator;
  if (activityIndicator && (self->_presentationOptions & 4) != 0)
  {
    [(UIActivityIndicatorView *)activityIndicator frame];
    v6 = v6 + CGRectGetWidth(v13) + 5.0;
  }

  return v6 * self->_scalingFactor;
}

- (double)_leftPadding
{
  v3 = 8.0;
  if (![(CNAtomView *)self isWrappingEnabled])
  {
    [(CNModernAtomIconView *)self->_badgeIconView preferredWidth];
    v3 = v4 + 8.0;
  }

  activityIndicator = self->_activityIndicator;
  if (activityIndicator && (self->_presentationOptions & 0x200) != 0)
  {
    [(UIActivityIndicatorView *)activityIndicator frame];
    return v3 + CGRectGetWidth(v7) + 5.0;
  }

  return v3;
}

- (void)setScale:(double)a3
{
  if (self->_scalingFactor != a3)
  {
    self->_scalingFactor = a3;
    v5 = [(CNAtomView *)self backgroundView];
    [v5 setScalingFactor:a3];

    v6 = [(CNAtomView *)self titleFont];
    v7 = v6;
    if (a3 != 1.0)
    {
      v9 = v6;
      v8 = [v6 _fontScaledByScaleFactor:self->_scalingFactor];

      v7 = v8;
    }

    v10 = v7;
    [(CNAtomView *)self setTitleFont:v7];
    [(CNAtomView *)self setNeedsLayout];
  }
}

- (CGPoint)baselinePoint
{
  [(UILabel *)self->_label frame];
  v4 = v3;
  [(UILabel *)self->_label _firstLineBaseline];
  v6 = v4 + v5;
  v7 = 0.0;
  result.y = v6;
  result.x = v7;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(CNAtomView *)self preferredWidth];
  v4 = v3;
  [(UILabel *)self->_label intrinsicContentSize];
  v6 = v5;
  v7 = isPortraitIPhone();
  v8 = 3.0;
  if (!v7)
  {
    v8 = 2.0;
  }

  v9 = v6 + v8 * 2.0;
  v10 = v4;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)performBuildInAnimationFromTextColor:(id)a3 withDuration:(double)a4
{
  v6 = MEMORY[0x1E69DCC10];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v10 = [(UILabel *)self->_label attributedText];
  [v9 setAttributedText:v10];

  [(UILabel *)self->_label frame];
  [v9 setFrame:?];
  [v9 setTextColor:v7];

  [(CNAtomView *)self addSubview:v9];
  [(CNModernAtomBackgroundView *)self->_background setAlpha:0.0];
  [(UILabel *)self->_label setAlpha:0.0];
  v11 = MEMORY[0x1E69DD250];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__CNAtomView_performBuildInAnimationFromTextColor_withDuration___block_invoke;
  v15[3] = &unk_1E7CD1E08;
  v15[4] = self;
  v16 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__CNAtomView_performBuildInAnimationFromTextColor_withDuration___block_invoke_2;
  v13[3] = &unk_1E7CD1D90;
  v14 = v16;
  v12 = v16;
  [v11 animateWithDuration:v15 animations:v13 completion:a4];
}

uint64_t __64__CNAtomView_performBuildInAnimationFromTextColor_withDuration___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 448) setAlpha:1.0];
  [*(*(a1 + 32) + 472) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

uint64_t __64__CNAtomView_performBuildInAnimationFromTextColor_withDuration___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) removeFromSuperview];
  }

  return result;
}

@end