@interface SUUIItemOfferButton
+ (BOOL)canOpenItemForItemState:(id)state clientContext:(id)context;
+ (CGSize)_titleSizeThatFitsForSize:(CGSize)size titleStyle:(int64_t)style mutableAttributedString:(id)string;
+ (SUUIItemOfferButton)itemOfferButtonWithAppearance:(id)appearance;
+ (UIEdgeInsets)_imageInsetsForProgressType:(int64_t)type;
+ (id)_basicAnimationWithKeyPath:(id)path;
+ (id)_cachedImageForAttributedTitle:(id)title titleStyle:(int64_t)style size:(CGSize)size fillStyle:(int64_t)fillStyle universal:(BOOL)universal tintColor:(id)color interfaceStyle:(int64_t)interfaceStyle;
+ (id)_defaultTitleAttributes;
+ (id)_imageForAttributedTitle:(id)title titleStyle:(int64_t)style size:(CGSize)size fillStyle:(int64_t)fillStyle universal:(BOOL)universal tintColor:(id)color;
+ (id)_imageForProgressType:(int64_t)type;
+ (id)_universalPlusImageWithTintColor:(id)color;
+ (id)cloudImageWithTintColor:(id)color arrowTintColor:(id)tintColor;
+ (id)cloudTintColorForBackgroundColor:(id)color;
+ (id)localizedTitleForItemState:(id)state clientContext:(id)context;
+ (id)playHighlightImageWithTintColor:(id)color;
+ (id)playImageWithTintColor:(id)color;
+ (id)playTintColorForBackgroundColor:(id)color;
- (BOOL)_touchInBounds:(id)bounds;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)isShowingConfirmation;
- (BOOL)setTitle:(id)title confirmationTitle:(id)confirmationTitle itemState:(id)state clientContext:(id)context animated:(BOOL)animated;
- (BOOL)setValuesUsingBuyButtonDescriptor:(id)descriptor itemState:(id)state clientContext:(id)context animated:(BOOL)animated;
- (BOOL)setValuesUsingItemOffer:(id)offer itemState:(id)state clientContext:(id)context animated:(BOOL)animated;
- (BOOL)supportsPlayButton;
- (CGRect)_borderedImageViewFrame;
- (CGSize)layoutSizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)buyType;
- (NSString)offerButtonStateDescription;
- (SUUIBuyButtonDescriptor)buttonDescriptor;
- (SUUIItemOfferButton)initWithFrame:(CGRect)frame;
- (SUUIItemOfferButtonDelegate)delegate;
- (UIImage)image;
- (double)_horizontalInsetForTitleStyle:(int64_t)style;
- (id)_buttonPropertiesForState:(id)state;
- (id)_imageForProgressType:(int64_t)type;
- (int64_t)progressType;
- (void)_adjustViewOrderingForProperties:(id)properties;
- (void)_cancelGestureAction:(id)action;
- (void)_insertBorderView;
- (void)_insertBorderedImageView;
- (void)_insertCancelGestureRecognizer;
- (void)_insertImageView;
- (void)_insertLabel;
- (void)_insertProgressIndicator;
- (void)_insertUniversalView;
- (void)_reloadForCurrentState:(BOOL)state;
- (void)_removeCancelGestureRecognizer;
- (void)_sendDidAnimate;
- (void)_sendWillAnimate;
- (void)_transitionFromBorderedImage:(id)image toTitle:(id)title withDuration:(double)duration completion:(id)completion;
- (void)_transitionFromImage:(id)image toImage:(id)toImage withDuration:(double)duration completion:(id)completion;
- (void)_transitionFromProgress:(id)progress toProgress:(id)toProgress withDuration:(double)duration completion:(id)completion;
- (void)_transitionFromProgress:(id)progress toTitleOrImage:(id)image withDuration:(double)duration completion:(id)completion;
- (void)_transitionFromTitle:(id)title toTitle:(id)toTitle withDuration:(double)duration completion:(id)completion;
- (void)_transitionFromTitleOrImage:(id)image toProgress:(id)progress withDuration:(double)duration completion:(id)completion;
- (void)_updateForChangedConfirmationTitleProperty;
- (void)_updateForChangedTitleProperty;
- (void)cancelTrackingWithEvent:(id)event;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)drawRect:(CGRect)rect;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)removeButtonStateAnimations;
- (void)setBackgroundColor:(id)color;
- (void)setBorderColorAlphaMultiplier:(double)multiplier;
- (void)setBorderedImage:(id)image;
- (void)setCloudTintColor:(id)color;
- (void)setColoringWithAppearance:(id)appearance;
- (void)setConfirmationTitle:(id)title;
- (void)setConfirmationTitleStyle:(int64_t)style;
- (void)setEnabled:(BOOL)enabled;
- (void)setFillStyle:(int64_t)style;
- (void)setFrame:(CGRect)frame;
- (void)setImage:(id)image;
- (void)setProgressType:(int64_t)type animated:(BOOL)animated;
- (void)setShowingConfirmation:(BOOL)confirmation animated:(BOOL)animated;
- (void)setTitle:(id)title;
- (void)setTitleStyle:(int64_t)style;
- (void)setUniversal:(BOOL)universal;
- (void)showCloudImage;
- (void)tintColorDidChange;
@end

@implementation SUUIItemOfferButton

- (SUUIItemOfferButton)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SUUIItemOfferButton;
  v3 = [(SUUIItemOfferButton *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (CGSize)layoutSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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
  buttonDescriptor = [(SUUIItemOfferButton *)self buttonDescriptor];
  showingConfirmation = [buttonDescriptor showingConfirmation];

  return showingConfirmation;
}

- (int64_t)progressType
{
  buttonDescriptor = [(SUUIItemOfferButton *)self buttonDescriptor];
  progressType = [buttonDescriptor progressType];

  return progressType;
}

- (void)removeButtonStateAnimations
{
  layer = [(UIView *)self->_borderView layer];
  animationKeys = [layer animationKeys];
  v5 = [animationKeys count];

  if (v5)
  {
    [(SUUIItemOfferButton *)self _sendWillAnimate];
    [(SUUIItemOfferButton *)self _reloadForCurrentState:0];

    [(SUUIItemOfferButton *)self _sendDidAnimate];
  }
}

- (void)setBorderColorAlphaMultiplier:(double)multiplier
{
  if (vabdd_f64(self->_borderColorAlphaMultiplier, multiplier) > 0.00000011920929)
  {
    self->_borderColorAlphaMultiplier = multiplier;
    [(SUUIItemOfferButton *)self _reloadForCurrentState:0];
  }
}

- (void)setConfirmationTitle:(id)title
{
  titleCopy = title;
  confirmationTitle = [(SUUIItemOfferButton *)self confirmationTitle];
  v6 = confirmationTitle;
  if (confirmationTitle != titleCopy && ([confirmationTitle isEqualToString:titleCopy] & 1) == 0)
  {
    if (titleCopy)
    {
      v7 = objc_alloc(MEMORY[0x277CCAB48]);
      _defaultTitleAttributes = [objc_opt_class() _defaultTitleAttributes];
      v8 = [v7 initWithString:titleCopy attributes:_defaultTitleAttributes];
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong(&self->_confirmationTitleAttributedString, v8);
    if (titleCopy)
    {
    }

    [(SUUIItemOfferButton *)self _updateForChangedConfirmationTitleProperty];
  }
}

- (void)setConfirmationTitleStyle:(int64_t)style
{
  if (self->_confirmationTitleStyle != style)
  {
    self->_confirmationTitleStyle = style;
    [(SUUIItemOfferButton *)self _updateForChangedConfirmationTitleProperty];
  }
}

- (void)setFillStyle:(int64_t)style
{
  if (self->_fillStyle != style)
  {
    self->_fillStyle = style;
    [(SUUIItemOfferButton *)self _reloadForCurrentState:0];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  image = self->_image;
  if (!image)
  {
    image = self->_cloudImage;
  }

  if (image != imageCopy)
  {
    cloudImage = self->_cloudImage;
    self->_cloudImage = 0;
    v9 = imageCopy;

    borderedImage = self->_borderedImage;
    self->_borderedImage = 0;

    objc_storeStrong(&self->_image, image);
    [(SUUIItemOfferButton *)self _reloadForCurrentState:0];
    imageCopy = v9;
  }
}

- (void)setBorderedImage:(id)image
{
  imageCopy = image;
  if (self->_borderedImage != imageCopy)
  {
    cloudImage = self->_cloudImage;
    self->_cloudImage = 0;
    v8 = imageCopy;

    image = self->_image;
    self->_image = 0;

    objc_storeStrong(&self->_borderedImage, image);
    [(SUUIItemOfferButton *)self _reloadForCurrentState:0];
    imageCopy = v8;
  }
}

- (void)setProgressType:(int64_t)type animated:(BOOL)animated
{
  buttonDescriptor = [(SUUIItemOfferButton *)self buttonDescriptor];
  progressType = [buttonDescriptor progressType];

  if (progressType != type)
  {
    if (animated)
    {
      [(SUUIItemOfferButton *)self _reloadForCurrentState:1];
      buttonDescriptor2 = [(SUUIItemOfferButton *)self buttonDescriptor];
      progressType2 = [buttonDescriptor2 progressType];

      buttonDescriptor3 = [(SUUIItemOfferButton *)self buttonDescriptor];
      v12 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:buttonDescriptor3];

      buttonDescriptor4 = [(SUUIItemOfferButton *)self buttonDescriptor];
      [buttonDescriptor4 setProgressType:type];

      buttonDescriptor5 = [(SUUIItemOfferButton *)self buttonDescriptor];
      [buttonDescriptor5 setHighlighted:0];

      buttonDescriptor6 = [(SUUIItemOfferButton *)self buttonDescriptor];
      [buttonDescriptor6 setShowingConfirmation:0];

      buttonDescriptor7 = [(SUUIItemOfferButton *)self buttonDescriptor];
      v17 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:buttonDescriptor7];

      if (progressType2)
      {
        buttonDescriptor8 = [(SUUIItemOfferButton *)self buttonDescriptor];
        progressType3 = [buttonDescriptor8 progressType];

        if (progressType3)
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
      buttonDescriptor9 = [(SUUIItemOfferButton *)self buttonDescriptor];
      [buttonDescriptor9 setProgressType:type];

      buttonDescriptor10 = [(SUUIItemOfferButton *)self buttonDescriptor];
      [buttonDescriptor10 setHighlighted:0];

      buttonDescriptor11 = [(SUUIItemOfferButton *)self buttonDescriptor];
      [buttonDescriptor11 setShowingConfirmation:0];

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

- (void)setShowingConfirmation:(BOOL)confirmation animated:(BOOL)animated
{
  confirmationCopy = confirmation;
  if ([(SUUIItemOfferButton *)self isShowingConfirmation]!= confirmation)
  {
    if (animated)
    {
      [(SUUIItemOfferButton *)self _reloadForCurrentState:1];
      buttonDescriptor = [(SUUIItemOfferButton *)self buttonDescriptor];
      v8 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:buttonDescriptor];

      buttonDescriptor2 = [(SUUIItemOfferButton *)self buttonDescriptor];
      [buttonDescriptor2 setShowingConfirmation:confirmationCopy];

      buttonDescriptor3 = [(SUUIItemOfferButton *)self buttonDescriptor];
      [buttonDescriptor3 setHighlighted:0];

      buttonDescriptor4 = [(SUUIItemOfferButton *)self buttonDescriptor];
      v12 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:buttonDescriptor4];

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __55__SUUIItemOfferButton_setShowingConfirmation_animated___block_invoke;
      v15[3] = &unk_2798F5D30;
      v15[4] = self;
      [(SUUIItemOfferButton *)self _transitionFromTitle:v8 toTitle:v12 withDuration:v15 completion:0.26];
    }

    else
    {
      buttonDescriptor5 = [(SUUIItemOfferButton *)self buttonDescriptor];
      [buttonDescriptor5 setShowingConfirmation:confirmationCopy];

      buttonDescriptor6 = [(SUUIItemOfferButton *)self buttonDescriptor];
      [buttonDescriptor6 setHighlighted:0];

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

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(SUUIItemOfferButton *)self title];
  v6 = title;
  if (title != titleCopy && ([title isEqualToString:titleCopy] & 1) == 0)
  {
    if (titleCopy)
    {
      v7 = objc_alloc(MEMORY[0x277CCAB48]);
      _defaultTitleAttributes = [objc_opt_class() _defaultTitleAttributes];
      v8 = [v7 initWithString:titleCopy attributes:_defaultTitleAttributes];
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong(&self->_titleAttributedString, v8);
    if (titleCopy)
    {
    }

    [(SUUIItemOfferButton *)self _updateForChangedTitleProperty];
  }
}

- (void)setTitleStyle:(int64_t)style
{
  if (self->_titleStyle != style)
  {
    self->_titleStyle = style;
    [(SUUIItemOfferButton *)self _updateForChangedTitleProperty];
  }
}

- (void)setUniversal:(BOOL)universal
{
  if (self->_universal != universal)
  {
    self->_universal = universal;
    [(SUUIItemOfferButton *)self _reloadForCurrentState:0];
  }
}

- (void)showCloudImage
{
  if (!self->_cloudImage)
  {
    v3 = objc_opt_class();
    cloudTintColor = self->_cloudTintColor;
    tintColor = [(SUUIItemOfferButton *)self tintColor];
    v6 = [v3 cloudImageWithTintColor:cloudTintColor arrowTintColor:tintColor];
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
  element = [(SUUIItemOfferButton *)self element];
  attributes = [element attributes];
  v4 = [attributes objectForKey:@"data-type"];
  v5 = [v4 copy];

  return v5;
}

+ (id)cloudImageWithTintColor:(id)color arrowTintColor:(id)tintColor
{
  colorCopy = color;
  tintColorCopy = tintColor;
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
    v17 = cloudImageWithTintColor_arrowTintColor__sLastArrowColor == tintColorCopy;
  }

  else
  {
    v17 = 0;
  }

  if (v17 && cloudImageWithTintColor_arrowTintColor__sLastCloudColor == colorCopy)
  {
    goto LABEL_18;
  }

  v19 = [cloudImageWithTintColor_arrowTintColor__sCloudArrowImage _flatImageWithColor:tintColorCopy];
  v20 = [cloudImageWithTintColor_arrowTintColor__sCloudButtonImage _flatImageWithColor:colorCopy];
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
    objc_storeStrong(&cloudImageWithTintColor_arrowTintColor__sLastArrowColor, tintColor);
    objc_storeStrong(&cloudImageWithTintColor_arrowTintColor__sLastCloudColor, color);

    v16 = cloudImageWithTintColor_arrowTintColor__sTintedImage;
LABEL_18:
    v33 = v16;
    goto LABEL_19;
  }

  v33 = 0;
LABEL_19:

  return v33;
}

+ (id)cloudTintColorForBackgroundColor:(id)color
{
  colorCopy = color;
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

  v9 = SUUIColorSchemeStyleForColor(colorCopy);
  if (v9 <= 3)
  {
    v6 = *off_2798FAA18[v9];
  }

  return v6;
}

+ (SUUIItemOfferButton)itemOfferButtonWithAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v5 = objc_alloc_init(self);
  [v5 setColoringWithAppearance:appearanceCopy];

  return v5;
}

+ (id)localizedTitleForItemState:(id)state clientContext:(id)context
{
  stateCopy = state;
  contextCopy = context;
  state = [stateCopy state];
  if ((state & 3) != 0)
  {
    goto LABEL_2;
  }

  v10 = state;
  if (state & 0x20 | [stateCopy libraryContentFlags] & 2)
  {
    if (contextCopy)
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
    if ([self canOpenItemForItemState:stateCopy clientContext:contextCopy])
    {
      if (contextCopy)
      {
        v11 = @"ITEM_OFFER_BUTTON_OPEN";
        goto LABEL_12;
      }

      v13 = @"ITEM_OFFER_BUTTON_OPEN";
    }

    else
    {
      if (contextCopy)
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
    if ([stateCopy mediaCategory] == 3)
    {
      if (contextCopy)
      {
        v11 = @"ITEM_OFFER_BUTTON_READ";
        goto LABEL_12;
      }

      v13 = @"ITEM_OFFER_BUTTON_READ";
    }

    else if ([stateCopy mediaCategory] == 5)
    {
      if (contextCopy)
      {
        v11 = @"ITEM_OFFER_BUTTON_UNSUBSCRIBE";
        goto LABEL_12;
      }

      v13 = @"ITEM_OFFER_BUTTON_UNSUBSCRIBE";
    }

    else
    {
      if (contextCopy)
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
    if (contextCopy)
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

  if (!contextCopy)
  {
    v13 = @"ITEM_OFFER_BUTTON_PURCHASED";
    goto LABEL_17;
  }

  v11 = @"ITEM_OFFER_BUTTON_PURCHASED";
LABEL_12:
  v12 = [contextCopy localizedStringForKey:v11];
LABEL_18:
  v9 = v12;
LABEL_19:

  return v9;
}

- (void)setCloudTintColor:(id)color
{
  colorCopy = color;
  if (self->_cloudTintColor != colorCopy)
  {
    v12 = colorCopy;
    v5 = [(UIColor *)colorCopy copy];
    cloudTintColor = self->_cloudTintColor;
    self->_cloudTintColor = v5;

    colorCopy = v12;
    if (self->_cloudImage)
    {
      v7 = objc_opt_class();
      v8 = self->_cloudTintColor;
      tintColor = [(SUUIItemOfferButton *)self tintColor];
      v10 = [v7 cloudImageWithTintColor:v8 arrowTintColor:tintColor];
      cloudImage = self->_cloudImage;
      self->_cloudImage = v10;

      [(SUUIItemOfferButton *)self setNeedsDisplay];
      colorCopy = v12;
    }
  }
}

- (void)setColoringWithAppearance:(id)appearance
{
  appearanceCopy = appearance;
  if (appearanceCopy)
  {
    v4 = [objc_opt_class() cloudTintColorForBackgroundColor:self->_backgroundColor];
    cloudTintColor = self->_cloudTintColor;
    self->_cloudTintColor = v4;

    confirmationColor = [appearanceCopy confirmationColor];
    confirmationColor = self->_confirmationColor;
    self->_confirmationColor = confirmationColor;

    buttonColor = [appearanceCopy buttonColor];
    [(SUUIItemOfferButton *)self setTintColor:buttonColor];
  }

  else
  {
    buttonColor = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    [(SUUIItemOfferButton *)self setCloudTintColor:buttonColor];
  }
}

- (BOOL)setTitle:(id)title confirmationTitle:(id)confirmationTitle itemState:(id)state clientContext:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  titleCopy = title;
  confirmationTitleCopy = confirmationTitle;
  stateCopy = state;
  contextCopy = context;
  offerButtonStateDescription = self->_offerButtonStateDescription;
  self->_offerButtonStateDescription = &stru_286AECDE0;

  state = [stateCopy state];
  supportsPlayButton = [(SUUIItemOfferButton *)self supportsPlayButton];
  v18 = state & 8;
  buttonDescriptor = [(SUUIItemOfferButton *)self buttonDescriptor];
  [buttonDescriptor setShouldSuppressEnabled:0];

  buttonDescriptor2 = [(SUUIItemOfferButton *)self buttonDescriptor];
  [buttonDescriptor2 setShowsUniversal:1];

  [(SUUIItemOfferButton *)self setEnabled:1];
  v21 = state;
  v70 = confirmationTitleCopy;
  v71 = titleCopy;
  v69 = stateCopy;
  v64 = supportsPlayButton;
  if (state)
  {
    supportsPlayButton = 0;
    isShowingConfirmation = 0;
    v66 = 0;
    v26 = 0;
    v24 = 0;
    v23 = 0;
    v61 = v18 >> 3;
    v65 = 1;
    goto LABEL_24;
  }

  if ((state & 2) != 0)
  {
    [stateCopy downloadProgress];
    [(SUUIItemOfferButton *)self setProgress:v27];
    v21 = state;
    supportsPlayButton = 0;
    isShowingConfirmation = 0;
    v66 = 0;
    v26 = 0;
    v24 = 0;
    v23 = 0;
    v65 = 2;
    v61 = v18 >> 3;
    goto LABEL_24;
  }

  if ((state & 0x20) != 0)
  {
    v28 = state;
    v23 = [objc_opt_class() localizedTitleForItemState:stateCopy clientContext:contextCopy];
    v29 = self->_offerButtonStateDescription;
    self->_offerButtonStateDescription = @"update";

    v21 = v28;
    supportsPlayButton = 0;
    isShowingConfirmation = 0;
    v65 = 0;
    v61 = 0;
    v26 = 0;
    v24 = 0;
    v66 = 1;
    goto LABEL_24;
  }

  if ((state & 4) != 0)
  {
    v22 = state;
    v23 = [objc_opt_class() localizedTitleForItemState:stateCopy clientContext:contextCopy];
    v30 = [objc_opt_class() canOpenItemForItemState:stateCopy clientContext:contextCopy];
    v31 = self->_offerButtonStateDescription;
    if (v30)
    {
      self->_offerButtonStateDescription = @"open";

      supportsPlayButton = 0;
      isShowingConfirmation = 0;
      v65 = 0;
      v61 = 0;
      v26 = 0;
      v24 = 0;
      goto LABEL_14;
    }

    self->_offerButtonStateDescription = @"installed";

    buttonDescriptor3 = [(SUUIItemOfferButton *)self buttonDescriptor];
    v66 = 1;
    [buttonDescriptor3 setShouldSuppressEnabled:1];

    buttonDescriptor4 = [(SUUIItemOfferButton *)self buttonDescriptor];
    [buttonDescriptor4 setShowsUniversal:0];

    [(SUUIItemOfferButton *)self setEnabled:0];
LABEL_18:
    supportsPlayButton = 0;
    isShowingConfirmation = 0;
    v65 = 0;
    v61 = 0;
    v24 = 0;
    v26 = 2;
    goto LABEL_19;
  }

  if ((state & 0x40) != 0)
  {
    v32 = state;
    v33 = objc_opt_class();
    v34 = v33;
    if (supportsPlayButton)
    {
      v35 = [objc_opt_class() playTintColorForBackgroundColor:self->_backgroundColor];
      v36 = [v34 playImageWithTintColor:v35];
      [(SUUIItemOfferButton *)self setImage:v36];

      supportsPlayButton = 0;
      isShowingConfirmation = 0;
      v65 = 0;
      v61 = 0;
      v26 = 0;
      v24 = 0;
      v23 = 0;
    }

    else
    {
      v23 = [v33 localizedTitleForItemState:stateCopy clientContext:contextCopy];
      isShowingConfirmation = 0;
      v65 = 0;
      v61 = 0;
      v26 = 0;
      v24 = 0;
    }

    v66 = 1;
    v21 = v32;
    goto LABEL_24;
  }

  if ((state & 8) != 0)
  {
    v22 = state;
    buttonDescriptor5 = [(SUUIItemOfferButton *)self buttonDescriptor];
    supportsPlayButton = [buttonDescriptor5 shouldSuppressCloudRestore];

    if (!supportsPlayButton)
    {
      v58 = self->_offerButtonStateDescription;
      self->_offerButtonStateDescription = @"download";

      isShowingConfirmation = 0;
      v65 = 0;
      v24 = 0;
      v23 = 0;
      v66 = 1;
      v26 = 2;
      v61 = 1;
      goto LABEL_19;
    }

    v23 = [objc_opt_class() localizedTitleForItemState:stateCopy clientContext:contextCopy];
    buttonDescriptor6 = [(SUUIItemOfferButton *)self buttonDescriptor];
    v66 = 1;
    [buttonDescriptor6 setShouldSuppressEnabled:1];

    buttonDescriptor7 = [(SUUIItemOfferButton *)self buttonDescriptor];
    [buttonDescriptor7 setShowsUniversal:0];

    [(SUUIItemOfferButton *)self setEnabled:0];
    v42 = self->_offerButtonStateDescription;
    self->_offerButtonStateDescription = @"purchased";

    goto LABEL_18;
  }

  v22 = state;
  if ((state & 0x10) == 0)
  {
    v23 = titleCopy;
    v24 = confirmationTitleCopy;
    isShowingConfirmation = [(SUUIItemOfferButton *)self isShowingConfirmation];
    supportsPlayButton = [v24 length] != 0;
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

  v23 = [objc_opt_class() localizedTitleForItemState:stateCopy clientContext:contextCopy];
  if (contextCopy)
  {
    [contextCopy localizedStringForKey:@"ITEM_OFFER_BUTTON_INSTALL_APP"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"ITEM_OFFER_BUTTON_INSTALL_APP" inBundles:0];
  }
  v59 = ;
  v60 = self->_offerButtonStateDescription;
  self->_offerButtonStateDescription = @"download";

  isShowingConfirmation = 0;
  v65 = 0;
  v61 = 0;
  v26 = 0;
  supportsPlayButton = 1;
  v66 = 1;
  v21 = v22;
  v24 = v59;
LABEL_24:
  self->_downloadRestores = (v21 & 0x400) != 0;
  v43 = v21;
  [(SUUIItemOfferButton *)self setFillStyle:v26, v61];
  [(SUUIItemOfferButton *)self setShowsConfirmationState:supportsPlayButton];
  isShowingConfirmation2 = [(SUUIItemOfferButton *)self isShowingConfirmation];
  progressType = [(SUUIItemOfferButton *)self progressType];
  v46 = &OBJC_IVAR___SUUIItemOfferButton__titleAttributedString;
  if (isShowingConfirmation2)
  {
    v46 = &OBJC_IVAR___SUUIItemOfferButton__confirmationTitleAttributedString;
  }

  v47 = *(&self->super.super.super.super.isa + *v46);
  image = [(UIImageView *)self->_imageView image];
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

  if (v65 == progressType)
  {
    [(SUUIItemOfferButton *)self setShowingConfirmation:isShowingConfirmation animated:animatedCopy];
    if (isShowingConfirmation != isShowingConfirmation2)
    {
      LOBYTE(v50) = !animatedCopy;
      v51 = v71;
LABEL_38:
      v53 = v69;
      v52 = confirmationTitleCopy;
      v54 = contextCopy;
      goto LABEL_48;
    }

    image2 = [(UIImageView *)self->_imageView image];

    v51 = v71;
    if (image2 != image)
    {
      LOBYTE(v50) = 1;
      goto LABEL_38;
    }

    v56 = &OBJC_IVAR___SUUIItemOfferButton__titleAttributedString;
    if (isShowingConfirmation)
    {
      v56 = &OBJC_IVAR___SUUIItemOfferButton__confirmationTitleAttributedString;
    }

    v54 = contextCopy;
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
    [(SUUIItemOfferButton *)self setProgressType:v65 animated:animatedCopy];
    v52 = confirmationTitleCopy;
    v51 = v71;
    v54 = contextCopy;
    v53 = v69;
    if (animatedCopy)
    {
      LOBYTE(v50) = 0;
    }

    else if (progressType)
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

- (BOOL)setValuesUsingItemOffer:(id)offer itemState:(id)state clientContext:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  offerCopy = offer;
  stateCopy = state;
  contextCopy = context;
  buttonText = [offerCopy buttonText];
  confirmationText = [offerCopy confirmationText];
  if (!confirmationText)
  {
    [offerCopy price];
    if (v15 == 0.0)
    {
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"ITEM_OFFER_BUTTON_INSTALL_APP"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"ITEM_OFFER_BUTTON_INSTALL_APP" inBundles:0];
      }
      confirmationText = ;
    }

    else
    {
      confirmationText = 0;
    }
  }

  v16 = [(SUUIItemOfferButton *)self setTitle:buttonText confirmationTitle:confirmationText itemState:stateCopy clientContext:contextCopy animated:animatedCopy];

  return v16;
}

- (BOOL)setValuesUsingBuyButtonDescriptor:(id)descriptor itemState:(id)state clientContext:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  descriptorCopy = descriptor;
  stateCopy = state;
  contextCopy = context;
  [(SUUIItemOfferButton *)self setButtonDescriptor:descriptorCopy];
  buttonType = [descriptorCopy buttonType];
  if (buttonType == 1)
  {
    if (stateCopy)
    {
      [(SUUIItemState *)stateCopy setState:[(SUUIItemState *)stateCopy state]| 8];
    }

    else
    {
      v20 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(descriptorCopy, "itemIdentifier")}];
      stateCopy = objc_alloc_init(SUUIItemState);
      [(SUUIItemState *)stateCopy setItemIdentifier:v20];
      v21 = [[SUUIStoreIdentifier alloc] initWithNumber:v20];
      [(SUUIItemState *)stateCopy setStoreIdentifier:v21];

      [(SUUIItemState *)stateCopy setState:8];
    }

    goto LABEL_15;
  }

  if (!stateCopy)
  {
LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  v14 = buttonType;
  state = [(SUUIItemState *)stateCopy state];
  v16 = state;
  v17 = 0;
  if (v14 == 2 && state)
  {
    v17 = [(SUUIItemState *)stateCopy activeStateIsPreview]^ 1;
  }

  v18 = v14 == 2;
  if ((v18 ^ [(SUUIItemState *)stateCopy libraryContentFlags]))
  {
    v16 &= ~0x40uLL;
  }

  if ((v18 ^ [(SUUIItemState *)stateCopy downloadContentFlags]))
  {
    v16 &= 0xFFFFFFFFFFFFFFFCLL;
  }

  if ([(SUUIItemState *)stateCopy state]!= v16)
  {
    v19 = [(SUUIItemState *)stateCopy copy];
    [(SUUIItemState *)v19 setState:v16];

    stateCopy = v19;
  }

LABEL_16:
  [(SUUIItemOfferButton *)self setHidden:v17];
  buttonText = [descriptorCopy buttonText];
  confirmationText = [descriptorCopy confirmationText];
  v24 = [(SUUIItemOfferButton *)self setTitle:buttonText confirmationTitle:confirmationText itemState:stateCopy clientContext:contextCopy animated:animatedCopy];

  [(SUUIItemOfferButton *)self _reloadForCurrentState:0];
  return v24;
}

- (BOOL)supportsPlayButton
{
  element = [(SUUIItemOfferButton *)self element];
  parent = [element parent];
  attributes = [parent attributes];
  v5 = [attributes objectForKey:@"supportsPlayButton"];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  if (![(SUUIItemOfferButton *)self isDisabledButSelectable:touch])
  {
    [(SUUIItemOfferButton *)self _reloadForCurrentState:1];
    buttonDescriptor = [(SUUIItemOfferButton *)self buttonDescriptor];
    v6 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:buttonDescriptor];

    buttonDescriptor2 = [(SUUIItemOfferButton *)self buttonDescriptor];
    [buttonDescriptor2 setHighlighted:1];

    buttonDescriptor3 = [(SUUIItemOfferButton *)self buttonDescriptor];
    v9 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:buttonDescriptor3];

    buttonDescriptor4 = [(SUUIItemOfferButton *)self buttonDescriptor];
    progressType = [buttonDescriptor4 progressType];

    if (progressType)
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

- (void)cancelTrackingWithEvent:(id)event
{
  if (![(SUUIItemOfferButton *)self isDisabledButSelectable])
  {
    buttonDescriptor = [(SUUIItemOfferButton *)self buttonDescriptor];
    v5 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:buttonDescriptor];

    buttonDescriptor2 = [(SUUIItemOfferButton *)self buttonDescriptor];
    [buttonDescriptor2 setHighlighted:0];

    buttonDescriptor3 = [(SUUIItemOfferButton *)self buttonDescriptor];
    v8 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:buttonDescriptor3];

    buttonDescriptor4 = [(SUUIItemOfferButton *)self buttonDescriptor];
    progressType = [buttonDescriptor4 progressType];

    if (progressType)
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

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  if (![(SUUIItemOfferButton *)self isDisabledButSelectable])
  {
    v6 = [(SUUIItemOfferButton *)self _touchInBounds:touchCopy];
    buttonDescriptor = [(SUUIItemOfferButton *)self buttonDescriptor];
    highlighted = [buttonDescriptor highlighted];

    if (v6 != highlighted)
    {
      buttonDescriptor2 = [(SUUIItemOfferButton *)self buttonDescriptor];
      v10 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:buttonDescriptor2];

      buttonDescriptor3 = [(SUUIItemOfferButton *)self buttonDescriptor];
      [buttonDescriptor3 setHighlighted:v6];

      buttonDescriptor4 = [(SUUIItemOfferButton *)self buttonDescriptor];
      v13 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:buttonDescriptor4];

      buttonDescriptor5 = [(SUUIItemOfferButton *)self buttonDescriptor];
      progressType = [buttonDescriptor5 progressType];

      if (progressType)
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

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  buttonDescriptor = [(SUUIItemOfferButton *)self buttonDescriptor];
  v7 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:buttonDescriptor];

  buttonDescriptor2 = [(SUUIItemOfferButton *)self buttonDescriptor];
  [buttonDescriptor2 setHighlighted:0];

  buttonDescriptor3 = [(SUUIItemOfferButton *)self buttonDescriptor];
  v10 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:buttonDescriptor3];

  buttonDescriptor4 = [(SUUIItemOfferButton *)self buttonDescriptor];
  progressType = [buttonDescriptor4 progressType];

  if (!progressType && ![(SUUIItemOfferButton *)self hasNonBorderedImage]&& ![(SUUIItemOfferButton *)self hasBorderedImage]&& ![(SUUIItemOfferButton *)self isDisabledButSelectable])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__SUUIItemOfferButton_endTrackingWithTouch_withEvent___block_invoke;
    v17[3] = &unk_2798F5D30;
    v17[4] = self;
    [(SUUIItemOfferButton *)self _transitionFromTitle:v7 toTitle:v10 withDuration:v17 completion:0.25];
  }

  if ([(SUUIItemOfferButton *)self _touchInBounds:touchCopy])
  {
    if ([(SUUIItemOfferButton *)self isDisabledButSelectable])
    {
      element = [(SUUIItemOfferButton *)self element];

      if (element)
      {
        element2 = [(SUUIItemOfferButton *)self element];
        [element2 dispatchEvent:0x286AFEA60 eventAttribute:0x286AFEA80 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
      }
    }

    else
    {
      if ([(SUUIItemOfferButton *)self progressType]|| [(SUUIItemOfferButton *)self hasNonBorderedImage]|| [(SUUIItemOfferButton *)self hasBorderedImage]|| [(SUUIItemOfferButton *)self isShowingConfirmation]|| ![(SUUIItemOfferButton *)self showsConfirmationState])
      {
        selfCopy2 = self;
        v16 = 0x20000;
      }

      else
      {
        selfCopy2 = self;
        v16 = 0x40000;
      }

      [(SUUIItemOfferButton *)selfCopy2 sendActionsForControlEvents:v16];
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

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  buttonDescriptor = [(SUUIItemOfferButton *)self buttonDescriptor];
  shouldSuppressEnabled = [buttonDescriptor shouldSuppressEnabled];

  v7.receiver = self;
  v7.super_class = SUUIItemOfferButton;
  [(SUUIItemOfferButton *)&v7 setEnabled:enabledCopy & ~shouldSuppressEnabled];
  [(SUUIItemOfferButton *)self setNeedsLayout];
}

- (BOOL)_touchInBounds:(id)bounds
{
  v4 = MEMORY[0x277D75418];
  boundsCopy = bounds;
  currentDevice = [v4 currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  [(SUUIItemOfferButton *)self bounds];
  v12 = -70.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v12 = -25.0;
  }

  v13 = v12 + v8;
  v14 = v12 + v9;
  v15 = -140.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v15 = -50.0;
  }

  v16 = v10 - v15;
  v17 = v11 - v15;
  [boundsCopy locationInView:self];
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
    [(SUUIItemOfferButton *)&v13 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  }
}

- (void)drawRect:(CGRect)rect
{
  if (!self->_usesDrawRectPath)
  {
    return;
  }

  [(SUUIItemOfferButton *)self bounds:rect.origin.x];
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
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v28 = v27;
      v45.width = v24;
      v45.height = v22;
      UIGraphicsBeginImageContextWithOptions(v45, 0, v28);

      tintColor = [(SUUIItemOfferButton *)self tintColor];
      [tintColor set];

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
      traitCollection = [(SUUIItemOfferButton *)self traitCollection];
      v44 = [v31 _cachedImageForAttributedTitle:0 titleStyle:titleStyle size:fillStyle fillStyle:0 universal:v40 tintColor:objc_msgSend(traitCollection interfaceStyle:{"userInterfaceStyle"), v11, v13}];

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
      buttonDescriptor = [(SUUIItemOfferButton *)self buttonDescriptor];
      showsUniversal = [buttonDescriptor showsUniversal];
    }

    else
    {
      showsUniversal = 0;
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
    traitCollection2 = [(SUUIItemOfferButton *)self traitCollection];
    v44 = [v34 _cachedImageForAttributedTitle:titleAttributedString titleStyle:v36 size:v37 fillStyle:showsUniversal universal:v42 tintColor:objc_msgSend(traitCollection2 interfaceStyle:{"userInterfaceStyle"), v11, v13}];

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
  window = [(SUUIItemOfferButton *)self window];

  if (window)
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
    isDisabledButSelectable = [(SUUIItemOfferButton *)self isDisabledButSelectable];
    v12 = 0.4;
    if (!isDisabledButSelectable)
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

  isShowingConfirmation = [(SUUIItemOfferButton *)self isShowingConfirmation];
  v18 = &OBJC_IVAR___SUUIItemOfferButton__titleStyle;
  if (isShowingConfirmation)
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
    if (isShowingConfirmation)
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
    layer = [(UIView *)self->_borderView layer];
    [layer setCornerRadius:v26];
  }
}

- (void)setBackgroundColor:(id)color
{
  objc_storeStrong(&self->_backgroundColor, color);
  colorCopy = color;
  clearColor = [MEMORY[0x277D75348] clearColor];
  v7.receiver = self;
  v7.super_class = SUUIItemOfferButton;
  [(SUUIItemOfferButton *)&v7 setBackgroundColor:clearColor];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  p_titleStyle = &self->_titleStyle;
  if (self->_titleStyle == 1)
  {
    v6 = 20.0;
  }

  else
  {
    v6 = 26.0;
  }

  buttonDescriptor = [(SUUIItemOfferButton *)self buttonDescriptor];
  progressType = [buttonDescriptor progressType];

  v9 = v6;
  if (!progressType)
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
    isShowingConfirmation = [(SUUIItemOfferButton *)self isShowingConfirmation];
    p_confirmationTitleStyle = p_titleStyle;
    if (isShowingConfirmation)
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
  tintColor = [(SUUIItemOfferButton *)self tintColor];
  if (self->_cloudImage)
  {
    v4 = [objc_opt_class() cloudImageWithTintColor:self->_cloudTintColor arrowTintColor:tintColor];
    cloudImage = self->_cloudImage;
    self->_cloudImage = v4;
  }

  if (self->_universalImageView)
  {
    v6 = [objc_opt_class() _universalPlusImageWithTintColor:tintColor];
    [(UIImageView *)self->_universalImageView setImage:v6];
  }

  [(SUUIItemOfferButton *)self _reloadForCurrentState:0];
  [(SUUIItemOfferButton *)self setNeedsDisplay];
}

- (void)_cancelGestureAction:(id)action
{
  if ([(SUUIItemOfferButton *)self isShowingConfirmation])
  {
    [(SUUIItemOfferButton *)self sendActionsForControlEvents:0x10000];
  }

  [(SUUIItemOfferButton *)self _removeCancelGestureRecognizer];
}

+ (id)_cachedImageForAttributedTitle:(id)title titleStyle:(int64_t)style size:(CGSize)size fillStyle:(int64_t)fillStyle universal:(BOOL)universal tintColor:(id)color interfaceStyle:(int64_t)interfaceStyle
{
  universalCopy = universal;
  height = size.height;
  width = size.width;
  titleCopy = title;
  colorCopy = color;
  if (!_cachedImageForAttributedTitle_titleStyle_size_fillStyle_universal_tintColor_interfaceStyle__cache)
  {
    v18 = objc_alloc_init(MEMORY[0x277CBEA78]);
    v19 = _cachedImageForAttributedTitle_titleStyle_size_fillStyle_universal_tintColor_interfaceStyle__cache;
    _cachedImageForAttributedTitle_titleStyle_size_fillStyle_universal_tintColor_interfaceStyle__cache = v18;

    [_cachedImageForAttributedTitle_titleStyle_size_fillStyle_universal_tintColor_interfaceStyle__cache setCountLimit:200];
  }

  v20 = [titleCopy hash];
  v21 = [colorCopy hash];
  v22 = 1000;
  if (!universalCopy)
  {
    v22 = 0;
  }

  v23 = height + 100000 * style + width + 10000 * fillStyle + v22 + 1000000 * interfaceStyle;
  v24 = v20 + v21;
  v25 = _cachedImageForAttributedTitle_titleStyle_size_fillStyle_universal_tintColor_interfaceStyle__cache;
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23 + v20 + v21];
  v27 = [v25 objectForKey:v26];

  if (!v27)
  {
    v27 = [objc_opt_class() _imageForAttributedTitle:titleCopy titleStyle:style size:fillStyle fillStyle:universalCopy universal:colorCopy tintColor:{width, height}];
    if (v27)
    {
      v28 = _cachedImageForAttributedTitle_titleStyle_size_fillStyle_universal_tintColor_interfaceStyle__cache;
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23 + v24];
      [v28 setObject:v27 forKey:v29];
    }
  }

  return v27;
}

+ (BOOL)canOpenItemForItemState:(id)state clientContext:(id)context
{
  if (([state state] & 0x1000) != 0)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v6 = [bundleIdentifier isEqualToString:@"com.apple.MobileSMS"] ^ 1;
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

+ (id)_imageForAttributedTitle:(id)title titleStyle:(int64_t)style size:(CGSize)size fillStyle:(int64_t)fillStyle universal:(BOOL)universal tintColor:(id)color
{
  universalCopy = universal;
  height = size.height;
  width = size.width;
  titleCopy = title;
  colorCopy = color;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v18 = v17;
  v57.width = width;
  v57.height = height;
  UIGraphicsBeginImageContextWithOptions(v57, 0, v18);

  [colorCopy set];
  if (fillStyle)
  {
    if (!universalCopy)
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

  if (universalCopy)
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
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
  v28 = v27;

  if (titleCopy)
  {
    v29 = [titleCopy mutableCopy];
    [v29 addAttribute:*MEMORY[0x277D740C0] value:colorCopy range:{0, objc_msgSend(v29, "length")}];
    if (style == 2)
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

  if (fillStyle == 1)
  {
    v51 = [MEMORY[0x277D75208] _bezierPathWithArcRoundedRect:0.0 cornerRadius:{0.0, width, height, 3.0}];
    [v51 setLineWidth:0.0];
    [v51 fillWithBlendMode:25 alpha:1.0];
  }

  v52 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v52;
}

+ (CGSize)_titleSizeThatFitsForSize:(CGSize)size titleStyle:(int64_t)style mutableAttributedString:(id)string
{
  height = size.height;
  width = size.width;
  v40[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (!_titleSizeThatFitsForSize_titleStyle_mutableAttributedString__cache)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEA78]);
    v11 = _titleSizeThatFitsForSize_titleStyle_mutableAttributedString__cache;
    _titleSizeThatFitsForSize_titleStyle_mutableAttributedString__cache = v10;

    [_titleSizeThatFitsForSize_titleStyle_mutableAttributedString__cache setCountLimit:200];
  }

  v12 = [self _sizeMattersForTitleStyle:style];
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

  string = [stringCopy string];
  v16 = [v13 stringWithFormat:@"%@:%td%@", v14, style, string];

  if (v12)
  {
  }

  if (style == 2)
  {
    v17 = [MEMORY[0x277D74300] boldSystemFontOfSize:13.0];
    v18 = [MEMORY[0x277D74300] systemFontOfSize:11.0 weight:*MEMORY[0x277D74410]];
    v19 = [stringCopy length];
    v20 = *MEMORY[0x277D740A8];
    v39 = *MEMORY[0x277D740A8];
    v40[0] = v17;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    [stringCopy addAttributes:v21 range:{0, v19}];

    v22 = objc_alloc_init(MEMORY[0x277D74260]);
    [v22 setCachesLayout:1];
    [v22 setMaximumNumberOfLines:1];
    [v22 setWrapsForTruncationMode:0];
    [stringCopy boundingRectWithSize:1 options:v22 context:{1.79769313e308, 1.79769313e308}];
    if (v23 > 70.0)
    {
      [v22 setMaximumNumberOfLines:0];
      [v22 setWrapsForTruncationMode:1];
      v37 = v20;
      v38 = v18;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      [stringCopy addAttributes:v25 range:{0, v19}];

      [stringCopy boundingRectWithSize:1 options:v22 context:{45.0, 1.79769313e308}];
      v27 = v26;
      v29 = v28;
      if ([v22 numberOfLineFragments] < 3)
      {
LABEL_13:

        goto LABEL_17;
      }

      [v22 setMaximumNumberOfLines:2];
      [stringCopy boundingRectWithSize:1 options:v22 context:{95.0, 1.79769313e308}];
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
    [stringCopy size];
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

+ (id)_universalPlusImageWithTintColor:(id)color
{
  colorCopy = color;
  v5 = colorCopy;
  v6 = _universalPlusImageWithTintColor__sImage;
  if (_universalPlusImageWithTintColor__sImage)
  {
    v7 = _universalPlusImageWithTintColor__sLastTintColor == colorCopy;
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

    objc_storeStrong(&_universalPlusImageWithTintColor__sLastTintColor, color);
    v6 = _universalPlusImageWithTintColor__sImage;
  }

  v14 = v6;

  return v6;
}

+ (id)playTintColorForBackgroundColor:(id)color
{
  colorCopy = color;
  if (!playTintColorForBackgroundColor__sDarkBackgroundCloudColor)
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    v5 = playTintColorForBackgroundColor__sDarkBackgroundCloudColor;
    playTintColorForBackgroundColor__sDarkBackgroundCloudColor = labelColor;
  }

  v6 = &OBJC_PROTOCOL___SUUIArtworkRequestDelegate;
  if (!playTintColorForBackgroundColor__sLightBackgroundCloudColor)
  {
    labelColor2 = [MEMORY[0x277D75348] labelColor];
    v8 = playTintColorForBackgroundColor__sLightBackgroundCloudColor;
    playTintColorForBackgroundColor__sLightBackgroundCloudColor = labelColor2;
  }

  v9 = SUUIColorSchemeStyleForColor(colorCopy);
  if (v9 <= 3)
  {
    v6 = *off_2798FAA38[v9];
  }

  return v6;
}

+ (id)playImageWithTintColor:(id)color
{
  colorCopy = color;
  v5 = colorCopy;
  v6 = playImageWithTintColor__sUniversalPlayImage;
  if (playImageWithTintColor__sUniversalPlayImage)
  {
    v7 = playImageWithTintColor__sLastPlayTintColor == colorCopy;
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

    objc_storeStrong(&playImageWithTintColor__sLastPlayTintColor, color);
    v6 = playImageWithTintColor__sUniversalPlayImage;
  }

  v14 = v6;

  return v6;
}

+ (id)playHighlightImageWithTintColor:(id)color
{
  colorCopy = color;
  v5 = colorCopy;
  v6 = playHighlightImageWithTintColor__sUniversalPlayHighlightImage;
  if (playHighlightImageWithTintColor__sUniversalPlayHighlightImage)
  {
    v7 = playHighlightImageWithTintColor__sLastPlayHighlightTintColor == colorCopy;
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

    objc_storeStrong(&playHighlightImageWithTintColor__sLastPlayHighlightTintColor, color);
    v6 = playHighlightImageWithTintColor__sUniversalPlayHighlightImage;
  }

  v16 = v6;

  return v6;
}

+ (id)_imageForProgressType:(int64_t)type
{
  v3 = 0;
  if (type > 3)
  {
    if (type == 4)
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
      if (type != 5)
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
    if (type != 2)
    {
      if (type != 3)
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

+ (UIEdgeInsets)_imageInsetsForProgressType:(int64_t)type
{
  if (type >= 5)
  {
    if (type == 5)
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v4 = 1.0;
      v3 = 1.0 / v10;

      v5 = 0.0;
      v6 = 0.0;
      goto LABEL_3;
    }

    if (type != 6)
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

+ (id)_basicAnimationWithKeyPath:(id)path
{
  v3 = [MEMORY[0x277CD9E10] animationWithKeyPath:path];
  [v3 setFillMode:*MEMORY[0x277CDA238]];
  [v3 setRemovedOnCompletion:0];
  UIAnimationDragCoefficient();
  *&v5 = 1.0 / v4;
  [v3 setSpeed:v5];

  return v3;
}

- (id)_buttonPropertiesForState:(id)state
{
  stateCopy = state;
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
  clearColor = [MEMORY[0x277D75348] clearColor];
  tintColor = [(SUUIItemOfferButton *)self tintColor];
  [tintColor alphaComponent];
  confirmationColor = [tintColor colorWithAlphaComponent:v11 * self->_borderColorAlphaMultiplier];
  progressType = [stateCopy progressType];
  if (progressType)
  {
    v14 = confirmationColor;
    buttonDescriptor = [(SUUIItemOfferButton *)self buttonDescriptor];
    progressType2 = [buttonDescriptor progressType];

    if (progressType2 == 1)
    {
      UIFloorToViewScale();
      v18 = v17;
      v49 = 0;
      v50 = 0;
      showingConfirmation2 = 0;
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
      buttonDescriptor2 = [(SUUIItemOfferButton *)self buttonDescriptor];
      progressType3 = [buttonDescriptor2 progressType];

      v22 = 1.0;
      if (progressType3 == 6)
      {
        v48 = 0;
        v49 = 0;
        showingConfirmation2 = 0;
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
        showingConfirmation2 = 0;
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
    showingConfirmation2 = 0;
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
      showingConfirmation2 = 0;
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

    showingConfirmation = [stateCopy showingConfirmation];
    v38 = &OBJC_IVAR___SUUIItemOfferButton__titleAttributedString;
    if (showingConfirmation)
    {
      v38 = &OBJC_IVAR___SUUIItemOfferButton__confirmationTitleAttributedString;
    }

    v39 = *(&self->super.super.super.super.isa + *v38);
    v40 = confirmationColor;
    if ([stateCopy showingConfirmation])
    {
      confirmationColor = self->_confirmationColor;
    }

    v41 = confirmationColor;

    confirmationColor = v41;
    v20 = ([stateCopy showingConfirmation] & 1) == 0 && objc_msgSend(stateCopy, "showsUniversal") && self->_universal;
    showingConfirmation2 = [stateCopy showingConfirmation];
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
      clearColor = confirmationColor;
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
        if ([stateCopy showingConfirmation])
        {
          v46 = confirmationColor;
          v47 = self->_backgroundColor;

          v19 = 0;
          v48 = 0;
          v21 = 0;
          v50 = 0;
          LODWORD(v49) = 1;
          clearColor = v47;
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
  v51 = tintColor;
  if ([stateCopy highlighted])
  {
    if (progressType || v21 || (v27 = self->_fillStyle, v27 == 2))
    {
      v28 = v21;
      v29 = v20;
      v35 = stateCopy;
      v36 = clearColor;
      v32 = confirmationColor;
      v5 = 0.200000003;
    }

    else
    {
      v28 = 0;
      v29 = v20;
      if (v27 == 1)
      {
        SUUIColorByAdjustingBrightness(clearColor, -0.2);
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

      v35 = stateCopy;

      v36 = v32;
      confirmationColor = v33;
    }
  }

  else
  {
    v28 = v21;
    v29 = v20;
    v35 = stateCopy;
    v36 = clearColor;
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
  [(SUUIItemOfferButtonProperties *)v43 setCancelRecognizer:showingConfirmation2];
  [(SUUIItemOfferButtonProperties *)v43 setRestores:self->_downloadRestores];

  return v43;
}

- (id)_imageForProgressType:(int64_t)type
{
  centerImageProvider = self->_centerImageProvider;
  if (!centerImageProvider || (centerImageProvider[2](centerImageProvider, self, type), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [objc_opt_class() _imageForProgressType:type];
  }

  return v6;
}

- (double)_horizontalInsetForTitleStyle:(int64_t)style
{
  result = 10.0;
  if (style == 2)
  {
    return 7.0;
  }

  return result;
}

- (void)_transitionFromBorderedImage:(id)image toTitle:(id)title withDuration:(double)duration completion:(id)completion
{
  titleCopy = title;
  completionCopy = completion;
  layer = [(UIView *)self->_borderView layer];
  borderCompositingFilter = [titleCopy borderCompositingFilter];
  [layer setCompositingFilter:borderCompositingFilter];

  [(SUUIItemOfferButton *)self _adjustViewOrderingForProperties:titleCopy];
  if ([titleCopy universal])
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
  v27 = titleCopy;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __84__SUUIItemOfferButton__transitionFromBorderedImage_toTitle_withDuration_completion___block_invoke_2;
  v23 = &unk_2798F7218;
  selfCopy = self;
  v25 = completionCopy;
  v15 = completionCopy;
  v16 = titleCopy;
  [v14 animateWithDuration:7 delay:v26 options:&v20 animations:duration completion:0.0];
  v17 = [objc_opt_class() _basicAnimationWithKeyPath:{@"borderColor", v20, v21, v22, v23, selfCopy}];
  [v17 setDuration:duration];
  borderColor = [v16 borderColor];
  [v17 setToValue:{objc_msgSend(borderColor, "CGColor")}];

  layer2 = [(UIView *)self->_borderView layer];
  [layer2 addAnimation:v17 forKey:@"borderColor"];
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

- (void)_transitionFromTitle:(id)title toTitle:(id)toTitle withDuration:(double)duration completion:(id)completion
{
  toTitleCopy = toTitle;
  completionCopy = completion;
  titleLabel = self->_titleLabel;
  attributedText = [toTitleCopy attributedText];
  [(UILabel *)titleLabel setAttributedText:attributedText];

  layer = [(UIView *)self->_borderView layer];
  borderCompositingFilter = [toTitleCopy borderCompositingFilter];
  [layer setCompositingFilter:borderCompositingFilter];

  [(SUUIItemOfferButton *)self _adjustViewOrderingForProperties:toTitleCopy];
  if ([toTitleCopy universal])
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
  v29 = toTitleCopy;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __76__SUUIItemOfferButton__transitionFromTitle_toTitle_withDuration_completion___block_invoke_2;
  v25 = &unk_2798F7218;
  selfCopy = self;
  v27 = completionCopy;
  v17 = completionCopy;
  v18 = toTitleCopy;
  [v16 animateWithDuration:7 delay:v28 options:&v22 animations:duration completion:0.0];
  v19 = [objc_opt_class() _basicAnimationWithKeyPath:{@"borderColor", v22, v23, v24, v25, selfCopy}];
  [v19 setDuration:duration];
  borderColor = [v18 borderColor];
  [v19 setToValue:{objc_msgSend(borderColor, "CGColor")}];

  layer2 = [(UIView *)self->_borderView layer];
  [layer2 addAnimation:v19 forKey:@"borderColor"];
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

- (void)_transitionFromImage:(id)image toImage:(id)toImage withDuration:(double)duration completion:(id)completion
{
  toImageCopy = toImage;
  completionCopy = completion;
  imageView = self->_imageView;
  image = [toImageCopy image];
  [(UIImageView *)imageView setImage:image];

  v13 = MEMORY[0x277D75D18];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__SUUIItemOfferButton__transitionFromImage_toImage_withDuration_completion___block_invoke;
  v18[3] = &unk_2798F5AF8;
  v18[4] = self;
  v19 = toImageCopy;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__SUUIItemOfferButton__transitionFromImage_toImage_withDuration_completion___block_invoke_2;
  v16[3] = &unk_2798F7218;
  v16[4] = self;
  v17 = completionCopy;
  v14 = completionCopy;
  v15 = toImageCopy;
  [v13 animateWithDuration:7 delay:v18 options:v16 animations:duration completion:0.0];
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

- (void)_transitionFromProgress:(id)progress toProgress:(id)toProgress withDuration:(double)duration completion:(id)completion
{
  toProgressCopy = toProgress;
  progressIndicator = self->_progressIndicator;
  completionCopy = completion;
  [toProgressCopy progress];
  [(SUUICircleProgressIndicator *)progressIndicator setProgress:?];
  -[SUUICircleProgressIndicator setIndeterminate:](self->_progressIndicator, "setIndeterminate:", [toProgressCopy progressIndeterminate]);
  v12 = self->_progressIndicator;
  v13 = -[SUUIItemOfferButton _imageForProgressType:](self, "_imageForProgressType:", [toProgressCopy progressType]);
  [(SUUICircleProgressIndicator *)v12 setImage:v13];

  v14 = self->_progressIndicator;
  [objc_opt_class() _imageInsetsForProgressType:{objc_msgSend(toProgressCopy, "progressType")}];
  [(SUUICircleProgressIndicator *)v14 setImageInsets:?];
  v15 = MEMORY[0x277D75D18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__SUUIItemOfferButton__transitionFromProgress_toProgress_withDuration_completion___block_invoke;
  v17[3] = &unk_2798F5AF8;
  v17[4] = self;
  v18 = toProgressCopy;
  v16 = toProgressCopy;
  [v15 animateWithDuration:7 delay:v17 options:completionCopy animations:duration completion:0.0];
}

uint64_t __82__SUUIItemOfferButton__transitionFromProgress_toProgress_withDuration_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) alpha];
  [v2 setAlpha:?];
  v3 = *(a1 + 32);

  return [v3 _sendWillAnimate];
}

- (void)_transitionFromTitleOrImage:(id)image toProgress:(id)progress withDuration:(double)duration completion:(id)completion
{
  imageCopy = image;
  progressCopy = progress;
  completionCopy = completion;
  if (!self->_borderView)
  {
    [(SUUIItemOfferButton *)self _insertBorderView];
    layer = [(UIView *)self->_borderView layer];
    [progressCopy borderCornerRadius];
    [layer setCornerRadius:?];

    layer2 = [(UIView *)self->_borderView layer];
    borderColor = [progressCopy borderColor];
    [layer2 setBorderColor:{objc_msgSend(borderColor, "CGColor")}];

    borderView = self->_borderView;
    borderBackgroundColor = [progressCopy borderBackgroundColor];
    [(UIView *)borderView setBackgroundColor:borderBackgroundColor];

    self->_borderCornerRadiusMatchesHalfBoundingDimension = [progressCopy borderCornerRadiusMatchesHalfBoundingDimension];
  }

  if (([imageCopy hasBorderView] & 1) == 0)
  {
    v18 = self->_borderView;
    CGAffineTransformMakeScale(&v46, 0.0, 0.0);
    [(UIView *)v18 setTransform:&v46];
  }

  [(SUUIItemOfferButton *)self _insertProgressIndicator];
  progressIndicator = self->_progressIndicator;
  [progressCopy progress];
  [(SUUICircleProgressIndicator *)progressIndicator setProgress:?];
  -[SUUICircleProgressIndicator setIndeterminate:](self->_progressIndicator, "setIndeterminate:", [progressCopy progressIndeterminate]);
  v20 = self->_progressIndicator;
  buttonDescriptor = [(SUUIItemOfferButton *)self buttonDescriptor];
  v22 = -[SUUIItemOfferButton _imageForProgressType:](self, "_imageForProgressType:", [buttonDescriptor progressType]);
  [(SUUICircleProgressIndicator *)v20 setImage:v22];

  v23 = self->_progressIndicator;
  v24 = objc_opt_class();
  buttonDescriptor2 = [(SUUIItemOfferButton *)self buttonDescriptor];
  [v24 _imageInsetsForProgressType:{objc_msgSend(buttonDescriptor2, "progressType")}];
  [(SUUICircleProgressIndicator *)v23 setImageInsets:?];

  [(SUUICircleProgressIndicator *)self->_progressIndicator setHidden:1];
  [(UIImageView *)self->_universalImageView removeFromSuperview];
  universalImageView = self->_universalImageView;
  self->_universalImageView = 0;

  [(UILabel *)self->_titleLabel removeFromSuperview];
  titleLabel = self->_titleLabel;
  self->_titleLabel = 0;

  layer3 = [(UIView *)self->_borderView layer];
  [progressCopy borderWidth];
  [layer3 setBorderWidth:?];

  layer4 = [(UIView *)self->_borderView layer];
  borderCompositingFilter = [progressCopy borderCompositingFilter];
  [layer4 setCompositingFilter:borderCompositingFilter];

  [(SUUIItemOfferButton *)self _adjustViewOrderingForProperties:progressCopy];
  v31 = MEMORY[0x277D75D18];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __86__SUUIItemOfferButton__transitionFromTitleOrImage_toProgress_withDuration_completion___block_invoke;
  v44[3] = &unk_2798F5AF8;
  v44[4] = self;
  v45 = progressCopy;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __86__SUUIItemOfferButton__transitionFromTitleOrImage_toProgress_withDuration_completion___block_invoke_2;
  v41[3] = &unk_2798FA9F8;
  v41[4] = self;
  v42 = v45;
  v43 = completionCopy;
  v32 = completionCopy;
  v33 = v45;
  [v31 animateWithDuration:v44 animations:v41 completion:duration];
  v34 = [objc_opt_class() _basicAnimationWithKeyPath:@"borderColor"];
  [v34 setDuration:duration];
  borderColor2 = [v33 borderColor];
  [v34 setToValue:{objc_msgSend(borderColor2, "CGColor")}];

  layer5 = [(UIView *)self->_borderView layer];
  [layer5 addAnimation:v34 forKey:@"borderColor"];

  v37 = [objc_opt_class() _basicAnimationWithKeyPath:@"cornerRadius"];
  [v37 setDuration:duration];
  v38 = MEMORY[0x277CCABB0];
  [v33 borderCornerRadius];
  v39 = [v38 numberWithDouble:?];
  [v37 setToValue:v39];

  layer6 = [(UIView *)self->_borderView layer];
  [layer6 addAnimation:v37 forKey:@"cornerRadius"];
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

- (void)_transitionFromProgress:(id)progress toTitleOrImage:(id)image withDuration:(double)duration completion:(id)completion
{
  progressCopy = progress;
  imageCopy = image;
  completionCopy = completion;
  borderView = self->_borderView;
  if (!borderView)
  {
    [(SUUIItemOfferButton *)self _insertBorderView];
    layer = [(UIView *)self->_borderView layer];
    [progressCopy borderCornerRadius];
    [layer setCornerRadius:?];

    layer2 = [(UIView *)self->_borderView layer];
    borderColor = [progressCopy borderColor];
    [layer2 setBorderColor:{objc_msgSend(borderColor, "CGColor")}];

    self->_borderCornerRadiusMatchesHalfBoundingDimension = [progressCopy borderCornerRadiusMatchesHalfBoundingDimension];
    borderView = self->_borderView;
  }

  v17 = *(MEMORY[0x277CBF2C0] + 16);
  v46[0] = *MEMORY[0x277CBF2C0];
  v46[1] = v17;
  v46[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(UIView *)borderView setTransform:v46];
  image = [imageCopy image];

  if (image)
  {
    [(SUUIItemOfferButton *)self _insertImageView];
    p_imageView = &self->_imageView;
    imageView = self->_imageView;
    image2 = [imageCopy image];
    [(UIImageView *)imageView setImage:image2];
  }

  else
  {
    [(SUUIItemOfferButton *)self _insertLabel];
    p_imageView = &self->_titleLabel;
    titleLabel = self->_titleLabel;
    attributedText = [imageCopy attributedText];
    [(UILabel *)titleLabel setAttributedText:attributedText];

    v24 = self->_titleLabel;
    image2 = [imageCopy textColor];
    [(UILabel *)v24 setTextColor:image2];
  }

  [*p_imageView setAlpha:0.0];
  layer3 = [(UIView *)self->_borderView layer];
  [imageCopy borderWidth];
  [layer3 setBorderWidth:?];

  layer4 = [(UIView *)self->_borderView layer];
  borderCompositingFilter = [imageCopy borderCompositingFilter];
  [layer4 setCompositingFilter:borderCompositingFilter];

  [(SUUICircleProgressIndicator *)self->_progressIndicator removeFromSuperview];
  progressIndicator = self->_progressIndicator;
  self->_progressIndicator = 0;

  [(SUUIItemOfferButton *)self _adjustViewOrderingForProperties:imageCopy];
  v29 = MEMORY[0x277D75D18];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __86__SUUIItemOfferButton__transitionFromProgress_toTitleOrImage_withDuration_completion___block_invoke;
  v43[3] = &unk_2798F5AF8;
  v44 = imageCopy;
  selfCopy = self;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __86__SUUIItemOfferButton__transitionFromProgress_toTitleOrImage_withDuration_completion___block_invoke_2;
  v39[3] = &unk_2798FA9F8;
  v40 = v44;
  selfCopy2 = self;
  v42 = completionCopy;
  v30 = completionCopy;
  v31 = v44;
  [v29 animateWithDuration:v43 animations:v39 completion:duration];
  v32 = [objc_opt_class() _basicAnimationWithKeyPath:@"borderColor"];
  [v32 setDuration:duration];
  borderColor2 = [v31 borderColor];
  [v32 setToValue:{objc_msgSend(borderColor2, "CGColor")}];

  layer5 = [(UIView *)self->_borderView layer];
  [layer5 addAnimation:v32 forKey:@"borderColor"];

  v35 = [objc_opt_class() _basicAnimationWithKeyPath:@"cornerRadius"];
  [v35 setDuration:duration];
  v36 = MEMORY[0x277CCABB0];
  [v31 borderCornerRadius];
  v37 = [v36 numberWithDouble:?];
  [v35 setToValue:v37];

  layer6 = [(UIView *)self->_borderView layer];
  [layer6 addAnimation:v35 forKey:@"cornerRadius"];
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

- (void)_adjustViewOrderingForProperties:(id)properties
{
  propertiesCopy = properties;
  if (self->_borderView)
  {
    if (self->_titleLabel)
    {
      v9 = propertiesCopy;
      borderCompositingFilter = [propertiesCopy borderCompositingFilter];

      if (borderCompositingFilter)
      {
        p_titleLabel = &self->_titleLabel;
      }

      else
      {
        p_titleLabel = &self->_borderView;
      }

      if (borderCompositingFilter)
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

      v9 = propertiesCopy;
      borderCompositingFilter2 = [propertiesCopy borderCompositingFilter];

      p_borderView = &self->_borderedImageView;
      if (borderCompositingFilter2)
      {
        p_titleLabel = &self->_borderedImageView;
      }

      else
      {
        p_titleLabel = &self->_borderView;
      }

      if (borderCompositingFilter2)
      {
        p_borderView = &self->_borderView;
      }
    }

    [(SUUIItemOfferButton *)self insertSubview:*p_borderView aboveSubview:*p_titleLabel];
    propertiesCopy = v9;
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
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SUUICircleProgressIndicator *)v6 setBackgroundColor:clearColor];

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
    tintColor = [(SUUIItemOfferButton *)self tintColor];
    v7 = [v3 _universalPlusImageWithTintColor:tintColor];

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

  window = [(SUUIItemOfferButton *)self window];
  [window addGestureRecognizer:self->_cancelGestureRecognizer];
}

- (void)_removeCancelGestureRecognizer
{
  cancelGestureRecognizer = self->_cancelGestureRecognizer;
  if (cancelGestureRecognizer)
  {
    view = [(SUUIFocusedTouchGestureRecognizer *)cancelGestureRecognizer view];
    [view removeGestureRecognizer:self->_cancelGestureRecognizer];

    [(SUUIFocusedTouchGestureRecognizer *)self->_cancelGestureRecognizer removeTarget:self action:0];
    v5 = self->_cancelGestureRecognizer;
    self->_cancelGestureRecognizer = 0;
  }
}

- (void)_reloadForCurrentState:(BOOL)state
{
  if (state)
  {
LABEL_5:
    [(SUUIItemOfferButton *)self setClipsToBounds:1];
    self->_usesDrawRectPath = 0;
    [(SUUIItemOfferButton *)self setNeedsDisplay];
    buttonDescriptor = [(SUUIItemOfferButton *)self buttonDescriptor];
    v8 = [(SUUIItemOfferButton *)self _buttonPropertiesForState:buttonDescriptor];

    hasBorderView = [v8 hasBorderView];
    v10 = MEMORY[0x277CBF2C0];
    if (hasBorderView)
    {
      [(SUUIItemOfferButton *)self _insertBorderView];
      layer = [(UIView *)self->_borderView layer];
      [layer removeAllAnimations];

      borderView = self->_borderView;
      borderBackgroundColor = [v8 borderBackgroundColor];
      [(UIView *)borderView setBackgroundColor:borderBackgroundColor];

      layer2 = [(UIView *)self->_borderView layer];
      borderColor = [v8 borderColor];
      [layer2 setBorderColor:{objc_msgSend(borderColor, "CGColor")}];

      layer3 = [(UIView *)self->_borderView layer];
      borderCompositingFilter = [v8 borderCompositingFilter];
      [layer3 setCompositingFilter:borderCompositingFilter];

      layer4 = [(UIView *)self->_borderView layer];
      [v8 borderWidth];
      [layer4 setBorderWidth:?];

      layer5 = [(UIView *)self->_borderView layer];
      [v8 borderCornerRadius];
      [layer5 setCornerRadius:?];

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
      layer6 = [(UILabel *)self->_titleLabel layer];
      [layer6 removeAllAnimations];

      titleLabel = self->_titleLabel;
      textColor = [v8 textColor];
      [(UILabel *)titleLabel setTextColor:textColor];

      v26 = self->_titleLabel;
      attributedText = [v8 attributedText];
      [(UILabel *)v26 setAttributedText:attributedText];
    }

    else
    {
      [(UILabel *)self->_titleLabel removeFromSuperview];
      attributedText = self->_titleLabel;
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

    image = [v8 image];

    if (image)
    {
      [(SUUIItemOfferButton *)self _insertImageView];
      layer7 = [(UIImageView *)self->_imageView layer];
      [layer7 removeAllAnimations];

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

    borderedImage = [v8 borderedImage];

    if (borderedImage)
    {
      [(SUUIItemOfferButton *)self _insertBorderedImageView];
      [(UIImageView *)self->_borderedImageView setImage:self->_borderedImage];
      borderedImageView = self->_borderedImageView;
      tintColor = [(SUUIItemOfferButton *)self tintColor];
      [(UIImageView *)borderedImageView setTintColor:tintColor];

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
      layer8 = [(SUUICircleProgressIndicator *)self->_progressIndicator layer];
      [layer8 removeAllAnimations];

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

    layer9 = [(SUUIItemOfferButton *)self layer];
    [layer9 removeAllAnimations];

    [v8 alpha];
    [(SUUIItemOfferButton *)self setAlpha:?];

    return;
  }

  buttonDescriptor2 = [(SUUIItemOfferButton *)self buttonDescriptor];
  if ([buttonDescriptor2 progressType])
  {

    goto LABEL_5;
  }

  buttonDescriptor3 = [(SUUIItemOfferButton *)self buttonDescriptor];
  showingConfirmation = [buttonDescriptor3 showingConfirmation];

  if (showingConfirmation)
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