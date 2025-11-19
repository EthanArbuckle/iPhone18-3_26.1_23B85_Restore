@interface NTKRichComplicationDialView
- (NTKRichComplicationDialView)initWithLargeTickCount:(int64_t)a3 smallTickCountPerLargeTick:(int64_t)a4 largeTickSize:(CGSize)a5 smallTickSize:(CGSize)a6 dialRange:(double)a7 startAngle:(double)a8;
- (void)_updateTicksRotationTransform;
- (void)layoutSubviews;
- (void)setLargeTicksTransformAngle:(double)a3;
- (void)setProgress:(float)a3;
- (void)setProgressDirection:(float)a3;
- (void)setTickColor:(id)a3;
@end

@implementation NTKRichComplicationDialView

- (NTKRichComplicationDialView)initWithLargeTickCount:(int64_t)a3 smallTickCountPerLargeTick:(int64_t)a4 largeTickSize:(CGSize)a5 smallTickSize:(CGSize)a6 dialRange:(double)a7 startAngle:(double)a8
{
  height = a6.height;
  width = a6.width;
  v13 = a5.height;
  v14 = a5.width;
  v40.receiver = self;
  v40.super_class = NTKRichComplicationDialView;
  v16 = [(NTKRichComplicationDialView *)&v40 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v16)
  {
    v17 = [MEMORY[0x277D75348] clearColor];
    [(NTKRichComplicationDialView *)v16 setBackgroundColor:v17];

    v16->_progress = 1.0;
    v16->_progressDirection = 1.0;
    v18 = [(NTKRichComplicationDialView *)v16 layer];
    v16->_largeTickCount = a3;
    v16->_smallTickCountPerLargeTick = a4;
    v19 = objc_opt_new();
    largeTicksReplicatorLayer = v16->_largeTicksReplicatorLayer;
    v16->_largeTicksReplicatorLayer = v19;

    v21 = *MEMORY[0x277CDA230];
    [(CAReplicatorLayer *)v16->_largeTicksReplicatorLayer setFillMode:*MEMORY[0x277CDA230]];
    [(CAReplicatorLayer *)v16->_largeTicksReplicatorLayer setInstanceCount:a3];
    v22 = v16->_largeTicksReplicatorLayer;
    CATransform3DMakeRotation(&v39, a8, 0.0, 0.0, 1.0);
    [(CAReplicatorLayer *)v22 setTransform:&v39];
    v23 = v16->_largeTicksReplicatorLayer;
    v24 = [MEMORY[0x277D75348] clearColor];
    -[CAReplicatorLayer setBackgroundColor:](v23, "setBackgroundColor:", [v24 CGColor]);

    [v18 addSublayer:v16->_largeTicksReplicatorLayer];
    v25 = objc_opt_new();
    largeTickLayer = v16->_largeTickLayer;
    v16->_largeTickLayer = v25;

    v27 = v16->_largeTickLayer;
    v28 = [MEMORY[0x277D75348] whiteColor];
    -[CALayer setBackgroundColor:](v27, "setBackgroundColor:", [v28 CGColor]);

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
      [(CAReplicatorLayer *)v16->_smallTicksReplicatorLayer setInstanceCount:v16->_smallTickCountPerLargeTick * a3];
      v31 = v16->_smallTicksReplicatorLayer;
      CATransform3DMakeRotation(&v39, a8, 0.0, 0.0, 1.0);
      [(CAReplicatorLayer *)v31 setTransform:&v39];
      v32 = v16->_smallTicksReplicatorLayer;
      v33 = [MEMORY[0x277D75348] clearColor];
      -[CAReplicatorLayer setBackgroundColor:](v32, "setBackgroundColor:", [v33 CGColor]);

      [(CAReplicatorLayer *)v16->_smallTicksReplicatorLayer setCompositingFilter:@"maximum"];
      [v18 insertSublayer:v16->_smallTicksReplicatorLayer below:v16->_largeTicksReplicatorLayer];
      v34 = objc_opt_new();
      smallTickLayer = v16->_smallTickLayer;
      v16->_smallTickLayer = v34;

      v36 = v16->_smallTickLayer;
      v37 = [MEMORY[0x277D75348] whiteColor];
      -[CALayer setBackgroundColor:](v36, "setBackgroundColor:", [v37 CGColor]);

      [(CALayer *)v16->_smallTickLayer setBounds:0.0, 0.0, width, height];
      [(CALayer *)v16->_smallTickLayer setCornerRadius:width * 0.5];
      [(CAReplicatorLayer *)v16->_smallTicksReplicatorLayer addSublayer:v16->_smallTickLayer];
      v16->_smallTickPositionY = height * 0.5;
    }

    [(NTKRichComplicationDialView *)v16 setLargeTicksTransformAngle:a7 / a3];
  }

  return v16;
}

- (void)setProgress:(float)a3
{
  if (self->_progress != a3)
  {
    self->_progress = a3;
    v4 = ((a3 * self->_largeTickCount) + 1.0);
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

- (void)setProgressDirection:(float)a3
{
  v3 = a3 < 0.0;
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

- (void)setLargeTicksTransformAngle:(double)a3
{
  if (self->_largeTicksTransformAngle != a3)
  {
    self->_largeTicksTransformAngle = a3;
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
  v3 = [(NTKRichComplicationDialView *)self layer];
  [v3 bounds];
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

- (void)setTickColor:(id)a3
{
  smallTickLayer = self->_smallTickLayer;
  v6 = a3;
  v7 = a3;
  -[CALayer setBackgroundColor:](smallTickLayer, "setBackgroundColor:", [v7 CGColor]);
  largeTickLayer = self->_largeTickLayer;
  v9 = [v7 CGColor];

  [(CALayer *)largeTickLayer setBackgroundColor:v9];
}

@end