@interface PBBridgeProgressView
- (CGSize)_size;
- (PBBridgeProgressView)initWithStyle:(unint64_t)style andVersion:(unint64_t)version overrideSize:(unint64_t)size;
- (double)_tickLength;
- (void)drawRect:(CGRect)rect;
@end

@implementation PBBridgeProgressView

- (PBBridgeProgressView)initWithStyle:(unint64_t)style andVersion:(unint64_t)version overrideSize:(unint64_t)size
{
  v35[2] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = PBBridgeProgressView;
  v8 = [(PBBridgeProgressView *)&v34 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = v8;
  if (v8)
  {
    v8->_style = style;
    v8->_version = version;
    v8->_tickCount = 100;
    if (size)
    {
      v8->_watchSize = size;
    }

    else
    {
      v10 = +[PBBridgeWatchAttributeController sharedDeviceController];
      v9->_watchSize = [v10 size];
    }

    if (version == 1)
    {
      v11 = [@"syncLogo" stringByAppendingString:@"-v2"];
    }

    else
    {
      v11 = @"syncLogo";
    }

    if (v9->_style)
    {
      v12 = @"syncGizmoLogo";
    }

    else
    {
      v12 = v11;
    }

    v13 = [PBBridgeWatchAttributeController resourceString:v12 material:0 size:7 forAttributes:4];
    if (v9->_style != 2)
    {
      v14 = objc_alloc(MEMORY[0x277D755E8]);
      v15 = MEMORY[0x277D755B8];
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v15 imageNamed:v13 inBundle:v16];
      v18 = [v14 initWithImage:v17];
      appleLogo = v9->_appleLogo;
      v9->_appleLogo = v18;

      [(UIImageView *)v9->_appleLogo setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PBBridgeProgressView *)v9 addSubview:v9->_appleLogo];
      v33 = v11;
      v20 = v13;
      v21 = MEMORY[0x277CCAAD0];
      centerXAnchor = [(UIImageView *)v9->_appleLogo centerXAnchor];
      centerXAnchor2 = [(PBBridgeProgressView *)v9 centerXAnchor];
      v24 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v35[0] = v24;
      centerYAnchor = [(UIImageView *)v9->_appleLogo centerYAnchor];
      centerYAnchor2 = [(PBBridgeProgressView *)v9 centerYAnchor];
      v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v35[1] = v27;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
      v29 = v21;
      v13 = v20;
      v11 = v33;
      [v29 activateConstraints:v28];
    }

    greenColor = [MEMORY[0x277D75348] greenColor];
    [(PBBridgeProgressView *)v9 setBackgroundColor:greenColor];
  }

  v31 = *MEMORY[0x277D85DE8];
  return v9;
}

- (double)_tickLength
{
  if (self->_style == 2)
  {
    return 6.0;
  }

  watchSize = self->_watchSize;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v5 = v4;

  v6 = watchSize - 1;
  if (v5 <= 2.0)
  {
    result = 0.0;
    if (v6 >= 0x19)
    {
      return result;
    }

    v8 = &unk_25DEB4FF8;
  }

  else
  {
    result = 0.0;
    if (v6 >= 0x19)
    {
      return result;
    }

    v8 = &unk_25DEB4F30;
  }

  return v8[v6];
}

- (void)drawRect:(CGRect)rect
{
  v32 = *MEMORY[0x277D85DE8];
  CurrentContext = UIGraphicsGetCurrentContext();
  style = self->_style;
  [(PBBridgeProgressView *)self _size];
  v7 = v6;
  v9 = v8;
  blackColor = [MEMORY[0x277D75348] blackColor];
  [blackColor setFill];

  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = v7;
  v33.size.height = v9;
  CGContextFillRect(CurrentContext, v33);
  v11 = 2.0;
  if (style != 1)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v11 = 2.0 / v13;
  }

  v14 = v7 * 0.5;
  [(PBBridgeProgressView *)self _tickLength];
  v16 = v15;
  CGContextSaveGState(CurrentContext);
  *components = xmmword_25DEB4EF0;
  v31 = unk_25DEB4F00;
  tickCount = self->_tickCount;
  v28 = xmmword_25DEB4F10;
  v29 = unk_25DEB4F20;
  if (self->_style == 2)
  {
    v18 = 36;
  }

  else
  {
    v18 = tickCount;
  }

  if (self->_style == 2)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 100.0 / tickCount;
  }

  if (style == 1)
  {
    CGContextSetLineWidth(CurrentContext, v19);
  }

  else
  {
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];
    CGContextSetLineWidth(CurrentContext, v19 * (2.0 / v21));
  }

  CGContextTranslateCTM(CurrentContext, v14, v9 * 0.5);
  CGContextRotateCTM(CurrentContext, 3.14159265);
  currentProgress = self->_currentProgress;
  CGContextSetStrokeColor(CurrentContext, components);
  if (v18 >= 1)
  {
    v23 = 0;
    v24 = 0;
    v25 = currentProgress * v18;
    v26 = llroundf(v25);
    do
    {
      if (v23 > v26 && (v24 & 1) == 0)
      {
        CGContextSetStrokeColor(CurrentContext, &v28);
        v24 = 1;
      }

      CGContextMoveToPoint(CurrentContext, 0.0, v14 - v16 * v11);
      CGContextAddLineToPoint(CurrentContext, 0.0, v14);
      CGContextStrokePath(CurrentContext);
      CGContextRotateCTM(CurrentContext, 6.28318531 / v18);
      ++v23;
    }

    while (v18 != v23);
  }

  CGContextRestoreGState(CurrentContext);
  v27 = *MEMORY[0x277D85DE8];
}

- (CGSize)_size
{
  watchSize = self->_watchSize;
  style = self->_style;
  if (style == 2)
  {
    v11 = 40.0;
    if (watchSize != 2)
    {
      v11 = 44.0;
    }

    goto LABEL_22;
  }

  if (!style)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v6 = v5;

    if (v6 <= 2.0)
    {
      if (watchSize == 25 || watchSize == 19)
      {
        v11 = 111.5;
      }

      else
      {
        v11 = 101.5;
      }
    }

    else if (watchSize == 25 || watchSize == 19)
    {
      v11 = 112.666667;
    }

    else
    {
      v11 = 102.0;
    }

LABEL_22:
    v8 = v11;
    goto LABEL_23;
  }

  v8 = *MEMORY[0x277CBF3A8];
  v11 = *(MEMORY[0x277CBF3A8] + 8);
  v9 = watchSize - 1;
  if (watchSize - 1 <= 0x18 && ((0x11C30C3u >> v9) & 1) != 0)
  {
    v11 = dbl_25DEB50C0[v9];
    v8 = dbl_25DEB5188[v9];
  }

LABEL_23:
  result.height = v11;
  result.width = v8;
  return result;
}

@end