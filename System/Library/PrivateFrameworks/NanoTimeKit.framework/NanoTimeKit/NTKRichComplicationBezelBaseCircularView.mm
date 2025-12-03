@interface NTKRichComplicationBezelBaseCircularView
+ (void)updateCustomDataAnimationFromEarlierView:(id)view laterView:(id)laterView isForward:(BOOL)forward animationType:(unint64_t)type animationDuration:(double)duration animationFraction:(float)fraction bezelTextUpdateHandler:(id)handler;
- (CGPoint)circularViewCenter;
- (Class)_circularViewClassFromFromTemplate:(id)template;
- (NSString)description;
- (NTKRichComplicationBezelBaseCircularView)init;
- (id)_bezelTextProviderFromTemplate:(id)template;
- (id)_circularTemplateFromTemplate:(id)template;
- (void)_applyPausedUpdate;
- (void)_createBezelLabel;
- (void)_editingDidEnd;
- (void)_enumerateLabelsWithBlock:(id)block;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
- (void)_layoutBezelLabel;
- (void)_layoutCircularView;
- (void)_setEditingTransitionFraction:(double)fraction direction:(int64_t)direction position:(int64_t)position type:(int64_t)type;
- (void)_setWhistlerAnalogEditingTransitonFraction:(double)fraction direction:(int64_t)direction position:(int64_t)position;
- (void)_transitThemeFromTheme:(int64_t)theme toTheme:(int64_t)toTheme fraction:(double)fraction;
- (void)_transitToHighlightState:(BOOL)state fraction:(double)fraction;
- (void)_updateNewDataAnimationFinalAlpha:(double)alpha finalBezelLabelScale:(double)scale finalCircularViewScale:(double)viewScale animationApplierBlock:(id)block animationFraction:(float)fraction;
- (void)complicationDisplay:(id)display renderStatsWithTime:(double)time cost:(double)cost;
- (void)layoutSubviews;
- (void)setBezelLabelCircularRadius:(double)radius;
- (void)setBezelTextColor:(id)color;
- (void)setForegroundColor:(id)color;
- (void)setTimeTravelDate:(id)date animated:(BOOL)animated;
- (void)transitionToMonochromeWithFraction:(double)fraction;
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

- (void)setBezelTextColor:(id)color
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBezelBaseCircularView;
  colorCopy = color;
  [(NTKRichComplicationBezelView *)&v5 setBezelTextColor:colorCopy];
  [(CLKUICurvedColoringLabel *)self->_bezelTextLabel setColor:colorCopy, v5.receiver, v5.super_class];
}

- (void)setBezelLabelCircularRadius:(double)radius
{
  self->_bezelLabelCircularRadius = radius;
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
  device = [(CDRichComplicationView *)self device];
  ___LayoutConstants_block_invoke_26(device, v10);

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
  text = [(CLKUICurvedColoringLabel *)self->_bezelTextLabel text];
  v6 = [v3 stringWithFormat:@"%@ [%@ %@]", v4, text, self->_circularView];

  return v6;
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  templateCopy = template;
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
    timeTravelDate = [(CDRichComplicationView *)self timeTravelDate];
    if (timeTravelDate)
    {
      [(CDRichComplicationTemplateView *)self->_circularView setTimeTravelDate:timeTravelDate animated:0];
    }

    [(CDRichComplicationTemplateView *)self->_circularView setPaused:[(CDRichComplicationView *)self paused]];
    [(NTKRichComplicationBezelBaseCircularView *)self addSubview:self->_circularView];
  }

  [(CDRichComplicationTemplateView *)self->_circularView transitThemeFromTheme:self->_fromTheme toTheme:self->_toTheme fraction:self->_themeFraction];
  v10 = [(NTKRichComplicationBezelBaseCircularView *)self _circularTemplateFromTemplate:templateCopy];
  [(CDRichComplicationTemplateView *)self->_circularView setComplicationTemplate:v10 reason:reason];
  v11 = self->_circularView;
  if (self->_inMonochromeModeFraction == 1.0)
  {
    [(CDRichComplicationTemplateView *)v11 updateMonochromeColor];
  }

  else
  {
    [(CDRichComplicationTemplateView *)v11 transitionToMonochromeWithFraction:?];
  }

  v12 = [(NTKRichComplicationBezelBaseCircularView *)self _bezelTextProviderFromTemplate:templateCopy];
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
  paused = [(CDRichComplicationView *)self paused];

  [(CDRichComplicationTemplateView *)circularView setPaused:paused];
}

- (void)_setEditingTransitionFraction:(double)fraction direction:(int64_t)direction position:(int64_t)position type:(int64_t)type
{
  if (!type)
  {
    [(NTKRichComplicationBezelBaseCircularView *)self _setWhistlerAnalogEditingTransitonFraction:direction direction:position position:fraction];
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
  textProvider = [(CLKUICurvedColoringLabel *)self->_bezelTextLabel textProvider];

  if (textProvider)
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
    delegate = [(NTKRichComplicationBezelView *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate2 = [(NTKRichComplicationBezelView *)self delegate];
      [delegate2 didUpdateBezelTextForRichComplicationBezelView:self];
    }
  }
}

- (void)_layoutCircularView
{
  device = [(CDRichComplicationView *)self device];
  v4 = NTKWhistlerSubdialComplicationDiameter(device);

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

- (void)_transitThemeFromTheme:(int64_t)theme toTheme:(int64_t)toTheme fraction:(double)fraction
{
  self->_fromTheme = theme;
  self->_toTheme = toTheme;
  self->_themeFraction = fraction;
  [CDRichComplicationTemplateView transitThemeFromTheme:"transitThemeFromTheme:toTheme:fraction:" toTheme:? fraction:?];
}

- (void)_transitToHighlightState:(BOOL)state fraction:(double)fraction
{
  CLKInterpolateBetweenFloatsClipped();
  self->_newDataAnimationBezelLabelScale = v5;
  CLKInterpolateBetweenFloatsClipped();
  self->_newDataAnimationCircularScale = v6;
  [(NTKRichComplicationBezelBaseCircularView *)self _layoutCircularView];

  [(NTKRichComplicationBezelBaseCircularView *)self _layoutBezelLabel];
}

- (void)setTimeTravelDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  v7.receiver = self;
  v7.super_class = NTKRichComplicationBezelBaseCircularView;
  dateCopy = date;
  [(CDRichComplicationTemplateView *)&v7 setTimeTravelDate:dateCopy animated:animatedCopy];
  [(CDRichComplicationTemplateView *)self->_circularView setTimeTravelDate:dateCopy animated:animatedCopy, v7.receiver, v7.super_class];
}

- (void)setForegroundColor:(id)color
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBezelBaseCircularView;
  colorCopy = color;
  [(CDRichComplicationView *)&v5 setForegroundColor:colorCopy];
  [(CDRichComplicationTemplateView *)self->_circularView setForegroundColor:colorCopy, v5.receiver, v5.super_class];
}

- (id)_bezelTextProviderFromTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textProvider = [templateCopy textProvider];
  }

  else
  {
    textProvider = 0;
  }

  return textProvider;
}

- (id)_circularTemplateFromTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    circularTemplate = [templateCopy circularTemplate];
  }

  else
  {
    circularTemplate = templateCopy;
  }

  v5 = circularTemplate;

  return v5;
}

- (void)_enumerateLabelsWithBlock:(id)block
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBezelBaseCircularView;
  blockCopy = block;
  [(CDRichComplicationView *)&v5 _enumerateLabelsWithBlock:blockCopy];
  blockCopy[2](blockCopy, self->_bezelTextLabel);
  [(CDRichComplicationTemplateView *)self->_circularView _enumerateLabelsWithBlock:blockCopy, v5.receiver, v5.super_class];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  self->_inMonochromeModeFraction = fraction;
  filterProvider = [(CDRichComplicationView *)self filterProvider];
  v7 = [filterProvider filtersForView:self style:1 fraction:fraction];

  if (v7)
  {
    layer = [(CLKUICurvedColoringLabel *)self->_bezelTextLabel layer];
    [layer setFilters:v7];
  }

  [(CDRichComplicationTemplateView *)self->_circularView transitionToMonochromeWithFraction:fraction];
}

- (void)updateMonochromeColor
{
  self->_inMonochromeModeFraction = 1.0;
  filterProvider = [(CDRichComplicationView *)self filterProvider];
  v5 = [filterProvider filtersForView:self style:1];

  if (v5)
  {
    layer = [(CLKUICurvedColoringLabel *)self->_bezelTextLabel layer];
    [layer setFilters:v5];
  }

  [(CDRichComplicationTemplateView *)self->_circularView updateMonochromeColor];
}

- (void)complicationDisplay:(id)display renderStatsWithTime:(double)time cost:(double)cost
{
  displayObserver = [(CDRichComplicationView *)self displayObserver];
  [displayObserver complicationDisplay:self renderStatsWithTime:time cost:cost];
}

- (void)_createBezelLabel
{
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  device = [(CDRichComplicationView *)self device];
  ___LayoutConstants_block_invoke_26(device, &v17);

  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:*(&v17 + 1) design:*MEMORY[0x277D74410]];
  cLKFontWithAlternativePunctuation = [v5 CLKFontWithAlternativePunctuation];

  [v4 setFont:cLKFontWithAlternativePunctuation];
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
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = [currentLocale objectForKey:*MEMORY[0x277CBE6C8]];

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

- (void)_setWhistlerAnalogEditingTransitonFraction:(double)fraction direction:(int64_t)direction position:(int64_t)position
{
  if (position <= 1)
  {
    CLKCompressFraction();
  }

  v7 = [(CDRichComplicationView *)self device:direction];
  ___LayoutConstants_block_invoke_26(v7, &v10);

  CLKInterpolateBetweenFloatsClipped();
  if (position == 1)
  {
    v8 = -v8;
  }

  self->_bezelTextLabelRotationInDegree = v8;
  CLKInterpolateBetweenFloatsClipped();
  if (position == 1)
  {
    v9 = -v9;
  }

  self->_circularViewRotationInDegree = v9;

  [(NTKRichComplicationBezelBaseCircularView *)self setNeedsLayout];
}

- (void)_updateNewDataAnimationFinalAlpha:(double)alpha finalBezelLabelScale:(double)scale finalCircularViewScale:(double)viewScale animationApplierBlock:(id)block animationFraction:(float)fraction
{
  blockCopy = block;
  [(NTKRichComplicationBezelBaseCircularView *)self alpha];
  fractionCopy = fraction;
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
  v14 = blockCopy;
  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, fractionCopy);
    v14 = blockCopy;
  }
}

+ (void)updateCustomDataAnimationFromEarlierView:(id)view laterView:(id)laterView isForward:(BOOL)forward animationType:(unint64_t)type animationDuration:(double)duration animationFraction:(float)fraction bezelTextUpdateHandler:(id)handler
{
  forwardCopy = forward;
  viewCopy = view;
  laterViewCopy = laterView;
  handlerCopy = handler;
  if (forwardCopy)
  {
    v17 = viewCopy;
  }

  else
  {
    v17 = laterViewCopy;
  }

  if (forwardCopy)
  {
    v18 = laterViewCopy;
  }

  else
  {
    v18 = viewCopy;
  }

  v19 = v17;
  v20 = v18;
  [v19 setAlpha:1.0];
  [v20 setAlpha:0.0];
  if (type)
  {
    if (type != 1)
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
  [viewCopy setNeedsLayout];
  [viewCopy layoutIfNeeded];
  [laterViewCopy setNeedsLayout];
  [laterViewCopy layoutIfNeeded];
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
  v42 = handlerCopy;
  v27 = v19;
  v40 = v27;
  v28 = v20;
  v41 = v28;
  v29 = handlerCopy;
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
  if (fraction >= 1.0)
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

- (Class)_circularViewClassFromFromTemplate:(id)template
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end