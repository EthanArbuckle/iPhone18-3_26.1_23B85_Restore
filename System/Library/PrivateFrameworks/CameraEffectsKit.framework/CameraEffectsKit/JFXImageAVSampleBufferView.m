@interface JFXImageAVSampleBufferView
- (JFXImageAVSampleBufferView)initWithCoder:(id)a3;
- (JFXImageAVSampleBufferView)initWithFrame:(CGRect)a3;
- (opaqueCMSampleBuffer)createCMSampleBufferFromJTImage;
- (void)JFXImageAVSampleBufferView_commonInit;
- (void)drawSampleBufferToLayer:(opaqueCMSampleBuffer *)a3;
- (void)setContentMode:(int64_t)a3;
- (void)setEnableDebugDrawing:(BOOL)a3;
- (void)setFlipX:(BOOL)a3;
- (void)setFlipY:(BOOL)a3;
- (void)setJtImage:(id)a3;
- (void)setRenderingType:(int64_t)a3;
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
  v4 = [(JFXImageAVSampleBufferView *)self sampleBufferDisplayLayer];
  [v4 setVideoGravity:v3];

  v5 = [(JFXImageAVSampleBufferView *)self layer];
  [v5 setMasksToBounds:1];

  self->_enableDebugDrawing = JFXImageAVSampleBufferView_commonInit_s_enableDebugDrawing;
  [(JFXImageAVSampleBufferView *)self setRenderingType:-1];
  if (JFX_isShowHDRBadgeInPreviewEnabled())
  {
    v6 = objc_opt_new();
    [(JFXImageAVSampleBufferView *)self setHdrBadgeDebug:v6];

    v7 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    [v7 setText:@"HDR"];

    v8 = [MEMORY[0x277D75348] whiteColor];
    v9 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    [v9 setTextColor:v8];

    v10 = [MEMORY[0x277D74300] systemFontOfSize:24.0];
    v11 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    [v11 setFont:v10];

    v12 = [MEMORY[0x277D75348] clearColor];
    v13 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    [v13 setBackgroundColor:v12];

    v14 = [MEMORY[0x277D75348] blackColor];
    v15 = [v14 CGColor];
    v16 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    v17 = [v16 layer];
    [v17 setShadowColor:v15];

    v18 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    v19 = [v18 layer];
    [v19 setShadowOffset:{1.0, 1.0}];

    v20 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    v21 = [v20 layer];
    LODWORD(v22) = 1.0;
    [v21 setShadowOpacity:v22];

    v23 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    v24 = [v23 layer];
    [v24 setShadowRadius:3.0];

    v25 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    [(JFXImageAVSampleBufferView *)self addSubview:v25];

    v26 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    [v26 sizeToFit];

    v27 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    [v27 frame];
    v29 = v28;
    v31 = v30;

    v32 = [(JFXImageAVSampleBufferView *)self hdrBadgeDebug];
    [v32 setFrame:{20.0, 20.0, v29, v31}];
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

- (JFXImageAVSampleBufferView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = JFXImageAVSampleBufferView;
  v3 = [(JFXImageAVSampleBufferView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(JFXImageAVSampleBufferView *)v3 JFXImageAVSampleBufferView_commonInit];
  }

  return v4;
}

- (JFXImageAVSampleBufferView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = JFXImageAVSampleBufferView;
  v3 = [(JFXImageAVSampleBufferView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(JFXImageAVSampleBufferView *)v3 JFXImageAVSampleBufferView_commonInit];
  }

  return v4;
}

- (void)setContentMode:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = JFXImageAVSampleBufferView;
  [(JFXImageAVSampleBufferView *)&v6 setContentMode:a3];
  v4 = *MEMORY[0x277CE5DD8];
  v5 = [(JFXImageAVSampleBufferView *)self sampleBufferDisplayLayer];
  [v5 setVideoGravity:v4];
}

- (void)setJtImage:(id)a3
{
  v5 = a3;
  if (self->_jtImage != v5)
  {
    v14 = v5;
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
      v10 = [MEMORY[0x277D415E0] jfx_getColorSpaceFromPixelBuffer:v9];
      PixelFormatType = CVPixelBufferGetPixelFormatType(v9);
      if ([v10 isHDRSpace] && PixelFormatType == 2016686640)
      {
        v12 = [(JFXImageAVSampleBufferView *)self createCMSampleBufferFromJTImage];
        [(JFXImageAVSampleBufferView *)self drawSampleBufferToLayer:v12];
        CFRelease(v12);
      }
    }

    else
    {
      v13 = [(JFXImageAVSampleBufferView *)self sampleBufferDisplayLayer];
      [v13 setContents:0];

      [(JFXImageAVSampleBufferView *)self setRenderingType:-1];
    }

    v5 = v14;
  }
}

- (void)setRenderingType:(int64_t)a3
{
  if (self->_renderingType != a3)
  {
    self->_renderingType = a3;
    [(JFXImageAVSampleBufferView *)self updateDebugDrawing];
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
    v8 = [(JFXImageAVSampleBufferView *)self layer];
    v9 = v10;
    [v8 setAffineTransform:&v9];

    [(JFXImageAVSampleBufferView *)self setNeedsDisplay];
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
    v8 = [(JFXImageAVSampleBufferView *)self layer];
    v9 = v10;
    [v8 setAffineTransform:&v9];

    [(JFXImageAVSampleBufferView *)self setNeedsDisplay];
  }
}

- (void)setEnableDebugDrawing:(BOOL)a3
{
  if (self->_enableDebugDrawing != a3)
  {
    self->_enableDebugDrawing = a3;
    [(JFXImageAVSampleBufferView *)self updateDebugDrawing];
  }
}

- (void)updateDebugDrawing
{
  v3 = 0.0;
  if (self->_enableDebugDrawing)
  {
    v4 = [JFXImageView colorFromRenderingType:self->_renderingType];
    v5 = [v4 CGColor];
    v6 = [(JFXImageAVSampleBufferView *)self layer];
    [v6 setBorderColor:v5];

    v3 = 4.0;
  }

  v7 = [(JFXImageAVSampleBufferView *)self layer];
  [v7 setBorderWidth:v3];
}

- (opaqueCMSampleBuffer)createCMSampleBufferFromJTImage
{
  result = self->_jtImage;
  if (result)
  {
    v4 = [(opaqueCMSampleBuffer *)result pvImageBuffer];
    v5 = [v4 canCreateCVPixelBuffer];

    if (v5 && (sampleBufferOut = 0, -[JTImage pvImageBuffer](self->_jtImage, "pvImageBuffer"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 cvPixelBuffer], v6, v7) && (formatDescriptionOut = 0, v8 = *MEMORY[0x277CBECE8], CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x277CBECE8], v7, &formatDescriptionOut), formatDescriptionOut))
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

- (void)drawSampleBufferToLayer:(opaqueCMSampleBuffer *)a3
{
  if (a3)
  {
    v5 = [(JFXImageAVSampleBufferView *)self sampleBufferDisplayLayer];
    v4 = [v5 status];
    if (([v5 requiresFlushToResumeDecoding] & 1) != 0 || v4 == 2)
    {
      [v5 flush];
    }

    [v5 enqueueSampleBuffer:a3];
  }
}

@end