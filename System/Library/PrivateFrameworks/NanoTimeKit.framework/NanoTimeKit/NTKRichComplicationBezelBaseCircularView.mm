@interface NTKRichComplicationBezelBaseCircularView
+ (void)updateCustomDataAnimationFromEarlierView:(id)a3 laterView:(id)a4 isForward:(BOOL)a5 animationType:(unint64_t)a6 animationDuration:(double)a7 animationFraction:(float)a8 bezelTextUpdateHandler:(id)a9;
- (CGPoint)circularViewCenter;
- (Class)_circularViewClassFromFromTemplate:(id)a3;
- (NSString)description;
- (NTKRichComplicationBezelBaseCircularView)init;
- (id)_bezelTextProviderFromTemplate:(id)a3;
- (id)_circularTemplateFromTemplate:(id)a3;
- (void)_applyPausedUpdate;
- (void)_createBezelLabel;
- (void)_editingDidEnd;
- (void)_enumerateLabelsWithBlock:(id)a3;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)_layoutBezelLabel;
- (void)_layoutCircularView;
- (void)_setEditingTransitionFraction:(double)a3 direction:(int64_t)a4 position:(int64_t)a5 type:(int64_t)a6;
- (void)_setWhistlerAnalogEditingTransitonFraction:(double)a3 direction:(int64_t)a4 position:(int64_t)a5;
- (void)_transitThemeFromTheme:(int64_t)a3 toTheme:(int64_t)a4 fraction:(double)a5;
- (void)_transitToHighlightState:(BOOL)a3 fraction:(double)a4;
- (void)_updateNewDataAnimationFinalAlpha:(double)a3 finalBezelLabelScale:(double)a4 finalCircularViewScale:(double)a5 animationApplierBlock:(id)a6 animationFraction:(float)a7;
- (void)complicationDisplay:(id)a3 renderStatsWithTime:(double)a4 cost:(double)a5;
- (void)layoutSubviews;
- (void)setBezelLabelCircularRadius:(double)a3;
- (void)setBezelTextColor:(id)a3;
- (void)setForegroundColor:(id)a3;
- (void)setTimeTravelDate:(id)a3 animated:(BOOL)a4;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationBezelBaseCircularView

- (NTKRichComplicationBezelBaseCircularView)init
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBezelBaseCircularView;
  v2 = [(NTKRichComplicationBezelView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NTKRichComplicationBezelBaseCircularView *)v2 _createBezelLabel];
    v3->_newDataAnimationCircularScale = 1.0;
    v3->_newDataAnimationBezelLabelScale = 1.0;
    v3->_allowNofityingDelegateWithBezelTextUpdate = 1;
    v3->_allowUpdatingBezelTextProperties = 1;
  }

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKRichComplicationBezelBaseCircularView;
  [(NTKRichComplicationBezelBaseCircularView *)&v4 layoutSubviews];
  [(NTKRichComplicationBezelBaseCircularView *)self _layoutCircularView];
  [(NTKRichComplicationBezelBaseCircularView *)self _layoutBezelLabel];
  if ([(CLKUICurvedColoringLabel *)self->_bezelTextLabel isHidden])
  {
    [(CDRichComplicationTemplateView *)self->_circularView frame];
    v3 = 0;
  }

  else
  {
    [(NTKRichComplicationBezelBaseCircularView *)self bounds];
    v3 = 2;
  }

  [(NTKRichComplicationBezelView *)self _updateHitTestShape:v3 frame:?];
}

- (void)setBezelTextColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBezelBaseCircularView;
  v4 = a3;
  [(NTKRichComplicationBezelView *)&v5 setBezelTextColor:v4];
  [(CLKUICurvedColoringLabel *)self->_bezelTextLabel setColor:v4, v5.receiver, v5.super_class];
}

- (void)setBezelLabelCircularRadius:(double)a3
{
  self->_bezelLabelCircularRadius = a3;
  [(CLKUICurvedColoringLabel *)self->_bezelTextLabel setCircleRadius:?];

  [(NTKRichComplicationBezelBaseCircularView *)self setNeedsLayout];
}

- (CGPoint)circularViewCenter
{
  [(NTKRichComplicationBezelBaseCircularView *)self bounds];
  v4 = v3;
  v6 = v5;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v7 = [(CDRichComplicationView *)self device];
  ___LayoutConstants_block_invoke_26(v7, v10);

  v8 = v4 * 0.5;
  v9 = v6 * 0.5 - *v10;
  result.y = v9;
  result.x = v8;
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NTKRichComplicationBezelBaseCircularView;
  v4 = [(NTKRichComplicationBezelBaseCircularView *)&v8 description];
  v5 = [(CLKUICurvedColoringLabel *)self->_bezelTextLabel text];
  v6 = [v3 stringWithFormat:@"%@ [%@ %@]", v4, v5, self->_circularView];

  return v6;
}

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  v16 = a3;
  v6 = [(NTKRichComplicationBezelBaseCircularView *)self _circularViewClassFromFromTemplate:?];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(CDRichComplicationTemplateView *)self->_circularView removeFromSuperview];
    [(CDRichComplicationTemplateView *)self->_circularView setDisplayObserver:0];
    v7 = objc_alloc_init(v6);
    circularView = self->_circularView;
    self->_circularView = v7;

    [(CDRichComplicationTemplateView *)self->_circularView setFilterProvider:self];
    [(CDRichComplicationTemplateView *)self->_circularView setDisplayObserver:self];
    v9 = [(CDRichComplicationView *)self timeTravelDate];
    if (v9)
    {
      [(CDRichComplicationTemplateView *)self->_circularView setTimeTravelDate:v9 animated:0];
    }

    [(CDRichComplicationTemplateView *)self->_circularView setPaused:[(CDRichComplicationView *)self paused]];
    [(NTKRichComplicationBezelBaseCircularView *)self addSubview:self->_circularView];
  }

  [(CDRichComplicationTemplateView *)self->_circularView transitThemeFromTheme:self->_fromTheme toTheme:self->_toTheme fraction:self->_themeFraction];
  v10 = [(NTKRichComplicationBezelBaseCircularView *)self _circularTemplateFromTemplate:v16];
  [(CDRichComplicationTemplateView *)self->_circularView setComplicationTemplate:v10 reason:a4];
  v11 = self->_circularView;
  if (self->_inMonochromeModeFraction == 1.0)
  {
    [(CDRichComplicationTemplateView *)v11 updateMonochromeColor];
  }

  else
  {
    [(CDRichComplicationTemplateView *)v11 transitionToMonochromeWithFraction:?];
  }

  v12 = [(NTKRichComplicationBezelBaseCircularView *)self _bezelTextProviderFromTemplate:v16];
  bezelTextLabel = self->_bezelTextLabel;
  if (v12)
  {
    [(CLKUICurvedColoringLabel *)bezelTextLabel setHidden:0];
    v14 = self->_bezelTextLabel;
    v15 = v12;
  }

  else
  {
    [(CLKUICurvedColoringLabel *)bezelTextLabel setHidden:1];
    v14 = self->_bezelTextLabel;
    v15 = 0;
  }

  [(CLKUICurvedColoringLabel *)v14 setTextProvider:v15];
  [(NTKRichComplicationBezelBaseCircularView *)self setNeedsLayout];
}

- (void)_applyPausedUpdate
{
  circularView = self->_circularView;
  v3 = [(CDRichComplicationView *)self paused];

  [(CDRichComplicationTemplateView *)circularView setPaused:v3];
}

- (void)_setEditingTransitionFraction:(double)a3 direction:(int64_t)a4 position:(int64_t)a5 type:(int64_t)a6
{
  if (!a6)
  {
    [(NTKRichComplicationBezelBaseCircularView *)self _setWhistlerAnalogEditingTransitonFraction:a4 direction:a5 position:a3];
  }
}

- (void)_editingDidEnd
{
  self->_bezelTextLabelRotationInDegree = 0.0;
  self->_circularViewRotationInDegree = 0.0;
  [(CDRichComplicationTemplateView *)self->_circularView _editingDidEnd];
}

- (void)_layoutBezelLabel
{
  v3 = [(CLKUICurvedColoringLabel *)self->_bezelTextLabel textProvider];

  if (v3)
  {
    v17 = 0.0;
    v18 = 0.0;
    v16 = *MEMORY[0x277CBF348];
    bezelTextLabel = self->_bezelTextLabel;
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    v15[0] = *MEMORY[0x277CBF2C0];
    v15[1] = v5;
    v15[2] = *(MEMORY[0x277CBF2C0] + 32);
    [(CLKUICurvedColoringLabel *)bezelTextLabel setTransform:v15];
    [(CLKUICurvedColoringLabel *)self->_bezelTextLabel sizeToFit];
    [(CLKUICurvedColoringLabel *)self->_bezelTextLabel getTextCenter:&v16 startAngle:&v18 endAngle:&v17];
    v6 = MEMORY[0x2318D8E70]([(NTKRichComplicationBezelBaseCircularView *)self bounds]);
    [(NTKRichComplicationBezelView *)self _setLayoutTransformToView:self->_bezelTextLabel origin:v6 - *&v16 rotationInDegree:v7 - *(&v16 + 1) centerScale:self->_bezelTextLabelRotationInDegree, self->_newDataAnimationBezelLabelScale];
    v8 = fabs(v18);
    v9 = fabs(v17);
    if (v8 >= v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    if (v8 >= v9)
    {
      v8 = v9;
    }

    v11 = v10 - v8;
  }

  else
  {
    v11 = 0.0;
  }

  if (self->_allowUpdatingBezelTextProperties)
  {
    [(NTKRichComplicationBezelView *)self setBezelTextWidthInRadius:v11];
  }

  if (self->_allowNofityingDelegateWithBezelTextUpdate)
  {
    v12 = [(NTKRichComplicationBezelView *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(NTKRichComplicationBezelView *)self delegate];
      [v14 didUpdateBezelTextForRichComplicationBezelView:self];
    }
  }
}

- (void)_layoutCircularView
{
  v3 = [(CDRichComplicationView *)self device];
  v4 = NTKWhistlerSubdialComplicationDiameter(v3);

  circularView = self->_circularView;
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&v12.a = *MEMORY[0x277CBF2C0];
  *&v12.c = v6;
  *&v12.tx = *(MEMORY[0x277CBF2C0] + 32);
  [(CDRichComplicationTemplateView *)circularView setTransform:&v12];
  [(CDRichComplicationTemplateView *)self->_circularView setFrame:0.0, 0.0, v4, v4];
  [(NTKRichComplicationBezelBaseCircularView *)self circularViewCenter];
  [(NTKRichComplicationBezelView *)self _setLayoutTransformToView:self->_circularView origin:v7 - v4 * 0.5 rotationInDegree:v8 - v4 * 0.5 centerScale:self->_circularViewRotationInDegree, 1.0];
  v9 = self->_circularView;
  if (v9)
  {
    [(CDRichComplicationTemplateView *)v9 transform];
    v10 = self->_circularView;
  }

  else
  {
    v10 = 0;
    memset(&v12, 0, sizeof(v12));
  }

  CGAffineTransformScale(&v11, &v12, self->_newDataAnimationCircularScale, self->_newDataAnimationCircularScale);
  v12 = v11;
  [(CDRichComplicationTemplateView *)v10 setTransform:&v12];
}

- (void)_transitThemeFromTheme:(int64_t)a3 toTheme:(int64_t)a4 fraction:(double)a5
{
  self->_fromTheme = a3;
  self->_toTheme = a4;
  self->_themeFraction = a5;
  [CDRichComplicationTemplateView transitThemeFromTheme:"transitThemeFromTheme:toTheme:fraction:" toTheme:? fraction:?];
}

- (void)_transitToHighlightState:(BOOL)a3 fraction:(double)a4
{
  CLKInterpolateBetweenFloatsClipped();
  self->_newDataAnimationBezelLabelScale = v5;
  CLKInterpolateBetweenFloatsClipped();
  self->_newDataAnimationCircularScale = v6;
  [(NTKRichComplicationBezelBaseCircularView *)self _layoutCircularView];

  [(NTKRichComplicationBezelBaseCircularView *)self _layoutBezelLabel];
}

- (void)setTimeTravelDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7.receiver = self;
  v7.super_class = NTKRichComplicationBezelBaseCircularView;
  v6 = a3;
  [(CDRichComplicationTemplateView *)&v7 setTimeTravelDate:v6 animated:v4];
  [(CDRichComplicationTemplateView *)self->_circularView setTimeTravelDate:v6 animated:v4, v7.receiver, v7.super_class];
}

- (void)setForegroundColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBezelBaseCircularView;
  v4 = a3;
  [(CDRichComplicationView *)&v5 setForegroundColor:v4];
  [(CDRichComplicationTemplateView *)self->_circularView setForegroundColor:v4, v5.receiver, v5.super_class];
}

- (id)_bezelTextProviderFromTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 textProvider];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_circularTemplateFromTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 circularTemplate];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (void)_enumerateLabelsWithBlock:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBezelBaseCircularView;
  v4 = a3;
  [(CDRichComplicationView *)&v5 _enumerateLabelsWithBlock:v4];
  v4[2](v4, self->_bezelTextLabel);
  [(CDRichComplicationTemplateView *)self->_circularView _enumerateLabelsWithBlock:v4, v5.receiver, v5.super_class];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  self->_inMonochromeModeFraction = a3;
  v5 = [(CDRichComplicationView *)self filterProvider];
  v7 = [v5 filtersForView:self style:1 fraction:a3];

  if (v7)
  {
    v6 = [(CLKUICurvedColoringLabel *)self->_bezelTextLabel layer];
    [v6 setFilters:v7];
  }

  [(CDRichComplicationTemplateView *)self->_circularView transitionToMonochromeWithFraction:a3];
}

- (void)updateMonochromeColor
{
  self->_inMonochromeModeFraction = 1.0;
  v3 = [(CDRichComplicationView *)self filterProvider];
  v5 = [v3 filtersForView:self style:1];

  if (v5)
  {
    v4 = [(CLKUICurvedColoringLabel *)self->_bezelTextLabel layer];
    [v4 setFilters:v5];
  }

  [(CDRichComplicationTemplateView *)self->_circularView updateMonochromeColor];
}

- (void)complicationDisplay:(id)a3 renderStatsWithTime:(double)a4 cost:(double)a5
{
  v8 = [(CDRichComplicationView *)self displayObserver];
  [v8 complicationDisplay:self renderStatsWithTime:a4 cost:a5];
}

- (void)_createBezelLabel
{
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(CDRichComplicationView *)self device];
  ___LayoutConstants_block_invoke_26(v3, &v17);

  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:*(&v17 + 1) design:*MEMORY[0x277D74410]];
  v6 = [v5 CLKFontWithAlternativePunctuation];

  [v4 setFont:v6];
  [v4 setUsesLegibility:0];
  [v4 setUppercase:1];
  [v4 setAlpha:1.0];
  [v4 setHidden:1];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__NTKRichComplicationBezelBaseCircularView__createBezelLabel__block_invoke;
  v14[3] = &unk_27877DC30;
  objc_copyWeak(&v15, &location);
  [v4 setNowProvider:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__NTKRichComplicationBezelBaseCircularView__createBezelLabel__block_invoke_2;
  v12[3] = &unk_27877DC58;
  objc_copyWeak(&v13, &location);
  [v4 setNeedsResizeHandler:v12];
  [v4 setInterior:0];
  [v4 setCenterAngle:*&v18];
  v7 = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = [v7 objectForKey:*MEMORY[0x277CBE6C8]];

  v9 = [v8 isEqualToString:@"ar"];
  v10 = 24;
  if (v9)
  {
    v10 = 32;
  }

  [v4 setTracking:*(&v17 + v10)];
  [v4 setMaxAngularWidth:*(&v19 + 1)];
  [(NTKRichComplicationBezelBaseCircularView *)self addSubview:v4];
  bezelTextLabel = self->_bezelTextLabel;
  self->_bezelTextLabel = v4;

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

id __61__NTKRichComplicationBezelBaseCircularView__createBezelLabel__block_invoke(uint64_t a1)
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

void __61__NTKRichComplicationBezelBaseCircularView__createBezelLabel__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
  v1 = [WeakRetained displayObserver];
  [v1 complicationDisplayNeedsResize:WeakRetained];
}

- (void)_setWhistlerAnalogEditingTransitonFraction:(double)a3 direction:(int64_t)a4 position:(int64_t)a5
{
  if (a5 <= 1)
  {
    CLKCompressFraction();
  }

  v7 = [(CDRichComplicationView *)self device:a4];
  ___LayoutConstants_block_invoke_26(v7, &v10);

  CLKInterpolateBetweenFloatsClipped();
  if (a5 == 1)
  {
    v8 = -v8;
  }

  self->_bezelTextLabelRotationInDegree = v8;
  CLKInterpolateBetweenFloatsClipped();
  if (a5 == 1)
  {
    v9 = -v9;
  }

  self->_circularViewRotationInDegree = v9;

  [(NTKRichComplicationBezelBaseCircularView *)self setNeedsLayout];
}

- (void)_updateNewDataAnimationFinalAlpha:(double)a3 finalBezelLabelScale:(double)a4 finalCircularViewScale:(double)a5 animationApplierBlock:(id)a6 animationFraction:(float)a7
{
  v15 = a6;
  [(NTKRichComplicationBezelBaseCircularView *)self alpha];
  v9 = a7;
  CLKInterpolateBetweenFloatsClipped();
  v11 = v10;
  [(NTKRichComplicationBezelBaseCircularView *)self setAlpha:?];
  [(NTKRichComplicationBezelView *)self setBezelTextAlpha:v11];
  CLKInterpolateBetweenFloatsClipped();
  self->_newDataAnimationCircularScale = v12;
  CLKInterpolateBetweenFloatsClipped();
  self->_newDataAnimationBezelLabelScale = v13;
  [(NTKRichComplicationBezelBaseCircularView *)self setNeedsLayout];
  [(NTKRichComplicationBezelBaseCircularView *)self layoutIfNeeded];
  v14 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15, v9);
    v14 = v15;
  }
}

+ (void)updateCustomDataAnimationFromEarlierView:(id)a3 laterView:(id)a4 isForward:(BOOL)a5 animationType:(unint64_t)a6 animationDuration:(double)a7 animationFraction:(float)a8 bezelTextUpdateHandler:(id)a9
{
  v12 = a5;
  v14 = a3;
  v15 = a4;
  v16 = a9;
  if (v12)
  {
    v17 = v14;
  }

  else
  {
    v17 = v15;
  }

  if (v12)
  {
    v18 = v15;
  }

  else
  {
    v18 = v14;
  }

  v19 = v17;
  v20 = v18;
  [v19 setAlpha:1.0];
  [v20 setAlpha:0.0];
  if (a6)
  {
    if (a6 != 1)
    {
      goto LABEL_12;
    }

    v21 = 1.0;
    v22 = 1.0;
  }

  else
  {
    v22 = 0.95;
    v21 = 0.9;
  }

  v19[85] = 0x3FF0000000000000;
  v19[86] = 0x3FF0000000000000;
  *(v20 + 85) = v21;
  *(v20 + 86) = v22;
LABEL_12:
  *(v20 + 697) = 0;
  [v14 setNeedsLayout];
  [v14 layoutIfNeeded];
  [v15 setNeedsLayout];
  [v15 layoutIfNeeded];
  [v20 bezelTextWidthInRadius];
  v24 = v23;
  [v19 bezelTextWidthInRadius];
  v26 = v25;
  if (v24 <= v25)
  {
    *(v20 + 696) = 0;
    [v19 bezelTextWidthInRadius];
    [v20 setBezelTextWidthInRadius:?];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __178__NTKRichComplicationBezelBaseCircularView_updateCustomDataAnimationFromEarlierView_laterView_isForward_animationType_animationDuration_animationFraction_bezelTextUpdateHandler___block_invoke;
  aBlock[3] = &unk_2787823E0;
  v42 = v16;
  v27 = v19;
  v40 = v27;
  v28 = v20;
  v41 = v28;
  v29 = v16;
  v30 = _Block_copy(aBlock);
  CLKCompressFraction();
  v32 = v31;
  CLKCompressFraction();
  v35 = v34;
  if (v24 > v26)
  {
    v36 = v30;
  }

  else
  {
    v36 = 0;
  }

  if (v24 > v26)
  {
    v37 = 0;
  }

  else
  {
    v37 = v30;
  }

  *&v33 = v32;
  [v27 _updateNewDataAnimationFinalAlpha:v36 finalBezelLabelScale:0.0 finalCircularViewScale:*(v28 + 86) animationApplierBlock:*(v28 + 85) animationFraction:v33];
  *(v28 + 696) = v32 >= 1.0;
  *&v38 = v35;
  [v28 _updateNewDataAnimationFinalAlpha:v37 finalBezelLabelScale:1.0 finalCircularViewScale:1.0 animationApplierBlock:1.0 animationFraction:v38];
  if (a8 >= 1.0)
  {
    *(v28 + 696) = 1;
    *(v28 + 697) = 1;
  }
}

uint64_t __178__NTKRichComplicationBezelBaseCircularView_updateCustomDataAnimationFromEarlierView_laterView_isForward_animationType_animationDuration_animationFraction_bezelTextUpdateHandler___block_invoke(uint64_t a1, double a2)
{
  v4 = *(a1 + 48);
  [*(a1 + 32) bezelTextWidthInRadius];
  v6 = v5;
  [*(a1 + 40) bezelTextWidthInRadius];
  v7.n128_u64[0] = v9.n128_u64[0];
  v8 = *(v4 + 16);
  v9.n128_u64[0] = v6;
  v10.n128_f64[0] = a2;

  return v8(v4, v9, v7, v10);
}

- (Class)_circularViewClassFromFromTemplate:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end