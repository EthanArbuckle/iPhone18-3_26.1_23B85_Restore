@interface NTKRichComplicationDialView
- (NTKRichComplicationDialView)initWithLargeTickCount:(int64_t)count smallTickCountPerLargeTick:(int64_t)tick largeTickSize:(CGSize)size smallTickSize:(CGSize)tickSize dialRange:(double)range startAngle:(double)angle;
- (void)_updateTicksRotationTransform;
- (void)layoutSubviews;
- (void)setLargeTicksTransformAngle:(double)angle;
- (void)setProgress:(float)progress;
- (void)setProgressDirection:(float)direction;
- (void)setTickColor:(id)color;
@end

@implementation NTKRichComplicationDialView

- (NTKRichComplicationDialView)initWithLargeTickCount:(int64_t)count smallTickCountPerLargeTick:(int64_t)tick largeTickSize:(CGSize)size smallTickSize:(CGSize)tickSize dialRange:(double)range startAngle:(double)angle
{
  height = tickSize.height;
  width = tickSize.width;
  v13 = size.height;
  v14 = size.width;
  v40.receiver = self;
  v40.super_class = NTKRichComplicationDialView;
  v16 = [(NTKRichComplicationDialView *)&v40 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v16)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(NTKRichComplicationDialView *)v16 setBackgroundColor:clearColor];

    v16->_progress = 1.0;
    v16->_progressDirection = 1.0;
    layer = [(NTKRichComplicationDialView *)v16 layer];
    v16->_largeTickCount = count;
    v16->_smallTickCountPerLargeTick = tick;
    v19 = objc_opt_new();
    largeTicksReplicatorLayer = v16->_largeTicksReplicatorLayer;
    v16->_largeTicksReplicatorLayer = v19;

    v21 = *MEMORY[0x277CDA230];
    [(CAReplicatorLayer *)v16->_largeTicksReplicatorLayer setFillMode:*MEMORY[0x277CDA230]];
    [(CAReplicatorLayer *)v16->_largeTicksReplicatorLayer setInstanceCount:count];
    v22 = v16->_largeTicksReplicatorLayer;
    CATransform3DMakeRotation(&v39, angle, 0.0, 0.0, 1.0);
    [(CAReplicatorLayer *)v22 setTransform:&v39];
    v23 = v16->_largeTicksReplicatorLayer;
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    -[CAReplicatorLayer setBackgroundColor:](v23, "setBackgroundColor:", [clearColor2 CGColor]);

    [layer addSublayer:v16->_largeTicksReplicatorLayer];
    v25 = objc_opt_new();
    largeTickLayer = v16->_largeTickLayer;
    v16->_largeTickLayer = v25;

    v27 = v16->_largeTickLayer;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    -[CALayer setBackgroundColor:](v27, "setBackgroundColor:", [whiteColor CGColor]);

    [(CALayer *)v16->_largeTickLayer setBounds:0.0, 0.0, v14, v13];
    [(CALayer *)v16->_largeTickLayer setCornerRadius:v14 * 0.5];
    [(CAReplicatorLayer *)v16->_largeTicksReplicatorLayer addSublayer:v16->_largeTickLayer];
    v16->_largeTickPositionY = v13 * 0.5;
    if (width != *MEMORY[0x277CBF3A8] || height != *(MEMORY[0x277CBF3A8] + 8))
    {
      v29 = objc_opt_new();
      smallTicksReplicatorLayer = v16->_smallTicksReplicatorLayer;
      v16->_smallTicksReplicatorLayer = v29;

      [(CAReplicatorLayer *)v16->_smallTicksReplicatorLayer setFillMode:v21];
      [(CAReplicatorLayer *)v16->_smallTicksReplicatorLayer setInstanceCount:v16->_smallTickCountPerLargeTick * count];
      v31 = v16->_smallTicksReplicatorLayer;
      CATransform3DMakeRotation(&v39, angle, 0.0, 0.0, 1.0);
      [(CAReplicatorLayer *)v31 setTransform:&v39];
      v32 = v16->_smallTicksReplicatorLayer;
      clearColor3 = [MEMORY[0x277D75348] clearColor];
      -[CAReplicatorLayer setBackgroundColor:](v32, "setBackgroundColor:", [clearColor3 CGColor]);

      [(CAReplicatorLayer *)v16->_smallTicksReplicatorLayer setCompositingFilter:@"maximum"];
      [layer insertSublayer:v16->_smallTicksReplicatorLayer below:v16->_largeTicksReplicatorLayer];
      v34 = objc_opt_new();
      smallTickLayer = v16->_smallTickLayer;
      v16->_smallTickLayer = v34;

      v36 = v16->_smallTickLayer;
      whiteColor2 = [MEMORY[0x277D75348] whiteColor];
      -[CALayer setBackgroundColor:](v36, "setBackgroundColor:", [whiteColor2 CGColor]);

      [(CALayer *)v16->_smallTickLayer setBounds:0.0, 0.0, width, height];
      [(CALayer *)v16->_smallTickLayer setCornerRadius:width * 0.5];
      [(CAReplicatorLayer *)v16->_smallTicksReplicatorLayer addSublayer:v16->_smallTickLayer];
      v16->_smallTickPositionY = height * 0.5;
    }

    [(NTKRichComplicationDialView *)v16 setLargeTicksTransformAngle:range / count];
  }

  return v16;
}

- (void)setProgress:(float)progress
{
  if (self->_progress != progress)
  {
    self->_progress = progress;
    v4 = ((progress * self->_largeTickCount) + 1.0);
    largeTickLayer = self->_largeTickLayer;
    if (v4)
    {
      [(CALayer *)largeTickLayer setHidden:0];
      [(CAReplicatorLayer *)self->_largeTicksReplicatorLayer setInstanceCount:v4];
    }

    else
    {
      [(CALayer *)largeTickLayer setHidden:1];
    }

    if (self->_smallTicksReplicatorLayer)
    {
      v6 = (((self->_progress * self->_largeTickCount) * self->_smallTickCountPerLargeTick) + 1.0);
      smallTickLayer = self->_smallTickLayer;
      if (v6)
      {
        [(CALayer *)smallTickLayer setHidden:0];
        smallTicksReplicatorLayer = self->_smallTicksReplicatorLayer;

        [(CAReplicatorLayer *)smallTicksReplicatorLayer setInstanceCount:v6];
      }

      else
      {

        [(CALayer *)smallTickLayer setHidden:1];
      }
    }
  }
}

- (void)setProgressDirection:(float)direction
{
  v3 = direction < 0.0;
  v4 = 1.0;
  if (v3)
  {
    v4 = -1.0;
  }

  if (self->_progressDirection != v4)
  {
    self->_progressDirection = v4;
    [(NTKRichComplicationDialView *)self _updateTicksRotationTransform];
  }
}

- (void)setLargeTicksTransformAngle:(double)angle
{
  if (self->_largeTicksTransformAngle != angle)
  {
    self->_largeTicksTransformAngle = angle;
    [(NTKRichComplicationDialView *)self _updateTicksRotationTransform];
  }
}

- (void)_updateTicksRotationTransform
{
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v3 = self->_largeTicksTransformAngle * self->_progressDirection;
  largeTicksReplicatorLayer = self->_largeTicksReplicatorLayer;
  CATransform3DMakeRotation(&v6, v3, 0.0, 0.0, 1.0);
  [(CAReplicatorLayer *)largeTicksReplicatorLayer setInstanceTransform:&v6];
  smallTicksReplicatorLayer = self->_smallTicksReplicatorLayer;
  if (smallTicksReplicatorLayer)
  {
    CATransform3DMakeRotation(&v6, v3 / self->_smallTickCountPerLargeTick, 0.0, 0.0, 1.0);
    [(CAReplicatorLayer *)smallTicksReplicatorLayer setInstanceTransform:&v6];
  }

  [MEMORY[0x277CD9FF0] setDisableActions:0];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = NTKRichComplicationDialView;
  [(NTKRichComplicationDialView *)&v15 layoutSubviews];
  layer = [(NTKRichComplicationDialView *)self layer];
  [layer bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v8 * 0.5;
  v13 = v10 * 0.5;
  [(CAReplicatorLayer *)self->_largeTicksReplicatorLayer setPosition:v8 * 0.5, v10 * 0.5];
  [(CAReplicatorLayer *)self->_largeTicksReplicatorLayer setBounds:v5, v7, v9, v11];
  [(CALayer *)self->_largeTickLayer setPosition:v12, self->_largeTickPositionY];
  smallTicksReplicatorLayer = self->_smallTicksReplicatorLayer;
  if (smallTicksReplicatorLayer)
  {
    [(CAReplicatorLayer *)smallTicksReplicatorLayer setPosition:v12, v13];
    [(CAReplicatorLayer *)self->_smallTicksReplicatorLayer setBounds:v5, v7, v9, v11];
    [(CALayer *)self->_smallTickLayer setPosition:v12, self->_smallTickPositionY];
  }
}

- (void)setTickColor:(id)color
{
  smallTickLayer = self->_smallTickLayer;
  colorCopy = color;
  colorCopy2 = color;
  -[CALayer setBackgroundColor:](smallTickLayer, "setBackgroundColor:", [colorCopy2 CGColor]);
  largeTickLayer = self->_largeTickLayer;
  cGColor = [colorCopy2 CGColor];

  [(CALayer *)largeTickLayer setBackgroundColor:cGColor];
}

@end