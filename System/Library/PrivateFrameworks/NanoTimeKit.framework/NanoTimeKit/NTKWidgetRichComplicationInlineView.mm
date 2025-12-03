@interface NTKWidgetRichComplicationInlineView
- (CGPoint)curveCenter;
- (CGRect)_frame;
- (CGSize)imageMaxSize;
- (NTKRichComplicationBezelViewDelegate)bezelTextDelegate;
- (NTKWidgetRichComplicationInlineView)initWithFamily:(int64_t)family;
- (double)bezelTextAngularWidth;
- (id)_chsFontFeatures;
- (id)_chsInlineParameters;
- (id)_chuisCurvedLabelMetrics;
- (id)_sizingFont;
- (id)_uiFontDesign;
- (unint64_t)_chsAlignment;
- (unint64_t)_chsFontDesign;
- (unint64_t)_chsGraphicAlignment;
- (unint64_t)_chuisAccessoryPlacement;
- (void)_configureWidgetHostViewController;
- (void)_updateCurveMetrics;
- (void)_updateInlineTextParameters;
- (void)curvedLabelAngularWidthChanged;
- (void)layoutSubviews;
- (void)setBezelTextColor:(id)color;
- (void)setBezelTextDelegate:(id)delegate;
- (void)setBezelTextRadius:(double)radius;
- (void)setTextAlignment:(unint64_t)alignment;
- (void)updatePropertiesAsGroupWithHandler:(id)handler;
@end

@implementation NTKWidgetRichComplicationInlineView

- (NTKWidgetRichComplicationInlineView)initWithFamily:(int64_t)family
{
  v7.receiver = self;
  v7.super_class = NTKWidgetRichComplicationInlineView;
  v3 = [(NTKWidgetRichComplicationView *)&v7 initWithFamily:family];
  if (v3)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    textColor = v3->_textColor;
    v3->_textColor = whiteColor;

    v3->_contentVerticalAlignment = 3;
  }

  return v3;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = NTKWidgetRichComplicationInlineView;
  [(NTKWidgetRichComplicationView *)&v20 layoutSubviews];
  if (fabs(self->_contentHeight) >= 0.00000011920929)
  {
    [(NTKWidgetRichComplicationInlineView *)self bounds];
    v7 = v3;
    v8 = v4;
    v9 = v5;
    contentHeight = v6;
    contentVerticalAlignment = self->_contentVerticalAlignment;
    if (contentVerticalAlignment)
    {
      if (contentVerticalAlignment == 2)
      {
        Height = CGRectGetHeight(*&v3);
        contentHeight = self->_contentHeight;
        v8 = Height - contentHeight;
      }

      else if (contentVerticalAlignment == 1)
      {
        contentHeight = self->_contentHeight;
        v8 = 0.0;
      }
    }

    else
    {
      device = [(CDRichComplicationView *)self device];
      CLKRectCenteredYInRectForDevice();
      v7 = v14;
      v8 = v15;
      v9 = v16;
      contentHeight = v17;
    }

    widgetHostViewController = [(NTKWidgetRichComplicationView *)self widgetHostViewController];
    view = [widgetHostViewController view];
    [view setFrame:{v7, v8, v9, contentHeight}];
  }

  [(NTKWidgetRichComplicationView *)self _updateTintParameters];
  [(NTKWidgetRichComplicationInlineView *)self _updateCurveMetrics];
  [(NTKWidgetRichComplicationInlineView *)self _updateInlineTextParameters];
}

- (void)setTextAlignment:(unint64_t)alignment
{
  if (self->_textAlignment != alignment)
  {
    self->_textAlignment = alignment;
    [(NTKWidgetRichComplicationInlineView *)self _updateInlineTextParameters];
  }
}

- (CGRect)_frame
{
  v19.receiver = self;
  v19.super_class = NTKWidgetRichComplicationInlineView;
  [(NTKWidgetRichComplicationView *)&v19 _frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (![(CDRichComplicationView *)self textLayoutStyle])
  {
    _sizingFont = [(NTKWidgetRichComplicationInlineView *)self _sizingFont];
    [_sizingFont lineHeight];
    device = [(CDRichComplicationView *)self device];
    ___HeightPaddingForNonCurved_block_invoke(device, device);
    device2 = [(CDRichComplicationView *)self device];
    CLKCeilForDevice();
    v10 = v14;
  }

  v15 = v4;
  v16 = v6;
  v17 = v8;
  v18 = v10;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)_configureWidgetHostViewController
{
  v4.receiver = self;
  v4.super_class = NTKWidgetRichComplicationInlineView;
  [(NTKWidgetRichComplicationView *)&v4 _configureWidgetHostViewController];
  widgetHostViewController = [(NTKWidgetRichComplicationView *)self widgetHostViewController];
  [widgetHostViewController setWatchComplicationsDelegate:self];

  [(NTKWidgetRichComplicationInlineView *)self _updateCurveMetrics];
  [(NTKWidgetRichComplicationInlineView *)self _updateInlineTextParameters];
}

- (void)_updateInlineTextParameters
{
  _chsInlineParameters = [(NTKWidgetRichComplicationInlineView *)self _chsInlineParameters];
  widgetHostViewController = [(NTKWidgetRichComplicationView *)self widgetHostViewController];
  [widgetHostViewController setInlineTextParameters:_chsInlineParameters];
}

- (void)_updateCurveMetrics
{
  _chuisCurvedLabelMetrics = [(NTKWidgetRichComplicationInlineView *)self _chuisCurvedLabelMetrics];
  widgetHostViewController = [(NTKWidgetRichComplicationView *)self widgetHostViewController];
  [widgetHostViewController setComplicationsCurvedLabelMetrics:_chuisCurvedLabelMetrics];
}

- (id)_chuisCurvedLabelMetrics
{
  if ([(CDRichComplicationView *)self textLayoutStyle])
  {
    textLayoutStyle = [(CDRichComplicationView *)self textLayoutStyle];
    v4 = objc_alloc(MEMORY[0x277CFA548]);
    if (textLayoutStyle == 1)
    {
      interior = [(NTKWidgetRichComplicationInlineView *)self interior];
      [(NTKWidgetRichComplicationInlineView *)self tracking];
      v7 = v6;
      [(NTKWidgetRichComplicationInlineView *)self curveCenter];
      v9 = v8;
      v11 = v10;
      [(NTKWidgetRichComplicationInlineView *)self curveRadius];
      v13 = v12;
      [(NTKWidgetRichComplicationInlineView *)self maxAngularWidth];
      v15 = v14;
      [(NTKWidgetRichComplicationInlineView *)self curveCenterAngle];
      v17 = v16;
      [(NTKWidgetRichComplicationInlineView *)self fontSize];
      v19 = v18;
      textColor = [(NTKWidgetRichComplicationInlineView *)self textColor];
      bSColor = [textColor BSColor];
      _chuisAccessoryPlacement = [(NTKWidgetRichComplicationInlineView *)self _chuisAccessoryPlacement];
      [(NTKWidgetRichComplicationInlineView *)self imagePadding];
      v24 = v23;
      [(NTKWidgetRichComplicationInlineView *)self imageMaxSize];
      v27 = [v4 initWithInterior:interior tracking:bSColor circleCenter:_chuisAccessoryPlacement circleRadius:v7 maximumAngularWidth:v9 centerAngle:v11 fontSize:v13 textColor:v15 accessoryPlacement:v17 accessoryPadding:v19 accessoryMaxSize:{v24, v25, v26}];
    }

    else
    {
      textColor = [(NTKWidgetRichComplicationInlineView *)self path];
      [(NTKWidgetRichComplicationInlineView *)self fontSize];
      v29 = v28;
      bSColor = [(NTKWidgetRichComplicationInlineView *)self textColor];
      v21BSColor = [bSColor BSColor];
      _chuisAccessoryPlacement2 = [(NTKWidgetRichComplicationInlineView *)self _chuisAccessoryPlacement];
      [(NTKWidgetRichComplicationInlineView *)self imagePadding];
      v33 = v32;
      [(NTKWidgetRichComplicationInlineView *)self imageMaxSize];
      v27 = [v4 initWithPath:textColor fontSize:v21BSColor textColor:_chuisAccessoryPlacement2 accessoryPlacement:v29 accessoryPadding:v33 accessoryMaxSize:{v34, v35}];
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)_chsInlineParameters
{
  v3 = objc_opt_new();
  [v3 setName:self->_fontName];
  [v3 setDesign:{-[NTKWidgetRichComplicationInlineView _chsFontDesign](self, "_chsFontDesign")}];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_fontSize];
  [v3 setSize:v4];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_fontWeight];
  [v3 setWeight:v5];

  _chsFontFeatures = [(NTKWidgetRichComplicationInlineView *)self _chsFontFeatures];
  [v3 setFontFeatures:_chsFontFeatures];

  v7 = objc_opt_new();
  [v7 setFontSpecification:v3];
  [v7 setHorizontalAlignment:{-[NTKWidgetRichComplicationInlineView _chsAlignment](self, "_chsAlignment")}];
  textColor = [(NTKWidgetRichComplicationInlineView *)self textColor];
  bSColor = [textColor BSColor];
  [v7 setForegroundColor:bSColor];

  [(NTKWidgetRichComplicationInlineView *)self imageMaxSize];
  [v7 setGraphicMaxSize:?];
  [v7 setGraphicAlignment:{-[NTKWidgetRichComplicationInlineView _chsGraphicAlignment](self, "_chsGraphicAlignment")}];
  [v7 setIgnoresRTL:1];
  [v7 setSymbolScale:1];
  [v7 setForceUppercase:1];

  return v7;
}

- (id)_chsFontFeatures
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CFA268]) initWithType:33 selector:0];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (unint64_t)_chsFontDesign
{
  if (self->_fontDesign - 1 >= 5)
  {
    return 0;
  }

  else
  {
    return self->_fontDesign;
  }
}

- (unint64_t)_chsAlignment
{
  textAlignment = self->_textAlignment;
  if (textAlignment > 2)
  {
    if (textAlignment == 3)
    {
      if (CLKLayoutIsRTL())
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    else if (textAlignment == 4)
    {
      if (CLKLayoutIsRTL())
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (textAlignment == 2)
    {
      v3 = self->_textAlignment;
    }

    else
    {
      v3 = 0;
    }

    if (textAlignment == 1)
    {
      return 1;
    }

    else
    {
      return v3;
    }
  }
}

- (unint64_t)_chuisAccessoryPlacement
{
  imagePlacement = self->_imagePlacement;
  if (imagePlacement == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (imagePlacement == 2);
  }
}

- (unint64_t)_chsGraphicAlignment
{
  if (self->_imagePlacement == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)_sizingFont
{
  v2 = MEMORY[0x277CBBB08];
  fontSize = self->_fontSize;
  if (self->_fontName)
  {
    v4 = [MEMORY[0x277CBBB08] fontWithName:fontSize size:?];
  }

  else
  {
    fontWeight = self->_fontWeight;
    _uiFontDesign = [(NTKWidgetRichComplicationInlineView *)self _uiFontDesign];
    v4 = [v2 systemFontOfSize:_uiFontDesign weight:fontSize design:fontWeight];
  }

  return v4;
}

- (id)_uiFontDesign
{
  fontDesign = self->_fontDesign;
  if (fontDesign <= 5)
  {
    self = **(&unk_278789030 + fontDesign);
  }

  return self;
}

- (void)curvedLabelAngularWidthChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_bezelTextDelegate);
  [WeakRetained didUpdateBezelTextForRichComplicationBezelView:self];
}

- (double)bezelTextAngularWidth
{
  widgetHostViewController = [(NTKWidgetRichComplicationView *)self widgetHostViewController];

  if (!widgetHostViewController)
  {
    return 0.0;
  }

  widgetHostViewController2 = [(NTKWidgetRichComplicationView *)self widgetHostViewController];
  [widgetHostViewController2 curvedTextAngularWidth];
  v6 = v5;

  return v6;
}

- (void)setBezelTextDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_bezelTextDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_bezelTextDelegate, obj);
    [obj didUpdateBezelTextForRichComplicationBezelView:self];
  }
}

- (void)setBezelTextColor:(id)color
{
  colorCopy = color;
  textColor = [(NTKWidgetRichComplicationInlineView *)self textColor];

  v5 = colorCopy;
  if (textColor != colorCopy)
  {
    [(NTKWidgetRichComplicationInlineView *)self setTextColor:colorCopy];
    [(NTKWidgetRichComplicationInlineView *)self _updateCurveMetrics];
    v5 = colorCopy;
  }
}

- (void)setBezelTextRadius:(double)radius
{
  if (self->_curveRadius != radius)
  {
    [(NTKWidgetRichComplicationInlineView *)self setCurveRadius:?];

    [(NTKWidgetRichComplicationInlineView *)self _updateCurveMetrics];
  }
}

- (void)updatePropertiesAsGroupWithHandler:(id)handler
{
  handlerCopy = handler;
  v12 = objc_alloc_init(NTKGroupedBezelProperties);
  textColor = [(NTKWidgetRichComplicationInlineView *)self textColor];
  [(NTKGroupedBezelProperties *)v12 setBezelTextColor:textColor];

  [(NTKWidgetRichComplicationInlineView *)self curveRadius];
  [(NTKGroupedBezelProperties *)v12 setBezelTextRadius:?];
  handlerCopy[2](handlerCopy, v12);

  textColor2 = [(NTKWidgetRichComplicationInlineView *)self textColor];
  bezelTextColor = [(NTKGroupedBezelProperties *)v12 bezelTextColor];

  if (textColor2 != bezelTextColor)
  {
    bezelTextColor2 = [(NTKGroupedBezelProperties *)v12 bezelTextColor];
    [(NTKWidgetRichComplicationInlineView *)self setTextColor:bezelTextColor2];
  }

  [(NTKGroupedBezelProperties *)v12 bezelTextRadius];
  v10 = v9;
  [(NTKWidgetRichComplicationInlineView *)self curveRadius];
  if (v10 != v11)
  {
    [(NTKGroupedBezelProperties *)v12 bezelTextRadius];
    [(NTKWidgetRichComplicationInlineView *)self setCurveRadius:?];
  }

  [(NTKWidgetRichComplicationInlineView *)self _updateCurveMetrics];
}

- (NTKRichComplicationBezelViewDelegate)bezelTextDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_bezelTextDelegate);

  return WeakRetained;
}

- (CGPoint)curveCenter
{
  x = self->_curveCenter.x;
  y = self->_curveCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)imageMaxSize
{
  width = self->_imageMaxSize.width;
  height = self->_imageMaxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end