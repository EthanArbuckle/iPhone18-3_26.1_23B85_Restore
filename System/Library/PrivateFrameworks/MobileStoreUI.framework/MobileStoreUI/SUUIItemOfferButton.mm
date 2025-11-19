@interface SUUIItemOfferButton
+ (BOOL)canOpenItemForItemState:(id)a3 clientContext:(id)a4;
+ (CGSize)_titleSizeThatFitsForSize:(CGSize)a3 titleStyle:(int64_t)a4 mutableAttributedString:(id)a5;
+ (SUUIItemOfferButton)itemOfferButtonWithAppearance:(id)a3;
+ (UIEdgeInsets)_imageInsetsForProgressType:(int64_t)a3;
+ (id)_basicAnimationWithKeyPath:(id)a3;
+ (id)_cachedImageForAttributedTitle:(id)a3 titleStyle:(int64_t)a4 size:(CGSize)a5 fillStyle:(int64_t)a6 universal:(BOOL)a7 tintColor:(id)a8 interfaceStyle:(int64_t)a9;
+ (id)_defaultTitleAttributes;
+ (id)_imageForAttributedTitle:(id)a3 titleStyle:(int64_t)a4 size:(CGSize)a5 fillStyle:(int64_t)a6 universal:(BOOL)a7 tintColor:(id)a8;
+ (id)_imageForProgressType:(int64_t)a3;
+ (id)_universalPlusImageWithTintColor:(id)a3;
+ (id)cloudImageWithTintColor:(id)a3 arrowTintColor:(id)a4;
+ (id)cloudTintColorForBackgroundColor:(id)a3;
+ (id)localizedTitleForItemState:(id)a3 clientContext:(id)a4;
+ (id)playHighlightImageWithTintColor:(id)a3;
+ (id)playImageWithTintColor:(id)a3;
+ (id)playTintColorForBackgroundColor:(id)a3;
- (BOOL)_touchInBounds:(id)a3;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)isShowingConfirmation;
- (BOOL)setTitle:(id)a3 confirmationTitle:(id)a4 itemState:(id)a5 clientContext:(id)a6 animated:(BOOL)a7;
- (BOOL)setValuesUsingBuyButtonDescriptor:(id)a3 itemState:(id)a4 clientContext:(id)a5 animated:(BOOL)a6;
- (BOOL)setValuesUsingItemOffer:(id)a3 itemState:(id)a4 clientContext:(id)a5 animated:(BOOL)a6;
- (BOOL)supportsPlayButton;
- (CGRect)_borderedImageViewFrame;
- (CGSize)layoutSizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)buyType;
- (NSString)offerButtonStateDescription;
- (SUUIBuyButtonDescriptor)buttonDescriptor;
- (SUUIItemOfferButton)initWithFrame:(CGRect)a3;
- (SUUIItemOfferButtonDelegate)delegate;
- (UIImage)image;
- (double)_horizontalInsetForTitleStyle:(int64_t)a3;
- (id)_buttonPropertiesForState:(id)a3;
- (id)_imageForProgressType:(int64_t)a3;
- (int64_t)progressType;
- (void)_adjustViewOrderingForProperties:(id)a3;
- (void)_cancelGestureAction:(id)a3;
- (void)_insertBorderView;
- (void)_insertBorderedImageView;
- (void)_insertCancelGestureRecognizer;
- (void)_insertImageView;
- (void)_insertLabel;
- (void)_insertProgressIndicator;
- (void)_insertUniversalView;
- (void)_reloadForCurrentState:(BOOL)a3;
- (void)_removeCancelGestureRecognizer;
- (void)_sendDidAnimate;
- (void)_sendWillAnimate;
- (void)_transitionFromBorderedImage:(id)a3 toTitle:(id)a4 withDuration:(double)a5 completion:(id)a6;
- (void)_transitionFromImage:(id)a3 toImage:(id)a4 withDuration:(double)a5 completion:(id)a6;
- (void)_transitionFromProgress:(id)a3 toProgress:(id)a4 withDuration:(double)a5 completion:(id)a6;
- (void)_transitionFromProgress:(id)a3 toTitleOrImage:(id)a4 withDuration:(double)a5 completion:(id)a6;
- (void)_transitionFromTitle:(id)a3 toTitle:(id)a4 withDuration:(double)a5 completion:(id)a6;
- (void)_transitionFromTitleOrImage:(id)a3 toProgress:(id)a4 withDuration:(double)a5 completion:(id)a6;
- (void)_updateForChangedConfirmationTitleProperty;
- (void)_updateForChangedTitleProperty;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)drawRect:(CGRect)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)removeButtonStateAnimations;
- (void)setBackgroundColor:(id)a3;
- (void)setBorderColorAlphaMultiplier:(double)a3;
- (void)setBorderedImage:(id)a3;
- (void)setCloudTintColor:(id)a3;
- (void)setColoringWithAppearance:(id)a3;
- (void)setConfirmationTitle:(id)a3;
- (void)setConfirmationTitleStyle:(int64_t)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFillStyle:(int64_t)a3;
- (void)setFrame:(CGRect)a3;
- (void)setImage:(id)a3;
- (void)setProgressType:(int64_t)a3 animated:(BOOL)a4;
- (void)setShowingConfirmation:(BOOL)a3 animated:(BOOL)a4;
- (void)setTitle:(id)a3;
- (void)setTitleStyle:(int64_t)a3;
- (void)setUniversal:(BOOL)a3;
- (void)showCloudImage;
- (void)tintColorDidChange;
@end

@implementation SUUIItemOfferButton

- (SUUIItemOfferButton)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SUUIItemOfferButton;
  v3 = [(SUUIItemOfferButton *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    cloudTintColor = v3->_cloudTintColor;
    v3->_cloudTintColor = v4;

    v6 = [MEMORY[0x277D75348] colorWithRed:0.0980392157 green:0.670588235 blue:0.125490196 alpha:1.0];
    confirmationColor = v3->_confirmationColor;
    v3->_confirmationColor = v6;

    v3->_fillStyle = 0;
    v3->_borderColorAlphaMultiplier = 1.0;
    offerButtonStateDescription = v3->_offerButtonStateDescription;
    v3->_offerButtonStateDescription = &stru_286AECDE0;
  }

  return v3;
}

- (void)dealloc
{
  [(SUUIFocusedTouchGestureRecognizer *)self->_cancelGestureRecognizer removeTarget:self action:0];
  v3.receiver = self;
  v3.super_class = SUUIItemOfferButton;
  [(SUUIItemOfferButton *)&v3 dealloc];
}

- (CGSize)layoutSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(SUUIItemOfferButton *)self isShowingConfirmation])
  {
    v6 = [(NSMutableAttributedString *)self->_titleAttributedString mutableCopy];
    [(SUUIItemOfferButton *)self _horizontalInsetForTitleStyle:self->_titleStyle];
    v8 = v7;
    if ([objc_opt_class() _sizeMattersForTitleStyle:self->_titleStyle])
    {
      [objc_opt_class() _titleSizeThatFitsForSize:self->_titleStyle titleStyle:v6 mutableAttributedString:{width + v8 * -2.0, height}];
    }

    else
    {
      v9 = self->_titleFitSize.width;
    }

    v13 = ceil(v9 + v8 * 2.0);
    v14 = fmax(v13, 59.0);
    if (v14 > 109.0)
    {
      v14 = 109.0;
    }

    if (self->_titleStyle == 2)
    {
      v12 = v14;
    }

    else
    {
      v12 = v13;
    }

    v10 = 26.0;
  }

  else
  {
    [(SUUIItemOfferButton *)self sizeThatFits:width, height];
    v12 = v11;
  }

  v15 = v12;
  result.height = v10;
  result.width = v15;
  return result;
}

- (UIImage)image
{
  image = self->_image;
  if (!image)
  {
    image = self->_cloudImage;
  }

  return image;
}

- (NSString)offerButtonStateDescription
{
  if ([(SUUIItemOfferButton *)self showsConfirmationState]&& ![(SUUIItemOfferButton *)self isShowingConfirmation])
  {
    v3 = @"buyInitiate";
  }

  else
  {
    v3 = self->_offerButtonStateDescription;
  }

  return v3;
}

- (BOOL)isShowingConfirmation
{
  v2 = [(SUUIItemOfferButton *)self buttonDescriptor];
  v3 = [v2 showingConfirmation];

  return v3;
}

- (int64_t)progressType
{
  v2 = [(SUUIItemOfferButton *)self buttonDescriptor];
  v3 = [v2 progressType];

  return v3;
}

- (void)removeButtonStateAnimations
{
  v3 = [(UIView *)self->_borderView layer];
  v4 = [v3 animationKeys];
  v5 = [v4 count];

  if (v5)
  {
    [(SUUIItemOfferButton *)self _sendWillAnimate];
    [(SUUIItemOfferButton *)self _reloadForCurrentState:0];

    [(SUUIItemOfferButton *)self _sendDidAnimate];
  }
}

- (void)setBorderColorAlphaMultiplier:(double)a3
{
  if (vabdd_f64(self->_borderColorAlphaMultiplier, a3) > 0.00000011920929)
  {
    self->_borderColorAlphaMultiplier = a3;
    [(SUUIItemOfferButton *)self _reloadForCurrentState:0];
  }
}

- (void)setConfirmationTitle:(id)a3
{
  v9 = a3;
  v5 = [(SUUIItemOfferButton *)self confirmationTitle];
  v6 = v5;
  if (v5 != v9 && ([v5 isEqualToString:v9] & 1) == 0)
  {
    if (v9)
    {
      v7 = objc_alloc(MEMORY[0x277CCAB48]);
      v3 = [objc_opt_class() _defaultTitleAttributes];
      v8 = [v7 initWithString:v9 attributes:v3];
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong(&self->_confirmationTitleAttributedString, v8);
    if (v9)
    {
    }

    [(SUUIItemOfferButton *)self _updateForChangedConfirmationTitleProperty];
  }
}

- (void)setConfirmationTitleStyle:(int64_t)a3
{
  if (self->_confirmationTitleStyle != a3)
  {
    self->_confirmationTitleStyle = a3;
    [(SUUIItemOfferButton *)self _updateForChangedConfirmationTitleProperty];
  }
}

- (void)setFillStyle:(int64_t)a3
{
  if (self->_fillStyle != a3)
  {
    self->_fillStyle = a3;
    [(SUUIItemOfferButton *)self _reloadForCurrentState:0];
  }
}

- (void)setImage:(id)a3
{
  v5 = a3;
  image = self->_image;
  if (!image)
  {
    image = self->_cloudImage;
  }

  if (image != v5)
  {
    cloudImage = self->_cloudImage;
    self->_cloudImage = 0;
    v9 = v5;

    borderedImage = self->_borderedImage;
    self->_borderedImage = 0;

    objc_storeStrong(&self->_image, a3);
    [(SUUIItemOfferButton *)self _reloadForCurrentState:0];
    v5 = v9;
  }
}

- (void)setBorderedImage:(id)a3
{
  v5 = a3;
  if (self->_borderedImage != v5)
  {
    cloudImage = self->_cloudImage;
    self->_cloudImage = 0;
    v8 = v5;

    image = self->_image;
    self->_image = 0;

    objc_storeStrong(&self->_borderedImage, a3);
    [(SUUIItemOfferButton *)self _reloadForCurrentState:0];
    v5 = v8;
  }
}

- (void)setProgressType:(int64_t)a3 animated:(BOOL)a4
{
  v7 = [(SUUIItemOfferButton *)self buttonDescriptor];
  v8 = [v7 progressType];

  if (v8 != a3)
  {
    if (a4)
    {
      [(SUUIItemOfferButton *)self _reloadForCurrentState:1];
      v9 = [(SUUIItemOfferButton *)self buttonDescriptor];
      v10 = [v9 progressType];

      v11 = [(SUUIItemOfferButton *)self buttonDescriptor];
      v12 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:v11];

      v13 = [(SUUIItemOfferButton *)self buttonDescriptor];
      [v13 setProgressType:a3];

      v14 = [(SUUIItemOfferButton *)self buttonDescriptor];
      [v14 setHighlighted:0];

      v15 = [(SUUIItemOfferButton *)self buttonDescriptor];
      [v15 setShowingConfirmation:0];

      v16 = [(SUUIItemOfferButton *)self buttonDescriptor];
      v17 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:v16];

      if (v10)
      {
        v18 = [(SUUIItemOfferButton *)self buttonDescriptor];
        v19 = [v18 progressType];

        if (v19)
        {
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __48__SUUIItemOfferButton_setProgressType_animated___block_invoke;
          v25[3] = &unk_2798F5D30;
          v25[4] = self;
          [(SUUIItemOfferButton *)self _transitionFromProgress:v12 toProgress:v17 withDuration:v25 completion:0.4];
        }

        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __48__SUUIItemOfferButton_setProgressType_animated___block_invoke_3;
        v23[3] = &unk_2798F5D30;
        v23[4] = self;
        [(SUUIItemOfferButton *)self _transitionFromProgress:v12 toTitleOrImage:v17 withDuration:v23 completion:0.4];
      }

      else
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __48__SUUIItemOfferButton_setProgressType_animated___block_invoke_2;
        v24[3] = &unk_2798F5D30;
        v24[4] = self;
        [(SUUIItemOfferButton *)self _transitionFromTitleOrImage:v12 toProgress:v17 withDuration:v24 completion:0.4];
      }
    }

    else
    {
      v20 = [(SUUIItemOfferButton *)self buttonDescriptor];
      [v20 setProgressType:a3];

      v21 = [(SUUIItemOfferButton *)self buttonDescriptor];
      [v21 setHighlighted:0];

      v22 = [(SUUIItemOfferButton *)self buttonDescriptor];
      [v22 setShowingConfirmation:0];

      [(SUUIItemOfferButton *)self _sendWillAnimate];
      [(SUUIItemOfferButton *)self _reloadForCurrentState:0];

      [(SUUIItemOfferButton *)self _sendDidAnimate];
    }
  }
}

uint64_t __48__SUUIItemOfferButton_setProgressType_animated___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _reloadForCurrentState:0];
  }

  return result;
}

uint64_t __48__SUUIItemOfferButton_setProgressType_animated___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _reloadForCurrentState:0];
  }

  return result;
}

uint64_t __48__SUUIItemOfferButton_setProgressType_animated___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _reloadForCurrentState:0];
  }

  return result;
}

- (void)setShowingConfirmation:(BOOL)a3 animated:(BOOL)a4
{
  v5 = a3;
  if ([(SUUIItemOfferButton *)self isShowingConfirmation]!= a3)
  {
    if (a4)
    {
      [(SUUIItemOfferButton *)self _reloadForCurrentState:1];
      v7 = [(SUUIItemOfferButton *)self buttonDescriptor];
      v8 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:v7];

      v9 = [(SUUIItemOfferButton *)self buttonDescriptor];
      [v9 setShowingConfirmation:v5];

      v10 = [(SUUIItemOfferButton *)self buttonDescriptor];
      [v10 setHighlighted:0];

      v11 = [(SUUIItemOfferButton *)self buttonDescriptor];
      v12 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:v11];

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __55__SUUIItemOfferButton_setShowingConfirmation_animated___block_invoke;
      v15[3] = &unk_2798F5D30;
      v15[4] = self;
      [(SUUIItemOfferButton *)self _transitionFromTitle:v8 toTitle:v12 withDuration:v15 completion:0.26];
    }

    else
    {
      v13 = [(SUUIItemOfferButton *)self buttonDescriptor];
      [v13 setShowingConfirmation:v5];

      v14 = [(SUUIItemOfferButton *)self buttonDescriptor];
      [v14 setHighlighted:0];

      [(SUUIItemOfferButton *)self _reloadForCurrentState:0];
    }
  }
}

uint64_t __55__SUUIItemOfferButton_setShowingConfirmation_animated___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _reloadForCurrentState:0];
  }

  return result;
}

- (void)setTitle:(id)a3
{
  v9 = a3;
  v5 = [(SUUIItemOfferButton *)self title];
  v6 = v5;
  if (v5 != v9 && ([v5 isEqualToString:v9] & 1) == 0)
  {
    if (v9)
    {
      v7 = objc_alloc(MEMORY[0x277CCAB48]);
      v3 = [objc_opt_class() _defaultTitleAttributes];
      v8 = [v7 initWithString:v9 attributes:v3];
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong(&self->_titleAttributedString, v8);
    if (v9)
    {
    }

    [(SUUIItemOfferButton *)self _updateForChangedTitleProperty];
  }
}

- (void)setTitleStyle:(int64_t)a3
{
  if (self->_titleStyle != a3)
  {
    self->_titleStyle = a3;
    [(SUUIItemOfferButton *)self _updateForChangedTitleProperty];
  }
}

- (void)setUniversal:(BOOL)a3
{
  if (self->_universal != a3)
  {
    self->_universal = a3;
    [(SUUIItemOfferButton *)self _reloadForCurrentState:0];
  }
}

- (void)showCloudImage
{
  if (!self->_cloudImage)
  {
    v3 = objc_opt_class();
    cloudTintColor = self->_cloudTintColor;
    v5 = [(SUUIItemOfferButton *)self tintColor];
    v6 = [v3 cloudImageWithTintColor:cloudTintColor arrowTintColor:v5];
    cloudImage = self->_cloudImage;
    self->_cloudImage = v6;

    image = self->_image;
    self->_image = 0;

    [(SUUIItemOfferButton *)self _reloadForCurrentState:0];
  }
}

- (SUUIBuyButtonDescriptor)buttonDescriptor
{
  buttonDescriptor = self->_buttonDescriptor;
  if (!buttonDescriptor)
  {
    v4 = objc_alloc_init(SUUIBuyButtonDescriptor);
    v5 = self->_buttonDescriptor;
    self->_buttonDescriptor = v4;

    buttonDescriptor = self->_buttonDescriptor;
  }

  return buttonDescriptor;
}

- (NSString)buyType
{
  v2 = [(SUUIItemOfferButton *)self element];
  v3 = [v2 attributes];
  v4 = [v3 objectForKey:@"data-type"];
  v5 = [v4 copy];

  return v5;
}

+ (id)cloudImageWithTintColor:(id)a3 arrowTintColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!cloudImageWithTintColor_arrowTintColor__sCloudArrowImage)
  {
    v8 = MEMORY[0x277D755B8];
    v9 = SUUIBundle();
    v10 = [v8 imageNamed:@"CloudloadButtonArrow" inBundle:v9];
    v11 = cloudImageWithTintColor_arrowTintColor__sCloudArrowImage;
    cloudImageWithTintColor_arrowTintColor__sCloudArrowImage = v10;
  }

  if (!cloudImageWithTintColor_arrowTintColor__sCloudButtonImage)
  {
    v12 = MEMORY[0x277D755B8];
    v13 = SUUIBundle();
    v14 = [v12 imageNamed:@"CloudloadButtonCloud" inBundle:v13];
    v15 = cloudImageWithTintColor_arrowTintColor__sCloudButtonImage;
    cloudImageWithTintColor_arrowTintColor__sCloudButtonImage = v14;
  }

  v16 = cloudImageWithTintColor_arrowTintColor__sTintedImage;
  if (cloudImageWithTintColor_arrowTintColor__sTintedImage)
  {
    v17 = cloudImageWithTintColor_arrowTintColor__sLastArrowColor == v7;
  }

  else
  {
    v17 = 0;
  }

  if (v17 && cloudImageWithTintColor_arrowTintColor__sLastCloudColor == v6)
  {
    goto LABEL_18;
  }

  v19 = [cloudImageWithTintColor_arrowTintColor__sCloudArrowImage _flatImageWithColor:v7];
  v20 = [cloudImageWithTintColor_arrowTintColor__sCloudButtonImage _flatImageWithColor:v6];
  [v20 size];
  v22 = v21;
  [v19 size];
  if (v22 < v23)
  {
    v22 = v23;
  }

  [v20 size];
  v25 = v24;
  [v19 size];
  if (v25 < v26)
  {
    v25 = v26;
  }

  [v19 scale];
  v28 = v27;
  v36.width = v22;
  v36.height = v25;
  UIGraphicsBeginImageContextWithOptions(v36, 0, v28);
  if (UIGraphicsGetCurrentContext())
  {
    v29 = *MEMORY[0x277CBF348];
    v30 = *(MEMORY[0x277CBF348] + 8);
    [v20 drawAtPoint:{*MEMORY[0x277CBF348], v30}];
    [v19 drawAtPoint:{v29, v30}];
    v31 = UIGraphicsGetImageFromCurrentImageContext();
    v32 = cloudImageWithTintColor_arrowTintColor__sTintedImage;
    cloudImageWithTintColor_arrowTintColor__sTintedImage = v31;

    UIGraphicsEndImageContext();
    objc_storeStrong(&cloudImageWithTintColor_arrowTintColor__sLastArrowColor, a4);
    objc_storeStrong(&cloudImageWithTintColor_arrowTintColor__sLastCloudColor, a3);

    v16 = cloudImageWithTintColor_arrowTintColor__sTintedImage;
LABEL_18:
    v33 = v16;
    goto LABEL_19;
  }

  v33 = 0;
LABEL_19:

  return v33;
}

+ (id)cloudTintColorForBackgroundColor:(id)a3
{
  v3 = a3;
  if (!cloudTintColorForBackgroundColor__sDarkBackgroundCloudColor)
  {
    v4 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.5];
    v5 = cloudTintColorForBackgroundColor__sDarkBackgroundCloudColor;
    cloudTintColorForBackgroundColor__sDarkBackgroundCloudColor = v4;
  }

  v6 = &OBJC_PROTOCOL___SUUIArtworkRequestDelegate;
  if (!cloudTintColorForBackgroundColor__sLightBackgroundCloudColor)
  {
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    v8 = cloudTintColorForBackgroundColor__sLightBackgroundCloudColor;
    cloudTintColorForBackgroundColor__sLightBackgroundCloudColor = v7;
  }

  v9 = SUUIColorSchemeStyleForColor(v3);
  if (v9 <= 3)
  {
    v6 = *off_2798FAA18[v9];
  }

  return v6;
}

+ (SUUIItemOfferButton)itemOfferButtonWithAppearance:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setColoringWithAppearance:v4];

  return v5;
}

+ (id)localizedTitleForItemState:(id)a3 clientContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 state];
  if ((v8 & 3) != 0)
  {
    goto LABEL_2;
  }

  v10 = v8;
  if (v8 & 0x20 | [v6 libraryContentFlags] & 2)
  {
    if (v7)
    {
      v11 = @"ITEM_OFFER_BUTTON_UPDATE";
      goto LABEL_12;
    }

    v13 = @"ITEM_OFFER_BUTTON_UPDATE";
LABEL_17:
    v12 = [SUUIClientContext localizedStringForKey:v13 inBundles:0];
    goto LABEL_18;
  }

  if ((v10 & 4) != 0)
  {
    if ([a1 canOpenItemForItemState:v6 clientContext:v7])
    {
      if (v7)
      {
        v11 = @"ITEM_OFFER_BUTTON_OPEN";
        goto LABEL_12;
      }

      v13 = @"ITEM_OFFER_BUTTON_OPEN";
    }

    else
    {
      if (v7)
      {
        v11 = @"ITEM_OFFER_BUTTON_INSTALLED";
        goto LABEL_12;
      }

      v13 = @"ITEM_OFFER_BUTTON_INSTALLED";
    }

    goto LABEL_17;
  }

  if ((v10 & 0x40) != 0)
  {
    if ([v6 mediaCategory] == 3)
    {
      if (v7)
      {
        v11 = @"ITEM_OFFER_BUTTON_READ";
        goto LABEL_12;
      }

      v13 = @"ITEM_OFFER_BUTTON_READ";
    }

    else if ([v6 mediaCategory] == 5)
    {
      if (v7)
      {
        v11 = @"ITEM_OFFER_BUTTON_UNSUBSCRIBE";
        goto LABEL_12;
      }

      v13 = @"ITEM_OFFER_BUTTON_UNSUBSCRIBE";
    }

    else
    {
      if (v7)
      {
        v11 = @"ITEM_OFFER_BUTTON_PLAY";
        goto LABEL_12;
      }

      v13 = @"ITEM_OFFER_BUTTON_PLAY";
    }

    goto LABEL_17;
  }

  if ((v10 & 0x10) != 0)
  {
    if (v7)
    {
      v11 = @"ITEM_OFFER_BUTTON_GRATIS";
      goto LABEL_12;
    }

    v13 = @"ITEM_OFFER_BUTTON_GRATIS";
    goto LABEL_17;
  }

  if ((v10 & 8) == 0)
  {
LABEL_2:
    v9 = 0;
    goto LABEL_19;
  }

  if (!v7)
  {
    v13 = @"ITEM_OFFER_BUTTON_PURCHASED";
    goto LABEL_17;
  }

  v11 = @"ITEM_OFFER_BUTTON_PURCHASED";
LABEL_12:
  v12 = [v7 localizedStringForKey:v11];
LABEL_18:
  v9 = v12;
LABEL_19:

  return v9;
}

- (void)setCloudTintColor:(id)a3
{
  v4 = a3;
  if (self->_cloudTintColor != v4)
  {
    v12 = v4;
    v5 = [(UIColor *)v4 copy];
    cloudTintColor = self->_cloudTintColor;
    self->_cloudTintColor = v5;

    v4 = v12;
    if (self->_cloudImage)
    {
      v7 = objc_opt_class();
      v8 = self->_cloudTintColor;
      v9 = [(SUUIItemOfferButton *)self tintColor];
      v10 = [v7 cloudImageWithTintColor:v8 arrowTintColor:v9];
      cloudImage = self->_cloudImage;
      self->_cloudImage = v10;

      [(SUUIItemOfferButton *)self setNeedsDisplay];
      v4 = v12;
    }
  }
}

- (void)setColoringWithAppearance:(id)a3
{
  v9 = a3;
  if (v9)
  {
    v4 = [objc_opt_class() cloudTintColorForBackgroundColor:self->_backgroundColor];
    cloudTintColor = self->_cloudTintColor;
    self->_cloudTintColor = v4;

    v6 = [v9 confirmationColor];
    confirmationColor = self->_confirmationColor;
    self->_confirmationColor = v6;

    v8 = [v9 buttonColor];
    [(SUUIItemOfferButton *)self setTintColor:v8];
  }

  else
  {
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    [(SUUIItemOfferButton *)self setCloudTintColor:v8];
  }
}

- (BOOL)setTitle:(id)a3 confirmationTitle:(id)a4 itemState:(id)a5 clientContext:(id)a6 animated:(BOOL)a7
{
  v68 = a7;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  offerButtonStateDescription = self->_offerButtonStateDescription;
  self->_offerButtonStateDescription = &stru_286AECDE0;

  v16 = [v13 state];
  v17 = [(SUUIItemOfferButton *)self supportsPlayButton];
  v18 = v16 & 8;
  v19 = [(SUUIItemOfferButton *)self buttonDescriptor];
  [v19 setShouldSuppressEnabled:0];

  v20 = [(SUUIItemOfferButton *)self buttonDescriptor];
  [v20 setShowsUniversal:1];

  [(SUUIItemOfferButton *)self setEnabled:1];
  v21 = v16;
  v70 = v12;
  v71 = v11;
  v69 = v13;
  v64 = v17;
  if (v16)
  {
    v17 = 0;
    v63 = 0;
    v66 = 0;
    v26 = 0;
    v24 = 0;
    v23 = 0;
    v61 = v18 >> 3;
    v65 = 1;
    goto LABEL_24;
  }

  if ((v16 & 2) != 0)
  {
    [v13 downloadProgress];
    [(SUUIItemOfferButton *)self setProgress:v27];
    v21 = v16;
    v17 = 0;
    v63 = 0;
    v66 = 0;
    v26 = 0;
    v24 = 0;
    v23 = 0;
    v65 = 2;
    v61 = v18 >> 3;
    goto LABEL_24;
  }

  if ((v16 & 0x20) != 0)
  {
    v28 = v16;
    v23 = [objc_opt_class() localizedTitleForItemState:v13 clientContext:v14];
    v29 = self->_offerButtonStateDescription;
    self->_offerButtonStateDescription = @"update";

    v21 = v28;
    v17 = 0;
    v63 = 0;
    v65 = 0;
    v61 = 0;
    v26 = 0;
    v24 = 0;
    v66 = 1;
    goto LABEL_24;
  }

  if ((v16 & 4) != 0)
  {
    v22 = v16;
    v23 = [objc_opt_class() localizedTitleForItemState:v13 clientContext:v14];
    v30 = [objc_opt_class() canOpenItemForItemState:v13 clientContext:v14];
    v31 = self->_offerButtonStateDescription;
    if (v30)
    {
      self->_offerButtonStateDescription = @"open";

      v17 = 0;
      v63 = 0;
      v65 = 0;
      v61 = 0;
      v26 = 0;
      v24 = 0;
      goto LABEL_14;
    }

    self->_offerButtonStateDescription = @"installed";

    v37 = [(SUUIItemOfferButton *)self buttonDescriptor];
    v66 = 1;
    [v37 setShouldSuppressEnabled:1];

    v38 = [(SUUIItemOfferButton *)self buttonDescriptor];
    [v38 setShowsUniversal:0];

    [(SUUIItemOfferButton *)self setEnabled:0];
LABEL_18:
    v17 = 0;
    v63 = 0;
    v65 = 0;
    v61 = 0;
    v24 = 0;
    v26 = 2;
    goto LABEL_19;
  }

  if ((v16 & 0x40) != 0)
  {
    v32 = v16;
    v33 = objc_opt_class();
    v34 = v33;
    if (v17)
    {
      v35 = [objc_opt_class() playTintColorForBackgroundColor:self->_backgroundColor];
      v36 = [v34 playImageWithTintColor:v35];
      [(SUUIItemOfferButton *)self setImage:v36];

      v17 = 0;
      v63 = 0;
      v65 = 0;
      v61 = 0;
      v26 = 0;
      v24 = 0;
      v23 = 0;
    }

    else
    {
      v23 = [v33 localizedTitleForItemState:v13 clientContext:v14];
      v63 = 0;
      v65 = 0;
      v61 = 0;
      v26 = 0;
      v24 = 0;
    }

    v66 = 1;
    v21 = v32;
    goto LABEL_24;
  }

  if ((v16 & 8) != 0)
  {
    v22 = v16;
    v39 = [(SUUIItemOfferButton *)self buttonDescriptor];
    v17 = [v39 shouldSuppressCloudRestore];

    if (!v17)
    {
      v58 = self->_offerButtonStateDescription;
      self->_offerButtonStateDescription = @"download";

      v63 = 0;
      v65 = 0;
      v24 = 0;
      v23 = 0;
      v66 = 1;
      v26 = 2;
      v61 = 1;
      goto LABEL_19;
    }

    v23 = [objc_opt_class() localizedTitleForItemState:v13 clientContext:v14];
    v40 = [(SUUIItemOfferButton *)self buttonDescriptor];
    v66 = 1;
    [v40 setShouldSuppressEnabled:1];

    v41 = [(SUUIItemOfferButton *)self buttonDescriptor];
    [v41 setShowsUniversal:0];

    [(SUUIItemOfferButton *)self setEnabled:0];
    v42 = self->_offerButtonStateDescription;
    self->_offerButtonStateDescription = @"purchased";

    goto LABEL_18;
  }

  v22 = v16;
  if ((v16 & 0x10) == 0)
  {
    v23 = v11;
    v24 = v12;
    v63 = [(SUUIItemOfferButton *)self isShowingConfirmation];
    v17 = [v24 length] != 0;
    v25 = self->_offerButtonStateDescription;
    self->_offerButtonStateDescription = @"buy";

    v65 = 0;
    v61 = 0;
    v26 = 0;
LABEL_14:
    v66 = 1;
LABEL_19:
    v21 = v22;
    goto LABEL_24;
  }

  v23 = [objc_opt_class() localizedTitleForItemState:v13 clientContext:v14];
  if (v14)
  {
    [v14 localizedStringForKey:@"ITEM_OFFER_BUTTON_INSTALL_APP"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"ITEM_OFFER_BUTTON_INSTALL_APP" inBundles:0];
  }
  v59 = ;
  v60 = self->_offerButtonStateDescription;
  self->_offerButtonStateDescription = @"download";

  v63 = 0;
  v65 = 0;
  v61 = 0;
  v26 = 0;
  v17 = 1;
  v66 = 1;
  v21 = v22;
  v24 = v59;
LABEL_24:
  self->_downloadRestores = (v21 & 0x400) != 0;
  v43 = v21;
  [(SUUIItemOfferButton *)self setFillStyle:v26, v61];
  [(SUUIItemOfferButton *)self setShowsConfirmationState:v17];
  v44 = [(SUUIItemOfferButton *)self isShowingConfirmation];
  v45 = [(SUUIItemOfferButton *)self progressType];
  v46 = &OBJC_IVAR___SUUIItemOfferButton__titleAttributedString;
  if (v44)
  {
    v46 = &OBJC_IVAR___SUUIItemOfferButton__confirmationTitleAttributedString;
  }

  v47 = *(&self->super.super.super.super.isa + *v46);
  v48 = [(UIImageView *)self->_imageView image];
  v67 = v24;
  [(SUUIItemOfferButton *)self setConfirmationTitle:v24];
  v49 = v23;
  [(SUUIItemOfferButton *)self setTitle:v23];
  if (v66 && (v64 & ((v43 & 0x40) != 0)) == 0)
  {
    if (v62)
    {
      [(SUUIItemOfferButton *)self showCloudImage];
    }

    else
    {
      [(SUUIItemOfferButton *)self setImage:0];
    }
  }

  if (v65 == v45)
  {
    [(SUUIItemOfferButton *)self setShowingConfirmation:v63 animated:v68];
    if (v63 != v44)
    {
      LOBYTE(v50) = !v68;
      v51 = v71;
LABEL_38:
      v53 = v69;
      v52 = v12;
      v54 = v14;
      goto LABEL_48;
    }

    v55 = [(UIImageView *)self->_imageView image];

    v51 = v71;
    if (v55 != v48)
    {
      LOBYTE(v50) = 1;
      goto LABEL_38;
    }

    v56 = &OBJC_IVAR___SUUIItemOfferButton__titleAttributedString;
    if (v63)
    {
      v56 = &OBJC_IVAR___SUUIItemOfferButton__confirmationTitleAttributedString;
    }

    v54 = v14;
    if (v47 == *(&self->super.super.super.super.isa + *v56))
    {
      LOBYTE(v50) = 0;
    }

    else
    {
      v50 = [v47 isEqualToAttributedString:?] ^ 1;
    }

    v53 = v69;
    v52 = v70;
  }

  else
  {
    [(SUUIItemOfferButton *)self setProgressType:v65 animated:v68];
    v52 = v12;
    v51 = v71;
    v54 = v14;
    v53 = v69;
    if (v68)
    {
      LOBYTE(v50) = 0;
    }

    else if (v45)
    {
      LOBYTE(v50) = v66;
    }

    else
    {
      LOBYTE(v50) = 1;
    }
  }

LABEL_48:

  return v50;
}

- (BOOL)setValuesUsingItemOffer:(id)a3 itemState:(id)a4 clientContext:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 buttonText];
  v14 = [v10 confirmationText];
  if (!v14)
  {
    [v10 price];
    if (v15 == 0.0)
    {
      if (v12)
      {
        [v12 localizedStringForKey:@"ITEM_OFFER_BUTTON_INSTALL_APP"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"ITEM_OFFER_BUTTON_INSTALL_APP" inBundles:0];
      }
      v14 = ;
    }

    else
    {
      v14 = 0;
    }
  }

  v16 = [(SUUIItemOfferButton *)self setTitle:v13 confirmationTitle:v14 itemState:v11 clientContext:v12 animated:v6];

  return v16;
}

- (BOOL)setValuesUsingBuyButtonDescriptor:(id)a3 itemState:(id)a4 clientContext:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  [(SUUIItemOfferButton *)self setButtonDescriptor:v10];
  v13 = [v10 buttonType];
  if (v13 == 1)
  {
    if (v11)
    {
      [(SUUIItemState *)v11 setState:[(SUUIItemState *)v11 state]| 8];
    }

    else
    {
      v20 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(v10, "itemIdentifier")}];
      v11 = objc_alloc_init(SUUIItemState);
      [(SUUIItemState *)v11 setItemIdentifier:v20];
      v21 = [[SUUIStoreIdentifier alloc] initWithNumber:v20];
      [(SUUIItemState *)v11 setStoreIdentifier:v21];

      [(SUUIItemState *)v11 setState:8];
    }

    goto LABEL_15;
  }

  if (!v11)
  {
LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  v14 = v13;
  v15 = [(SUUIItemState *)v11 state];
  v16 = v15;
  v17 = 0;
  if (v14 == 2 && v15)
  {
    v17 = [(SUUIItemState *)v11 activeStateIsPreview]^ 1;
  }

  v18 = v14 == 2;
  if ((v18 ^ [(SUUIItemState *)v11 libraryContentFlags]))
  {
    v16 &= ~0x40uLL;
  }

  if ((v18 ^ [(SUUIItemState *)v11 downloadContentFlags]))
  {
    v16 &= 0xFFFFFFFFFFFFFFFCLL;
  }

  if ([(SUUIItemState *)v11 state]!= v16)
  {
    v19 = [(SUUIItemState *)v11 copy];
    [(SUUIItemState *)v19 setState:v16];

    v11 = v19;
  }

LABEL_16:
  [(SUUIItemOfferButton *)self setHidden:v17];
  v22 = [v10 buttonText];
  v23 = [v10 confirmationText];
  v24 = [(SUUIItemOfferButton *)self setTitle:v22 confirmationTitle:v23 itemState:v11 clientContext:v12 animated:v6];

  [(SUUIItemOfferButton *)self _reloadForCurrentState:0];
  return v24;
}

- (BOOL)supportsPlayButton
{
  v2 = [(SUUIItemOfferButton *)self element];
  v3 = [v2 parent];
  v4 = [v3 attributes];
  v5 = [v4 objectForKey:@"supportsPlayButton"];
  v6 = [v5 BOOLValue];

  return v6;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  if (![(SUUIItemOfferButton *)self isDisabledButSelectable:a3])
  {
    [(SUUIItemOfferButton *)self _reloadForCurrentState:1];
    v5 = [(SUUIItemOfferButton *)self buttonDescriptor];
    v6 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:v5];

    v7 = [(SUUIItemOfferButton *)self buttonDescriptor];
    [v7 setHighlighted:1];

    v8 = [(SUUIItemOfferButton *)self buttonDescriptor];
    v9 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:v8];

    v10 = [(SUUIItemOfferButton *)self buttonDescriptor];
    v11 = [v10 progressType];

    if (v11)
    {
      [(SUUIItemOfferButton *)self _transitionFromProgress:v6 toProgress:v9 withDuration:0 completion:0.15];
    }

    else if ([(SUUIItemOfferButton *)self hasNonBorderedImage])
    {
      [(SUUIItemOfferButton *)self _transitionFromImage:v6 toImage:v9 withDuration:0 completion:0.15];
    }

    else if ([(SUUIItemOfferButton *)self hasBorderedImage])
    {
      [(SUUIItemOfferButton *)self _transitionFromBorderedImage:v6 toTitle:v9 withDuration:0 completion:0.15];
    }

    else
    {
      [(SUUIItemOfferButton *)self _transitionFromTitle:v6 toTitle:v9 withDuration:0 completion:0.15];
    }
  }

  return 1;
}

- (void)cancelTrackingWithEvent:(id)a3
{
  if (![(SUUIItemOfferButton *)self isDisabledButSelectable])
  {
    v4 = [(SUUIItemOfferButton *)self buttonDescriptor];
    v5 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:v4];

    v6 = [(SUUIItemOfferButton *)self buttonDescriptor];
    [v6 setHighlighted:0];

    v7 = [(SUUIItemOfferButton *)self buttonDescriptor];
    v8 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:v7];

    v9 = [(SUUIItemOfferButton *)self buttonDescriptor];
    v10 = [v9 progressType];

    if (v10)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __47__SUUIItemOfferButton_cancelTrackingWithEvent___block_invoke;
      v14[3] = &unk_2798F5D30;
      v14[4] = self;
      [(SUUIItemOfferButton *)self _transitionFromProgress:v5 toProgress:v8 withDuration:v14 completion:0.15];
    }

    else if ([(SUUIItemOfferButton *)self hasNonBorderedImage])
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __47__SUUIItemOfferButton_cancelTrackingWithEvent___block_invoke_2;
      v13[3] = &unk_2798F5D30;
      v13[4] = self;
      [(SUUIItemOfferButton *)self _transitionFromImage:v5 toImage:v8 withDuration:v13 completion:0.15];
    }

    else if ([(SUUIItemOfferButton *)self hasBorderedImage])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __47__SUUIItemOfferButton_cancelTrackingWithEvent___block_invoke_3;
      v12[3] = &unk_2798F5D30;
      v12[4] = self;
      [(SUUIItemOfferButton *)self _transitionFromBorderedImage:v5 toTitle:v8 withDuration:v12 completion:0.15];
    }

    else
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __47__SUUIItemOfferButton_cancelTrackingWithEvent___block_invoke_4;
      v11[3] = &unk_2798F5D30;
      v11[4] = self;
      [(SUUIItemOfferButton *)self _transitionFromTitle:v5 toTitle:v8 withDuration:v11 completion:0.15];
    }
  }
}

uint64_t __47__SUUIItemOfferButton_cancelTrackingWithEvent___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _reloadForCurrentState:0];
  }

  return result;
}

uint64_t __47__SUUIItemOfferButton_cancelTrackingWithEvent___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _reloadForCurrentState:0];
  }

  return result;
}

uint64_t __47__SUUIItemOfferButton_cancelTrackingWithEvent___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _reloadForCurrentState:0];
  }

  return result;
}

uint64_t __47__SUUIItemOfferButton_cancelTrackingWithEvent___block_invoke_4(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _reloadForCurrentState:0];
  }

  return result;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  if (![(SUUIItemOfferButton *)self isDisabledButSelectable])
  {
    v6 = [(SUUIItemOfferButton *)self _touchInBounds:v5];
    v7 = [(SUUIItemOfferButton *)self buttonDescriptor];
    v8 = [v7 highlighted];

    if (v6 != v8)
    {
      v9 = [(SUUIItemOfferButton *)self buttonDescriptor];
      v10 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:v9];

      v11 = [(SUUIItemOfferButton *)self buttonDescriptor];
      [v11 setHighlighted:v6];

      v12 = [(SUUIItemOfferButton *)self buttonDescriptor];
      v13 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:v12];

      v14 = [(SUUIItemOfferButton *)self buttonDescriptor];
      v15 = [v14 progressType];

      if (v15)
      {
        [(SUUIItemOfferButton *)self _transitionFromProgress:v10 toProgress:v13 withDuration:0 completion:0.5];
      }

      else if ([(SUUIItemOfferButton *)self hasNonBorderedImage])
      {
        [(SUUIItemOfferButton *)self _transitionFromImage:v10 toImage:v13 withDuration:0 completion:0.5];
      }

      else if ([(SUUIItemOfferButton *)self hasBorderedImage])
      {
        [(SUUIItemOfferButton *)self _transitionFromBorderedImage:v10 toTitle:v13 withDuration:0 completion:0.5];
      }

      else
      {
        [(SUUIItemOfferButton *)self _transitionFromTitle:v10 toTitle:v13 withDuration:0 completion:0.5];
      }
    }
  }

  return 1;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = [(SUUIItemOfferButton *)self buttonDescriptor];
  v7 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:v6];

  v8 = [(SUUIItemOfferButton *)self buttonDescriptor];
  [v8 setHighlighted:0];

  v9 = [(SUUIItemOfferButton *)self buttonDescriptor];
  v10 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:v9];

  v11 = [(SUUIItemOfferButton *)self buttonDescriptor];
  v12 = [v11 progressType];

  if (!v12 && ![(SUUIItemOfferButton *)self hasNonBorderedImage]&& ![(SUUIItemOfferButton *)self hasBorderedImage]&& ![(SUUIItemOfferButton *)self isDisabledButSelectable])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__SUUIItemOfferButton_endTrackingWithTouch_withEvent___block_invoke;
    v17[3] = &unk_2798F5D30;
    v17[4] = self;
    [(SUUIItemOfferButton *)self _transitionFromTitle:v7 toTitle:v10 withDuration:v17 completion:0.25];
  }

  if ([(SUUIItemOfferButton *)self _touchInBounds:v5])
  {
    if ([(SUUIItemOfferButton *)self isDisabledButSelectable])
    {
      v13 = [(SUUIItemOfferButton *)self element];

      if (v13)
      {
        v14 = [(SUUIItemOfferButton *)self element];
        [v14 dispatchEvent:0x286AFEA60 eventAttribute:0x286AFEA80 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
      }
    }

    else
    {
      if ([(SUUIItemOfferButton *)self progressType]|| [(SUUIItemOfferButton *)self hasNonBorderedImage]|| [(SUUIItemOfferButton *)self hasBorderedImage]|| [(SUUIItemOfferButton *)self isShowingConfirmation]|| ![(SUUIItemOfferButton *)self showsConfirmationState])
      {
        v15 = self;
        v16 = 0x20000;
      }

      else
      {
        v15 = self;
        v16 = 0x40000;
      }

      [(SUUIItemOfferButton *)v15 sendActionsForControlEvents:v16];
    }
  }
}

uint64_t __54__SUUIItemOfferButton_endTrackingWithTouch_withEvent___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _reloadForCurrentState:0];
  }

  return result;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUUIItemOfferButton *)self buttonDescriptor];
  v6 = [v5 shouldSuppressEnabled];

  v7.receiver = self;
  v7.super_class = SUUIItemOfferButton;
  [(SUUIItemOfferButton *)&v7 setEnabled:v3 & ~v6];
  [(SUUIItemOfferButton *)self setNeedsLayout];
}

- (BOOL)_touchInBounds:(id)a3
{
  v4 = MEMORY[0x277D75418];
  v5 = a3;
  v6 = [v4 currentDevice];
  v7 = [v6 userInterfaceIdiom];

  [(SUUIItemOfferButton *)self bounds];
  v12 = -70.0;
  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v12 = -25.0;
  }

  v13 = v12 + v8;
  v14 = v12 + v9;
  v15 = -140.0;
  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v15 = -50.0;
  }

  v16 = v10 - v15;
  v17 = v11 - v15;
  [v5 locationInView:self];
  v19 = v18;
  v21 = v20;

  v22 = v13;
  v23 = v14;
  v24 = v16;
  v25 = v17;
  v26 = v19;
  v27 = v21;

  return CGRectContainsPoint(*&v22, *&v26);
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (self->_usesDrawRectPath)
  {
    [(SUUIItemOfferButton *)self frame];
    v9 = v8;
    v11 = v10;
    v13.receiver = self;
    v13.super_class = SUUIItemOfferButton;
    [(SUUIItemOfferButton *)&v13 setFrame:x, y, width, height];
    if (v9 != width || v11 != height)
    {
      [(SUUIItemOfferButton *)self setNeedsDisplay];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SUUIItemOfferButton;
    [(SUUIItemOfferButton *)&v13 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  }
}

- (void)drawRect:(CGRect)a3
{
  if (!self->_usesDrawRectPath)
  {
    return;
  }

  [(SUUIItemOfferButton *)self bounds:a3.origin.x];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if ([(SUUIItemOfferButton *)self hasNonBorderedImage])
  {
    cloudImage = self->_cloudImage;
    if (!cloudImage)
    {
      cloudImage = self->_image;
    }

    v44 = cloudImage;
    [(UIImage *)v44 size];
    *&v15 = (v11 - v15) * 0.5;
    v16 = ceilf(*&v15);
    *&v17 = (v13 - v17) * 0.5;
    v18 = ceilf(*&v17);
    v19 = v44;
  }

  else
  {
    if ([(SUUIItemOfferButton *)self hasBorderedImage])
    {
      [(UIImage *)self->_borderedImage size];
      if (v21 >= v13 + -16.0)
      {
        v22 = v13 + -16.0;
      }

      else
      {
        v22 = v21;
      }

      v23 = v20 * (v22 / v21);
      v24 = ceilf(v23);
      v25 = [(UIImage *)self->_borderedImage imageWithRenderingMode:2];
      v26 = [MEMORY[0x277D759A0] mainScreen];
      [v26 scale];
      v28 = v27;
      v45.width = v24;
      v45.height = v22;
      UIGraphicsBeginImageContextWithOptions(v45, 0, v28);

      v29 = [(SUUIItemOfferButton *)self tintColor];
      [v29 set];

      [v25 drawInRect:{0.0, 0.0, v24, v22}];
      v30 = UIGraphicsGetImageFromCurrentImageContext();

      UIGraphicsEndImageContext();
      [v30 drawAtPoint:{(v11 - v24) * 0.5, (v13 - v22) * 0.5}];
      v31 = objc_opt_class();
      titleStyle = self->_titleStyle;
      fillStyle = self->_fillStyle;
      if ([(SUUIItemOfferButton *)self isEnabled])
      {
        [(SUUIItemOfferButton *)self tintColor];
      }

      else
      {
        [MEMORY[0x277D75348] labelColor];
      }
      v40 = ;
      v41 = [(SUUIItemOfferButton *)self traitCollection];
      v44 = [v31 _cachedImageForAttributedTitle:0 titleStyle:titleStyle size:fillStyle fillStyle:0 universal:v40 tintColor:objc_msgSend(v41 interfaceStyle:{"userInterfaceStyle"), v11, v13}];

      [(UIImage *)v44 drawAtPoint:v7, v9];
      goto LABEL_25;
    }

    v34 = objc_opt_class();
    titleAttributedString = self->_titleAttributedString;
    v36 = self->_titleStyle;
    v37 = self->_fillStyle;
    universal = self->_universal;
    if (universal)
    {
      v3 = [(SUUIItemOfferButton *)self buttonDescriptor];
      v39 = [v3 showsUniversal];
    }

    else
    {
      v39 = 0;
    }

    if ([(SUUIItemOfferButton *)self isEnabled])
    {
      [(SUUIItemOfferButton *)self tintColor];
    }

    else
    {
      [MEMORY[0x277D75348] labelColor];
    }
    v42 = ;
    v43 = [(SUUIItemOfferButton *)self traitCollection];
    v44 = [v34 _cachedImageForAttributedTitle:titleAttributedString titleStyle:v36 size:v37 fillStyle:v39 universal:v42 tintColor:objc_msgSend(v43 interfaceStyle:{"userInterfaceStyle"), v11, v13}];

    if (universal)
    {
    }

    v19 = v44;
    v16 = v7;
    v18 = v9;
  }

  [(UIImage *)v19 drawAtPoint:v16, v18];
LABEL_25:
}

- (void)didMoveToWindow
{
  v3 = [(SUUIItemOfferButton *)self window];

  if (v3)
  {
    [(SUUIItemOfferButton *)self _reloadForCurrentState:0];
  }

  v4.receiver = self;
  v4.super_class = SUUIItemOfferButton;
  [(SUUIItemOfferButton *)&v4 didMoveToWindow];
}

- (void)layoutSubviews
{
  [(SUUIItemOfferButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(SUUIItemOfferButton *)self isEnabled])
  {
    v11 = [(SUUIItemOfferButton *)self isDisabledButSelectable];
    v12 = 0.4;
    if (!v11)
    {
      v12 = 1.0;
    }
  }

  else
  {
    v12 = 0.4;
  }

  [(SUUIItemOfferButton *)self setAlpha:v12];
  imageView = self->_imageView;
  if (imageView)
  {
    [(UIImageView *)imageView setContentMode:4];
    [(UIImageView *)self->_imageView setFrame:v4, v6, v8, v10];
  }

  borderedImageView = self->_borderedImageView;
  if (borderedImageView)
  {
    [(UIImageView *)borderedImageView setContentMode:1];
    v15 = self->_borderedImageView;
    [(SUUIItemOfferButton *)self _borderedImageViewFrame];
    [(UIImageView *)v15 setFrame:?];
  }

  universalImageView = self->_universalImageView;
  if (universalImageView)
  {
    [(UIImageView *)universalImageView frame];
    [(UIImageView *)self->_universalImageView setFrame:3.0, 3.0];
  }

  v17 = [(SUUIItemOfferButton *)self isShowingConfirmation];
  v18 = &OBJC_IVAR___SUUIItemOfferButton__titleStyle;
  if (v17)
  {
    v18 = &OBJC_IVAR___SUUIItemOfferButton__confirmationTitleStyle;
  }

  v19 = *(&self->super.super.super.super.isa + *v18);
  if (v19 == 2)
  {
    v20 = 7.0;
  }

  else
  {
    v20 = 10.0;
  }

  titleLabel = self->_titleLabel;
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  v30 = CGRectInset(v29, v20, 0.0);
  [(UILabel *)titleLabel setFrame:v30.origin.x, v30.origin.y, v30.size.width, v30.size.height];
  if ([objc_opt_class() _sizeMattersForTitleStyle:v19])
  {
    v22 = &OBJC_IVAR___SUUIItemOfferButton__titleAttributedString;
    if (v17)
    {
      v22 = &OBJC_IVAR___SUUIItemOfferButton__confirmationTitleAttributedString;
    }

    v23 = *(&self->super.super.super.super.isa + *v22);
    v24 = [v23 copy];
    [objc_opt_class() _titleSizeThatFitsForSize:v19 titleStyle:v23 mutableAttributedString:{v8 + v20 * -2.0, v10}];
    if (v24 != v23 && ([v24 isEqualToAttributedString:v23] & 1) == 0)
    {
      [(SUUIItemOfferButton *)self _reloadForCurrentState:0];
    }
  }

  if (self->_borderCornerRadiusMatchesHalfBoundingDimension)
  {
    v31.origin.x = v4;
    v31.origin.y = v6;
    v31.size.width = v8;
    v31.size.height = v10;
    CGRectGetWidth(v31);
    v32.origin.x = v4;
    v32.origin.y = v6;
    v32.size.width = v8;
    v32.size.height = v10;
    CGRectGetHeight(v32);
    UIFloorToViewScale();
    v26 = v25;
    v27 = [(UIView *)self->_borderView layer];
    [v27 setCornerRadius:v26];
  }
}

- (void)setBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_backgroundColor, a3);
  v5 = a3;
  v6 = [MEMORY[0x277D75348] clearColor];
  v7.receiver = self;
  v7.super_class = SUUIItemOfferButton;
  [(SUUIItemOfferButton *)&v7 setBackgroundColor:v6];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  p_titleStyle = &self->_titleStyle;
  if (self->_titleStyle == 1)
  {
    v6 = 20.0;
  }

  else
  {
    v6 = 26.0;
  }

  v7 = [(SUUIItemOfferButton *)self buttonDescriptor];
  v8 = [v7 progressType];

  v9 = v6;
  if (!v8)
  {
    if ([(SUUIItemOfferButton *)self hasNonBorderedImage])
    {
      image = self->_image;
      if (image)
      {
LABEL_11:
        [(UIImage *)image size];
        v9 = fmax(v12, 26.0);
        goto LABEL_33;
      }

      v11 = 488;
LABEL_10:
      image = *(&self->super.super.super.super.isa + v11);
      goto LABEL_11;
    }

    if ([(SUUIItemOfferButton *)self hasBorderedImage])
    {
      v11 = 688;
      goto LABEL_10;
    }

    v13 = [(NSMutableAttributedString *)self->_titleAttributedString mutableCopy];
    v14 = [(SUUIItemOfferButton *)self isShowingConfirmation];
    p_confirmationTitleStyle = p_titleStyle;
    if (v14)
    {
      p_confirmationTitleStyle = &self->_confirmationTitleStyle;
    }

    v16 = *p_confirmationTitleStyle;
    [(SUUIItemOfferButton *)self _horizontalInsetForTitleStyle:*p_confirmationTitleStyle];
    v18 = v17;
    if ([objc_opt_class() _sizeMattersForTitleStyle:*p_titleStyle])
    {
      [objc_opt_class() _titleSizeThatFitsForSize:*p_titleStyle titleStyle:v13 mutableAttributedString:{width, v6}];
      v20 = v19;
    }

    else
    {
      v20 = self->_titleFitSize.width;
    }

    if ([(SUUIItemOfferButton *)self isShowingConfirmation])
    {
      v21 = [(NSMutableAttributedString *)self->_confirmationTitleAttributedString mutableCopy];
      if ([objc_opt_class() _sizeMattersForTitleStyle:self->_confirmationTitleStyle])
      {
        [objc_opt_class() _titleSizeThatFitsForSize:self->_confirmationTitleStyle titleStyle:v21 mutableAttributedString:{width, v6}];
      }

      else
      {
        v22 = self->_confirmationTitleFitSize.width;
      }

      if (v20 - v22 >= 10.0 || v22 >= v20)
      {
        v20 = v22;
      }
    }

    v24 = ceil(v20 + v18 * 2.0);
    v25 = fmax(v24, 59.0);
    if (v25 > 109.0)
    {
      v25 = 109.0;
    }

    if (v16 == 2)
    {
      v9 = v25;
    }

    else
    {
      v9 = v24;
    }
  }

LABEL_33:
  v26 = v9;
  v27 = v6;
  result.height = v27;
  result.width = v26;
  return result;
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = SUUIItemOfferButton;
  [(SUUIItemOfferButton *)&v7 tintColorDidChange];
  v3 = [(SUUIItemOfferButton *)self tintColor];
  if (self->_cloudImage)
  {
    v4 = [objc_opt_class() cloudImageWithTintColor:self->_cloudTintColor arrowTintColor:v3];
    cloudImage = self->_cloudImage;
    self->_cloudImage = v4;
  }

  if (self->_universalImageView)
  {
    v6 = [objc_opt_class() _universalPlusImageWithTintColor:v3];
    [(UIImageView *)self->_universalImageView setImage:v6];
  }

  [(SUUIItemOfferButton *)self _reloadForCurrentState:0];
  [(SUUIItemOfferButton *)self setNeedsDisplay];
}

- (void)_cancelGestureAction:(id)a3
{
  if ([(SUUIItemOfferButton *)self isShowingConfirmation])
  {
    [(SUUIItemOfferButton *)self sendActionsForControlEvents:0x10000];
  }

  [(SUUIItemOfferButton *)self _removeCancelGestureRecognizer];
}

+ (id)_cachedImageForAttributedTitle:(id)a3 titleStyle:(int64_t)a4 size:(CGSize)a5 fillStyle:(int64_t)a6 universal:(BOOL)a7 tintColor:(id)a8 interfaceStyle:(int64_t)a9
{
  v11 = a7;
  height = a5.height;
  width = a5.width;
  v16 = a3;
  v17 = a8;
  if (!_cachedImageForAttributedTitle_titleStyle_size_fillStyle_universal_tintColor_interfaceStyle__cache)
  {
    v18 = objc_alloc_init(MEMORY[0x277CBEA78]);
    v19 = _cachedImageForAttributedTitle_titleStyle_size_fillStyle_universal_tintColor_interfaceStyle__cache;
    _cachedImageForAttributedTitle_titleStyle_size_fillStyle_universal_tintColor_interfaceStyle__cache = v18;

    [_cachedImageForAttributedTitle_titleStyle_size_fillStyle_universal_tintColor_interfaceStyle__cache setCountLimit:200];
  }

  v20 = [v16 hash];
  v21 = [v17 hash];
  v22 = 1000;
  if (!v11)
  {
    v22 = 0;
  }

  v23 = height + 100000 * a4 + width + 10000 * a6 + v22 + 1000000 * a9;
  v24 = v20 + v21;
  v25 = _cachedImageForAttributedTitle_titleStyle_size_fillStyle_universal_tintColor_interfaceStyle__cache;
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23 + v20 + v21];
  v27 = [v25 objectForKey:v26];

  if (!v27)
  {
    v27 = [objc_opt_class() _imageForAttributedTitle:v16 titleStyle:a4 size:a6 fillStyle:v11 universal:v17 tintColor:{width, height}];
    if (v27)
    {
      v28 = _cachedImageForAttributedTitle_titleStyle_size_fillStyle_universal_tintColor_interfaceStyle__cache;
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23 + v24];
      [v28 setObject:v27 forKey:v29];
    }
  }

  return v27;
}

+ (BOOL)canOpenItemForItemState:(id)a3 clientContext:(id)a4
{
  if (([a3 state] & 0x1000) != 0)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 bundleIdentifier];

    v6 = [v5 isEqualToString:@"com.apple.MobileSMS"] ^ 1;
  }

  return v6;
}

+ (id)_defaultTitleAttributes
{
  if (_defaultTitleAttributes_sOnceToken != -1)
  {
    +[SUUIItemOfferButton _defaultTitleAttributes];
  }

  v3 = _defaultTitleAttributes_sDefaultAttributes;

  return v3;
}

void __46__SUUIItemOfferButton__defaultTitleAttributes__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v1 = [v0 mutableCopy];

  [v1 setAlignment:1];
  [v1 setLineBreakMode:5];
  v4 = *MEMORY[0x277D74118];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v3 = _defaultTitleAttributes_sDefaultAttributes;
  _defaultTitleAttributes_sDefaultAttributes = v2;
}

+ (id)_imageForAttributedTitle:(id)a3 titleStyle:(int64_t)a4 size:(CGSize)a5 fillStyle:(int64_t)a6 universal:(BOOL)a7 tintColor:(id)a8
{
  v9 = a7;
  height = a5.height;
  width = a5.width;
  v14 = a3;
  v15 = a8;
  v16 = [MEMORY[0x277D759A0] mainScreen];
  [v16 scale];
  v18 = v17;
  v57.width = width;
  v57.height = height;
  UIGraphicsBeginImageContextWithOptions(v57, 0, v18);

  [v15 set];
  if (a6)
  {
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v64.origin.x = 0.0;
  v64.origin.y = 0.0;
  v64.size.width = width;
  v64.size.height = height;
  v65 = CGRectInset(v64, 0.5, 0.5);
  v48 = [MEMORY[0x277D75208] _bezierPathWithArcRoundedRect:v65.origin.x cornerRadius:{v65.origin.y, v65.size.width, v65.size.height, 3.0}];
  [v48 setLineWidth:1.0];
  [v48 stroke];

  if (v9)
  {
LABEL_3:
    v19 = MEMORY[0x277D755B8];
    v20 = SUUIBundle();
    v21 = [v19 imageNamed:@"BuyButtonUniversalIndicator" inBundle:v20];

    [v21 size];
    v23 = v22;
    [v21 size];
    v25 = v24;
    v58.origin.x = 3.0;
    v58.origin.y = 3.0;
    v58.size.width = v23;
    v58.size.height = v25;
    UIRectFill(v58);
    [v21 drawInRect:22 blendMode:3.0 alpha:{3.0, v23, v25, 1.0}];
  }

LABEL_4:
  v26 = [MEMORY[0x277D759A0] mainScreen];
  [v26 scale];
  v28 = v27;

  if (v14)
  {
    v29 = [v14 mutableCopy];
    [v29 addAttribute:*MEMORY[0x277D740C0] value:v15 range:{0, objc_msgSend(v29, "length")}];
    if (a4 == 2)
    {
      v30 = objc_alloc_init(MEMORY[0x277D74260]);
      [v30 setCachesLayout:1];
      [v30 setMaximumNumberOfLines:2];
      [v30 setWrapsForTruncationMode:1];
      [v30 setWantsBaselineOffset:1];
      v31 = width + -14.0;
      [v29 boundingRectWithSize:1 options:v30 context:{width + -14.0, height}];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v59.origin.x = 7.0;
      v59.origin.y = 0.0;
      v59.size.width = width + -14.0;
      v59.size.height = height;
      v54 = width;
      MinY = CGRectGetMinY(v59);
      v60.origin.x = 7.0;
      v60.origin.y = 0.0;
      v60.size.width = v31;
      v60.size.height = height;
      v55 = height;
      v41 = CGRectGetHeight(v60);
      v61.origin.x = v33;
      v61.origin.y = v35;
      v61.size.width = v37;
      v61.size.height = v39;
      v42 = round(MinY + (v41 - CGRectGetHeight(v61)) * 0.5);
      v62.origin.x = v33;
      v62.origin.y = v35;
      v62.size.width = v37;
      v62.size.height = v39;
      v43 = CGRectGetHeight(v62);
      [v30 baselineOffset];
      v45 = v44;
      v63.origin.x = 7.0;
      v63.origin.y = v42;
      height = v55;
      v63.size.width = v31;
      v63.size.height = v43;
      v46 = CGRectGetMinY(v63);
      v47 = v43;
      width = v54;
      [v29 drawWithRect:1 options:v30 context:{7.0, round(v28 * (v45 + v46)) / v28 - v45, v31, v47}];
    }

    else
    {
      [v29 size];
      v50 = v28 * ((height - v49) * 0.5);
      [v29 drawInRect:{0.0, roundf(v50) / v28, width, v49}];
    }
  }

  if (a6 == 1)
  {
    v51 = [MEMORY[0x277D75208] _bezierPathWithArcRoundedRect:0.0 cornerRadius:{0.0, width, height, 3.0}];
    [v51 setLineWidth:0.0];
    [v51 fillWithBlendMode:25 alpha:1.0];
  }

  v52 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v52;
}

+ (CGSize)_titleSizeThatFitsForSize:(CGSize)a3 titleStyle:(int64_t)a4 mutableAttributedString:(id)a5
{
  height = a3.height;
  width = a3.width;
  v40[1] = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (!_titleSizeThatFitsForSize_titleStyle_mutableAttributedString__cache)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEA78]);
    v11 = _titleSizeThatFitsForSize_titleStyle_mutableAttributedString__cache;
    _titleSizeThatFitsForSize_titleStyle_mutableAttributedString__cache = v10;

    [_titleSizeThatFitsForSize_titleStyle_mutableAttributedString__cache setCountLimit:200];
  }

  v12 = [a1 _sizeMattersForTitleStyle:a4];
  v13 = MEMORY[0x277CCACA8];
  if (v12)
  {
    v41.width = width;
    v41.height = height;
    v14 = NSStringFromCGSize(v41);
  }

  else
  {
    v14 = &stru_286AECDE0;
  }

  v15 = [v9 string];
  v16 = [v13 stringWithFormat:@"%@:%td%@", v14, a4, v15];

  if (v12)
  {
  }

  if (a4 == 2)
  {
    v17 = [MEMORY[0x277D74300] boldSystemFontOfSize:13.0];
    v18 = [MEMORY[0x277D74300] systemFontOfSize:11.0 weight:*MEMORY[0x277D74410]];
    v19 = [v9 length];
    v20 = *MEMORY[0x277D740A8];
    v39 = *MEMORY[0x277D740A8];
    v40[0] = v17;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    [v9 addAttributes:v21 range:{0, v19}];

    v22 = objc_alloc_init(MEMORY[0x277D74260]);
    [v22 setCachesLayout:1];
    [v22 setMaximumNumberOfLines:1];
    [v22 setWrapsForTruncationMode:0];
    [v9 boundingRectWithSize:1 options:v22 context:{1.79769313e308, 1.79769313e308}];
    if (v23 > 70.0)
    {
      [v22 setMaximumNumberOfLines:0];
      [v22 setWrapsForTruncationMode:1];
      v37 = v20;
      v38 = v18;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      [v9 addAttributes:v25 range:{0, v19}];

      [v9 boundingRectWithSize:1 options:v22 context:{45.0, 1.79769313e308}];
      v27 = v26;
      v29 = v28;
      if ([v22 numberOfLineFragments] < 3)
      {
LABEL_13:

        goto LABEL_17;
      }

      [v22 setMaximumNumberOfLines:2];
      [v9 boundingRectWithSize:1 options:v22 context:{95.0, 1.79769313e308}];
    }

    v27 = v23;
    v29 = v24;
    goto LABEL_13;
  }

  v30 = [_titleSizeThatFitsForSize_titleStyle_mutableAttributedString__cache objectForKey:v16];
  if (v30)
  {
    v17 = v30;
    [v30 CGSizeValue];
    v27 = v31;
    v29 = v32;
  }

  else
  {
    [v9 size];
    v27 = v33;
    v29 = v34;
    v17 = [MEMORY[0x277CCAE60] valueWithCGSize:?];
    [_titleSizeThatFitsForSize_titleStyle_mutableAttributedString__cache setObject:v17 forKey:v16];
  }

LABEL_17:

  v35 = v27;
  v36 = v29;
  result.height = v36;
  result.width = v35;
  return result;
}

+ (id)_universalPlusImageWithTintColor:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = _universalPlusImageWithTintColor__sImage;
  if (_universalPlusImageWithTintColor__sImage)
  {
    v7 = _universalPlusImageWithTintColor__sLastTintColor == v4;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = MEMORY[0x277D755B8];
    v9 = SUUIBundle();
    v10 = [v8 imageNamed:@"BuyButtonUniversalIndicator" inBundle:v9];
    v11 = _universalPlusImageWithTintColor__sImage;
    _universalPlusImageWithTintColor__sImage = v10;

    v12 = [_universalPlusImageWithTintColor__sImage _flatImageWithColor:v5];
    v13 = _universalPlusImageWithTintColor__sImage;
    _universalPlusImageWithTintColor__sImage = v12;

    objc_storeStrong(&_universalPlusImageWithTintColor__sLastTintColor, a3);
    v6 = _universalPlusImageWithTintColor__sImage;
  }

  v14 = v6;

  return v6;
}

+ (id)playTintColorForBackgroundColor:(id)a3
{
  v3 = a3;
  if (!playTintColorForBackgroundColor__sDarkBackgroundCloudColor)
  {
    v4 = [MEMORY[0x277D75348] labelColor];
    v5 = playTintColorForBackgroundColor__sDarkBackgroundCloudColor;
    playTintColorForBackgroundColor__sDarkBackgroundCloudColor = v4;
  }

  v6 = &OBJC_PROTOCOL___SUUIArtworkRequestDelegate;
  if (!playTintColorForBackgroundColor__sLightBackgroundCloudColor)
  {
    v7 = [MEMORY[0x277D75348] labelColor];
    v8 = playTintColorForBackgroundColor__sLightBackgroundCloudColor;
    playTintColorForBackgroundColor__sLightBackgroundCloudColor = v7;
  }

  v9 = SUUIColorSchemeStyleForColor(v3);
  if (v9 <= 3)
  {
    v6 = *off_2798FAA38[v9];
  }

  return v6;
}

+ (id)playImageWithTintColor:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = playImageWithTintColor__sUniversalPlayImage;
  if (playImageWithTintColor__sUniversalPlayImage)
  {
    v7 = playImageWithTintColor__sLastPlayTintColor == v4;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = MEMORY[0x277D755B8];
    v9 = SUUIBundle();
    v10 = [v8 imageNamed:@"PlayProduct" inBundle:v9];
    v11 = playImageWithTintColor__sUniversalPlayImage;
    playImageWithTintColor__sUniversalPlayImage = v10;

    v12 = [playImageWithTintColor__sUniversalPlayImage _flatImageWithColor:v5];
    v13 = playImageWithTintColor__sUniversalPlayImage;
    playImageWithTintColor__sUniversalPlayImage = v12;

    objc_storeStrong(&playImageWithTintColor__sLastPlayTintColor, a3);
    v6 = playImageWithTintColor__sUniversalPlayImage;
  }

  v14 = v6;

  return v6;
}

+ (id)playHighlightImageWithTintColor:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = playHighlightImageWithTintColor__sUniversalPlayHighlightImage;
  if (playHighlightImageWithTintColor__sUniversalPlayHighlightImage)
  {
    v7 = playHighlightImageWithTintColor__sLastPlayHighlightTintColor == v4;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = MEMORY[0x277D755B8];
    v9 = SUUIBundle();
    v10 = [v8 imageNamed:@"PlayProduct" inBundle:v9];
    v11 = playHighlightImageWithTintColor__sUniversalPlayHighlightImage;
    playHighlightImageWithTintColor__sUniversalPlayHighlightImage = v10;

    v12 = playHighlightImageWithTintColor__sUniversalPlayHighlightImage;
    v13 = [v5 colorWithAlphaComponent:0.2];
    v14 = [v12 _flatImageWithColor:v13];
    v15 = playHighlightImageWithTintColor__sUniversalPlayHighlightImage;
    playHighlightImageWithTintColor__sUniversalPlayHighlightImage = v14;

    objc_storeStrong(&playHighlightImageWithTintColor__sLastPlayHighlightTintColor, a3);
    v6 = playHighlightImageWithTintColor__sUniversalPlayHighlightImage;
  }

  v16 = v6;

  return v6;
}

+ (id)_imageForProgressType:(int64_t)a3
{
  v3 = 0;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v4 = &_imageForProgressType__sPausedImage;
      v5 = _imageForProgressType__sPausedImage;
      if (!_imageForProgressType__sPausedImage)
      {
        v6 = @"DownloadProgressButtonPaused";
        goto LABEL_14;
      }
    }

    else
    {
      if (a3 != 5)
      {
        goto LABEL_16;
      }

      v4 = &_imageForProgressType__sPlayImage;
      v5 = _imageForProgressType__sPlayImage;
      if (!_imageForProgressType__sPlayImage)
      {
        v6 = @"DownloadProgressButtonPlay";
LABEL_14:
        v7 = MEMORY[0x277D755B8];
        v8 = SUUIBundle();
        v9 = [v7 imageNamed:v6 inBundle:v8];
        v10 = *v4;
        *v4 = v9;

        v5 = *v4;
      }
    }
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        goto LABEL_16;
      }

      v4 = &_imageForProgressType__sDownloadingImage;
      v5 = _imageForProgressType__sDownloadingImage;
      if (_imageForProgressType__sDownloadingImage)
      {
        goto LABEL_15;
      }

      v6 = @"DownloadProgressButtonDownloading";
      goto LABEL_14;
    }

    v4 = &_imageForProgressType__sConnectingImage;
    v5 = _imageForProgressType__sConnectingImage;
    if (!_imageForProgressType__sConnectingImage)
    {
      v6 = @"DownloadProgressButtonConnecting";
      goto LABEL_14;
    }
  }

LABEL_15:
  v3 = v5;
LABEL_16:

  return v3;
}

+ (UIEdgeInsets)_imageInsetsForProgressType:(int64_t)a3
{
  if (a3 >= 5)
  {
    if (a3 == 5)
    {
      v9 = [MEMORY[0x277D759A0] mainScreen];
      [v9 scale];
      v4 = 1.0;
      v3 = 1.0 / v10;

      v5 = 0.0;
      v6 = 0.0;
      goto LABEL_3;
    }

    if (a3 != 6)
    {
      goto LABEL_3;
    }
  }

  v3 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
LABEL_3:
  v7 = v3;
  v8 = v4;
  result.right = v6;
  result.bottom = v5;
  result.left = v8;
  result.top = v7;
  return result;
}

+ (id)_basicAnimationWithKeyPath:(id)a3
{
  v3 = [MEMORY[0x277CD9E10] animationWithKeyPath:a3];
  [v3 setFillMode:*MEMORY[0x277CDA238]];
  [v3 setRemovedOnCompletion:0];
  UIAnimationDragCoefficient();
  *&v5 = 1.0 / v4;
  [v3 setSpeed:v5];

  return v3;
}

- (id)_buttonPropertiesForState:(id)a3
{
  v4 = a3;
  if ([(SUUIItemOfferButton *)self isEnabled])
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.4;
  }

  [(SUUIItemOfferButton *)self bounds];
  x = v58.origin.x;
  y = v58.origin.y;
  width = v58.size.width;
  height = v58.size.height;
  CGRectGetWidth(v58);
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  CGRectGetHeight(v59);
  v56 = [MEMORY[0x277D75348] clearColor];
  v10 = [(SUUIItemOfferButton *)self tintColor];
  [v10 alphaComponent];
  confirmationColor = [v10 colorWithAlphaComponent:v11 * self->_borderColorAlphaMultiplier];
  v13 = [v4 progressType];
  if (v13)
  {
    v14 = confirmationColor;
    v15 = [(SUUIItemOfferButton *)self buttonDescriptor];
    v16 = [v15 progressType];

    if (v16 == 1)
    {
      UIFloorToViewScale();
      v18 = v17;
      v49 = 0;
      v50 = 0;
      v55 = 0;
      v19 = 0;
      confirmationTitleStyle = 0;
      v54 = 0;
      v20 = 0;
      titleStyle = 0;
      v21 = 0;
      v48 = 0x100000001;
      v22 = 1.0;
    }

    else
    {
      v24 = [(SUUIItemOfferButton *)self buttonDescriptor];
      v25 = [v24 progressType];

      v22 = 1.0;
      if (v25 == 6)
      {
        v48 = 0;
        v49 = 0;
        v55 = 0;
        v19 = 0;
        confirmationTitleStyle = 0;
        v54 = 0;
        v20 = 0;
        titleStyle = 0;
        v21 = 0;
        v50 = 0;
        v18 = 3.0;
      }

      else
      {
        UIFloorToViewScale();
        v18 = v26;
        v55 = 0;
        v19 = 0;
        v49 = 0x100000000;
        confirmationTitleStyle = 0;
        v54 = 0;
        v20 = 0;
        titleStyle = 0;
        v21 = 0;
        v50 = 0;
        v48 = 1;
      }
    }

    confirmationColor = v14;
    goto LABEL_17;
  }

  if ([(SUUIItemOfferButton *)self hasNonBorderedImage])
  {
    image = self->_image;
    if (!image)
    {
      image = self->_cloudImage;
    }

    v21 = image;
    v48 = 0;
    v49 = 0;
    v55 = 0;
    v19 = 0;
    confirmationTitleStyle = 0;
    v54 = 0;
    v20 = 0;
    titleStyle = 0;
    v50 = 0;
    v18 = 3.0;
    v22 = 1.0;
  }

  else
  {
    if ([(SUUIItemOfferButton *)self hasBorderedImage])
    {
      v50 = self->_borderedImage;
      v55 = 0;
      v19 = 0;
      v48 = 0;
      confirmationTitleStyle = 0;
      v54 = 0;
      v20 = 0;
      titleStyle = 0;
      v21 = 0;
      v18 = 3.0;
      v22 = 1.0;
      v49 = 0x100000000;
      goto LABEL_17;
    }

    v37 = [v4 showingConfirmation];
    v38 = &OBJC_IVAR___SUUIItemOfferButton__titleAttributedString;
    if (v37)
    {
      v38 = &OBJC_IVAR___SUUIItemOfferButton__confirmationTitleAttributedString;
    }

    v39 = *(&self->super.super.super.super.isa + *v38);
    v40 = confirmationColor;
    if ([v4 showingConfirmation])
    {
      confirmationColor = self->_confirmationColor;
    }

    v41 = confirmationColor;

    confirmationColor = v41;
    v20 = ([v4 showingConfirmation] & 1) == 0 && objc_msgSend(v4, "showsUniversal") && self->_universal;
    v55 = [v4 showingConfirmation];
    titleStyle = self->_titleStyle;
    confirmationTitleStyle = self->_confirmationTitleStyle;
    fillStyle = self->_fillStyle;
    v18 = 3.0;
    v54 = v39;
    if (fillStyle == 1)
    {
      HIDWORD(v49) = [v39 length] != 0;
      confirmationColor = confirmationColor;

      v19 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA658]];
      v48 = 0;
      v21 = 0;
      v50 = 0;
      LODWORD(v49) = 1;
      v22 = 0.0;
      v56 = confirmationColor;
    }

    else
    {
      v22 = 1.0;
      if (fillStyle)
      {
        HIDWORD(v49) = 0;
      }

      else
      {
        HIDWORD(v49) = [v39 length] != 0;
        if ([v4 showingConfirmation])
        {
          v46 = confirmationColor;
          v47 = self->_backgroundColor;

          v19 = 0;
          v48 = 0;
          v21 = 0;
          v50 = 0;
          LODWORD(v49) = 1;
          v56 = v47;
          confirmationColor = v46;
          goto LABEL_17;
        }
      }

      v19 = 0;
      v48 = 0;
      v21 = 0;
      v50 = 0;
      LODWORD(v49) = 1;
    }
  }

LABEL_17:
  v51 = v10;
  if ([v4 highlighted])
  {
    if (v13 || v21 || (v27 = self->_fillStyle, v27 == 2))
    {
      v28 = v21;
      v29 = v20;
      v35 = v4;
      v36 = v56;
      v32 = confirmationColor;
      v5 = 0.200000003;
    }

    else
    {
      v28 = 0;
      v29 = v20;
      if (v27 == 1)
      {
        SUUIColorByAdjustingBrightness(v56, -0.2);
        v31 = v30 = confirmationColor;

        v32 = v31;
        v33 = v30;
        v34 = v30;
      }

      else
      {
        v33 = confirmationColor;
        v32 = confirmationColor;

        v42 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA658]];
        v34 = v19;
        v19 = v42;
      }

      v35 = v4;

      v36 = v32;
      confirmationColor = v33;
    }
  }

  else
  {
    v28 = v21;
    v29 = v20;
    v35 = v4;
    v36 = v56;
    v32 = confirmationColor;
  }

  v43 = objc_alloc_init(SUUIItemOfferButtonProperties);
  [(SUUIItemOfferButtonProperties *)v43 setHasBorderView:HIDWORD(v49)];
  [(SUUIItemOfferButtonProperties *)v43 setBorderBackgroundColor:v36];
  [(SUUIItemOfferButtonProperties *)v43 setBorderColor:v32];
  [(SUUIItemOfferButtonProperties *)v43 setBorderCompositingFilter:v19];
  [(SUUIItemOfferButtonProperties *)v43 setBorderWidth:v22];
  [(SUUIItemOfferButtonProperties *)v43 setBorderCornerRadius:v18];
  [(SUUIItemOfferButtonProperties *)v43 setBorderCornerRadiusMatchesHalfBoundingDimension:v48];
  [(SUUIItemOfferButtonProperties *)v43 setHasTitleLabel:v49];
  [(SUUIItemOfferButtonProperties *)v43 setAttributedText:v54];
  [(SUUIItemOfferButtonProperties *)v43 setTextColor:confirmationColor];
  [(SUUIItemOfferButtonProperties *)v43 setUniversal:v29];
  [(SUUIItemOfferButtonProperties *)v43 setTitleStyle:titleStyle];
  [(SUUIItemOfferButtonProperties *)v43 setConfirmationTitleStyle:confirmationTitleStyle];
  [(SUUIItemOfferButtonProperties *)v43 setImage:v28];
  [(SUUIItemOfferButtonProperties *)v43 setBorderedImage:v50];
  -[SUUIItemOfferButtonProperties setProgressType:](v43, "setProgressType:", [v35 progressType]);
  [(SUUIItemOfferButtonProperties *)v43 setProgressIndeterminate:HIDWORD(v48)];
  [(SUUIItemOfferButtonProperties *)v43 setProgress:self->_progress];
  [(SUUIItemOfferButtonProperties *)v43 setAlpha:v5];
  [(SUUIItemOfferButtonProperties *)v43 setCancelRecognizer:v55];
  [(SUUIItemOfferButtonProperties *)v43 setRestores:self->_downloadRestores];

  return v43;
}

- (id)_imageForProgressType:(int64_t)a3
{
  centerImageProvider = self->_centerImageProvider;
  if (!centerImageProvider || (centerImageProvider[2](centerImageProvider, self, a3), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [objc_opt_class() _imageForProgressType:a3];
  }

  return v6;
}

- (double)_horizontalInsetForTitleStyle:(int64_t)a3
{
  result = 10.0;
  if (a3 == 2)
  {
    return 7.0;
  }

  return result;
}

- (void)_transitionFromBorderedImage:(id)a3 toTitle:(id)a4 withDuration:(double)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = [(UIView *)self->_borderView layer];
  v12 = [v9 borderCompositingFilter];
  [v11 setCompositingFilter:v12];

  [(SUUIItemOfferButton *)self _adjustViewOrderingForProperties:v9];
  if ([v9 universal])
  {
    [(SUUIItemOfferButton *)self _insertUniversalView];
  }

  else
  {
    [(UIImageView *)self->_universalImageView removeFromSuperview];
    universalImageView = self->_universalImageView;
    self->_universalImageView = 0;
  }

  v14 = MEMORY[0x277D75D18];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __84__SUUIItemOfferButton__transitionFromBorderedImage_toTitle_withDuration_completion___block_invoke;
  v26[3] = &unk_2798F5AF8;
  v26[4] = self;
  v27 = v9;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __84__SUUIItemOfferButton__transitionFromBorderedImage_toTitle_withDuration_completion___block_invoke_2;
  v23 = &unk_2798F7218;
  v24 = self;
  v25 = v10;
  v15 = v10;
  v16 = v9;
  [v14 animateWithDuration:7 delay:v26 options:&v20 animations:a5 completion:0.0];
  v17 = [objc_opt_class() _basicAnimationWithKeyPath:{@"borderColor", v20, v21, v22, v23, v24}];
  [v17 setDuration:a5];
  v18 = [v16 borderColor];
  [v17 setToValue:{objc_msgSend(v18, "CGColor")}];

  v19 = [(UIView *)self->_borderView layer];
  [v19 addAnimation:v17 forKey:@"borderColor"];
}

uint64_t __84__SUUIItemOfferButton__transitionFromBorderedImage_toTitle_withDuration_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 472);
  v3 = [*(a1 + 40) borderBackgroundColor];
  [v2 setBackgroundColor:v3];

  v4 = *(a1 + 32);
  v5 = *(v4 + 576);
  v6 = [*(v4 + 688) imageWithRenderingMode:2];
  [v5 setImage:v6];

  v7 = *(*(a1 + 32) + 576);
  v8 = [*(a1 + 40) borderColor];
  [v7 setTintColor:v8];

  v9 = *(a1 + 32);
  [*(a1 + 40) alpha];
  [v9 setAlpha:?];
  v10 = *(a1 + 32);

  return [v10 _sendWillAnimate];
}

uint64_t __84__SUUIItemOfferButton__transitionFromBorderedImage_toTitle_withDuration_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 _sendDidAnimate];
}

- (void)_transitionFromTitle:(id)a3 toTitle:(id)a4 withDuration:(double)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a6;
  titleLabel = self->_titleLabel;
  v12 = [v9 attributedText];
  [(UILabel *)titleLabel setAttributedText:v12];

  v13 = [(UIView *)self->_borderView layer];
  v14 = [v9 borderCompositingFilter];
  [v13 setCompositingFilter:v14];

  [(SUUIItemOfferButton *)self _adjustViewOrderingForProperties:v9];
  if ([v9 universal])
  {
    [(SUUIItemOfferButton *)self _insertUniversalView];
  }

  else
  {
    [(UIImageView *)self->_universalImageView removeFromSuperview];
    universalImageView = self->_universalImageView;
    self->_universalImageView = 0;
  }

  v16 = MEMORY[0x277D75D18];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __76__SUUIItemOfferButton__transitionFromTitle_toTitle_withDuration_completion___block_invoke;
  v28[3] = &unk_2798F5AF8;
  v28[4] = self;
  v29 = v9;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __76__SUUIItemOfferButton__transitionFromTitle_toTitle_withDuration_completion___block_invoke_2;
  v25 = &unk_2798F7218;
  v26 = self;
  v27 = v10;
  v17 = v10;
  v18 = v9;
  [v16 animateWithDuration:7 delay:v28 options:&v22 animations:a5 completion:0.0];
  v19 = [objc_opt_class() _basicAnimationWithKeyPath:{@"borderColor", v22, v23, v24, v25, v26}];
  [v19 setDuration:a5];
  v20 = [v18 borderColor];
  [v19 setToValue:{objc_msgSend(v20, "CGColor")}];

  v21 = [(UIView *)self->_borderView layer];
  [v21 addAnimation:v19 forKey:@"borderColor"];
}

uint64_t __76__SUUIItemOfferButton__transitionFromTitle_toTitle_withDuration_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 472);
  v3 = [*(a1 + 40) borderBackgroundColor];
  [v2 setBackgroundColor:v3];

  v4 = *(*(a1 + 32) + 632);
  v5 = [*(a1 + 40) textColor];
  [v4 setTextColor:v5];

  v6 = *(a1 + 32);
  [*(a1 + 40) alpha];
  [v6 setAlpha:?];
  v7 = *(a1 + 32);

  return [v7 _sendWillAnimate];
}

uint64_t __76__SUUIItemOfferButton__transitionFromTitle_toTitle_withDuration_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 _sendDidAnimate];
}

- (void)_transitionFromImage:(id)a3 toImage:(id)a4 withDuration:(double)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a6;
  imageView = self->_imageView;
  v12 = [v9 image];
  [(UIImageView *)imageView setImage:v12];

  v13 = MEMORY[0x277D75D18];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__SUUIItemOfferButton__transitionFromImage_toImage_withDuration_completion___block_invoke;
  v18[3] = &unk_2798F5AF8;
  v18[4] = self;
  v19 = v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__SUUIItemOfferButton__transitionFromImage_toImage_withDuration_completion___block_invoke_2;
  v16[3] = &unk_2798F7218;
  v16[4] = self;
  v17 = v10;
  v14 = v10;
  v15 = v9;
  [v13 animateWithDuration:7 delay:v18 options:v16 animations:a5 completion:0.0];
}

uint64_t __76__SUUIItemOfferButton__transitionFromImage_toImage_withDuration_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) alpha];
  [v2 setAlpha:?];
  v3 = *(a1 + 32);

  return [v3 _sendWillAnimate];
}

uint64_t __76__SUUIItemOfferButton__transitionFromImage_toImage_withDuration_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 _sendDidAnimate];
}

- (void)_transitionFromProgress:(id)a3 toProgress:(id)a4 withDuration:(double)a5 completion:(id)a6
{
  v9 = a4;
  progressIndicator = self->_progressIndicator;
  v11 = a6;
  [v9 progress];
  [(SUUICircleProgressIndicator *)progressIndicator setProgress:?];
  -[SUUICircleProgressIndicator setIndeterminate:](self->_progressIndicator, "setIndeterminate:", [v9 progressIndeterminate]);
  v12 = self->_progressIndicator;
  v13 = -[SUUIItemOfferButton _imageForProgressType:](self, "_imageForProgressType:", [v9 progressType]);
  [(SUUICircleProgressIndicator *)v12 setImage:v13];

  v14 = self->_progressIndicator;
  [objc_opt_class() _imageInsetsForProgressType:{objc_msgSend(v9, "progressType")}];
  [(SUUICircleProgressIndicator *)v14 setImageInsets:?];
  v15 = MEMORY[0x277D75D18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__SUUIItemOfferButton__transitionFromProgress_toProgress_withDuration_completion___block_invoke;
  v17[3] = &unk_2798F5AF8;
  v17[4] = self;
  v18 = v9;
  v16 = v9;
  [v15 animateWithDuration:7 delay:v17 options:v11 animations:a5 completion:0.0];
}

uint64_t __82__SUUIItemOfferButton__transitionFromProgress_toProgress_withDuration_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) alpha];
  [v2 setAlpha:?];
  v3 = *(a1 + 32);

  return [v3 _sendWillAnimate];
}

- (void)_transitionFromTitleOrImage:(id)a3 toProgress:(id)a4 withDuration:(double)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!self->_borderView)
  {
    [(SUUIItemOfferButton *)self _insertBorderView];
    v13 = [(UIView *)self->_borderView layer];
    [v11 borderCornerRadius];
    [v13 setCornerRadius:?];

    v14 = [(UIView *)self->_borderView layer];
    v15 = [v11 borderColor];
    [v14 setBorderColor:{objc_msgSend(v15, "CGColor")}];

    borderView = self->_borderView;
    v17 = [v11 borderBackgroundColor];
    [(UIView *)borderView setBackgroundColor:v17];

    self->_borderCornerRadiusMatchesHalfBoundingDimension = [v11 borderCornerRadiusMatchesHalfBoundingDimension];
  }

  if (([v10 hasBorderView] & 1) == 0)
  {
    v18 = self->_borderView;
    CGAffineTransformMakeScale(&v46, 0.0, 0.0);
    [(UIView *)v18 setTransform:&v46];
  }

  [(SUUIItemOfferButton *)self _insertProgressIndicator];
  progressIndicator = self->_progressIndicator;
  [v11 progress];
  [(SUUICircleProgressIndicator *)progressIndicator setProgress:?];
  -[SUUICircleProgressIndicator setIndeterminate:](self->_progressIndicator, "setIndeterminate:", [v11 progressIndeterminate]);
  v20 = self->_progressIndicator;
  v21 = [(SUUIItemOfferButton *)self buttonDescriptor];
  v22 = -[SUUIItemOfferButton _imageForProgressType:](self, "_imageForProgressType:", [v21 progressType]);
  [(SUUICircleProgressIndicator *)v20 setImage:v22];

  v23 = self->_progressIndicator;
  v24 = objc_opt_class();
  v25 = [(SUUIItemOfferButton *)self buttonDescriptor];
  [v24 _imageInsetsForProgressType:{objc_msgSend(v25, "progressType")}];
  [(SUUICircleProgressIndicator *)v23 setImageInsets:?];

  [(SUUICircleProgressIndicator *)self->_progressIndicator setHidden:1];
  [(UIImageView *)self->_universalImageView removeFromSuperview];
  universalImageView = self->_universalImageView;
  self->_universalImageView = 0;

  [(UILabel *)self->_titleLabel removeFromSuperview];
  titleLabel = self->_titleLabel;
  self->_titleLabel = 0;

  v28 = [(UIView *)self->_borderView layer];
  [v11 borderWidth];
  [v28 setBorderWidth:?];

  v29 = [(UIView *)self->_borderView layer];
  v30 = [v11 borderCompositingFilter];
  [v29 setCompositingFilter:v30];

  [(SUUIItemOfferButton *)self _adjustViewOrderingForProperties:v11];
  v31 = MEMORY[0x277D75D18];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __86__SUUIItemOfferButton__transitionFromTitleOrImage_toProgress_withDuration_completion___block_invoke;
  v44[3] = &unk_2798F5AF8;
  v44[4] = self;
  v45 = v11;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __86__SUUIItemOfferButton__transitionFromTitleOrImage_toProgress_withDuration_completion___block_invoke_2;
  v41[3] = &unk_2798FA9F8;
  v41[4] = self;
  v42 = v45;
  v43 = v12;
  v32 = v12;
  v33 = v45;
  [v31 animateWithDuration:v44 animations:v41 completion:a5];
  v34 = [objc_opt_class() _basicAnimationWithKeyPath:@"borderColor"];
  [v34 setDuration:a5];
  v35 = [v33 borderColor];
  [v34 setToValue:{objc_msgSend(v35, "CGColor")}];

  v36 = [(UIView *)self->_borderView layer];
  [v36 addAnimation:v34 forKey:@"borderColor"];

  v37 = [objc_opt_class() _basicAnimationWithKeyPath:@"cornerRadius"];
  [v37 setDuration:a5];
  v38 = MEMORY[0x277CCABB0];
  [v33 borderCornerRadius];
  v39 = [v38 numberWithDouble:?];
  [v37 setToValue:v39];

  v40 = [(UIView *)self->_borderView layer];
  [v40 addAnimation:v37 forKey:@"cornerRadius"];
}

uint64_t __86__SUUIItemOfferButton__transitionFromTitleOrImage_toProgress_withDuration_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 472);
  v3 = [*(a1 + 40) borderBackgroundColor];
  [v2 setBackgroundColor:v3];

  v4 = *(*(a1 + 32) + 472);
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  v8[0] = *MEMORY[0x277CBF2C0];
  v8[1] = v5;
  v8[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v4 setTransform:v8];
  [*(*(a1 + 32) + 568) setAlpha:0.0];
  v6 = *(a1 + 32);
  [*(a1 + 40) alpha];
  [v6 setAlpha:?];
  return [*(a1 + 32) _sendWillAnimate];
}

uint64_t __86__SUUIItemOfferButton__transitionFromTitleOrImage_toProgress_withDuration_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 592) setHidden:0];
    if (([*(a1 + 40) hasBorderView] & 1) == 0)
    {
      [*(*(a1 + 32) + 472) removeFromSuperview];
      v4 = *(a1 + 32);
      v5 = *(v4 + 472);
      *(v4 + 472) = 0;
    }
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, a2);
  }

  v7 = *(a1 + 32);

  return [v7 _sendDidAnimate];
}

- (void)_transitionFromProgress:(id)a3 toTitleOrImage:(id)a4 withDuration:(double)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  borderView = self->_borderView;
  if (!borderView)
  {
    [(SUUIItemOfferButton *)self _insertBorderView];
    v14 = [(UIView *)self->_borderView layer];
    [v10 borderCornerRadius];
    [v14 setCornerRadius:?];

    v15 = [(UIView *)self->_borderView layer];
    v16 = [v10 borderColor];
    [v15 setBorderColor:{objc_msgSend(v16, "CGColor")}];

    self->_borderCornerRadiusMatchesHalfBoundingDimension = [v10 borderCornerRadiusMatchesHalfBoundingDimension];
    borderView = self->_borderView;
  }

  v17 = *(MEMORY[0x277CBF2C0] + 16);
  v46[0] = *MEMORY[0x277CBF2C0];
  v46[1] = v17;
  v46[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(UIView *)borderView setTransform:v46];
  v18 = [v11 image];

  if (v18)
  {
    [(SUUIItemOfferButton *)self _insertImageView];
    p_imageView = &self->_imageView;
    imageView = self->_imageView;
    v21 = [v11 image];
    [(UIImageView *)imageView setImage:v21];
  }

  else
  {
    [(SUUIItemOfferButton *)self _insertLabel];
    p_imageView = &self->_titleLabel;
    titleLabel = self->_titleLabel;
    v23 = [v11 attributedText];
    [(UILabel *)titleLabel setAttributedText:v23];

    v24 = self->_titleLabel;
    v21 = [v11 textColor];
    [(UILabel *)v24 setTextColor:v21];
  }

  [*p_imageView setAlpha:0.0];
  v25 = [(UIView *)self->_borderView layer];
  [v11 borderWidth];
  [v25 setBorderWidth:?];

  v26 = [(UIView *)self->_borderView layer];
  v27 = [v11 borderCompositingFilter];
  [v26 setCompositingFilter:v27];

  [(SUUICircleProgressIndicator *)self->_progressIndicator removeFromSuperview];
  progressIndicator = self->_progressIndicator;
  self->_progressIndicator = 0;

  [(SUUIItemOfferButton *)self _adjustViewOrderingForProperties:v11];
  v29 = MEMORY[0x277D75D18];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __86__SUUIItemOfferButton__transitionFromProgress_toTitleOrImage_withDuration_completion___block_invoke;
  v43[3] = &unk_2798F5AF8;
  v44 = v11;
  v45 = self;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __86__SUUIItemOfferButton__transitionFromProgress_toTitleOrImage_withDuration_completion___block_invoke_2;
  v39[3] = &unk_2798FA9F8;
  v40 = v44;
  v41 = self;
  v42 = v12;
  v30 = v12;
  v31 = v44;
  [v29 animateWithDuration:v43 animations:v39 completion:a5];
  v32 = [objc_opt_class() _basicAnimationWithKeyPath:@"borderColor"];
  [v32 setDuration:a5];
  v33 = [v31 borderColor];
  [v32 setToValue:{objc_msgSend(v33, "CGColor")}];

  v34 = [(UIView *)self->_borderView layer];
  [v34 addAnimation:v32 forKey:@"borderColor"];

  v35 = [objc_opt_class() _basicAnimationWithKeyPath:@"cornerRadius"];
  [v35 setDuration:a5];
  v36 = MEMORY[0x277CCABB0];
  [v31 borderCornerRadius];
  v37 = [v36 numberWithDouble:?];
  [v35 setToValue:v37];

  v38 = [(UIView *)self->_borderView layer];
  [v38 addAnimation:v35 forKey:@"cornerRadius"];
}

uint64_t __86__SUUIItemOfferButton__transitionFromProgress_toTitleOrImage_withDuration_completion___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) hasBorderView])
  {
    v2 = *(*(a1 + 40) + 472);
    CGAffineTransformMakeScale(&v7, 0.0, 0.0);
    [v2 setTransform:&v7];
  }

  v3 = *(*(a1 + 40) + 472);
  v4 = [*(a1 + 32) borderBackgroundColor];
  [v3 setBackgroundColor:v4];

  [*(*(a1 + 40) + 568) setAlpha:1.0];
  [*(*(a1 + 40) + 632) setAlpha:1.0];
  v5 = *(a1 + 40);
  [*(a1 + 32) alpha];
  [v5 setAlpha:?];
  return [*(a1 + 40) _sendWillAnimate];
}

uint64_t __86__SUUIItemOfferButton__transitionFromProgress_toTitleOrImage_withDuration_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (([*(a1 + 32) hasBorderView] & 1) == 0)
    {
      [*(*(a1 + 40) + 472) removeFromSuperview];
      v4 = *(a1 + 40);
      v5 = *(v4 + 472);
      *(v4 + 472) = 0;
    }

    if (([*(a1 + 32) universal] & 1) == 0)
    {
      [*(a1 + 40) _insertUniversalView];
    }
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, a2);
  }

  v7 = *(a1 + 40);

  return [v7 _sendDidAnimate];
}

- (void)_adjustViewOrderingForProperties:(id)a3
{
  v4 = a3;
  if (self->_borderView)
  {
    if (self->_titleLabel)
    {
      v9 = v4;
      v5 = [v4 borderCompositingFilter];

      if (v5)
      {
        p_titleLabel = &self->_titleLabel;
      }

      else
      {
        p_titleLabel = &self->_borderView;
      }

      if (v5)
      {
        p_borderView = &self->_borderView;
      }

      else
      {
        p_borderView = &self->_titleLabel;
      }
    }

    else
    {
      if (!self->_borderedImage)
      {
        goto LABEL_16;
      }

      v9 = v4;
      v8 = [v4 borderCompositingFilter];

      p_borderView = &self->_borderedImageView;
      if (v8)
      {
        p_titleLabel = &self->_borderedImageView;
      }

      else
      {
        p_titleLabel = &self->_borderView;
      }

      if (v8)
      {
        p_borderView = &self->_borderView;
      }
    }

    [(SUUIItemOfferButton *)self insertSubview:*p_borderView aboveSubview:*p_titleLabel];
    v4 = v9;
  }

LABEL_16:
}

- (void)_insertProgressIndicator
{
  if (!self->_progressIndicator)
  {
    v3 = [SUUICircleProgressIndicator alloc];
    [(SUUIItemOfferButton *)self bounds];
    v4 = [(SUUICircleProgressIndicator *)v3 initWithFrame:?];
    progressIndicator = self->_progressIndicator;
    self->_progressIndicator = v4;

    [(SUUICircleProgressIndicator *)self->_progressIndicator setAutoresizingMask:18];
    v6 = self->_progressIndicator;
    v7 = [MEMORY[0x277D75348] clearColor];
    [(SUUICircleProgressIndicator *)v6 setBackgroundColor:v7];

    [(SUUICircleProgressIndicator *)self->_progressIndicator _setHidesBorderView:1];
    [(SUUICircleProgressIndicator *)self->_progressIndicator setUserInteractionEnabled:0];
    v8 = self->_progressIndicator;

    [(SUUIItemOfferButton *)self addSubview:v8];
  }
}

- (void)_insertBorderView
{
  if (!self->_borderView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    borderView = self->_borderView;
    self->_borderView = v3;

    [(UIView *)self->_borderView setAutoresizingMask:18];
    v5 = self->_borderView;
    [(SUUIItemOfferButton *)self bounds];
    [(UIView *)v5 setFrame:?];
    [(UIView *)self->_borderView setUserInteractionEnabled:0];
    v6 = self->_borderView;

    [(SUUIItemOfferButton *)self addSubview:v6];
  }
}

- (void)_insertLabel
{
  if (!self->_titleLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = self->_titleLabel;
    self->_titleLabel = v3;

    [(UILabel *)self->_titleLabel setNumberOfLines:2];
    [(SUUIItemOfferButton *)self addSubview:self->_titleLabel];

    [(SUUIItemOfferButton *)self layoutSubviews];
  }
}

- (void)_insertImageView
{
  if (!self->_imageView)
  {
    v3 = objc_alloc(MEMORY[0x277D755E8]);
    [(SUUIItemOfferButton *)self bounds];
    v4 = [v3 initWithFrame:?];
    imageView = self->_imageView;
    self->_imageView = v4;

    v6 = self->_imageView;

    [(SUUIItemOfferButton *)self addSubview:v6];
  }
}

- (void)_insertBorderedImageView
{
  if (!self->_borderedImageView)
  {
    v3 = objc_alloc(MEMORY[0x277D755E8]);
    [(SUUIItemOfferButton *)self _borderedImageViewFrame];
    v4 = [v3 initWithFrame:?];
    borderedImageView = self->_borderedImageView;
    self->_borderedImageView = v4;

    v6 = self->_borderedImageView;

    [(SUUIItemOfferButton *)self addSubview:v6];
  }
}

- (CGRect)_borderedImageViewFrame
{
  [(SUUIItemOfferButton *)self bounds];
  v4 = v3 + -16.0;
  v5 = 0.0;
  v6 = 8.0;
  result.size.height = v4;
  result.size.width = v2;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)_insertUniversalView
{
  if (!self->_universalImageView)
  {
    v3 = objc_opt_class();
    v4 = [(SUUIItemOfferButton *)self tintColor];
    v7 = [v3 _universalPlusImageWithTintColor:v4];

    v5 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v7];
    universalImageView = self->_universalImageView;
    self->_universalImageView = v5;

    [(SUUIItemOfferButton *)self insertSubview:self->_universalImageView atIndex:0];
    [(UIImageView *)self->_universalImageView frame];
    [(UIImageView *)self->_universalImageView setFrame:3.0, 3.0];
  }
}

- (void)_insertCancelGestureRecognizer
{
  if (!self->_cancelGestureRecognizer)
  {
    v3 = [[SUUIFocusedTouchGestureRecognizer alloc] initWithFocusedView:self touchAllowance:-10.0, -10.0, -10.0, -10.0];
    cancelGestureRecognizer = self->_cancelGestureRecognizer;
    self->_cancelGestureRecognizer = v3;

    [(SUUIFocusedTouchGestureRecognizer *)self->_cancelGestureRecognizer addTarget:self action:sel__cancelGestureAction_];
  }

  v5 = [(SUUIItemOfferButton *)self window];
  [v5 addGestureRecognizer:self->_cancelGestureRecognizer];
}

- (void)_removeCancelGestureRecognizer
{
  cancelGestureRecognizer = self->_cancelGestureRecognizer;
  if (cancelGestureRecognizer)
  {
    v4 = [(SUUIFocusedTouchGestureRecognizer *)cancelGestureRecognizer view];
    [v4 removeGestureRecognizer:self->_cancelGestureRecognizer];

    [(SUUIFocusedTouchGestureRecognizer *)self->_cancelGestureRecognizer removeTarget:self action:0];
    v5 = self->_cancelGestureRecognizer;
    self->_cancelGestureRecognizer = 0;
  }
}

- (void)_reloadForCurrentState:(BOOL)a3
{
  if (a3)
  {
LABEL_5:
    [(SUUIItemOfferButton *)self setClipsToBounds:1];
    self->_usesDrawRectPath = 0;
    [(SUUIItemOfferButton *)self setNeedsDisplay];
    v7 = [(SUUIItemOfferButton *)self buttonDescriptor];
    v8 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:v7];

    v9 = [v8 hasBorderView];
    v10 = MEMORY[0x277CBF2C0];
    if (v9)
    {
      [(SUUIItemOfferButton *)self _insertBorderView];
      v11 = [(UIView *)self->_borderView layer];
      [v11 removeAllAnimations];

      borderView = self->_borderView;
      v13 = [v8 borderBackgroundColor];
      [(UIView *)borderView setBackgroundColor:v13];

      v14 = [(UIView *)self->_borderView layer];
      v15 = [v8 borderColor];
      [v14 setBorderColor:{objc_msgSend(v15, "CGColor")}];

      v16 = [(UIView *)self->_borderView layer];
      v17 = [v8 borderCompositingFilter];
      [v16 setCompositingFilter:v17];

      v18 = [(UIView *)self->_borderView layer];
      [v8 borderWidth];
      [v18 setBorderWidth:?];

      v19 = [(UIView *)self->_borderView layer];
      [v8 borderCornerRadius];
      [v19 setCornerRadius:?];

      v20 = self->_borderView;
      v21 = v10[1];
      v52 = *v10;
      v53 = v21;
      v54 = v10[2];
      [(UIView *)v20 setTransform:&v52];
      self->_borderCornerRadiusMatchesHalfBoundingDimension = [v8 borderCornerRadiusMatchesHalfBoundingDimension];
    }

    else
    {
      [(UIView *)self->_borderView removeFromSuperview];
      v22 = self->_borderView;
      self->_borderView = 0;
    }

    if ([v8 hasTitleLabel])
    {
      [(SUUIItemOfferButton *)self _insertLabel];
      v23 = [(UILabel *)self->_titleLabel layer];
      [v23 removeAllAnimations];

      titleLabel = self->_titleLabel;
      v25 = [v8 textColor];
      [(UILabel *)titleLabel setTextColor:v25];

      v26 = self->_titleLabel;
      v27 = [v8 attributedText];
      [(UILabel *)v26 setAttributedText:v27];
    }

    else
    {
      [(UILabel *)self->_titleLabel removeFromSuperview];
      v27 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SUUIItemOfferButton *)self _adjustViewOrderingForProperties:v8];
    if ([v8 universal])
    {
      [(SUUIItemOfferButton *)self _insertUniversalView];
    }

    else
    {
      [(UIImageView *)self->_universalImageView removeFromSuperview];
      universalImageView = self->_universalImageView;
      self->_universalImageView = 0;
    }

    v29 = [v8 image];

    if (v29)
    {
      [(SUUIItemOfferButton *)self _insertImageView];
      v30 = [(UIImageView *)self->_imageView layer];
      [v30 removeAllAnimations];

      image = self->_image;
      if (!image)
      {
        image = self->_cloudImage;
      }

      [(UIImageView *)self->_imageView setImage:image];
    }

    else
    {
      [(UIImageView *)self->_imageView removeFromSuperview];
      imageView = self->_imageView;
      self->_imageView = 0;
    }

    v33 = [v8 borderedImage];

    if (v33)
    {
      [(SUUIItemOfferButton *)self _insertBorderedImageView];
      [(UIImageView *)self->_borderedImageView setImage:self->_borderedImage];
      borderedImageView = self->_borderedImageView;
      v35 = [(SUUIItemOfferButton *)self tintColor];
      [(UIImageView *)borderedImageView setTintColor:v35];

      [(UIImageView *)self->_borderedImageView setContentMode:1];
      [(UIImageView *)self->_borderedImageView setClipsToBounds:1];
    }

    else
    {
      [(UIImageView *)self->_borderedImageView removeFromSuperview];
      v36 = self->_borderedImageView;
      self->_borderedImageView = 0;
    }

    if ([v8 progressType])
    {
      [(SUUIItemOfferButton *)self _insertProgressIndicator];
      v37 = [(SUUICircleProgressIndicator *)self->_progressIndicator layer];
      [v37 removeAllAnimations];

      progressIndicator = self->_progressIndicator;
      [v8 progress];
      [(SUUICircleProgressIndicator *)progressIndicator setProgress:?];
      -[SUUICircleProgressIndicator setIndeterminate:](self->_progressIndicator, "setIndeterminate:", [v8 progressIndeterminate]);
      v39 = self->_progressIndicator;
      v40 = -[SUUIItemOfferButton _imageForProgressType:](self, "_imageForProgressType:", [v8 progressType]);
      [(SUUICircleProgressIndicator *)v39 setImage:v40];

      v41 = self->_progressIndicator;
      [objc_opt_class() _imageInsetsForProgressType:{objc_msgSend(v8, "progressType")}];
      [(SUUICircleProgressIndicator *)v41 setImageInsets:?];
    }

    else
    {
      [(SUUICircleProgressIndicator *)self->_progressIndicator removeFromSuperview];
      v42 = self->_progressIndicator;
      self->_progressIndicator = 0;
    }

    [(UIImageView *)self->_universalImageView setAlpha:1.0];
    v43 = self->_borderView;
    v44 = v10[1];
    v52 = *v10;
    v53 = v44;
    v54 = v10[2];
    [(UIView *)v43 setTransform:&v52];
    if ([v8 cancelRecognizer])
    {
      [(SUUIItemOfferButton *)self _insertCancelGestureRecognizer];
    }

    else
    {
      [(SUUIItemOfferButton *)self _removeCancelGestureRecognizer];
    }

    v45 = [(SUUIItemOfferButton *)self layer];
    [v45 removeAllAnimations];

    [v8 alpha];
    [(SUUIItemOfferButton *)self setAlpha:?];

    return;
  }

  v4 = [(SUUIItemOfferButton *)self buttonDescriptor];
  if ([v4 progressType])
  {

    goto LABEL_5;
  }

  v5 = [(SUUIItemOfferButton *)self buttonDescriptor];
  v6 = [v5 showingConfirmation];

  if (v6)
  {
    goto LABEL_5;
  }

  [(SUUIItemOfferButton *)self setClipsToBounds:0];
  [(UIView *)self->_borderView removeFromSuperview];
  v46 = self->_borderView;
  self->_borderView = 0;

  [(UILabel *)self->_titleLabel removeFromSuperview];
  v47 = self->_titleLabel;
  self->_titleLabel = 0;

  [(UIImageView *)self->_universalImageView removeFromSuperview];
  v48 = self->_universalImageView;
  self->_universalImageView = 0;

  [(UIImageView *)self->_imageView removeFromSuperview];
  v49 = self->_imageView;
  self->_imageView = 0;

  [(UIImageView *)self->_borderedImageView removeFromSuperview];
  v50 = self->_borderedImageView;
  self->_borderedImageView = 0;

  [(SUUICircleProgressIndicator *)self->_progressIndicator removeFromSuperview];
  v51 = self->_progressIndicator;
  self->_progressIndicator = 0;

  [(SUUIItemOfferButton *)self _removeCancelGestureRecognizer];
  self->_usesDrawRectPath = 1;

  [(SUUIItemOfferButton *)self setNeedsDisplay];
}

- (void)_sendDidAnimate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 itemOfferButtonDidAnimateTransition:self];
  }
}

- (void)_sendWillAnimate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 itemOfferButtonWillAnimateTransition:self];
  }
}

- (void)_updateForChangedConfirmationTitleProperty
{
  v18[1] = *MEMORY[0x277D85DE8];
  confirmationTitleStyle = self->_confirmationTitleStyle;
  if (confirmationTitleStyle == 1)
  {
    v15 = *MEMORY[0x277D740A8];
    v4 = [MEMORY[0x277D74300] systemFontOfSize:11.0 weight:*MEMORY[0x277D74410]];
    v16 = v4;
    v5 = MEMORY[0x277CBEAC0];
    v6 = &v16;
    v7 = &v15;
  }

  else
  {
    if (confirmationTitleStyle)
    {
      goto LABEL_7;
    }

    v17 = *MEMORY[0x277D740A8];
    v4 = [MEMORY[0x277D74300] boldSystemFontOfSize:13.0];
    v18[0] = v4;
    v5 = MEMORY[0x277CBEAC0];
    v6 = v18;
    v7 = &v17;
  }

  v8 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:1];

  if (v8)
  {
    [(NSMutableAttributedString *)self->_confirmationTitleAttributedString addAttributes:v8 range:0, [(NSMutableAttributedString *)self->_confirmationTitleAttributedString length]];
  }

LABEL_7:
  if ([objc_opt_class() _sizeMattersForTitleStyle:self->_confirmationTitleStyle])
  {
    [(SUUIItemOfferButton *)self setNeedsLayout];
  }

  else
  {
    p_confirmationTitleFitSize = &self->_confirmationTitleFitSize;
    if (self->_confirmationTitleAttributedString)
    {
      v10 = objc_opt_class();
      v11 = self->_confirmationTitleStyle;
      v12 = [(NSMutableAttributedString *)self->_confirmationTitleAttributedString mutableCopy];
      [v10 _titleSizeThatFitsForSize:v11 titleStyle:v12 mutableAttributedString:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
      p_confirmationTitleFitSize->width = v13;
      self->_confirmationTitleFitSize.height = v14;
    }

    else
    {
      *p_confirmationTitleFitSize = *MEMORY[0x277CBF3A8];
    }
  }

  [(SUUIItemOfferButton *)self _reloadForCurrentState:0];
}

- (void)_updateForChangedTitleProperty
{
  v18[1] = *MEMORY[0x277D85DE8];
  titleStyle = self->_titleStyle;
  if (titleStyle == 1)
  {
    v15 = *MEMORY[0x277D740A8];
    v4 = [MEMORY[0x277D74300] systemFontOfSize:11.0 weight:*MEMORY[0x277D74410]];
    v16 = v4;
    v5 = MEMORY[0x277CBEAC0];
    v6 = &v16;
    v7 = &v15;
  }

  else
  {
    if (titleStyle)
    {
      goto LABEL_7;
    }

    v17 = *MEMORY[0x277D740A8];
    v4 = [MEMORY[0x277D74300] boldSystemFontOfSize:13.0];
    v18[0] = v4;
    v5 = MEMORY[0x277CBEAC0];
    v6 = v18;
    v7 = &v17;
  }

  v8 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:1];

  if (v8)
  {
    [(NSMutableAttributedString *)self->_titleAttributedString addAttributes:v8 range:0, [(NSMutableAttributedString *)self->_titleAttributedString length]];
  }

LABEL_7:
  if (self->_usesDrawRectPath)
  {
    [(SUUIItemOfferButton *)self setNeedsDisplay];
  }

  if ([objc_opt_class() _sizeMattersForTitleStyle:self->_titleStyle])
  {
    [(SUUIItemOfferButton *)self setNeedsLayout];
  }

  else
  {
    p_titleFitSize = &self->_titleFitSize;
    if (self->_titleAttributedString)
    {
      v10 = objc_opt_class();
      v11 = self->_titleStyle;
      v12 = [(NSMutableAttributedString *)self->_titleAttributedString mutableCopy];
      [v10 _titleSizeThatFitsForSize:v11 titleStyle:v12 mutableAttributedString:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
      p_titleFitSize->width = v13;
      self->_titleFitSize.height = v14;
    }

    else
    {
      *p_titleFitSize = *MEMORY[0x277CBF3A8];
    }
  }

  [(SUUIItemOfferButton *)self _reloadForCurrentState:0];
}

- (SUUIItemOfferButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end