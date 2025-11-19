@interface JFXImageView
+ (BOOL)normalizedQuadVertices:(id *)a3 viewSize:(CGSize)a4 textureSize:(CGSize)a5 contentMode:(int64_t)a6;
+ (id)colorFromImageViewType:(int64_t)a3;
+ (id)colorFromRenderingType:(int64_t)a3;
- (JFXImageView)initWithCoder:(id)a3;
- (JFXImageView)initWithFrame:(CGRect)a3;
- (id)stringFromImageViewType:(int64_t)a3;
- (int64_t)preferredImageViewTypeForImage:(id)a3;
- (void)JFXImageView_commonInit;
- (void)flipX;
- (void)reconfigureImageView;
- (void)setContentMode:(int64_t)a3;
- (void)setCurrentImageViewType:(int64_t)a3;
- (void)setDisableIOSurface:(BOOL)a3;
- (void)setDisableMetalKit:(BOOL)a3;
- (void)setEnableDebugDrawing:(BOOL)a3;
- (void)setImageViewType:(int64_t)a3;
- (void)setJtImage:(id)a3;
- (void)setPreferIOSurfaceForYUV:(BOOL)a3;
- (void)setPreferMetalKit:(BOOL)a3;
- (void)updateDebugDrawing;
- (void)updateImageViewImage;
@end

@implementation JFXImageView

- (JFXImageView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = JFXImageView;
  v3 = [(JFXImageView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(JFXImageView *)v3 JFXImageView_commonInit];
  }

  return v4;
}

- (JFXImageView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = JFXImageView;
  v3 = [(JFXImageView *)&v6 initWithCoder:a3];
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
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_242A3B000, a3, OS_LOG_TYPE_DEBUG, "configuring %@ for mode %@ (1:uiimage 2:iosurface 3:metal)", &v6, 0x16u);
}

- (void)updateImageViewImage
{
  v3 = [(JFXImageView *)self imageView];

  if (!v3)
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
      v13 = [(JFXImageView *)self imageView];
      v5 = [(JTImage *)self->_jtImage image];
      [v13 setImage:v5];

      v6 = [(JFXImageView *)self layer];
      [v6 borderWidth];
      v8 = v7 + v7;
      v9 = [v13 layer];
      [v9 setBorderWidth:v8];

      if (self->_enableDebugDrawing)
      {
        v10 = [MEMORY[0x277D75348] blueColor];
        v11 = [v10 CGColor];
        v12 = [v13 layer];
        [v12 setBorderColor:v11];
      }

      goto LABEL_9;
    }

    if (currentImageViewType != 2)
    {
      return;
    }
  }

  v13 = [(JFXImageView *)self imageView];
  [v13 setJtImage:self->_jtImage];
LABEL_9:
}

- (id)stringFromImageViewType:(int64_t)a3
{
  if (a3 > 4)
  {
    return @"None";
  }

  else
  {
    return *(&off_278D7C488 + a3);
  }
}

- (int64_t)preferredImageViewTypeForImage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 hasPVImageBufferAndCanCreateCVPixelBufferWithoutCopy])
    {
      v6 = [MEMORY[0x277D75418] currentDevice];
      v7 = [v6 jfx_displayColorSpace];

      if ([v7 isHDRSpace] && (objc_msgSend(v5, "pvImageBuffer"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277D415E0], "jfx_getColorSpaceFromImageBuffer:", v8), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isHDRSpace"), v9, v8, (v10 & 1) != 0))
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
    v5 = [(JFXImageView *)self imageView];
    v3 = [v5 image];
    v4 = [v3 imageWithHorizontallyFlippedOrientation];
    [v5 setImage:v4];
  }
}

- (void)updateDebugDrawing
{
  v3 = 0.0;
  if (self->_enableDebugDrawing)
  {
    v4 = [JFXImageView colorFromImageViewType:self->_currentImageViewType];
    v5 = [v4 CGColor];
    v6 = [(JFXImageView *)self layer];
    [v6 setBorderColor:v5];

    v3 = 2.0;
  }

  v7 = [(JFXImageView *)self layer];
  [v7 setBorderWidth:v3];
}

+ (id)colorFromImageViewType:(int64_t)a3
{
  if (a3 > 1)
  {
    switch(a3)
    {
      case 2:
        a1 = [MEMORY[0x277D75348] orangeColor];
        break;
      case 3:
        a1 = [MEMORY[0x277D75348] greenColor];
        break;
      case 4:
        a1 = [MEMORY[0x277D75348] cyanColor];
        break;
    }
  }

  else if (a3 == -1)
  {
    a1 = [MEMORY[0x277D75348] redColor];
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      a1 = [MEMORY[0x277D75348] purpleColor];
    }
  }

  else
  {
    a1 = [MEMORY[0x277D75348] yellowColor];
  }

  return a1;
}

+ (id)colorFromRenderingType:(int64_t)a3
{
  if (a3 <= 0)
  {
    if (a3 == -1)
    {
      a1 = [MEMORY[0x277D75348] blackColor];
    }

    else if (!a3)
    {
      a1 = [MEMORY[0x277D75348] blueColor];
    }
  }

  else
  {
    switch(a3)
    {
      case 1:
        a1 = [MEMORY[0x277D75348] magentaColor];
        break;
      case 2:
        a1 = [MEMORY[0x277D75348] whiteColor];
        break;
      case 3:
        a1 = [MEMORY[0x277D75348] brownColor];
        break;
    }
  }

  return a1;
}

+ (BOOL)normalizedQuadVertices:(id *)a3 viewSize:(CGSize)a4 textureSize:(CGSize)a5 contentMode:(int64_t)a6
{
  if (!a3)
  {
    return 0;
  }

  v8 = *(MEMORY[0x277CBF3A8] + 8);
  if (a4.width == *MEMORY[0x277CBF3A8] && a4.height == v8)
  {
    return 0;
  }

  if (a5.width == *MEMORY[0x277CBF3A8] && a5.height == v8)
  {
    return 0;
  }

  v31 = v6;
  v32 = v7;
  __asm { FMOV            V4.4S, #1.0 }

  if ((a6 - 4) >= 9)
  {
    v19 = vnegq_f64(_Q4);
    v21 = xmmword_242B5BE70;
    if (!a6)
    {
      goto LABEL_37;
    }

    v23 = a4.width / a4.height;
    v24 = a5.width / a5.height;
    if (a6 == 2)
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
      if (a6 != 1)
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

  v16 = a4.width + a4.width;
  v17 = a4.height + a4.height;
  v20.f32[0] = a5.width / v16;
  v18 = a5.height / v17;
  *&v18 = v18;
  v19 = vmulq_n_f32(vnegq_f64(_Q4), v20.f32[0]);
  v20.i32[1] = -1082130432;
  v21 = vmulq_n_f32(xmmword_242B5BE70, *&v18);
  if (a6 <= 8)
  {
    if (a6 > 6)
    {
      if (a6 == 7)
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

    if (a6 != 5)
    {
      if (a6 != 6)
      {
        goto LABEL_37;
      }

      goto LABEL_30;
    }

LABEL_32:
    v20.f32[0] = -1.0 - v21.f32[0];
    goto LABEL_36;
  }

  if (a6 <= 10)
  {
    if (a6 != 9)
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

  if (a6 == 11)
  {
    *&v18 = 1.0 - v19.f32[0];
    v19 = vsubq_f32(v19, vdupq_lane_s32(*&v18, 0));
    v20.f32[0] = 1.0 - v21.f32[2];
    goto LABEL_36;
  }

  if (a6 == 12)
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

  *a3 = vzip1_s32(*v19.f32, *v21.f32);
  *(a3 + 1) = _D1;
  *(a3 + 2) = vzip2_s32(*v19.f32, *v21.f32);
  *(a3 + 3) = 0x3F80000000000000;
  v26 = vextq_s8(v21, v21, 8uLL).u64[0];
  v27 = vextq_s8(v19, v19, 8uLL).u64[0];
  *(a3 + 4) = vzip1_s32(v27, v26);
  *(a3 + 5) = 1065353216;
  *(a3 + 6) = vzip2_s32(v27, v26);
  *(a3 + 7) = 0;
  return 1;
}

- (void)setJtImage:(id)a3
{
  v5 = a3;
  if (self->_jtImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_jtImage, a3);
    [(JFXImageView *)self reconfigureImageView];
    v5 = v6;
  }
}

- (void)setImageViewType:(int64_t)a3
{
  if (self->_imageViewType != a3)
  {
    self->_imageViewType = a3;
    [(JFXImageView *)self reconfigureImageView];
  }
}

- (void)setPreferIOSurfaceForYUV:(BOOL)a3
{
  if (self->_preferIOSurfaceForYUV != a3)
  {
    self->_preferIOSurfaceForYUV = a3;
    [(JFXImageView *)self reconfigureImageView];
  }
}

- (void)setDisableIOSurface:(BOOL)a3
{
  if (self->_disableIOSurface != a3)
  {
    self->_disableIOSurface = a3;
    [(JFXImageView *)self reconfigureImageView];
  }
}

- (void)setPreferMetalKit:(BOOL)a3
{
  if (self->_preferMetalKit != a3)
  {
    self->_preferMetalKit = a3;
    [(JFXImageView *)self reconfigureImageView];
  }
}

- (void)setDisableMetalKit:(BOOL)a3
{
  if (self->_disableMetalKit != a3)
  {
    self->_disableMetalKit = a3;
    [(JFXImageView *)self reconfigureImageView];
  }
}

- (void)setCurrentImageViewType:(int64_t)a3
{
  if (self->_currentImageViewType != a3)
  {
    self->_currentImageViewType = a3;
    [(JFXImageView *)self updateDebugDrawing];
  }
}

- (void)setEnableDebugDrawing:(BOOL)a3
{
  if (self->_enableDebugDrawing != a3)
  {
    self->_enableDebugDrawing = a3;
    [(JFXImageView *)self updateDebugDrawing];
  }
}

- (void)setContentMode:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = JFXImageView;
  [(JFXImageView *)&v6 setContentMode:?];
  v5 = [(JFXImageView *)self imageView];
  [v5 setContentMode:a3];
}

@end