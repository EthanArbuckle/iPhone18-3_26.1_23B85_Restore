@interface NTKVictoryAnalogBackgroundView
+ (id)_disabledLayerActions;
- (CGColor)_layerTransitionColorFromColor:(id)color toColor:(id)toColor amount:(double)amount;
- (CGPoint)_ringDigitOffsetAtIndex:(unint64_t)index;
- (CGPoint)centerPointForSmallHourMarkerAtIndex:(unint64_t)index;
- (CGPoint)logoPositionForStyle:(unint64_t)style;
- (CGSize)logoSizeForStyle:(unint64_t)style;
- (NTKVictoryAnalogBackgroundView)initWithFrame:(CGRect)frame forDevice:(id)device;
- (NTKVictoryAnalogBackgroundViewDelegate)delegate;
- (UIImage)logoImage;
- (double)_elementScaleForTransitionProgress:(double)progress initialScale:(double)scale middleScale:(double)middleScale finalScale:(double)finalScale;
- (double)_transitionProgressForDigitAtIndex:(unint64_t)index overallProgress:(double)progress delayPerDigit:(double)digit digitTransitionLength:(double)length;
- (id)_activeRingLayers;
- (id)_activeRingObjects;
- (id)_createAndAddLayersWithCount:(unint64_t)count;
- (id)_createHourMarkerLabelsWithFontSize:(double)size;
- (id)_createSmallHourMarkerLabelForIndex:(id)index;
- (id)_dotImage;
- (id)digitForLargeNumberAtIndex:(int64_t)index;
- (unint64_t)_digitForIndex:(unint64_t)index;
- (void)_applyPalette:(id)palette forStyle:(unint64_t)style;
- (void)_clearTransitionStateForStyle:(unint64_t)style palette:(id)palette;
- (void)_createLargeHourMarkerLabelsAndAttachToViewIfNeeded;
- (void)_createMediumNumberLayersIfNeededAndAttachToViewIfNeeded;
- (void)_createRingLayersIfNeeded;
- (void)_logoTapped:(id)tapped;
- (void)_setRingLayerAtIndex:(unint64_t)index isDigit:(BOOL)digit;
- (void)addLogoButtonIfNeeded;
- (void)addSmallLogoButtonIfNeeded;
- (void)applyTransitionFraction:(double)fraction fromDialShape:(unint64_t)shape toDialShape:(unint64_t)dialShape;
- (void)applyTransitionFraction:(double)fraction fromOlympusStyle:(unint64_t)style toOlympusStyle:(unint64_t)olympusStyle;
- (void)applyTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette style:(unint64_t)style animateElements:(BOOL)elements;
- (void)layoutNumbers;
- (void)layoutSubviews;
- (void)setDialShape:(unint64_t)shape;
- (void)setInTimeTravel:(BOOL)travel animated:(BOOL)animated;
- (void)setPalette:(id)palette;
- (void)setStyle:(unint64_t)style;
- (void)willBeginEditing;
@end

@implementation NTKVictoryAnalogBackgroundView

- (NTKVictoryAnalogBackgroundView)initWithFrame:(CGRect)frame forDevice:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v55.receiver = self;
  v55.super_class = NTKVictoryAnalogBackgroundView;
  height = [(NTKVictoryAnalogBackgroundView *)&v55 initWithFrame:x, y, width, height];
  v10 = height;
  if (height)
  {
    objc_storeStrong(&height->_device, device);
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    memset(v32, 0, sizeof(v32));
    ___LayoutConstants_block_invoke_53(v10->_device, v32);
    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    contentView = v10->_contentView;
    v10->_contentView = v11;

    [(NTKVictoryAnalogBackgroundView *)v10 addSubview:v10->_contentView];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(NTKVictoryAnalogBackgroundView *)v10 setBackgroundColor:blackColor];

    [(NTKVictoryAnalogBackgroundView *)v10 setOpaque:1];
    v10->_dialShape = 1;
    *&v10->_canonicalDigitStatesByStyle[2][8] = 0;
    *&v10->_canonicalDigitStatesByStyle[0][0] = 0u;
    *&v10->_canonicalDigitStatesByStyle[1][4] = 0u;
    activeDigitIndices = v10->_activeDigitIndices;
    v10->_activeDigitIndices = &unk_28418B470;

    if ([(NSArray *)v10->_activeDigitIndices count])
    {
      v15 = 0;
      do
      {
        v16 = [(NSArray *)v10->_activeDigitIndices objectAtIndex:v15];
        if ([v16 count])
        {
          v17 = 0;
          do
          {
            v18 = [v16 objectAtIndex:v17];
            unsignedIntegerValue = [v18 unsignedIntegerValue];

            v10->_canonicalDigitStatesByStyle[v15][unsignedIntegerValue] = 1;
            ++v17;
          }

          while (v17 < [v16 count]);
        }

        ++v15;
      }

      while (v15 < [(NSArray *)v10->_activeDigitIndices count]);
    }

    v20.f64[0] = width;
    v20.f64[1] = height;
    __asm { FMOV            V0.2D, #0.5 }

    v26 = vmulq_f64(v20, _Q0);
    v27 = v34;
    v10->_logoPositionRing = vaddq_f64(v26, v33);
    v10->_logoPositionNoDigits = vaddq_f64(v26, v27);
    v28 = v51;
    v10->_logoPositionBig = vaddq_f64(v26, v50);
    v10->_logoPositionSmallFont = vaddq_f64(v26, v28);
    v10->_logoPositionCircularDial = vaddq_f64(v26, v52);
  }

  return v10;
}

- (void)addLogoButtonIfNeeded
{
  if (!self->_logoButton)
  {
    v3 = [NTKVictoryLogoButton buttonWithType:0];
    logoButton = self->_logoButton;
    self->_logoButton = v3;

    v5 = self->_logoButton;
    logoImage = [(NTKVictoryAnalogBackgroundView *)self logoImage];
    [(NTKVictoryLogoButton *)v5 setBackgroundImage:logoImage forState:0];

    v7 = self->_logoButton;
    v8 = *MEMORY[0x277CBF348];
    v9 = *(MEMORY[0x277CBF348] + 8);
    [(NTKVictoryAnalogBackgroundView *)self logoSizeForStyle:self->_style];
    [(NTKVictoryLogoButton *)v7 setBounds:v8, v9, v10, v11];
    [(NTKVictoryLogoButton *)self->_logoButton addTarget:self action:sel__logoTapped_ forControlEvents:64];
    [(UIView *)self->_contentView addSubview:self->_logoButton];
    [(NTKVictoryAnalogBackgroundView *)self logoPositionForStyle:self->_style];
    v12 = self->_logoButton;

    [(NTKVictoryLogoButton *)v12 setCenter:?];
  }
}

- (void)addSmallLogoButtonIfNeeded
{
  if (!self->_smallLogoButton)
  {
    v3 = [NTKVictoryLogoButton buttonWithType:0];
    smallLogoButton = self->_smallLogoButton;
    self->_smallLogoButton = v3;

    v5 = self->_smallLogoButton;
    _circularDialLogoImage = [(NTKVictoryAnalogBackgroundView *)self _circularDialLogoImage];
    [(NTKVictoryLogoButton *)v5 setBackgroundImage:_circularDialLogoImage forState:0];

    v7 = self->_smallLogoButton;
    v8 = *MEMORY[0x277CBF348];
    v9 = *(MEMORY[0x277CBF348] + 8);
    ___LayoutConstants_block_invoke_53(self->_device, v12);
    [(NTKVictoryLogoButton *)v7 setBounds:v8, v9, v12[60], v12[61]];
    [(NTKVictoryLogoButton *)self->_smallLogoButton addTarget:self action:sel__logoTapped_ forControlEvents:64];
    [(NTKVictoryLogoButton *)self->_smallLogoButton setHidden:1];
    [(NTKVictoryLogoButton *)self->_smallLogoButton setCenter:self->_logoPositionCircularDial.x, self->_logoPositionCircularDial.y];
    contentView = self->_contentView;
    v11 = self->_smallLogoButton;

    [(UIView *)contentView addSubview:v11];
  }
}

- (void)_logoTapped:(id)tapped
{
  tappedCopy = tapped;
  [tappedCopy bounds];
  [tappedCopy convertRect:self toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  delegate = [(NTKVictoryAnalogBackgroundView *)self delegate];
  [delegate logoTappedFromRect:{v6, v8, v10, v12}];
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = NTKVictoryAnalogBackgroundView;
  [(NTKVictoryAnalogBackgroundView *)&v18 layoutSubviews];
  contentView = self->_contentView;
  [(NTKVictoryAnalogBackgroundView *)self bounds];
  [(UIView *)contentView ntk_setBoundsAndPositionFromFrame:?];
  memset(v17, 0, sizeof(v17));
  ___LayoutConstants_block_invoke_53(self->_device, v17);
  [(NTKVictoryAnalogBackgroundView *)self bounds];
  v4 = 0;
  v6 = v5 * 0.5;
  v8 = v7 * 0.5;
  do
  {
    v9 = v4 * 6.28318531 / 12.0;
    __sincosf_stret(v9);
    CLKRoundForDevice();
    v11 = v10;
    CLKRoundForDevice();
    v13 = v12;
    v14 = [(NSMutableArray *)self->_ringLayers objectAtIndex:v4];
    [v14 setPosition:{v6 + v11, v8 + v13}];

    ++v4;
  }

  while (v4 != 12);
  smallHourMarkerLabelsByIndex = self->_smallHourMarkerLabelsByIndex;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__NTKVictoryAnalogBackgroundView_layoutSubviews__block_invoke;
  v16[3] = &unk_278784DC0;
  v16[4] = self;
  [(NSMutableDictionary *)smallHourMarkerLabelsByIndex enumerateKeysAndObjectsUsingBlock:v16];
  [(NTKVictoryAnalogBackgroundView *)self layoutNumbers];
}

void __48__NTKVictoryAnalogBackgroundView_layoutSubviews__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 centerPointForSmallHourMarkerAtIndex:{objc_msgSend(a2, "unsignedIntegerValue")}];
  [v5 setCenter:?];
}

- (CGPoint)centerPointForSmallHourMarkerAtIndex:(unint64_t)index
{
  [(NTKVictoryAnalogBackgroundView *)self _ringDigitOffsetAtIndex:index];
  v5 = v4;
  v7 = v6;
  [(NTKVictoryAnalogBackgroundView *)self bounds];
  v10 = v5 + v8 * 0.5;
  v11 = v7 + v9 * 0.5;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)layoutNumbers
{
  v3 = &v37[22] + 1;
  memset(v37, 0, sizeof(v37));
  ___LayoutConstants_block_invoke_53(self->_device, v37);
  [(NTKVictoryAnalogBackgroundView *)self bounds];
  v4 = 0;
  v6 = v5 * 0.5;
  v8 = v7 * 0.5;
  v9 = MEMORY[0x277CBF2C0];
  do
  {
    if ([(NSArray *)self->_largeHourMarkerLabels count]>= 4)
    {
      v10 = [(NSArray *)self->_largeHourMarkerLabels objectAtIndex:v4];
      v11 = v10;
      if (self->_style < 5)
      {
        v12 = v6 + *(v3 - 17);
        v16 = v8 + *(v3 - 16);
      }

      else
      {
        v12 = *(v3 - 9);
        v13 = *(v3 - 8);
        [v10 bounds];
        v14 = v13 + CGRectGetHeight(v38) * -0.5;
        [v11 _baselineOffsetFromBottom];
        v16 = v15 + v14;
      }

      [v11 setCenter:{v12, v16}];
    }

    if ([(NSArray *)self->_mediumNumberLayers count]>= 4)
    {
      v17 = *(v3 - 1);
      v18 = *v3;
      v19 = [(NSArray *)self->_mediumNumberLayers objectAtIndex:v4];
      [v19 setCenter:{v6 + v17, v8 + v18}];
      v20 = v9[1];
      *&v36.a = *v9;
      *&v36.c = v20;
      *&v36.tx = v9[2];
      [v19 setTransform:&v36];
    }

    ++v4;
    v3 += 2;
  }

  while (v4 != 4);
  dialShapeFraction = self->_dialShapeFraction;
  if (dialShapeFraction > 0.0 && dialShapeFraction < 1.0)
  {
    for (i = 0; i != 4; ++i)
    {
      if ([(NSArray *)self->_largeHourMarkerLabels count]>= 4 && [(NSArray *)self->_mediumNumberLayers count]>= 4)
      {
        v24 = [(NSArray *)self->_largeHourMarkerLabels objectAtIndex:i];
        v25 = [(NSArray *)self->_mediumNumberLayers objectAtIndex:i];
        [v24 center];
        [v25 center];
        CLKInterpolateBetweenFloatsClipped();
        v27 = v26;
        [v24 center];
        [v25 center];
        CLKInterpolateBetweenFloatsClipped();
        [v24 setCenter:{v27, v28}];
        [v24 center];
        [v25 center];
        CLKInterpolateBetweenFloatsClipped();
        v30 = v29;
        [v24 center];
        [v25 center];
        CLKInterpolateBetweenFloatsClipped();
        [v25 setCenter:{v30, v31}];
        [v25 bounds];
        [v24 bounds];
        CLKInterpolateBetweenFloatsClipped();
        CGAffineTransformMakeScale(&v35, v32, v32);
        v36 = v35;
        [v24 setTransform:&v36];
        [v24 bounds];
        [v25 bounds];
        CLKInterpolateBetweenFloatsClipped();
        CGAffineTransformMakeScale(&v34, v33, v33);
        v36 = v34;
        [v25 setTransform:&v36];
      }
    }
  }
}

- (CGPoint)_ringDigitOffsetAtIndex:(unint64_t)index
{
  v3 = MEMORY[0x277CBF348];
  if (index <= 0xB)
  {
    if (((1 << index) & 0x700) != 0)
    {
      v4 = index - 3;
      goto LABEL_11;
    }

    if (((1 << index) & 0x8A0) != 0)
    {
      goto LABEL_12;
    }

    if (index == 6)
    {
      v4 = 4;
LABEL_11:
      ___LayoutConstants_block_invoke_53(self->_device, v7);
      v3 = &v7[v4 + 1];
      goto LABEL_12;
    }
  }

  if (index - 2 < 3)
  {
    v4 = index - 1;
    goto LABEL_11;
  }

  if (index != 1)
  {
    v4 = 0;
    goto LABEL_11;
  }

LABEL_12:
  v5 = *v3;
  v6 = v3[1];
  result.y = v6;
  result.x = v5;
  return result;
}

- (void)setInTimeTravel:(BOOL)travel animated:(BOOL)animated
{
  v33 = *MEMORY[0x277D85DE8];
  if (self->_style >= 3)
  {
    animatedCopy = animated;
    travelCopy = travel;
    v6 = [(NSArray *)self->_largeHourMarkerLabels subarrayWithRange:1, 3];
    v7 = v6;
    if (travelCopy)
    {
      v8 = 0.2;
    }

    else
    {
      v8 = 1.0;
    }

    if (animatedCopy)
    {
      if (travelCopy)
      {
        v9 = 1.0;
      }

      else
      {
        v9 = 0.2;
      }

      v10 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
      v11 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
      [v10 setFromValue:v11];

      [v10 setDuration:*off_27877BE60];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v12 = v7;
      v13 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v28;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v28 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v27 + 1) + 8 * i);
            [v17 setAlpha:v8];
            layer = [v17 layer];
            [layer addAnimation:v10 forKey:@"timeTravelFade"];
          }

          v14 = [v12 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v14);
      }
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v19 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v24;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v24 != v21)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v23 + 1) + 8 * j) setAlpha:v8];
          }

          v20 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v20);
      }
    }
  }
}

- (void)setStyle:(unint64_t)style
{
  self->_style = style;
  [(NTKVictoryAnalogBackgroundView *)self addLogoButtonIfNeeded];
  if (style > 2)
  {
    [(NTKVictoryAnalogBackgroundView *)self _createLargeHourMarkerLabelsAndAttachToViewIfNeeded];
  }

  else
  {
    [(NTKVictoryAnalogBackgroundView *)self _createRingLayersIfNeeded];
  }

  [(NTKVictoryAnalogBackgroundView *)self _clearTransitionStateForStyle:style palette:self->_palette];

  [(NTKVictoryAnalogBackgroundView *)self setNeedsLayout];
}

- (void)setDialShape:(unint64_t)shape
{
  self->_dialShape = shape;
  isCircularDial = [(NTKVictoryAnalogBackgroundView *)self isCircularDial];
  v5 = 0.0;
  if (isCircularDial)
  {
    v5 = 1.0;
  }

  self->_dialShapeFraction = v5;
  dialShape = self->_dialShape;
  if (dialShape)
  {
    if (dialShape != 1)
    {
      goto LABEL_12;
    }

    [(NTKVictoryAnalogBackgroundView *)self addLogoButtonIfNeeded];
    if (![(NSArray *)self->_largeHourMarkerLabels count])
    {
      [(NTKVictoryAnalogBackgroundView *)self _createLargeHourMarkerLabelsAndAttachToViewIfNeeded];
    }

    v7 = &__block_literal_global_128;
    v8 = &OBJC_IVAR___NTKVictoryAnalogBackgroundView__mediumNumberLayers;
  }

  else
  {
    [(NTKVictoryAnalogBackgroundView *)self addSmallLogoButtonIfNeeded];
    if (![(NSArray *)self->_mediumNumberLayers count])
    {
      [(NTKVictoryAnalogBackgroundView *)self _createMediumNumberLayersIfNeededAndAttachToViewIfNeeded];
    }

    v7 = &__block_literal_global_36;
    v8 = &OBJC_IVAR___NTKVictoryAnalogBackgroundView__largeHourMarkerLabels;
  }

  v9 = *v8;
  [*(&self->super.super.super.isa + v9) enumerateObjectsUsingBlock:v7];
  v10 = *(&self->super.super.super.isa + v9);
  *(&self->super.super.super.isa + v9) = 0;

LABEL_12:
  if ([(NTKVictoryAnalogBackgroundView *)self style]!= 4)
  {
    [(NTKVictoryAnalogBackgroundView *)self setStyle:4];
  }

  [(NTKVictoryLogoButton *)self->_logoButton setHidden:self->_dialShape == 0];
  [(NTKVictoryLogoButton *)self->_smallLogoButton setHidden:self->_dialShape == 1];
  [(NTKVictoryAnalogBackgroundView *)self logoPositionForStyle:self->_style];
  [(NTKVictoryLogoButton *)self->_logoButton setCenter:?];
  logoButton = self->_logoButton;
  v14 = *(MEMORY[0x277CBF2C0] + 16);
  v16 = *MEMORY[0x277CBF2C0];
  v15 = v16;
  v17 = v14;
  v18 = *(MEMORY[0x277CBF2C0] + 32);
  v13 = v18;
  [(NTKVictoryLogoButton *)logoButton setTransform:&v16];
  [(NTKVictoryLogoButton *)self->_smallLogoButton setCenter:self->_logoPositionCircularDial.x, self->_logoPositionCircularDial.y];
  smallLogoButton = self->_smallLogoButton;
  v16 = v15;
  v17 = v14;
  v18 = v13;
  [(NTKVictoryLogoButton *)smallLogoButton setTransform:&v16];
  [(NTKVictoryAnalogBackgroundView *)self layoutNumbers];
}

- (void)applyTransitionFraction:(double)fraction fromDialShape:(unint64_t)shape toDialShape:(unint64_t)dialShape
{
  if (shape == dialShape)
  {

    [(NTKVictoryAnalogBackgroundView *)self setDialShape:fraction];
  }

  else
  {
    [(NTKVictoryAnalogBackgroundView *)self addLogoButtonIfNeeded];
    [(NTKVictoryAnalogBackgroundView *)self addSmallLogoButtonIfNeeded];
    [(NTKVictoryLogoButton *)self->_logoButton setHidden:0];
    [(NTKVictoryLogoButton *)self->_smallLogoButton setHidden:0];
    self->_dialShapeFraction = fraction;
    CLKInterpolateBetweenFloatsClipped();
    [(NTKVictoryLogoButton *)self->_logoButton setAlpha:?];
    CLKInterpolateBetweenFloatsClipped();
    [(NTKVictoryLogoButton *)self->_smallLogoButton setAlpha:?];
    CLKInterpolateBetweenFloatsClipped();
    v8 = v7;
    CLKInterpolateBetweenFloatsClipped();
    [(NTKVictoryLogoButton *)self->_logoButton setCenter:v8, v9];
    CLKInterpolateBetweenFloatsClipped();
    v11 = v10;
    CLKInterpolateBetweenFloatsClipped();
    [(NTKVictoryLogoButton *)self->_smallLogoButton setCenter:v11, v12];
    [(NTKVictoryAnalogBackgroundView *)self layoutNumbers];
    [(NTKVictoryLogoButton *)self->_smallLogoButton bounds];
    [(NTKVictoryLogoButton *)self->_logoButton bounds];
    CLKInterpolateBetweenFloatsClipped();
    CGAffineTransformMakeScale(&v28, v13, v13);
    logoButton = self->_logoButton;
    v27 = v28;
    [(NTKVictoryLogoButton *)logoButton setTransform:&v27];
    [(NTKVictoryLogoButton *)self->_logoButton bounds];
    [(NTKVictoryLogoButton *)self->_smallLogoButton bounds];
    CLKInterpolateBetweenFloatsClipped();
    CGAffineTransformMakeScale(&v26, v15, v15);
    smallLogoButton = self->_smallLogoButton;
    v27 = v26;
    [(NTKVictoryLogoButton *)smallLogoButton setTransform:&v27];
    if (![(NSArray *)self->_largeHourMarkerLabels count])
    {
      [(NTKVictoryAnalogBackgroundView *)self _createLargeHourMarkerLabelsAndAttachToViewIfNeeded];
    }

    if (![(NSArray *)self->_mediumNumberLayers count])
    {
      [(NTKVictoryAnalogBackgroundView *)self _createMediumNumberLayersIfNeededAndAttachToViewIfNeeded];
    }

    CLKCompressFraction();
    v18 = v17;
    CLKCompressFraction();
    v20 = v19;
    if ([(NSArray *)self->_largeHourMarkerLabels count])
    {
      v21 = 0;
      v22 = 1.0 - v18;
      do
      {
        if ([(NSArray *)self->_largeHourMarkerLabels count])
        {
          v23 = [(NSArray *)self->_largeHourMarkerLabels objectAtIndex:v21];
          [v23 setAlpha:v22];
        }

        mediumNumberLayers = self->_mediumNumberLayers;
        if (mediumNumberLayers)
        {
          v25 = [(NSArray *)mediumNumberLayers objectAtIndex:v21];
          [v25 setAlpha:v20];
        }

        ++v21;
      }

      while (v21 < [(NSArray *)self->_largeHourMarkerLabels count]);
    }
  }
}

- (void)applyTransitionFraction:(double)fraction fromOlympusStyle:(unint64_t)style toOlympusStyle:(unint64_t)olympusStyle
{
  CLKCompressFraction();
  v7 = v6;
  CLKInterpolateBetweenFloatsClipped();
  memset(&v10, 0, sizeof(v10));
  CGAffineTransformMakeScale(&v10, v8, v8);
  [(UIView *)self->_contentView setAlpha:v7];
  v9 = v10;
  [(UIView *)self->_contentView setTransform:&v9];
}

- (id)_activeRingLayers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__42;
  v10 = __Block_byref_object_dispose__42;
  v11 = 0;
  ringLayers = self->_ringLayers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__NTKVictoryAnalogBackgroundView__activeRingLayers__block_invoke;
  v5[3] = &unk_278784E08;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableArray *)ringLayers enumerateObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __51__NTKVictoryAnalogBackgroundView__activeRingLayers__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(*(a1 + 32) + 432), "count")}];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = *(a1 + 32);
  v9 = *(*(*(a1 + 40) + 8) + 40);
  if (*(v8 + 440 + a3) == 1)
  {
    v10 = *(v8 + 472);
    if (a3)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    }

    else
    {
      v11 = &unk_284183F10;
    }

    v12 = [v10 objectForKeyedSubscript:v11];
    v13 = [v12 layer];
    [v9 addObject:v13];

    if (a3)
    {
    }
  }

  else
  {
    [v9 addObject:v14];
  }
}

- (id)_activeRingObjects
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__42;
  v10 = __Block_byref_object_dispose__42;
  v11 = 0;
  ringLayers = self->_ringLayers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__NTKVictoryAnalogBackgroundView__activeRingObjects__block_invoke;
  v5[3] = &unk_278784E08;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableArray *)ringLayers enumerateObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __52__NTKVictoryAnalogBackgroundView__activeRingObjects__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(*(a1 + 32) + 432), "count")}];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = *(a1 + 32);
  v9 = *(*(*(a1 + 40) + 8) + 40);
  if (*(v8 + 440 + a3) == 1)
  {
    v10 = *(v8 + 472);
    if (a3)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    }

    else
    {
      v11 = &unk_284183F10;
    }

    v12 = [v10 objectForKeyedSubscript:v11];
    [v9 addObject:v12];

    if (a3)
    {
    }
  }

  else
  {
    [v9 addObject:v13];
  }
}

- (void)_clearTransitionStateForStyle:(unint64_t)style palette:(id)palette
{
  paletteCopy = palette;
  [(NTKVictoryAnalogBackgroundView *)self addLogoButtonIfNeeded];
  [(NSMutableDictionary *)self->_smallHourMarkerLabelsByIndex enumerateKeysAndObjectsUsingBlock:&__block_literal_global_42_1];
  [(NSMutableArray *)self->_ringLayers enumerateObjectsUsingBlock:&__block_literal_global_44_0];
  if (style <= 2)
  {
    v7 = [(NSArray *)self->_activeDigitIndices objectAtIndexedSubscript:style];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __72__NTKVictoryAnalogBackgroundView__clearTransitionStateForStyle_palette___block_invoke_3;
    v39[3] = &unk_278783B40;
    v39[4] = self;
    [v7 enumerateObjectsUsingBlock:v39];
  }

  v8 = 0;
  styleCopy = 2;
  if (style < 2)
  {
    styleCopy = style;
  }

  v10 = self->_canonicalDigitStatesByStyle[styleCopy];
  v29 = *(MEMORY[0x277CD9DE8] + 80);
  v30 = *(MEMORY[0x277CD9DE8] + 64);
  v27 = *(MEMORY[0x277CD9DE8] + 112);
  v28 = *(MEMORY[0x277CD9DE8] + 96);
  v25 = *(MEMORY[0x277CD9DE8] + 16);
  v26 = *MEMORY[0x277CD9DE8];
  v23 = *(MEMORY[0x277CD9DE8] + 48);
  v24 = *(MEMORY[0x277CD9DE8] + 32);
  do
  {
    v11 = [(NTKVictoryAnalogBackgroundView *)self _activeRingLayers:v23];
    v12 = [v11 objectAtIndex:v8];

    v35 = v30;
    v36 = v29;
    v37 = v28;
    v38 = v27;
    v31 = v26;
    v32 = v25;
    v33 = v24;
    v34 = v23;
    [v12 setTransform:&v31];
    [(NTKVictoryAnalogBackgroundView *)self _setRingLayerAtIndex:v8 isDigit:v10[v8]];

    ++v8;
  }

  while (v8 != 12);
  v13 = 0;
  if (style <= 2)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 1.0;
  }

  v15 = MEMORY[0x277CBF2C0];
  do
  {
    if ([(NTKVictoryAnalogBackgroundView *)self isCircularDial])
    {
      v16 = 464;
    }

    else
    {
      v16 = 456;
    }

    v17 = [*(&self->super.super.super.isa + v16) objectAtIndex:v13];
    [v17 setAlpha:v14];
    v18 = v15[1];
    v31 = *v15;
    v32 = v18;
    v33 = v15[2];
    [v17 setTransform:&v31];

    ++v13;
  }

  while (v13 != 4);
  [(NTKVictoryAnalogBackgroundView *)self logoPositionForStyle:style];
  [(NTKVictoryLogoButton *)self->_logoButton setCenter:?];
  logoButton = self->_logoButton;
  v35 = v30;
  v36 = v29;
  v37 = v28;
  v38 = v27;
  v31 = v26;
  v32 = v25;
  v33 = v24;
  v34 = v23;
  [(NTKVictoryLogoButton *)logoButton setTransform3D:&v31];
  [(NTKVictoryLogoButton *)self->_logoButton setAlpha:1.0];
  v20 = self->_logoButton;
  [(NTKVictoryLogoButton *)v20 center];
  v22 = v21;
  [(NTKVictoryLogoButton *)self->_logoButton center];
  [(NTKVictoryLogoButton *)v20 setCenter:v22];
  [(NTKVictoryAnalogBackgroundView *)self _applyPalette:paletteCopy forStyle:style];
}

void __72__NTKVictoryAnalogBackgroundView__clearTransitionStateForStyle_palette___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(*(a1 + 32) + 472);
  if ([v8 integerValue])
  {
    v4 = v8;
  }

  else
  {
    v4 = &unk_284183F10;
  }

  v5 = [v3 objectForKeyedSubscript:v4];
  [v5 setHidden:0];
  v6 = [v5 superview];

  if (!v6)
  {
    [*(a1 + 32) addSubview:v5];
  }

  v7 = [*(*(a1 + 32) + 432) objectAtIndexedSubscript:{objc_msgSend(v8, "unsignedIntegerValue")}];
  [v7 setHidden:1];
}

- (CGPoint)logoPositionForStyle:(unint64_t)style
{
  v3 = &OBJC_IVAR___NTKVictoryAnalogBackgroundView__logoPositionRing;
  if (!style)
  {
    v3 = &OBJC_IVAR___NTKVictoryAnalogBackgroundView__logoPositionNoDigits;
  }

  v4 = &OBJC_IVAR___NTKVictoryAnalogBackgroundView__logoPositionSmallFont;
  if (style < 5)
  {
    v4 = &OBJC_IVAR___NTKVictoryAnalogBackgroundView__logoPositionBig;
  }

  if (style >= 3)
  {
    v3 = v4;
  }

  v5 = (self + *v3);
  v6 = *v5;
  v7 = v5[1];
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGSize)logoSizeForStyle:(unint64_t)style
{
  device = self->_device;
  if (style > 4)
  {
    ___LayoutConstants_block_invoke_53(device, v7);
    v4 = *&v7[60];
    v5 = &v8;
  }

  else
  {
    ___LayoutConstants_block_invoke_53(device, v9);
    v4 = v10;
    v5 = &v11;
  }

  v6 = *v5;
  result.height = v6;
  result.width = v4;
  return result;
}

- (void)setPalette:(id)palette
{
  objc_storeStrong(&self->_palette, palette);
  paletteCopy = palette;
  [(NTKVictoryAnalogBackgroundView *)self _applyPalette:paletteCopy forStyle:self->_style];
}

- (void)_applyPalette:(id)palette forStyle:(unint64_t)style
{
  paletteCopy = palette;
  backgroundColor = [paletteCopy backgroundColor];
  [(NTKVictoryAnalogBackgroundView *)self setBackgroundColor:?];
  dotMarkerAlpha = [paletteCopy dotMarkerAlpha];
  [dotMarkerAlpha floatValue];
  v9 = v8;

  v10 = 0;
  if (style <= 2)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = 0.0;
  }

  if (style <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0.0;
  }

  do
  {
    v13 = [(NSMutableArray *)self->_ringLayers objectAtIndex:v10];
    v14 = self->_ringLayerIsDigit[v10];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    if (v14)
    {
      v16 = [paletteCopy numberColorAtIndex:v15];
      v17 = v11;
    }

    else
    {
      v16 = [paletteCopy dotMarkerColorAtIndex:v15];
      v17 = v12;
    }

    cGColor = [v16 CGColor];

    [v13 setContentsMultiplyColor:cGColor];
    *&v19 = v17;
    [v13 setOpacity:v19];

    ++v10;
  }

  while (v10 != 12);
  if ([(NSArray *)self->_largeHourMarkerLabels count])
  {
    v20 = 0;
    do
    {
      v21 = [(NSArray *)self->_largeHourMarkerLabels objectAtIndex:v20];
      if (v20)
      {
        v22 = [(NTKVictoryAnalogBackgroundView *)self digitForLargeNumberAtIndex:v20];
        v23 = [paletteCopy numberColorAtIndex:v22];

        [v21 setFillColor:v23];
      }

      else
      {
        v24 = [(NTKVictoryAnalogBackgroundView *)self digitForLargeNumberAtIndex:0];
        v23 = [paletteCopy numberColorAtIndex:v24];

        v25 = MEMORY[0x277CCABB0];
        v26 = [(NTKVictoryAnalogBackgroundView *)self digitForLargeNumberAtIndex:0];
        v27 = [v25 numberWithInteger:{objc_msgSend(v26, "integerValue") + 1}];
        v28 = [paletteCopy numberColorAtIndex:v27];

        [v21 setFillColor:v23 inRange:{0, 1}];
        [v21 setFillColor:v28 inRange:{1, 1}];
      }

      ++v20;
    }

    while (v20 < [(NSArray *)self->_largeHourMarkerLabels count]);
  }

  if ([(NSArray *)self->_mediumNumberLayers count])
  {
    v29 = 0;
    do
    {
      v30 = [(NSArray *)self->_mediumNumberLayers objectAtIndex:v29];
      v31 = [(NTKVictoryAnalogBackgroundView *)self digitForLargeNumberAtIndex:v29];
      v32 = [paletteCopy numberColorAtIndex:v31];

      [v30 setFillColor:v32];
      ++v29;
    }

    while (v29 < [(NSArray *)self->_mediumNumberLayers count]);
  }

  smallHourMarkerLabelsByIndex = self->_smallHourMarkerLabelsByIndex;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __57__NTKVictoryAnalogBackgroundView__applyPalette_forStyle___block_invoke;
  v37[3] = &unk_278784DC0;
  v38 = paletteCopy;
  v34 = paletteCopy;
  [(NSMutableDictionary *)smallHourMarkerLabelsByIndex enumerateKeysAndObjectsUsingBlock:v37];
  logo = [v34 logo];
  [(NTKVictoryLogoButton *)self->_logoButton setTintColor:logo];
  [(NTKVictoryLogoButton *)self->_smallLogoButton setTintColor:logo];
}

void __57__NTKVictoryAnalogBackgroundView__applyPalette_forStyle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(a2, "unsignedIntegerValue") % 0xCuLL}];
  v9 = [v4 numberColorAtIndex:v7];

  [v6 setFillColor:v9];
  v8 = [v6 layer];

  [v8 setContentsMultiplyColor:0];
}

- (id)digitForLargeNumberAtIndex:(int64_t)index
{
  if (index > 3)
  {
    return 0;
  }

  else
  {
    return qword_278784EF8[index];
  }
}

- (void)applyTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette style:(unint64_t)style animateElements:(BOOL)elements
{
  elementsCopy = elements;
  paletteCopy = palette;
  toPaletteCopy = toPalette;
  dotMarkerAlpha = [paletteCopy dotMarkerAlpha];
  [dotMarkerAlpha floatValue];

  dotMarkerAlpha2 = [toPaletteCopy dotMarkerAlpha];
  [dotMarkerAlpha2 floatValue];

  v84 = paletteCopy;
  backgroundColor = [paletteCopy backgroundColor];
  v85 = toPaletteCopy;
  backgroundColor2 = [toPaletteCopy backgroundColor];
  v17 = NTKInterpolateBetweenColors();
  selfCopy = self;
  [(NTKVictoryAnalogBackgroundView *)self setBackgroundColor:v17];

  styleCopy = style;
  v74 = backgroundColor2;
  v75 = backgroundColor;
  if (style > 2)
  {
    isCircularDial = [(NTKVictoryAnalogBackgroundView *)self isCircularDial];
    v22 = &OBJC_IVAR___NTKVictoryAnalogBackgroundView__largeHourMarkerLabels;
    if (isCircularDial)
    {
      v22 = &OBJC_IVAR___NTKVictoryAnalogBackgroundView__mediumNumberLayers;
    }

    v19 = &__block_literal_global_49;
    v81 = &__block_literal_global_51;
    _activeRingObjects = *(&self->super.super.super.isa + *v22);
    v20 = 0.174999997;
    v73 = 0.150000006;
    v72 = 0.1;
  }

  else
  {
    _activeRingObjects = [(NTKVictoryAnalogBackgroundView *)self _activeRingObjects];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __102__NTKVictoryAnalogBackgroundView_applyTransitionFraction_fromPalette_toPalette_style_animateElements___block_invoke;
    aBlock[3] = &unk_278784E70;
    aBlock[4] = self;
    v19 = _Block_copy(aBlock);
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __102__NTKVictoryAnalogBackgroundView_applyTransitionFraction_fromPalette_toPalette_style_animateElements___block_invoke_2;
    v92[3] = &unk_278784E98;
    v92[4] = self;
    v81 = _Block_copy(v92);
    v73 = 0.5;
    v72 = 0.0;
    v20 = 0.0579999983;
  }

  v23 = [_activeRingObjects count];
  v77 = v19;
  if (v23)
  {
    v24 = 0;
    v25 = 0x277CCA000uLL;
    v79 = v23;
    v78 = selfCopy;
    do
    {
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = v23;
      }

      [(NTKVictoryAnalogBackgroundView *)selfCopy _transitionProgressForDigitAtIndex:v26 - 1 overallProgress:fraction delayPerDigit:v20 digitTransitionLength:0.300000012];
      v28 = v27;
      if (((v28 * 2.0) + -0.5) <= 1.0)
      {
        v29 = (v28 * 2.0) + -0.5;
      }

      else
      {
        v29 = 1.0;
      }

      [(NTKVictoryAnalogBackgroundView *)selfCopy _elementScaleForTransitionProgress:v28 initialScale:1.0 middleScale:(*(v19 + 2))(v19 finalScale:v24).n128_f32[0], 1.0];
      v31 = v30;
      v32 = [_activeRingObjects objectAtIndex:v24];
      v33 = [*(v25 + 2992) numberWithUnsignedInteger:v24];
      v87 = [v84 dotMarkerColorAtIndex:v33];

      v34 = [*(v25 + 2992) numberWithUnsignedInteger:v24];
      v86 = [v85 dotMarkerColorAtIndex:v34];

      if (styleCopy == 3)
      {
        [(NTKVictoryAnalogBackgroundView *)selfCopy digitForLargeNumberAtIndex:v24];
      }

      else
      {
        [*(v25 + 2992) numberWithUnsignedInteger:v24];
      }
      v35 = ;
      v36 = fmaxf(v29, 0.0);
      v37 = [v84 numberColorAtIndex:v35];
      v38 = [v85 numberColorAtIndex:v35];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v40 = v32;
      if (isKindOfClass)
      {
        if (elementsCopy)
        {
          CATransform3DMakeScale(&v91, v31, v31, v31);
          [v40 setTransform:&v91];
        }

        v41 = v81[2](v81, v24);
        if (v41)
        {
          v42 = v87;
        }

        else
        {
          v42 = v37;
        }

        if (v41)
        {
          v43 = v86;
        }

        else
        {
          v43 = v38;
        }

        [v40 setContentsMultiplyColor:{-[NTKVictoryAnalogBackgroundView _layerTransitionColorFromColor:toColor:amount:](selfCopy, "_layerTransitionColorFromColor:toColor:amount:", v42, v43, v36)}];
        if (styleCopy <= 2)
        {
          CLKInterpolateBetweenFloatsClipped();
          *&v44 = v44;
          [v40 setOpacity:v44];
        }
      }

      else
      {
        if (elementsCopy)
        {
          CGAffineTransformMakeScale(&v90, v31, v31);
          *&v91.m11 = *&v90.a;
          *&v91.m13 = *&v90.c;
          *&v91.m21 = *&v90.tx;
          [v40 setTransform:&v91];
        }

        v45 = v81[2](v81, v24);
        if (styleCopy != 3 || v24)
        {
          if (v45)
          {
            v59 = v87;
          }

          else
          {
            v59 = v37;
          }

          if (v45)
          {
            v60 = v86;
          }

          else
          {
            v60 = v38;
          }

          v61 = [MEMORY[0x277D75348] colorWithCGColor:{-[NTKVictoryAnalogBackgroundView _layerTransitionColorFromColor:toColor:amount:](selfCopy, "_layerTransitionColorFromColor:toColor:amount:", v59, v60, v36)}];
          [v40 setFillColor:v61];

          v19 = v77;
          if (styleCopy <= 2)
          {
            CLKInterpolateBetweenFloatsClipped();
            [v40 setAlpha:?];
          }
        }

        else
        {
          v46 = [(NTKVictoryAnalogBackgroundView *)selfCopy digitForLargeNumberAtIndex:0];
          v47 = [v84 numberColorAtIndex:v46];

          v48 = MEMORY[0x277CCABB0];
          v49 = [(NTKVictoryAnalogBackgroundView *)selfCopy digitForLargeNumberAtIndex:0];
          v50 = [v48 numberWithInteger:{objc_msgSend(v49, "integerValue") + 1}];
          v76 = [v84 numberColorAtIndex:v50];

          v51 = [(NTKVictoryAnalogBackgroundView *)v78 digitForLargeNumberAtIndex:0];
          v52 = [v85 numberColorAtIndex:v51];

          v53 = MEMORY[0x277CCABB0];
          v54 = [(NTKVictoryAnalogBackgroundView *)v78 digitForLargeNumberAtIndex:0];
          v55 = [v53 numberWithInteger:{objc_msgSend(v54, "integerValue") + 1}];
          v56 = [v85 numberColorAtIndex:v55];

          v57 = NTKInterpolateBetweenColors();
          v58 = NTKInterpolateBetweenColors();
          [v40 setFillColor:v57 inRange:{0, 1}];
          [v40 setFillColor:v58 inRange:{1, 1}];

          selfCopy = v78;
          v19 = v77;
        }
      }

      ++v24;
      v23 = v79;
      v25 = 0x277CCA000;
    }

    while (v79 != v24);
  }

  v62 = (fraction - v73) / 0.150000006;
  if (v62 > 1.0)
  {
    v62 = 1.0;
  }

  v63 = fmax(v62, 0.0);
  if (elementsCopy)
  {
    v64 = v63 + v63;
    if (v63 >= 0.5)
    {
      v64 = 1.0 - ((v63 + -0.5) + (v63 + -0.5));
    }

    v65 = (v72 * v64) + 1.0;
    CATransform3DMakeScale(&v89, v65, v65, v65);
    logoButton = selfCopy->_logoButton;
    v91 = v89;
    [(NTKVictoryLogoButton *)logoButton setTransform3D:&v91];
    CATransform3DMakeScale(&v88, v65, v65, v65);
    smallLogoButton = selfCopy->_smallLogoButton;
    v91 = v88;
    [(NTKVictoryLogoButton *)smallLogoButton setTransform3D:&v91];
  }

  logo = [v84 logo];
  logo2 = [v85 logo];
  v70 = NTKInterpolateBetweenColors();
  [(NTKVictoryLogoButton *)selfCopy->_logoButton setTintColor:v70];

  v71 = NTKInterpolateBetweenColors();
  [(NTKVictoryLogoButton *)selfCopy->_smallLogoButton setTintColor:v71];
}

float __102__NTKVictoryAnalogBackgroundView_applyTransitionFraction_fromPalette_toPalette_style_animateElements___block_invoke(uint64_t a1, uint64_t a2)
{
  result = 1.45;
  if (!*(*(a1 + 32) + 440 + a2))
  {
    return 2.5;
  }

  return result;
}

- (CGColor)_layerTransitionColorFromColor:(id)color toColor:(id)toColor amount:(double)amount
{
  colorCopy = color;
  toColorCopy = toColor;
  if (CLKFloatEqualsFloat())
  {
    v8 = colorCopy;
  }

  else
  {
    if (!CLKFloatEqualsFloat())
    {
      v10 = NTKInterpolateBetweenColors();
      cGColor = [v10 CGColor];

      goto LABEL_7;
    }

    v8 = toColorCopy;
  }

  cGColor = [v8 CGColor];
LABEL_7:

  return cGColor;
}

- (double)_transitionProgressForDigitAtIndex:(unint64_t)index overallProgress:(double)progress delayPerDigit:(double)digit digitTransitionLength:(double)length
{
  v6 = (progress - digit * index) / length;
  if (v6 > 1.0)
  {
    v6 = 1.0;
  }

  return fmax(v6, 0.0);
}

- (double)_elementScaleForTransitionProgress:(double)progress initialScale:(double)scale middleScale:(double)middleScale finalScale:(double)finalScale
{
  if (progress >= 0.5)
  {
    v6 = 1.0 - (progress + -0.5 + progress + -0.5);
  }

  else
  {
    v6 = progress + progress;
  }

  *&v6 = v6;
  [(CAMediaTimingFunction *)self->_transitionTimingFunction _solveForInput:v6];

  CLKInterpolateBetweenFloatsClipped();
  return result;
}

- (void)willBeginEditing
{
  [(NTKVictoryAnalogBackgroundView *)self _createRingLayersIfNeeded];
  if (![(NTKVictoryAnalogBackgroundView *)self isCircularDial])
  {
    [(NTKVictoryAnalogBackgroundView *)self _createLargeHourMarkerLabelsAndAttachToViewIfNeeded];
  }

  if (!self->_transitionTimingFunction)
  {
    LODWORD(v3) = 1051260355;
    LODWORD(v4) = 1059648963;
    LODWORD(v5) = 1.0;
    v6 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v3 :0.0 :v4 :v5];
    transitionTimingFunction = self->_transitionTimingFunction;
    self->_transitionTimingFunction = v6;
  }

  [(NTKVictoryAnalogBackgroundView *)self _clearTransitionStateForStyle:self->_style palette:self->_palette];

  [(NTKVictoryAnalogBackgroundView *)self setNeedsLayout];
}

- (void)_setRingLayerAtIndex:(unint64_t)index isDigit:(BOOL)digit
{
  digitCopy = digit;
  self->_ringLayerIsDigit[index] = digit;
  v11 = [(NSMutableArray *)self->_ringLayers objectAtIndex:?];
  _dotImage = [(NTKVictoryAnalogBackgroundView *)self _dotImage];
  [v11 setContents:{objc_msgSend(_dotImage, "CGImage")}];
  v7 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  [_dotImage size];
  [v11 setBounds:{v7, v8, v9, v10}];
  [v11 setHidden:digitCopy];
}

- (void)_createRingLayersIfNeeded
{
  v29 = *MEMORY[0x277D85DE8];
  if (!self->_ringLayers)
  {
    v3 = [(NTKVictoryAnalogBackgroundView *)self _createAndAddLayersWithCount:12];
    ringLayers = self->_ringLayers;
    self->_ringLayers = v3;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = self->_ringLayers;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v23 + 1) + 8 * i) setOpaque:1];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v7);
    }

    [(NTKVictoryAnalogBackgroundView *)self _applyPalette:self->_palette forStyle:self->_style];
  }

  if (!self->_smallHourMarkerLabelsByIndex)
  {
    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:8];
    smallHourMarkerLabelsByIndex = self->_smallHourMarkerLabelsByIndex;
    self->_smallHourMarkerLabelsByIndex = v10;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [&unk_28418B488 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(&unk_28418B488);
          }

          v16 = *(*(&v19 + 1) + 8 * j);
          v17 = [(NTKVictoryAnalogBackgroundView *)self _createSmallHourMarkerLabelForIndex:v16];
          stringValue = [v16 stringValue];
          [v17 setText:stringValue];

          [v17 sizeToFit];
          [(NSMutableDictionary *)self->_smallHourMarkerLabelsByIndex setObject:v17 forKeyedSubscript:v16];
        }

        v13 = [&unk_28418B488 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v13);
    }
  }
}

- (unint64_t)_digitForIndex:(unint64_t)index
{
  v3 = 12;
  if (index)
  {
    v3 = 0;
  }

  return v3 + 3 * index;
}

- (void)_createMediumNumberLayersIfNeededAndAttachToViewIfNeeded
{
  mediumNumberLayers = self->_mediumNumberLayers;
  if (!mediumNumberLayers)
  {
    ___LayoutConstants_block_invoke_53(self->_device, v9);
    v4 = [(NTKVictoryAnalogBackgroundView *)self _createHourMarkerLabelsWithFontSize:v9[26]];
    v5 = self->_mediumNumberLayers;
    self->_mediumNumberLayers = v4;

    [(NTKVictoryAnalogBackgroundView *)self _applyPalette:self->_palette forStyle:self->_style];
    mediumNumberLayers = self->_mediumNumberLayers;
  }

  if ([(NSArray *)mediumNumberLayers count])
  {
    v6 = 0;
    do
    {
      v7 = [(NSArray *)self->_mediumNumberLayers objectAtIndex:v6];
      superview = [v7 superview];

      if (superview)
      {
        [v7 removeFromSuperview];
      }

      [(UIView *)self->_contentView addSubview:v7];

      ++v6;
    }

    while (v6 < [(NSArray *)self->_mediumNumberLayers count]);
  }
}

- (void)_createLargeHourMarkerLabelsAndAttachToViewIfNeeded
{
  largeHourMarkerLabels = self->_largeHourMarkerLabels;
  if (!largeHourMarkerLabels)
  {
    memset(v11, 0, sizeof(v11));
    memset(v10, 0, sizeof(v10));
    ___LayoutConstants_block_invoke_53(self->_device, v10);
    if (self->_style <= 4)
    {
      v4 = v11;
    }

    else
    {
      v4 = v11 + 1;
    }

    v5 = [(NTKVictoryAnalogBackgroundView *)self _createHourMarkerLabelsWithFontSize:*v4];
    v6 = self->_largeHourMarkerLabels;
    self->_largeHourMarkerLabels = v5;

    [(NTKVictoryAnalogBackgroundView *)self _applyPalette:self->_palette forStyle:self->_style];
    largeHourMarkerLabels = self->_largeHourMarkerLabels;
  }

  if ([(NSArray *)largeHourMarkerLabels count])
  {
    v7 = 0;
    do
    {
      v8 = [(NSArray *)self->_largeHourMarkerLabels objectAtIndex:v7];
      superview = [v8 superview];

      if (superview)
      {
        [v8 removeFromSuperview];
      }

      [(UIView *)self->_contentView addSubview:v8];

      ++v7;
    }

    while (v7 < [(NSArray *)self->_largeHourMarkerLabels count]);
  }
}

- (id)_createHourMarkerLabelsWithFontSize:(double)size
{
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  for (i = 0; i != 4; ++i)
  {
    v7 = objc_alloc_init(NTKVictoryLabel);
    [(NTKVictoryLabel *)v7 setAdditionalPaddingInsets:5.0];
    [(NTKVictoryLabel *)v7 setTextAlignment:1];
    v8 = [NTKVictoryLabel victoryFontWithSize:0 style:size];
    [(CLKUIColoringLabel *)v7 setFont:v8];

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NTKVictoryAnalogBackgroundView _digitForIndex:](self, "_digitForIndex:", i)}];
    stringValue = [v9 stringValue];
    [(NTKVictoryLabel *)v7 setText:stringValue];

    [(NTKVictoryLabel *)v7 sizeToFit];
    [v5 addObject:v7];
  }

  return v5;
}

- (id)_createSmallHourMarkerLabelForIndex:(id)index
{
  indexCopy = index;
  v5 = objc_alloc_init(NTKVictoryLabel);
  [(NTKVictoryLabel *)v5 setAdditionalPaddingInsets:10.0];
  [(NTKVictoryLabel *)v5 setTextAlignment:1];
  ___LayoutConstants_block_invoke_53(self->_device, v9);
  v6 = [NTKVictoryLabel victoryFontWithSize:0 style:v9[27]];
  [(CLKUIColoringLabel *)v5 setFont:v6];

  stringValue = [indexCopy stringValue];

  [(NTKVictoryLabel *)v5 setText:stringValue];
  [(NTKVictoryLabel *)v5 sizeToFit];

  return v5;
}

- (id)_createAndAddLayersWithCount:(unint64_t)count
{
  array = [MEMORY[0x277CBEB18] array];
  _disabledLayerActions = [objc_opt_class() _disabledLayerActions];
  if (count)
  {
    v7 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v9 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *(MEMORY[0x277CBF3A0] + 24);
    do
    {
      layer = [MEMORY[0x277CD9ED0] layer];
      [layer setActions:_disabledLayerActions];
      [layer setBounds:{v7, v8, v9, v10}];
      layer2 = [(UIView *)self->_contentView layer];
      [layer2 addSublayer:layer];

      [array addObject:layer];
      --count;
    }

    while (count);
  }

  return array;
}

- (UIImage)logoImage
{
  logoImage = self->_logoImage;
  if (!logoImage)
  {
    NTKImageNamed(@"victoryNTK-fullscreen-logo");
  }

  v3 = logoImage;

  return v3;
}

- (id)_dotImage
{
  dotImage = self->_dotImage;
  if (!dotImage)
  {
    ___LayoutConstants_block_invoke_53(self->_device, v12);
    v4 = v12[0];
    [(CLKDevice *)self->_device screenScale];
    v6 = v5 + v5;
    v14.width = v4;
    v14.height = v4;
    UIGraphicsBeginImageContextWithOptions(v14, 0, v6);
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [whiteColor setFill];

    v8 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{0.0, 0.0, v4, v4}];
    [v8 fill];

    v9 = UIGraphicsGetImageFromCurrentImageContext();
    v10 = self->_dotImage;
    self->_dotImage = v9;

    UIGraphicsEndImageContext();
    dotImage = self->_dotImage;
  }

  return dotImage;
}

+ (id)_disabledLayerActions
{
  v6[7] = *MEMORY[0x277D85DE8];
  null = [MEMORY[0x277CBEB68] null];
  v5[0] = @"contents";
  v5[1] = @"contentsMultiplyColor";
  v6[0] = null;
  v6[1] = null;
  v5[2] = @"transform";
  v5[3] = @"bounds";
  v6[2] = null;
  v6[3] = null;
  v5[4] = @"position";
  v5[5] = @"opacity";
  v6[4] = null;
  v6[5] = null;
  v5[6] = @"hidden";
  v6[6] = null;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:7];

  return v3;
}

- (NTKVictoryAnalogBackgroundViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end