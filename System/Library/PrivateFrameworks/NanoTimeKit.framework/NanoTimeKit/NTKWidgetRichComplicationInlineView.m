@interface NTKWidgetRichComplicationInlineView
- (CGPoint)curveCenter;
- (CGRect)_frame;
- (CGSize)imageMaxSize;
- (NTKRichComplicationBezelViewDelegate)bezelTextDelegate;
- (NTKWidgetRichComplicationInlineView)initWithFamily:(int64_t)a3;
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
- (void)setBezelTextColor:(id)a3;
- (void)setBezelTextDelegate:(id)a3;
- (void)setBezelTextRadius:(double)a3;
- (void)setTextAlignment:(unint64_t)a3;
- (void)updatePropertiesAsGroupWithHandler:(id)a3;
@end

@implementation NTKWidgetRichComplicationInlineView

- (NTKWidgetRichComplicationInlineView)initWithFamily:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = NTKWidgetRichComplicationInlineView;
  v3 = [(NTKWidgetRichComplicationView *)&v7 initWithFamily:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] whiteColor];
    textColor = v3->_textColor;
    v3->_textColor = v4;

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
      v13 = [(CDRichComplicationView *)self device];
      CLKRectCenteredYInRectForDevice();
      v7 = v14;
      v8 = v15;
      v9 = v16;
      contentHeight = v17;
    }

    v18 = [(NTKWidgetRichComplicationView *)self widgetHostViewController];
    v19 = [v18 view];
    [v19 setFrame:{v7, v8, v9, contentHeight}];
  }

  [(NTKWidgetRichComplicationView *)self _updateTintParameters];
  [(NTKWidgetRichComplicationInlineView *)self _updateCurveMetrics];
  [(NTKWidgetRichComplicationInlineView *)self _updateInlineTextParameters];
}

- (void)setTextAlignment:(unint64_t)a3
{
  if (self->_textAlignment != a3)
  {
    self->_textAlignment = a3;
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
    v11 = [(NTKWidgetRichComplicationInlineView *)self _sizingFont];
    [v11 lineHeight];
    v12 = [(CDRichComplicationView *)self device];
    ___HeightPaddingForNonCurved_block_invoke(v12, v12);
    v13 = [(CDRichComplicationView *)self device];
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
  v3 = [(NTKWidgetRichComplicationView *)self widgetHostViewController];
  [v3 setWatchComplicationsDelegate:self];

  [(NTKWidgetRichComplicationInlineView *)self _updateCurveMetrics];
  [(NTKWidgetRichComplicationInlineView *)self _updateInlineTextParameters];
}

- (void)_updateInlineTextParameters
{
  v4 = [(NTKWidgetRichComplicationInlineView *)self _chsInlineParameters];
  v3 = [(NTKWidgetRichComplicationView *)self widgetHostViewController];
  [v3 setInlineTextParameters:v4];
}

- (void)_updateCurveMetrics
{
  v4 = [(NTKWidgetRichComplicationInlineView *)self _chuisCurvedLabelMetrics];
  v3 = [(NTKWidgetRichComplicationView *)self widgetHostViewController];
  [v3 setComplicationsCurvedLabelMetrics:v4];
}

- (id)_chuisCurvedLabelMetrics
{
  if ([(CDRichComplicationView *)self textLayoutStyle])
  {
    v3 = [(CDRichComplicationView *)self textLayoutStyle];
    v4 = objc_alloc(MEMORY[0x277CFA548]);
    if (v3 == 1)
    {
      v5 = [(NTKWidgetRichComplicationInlineView *)self interior];
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
      v20 = [(NTKWidgetRichComplicationInlineView *)self textColor];
      v21 = [v20 BSColor];
      v22 = [(NTKWidgetRichComplicationInlineView *)self _chuisAccessoryPlacement];
      [(NTKWidgetRichComplicationInlineView *)self imagePadding];
      v24 = v23;
      [(NTKWidgetRichComplicationInlineView *)self imageMaxSize];
      v27 = [v4 initWithInterior:v5 tracking:v21 circleCenter:v22 circleRadius:v7 maximumAngularWidth:v9 centerAngle:v11 fontSize:v13 textColor:v15 accessoryPlacement:v17 accessoryPadding:v19 accessoryMaxSize:{v24, v25, v26}];
    }

    else
    {
      v20 = [(NTKWidgetRichComplicationInlineView *)self path];
      [(NTKWidgetRichComplicationInlineView *)self fontSize];
      v29 = v28;
      v21 = [(NTKWidgetRichComplicationInlineView *)self textColor];
      v30 = [v21 BSColor];
      v31 = [(NTKWidgetRichComplicationInlineView *)self _chuisAccessoryPlacement];
      [(NTKWidgetRichComplicationInlineView *)self imagePadding];
      v33 = v32;
      [(NTKWidgetRichComplicationInlineView *)self imageMaxSize];
      v27 = [v4 initWithPath:v20 fontSize:v30 textColor:v31 accessoryPlacement:v29 accessoryPadding:v33 accessoryMaxSize:{v34, v35}];
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

  v6 = [(NTKWidgetRichComplicationInlineView *)self _chsFontFeatures];
  [v3 setFontFeatures:v6];

  v7 = objc_opt_new();
  [v7 setFontSpecification:v3];
  [v7 setHorizontalAlignment:{-[NTKWidgetRichComplicationInlineView _chsAlignment](self, "_chsAlignment")}];
  v8 = [(NTKWidgetRichComplicationInlineView *)self textColor];
  v9 = [v8 BSColor];
  [v7 setForegroundColor:v9];

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
    v6 = [(NTKWidgetRichComplicationInlineView *)self _uiFontDesign];
    v4 = [v2 systemFontOfSize:v6 weight:fontSize design:fontWeight];
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
  v3 = [(NTKWidgetRichComplicationView *)self widgetHostViewController];

  if (!v3)
  {
    return 0.0;
  }

  v4 = [(NTKWidgetRichComplicationView *)self widgetHostViewController];
  [v4 curvedTextAngularWidth];
  v6 = v5;

  return v6;
}

- (void)setBezelTextDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_bezelTextDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_bezelTextDelegate, obj);
    [obj didUpdateBezelTextForRichComplicationBezelView:self];
  }
}

- (void)setBezelTextColor:(id)a3
{
  v6 = a3;
  v4 = [(NTKWidgetRichComplicationInlineView *)self textColor];

  v5 = v6;
  if (v4 != v6)
  {
    [(NTKWidgetRichComplicationInlineView *)self setTextColor:v6];
    [(NTKWidgetRichComplicationInlineView *)self _updateCurveMetrics];
    v5 = v6;
  }
}

- (void)setBezelTextRadius:(double)a3
{
  if (self->_curveRadius != a3)
  {
    [(NTKWidgetRichComplicationInlineView *)self setCurveRadius:?];

    [(NTKWidgetRichComplicationInlineView *)self _updateCurveMetrics];
  }
}

- (void)updatePropertiesAsGroupWithHandler:(id)a3
{
  v4 = a3;
  v12 = objc_alloc_init(NTKGroupedBezelProperties);
  v5 = [(NTKWidgetRichComplicationInlineView *)self textColor];
  [(NTKGroupedBezelProperties *)v12 setBezelTextColor:v5];

  [(NTKWidgetRichComplicationInlineView *)self curveRadius];
  [(NTKGroupedBezelProperties *)v12 setBezelTextRadius:?];
  v4[2](v4, v12);

  v6 = [(NTKWidgetRichComplicationInlineView *)self textColor];
  v7 = [(NTKGroupedBezelProperties *)v12 bezelTextColor];

  if (v6 != v7)
  {
    v8 = [(NTKGroupedBezelProperties *)v12 bezelTextColor];
    [(NTKWidgetRichComplicationInlineView *)self setTextColor:v8];
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