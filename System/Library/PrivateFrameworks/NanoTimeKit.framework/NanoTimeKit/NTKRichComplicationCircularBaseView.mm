@interface NTKRichComplicationCircularBaseView
+ (BOOL)handlesComplicationTemplate:(id)template;
+ (CGAffineTransform)transformForState:(SEL)state;
+ (double)centerLabelLargeFontSizeForDevice:(id)device;
+ (double)centerLabelSmallFontSizeForDevice:(id)device;
+ (double)smallLabelLargeFontSizeForDevice:(id)device;
+ (double)smallLabelSmallFontSizeForDevice:(id)device;
+ (id)keylineImageWithFilled:(BOOL)filled wide:(BOOL)wide expanded:(BOOL)expanded forDevice:(id)device;
+ (id)keylineViewForDevice:(id)device wide:(BOOL)wide expanded:(BOOL)expanded;
+ (id)layoutRuleForState:(int64_t)state viewCenterInFaceBounds:(CGPoint)bounds position:(int64_t)position editingAdjustment:(int64_t)adjustment wide:(BOOL)wide forDevice:(id)device;
+ (id)viewWithLegacyComplicationType:(unint64_t)type;
+ (void)updateCustomDataAnimationFromEarlierView:(id)view laterView:(id)laterView isForward:(BOOL)forward animationType:(unint64_t)type animationDuration:(double)duration animationFraction:(float)fraction;
- (NTKRichComplicationCircularBaseView)init;
- (NTKRichComplicationCircularBaseView)initWithFamily:(int64_t)family;
- (double)_contentDiameter;
- (id)_createAndAddColoringLabel;
- (unint64_t)_adjustFontSizeForLabel:(id)label fontWeight:(double)weight possibleMaxWidths:(id)widths possibleFontSizes:(id)sizes;
- (void)_setEditingTransitionFraction:(double)fraction direction:(int64_t)direction position:(int64_t)position type:(int64_t)type;
- (void)_setWhistlerAnalogEditingTransitonFraction:(double)fraction direction:(int64_t)direction position:(int64_t)position;
- (void)_transitToHighlightState:(BOOL)state fraction:(double)fraction;
- (void)_updatePlatterColor;
- (void)layoutSubviews;
- (void)makeBackgroundTransparent;
- (void)setAccentedAlternateBackground:(BOOL)background;
- (void)setPlatterColor:(id)color;
- (void)setPlatterVisualEffect:(id)effect;
@end

@implementation NTKRichComplicationCircularBaseView

+ (void)updateCustomDataAnimationFromEarlierView:(id)view laterView:(id)laterView isForward:(BOOL)forward animationType:(unint64_t)type animationDuration:(double)duration animationFraction:(float)fraction
{
  forwardCopy = forward;
  viewCopy = view;
  laterViewCopy = laterView;
  memset(&v28, 0, sizeof(v28));
  if (type == 1)
  {
    v16 = *(MEMORY[0x277CBF2C0] + 16);
    *&v28.a = *MEMORY[0x277CBF2C0];
    *&v28.c = v16;
    *&v28.tx = *(MEMORY[0x277CBF2C0] + 32);
    if (forwardCopy)
    {
LABEL_5:
      v13 = MEMORY[0x277CBF2C0];
      v14 = *(MEMORY[0x277CBF2C0] + 16);
      *&v27.a = *MEMORY[0x277CBF2C0];
      *&v27.c = v14;
      *&v27.tx = *(MEMORY[0x277CBF2C0] + 32);
      v26 = v28;
      v25 = v28;
      v15 = laterViewCopy;
      goto LABEL_8;
    }
  }

  else
  {
    if (!type)
    {
      CGAffineTransformMakeScale(&v28, 0.9, 0.9);
    }

    if (forwardCopy)
    {
      goto LABEL_5;
    }
  }

  v27 = v28;
  v17 = *(MEMORY[0x277CBF2C0] + 16);
  *&v26.a = *MEMORY[0x277CBF2C0];
  *&v26.c = v17;
  *&v26.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&v25.a = *&v26.a;
  *&v25.c = v17;
  *&v25.tx = *&v26.tx;
  v13 = &v28;
  v15 = viewCopy;
LABEL_8:
  v18 = *&v13->c;
  v22 = *&v13->a;
  v23 = v18;
  v24 = *&v13->tx;
  v19 = v15;
  if (type == 1)
  {
    CDTemplicateComplicationShouldPerformFullFade();
  }

  CLKCompressFraction();
  CLKCompressFraction();
  CLKInterpolateBetweenFloatsClipped();
  [viewCopy setAlpha:?];
  CLKInterpolateBetweenTransform();
  v21[0] = v21[1];
  [viewCopy setTransform:v21];
  CLKInterpolateBetweenFloatsClipped();
  [laterViewCopy setAlpha:?];
  v21[0] = v26;
  CLKInterpolateBetweenTransform();
  v21[0] = v20;
  [laterViewCopy setTransform:v21];
}

+ (id)keylineImageWithFilled:(BOOL)filled wide:(BOOL)wide expanded:(BOOL)expanded forDevice:(id)device
{
  expandedCopy = expanded;
  wideCopy = wide;
  filledCopy = filled;
  deviceCopy = device;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__NTKRichComplicationCircularBaseView_keylineImageWithFilled_wide_expanded_forDevice___block_invoke_2;
  aBlock[3] = &unk_278784D00;
  v20 = deviceCopy;
  v21 = &__block_literal_global_126;
  v10 = deviceCopy;
  v11 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__NTKRichComplicationCircularBaseView_keylineImageWithFilled_wide_expanded_forDevice___block_invoke_5;
  v17[3] = &unk_278784D28;
  v18 = v11;
  v12 = v11;
  v13 = __86__NTKRichComplicationCircularBaseView_keylineImageWithFilled_wide_expanded_forDevice___block_invoke_5(v17, v10);
  v14 = __86__NTKRichComplicationCircularBaseView_keylineImageWithFilled_wide_expanded_forDevice___block_invoke(v13, filledCopy, wideCopy, expandedCopy);
  v15 = [v13 objectForKeyedSubscript:v14];

  return v15;
}

id __86__NTKRichComplicationCircularBaseView_keylineImageWithFilled_wide_expanded_forDevice___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:a4];
  v10 = [v6 stringWithFormat:@"%@-%@-%@", v7, v8, v9];

  return v10;
}

void __86__NTKRichComplicationCircularBaseView_keylineImageWithFilled_wide_expanded_forDevice___block_invoke_2(uint64_t a1, int a2, int a3, void *a4)
{
  v7 = a4;
  v8 = (*(*(a1 + 40) + 16))();
  v9 = (*(*(a1 + 40) + 16))();
  v10 = NTKWhistlerSubdialComplicationDiameter(*(a1 + 32));
  v11 = v10 * 1.4;
  if (!a2)
  {
    v11 = v10;
  }

  if (a3)
  {
    v12 = v10 * 1.15;
  }

  else
  {
    v12 = v10;
  }

  if (a3)
  {
    v13 = v11 * 1.15;
  }

  else
  {
    v13 = v11;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = [MEMORY[0x277D75568] preferredFormat];
  [*(a1 + 32) screenScale];
  [v15 setScale:?];
  [v15 setPreferredRange:0];
  [v15 setOpaque:0];
  v16 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:v15 format:{v13, v12}];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __86__NTKRichComplicationCircularBaseView_keylineImageWithFilled_wide_expanded_forDevice___block_invoke_3;
  v20[3] = &__block_descriptor_48_e40_v16__0__UIGraphicsImageRendererContext_8l;
  *&v20[4] = v13;
  *&v20[5] = v12;
  v17 = [v16 imageWithActions:v20];
  if (v17)
  {
    [v7 setObject:v17 forKeyedSubscript:v8];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __86__NTKRichComplicationCircularBaseView_keylineImageWithFilled_wide_expanded_forDevice___block_invoke_4;
  v19[3] = &__block_descriptor_48_e40_v16__0__UIGraphicsImageRendererContext_8l;
  *&v19[4] = v13;
  *&v19[5] = v12;
  v18 = [v16 imageWithActions:v19];
  if (v18)
  {
    [v7 setObject:v18 forKeyedSubscript:v9];
  }

  objc_autoreleasePoolPop(v14);
}

void __86__NTKRichComplicationCircularBaseView_keylineImageWithFilled_wide_expanded_forDevice___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, *(a1 + 32), *(a1 + 40), *(a1 + 40) * 0.5}];
  v1 = [MEMORY[0x277D75348] whiteColor];
  [v1 setFill];

  [v2 fill];
}

void __86__NTKRichComplicationCircularBaseView_keylineImageWithFilled_wide_expanded_forDevice___block_invoke_4(uint64_t a1)
{
  v2 = NTKKeylineWidth();
  v6.size.width = *(a1 + 32);
  v6.size.height = *(a1 + 40);
  v6.origin.x = 0.0;
  v6.origin.y = 0.0;
  v7 = CGRectInset(v6, v2, v2);
  v4 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v7.origin.x cornerRadius:{v7.origin.y, v7.size.width, v7.size.height, *(a1 + 40) * 0.5}];
  v3 = [MEMORY[0x277D75348] whiteColor];
  [v3 setStroke];

  [v4 setLineWidth:v2];
  [v4 stroke];
}

id __86__NTKRichComplicationCircularBaseView_keylineImageWithFilled_wide_expanded_forDevice___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_58);
  if (_block_invoke___cachedDevice_58)
  {
    v4 = _block_invoke___cachedDevice_58 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != _block_invoke___previousCLKDeviceVersion_58))
  {
    _block_invoke___cachedDevice_58 = v3;
    _block_invoke___previousCLKDeviceVersion_58 = [v3 version];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __86__NTKRichComplicationCircularBaseView_keylineImageWithFilled_wide_expanded_forDevice___block_invoke_6;
    v10[3] = &unk_278784D28;
    v11 = *(a1 + 32);
    v6 = (__86__NTKRichComplicationCircularBaseView_keylineImageWithFilled_wide_expanded_forDevice___block_invoke_6)(v10, v3);
    v7 = _block_invoke_value_42;
    _block_invoke_value_42 = v6;
  }

  v8 = _block_invoke_value_42;
  os_unfair_lock_unlock(&_block_invoke_lock_58);

  return v8;
}

id __86__NTKRichComplicationCircularBaseView_keylineImageWithFilled_wide_expanded_forDevice___block_invoke_6(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:8];
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 32) + 16))();

  return v2;
}

+ (id)keylineViewForDevice:(id)device wide:(BOOL)wide expanded:(BOOL)expanded
{
  v5 = [self keylineImageWithFilled:0 wide:wide expanded:expanded forDevice:device];
  v6 = v5;
  if (v5)
  {
    v7 = NTKKeylineViewWithImage(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)layoutRuleForState:(int64_t)state viewCenterInFaceBounds:(CGPoint)bounds position:(int64_t)position editingAdjustment:(int64_t)adjustment wide:(BOOL)wide forDevice:(id)device
{
  wideCopy = wide;
  y = bounds.y;
  x = bounds.x;
  deviceCopy = device;
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  ___LayoutConstants_block_invoke_52(deviceCopy, v36);
  v16 = NTKWhistlerSubdialComplicationDiameter(deviceCopy);
  if (wideCopy)
  {
    v17 = v16 * 1.4;
  }

  else
  {
    v17 = v16;
  }

  v18 = x - v17 * 0.5;
  v19 = y - v16 * 0.5;
  if (adjustment == 1)
  {
    v20 = -1.9;
  }

  else
  {
    v20 = 1.0;
  }

  v21 = -1.0;
  if (adjustment != 1)
  {
    v21 = 1.0;
  }

  if ((state & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (position > 1)
    {
      if (position == 2)
      {
        v19 = v19 - v21 * *v36;
      }

      else if (position == 3)
      {
        v19 = v19 + v20 * *v36;
      }
    }

    else if (position)
    {
      if (position == 1)
      {
        v18 = v18 - v21 * *v36;
      }
    }

    else
    {
      v18 = v18 + v21 * *v36;
    }
  }

  v22 = *(MEMORY[0x277CBF2C0] + 16);
  v33 = *MEMORY[0x277CBF2C0];
  v34 = v22;
  v35 = *(MEMORY[0x277CBF2C0] + 32);
  v24 = *MEMORY[0x277D768C8];
  v23 = *(MEMORY[0x277D768C8] + 8);
  v26 = *(MEMORY[0x277D768C8] + 16);
  v25 = *(MEMORY[0x277D768C8] + 24);
  if (adjustment)
  {
    if (adjustment == 1)
    {
      v27 = [self keylineImageWithFilled:0 wide:wideCopy expanded:1 forDevice:deviceCopy];
      [v27 size];
      v25 = (v28 - v17) * 0.5;
      [v27 size];
      v26 = (v29 - v16) * 0.5;

      v23 = v25;
      v24 = v26;
    }
  }

  else
  {
    [self transformForState:state];
  }

  v32[0] = v33;
  v32[1] = v34;
  v32[2] = v35;
  v30 = [NTKComplicationLayoutRule layoutRuleForDevice:deviceCopy withReferenceFrame:3 horizontalLayout:3 verticalLayout:0 keylinePadding:v32 clip:v18 editingTransform:v19, v17, v16, v24, v23, v26, v25];

  return v30;
}

+ (CGAffineTransform)transformForState:(SEL)state
{
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return CGAffineTransformMakeScale(retstr, 0.9, 0.9);
  }

  v4 = MEMORY[0x277CBF2C0];
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v5;
  *&retstr->tx = *(v4 + 32);
  return result;
}

+ (id)viewWithLegacyComplicationType:(unint64_t)type
{
  if (type)
  {
    v3 = 0;
  }

  else
  {
    v3 = [[NTKRichComplicationCircularBaseView alloc] initWithFamily:10];
    [(NTKRichComplicationCircularBaseView *)v3 setHidden:1];
  }

  return v3;
}

+ (double)centerLabelLargeFontSizeForDevice:(id)device
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  ___LayoutConstants_block_invoke_52(device, &v4);
  return *(&v5 + 1);
}

+ (double)centerLabelSmallFontSizeForDevice:(id)device
{
  v6 = 0;
  v5 = 0u;
  memset(v4, 0, sizeof(v4));
  ___LayoutConstants_block_invoke_52(device, v4);
  return *&v5;
}

+ (double)smallLabelLargeFontSizeForDevice:(id)device
{
  v6 = 0;
  v5 = 0u;
  memset(v4, 0, sizeof(v4));
  ___LayoutConstants_block_invoke_52(device, v4);
  return *(&v5 + 1);
}

+ (double)smallLabelSmallFontSizeForDevice:(id)device
{
  v5 = 0.0;
  memset(v4, 0, sizeof(v4));
  ___LayoutConstants_block_invoke_52(device, v4);
  return v5;
}

- (NTKRichComplicationCircularBaseView)initWithFamily:(int64_t)family
{
  v13.receiver = self;
  v13.super_class = NTKRichComplicationCircularBaseView;
  v3 = [(CDRichComplicationView *)&v13 initWithFamily:family];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(NTKRichComplicationCircularBaseView *)v3 setBackgroundColor:clearColor];

    blackColor = [MEMORY[0x277D75348] blackColor];
    platterColor = v3->_platterColor;
    v3->_platterColor = blackColor;

    v7 = objc_alloc_init(MEMORY[0x277D75D18]);
    framingView = v3->_framingView;
    v3->_framingView = v7;

    [(UIView *)v3->_framingView setBackgroundColor:v3->_platterColor];
    [(NTKRichComplicationCircularBaseView *)v3 addSubview:v3->_framingView];
    v9 = objc_alloc_init(MEMORY[0x277D75D18]);
    contentView = v3->_contentView;
    v3->_contentView = v9;

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v3->_contentView setBackgroundColor:clearColor2];

    [(UIView *)v3->_framingView addSubview:v3->_contentView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = NTKRichComplicationCircularBaseView;
  [(NTKRichComplicationCircularBaseView *)&v34 layoutSubviews];
  v25 = *(MEMORY[0x277CBF2C0] + 16);
  *&v33.a = *MEMORY[0x277CBF2C0];
  v26 = *&v33.a;
  *&v33.c = v25;
  *&v33.tx = *(MEMORY[0x277CBF2C0] + 32);
  v24 = *&v33.tx;
  v29 = *&v33.a;
  v30 = v25;
  v31 = *&v33.tx;
  [(UIView *)self->_framingView setTransform:&v29];
  [(NTKRichComplicationCircularBaseView *)self bounds];
  [(NTKRichComplicationCircularBaseView *)self bounds];
  [(NTKRichComplicationCircularBaseView *)self bounds];
  device = [(CDRichComplicationView *)self device];
  CLKRectCenteredXInRectForDevice();
  [(UIView *)self->_framingView setFrame:?];

  [(NTKRichComplicationCircularBaseView *)self bounds];
  v5 = v4 * 0.5;
  layer = [(UIView *)self->_framingView layer];
  [layer setCornerRadius:v5];

  [(UIView *)self->_framingView bounds];
  [(NTKRichComplicationCircularBaseView *)self _contentDiameter];
  v8 = v7;
  device2 = [(CDRichComplicationView *)self device];
  CLKSizeCenteredInRectForDevice();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  device3 = [(CDRichComplicationView *)self device];
  ___LayoutConstants_block_invoke_52(device3, &v29);

  *&v28.a = v26;
  *&v28.c = v25;
  *&v28.tx = v24;
  [(UIView *)self->_contentView setTransform:&v28];
  [(UIView *)self->_contentView setFrame:v11, v13, v15, v17];
  layer2 = [(UIView *)self->_contentView layer];
  [layer2 setCornerRadius:v8 * 0.5];

  v20 = *MEMORY[0x277CBF348];
  v21 = *(MEMORY[0x277CBF348] + 8);
  position = [(NTKRichComplicationCircularBaseView *)self position];
  if (position > 1)
  {
    if (position == 2)
    {
      v21 = -*&v30;
      v20 = 0.0;
    }

    else if (position == 3)
    {
      v20 = 0.0;
      v21 = *&v30;
    }
  }

  else if (position)
  {
    if (position == 1)
    {
      v20 = -*&v30;
      v21 = 0.0;
    }
  }

  else
  {
    v21 = 0.0;
    v20 = *&v30;
  }

  *&v28.a = v26;
  *&v28.c = v25;
  *&v28.tx = v24;
  CGAffineTransformTranslate(&v33, &v28, v20, v21);
  CLKDegreesToRadians();
  v27 = v33;
  CGAffineTransformRotate(&v28, &v27, v23);
  v33 = v28;
  v27 = v28;
  CGAffineTransformTranslate(&v28, &v27, -v20, -v21);
  v33 = v28;
  [(UIView *)self->_framingView setTransform:&v28];
}

- (void)makeBackgroundTransparent
{
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UIView *)self->_framingView setBackgroundColor:clearColor];
  [(UIView *)self->_contentView setBackgroundColor:clearColor];
}

- (void)setPlatterColor:(id)color
{
  objc_storeStrong(&self->_platterColor, color);
  colorCopy = color;
  [(UIView *)self->_framingView setBackgroundColor:self->_platterColor];
}

- (void)setPlatterVisualEffect:(id)effect
{
  effectCopy = effect;
  if (([(UIVisualEffect *)self->_platterVisualEffect isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_platterVisualEffect, effect);
    platterVisualEffectView = self->_platterVisualEffectView;
    if (effectCopy)
    {
      if (platterVisualEffectView)
      {
        [(UIVisualEffectView *)platterVisualEffectView setEffect:effectCopy];
      }

      else
      {
        v7 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:effectCopy];
        v8 = self->_platterVisualEffectView;
        self->_platterVisualEffectView = v7;

        v9 = self->_platterVisualEffectView;
        [(NTKRichComplicationCircularBaseView *)self bounds];
        [(UIVisualEffectView *)v9 setBounds:?];
        [(UIVisualEffectView *)self->_platterVisualEffectView setAutoresizingMask:18];
        device = [(CDRichComplicationView *)self device];
        v11 = NTKWhistlerSubdialComplicationDiameter(device);

        layer = [(UIVisualEffectView *)self->_platterVisualEffectView layer];
        [layer setCornerRadius:v11 * 0.5];

        [(UIVisualEffectView *)self->_platterVisualEffectView setClipsToBounds:1];
        [(NTKRichComplicationCircularBaseView *)self insertSubview:self->_platterVisualEffectView belowSubview:self->_framingView];
      }
    }

    else
    {
      [(UIVisualEffectView *)platterVisualEffectView removeFromSuperview];
      v6 = self->_platterVisualEffectView;
      self->_platterVisualEffectView = 0;
    }
  }
}

- (void)setAccentedAlternateBackground:(BOOL)background
{
  if (self->_accentedAlternateBackground != background)
  {
    self->_accentedAlternateBackground = background;
    [(NTKRichComplicationCircularBaseView *)self _updatePlatterColor];
  }
}

- (void)_setEditingTransitionFraction:(double)fraction direction:(int64_t)direction position:(int64_t)position type:(int64_t)type
{
  if (!type)
  {
    [(NTKRichComplicationCircularBaseView *)self _setWhistlerAnalogEditingTransitonFraction:direction direction:position position:fraction];
  }
}

- (void)_setWhistlerAnalogEditingTransitonFraction:(double)fraction direction:(int64_t)direction position:(int64_t)position
{
  v7 = fmin(fmax(fraction, 0.0), 0.5);
  v8 = v7 + v7;
  if (position)
  {
    v8 = 0.0;
  }

  v9 = [(CDRichComplicationView *)self device:direction];
  ___LayoutConstants_block_invoke_52(v9, &v11);

  CLKInterpolateBetweenFloatsClipped();
  if (position == 1)
  {
    v10 = -v10;
  }

  self->_editingRotationInDegree = v10;

  [(NTKRichComplicationCircularBaseView *)self setNeedsLayout];
}

- (id)_createAndAddColoringLabel
{
  v3 = objc_opt_new();
  [v3 setUsesLegibility:0];
  [v3 setUppercase:1];
  [v3 setAlpha:1.0];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v3 setColor:whiteColor];

  [v3 setUsesTextProviderTintColoring:1];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__NTKRichComplicationCircularBaseView__createAndAddColoringLabel__block_invoke;
  v9[3] = &unk_27877DC30;
  objc_copyWeak(&v10, &location);
  [v3 setNowProvider:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__NTKRichComplicationCircularBaseView__createAndAddColoringLabel__block_invoke_2;
  v7[3] = &unk_27877DC58;
  objc_copyWeak(&v8, &location);
  [v3 setNeedsResizeHandler:v7];
  [v3 setFilterProvider:self];
  contentView = [(NTKRichComplicationCircularBaseView *)self contentView];
  [contentView addSubview:v3];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v3;
}

id __65__NTKRichComplicationCircularBaseView__createAndAddColoringLabel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained)
  {
    WeakRetained = MEMORY[0x277CBBAD8];
  }

  v3 = [WeakRetained complicationDate];

  return v3;
}

void __65__NTKRichComplicationCircularBaseView__createAndAddColoringLabel__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
  v1 = [WeakRetained displayObserver];
  [v1 complicationDisplayNeedsResize:WeakRetained];
}

- (unint64_t)_adjustFontSizeForLabel:(id)label fontWeight:(double)weight possibleMaxWidths:(id)widths possibleFontSizes:(id)sizes
{
  labelCopy = label;
  widthsCopy = widths;
  sizesCopy = sizes;
  v13 = [widthsCopy count];
  if (v13 != [sizesCopy count])
  {
    [NTKRichComplicationCircularBaseView _adjustFontSizeForLabel:fontWeight:possibleMaxWidths:possibleFontSizes:];
  }

  if (![sizesCopy count])
  {
    [NTKRichComplicationCircularBaseView _adjustFontSizeForLabel:fontWeight:possibleMaxWidths:possibleFontSizes:];
  }

  if ([widthsCopy count])
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = [widthsCopy objectAtIndexedSubscript:v15];
      [v16 floatValue];
      v18 = v17;

      v19 = [sizesCopy objectAtIndexedSubscript:v15];
      [v19 floatValue];
      v21 = v20;

      fontDescriptor = [(CDRichComplicationView *)self fontDescriptor];
      v23 = MEMORY[0x277CBBB08];
      if (fontDescriptor)
      {
        [(CDRichComplicationView *)self fontSizeFactor];
        [v23 fontWithDescriptor:fontDescriptor size:v24 * v21];
      }

      else
      {
        [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v21 design:weight];
      }
      v25 = ;
      v26 = v18;
      cLKFontWithAlternativePunctuation = [v25 CLKFontWithAlternativePunctuation];

      [labelCopy widthForMaxWidth:cLKFontWithAlternativePunctuation withFont:v26];
      v29 = v28;

      if (v29 <= v26)
      {
        break;
      }

      ++v15;
      v14 = cLKFontWithAlternativePunctuation;
    }

    while (v15 < [widthsCopy count]);
  }

  else
  {
    v15 = 0;
    cLKFontWithAlternativePunctuation = 0;
    v26 = 0.0;
  }

  [labelCopy setMaxWidth:v26];
  [labelCopy setFont:cLKFontWithAlternativePunctuation];
  [labelCopy sizeToFit];
  [labelCopy frame];
  if (v30 > v26)
  {
    [labelCopy setFrame:?];
  }

  return v15;
}

- (double)_contentDiameter
{
  family = [(CDRichComplicationView *)self family];
  device = [(CDRichComplicationView *)self device];
  if (family == 12)
  {
    NTKGraphicExtraLargeComplicationContentDiameter();
  }

  else
  {
    v5 = NTKWhistlerSubdialComplicationContentDiameter();
  }

  v6 = v5;

  return v6;
}

- (void)_transitToHighlightState:(BOOL)state fraction:(double)fraction
{
  CLKInterpolateBetweenFloatsClipped();
  CGAffineTransformMakeScale(&v7, v5, v5);
  v6 = v7;
  [(NTKRichComplicationCircularBaseView *)self setTransform:&v6];
}

- (void)_updatePlatterColor
{
  if ([(CDRichComplicationTemplateView *)self templateWantsPlatter])
  {
    filterProvider = [(CDRichComplicationView *)self filterProvider];
    v5 = [filterProvider colorForView:self accented:self->_accentedAlternateBackground];

    if (v5)
    {
      CLKUIDefaultComplicationBackgroundColorWithNonAccentColor();
    }

    CLKUIDefaultComplicationBackgroundColor();
  }

  contentView = [(NTKRichComplicationCircularBaseView *)self contentView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [contentView setBackgroundColor:clearColor];
}

+ (BOOL)handlesComplicationTemplate:(id)template
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (NTKRichComplicationCircularBaseView)init
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return [(NTKRichComplicationCircularBaseView *)self initWithFamily:10];
}

@end