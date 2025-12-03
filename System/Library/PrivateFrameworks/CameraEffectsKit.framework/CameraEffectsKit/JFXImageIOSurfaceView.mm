@interface JFXImageIOSurfaceView
- (JFXImageIOSurfaceView)initWithCoder:(id)coder;
- (JFXImageIOSurfaceView)initWithFrame:(CGRect)frame;
- (void)JFXImageIOSurfaceView_commonInit;
- (void)setEnableDebugDrawing:(BOOL)drawing;
- (void)setFlipX:(BOOL)x;
- (void)setFlipY:(BOOL)y;
- (void)setJtImage:(id)image;
- (void)setRenderingType:(int64_t)type;
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

- (JFXImageIOSurfaceView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = JFXImageIOSurfaceView;
  v3 = [(JFXImageIOSurfaceView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(JFXImageIOSurfaceView *)v3 JFXImageIOSurfaceView_commonInit];
  }

  return v4;
}

- (JFXImageIOSurfaceView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = JFXImageIOSurfaceView;
  v3 = [(JFXImageIOSurfaceView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(JFXImageIOSurfaceView *)v3 JFXImageIOSurfaceView_commonInit];
  }

  return v4;
}

- (void)setJtImage:(id)image
{
  imageCopy = image;
  if (self->_jtImage != imageCopy)
  {
    v18 = imageCopy;
    objc_storeStrong(&self->_jtImage, image);
    jtImage = self->_jtImage;
    if (jtImage)
    {
      pvImageBuffer = [(JTImage *)jtImage pvImageBuffer];
      [pvImageBuffer canCreateCVPixelBuffer];

      jtImage = self->_jtImage;
    }

    pvImageBuffer2 = [(JTImage *)jtImage pvImageBuffer];
    cvPixelBuffer = [pvImageBuffer2 cvPixelBuffer];

    if (cvPixelBuffer)
    {
      IOSurface = CVPixelBufferGetIOSurface(cvPixelBuffer);
      layer = [(JFXImageIOSurfaceView *)self layer];
      [layer setContents:IOSurface];

      v12 = CVBufferCopyAttachment(cvPixelBuffer, *MEMORY[0x277CC4D10], 0);
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

      selfCopy2 = self;
      v17 = 0;
    }

    else
    {
      layer2 = [(JFXImageIOSurfaceView *)self layer];
      [layer2 setContents:0];

      selfCopy2 = self;
      v17 = -1;
    }

    [(JFXImageIOSurfaceView *)selfCopy2 setRenderingType:v17];
LABEL_13:
    imageCopy = v18;
  }
}

- (void)setRenderingType:(int64_t)type
{
  if (self->_renderingType != type)
  {
    self->_renderingType = type;
    [(JFXImageIOSurfaceView *)self updateDebugDrawing];
  }
}

- (void)setFlipX:(BOOL)x
{
  if (self->_flipX != x)
  {
    v11 = v3;
    v12 = v4;
    self->_flipX = x;
    v6 = 1.0;
    if (x)
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
    layer = [(JFXImageIOSurfaceView *)self layer];
    v9 = v10;
    [layer setAffineTransform:&v9];

    [(JFXImageIOSurfaceView *)self setNeedsDisplay];
  }
}

- (void)setFlipY:(BOOL)y
{
  if (self->_flipY != y)
  {
    v11 = v3;
    v12 = v4;
    self->_flipY = y;
    v6 = 1.0;
    if (self->_flipX)
    {
      v7 = -1.0;
    }

    else
    {
      v7 = 1.0;
    }

    if (y)
    {
      v6 = -1.0;
    }

    CGAffineTransformMakeScale(&v10, v7, v6);
    layer = [(JFXImageIOSurfaceView *)self layer];
    v9 = v10;
    [layer setAffineTransform:&v9];

    [(JFXImageIOSurfaceView *)self setNeedsDisplay];
  }
}

- (void)setEnableDebugDrawing:(BOOL)drawing
{
  if (self->_enableDebugDrawing != drawing)
  {
    self->_enableDebugDrawing = drawing;
    [(JFXImageIOSurfaceView *)self updateDebugDrawing];
  }
}

- (void)updateDebugDrawing
{
  v3 = 0.0;
  if (self->_enableDebugDrawing)
  {
    v4 = [JFXImageView colorFromRenderingType:self->_renderingType];
    cGColor = [v4 CGColor];
    layer = [(JFXImageIOSurfaceView *)self layer];
    [layer setBorderColor:cGColor];

    v3 = 4.0;
  }

  layer2 = [(JFXImageIOSurfaceView *)self layer];
  [layer2 setBorderWidth:v3];
}

@end