@interface NTKRichComplicationRectangularBaseView
+ (id)viewWithLegacyComplicationType:(unint64_t)type;
+ (void)updateCustomDataAnimationFromEarlierView:(id)view laterView:(id)laterView isForward:(BOOL)forward animationType:(unint64_t)type animationDuration:(double)duration animationFraction:(float)fraction;
- (NTKRichComplicationRectangularBaseView)init;
- (NTKRichComplicationRectangularBaseView)initWithFamily:(int64_t)family;
- (NTKRichComplicationRectangularBaseViewDelegate)delegate;
- (double)contentMargin;
- (id)_createAndAddColoringLabelWithFontSize:(double)size weight:(double)weight usesTextProviderTintColoring:(BOOL)coloring;
- (void)_transitToHighlightState:(BOOL)state fraction:(double)fraction;
@end

@implementation NTKRichComplicationRectangularBaseView

- (NTKRichComplicationRectangularBaseView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationRectangularBaseView;
  return [(CDRichComplicationView *)&v3 initWithFamily:11];
}

- (NTKRichComplicationRectangularBaseView)initWithFamily:(int64_t)family
{
  if (family == 11)
  {
    self = [(NTKRichComplicationRectangularBaseView *)self init];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)viewWithLegacyComplicationType:(unint64_t)type
{
  if (type)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_alloc_init(NTKRichComplicationRectangularBaseView);
  }

  return v4;
}

- (double)contentMargin
{
  [(CDRichComplicationView *)self device];
  objc_claimAutoreleasedReturnValue();
  CDGraphicLargeRectangularComplicationInset();
}

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

- (id)_createAndAddColoringLabelWithFontSize:(double)size weight:(double)weight usesTextProviderTintColoring:(BOOL)coloring
{
  coloringCopy = coloring;
  v9 = objc_opt_new();
  [v9 setUsesLegibility:0];
  [v9 setAlpha:1.0];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v9 setColor:whiteColor];

  [v9 setUsesTextProviderTintColoring:coloringCopy];
  v11 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:size design:weight];
  cLKFontWithAlternativePunctuation = [v11 CLKFontWithAlternativePunctuation];

  [v9 setFont:cLKFontWithAlternativePunctuation];
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __117__NTKRichComplicationRectangularBaseView__createAndAddColoringLabelWithFontSize_weight_usesTextProviderTintColoring___block_invoke;
  v16[3] = &unk_27877DC30;
  objc_copyWeak(&v17, &location);
  [v9 setNowProvider:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __117__NTKRichComplicationRectangularBaseView__createAndAddColoringLabelWithFontSize_weight_usesTextProviderTintColoring___block_invoke_2;
  v14[3] = &unk_27877DC58;
  objc_copyWeak(&v15, &location);
  [v9 setNeedsResizeHandler:v14];
  [v9 setFilterProvider:self];
  [(NTKRichComplicationRectangularBaseView *)self addSubview:v9];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v9;
}

id __117__NTKRichComplicationRectangularBaseView__createAndAddColoringLabelWithFontSize_weight_usesTextProviderTintColoring___block_invoke(uint64_t a1)
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

void __117__NTKRichComplicationRectangularBaseView__createAndAddColoringLabelWithFontSize_weight_usesTextProviderTintColoring___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
  v1 = [WeakRetained displayObserver];
  [v1 complicationDisplayNeedsResize:WeakRetained];
}

- (void)_transitToHighlightState:(BOOL)state fraction:(double)fraction
{
  CLKInterpolateBetweenFloatsClipped();
  CGAffineTransformMakeScale(&v7, v5, v5);
  v6 = v7;
  [(NTKRichComplicationRectangularBaseView *)self setTransform:&v6];
}

- (NTKRichComplicationRectangularBaseViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end