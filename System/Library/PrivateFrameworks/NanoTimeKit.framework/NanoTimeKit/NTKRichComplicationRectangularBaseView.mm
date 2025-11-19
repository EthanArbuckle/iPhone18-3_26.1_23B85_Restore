@interface NTKRichComplicationRectangularBaseView
+ (id)viewWithLegacyComplicationType:(unint64_t)a3;
+ (void)updateCustomDataAnimationFromEarlierView:(id)a3 laterView:(id)a4 isForward:(BOOL)a5 animationType:(unint64_t)a6 animationDuration:(double)a7 animationFraction:(float)a8;
- (NTKRichComplicationRectangularBaseView)init;
- (NTKRichComplicationRectangularBaseView)initWithFamily:(int64_t)a3;
- (NTKRichComplicationRectangularBaseViewDelegate)delegate;
- (double)contentMargin;
- (id)_createAndAddColoringLabelWithFontSize:(double)a3 weight:(double)a4 usesTextProviderTintColoring:(BOOL)a5;
- (void)_transitToHighlightState:(BOOL)a3 fraction:(double)a4;
@end

@implementation NTKRichComplicationRectangularBaseView

- (NTKRichComplicationRectangularBaseView)init
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationRectangularBaseView;
  return [(CDRichComplicationView *)&v3 initWithFamily:11];
}

- (NTKRichComplicationRectangularBaseView)initWithFamily:(int64_t)a3
{
  if (a3 == 11)
  {
    self = [(NTKRichComplicationRectangularBaseView *)self init];
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)viewWithLegacyComplicationType:(unint64_t)a3
{
  if (a3)
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

+ (void)updateCustomDataAnimationFromEarlierView:(id)a3 laterView:(id)a4 isForward:(BOOL)a5 animationType:(unint64_t)a6 animationDuration:(double)a7 animationFraction:(float)a8
{
  v9 = a5;
  v11 = a3;
  v12 = a4;
  memset(&v28, 0, sizeof(v28));
  if (a6 == 1)
  {
    v16 = *(MEMORY[0x277CBF2C0] + 16);
    *&v28.a = *MEMORY[0x277CBF2C0];
    *&v28.c = v16;
    *&v28.tx = *(MEMORY[0x277CBF2C0] + 32);
    if (v9)
    {
LABEL_5:
      v13 = MEMORY[0x277CBF2C0];
      v14 = *(MEMORY[0x277CBF2C0] + 16);
      *&v27.a = *MEMORY[0x277CBF2C0];
      *&v27.c = v14;
      *&v27.tx = *(MEMORY[0x277CBF2C0] + 32);
      v26 = v28;
      v25 = v28;
      v15 = v12;
      goto LABEL_8;
    }
  }

  else
  {
    if (!a6)
    {
      CGAffineTransformMakeScale(&v28, 0.9, 0.9);
    }

    if (v9)
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
  v15 = v11;
LABEL_8:
  v18 = *&v13->c;
  v22 = *&v13->a;
  v23 = v18;
  v24 = *&v13->tx;
  v19 = v15;
  if (a6 == 1)
  {
    CDTemplicateComplicationShouldPerformFullFade();
  }

  CLKCompressFraction();
  CLKCompressFraction();
  CLKInterpolateBetweenFloatsClipped();
  [v11 setAlpha:?];
  CLKInterpolateBetweenTransform();
  v21[0] = v21[1];
  [v11 setTransform:v21];
  CLKInterpolateBetweenFloatsClipped();
  [v12 setAlpha:?];
  v21[0] = v26;
  CLKInterpolateBetweenTransform();
  v21[0] = v20;
  [v12 setTransform:v21];
}

- (id)_createAndAddColoringLabelWithFontSize:(double)a3 weight:(double)a4 usesTextProviderTintColoring:(BOOL)a5
{
  v5 = a5;
  v9 = objc_opt_new();
  [v9 setUsesLegibility:0];
  [v9 setAlpha:1.0];
  v10 = [MEMORY[0x277D75348] whiteColor];
  [v9 setColor:v10];

  [v9 setUsesTextProviderTintColoring:v5];
  v11 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:a3 design:a4];
  v12 = [v11 CLKFontWithAlternativePunctuation];

  [v9 setFont:v12];
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

- (void)_transitToHighlightState:(BOOL)a3 fraction:(double)a4
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