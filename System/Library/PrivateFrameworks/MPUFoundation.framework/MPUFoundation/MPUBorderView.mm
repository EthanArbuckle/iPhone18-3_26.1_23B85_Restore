@interface MPUBorderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (MPUBorderView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)resizableImageCapInsets;
- (double)requiredOutsetForDropShadow;
- (void)drawRect:(CGRect)rect;
- (void)setBorderConfiguration:(id)configuration;
@end

@implementation MPUBorderView

- (MPUBorderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MPUBorderView;
  v3 = [(MPUBorderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_hidesWhenFullyTransparent = 1;
    [(MPUBorderView *)v3 setOpaque:0];
    [(MPUBorderView *)v4 setBackgroundColor:0];
    [(MPUBorderView *)v4 setContentMode:3];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(MPUBorderView *)self requiredOutsetForDropShadow:fits.width];
  v5 = v4 + v4;
  [(MPUBorderConfiguration *)self->_borderConfiguration borderWidth];
  v7 = v5 + v6 * 2.0 + 1.0;
  v8 = v7;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setBorderConfiguration:(id)configuration
{
  configurationCopy = configuration;
  borderConfiguration = self->_borderConfiguration;
  if (borderConfiguration != configurationCopy)
  {
    v9 = configurationCopy;
    borderConfiguration = [borderConfiguration isEqual:configurationCopy];
    configurationCopy = v9;
    if ((borderConfiguration & 1) == 0)
    {
      v6 = [v9 copy];
      v7 = self->_borderConfiguration;
      self->_borderConfiguration = v6;

      if (!self->_hidesWhenFullyTransparent || (v8 = [(MPUBorderConfiguration *)self->_borderConfiguration isFullyTransparent], borderConfiguration = [(MPUBorderView *)self setHidden:v8], configurationCopy = v9, !v8))
      {
        borderConfiguration = [(MPUBorderView *)self setNeedsDisplay];
        configurationCopy = v9;
      }
    }
  }

  MEMORY[0x2821F96F8](borderConfiguration, configurationCopy);
}

- (double)requiredOutsetForDropShadow
{
  v2 = objc_opt_class();

  [v2 requiredOutsetForDropShadow];
  return result;
}

- (UIEdgeInsets)resizableImageCapInsets
{
  [(MPUBorderView *)self requiredOutsetForDropShadow];
  v4 = v3;
  [(MPUBorderConfiguration *)self->_borderConfiguration borderWidth];
  v6 = v4 + v5;
  v7 = v6;
  v8 = v6;
  v9 = v6;
  result.right = v9;
  result.bottom = v8;
  result.left = v7;
  result.top = v6;
  return result;
}

- (void)drawRect:(CGRect)rect
{
  [(MPUBorderView *)self requiredOutsetForDropShadow:rect.origin.x];
  v5 = v4;
  [(MPUBorderView *)self bounds];
  v54 = CGRectInset(v53, v5, v5);
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  height = v54.size.height;
  [(MPUBorderConfiguration *)self->_borderConfiguration borderWidth];
  v11 = v10;
  fillColor = [(MPUBorderConfiguration *)self->_borderConfiguration fillColor];
  [(MPUBorderConfiguration *)self->_borderConfiguration fillAlpha];
  if (fillColor)
  {
    v13 = v12 <= 0.00000011920929;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = [fillColor colorWithAlphaComponent:?];
    [v14 setFill];

    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = width;
    v55.size.height = height;
    v56 = CGRectInset(v55, v11, v11);
    UIRectFillUsingBlendMode(v56, kCGBlendModeNormal);
  }

  borderColor = [(MPUBorderConfiguration *)self->_borderConfiguration borderColor];
  [(MPUBorderConfiguration *)self->_borderConfiguration borderAlpha];
  v17 = v16;
  if (borderColor)
  {
    v18 = v11 <= 0.00000011920929;
  }

  else
  {
    v18 = 1;
  }

  if (!v18 && v16 > 0.00000011920929)
  {
    v20 = [MEMORY[0x277D75208] bezierPathWithRect:{x, y, width, height}];
    v21 = MEMORY[0x277D75208];
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    v58 = CGRectInset(v57, v11, v11);
    v22 = [v21 bezierPathWithRect:{v58.origin.x, v58.origin.y, v58.size.width, v58.size.height}];
    [v20 appendPath:v22];

    [v20 setUsesEvenOddFillRule:1];
    v23 = [borderColor colorWithAlphaComponent:v17];
    [v23 setFill];

    [v20 fillWithBlendMode:0 alpha:1.0];
  }

  dropShadowColor = [(MPUBorderConfiguration *)self->_borderConfiguration dropShadowColor];
  [(MPUBorderConfiguration *)self->_borderConfiguration dropShadowAlpha];
  v26 = v25;
  [(MPUBorderConfiguration *)self->_borderConfiguration dropShadowWidth];
  v28 = v27;
  dropShadowEdges = [(MPUBorderConfiguration *)self->_borderConfiguration dropShadowEdges];
  if (dropShadowColor)
  {
    v30 = v28 <= 0.00000011920929;
  }

  else
  {
    v30 = 1;
  }

  if (!v30 && v26 > 0.00000011920929 && dropShadowEdges != 0)
  {
    v33 = dropShadowEdges;
    v34 = [dropShadowColor colorWithAlphaComponent:v26];
    [v34 setFill];

    if (v33)
    {
      v59.origin.x = x;
      v59.origin.y = y;
      v59.size.width = width;
      v59.size.height = height;
      MinX = CGRectGetMinX(v59);
      if ((v33 & 2) != 0)
      {
        v36 = v28;
      }

      else
      {
        v36 = 0.0;
      }

      v37 = MinX - v36;
      v60.origin.x = x;
      v60.origin.y = y;
      v60.size.width = width;
      v60.size.height = height;
      v38 = CGRectGetMinY(v60) - v28;
      v61.origin.x = x;
      v61.origin.y = y;
      v61.size.width = width;
      v61.size.height = height;
      v39 = v36 + CGRectGetWidth(v61);
      v40 = 0.0;
      if ((v33 & 8) != 0)
      {
        v40 = v28;
      }

      v62.size.width = v40 + v39;
      v62.origin.x = v37;
      v62.origin.y = v38;
      v62.size.height = v28;
      UIRectFillUsingBlendMode(v62, kCGBlendModeNormal);
    }

    if ((v33 & 4) != 0)
    {
      v63.origin.x = x;
      v63.origin.y = y;
      v63.size.width = width;
      v63.size.height = height;
      v41 = CGRectGetMinX(v63);
      if ((v33 & 2) != 0)
      {
        v42 = v28;
      }

      else
      {
        v42 = 0.0;
      }

      v43 = v41 - v42;
      v64.origin.x = x;
      v64.origin.y = y;
      v64.size.width = width;
      v64.size.height = height;
      MaxY = CGRectGetMaxY(v64);
      v65.origin.x = x;
      v65.origin.y = y;
      v65.size.width = width;
      v65.size.height = height;
      v45 = v42 + CGRectGetWidth(v65);
      v46 = 0.0;
      if ((v33 & 8) != 0)
      {
        v46 = v28;
      }

      v66.size.width = v46 + v45;
      v66.origin.x = v43;
      v66.origin.y = MaxY;
      v66.size.height = v28;
      UIRectFillUsingBlendMode(v66, kCGBlendModeNormal);
      if ((v33 & 2) == 0)
      {
        goto LABEL_41;
      }
    }

    else if ((v33 & 2) == 0)
    {
LABEL_41:
      if ((v33 & 8) != 0)
      {
        v71.origin.x = x;
        v71.origin.y = y;
        v71.size.width = width;
        v71.size.height = height;
        MaxX = CGRectGetMaxX(v71);
        v72.origin.x = x;
        v72.origin.y = y;
        v72.size.width = width;
        v72.size.height = height;
        MinY = CGRectGetMinY(v72);
        v73.origin.x = x;
        v73.origin.y = y;
        v73.size.width = width;
        v73.size.height = height;
        v74.size.height = CGRectGetHeight(v73);
        v74.origin.x = MaxX;
        v74.origin.y = MinY;
        v74.size.width = v28;
        UIRectFillUsingBlendMode(v74, kCGBlendModeNormal);
      }

      goto LABEL_43;
    }

    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    v47 = CGRectGetMinX(v67) - v28;
    v68.origin.x = x;
    v68.origin.y = y;
    v68.size.width = width;
    v68.size.height = height;
    v48 = CGRectGetMinY(v68);
    v69.origin.x = x;
    v69.origin.y = y;
    v69.size.width = width;
    v69.size.height = height;
    v70.size.height = CGRectGetHeight(v69);
    v70.origin.x = v47;
    v70.origin.y = v48;
    v70.size.width = v28;
    UIRectFillUsingBlendMode(v70, kCGBlendModeNormal);
    goto LABEL_41;
  }

LABEL_43:
}

@end