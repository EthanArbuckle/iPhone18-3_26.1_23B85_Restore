@interface NTKUtilityFlatComplicationView
+ (BOOL)handlesComplicationTemplate:(id)template;
+ (void)circleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width interior:(BOOL *)interior forPlacement:(unint64_t)placement forDevice:(id)device;
- (BOOL)_shouldLayoutWithImageView;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)boundingSizeOfCurrentComplicationTemplate;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKUtilityFlatComplicationView)initWithFrame:(CGRect)frame;
- (NTKUtilityFlatComplicationViewDelegate)delegate;
- (double)_widthThatFits;
- (double)circleRadius;
- (double)maxAngularWidth;
- (id)_backgroundPlatterImage;
- (id)backgroundColorForView:(id)view;
- (id)colorForView:(id)view accented:(BOOL)accented;
- (id)filterForView:(id)view style:(int64_t)style;
- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (id)filtersForView:(id)view style:(int64_t)style;
- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (unint64_t)imagePlacement;
- (void)_enumerateColoringStackedImagesViewsWithBlock:(id)block;
- (void)_enumerateColoringViewsWithBlock:(id)block;
- (void)_updateForTemplateChange;
- (void)_updateHighlightViewCornerRadius;
- (void)_updateLabelMaxWidth;
- (void)layoutSubviews;
- (void)setCircleRadius:(double)radius;
- (void)setForegroundColor:(id)color;
- (void)setMaxAngularWidth:(double)width;
- (void)setPath:(id)path;
- (void)setPlacement:(unint64_t)placement;
- (void)setShouldUseBackgroundPlatter:(BOOL)platter;
- (void)setTextLayoutStyle:(unint64_t)style;
- (void)setTextWidthInRadians:(double)radians;
- (void)setUseBlockyHighlightCorners:(BOOL)corners;
- (void)updateTextWidthIfNeeded;
@end

@implementation NTKUtilityFlatComplicationView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (NTKUtilityFlatComplicationView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = NTKUtilityFlatComplicationView;
  v3 = [(NTKUtilityComplicationView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _newStandardLabelSubview = [(NTKUtilityComplicationView *)v3 _newStandardLabelSubview];
    label = v4->_label;
    v4->_label = _newStandardLabelSubview;

    objc_storeStrong(&v4->_activeLabel, v4->_label);
    [(NTKUtilityFlatComplicationView *)v4 _updateHighlightViewCornerRadius];
  }

  return v4;
}

+ (void)circleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width interior:(BOOL *)interior forPlacement:(unint64_t)placement forDevice:(id)device
{
  placementCopy = placement;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  memset(v26, 0, sizeof(v26));
  deviceCopy = device;
  ___LayoutConstants_block_invoke_70(deviceCopy, v26);
  if (interior)
  {
    *interior = 0;
  }

  v13 = *&v28;
  v14 = *(&v27 + 1);
  v15 = *&v29;
  v16 = *(&v28 + 1);
  if (placementCopy)
  {
    ___LayoutConstants_block_invoke_70(deviceCopy, v24);
    v18 = v25;
    v17 = 0;
    if ((placementCopy & 2) == 0)
    {
      if ((placementCopy & 8) != 0)
      {
        v14 = -v14;
      }

      else
      {
        v16 = v15;
        v14 = v13;
      }
    }

    if (radius)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if ((placementCopy & 4) == 0)
    {
      v17 = 0;
      v16 = 0.0;
      v14 = 0.0;
      v18 = 0;
      if (!radius)
      {
        goto LABEL_13;
      }

LABEL_12:
      *radius = v18;
      goto LABEL_13;
    }

    ___LayoutConstants_block_invoke_70(deviceCopy, v22);
    v18 = v23;
    if ((placementCopy & 8) != 0)
    {
      v19 = v16;
    }

    else
    {
      v19 = v15;
    }

    if ((placementCopy & 8) != 0)
    {
      v20 = v14;
    }

    else
    {
      v20 = v13;
    }

    v17 = 1;
    if ((placementCopy & 2) != 0)
    {
      v14 = -v14;
    }

    else
    {
      v16 = v19;
      v14 = v20;
    }

    if (radius)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  if (angle)
  {
    *angle = v14;
  }

  if (width)
  {
    *width = v16;
  }

  if (interior)
  {
    *interior = v17;
  }
}

- (void)updateTextWidthIfNeeded
{
  path = [(CLKUICurvedColoringLabel *)self->_curvedLabel path];

  if (!path)
  {
    v11 = 0.0;
    v12 = 0.0;
    [(CLKUICurvedColoringLabel *)self->_curvedLabel sizeToFit];
    [(CLKUICurvedColoringLabel *)self->_curvedLabel getTextCenter:0 startAngle:&v12 endAngle:&v11];
    v4 = fabs(v12);
    v5 = fabs(v11);
    v11 = v5;
    v12 = v4;
    if (v4 >= v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    if (v4 >= v5)
    {
      v4 = v5;
    }

    v7 = v6 - v4;
    device = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(device, v9);
    [(NTKUtilityFlatComplicationView *)self setTextWidthInRadians:v7 + v10];
  }
}

- (void)setTextWidthInRadians:(double)radians
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_textWidthInRadians = radians;
    delegate = [(NTKUtilityFlatComplicationView *)self delegate];
    if (delegate)
    {
      v6 = delegate;
      delegate2 = [(NTKUtilityFlatComplicationView *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        delegate3 = [(NTKUtilityFlatComplicationView *)self delegate];
        [delegate3 utilityComplicationView:self didChangeTextWidth:self->_textWidthInRadians];
      }
    }
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  curvedLabel = self->_curvedLabel;
  if (curvedLabel)
  {
    path = [(CLKUICurvedColoringLabel *)curvedLabel path];

    if (path)
    {
      v10 = 0;
    }

    else
    {
      v28 = 0.0;
      v29 = 0.0;
      v26 = 0.0;
      v27 = 0.0;
      [(CLKUICurvedColoringLabel *)self->_curvedLabel getTextCenter:&v28 startAngle:&v27 endAngle:&v26];
      [(CLKUICurvedColoringLabel *)self->_curvedLabel convertPoint:self fromView:x, y];
      v15 = v14;
      v17 = v16;
      [(CLKUICurvedColoringLabel *)self->_curvedLabel circleRadius];
      v19 = v18;
      interior = [(CLKUICurvedColoringLabel *)self->_curvedLabel interior];
      v22 = v26;
      v21 = v27;
      device = [(NTKUtilityComplicationView *)self device];
      ___LayoutConstants_block_invoke_70(device, v31);
      v10 = NTKUtilityComplicationCurvedPointInside(interior, v15, v17, v19, v28, v29, v21, v22, v24, v32, v33, v34, v35);
    }
  }

  else
  {
    complicationTemplate = [(NTKUtilityComplicationView *)self complicationTemplate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(NTKUtilityFlatComplicationView *)self bounds];
      v38 = CGRectInset(v37, 0.0, -20.0);
      v36.x = x;
      v36.y = y;
      v13 = CGRectContainsPoint(v38, v36);
    }

    else
    {
      v30.receiver = self;
      v30.super_class = NTKUtilityFlatComplicationView;
      v13 = [(NTKUtilityComplicationView *)&v30 pointInside:eventCopy withEvent:x, y];
    }

    v10 = v13;
  }

  return v10;
}

- (void)setTextLayoutStyle:(unint64_t)style
{
  device = [(NTKUtilityComplicationView *)self device];
  deviceCategory = [device deviceCategory];

  if (deviceCategory == 1)
  {
    style = 0;
  }

  textLayoutStyle = [(NTKUtilityComplicationView *)self textLayoutStyle];
  v27.receiver = self;
  v27.super_class = NTKUtilityFlatComplicationView;
  [(NTKUtilityComplicationView *)&v27 setTextLayoutStyle:style];
  if ([(NTKUtilityComplicationView *)self textLayoutStyle]!= textLayoutStyle)
  {
    if (style == 2)
    {
      label = self->_label;
      if (label)
      {
        [(CLKUIColoringLabel *)label removeFromSuperview];
        v15 = self->_label;
        self->_label = 0;

        highlightView = [(NTKUtilityComplicationView *)self highlightView];
        [highlightView removeFromSuperview];
      }

      _newStandardCurvedLabelSubview = [(NTKUtilityComplicationView *)self _newStandardCurvedLabelSubview];
      curvedLabel = self->_curvedLabel;
      self->_curvedLabel = _newStandardCurvedLabelSubview;

      [(CLKUICurvedColoringLabel *)self->_curvedLabel setFilterProvider:self];
      objc_storeStrong(&self->_activeLabel, self->_curvedLabel);
      _newCurvedPathHighlightView = [(NTKUtilityComplicationView *)self _newCurvedPathHighlightView];
      goto LABEL_12;
    }

    if (style == 1)
    {
      v8 = self->_label;
      if (v8)
      {
        [(CLKUIColoringLabel *)v8 removeFromSuperview];
        v9 = self->_label;
        self->_label = 0;

        highlightView2 = [(NTKUtilityComplicationView *)self highlightView];
        [highlightView2 removeFromSuperview];
      }

      _newStandardCurvedLabelSubview2 = [(NTKUtilityComplicationView *)self _newStandardCurvedLabelSubview];
      v12 = self->_curvedLabel;
      self->_curvedLabel = _newStandardCurvedLabelSubview2;

      [(CLKUICurvedColoringLabel *)self->_curvedLabel setFilterProvider:self];
      objc_storeStrong(&self->_activeLabel, self->_curvedLabel);
      _newCurvedPathHighlightView = [(NTKUtilityComplicationView *)self _newCurvedCircularHighlightView];
LABEL_12:
      curvedHighlightView = self->_curvedHighlightView;
      self->_curvedHighlightView = _newCurvedPathHighlightView;

      [(NTKUtilityComplicationView *)self setHighlightView:self->_curvedHighlightView];
      return;
    }

    v20 = self->_curvedLabel;
    if (v20)
    {
      [(CLKUICurvedColoringLabel *)v20 removeFromSuperview];
      v21 = self->_curvedLabel;
      self->_curvedLabel = 0;

      highlightView3 = [(NTKUtilityComplicationView *)self highlightView];
      [highlightView3 removeFromSuperview];

      v23 = self->_curvedHighlightView;
      self->_curvedHighlightView = 0;
    }

    _newStandardLabelSubview = [(NTKUtilityComplicationView *)self _newStandardLabelSubview];
    v25 = self->_label;
    self->_label = _newStandardLabelSubview;

    objc_storeStrong(&self->_activeLabel, self->_label);
    _newHighlightView = [(NTKUtilityComplicationView *)self _newHighlightView];
    [(NTKUtilityComplicationView *)self setHighlightView:_newHighlightView];
  }
}

- (void)setForegroundColor:(id)color
{
  colorCopy = color;
  foregroundColor = [(NTKUtilityComplicationView *)self foregroundColor];
  v6 = [colorCopy isEqual:foregroundColor];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = NTKUtilityFlatComplicationView;
    [(NTKUtilityComplicationView *)&v7 setForegroundColor:colorCopy];
  }
}

- (void)setPlacement:(unint64_t)placement
{
  v21.receiver = self;
  v21.super_class = NTKUtilityFlatComplicationView;
  [(NTKUtilityComplicationView *)&v21 setPlacement:?];
  if ([(NTKUtilityComplicationView *)self textLayoutStyle]== 1)
  {
    v19 = 0.0;
    v20 = 0.0;
    v18 = 0.0;
    v17 = 0;
    v5 = objc_opt_class();
    device = [(NTKUtilityComplicationView *)self device];
    [v5 circleRadius:&v20 centerAngle:&v19 maxAngularWidth:&v18 interior:&v17 forPlacement:placement forDevice:device];

    [(CLKUICurvedColoringLabel *)self->_curvedLabel setCircleRadius:v20];
    [(CLKUICurvedColoringLabel *)self->_curvedLabel setInterior:v17];
    [(CLKUICurvedColoringLabel *)self->_curvedLabel setCenterAngle:v19];
    [(CLKUICurvedColoringLabel *)self->_curvedLabel setMaxAngularWidth:v18];
    if (![(NTKUtilityComplicationView *)self isPlacementForTopBezelComplication])
    {
      v7 = v17;
      device2 = [(NTKUtilityComplicationView *)self device];
      v9 = device2;
      if (v7)
      {
        ___LayoutConstants_block_invoke_70(device2, v15);
        v10 = &v16;
      }

      else
      {
        ___LayoutConstants_block_invoke_70(device2, &v13);
        v10 = &v14;
      }

      [(CLKUICurvedColoringLabel *)self->_curvedLabel setTracking:*v10];
    }

    imagePlacement = [(NTKUtilityFlatComplicationView *)self imagePlacement];
    curvedLabel = self->_curvedLabel;
  }

  else
  {
    if ([(NTKUtilityComplicationView *)self textLayoutStyle]!= 2)
    {
      return;
    }

    [(CLKUICurvedColoringLabel *)self->_curvedLabel setPath:self->_path];
    imagePlacement = [(NTKUtilityFlatComplicationView *)self imagePlacement];
    curvedLabel = self->_curvedLabel;
  }

  [(CLKUICurvedColoringLabel *)curvedLabel setImagePlacement:imagePlacement];
}

- (void)setMaxAngularWidth:(double)width
{
  path = [(CLKUICurvedColoringLabel *)self->_curvedLabel path];

  if (!path)
  {
    curvedLabel = self->_curvedLabel;

    [(CLKUICurvedColoringLabel *)curvedLabel setMaxAngularWidth:width];
  }
}

- (double)maxAngularWidth
{
  path = [(CLKUICurvedColoringLabel *)self->_curvedLabel path];

  if (path)
  {
    return 0.0;
  }

  curvedLabel = self->_curvedLabel;

  [(CLKUICurvedColoringLabel *)curvedLabel maxAngularWidth];
  return result;
}

- (void)setCircleRadius:(double)radius
{
  path = [(CLKUICurvedColoringLabel *)self->_curvedLabel path];

  if (!path)
  {
    curvedLabel = self->_curvedLabel;

    [(CLKUICurvedColoringLabel *)curvedLabel setCircleRadius:radius];
  }
}

- (double)circleRadius
{
  path = [(CLKUICurvedColoringLabel *)self->_curvedLabel path];

  if (path)
  {
    return 0.0;
  }

  curvedLabel = self->_curvedLabel;

  [(CLKUICurvedColoringLabel *)curvedLabel circleRadius];
  return result;
}

- (void)setPath:(id)path
{
  objc_storeStrong(&self->_path, path);
  pathCopy = path;
  [(CLKUICurvedColoringLabel *)self->_curvedLabel setPath:pathCopy];
}

- (void)setUseBlockyHighlightCorners:(BOOL)corners
{
  v4.receiver = self;
  v4.super_class = NTKUtilityFlatComplicationView;
  [(NTKUtilityComplicationView *)&v4 setUseBlockyHighlightCorners:corners];
  [(NTKUtilityFlatComplicationView *)self _updateHighlightViewCornerRadius];
}

- (unint64_t)imagePlacement
{
  if (([(NTKUtilityComplicationView *)self placement]& 8) != 0)
  {
    return 2;
  }

  if (([(NTKUtilityComplicationView *)self placement]& 4) == 0)
  {
    return 1;
  }

  if (CLKLayoutIsRTL())
  {
    return 2;
  }

  return 1;
}

- (void)setShouldUseBackgroundPlatter:(BOOL)platter
{
  v4.receiver = self;
  v4.super_class = NTKUtilityFlatComplicationView;
  [(NTKUtilityComplicationView *)&v4 setShouldUseBackgroundPlatter:platter];
  [(NTKUtilityFlatComplicationView *)self _updateHighlightViewCornerRadius];
}

- (void)_updateHighlightViewCornerRadius
{
  useBlockyHighlightCorners = [(NTKUtilityComplicationView *)self useBlockyHighlightCorners];
  device = [(NTKUtilityComplicationView *)self device];
  highlightView = device;
  if (useBlockyHighlightCorners)
  {
    ___LayoutConstants_block_invoke_70(device, v12);
    v5 = v13;
  }

  else
  {
    deviceCategory = [device deviceCategory];

    if (deviceCategory == 1)
    {
      highlightView = [(NTKUtilityComplicationView *)self highlightView];
      layer = [highlightView layer];
      [layer setCornerRadius:0.0];
      goto LABEL_7;
    }

    highlightView = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(highlightView, v10);
    v5 = v11;
  }

  layer = [(NTKUtilityComplicationView *)self highlightView];
  v7Layer = [layer layer];
  [v7Layer setCornerRadius:v5];

LABEL_7:
}

- (BOOL)_shouldLayoutWithImageView
{
  if ([(NTKUtilityComplicationView *)self textLayoutStyle]== 1 || [(NTKUtilityComplicationView *)self textLayoutStyle]== 2)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    imageView = self->_imageView;
    if (imageView)
    {
      v3 = [(CDComplicationImageView *)imageView isHidden]^ 1;
    }

    else
    {
      v3 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return [(CDComplicationImageView *)self->_imageView hasMonochromeImage]& v3;
    }
  }

  return v3;
}

- (void)_updateLabelMaxWidth
{
  [(NTKUtilityComplicationView *)self maxSize];
  v4 = v3;
  if ([(NTKUtilityFlatComplicationView *)self _shouldLayoutWithImageView])
  {
    [(CDComplicationImageView *)self->_imageView sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    v6 = v5;
    device = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(device, v11);
    v4 = v4 - (v6 + v12);
  }

  if ([(NTKUtilityComplicationView *)self shouldUsePlatterInset])
  {
    device2 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(device2, v10);
    v4 = v4 + v10[22] * -2.0;
  }

  activeLabel = self->_activeLabel;

  [(CLKUIColoringLabel *)activeLabel setMaxWidth:v4];
}

- (double)_widthThatFits
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  [(CLKUIColoringLabel *)self->_activeLabel sizeThatFits:*MEMORY[0x277CBF3A8], v4];
  if ([(NTKUtilityFlatComplicationView *)self _shouldLayoutWithImageView])
  {
    [(CDComplicationImageView *)self->_imageView sizeThatFits:v3, v4];
    device = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(device, v12);
  }

  if ([(NTKUtilityComplicationView *)self shouldUsePlatterInset])
  {
    device2 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(device2, &v11);
  }

  device3 = [(NTKUtilityComplicationView *)self device];
  CLKCeilForDevice();
  v9 = v8;

  return v9;
}

- (void)_updateForTemplateChange
{
  v21.receiver = self;
  v21.super_class = NTKUtilityFlatComplicationView;
  [(NTKUtilityComplicationView *)&v21 _updateForTemplateChange];
  complicationTemplate = [(NTKUtilityComplicationView *)self complicationTemplate];
  imageProvider = [complicationTemplate imageProvider];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NTKUtilityFlatComplicationView *)self setUseBlockyHighlightCorners:1];
  }

  v5 = [(NTKUtilityComplicationView *)self textLayoutStyle]== 1 || [(NTKUtilityComplicationView *)self textLayoutStyle]== 2;
  if (([off_27877BE78 existingImageView:self->_imageView supportsImageProvider:imageProvider] & 1) == 0)
  {
    if (v5)
    {
      [(CLKUICurvedColoringLabel *)self->_curvedLabel setImageView:0];
    }

    else
    {
      [(CDComplicationImageView *)self->_imageView removeFromSuperview];
    }

    v6 = [off_27877BE78 viewForImageProvider:imageProvider];
    imageView = self->_imageView;
    self->_imageView = v6;

    [(NTKUtilityComplicationView *)self _updateImageViewAlpha:self->_imageView];
    [(NTKUtilityComplicationView *)self _updateImageViewColor:self->_imageView];
  }

  [(CDComplicationImageView *)self->_imageView setImageProvider:imageProvider];
  v8 = self->_imageView;
  if (v5)
  {
    if (!v8 || ([(CDComplicationImageView *)self->_imageView bounds], CGRectIsEmpty(v22)))
    {
      [(CLKUICurvedColoringLabel *)self->_curvedLabel setImageView:0];
    }

    else
    {
      curvedLabel = self->_curvedLabel;
      v10 = self->_imageView;
      imagePlacement = [(NTKUtilityFlatComplicationView *)self imagePlacement];
      device = [(NTKUtilityComplicationView *)self device];
      ___LayoutConstants_block_invoke_70(device, v19);
      [(CLKUICurvedColoringLabel *)curvedLabel setImageView:v10 placement:imagePlacement padding:v20];
    }
  }

  else if (v8)
  {
    [(NTKUtilityFlatComplicationView *)self addSubview:?];
  }

  activeLabel = self->_activeLabel;
  textProvider = [complicationTemplate textProvider];
  [(CLKUIColoringLabel *)activeLabel setTextProvider:textProvider];

  if (self->_curvedLabel)
  {
    [(NTKUtilityComplicationView *)self setBackgroundPlatter:0];
    [(UIImageView *)self->_curvedHighlightView setImage:0];
  }

  [(NTKUtilityFlatComplicationView *)self _updateLabelMaxWidth];
  colorScheme = [(NTKUtilityComplicationView *)self colorScheme];
  containsOverrideFaceColor = [colorScheme containsOverrideFaceColor];

  if (containsOverrideFaceColor)
  {
    colorScheme2 = [(NTKUtilityComplicationView *)self colorScheme];
    [(NTKUtilityComplicationView *)self _applyColorScheme:colorScheme2];
  }

  [(NTKUtilityFlatComplicationView *)self setNeedsLayout];
  displayObserver = [(NTKUtilityComplicationView *)self displayObserver];
  [displayObserver complicationDisplayNeedsResize:self];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  curvedLabel = self->_curvedLabel;
  if (curvedLabel)
  {
    if (self->_label)
    {
      [(CLKUIColoringLabel *)self->_label sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
      width = v7;
      height = v8;
      if ([(NTKUtilityComplicationView *)self shouldUsePlatterInset])
      {
        device = [(NTKUtilityComplicationView *)self device];
        ___LayoutConstants_block_invoke_70(device, v15);
        width = width + v16 * 2.0;
      }
    }

    else
    {
      path = [(CLKUICurvedColoringLabel *)curvedLabel path];

      if (!path)
      {
        [(CLKUICurvedColoringLabel *)self->_curvedLabel centerAngle];
        v13 = CLKFloatEqualsFloat();
        [(NTKUtilityComplicationView *)self device];
        objc_claimAutoreleasedReturnValue();
        if (v13)
        {
          CLKUICurvedColoringLabelCenterSize();
        }

        CLKUICurvedColoringLabelCornerSize();
      }
    }

    [(NTKUtilityComplicationView *)self minimumWidth];
    if (width >= v10)
    {
      v10 = width;
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = NTKUtilityFlatComplicationView;
    [(NTKUtilityComplicationView *)&v17 sizeThatFits:fits.width, fits.height];
    height = v11;
  }

  v14 = height;
  result.height = v14;
  result.width = v10;
  return result;
}

- (CGSize)boundingSizeOfCurrentComplicationTemplate
{
  [(NTKUtilityFlatComplicationView *)self layoutIfNeeded];
  [(CLKUIColoringLabel *)self->_activeLabel frame];
  v4 = v3;
  v6 = v5;
  result.height = v6;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v96.receiver = self;
  v96.super_class = NTKUtilityFlatComplicationView;
  [(NTKUtilityComplicationView *)&v96 layoutSubviews];
  device = [(NTKUtilityComplicationView *)self device];
  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v80 = 0u;
  memset(v79, 0, sizeof(v79));
  ___LayoutConstants_block_invoke_70(device, v79);
  [(NTKUtilityFlatComplicationView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(CLKUIColoringLabel *)self->_activeLabel sizeToFit];
  if (self->_label)
  {
    if ([(NTKUtilityComplicationView *)self shouldUsePlatterInset])
    {
      v9 = v9 + *&v85 * -2.0;
      v5 = v5 + *&v85;
    }

    [(NTKUtilityComplicationView *)self layoutLabelVertically:self->_activeLabel];
  }

  [(CLKUIColoringLabel *)self->_activeLabel frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if ([(NTKUtilityFlatComplicationView *)self _shouldLayoutWithImageView])
  {
    v74 = v7;
    v75 = v11;
    [(CDComplicationImageView *)self->_imageView sizeToFit];
    [(CDComplicationImageView *)self->_imageView frame];
    v21 = v20;
    v23 = v22;
    v76 = v19;
    [(NTKUtilityComplicationView *)self _imageViewOriginYWithBaseImageSize:v20 labelFrame:v22, v13, v15, v17, v19];
    v25 = v24;
    v26 = *&v80;
    if (v17 > v9 - v21 - *&v80)
    {
      v17 = v9 - v21 - *&v80;
    }

    placement = [(NTKUtilityComplicationView *)self placement];
    if ((placement & 2) != 0)
    {
      v99.origin.x = v5;
      v99.origin.y = v74;
      v99.size.height = v75;
      v99.size.width = v9;
      v100.origin.x = CGRectGetMinX(v99);
      v100.origin.y = v25;
      v100.size.width = v21;
      v100.size.height = v23;
      MaxX = CGRectGetMaxX(v100);
    }

    else if ((placement & 8) != 0)
    {
      v101.origin.x = v5;
      v101.origin.y = v74;
      v101.size.height = v75;
      v101.size.width = v9;
      v102.origin.x = CGRectGetMaxX(v101) - v21;
      v102.origin.y = v25;
      v102.size.width = v21;
      v102.size.height = v23;
      MaxX = CGRectGetMinX(v102) - v26;
    }

    else
    {
      IsRTL = CLKLayoutIsRTL();
      if (IsRTL)
      {
        v29 = v76;
      }

      else
      {
        v29 = v23;
      }

      if (IsRTL)
      {
        v30 = v17;
      }

      else
      {
        v30 = v21;
      }

      v71 = v29;
      v72 = v30;
      if (IsRTL)
      {
        v31 = v15;
      }

      else
      {
        v31 = v25;
      }

      v73 = v31;
      CLKLayoutIsRTL();
      v97.origin.x = v5;
      v97.origin.y = v74;
      v97.size.height = v75;
      v97.size.width = v9;
      MinX = CGRectGetMinX(v97);
      CLKFloorForDevice();
      v98.origin.x = MinX + v33;
      v98.origin.y = v73;
      v98.size.width = v72;
      v98.size.height = v71;
      CGRectGetMaxX(v98);
      CLKLayoutIsRTL();
      CLKLayoutIsRTL();
      MaxX = v73;
    }

    device2 = [(NTKUtilityComplicationView *)self device];
    CLKPixelAlignRectForDevice();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;

    imageView = self->_imageView;
    device3 = [(NTKUtilityComplicationView *)self device];
    CLKPixelAlignRectForDevice();
    [(CDComplicationImageView *)imageView setFrame:?];
  }

  else
  {
    placement2 = [(NTKUtilityComplicationView *)self placement];
    curvedLabel = self->_curvedLabel;
    if (curvedLabel)
    {
      path = [(CLKUICurvedColoringLabel *)curvedLabel path];

      if (path)
      {
        [(NTKUtilityFlatComplicationView *)self bounds];
      }

      else if ([(NTKUtilityComplicationView *)self isPlacementForTopBezelComplication])
      {
        v77 = 0;
        v78 = 0;
        [(CLKUICurvedColoringLabel *)self->_curvedLabel getTextCenter:&v77 startAngle:0 endAngle:0];
        [(NTKUtilityFlatComplicationView *)self bounds];
        CGRectGetMidX(v103);
        v104.origin.x = v13;
        v104.origin.y = v15;
        v104.size.width = v17;
        v104.size.height = v19;
        CGRectGetWidth(v104);
        [(CLKUICurvedColoringLabel *)self->_curvedLabel bounds];
        CGRectGetMidX(v105);
        device4 = [(NTKUtilityComplicationView *)self device];
        CLKPointRoundForDevice();
      }

      else
      {
        [device screenBounds];
        v60 = v56;
        if (placement2)
        {
          if ((placement2 & 8) != 0)
          {
            CGRectGetWidth(*&v56);
            CLKUICurvedColoringLabelCornerSize();
          }
        }

        else if ((placement2 & 4) != 0)
        {
          if ((placement2 & 0xA) != 0)
          {
            CLKUICurvedColoringLabelCornerSize();
          }

          CLKUICurvedColoringLabelCenterSize();
        }

        v61 = v59;
        v62 = v58;
        v63 = v57;
        v77 = 0;
        v78 = 0;
        [(CLKUICurvedColoringLabel *)self->_curvedLabel getTextCenter:&v77 startAngle:0 endAngle:0];
        [(NTKUtilityComplicationView *)self placement];
        v106.origin.x = v60;
        v106.origin.y = v63;
        v106.size.width = v62;
        v106.size.height = v61;
        CGRectGetMaxY(v106);
        [(CLKUICurvedColoringLabel *)self->_curvedLabel circleRadius];
        v107.origin.x = v60;
        v107.origin.y = v63;
        v107.size.width = v62;
        v107.size.height = v61;
        CGRectGetMidX(v107);
      }
    }

    else
    {
      v38 = v5;
      v39 = v7;
      if ((placement2 & 2) != 0)
      {
        v54 = v9;
        v55 = v11;
        CGRectGetMinX(*&v38);
      }

      else
      {
        v40 = v9;
        v41 = v11;
        if ((placement2 & 8) != 0)
        {
          CGRectGetMaxX(*&v38);
        }

        else
        {
          CGRectGetMinX(*&v38);
          CLKFloorForDevice();
        }
      }
    }

    device3 = [(NTKUtilityComplicationView *)self device];
    CLKPixelAlignRectForDevice();
    v44 = v64;
    v46 = v65;
    v48 = v66;
    v50 = v67;
  }

  [(CLKUIColoringLabel *)self->_activeLabel setFrame:v44, v46, v48, v50];
  if (self->_curvedLabel)
  {
    image = [(UIImageView *)self->_curvedHighlightView image];

    if (!image)
    {
      _backgroundPlatterImage = [(NTKUtilityFlatComplicationView *)self _backgroundPlatterImage];
      [(UIImageView *)self->_curvedHighlightView setImage:_backgroundPlatterImage];
    }

    [(UIImageView *)self->_curvedHighlightView sizeToFit];
    [(UIImageView *)self->_curvedHighlightView frame];
    device5 = [(NTKUtilityComplicationView *)self device];
    CLKRectCenteredIntegralRectForDevice();
    [(UIImageView *)self->_curvedHighlightView setFrame:?];
  }

  [(NTKUtilityFlatComplicationView *)self updateTextWidthIfNeeded];
}

- (id)_backgroundPlatterImage
{
  if (self->_curvedLabel)
  {
    [(NTKUtilityFlatComplicationView *)self bounds];
    if (CGRectIsEmpty(v32) || ([(CLKUICurvedColoringLabel *)self->_curvedLabel bounds], CGRectIsEmpty(v33)))
    {
      _backgroundPlatterImage = 0;
    }

    else
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      memset(v25, 0, sizeof(v25));
      device = [(NTKUtilityComplicationView *)self device];
      ___LayoutConstants_block_invoke_70(device, v25);

      path = [(CLKUICurvedColoringLabel *)self->_curvedLabel path];

      _backgroundPlatterImage = 0;
      if (!path)
      {
        interior = [(CLKUICurvedColoringLabel *)self->_curvedLabel interior];
        [(CLKUICurvedColoringLabel *)self->_curvedLabel circleRadius];
        v23 = 0.0;
        v24 = 0.0;
        v21 = 0;
        v22 = 0;
        [(CLKUICurvedColoringLabel *)self->_curvedLabel getTextCenter:&v23 startAngle:&v22 endAngle:&v21];
        [(CLKUICurvedColoringLabel *)self->_curvedLabel bounds];
        v7 = *&v26;
        v35 = CGRectInset(v34, -*&v26, -*&v26);
        x = v35.origin.x;
        y = v35.origin.y;
        width = v35.size.width;
        height = v35.size.height;
        v12 = CGRectGetWidth(v35);
        [(CLKUICurvedColoringLabel *)self->_curvedLabel bounds];
        v23 = v23 + (v12 - CGRectGetWidth(v36)) * 0.5;
        v37.origin.x = x;
        v37.origin.y = y;
        v37.size.width = width;
        v37.size.height = height;
        v13 = CGRectGetHeight(v37);
        [(CLKUICurvedColoringLabel *)self->_curvedLabel bounds];
        v24 = v24 + (v13 - CGRectGetHeight(v38)) * 0.5;
        v14 = [MEMORY[0x277D75208] bezierPathWithArcCenter:interior ^ 1u radius:v23 startAngle:? endAngle:? clockwise:?];
        [v14 setLineWidth:v7];
        [v14 setLineCapStyle:1];
        v15 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{width, height}];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __57__NTKUtilityFlatComplicationView__backgroundPlatterImage__block_invoke;
        v19[3] = &unk_2787820A8;
        v20 = v14;
        v16 = v14;
        v17 = [v15 imageWithActions:v19];
        _backgroundPlatterImage = [v17 imageWithRenderingMode:2];
      }
    }
  }

  else
  {
    v30.receiver = self;
    v30.super_class = NTKUtilityFlatComplicationView;
    _backgroundPlatterImage = [(NTKUtilityComplicationView *)&v30 _backgroundPlatterImage];
  }

  return _backgroundPlatterImage;
}

uint64_t __57__NTKUtilityFlatComplicationView__backgroundPlatterImage__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75348] whiteColor];
  [v2 set];

  v3 = *(a1 + 32);

  return [v3 stroke];
}

- (void)_enumerateColoringViewsWithBlock:(id)block
{
  v4 = (block + 16);
  v5 = *(block + 2);
  blockCopy = block;
  v5();
  (*v4)(blockCopy, self->_imageView);
}

- (void)_enumerateColoringStackedImagesViewsWithBlock:(id)block
{
  blockCopy = block;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    blockCopy[2](blockCopy, self->_imageView);
  }
}

- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  filterProvider = [(NTKUtilityFlatComplicationView *)self filterProvider];
  v9 = [filterProvider filtersForView:self style:style fraction:fraction];

  return v9;
}

- (id)filtersForView:(id)view style:(int64_t)style
{
  filterProvider = [(NTKUtilityFlatComplicationView *)self filterProvider];
  v7 = [filterProvider filtersForView:self style:style];

  return v7;
}

- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  filterProvider = [(NTKUtilityFlatComplicationView *)self filterProvider];
  v9 = [filterProvider filterForView:self style:style fraction:fraction];

  return v9;
}

- (id)filterForView:(id)view style:(int64_t)style
{
  filterProvider = [(NTKUtilityFlatComplicationView *)self filterProvider];
  v7 = [filterProvider filterForView:self style:style];

  return v7;
}

- (id)colorForView:(id)view accented:(BOOL)accented
{
  accentedCopy = accented;
  viewCopy = view;
  filterProvider = [(NTKUtilityFlatComplicationView *)self filterProvider];
  v8 = [filterProvider colorForView:viewCopy accented:accentedCopy];

  return v8;
}

- (id)backgroundColorForView:(id)view
{
  viewCopy = view;
  filterProvider = [(NTKUtilityFlatComplicationView *)self filterProvider];
  v6 = [filterProvider backgroundColorForView:viewCopy];

  return v6;
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

- (NTKUtilityFlatComplicationViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end