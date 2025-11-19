@interface JFXImageIOSurfaceView
- (JFXImageIOSurfaceView)initWithCoder:(id)a3;
- (JFXImageIOSurfaceView)initWithFrame:(CGRect)a3;
- (void)JFXImageIOSurfaceView_commonInit;
- (void)setEnableDebugDrawing:(BOOL)a3;
- (void)setFlipX:(BOOL)a3;
- (void)setFlipY:(BOOL)a3;
- (void)setJtImage:(id)a3;
- (void)setRenderingType:(int64_t)a3;
- (void)updateDebugDrawing;
@end

@implementation JFXImageIOSurfaceView

- (void)JFXImageIOSurfaceView_commonInit
{
  [(JFXImageIOSurfaceView *)self setUserInteractionEnabled:0];
  if (JFXImageIOSurfaceView_commonInit_onceToken != -1)
  {
    [JFXImageIOSurfaceView JFXImageIOSurfaceView_commonInit];
  }

  self->_enableDebugDrawing = JFXImageIOSurfaceView_commonInit_s_enableDebugDrawing;

  [(JFXImageIOSurfaceView *)self setRenderingType:-1];
}

void __57__JFXImageIOSurfaceView_JFXImageIOSurfaceView_commonInit__block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 valueForKey:@"JTImageViewDebugDraw"];

  if (v1)
  {
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    JFXImageIOSurfaceView_commonInit_s_enableDebugDrawing = [v2 BOOLForKey:@"JTImageViewDebugDraw"];
  }
}

- (JFXImageIOSurfaceView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = JFXImageIOSurfaceView;
  v3 = [(JFXImageIOSurfaceView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(JFXImageIOSurfaceView *)v3 JFXImageIOSurfaceView_commonInit];
  }

  return v4;
}

- (JFXImageIOSurfaceView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = JFXImageIOSurfaceView;
  v3 = [(JFXImageIOSurfaceView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(JFXImageIOSurfaceView *)v3 JFXImageIOSurfaceView_commonInit];
  }

  return v4;
}

- (void)setJtImage:(id)a3
{
  v5 = a3;
  if (self->_jtImage != v5)
  {
    v18 = v5;
    objc_storeStrong(&self->_jtImage, a3);
    jtImage = self->_jtImage;
    if (jtImage)
    {
      v7 = [(JTImage *)jtImage pvImageBuffer];
      [v7 canCreateCVPixelBuffer];

      jtImage = self->_jtImage;
    }

    v8 = [(JTImage *)jtImage pvImageBuffer];
    v9 = [v8 cvPixelBuffer];

    if (v9)
    {
      IOSurface = CVPixelBufferGetIOSurface(v9);
      v11 = [(JFXImageIOSurfaceView *)self layer];
      [v11 setContents:IOSurface];

      v12 = CVBufferCopyAttachment(v9, *MEMORY[0x277CC4D10], 0);
      if (v12)
      {
        v13 = v12;
        if (v12 == *MEMORY[0x277CC4D20])
        {
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }

        [(JFXImageIOSurfaceView *)self setRenderingType:v14];
        CFRelease(v13);
        goto LABEL_13;
      }

      v16 = self;
      v17 = 0;
    }

    else
    {
      v15 = [(JFXImageIOSurfaceView *)self layer];
      [v15 setContents:0];

      v16 = self;
      v17 = -1;
    }

    [(JFXImageIOSurfaceView *)v16 setRenderingType:v17];
LABEL_13:
    v5 = v18;
  }
}

- (void)setRenderingType:(int64_t)a3
{
  if (self->_renderingType != a3)
  {
    self->_renderingType = a3;
    [(JFXImageIOSurfaceView *)self updateDebugDrawing];
  }
}

- (void)setFlipX:(BOOL)a3
{
  if (self->_flipX != a3)
  {
    v11 = v3;
    v12 = v4;
    self->_flipX = a3;
    v6 = 1.0;
    if (a3)
    {
      v7 = -1.0;
    }

    else
    {
      v7 = 1.0;
    }

    if (self->_flipY)
    {
      v6 = -1.0;
    }

    CGAffineTransformMakeScale(&v10, v7, v6);
    v8 = [(JFXImageIOSurfaceView *)self layer];
    v9 = v10;
    [v8 setAffineTransform:&v9];

    [(JFXImageIOSurfaceView *)self setNeedsDisplay];
  }
}

- (void)setFlipY:(BOOL)a3
{
  if (self->_flipY != a3)
  {
    v11 = v3;
    v12 = v4;
    self->_flipY = a3;
    v6 = 1.0;
    if (self->_flipX)
    {
      v7 = -1.0;
    }

    else
    {
      v7 = 1.0;
    }

    if (a3)
    {
      v6 = -1.0;
    }

    CGAffineTransformMakeScale(&v10, v7, v6);
    v8 = [(JFXImageIOSurfaceView *)self layer];
    v9 = v10;
    [v8 setAffineTransform:&v9];

    [(JFXImageIOSurfaceView *)self setNeedsDisplay];
  }
}

- (void)setEnableDebugDrawing:(BOOL)a3
{
  if (self->_enableDebugDrawing != a3)
  {
    self->_enableDebugDrawing = a3;
    [(JFXImageIOSurfaceView *)self updateDebugDrawing];
  }
}

- (void)updateDebugDrawing
{
  v3 = 0.0;
  if (self->_enableDebugDrawing)
  {
    v4 = [JFXImageView colorFromRenderingType:self->_renderingType];
    v5 = [v4 CGColor];
    v6 = [(JFXImageIOSurfaceView *)self layer];
    [v6 setBorderColor:v5];

    v3 = 4.0;
  }

  v7 = [(JFXImageIOSurfaceView *)self layer];
  [v7 setBorderWidth:v3];
}

@end