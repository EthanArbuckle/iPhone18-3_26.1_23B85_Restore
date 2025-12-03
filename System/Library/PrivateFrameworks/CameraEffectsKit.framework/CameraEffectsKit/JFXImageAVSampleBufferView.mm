@interface JFXImageAVSampleBufferView
- (JFXImageAVSampleBufferView)initWithCoder:(id)coder;
- (JFXImageAVSampleBufferView)initWithFrame:(CGRect)frame;
- (opaqueCMSampleBuffer)createCMSampleBufferFromJTImage;
- (void)JFXImageAVSampleBufferView_commonInit;
- (void)drawSampleBufferToLayer:(opaqueCMSampleBuffer *)layer;
- (void)setContentMode:(int64_t)mode;
- (void)setEnableDebugDrawing:(BOOL)drawing;
- (void)setFlipX:(BOOL)x;
- (void)setFlipY:(BOOL)y;
- (void)setJtImage:(id)image;
- (void)setRenderingType:(int64_t)type;
- (void)updateDebugDrawing;
@end

@implementation JFXImageAVSampleBufferView

- (void)JFXImageAVSampleBufferView_commonInit
{
  [(JFXImageAVSampleBufferView *)self setUserInteractionEnabled:0];
  if (JFXImageAVSampleBufferView_commonInit_onceToken != -1)
  {
    [JFXImageAVSampleBufferView JFXImageAVSampleBufferView_commonInit];
  }

  v3 = *MEMORY[0x277CE5DD0];
  sampleBufferDisplayLayer = [(JFXImageAVSampleBufferView *)self sampleBufferDisplayLayer];
  [sampleBufferDisplayLayer setVideoGravity:v3];

  layer = [(JFXImageAVSampleBufferView *)self layer];
  [layer setMasksToBounds:1];

  self->_enableDebugDrawing = JFXImageAVSampleBufferView_commonInit_s_enableDebugDrawing;
  [(JFXImageAVSampleBufferView *)self setRenderingType:-1];
  if (JFX_isShowHDRBadgeInPreviewEnabled())
  {
    v6 = objc_opt_new();
    [(JFXImageAVSampleBufferView *)self setHdrBadgeDebug:v6];

    hdrBadgeDebug = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    [hdrBadgeDebug setText:@"HDR"];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    hdrBadgeDebug2 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    [hdrBadgeDebug2 setTextColor:whiteColor];

    v10 = [MEMORY[0x277D74300] systemFontOfSize:24.0];
    hdrBadgeDebug3 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    [hdrBadgeDebug3 setFont:v10];

    clearColor = [MEMORY[0x277D75348] clearColor];
    hdrBadgeDebug4 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    [hdrBadgeDebug4 setBackgroundColor:clearColor];

    blackColor = [MEMORY[0x277D75348] blackColor];
    cGColor = [blackColor CGColor];
    hdrBadgeDebug5 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    layer2 = [hdrBadgeDebug5 layer];
    [layer2 setShadowColor:cGColor];

    hdrBadgeDebug6 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    layer3 = [hdrBadgeDebug6 layer];
    [layer3 setShadowOffset:{1.0, 1.0}];

    hdrBadgeDebug7 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    layer4 = [hdrBadgeDebug7 layer];
    LODWORD(v22) = 1.0;
    [layer4 setShadowOpacity:v22];

    hdrBadgeDebug8 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    layer5 = [hdrBadgeDebug8 layer];
    [layer5 setShadowRadius:3.0];

    hdrBadgeDebug9 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    [(JFXImageAVSampleBufferView *)self addSubview:hdrBadgeDebug9];

    hdrBadgeDebug10 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    [hdrBadgeDebug10 sizeToFit];

    hdrBadgeDebug11 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    [hdrBadgeDebug11 frame];
    v29 = v28;
    v31 = v30;

    hdrBadgeDebug12 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    [hdrBadgeDebug12 setFrame:{20.0, 20.0, v29, v31}];
  }
}

void __67__JFXImageAVSampleBufferView_JFXImageAVSampleBufferView_commonInit__block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 valueForKey:@"JTImageViewDebugDraw"];

  if (v1)
  {
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    JFXImageAVSampleBufferView_commonInit_s_enableDebugDrawing = [v2 BOOLForKey:@"JTImageViewDebugDraw"];
  }
}

- (JFXImageAVSampleBufferView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = JFXImageAVSampleBufferView;
  v3 = [(JFXImageAVSampleBufferView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(JFXImageAVSampleBufferView *)v3 JFXImageAVSampleBufferView_commonInit];
  }

  return v4;
}

- (JFXImageAVSampleBufferView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = JFXImageAVSampleBufferView;
  v3 = [(JFXImageAVSampleBufferView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(JFXImageAVSampleBufferView *)v3 JFXImageAVSampleBufferView_commonInit];
  }

  return v4;
}

- (void)setContentMode:(int64_t)mode
{
  v6.receiver = self;
  v6.super_class = JFXImageAVSampleBufferView;
  [(JFXImageAVSampleBufferView *)&v6 setContentMode:mode];
  v4 = *MEMORY[0x277CE5DD8];
  sampleBufferDisplayLayer = [(JFXImageAVSampleBufferView *)self sampleBufferDisplayLayer];
  [sampleBufferDisplayLayer setVideoGravity:v4];
}

- (void)setJtImage:(id)image
{
  imageCopy = image;
  if (self->_jtImage != imageCopy)
  {
    v14 = imageCopy;
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
      v10 = [MEMORY[0x277D415E0] jfx_getColorSpaceFromPixelBuffer:cvPixelBuffer];
      PixelFormatType = CVPixelBufferGetPixelFormatType(cvPixelBuffer);
      if ([v10 isHDRSpace] && PixelFormatType == 2016686640)
      {
        createCMSampleBufferFromJTImage = [(JFXImageAVSampleBufferView *)self createCMSampleBufferFromJTImage];
        [(JFXImageAVSampleBufferView *)self drawSampleBufferToLayer:createCMSampleBufferFromJTImage];
        CFRelease(createCMSampleBufferFromJTImage);
      }
    }

    else
    {
      sampleBufferDisplayLayer = [(JFXImageAVSampleBufferView *)self sampleBufferDisplayLayer];
      [sampleBufferDisplayLayer setContents:0];

      [(JFXImageAVSampleBufferView *)self setRenderingType:-1];
    }

    imageCopy = v14;
  }
}

- (void)setRenderingType:(int64_t)type
{
  if (self->_renderingType != type)
  {
    self->_renderingType = type;
    [(JFXImageAVSampleBufferView *)self updateDebugDrawing];
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
    layer = [(JFXImageAVSampleBufferView *)self layer];
    v9 = v10;
    [layer setAffineTransform:&v9];

    [(JFXImageAVSampleBufferView *)self setNeedsDisplay];
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
    layer = [(JFXImageAVSampleBufferView *)self layer];
    v9 = v10;
    [layer setAffineTransform:&v9];

    [(JFXImageAVSampleBufferView *)self setNeedsDisplay];
  }
}

- (void)setEnableDebugDrawing:(BOOL)drawing
{
  if (self->_enableDebugDrawing != drawing)
  {
    self->_enableDebugDrawing = drawing;
    [(JFXImageAVSampleBufferView *)self updateDebugDrawing];
  }
}

- (void)updateDebugDrawing
{
  v3 = 0.0;
  if (self->_enableDebugDrawing)
  {
    v4 = [JFXImageView colorFromRenderingType:self->_renderingType];
    cGColor = [v4 CGColor];
    layer = [(JFXImageAVSampleBufferView *)self layer];
    [layer setBorderColor:cGColor];

    v3 = 4.0;
  }

  layer2 = [(JFXImageAVSampleBufferView *)self layer];
  [layer2 setBorderWidth:v3];
}

- (opaqueCMSampleBuffer)createCMSampleBufferFromJTImage
{
  result = self->_jtImage;
  if (result)
  {
    pvImageBuffer = [(opaqueCMSampleBuffer *)result pvImageBuffer];
    canCreateCVPixelBuffer = [pvImageBuffer canCreateCVPixelBuffer];

    if (canCreateCVPixelBuffer && (sampleBufferOut = 0, -[JTImage pvImageBuffer](self->_jtImage, "pvImageBuffer"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 cvPixelBuffer], v6, v7) && (formatDescriptionOut = 0, v8 = *MEMORY[0x277CBECE8], CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x277CBECE8], v7, &formatDescriptionOut), formatDescriptionOut))
    {
      *&v11.duration.value = *MEMORY[0x277CC08F0];
      v11.duration.epoch = *(MEMORY[0x277CC08F0] + 16);
      v11.presentationTimeStamp = v11.duration;
      v11.decodeTimeStamp = **&MEMORY[0x277CC0898];
      CMSampleBufferCreateForImageBuffer(v8, v7, 1u, 0, 0, formatDescriptionOut, &v11, &sampleBufferOut);
      if (sampleBufferOut)
      {
        v9 = CMSampleBufferGetSampleAttachmentsArray(sampleBufferOut, 1u);
        v10 = [v9 objectAtIndexedSubscript:0];
        [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CC0648]];
      }

      CFRelease(formatDescriptionOut);
      return sampleBufferOut;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)drawSampleBufferToLayer:(opaqueCMSampleBuffer *)layer
{
  if (layer)
  {
    sampleBufferDisplayLayer = [(JFXImageAVSampleBufferView *)self sampleBufferDisplayLayer];
    status = [sampleBufferDisplayLayer status];
    if (([sampleBufferDisplayLayer requiresFlushToResumeDecoding] & 1) != 0 || status == 2)
    {
      [sampleBufferDisplayLayer flush];
    }

    [sampleBufferDisplayLayer enqueueSampleBuffer:layer];
  }
}

@end