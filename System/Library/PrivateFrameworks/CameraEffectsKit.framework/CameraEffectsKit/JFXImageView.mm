@interface JFXImageView
+ (BOOL)normalizedQuadVertices:(id *)vertices viewSize:(CGSize)size textureSize:(CGSize)textureSize contentMode:(int64_t)mode;
+ (id)colorFromImageViewType:(int64_t)type;
+ (id)colorFromRenderingType:(int64_t)type;
- (JFXImageView)initWithCoder:(id)coder;
- (JFXImageView)initWithFrame:(CGRect)frame;
- (id)stringFromImageViewType:(int64_t)type;
- (int64_t)preferredImageViewTypeForImage:(id)image;
- (void)JFXImageView_commonInit;
- (void)flipX;
- (void)reconfigureImageView;
- (void)setContentMode:(int64_t)mode;
- (void)setCurrentImageViewType:(int64_t)type;
- (void)setDisableIOSurface:(BOOL)surface;
- (void)setDisableMetalKit:(BOOL)kit;
- (void)setEnableDebugDrawing:(BOOL)drawing;
- (void)setImageViewType:(int64_t)type;
- (void)setJtImage:(id)image;
- (void)setPreferIOSurfaceForYUV:(BOOL)v;
- (void)setPreferMetalKit:(BOOL)kit;
- (void)updateDebugDrawing;
- (void)updateImageViewImage;
@end

@implementation JFXImageView

- (JFXImageView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = JFXImageView;
  v3 = [(JFXImageView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(JFXImageView *)v3 JFXImageView_commonInit];
  }

  return v4;
}

- (JFXImageView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = JFXImageView;
  v3 = [(JFXImageView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(JFXImageView *)v3 JFXImageView_commonInit];
  }

  return v4;
}

- (void)JFXImageView_commonInit
{
  if (JFXImageView_commonInit_onceToken != -1)
  {
    [JFXImageView JFXImageView_commonInit];
  }

  self->_enableDebugDrawing = JFXImageView_commonInit_s_enableDebugDrawing;
  self->_disableIOSurface = JFXImageView_commonInit_s_disableIOSurface;
  self->_disableMetalKit = JFXImageView_commonInit_s_disableMetalKit;
  self->_preferIOSurfaceForYUV = 0;
  self->_preferMetalKit = 0;
  jtImage = self->_jtImage;
  self->_jtImage = 0;

  imageView = self->_imageView;
  self->_imageView = 0;

  self->_imageViewType = 0;

  [(JFXImageView *)self setCurrentImageViewType:-1];
}

void __39__JFXImageView_JFXImageView_commonInit__block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 valueForKey:@"JTImageViewDebugDraw"];

  if (v1)
  {
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    JFXImageView_commonInit_s_enableDebugDrawing = [v2 BOOLForKey:@"JTImageViewDebugDraw"];
  }

  v3 = JFXLog_core();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __39__JFXImageView_JFXImageView_commonInit__block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v12 = [v11 valueForKey:@"JTImageIOSurfaceViewDisabled"];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    JFXImageView_commonInit_s_disableIOSurface = [v13 BOOLForKey:@"JTImageIOSurfaceViewDisabled"];
  }

  v14 = JFXLog_core();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __39__JFXImageView_JFXImageView_commonInit__block_invoke_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  v22 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v23 = [v22 valueForKey:@"JTImageMTKViewDisabled"];

  if (v23)
  {
    v24 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    JFXImageView_commonInit_s_disableMetalKit = [v24 BOOLForKey:@"JTImageMTKViewDisabled"];
  }

  v25 = JFXLog_core();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    __39__JFXImageView_JFXImageView_commonInit__block_invoke_cold_3(v25, v26, v27, v28, v29, v30, v31, v32);
  }
}

- (void)reconfigureImageView
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v6 = 138412546;
  selfCopy = self;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_242A3B000, a3, OS_LOG_TYPE_DEBUG, "configuring %@ for mode %@ (1:uiimage 2:iosurface 3:metal)", &v6, 0x16u);
}

- (void)updateImageViewImage
{
  imageView = [(JFXImageView *)self imageView];

  if (!imageView)
  {
    return;
  }

  currentImageViewType = self->_currentImageViewType;
  if (currentImageViewType > 2)
  {
    if (currentImageViewType != 3 && currentImageViewType != 4)
    {
      return;
    }
  }

  else
  {
    if (currentImageViewType == 1)
    {
      imageView2 = [(JFXImageView *)self imageView];
      image = [(JTImage *)self->_jtImage image];
      [imageView2 setImage:image];

      layer = [(JFXImageView *)self layer];
      [layer borderWidth];
      v8 = v7 + v7;
      layer2 = [imageView2 layer];
      [layer2 setBorderWidth:v8];

      if (self->_enableDebugDrawing)
      {
        blueColor = [MEMORY[0x277D75348] blueColor];
        cGColor = [blueColor CGColor];
        layer3 = [imageView2 layer];
        [layer3 setBorderColor:cGColor];
      }

      goto LABEL_9;
    }

    if (currentImageViewType != 2)
    {
      return;
    }
  }

  imageView2 = [(JFXImageView *)self imageView];
  [imageView2 setJtImage:self->_jtImage];
LABEL_9:
}

- (id)stringFromImageViewType:(int64_t)type
{
  if (type > 4)
  {
    return @"None";
  }

  else
  {
    return *(&off_278D7C488 + type);
  }
}

- (int64_t)preferredImageViewTypeForImage:(id)image
{
  imageCopy = image;
  v5 = imageCopy;
  if (imageCopy)
  {
    if ([imageCopy hasPVImageBufferAndCanCreateCVPixelBufferWithoutCopy])
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      jfx_displayColorSpace = [currentDevice jfx_displayColorSpace];

      if ([jfx_displayColorSpace isHDRSpace] && (objc_msgSend(v5, "pvImageBuffer"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277D415E0], "jfx_getColorSpaceFromImageBuffer:", v8), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isHDRSpace"), v9, v8, (v10 & 1) != 0))
      {
        v11 = 3;
      }

      else if (self->_disableIOSurface || !self->_preferIOSurfaceForYUV)
      {
        if (self->_disableMetalKit || !self->_preferMetalKit)
        {
          v11 = 1;
        }

        else
        {
          v11 = 4;
        }
      }

      else
      {
        v11 = 2;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

- (void)flipX
{
  if (self->_currentImageViewType == 1)
  {
    imageView = [(JFXImageView *)self imageView];
    image = [imageView image];
    imageWithHorizontallyFlippedOrientation = [image imageWithHorizontallyFlippedOrientation];
    [imageView setImage:imageWithHorizontallyFlippedOrientation];
  }
}

- (void)updateDebugDrawing
{
  v3 = 0.0;
  if (self->_enableDebugDrawing)
  {
    v4 = [JFXImageView colorFromImageViewType:self->_currentImageViewType];
    cGColor = [v4 CGColor];
    layer = [(JFXImageView *)self layer];
    [layer setBorderColor:cGColor];

    v3 = 2.0;
  }

  layer2 = [(JFXImageView *)self layer];
  [layer2 setBorderWidth:v3];
}

+ (id)colorFromImageViewType:(int64_t)type
{
  if (type > 1)
  {
    switch(type)
    {
      case 2:
        self = [MEMORY[0x277D75348] orangeColor];
        break;
      case 3:
        self = [MEMORY[0x277D75348] greenColor];
        break;
      case 4:
        self = [MEMORY[0x277D75348] cyanColor];
        break;
    }
  }

  else if (type == -1)
  {
    self = [MEMORY[0x277D75348] redColor];
  }

  else if (type)
  {
    if (type == 1)
    {
      self = [MEMORY[0x277D75348] purpleColor];
    }
  }

  else
  {
    self = [MEMORY[0x277D75348] yellowColor];
  }

  return self;
}

+ (id)colorFromRenderingType:(int64_t)type
{
  if (type <= 0)
  {
    if (type == -1)
    {
      self = [MEMORY[0x277D75348] blackColor];
    }

    else if (!type)
    {
      self = [MEMORY[0x277D75348] blueColor];
    }
  }

  else
  {
    switch(type)
    {
      case 1:
        self = [MEMORY[0x277D75348] magentaColor];
        break;
      case 2:
        self = [MEMORY[0x277D75348] whiteColor];
        break;
      case 3:
        self = [MEMORY[0x277D75348] brownColor];
        break;
    }
  }

  return self;
}

+ (BOOL)normalizedQuadVertices:(id *)vertices viewSize:(CGSize)size textureSize:(CGSize)textureSize contentMode:(int64_t)mode
{
  if (!vertices)
  {
    return 0;
  }

  v8 = *(MEMORY[0x277CBF3A8] + 8);
  if (size.width == *MEMORY[0x277CBF3A8] && size.height == v8)
  {
    return 0;
  }

  if (textureSize.width == *MEMORY[0x277CBF3A8] && textureSize.height == v8)
  {
    return 0;
  }

  v31 = v6;
  v32 = v7;
  __asm { FMOV            V4.4S, #1.0 }

  if ((mode - 4) >= 9)
  {
    v19 = vnegq_f64(_Q4);
    v21 = xmmword_242B5BE70;
    if (!mode)
    {
      goto LABEL_37;
    }

    v23 = size.width / size.height;
    v24 = textureSize.width / textureSize.height;
    if (mode == 2)
    {
      if (v24 <= v23)
      {
LABEL_24:
        v21 = vmulq_n_f32(xmmword_242B5BE70, v23 / v24);
        goto LABEL_37;
      }
    }

    else
    {
      if (mode != 1)
      {
        v29 = v19;
        v28 = JFXLog_core();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_242A3B000, v28, OS_LOG_TYPE_DEFAULT, "Unsupported content mode. Falling back to UIViewContentModeScaleToFill", buf, 2u);
        }

        v21 = xmmword_242B5BE70;
        v19 = v29;
        goto LABEL_37;
      }

      if (v24 > v23)
      {
        goto LABEL_24;
      }
    }

    v19 = vmulq_n_f32(vnegq_f64(_Q4), v24 / v23);
    goto LABEL_37;
  }

  v16 = size.width + size.width;
  v17 = size.height + size.height;
  v20.f32[0] = textureSize.width / v16;
  v18 = textureSize.height / v17;
  *&v18 = v18;
  v19 = vmulq_n_f32(vnegq_f64(_Q4), v20.f32[0]);
  v20.i32[1] = -1082130432;
  v21 = vmulq_n_f32(xmmword_242B5BE70, *&v18);
  if (mode <= 8)
  {
    if (mode > 6)
    {
      if (mode == 7)
      {
        v20.f32[0] = 1.0 - v19.f32[0];
      }

      else
      {
        v20.f32[0] = -1.0 - v19.f32[1];
      }

      v19 = vsubq_f32(v19, vdupq_lane_s32(*v20.f32, 0));
      goto LABEL_37;
    }

    if (mode != 5)
    {
      if (mode != 6)
      {
        goto LABEL_37;
      }

      goto LABEL_30;
    }

LABEL_32:
    v20.f32[0] = -1.0 - v21.f32[0];
    goto LABEL_36;
  }

  if (mode <= 10)
  {
    if (mode != 9)
    {
      v20.f32[0] = -1.0 - v19.f32[1];
      v20 = vdupq_lane_s32(*v20.f32, 0);
      v19 = vsubq_f32(v19, v20);
      v20.f32[0] = -1.0 - v21.f32[0];
LABEL_36:
      v21 = vsubq_f32(v21, vdupq_lane_s32(*v20.f32, 0));
      goto LABEL_37;
    }

    v20.f32[0] = 1.0 - v19.f32[0];
    v20 = vdupq_lane_s32(*v20.f32, 0);
    v19 = vsubq_f32(v19, v20);
    goto LABEL_32;
  }

  if (mode == 11)
  {
    *&v18 = 1.0 - v19.f32[0];
    v19 = vsubq_f32(v19, vdupq_lane_s32(*&v18, 0));
    v20.f32[0] = 1.0 - v21.f32[2];
    goto LABEL_36;
  }

  if (mode == 12)
  {
    v20.f32[0] = -1.0 - v19.f32[1];
    v20 = vdupq_lane_s32(*v20.f32, 0);
    v19 = vsubq_f32(v19, v20);
LABEL_30:
    v20.f32[0] = 1.0 - v21.f32[2];
    goto LABEL_36;
  }

LABEL_37:
  __asm { FMOV            V1.2S, #1.0 }

  *vertices = vzip1_s32(*v19.f32, *v21.f32);
  *(vertices + 1) = _D1;
  *(vertices + 2) = vzip2_s32(*v19.f32, *v21.f32);
  *(vertices + 3) = 0x3F80000000000000;
  v26 = vextq_s8(v21, v21, 8uLL).u64[0];
  v27 = vextq_s8(v19, v19, 8uLL).u64[0];
  *(vertices + 4) = vzip1_s32(v27, v26);
  *(vertices + 5) = 1065353216;
  *(vertices + 6) = vzip2_s32(v27, v26);
  *(vertices + 7) = 0;
  return 1;
}

- (void)setJtImage:(id)image
{
  imageCopy = image;
  if (self->_jtImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_jtImage, image);
    [(JFXImageView *)self reconfigureImageView];
    imageCopy = v6;
  }
}

- (void)setImageViewType:(int64_t)type
{
  if (self->_imageViewType != type)
  {
    self->_imageViewType = type;
    [(JFXImageView *)self reconfigureImageView];
  }
}

- (void)setPreferIOSurfaceForYUV:(BOOL)v
{
  if (self->_preferIOSurfaceForYUV != v)
  {
    self->_preferIOSurfaceForYUV = v;
    [(JFXImageView *)self reconfigureImageView];
  }
}

- (void)setDisableIOSurface:(BOOL)surface
{
  if (self->_disableIOSurface != surface)
  {
    self->_disableIOSurface = surface;
    [(JFXImageView *)self reconfigureImageView];
  }
}

- (void)setPreferMetalKit:(BOOL)kit
{
  if (self->_preferMetalKit != kit)
  {
    self->_preferMetalKit = kit;
    [(JFXImageView *)self reconfigureImageView];
  }
}

- (void)setDisableMetalKit:(BOOL)kit
{
  if (self->_disableMetalKit != kit)
  {
    self->_disableMetalKit = kit;
    [(JFXImageView *)self reconfigureImageView];
  }
}

- (void)setCurrentImageViewType:(int64_t)type
{
  if (self->_currentImageViewType != type)
  {
    self->_currentImageViewType = type;
    [(JFXImageView *)self updateDebugDrawing];
  }
}

- (void)setEnableDebugDrawing:(BOOL)drawing
{
  if (self->_enableDebugDrawing != drawing)
  {
    self->_enableDebugDrawing = drawing;
    [(JFXImageView *)self updateDebugDrawing];
  }
}

- (void)setContentMode:(int64_t)mode
{
  v6.receiver = self;
  v6.super_class = JFXImageView;
  [(JFXImageView *)&v6 setContentMode:?];
  imageView = [(JFXImageView *)self imageView];
  [imageView setContentMode:mode];
}

@end