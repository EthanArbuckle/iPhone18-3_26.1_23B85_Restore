@interface GKImageContext
+ (id)contextDrawnWithSize:(CGSize)a3 scale:(double)a4 options:(unsigned int)a5 usingBlock:(id)a6;
+ (id)imageDrawnWithSize:(CGSize)a3 scale:(double)a4 options:(unsigned int)a5 usingBlock:(id)a6;
+ (id)imageFromRawPixelsAtURL:(id)a3;
- (BOOL)writeRawPixelsToURL:(id)a3 error:(id *)a4;
- (CGSize)size;
- (GKImageContext)initWithSize:(CGSize)a3 scale:(double)a4 options:(unsigned int)a5 data:(void *)a6;
- (UIImage)image;
- (void)dealloc;
@end

@implementation GKImageContext

+ (id)contextDrawnWithSize:(CGSize)a3 scale:(double)a4 options:(unsigned int)a5 usingBlock:(id)a6
{
  v6 = *&a5;
  height = a3.height;
  width = a3.width;
  v10 = a6;
  v11 = [[GKImageContext alloc] initWithSize:v6 scale:0 options:width data:height, a4];
  v12 = v11;
  if ((v6 & 4) != 0)
  {
    UIGraphicsPushContext([(GKImageContext *)v11 CGContext]);
    v10[2](v10, v12);
    UIGraphicsPopContext();
  }

  else
  {
    v10[2](v10, v11);
  }

  return v12;
}

+ (id)imageDrawnWithSize:(CGSize)a3 scale:(double)a4 options:(unsigned int)a5 usingBlock:(id)a6
{
  v6 = [a1 contextDrawnWithSize:*&a5 scale:a6 options:a3.width usingBlock:{a3.height, a4}];
  v7 = [v6 image];

  return v7;
}

- (void)dealloc
{
  CGContextRelease(self->_CGContext);
  v3.receiver = self;
  v3.super_class = GKImageContext;
  [(GKImageContext *)&v3 dealloc];
}

- (GKImageContext)initWithSize:(CGSize)a3 scale:(double)a4 options:(unsigned int)a5 data:(void *)a6
{
  v9 = a5;
  height = a3.height;
  width = a3.width;
  v28.receiver = self;
  v28.super_class = GKImageContext;
  v13 = [(GKImageContext *)&v28 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_24;
  }

  v13->_size.width = width;
  v13->_size.height = height;
  if (a4 == 0.0)
  {
    v6 = [MEMORY[0x277D759A0] mainScreen];
    [v6 scale];
    a4 = v15;
  }

  v14->_scale = a4;
  v16 = width * a4;
  LODWORD(v7) = vcvtps_s32_f32(v16);
  v17 = height * a4;
  LODWORD(v6) = vcvtps_s32_f32(v17);
  if (v7 >= 1 && v6 >= 1)
  {
    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
    if ((v9 & 2) != 0)
    {
      DeviceGray = CGColorSpaceCreateDeviceGray();
      v21 = 0;
    }

    else
    {
      if (v9)
      {
        v21 = 8198;
      }

      else
      {
        v21 = 8194;
      }

      DeviceGray = CGColorSpaceCreateDeviceRGB();
    }

    v23 = CGBitmapContextCreate(a6, v7, v6, 8uLL, AlignedBytesPerRow, DeviceGray, v21);
    CGColorSpaceRelease(DeviceGray);
    if (!v23)
    {
      goto LABEL_23;
    }

    if (a6)
    {
      if ((v9 & 8) == 0)
      {
LABEL_19:
        CGContextTranslateCTM(v23, 0.0, v6);
        CGContextScaleCTM(v23, a4, -a4);
        v24 = a4;
        v25 = -a4;
LABEL_22:
        CGAffineTransformMakeScale(&v27, v24, v25);
        CGContextSetBaseCTM();
LABEL_23:
        v14->_CGContext = v23;
LABEL_24:
        v19 = v14;
        goto LABEL_25;
      }
    }

    else
    {
      v29.size.width = v7;
      v29.size.height = v6;
      v29.origin.x = 0.0;
      v29.origin.y = 0.0;
      CGContextClearRect(v23, v29);
      if ((v9 & 8) == 0)
      {
        goto LABEL_19;
      }
    }

    CGContextScaleCTM(v23, a4, a4);
    v24 = a4;
    v25 = a4;
    goto LABEL_22;
  }

  v19 = 0;
LABEL_25:

  return v19;
}

- (UIImage)image
{
  Image = CGBitmapContextCreateImage(self->_CGContext);
  if (Image)
  {
    v4 = Image;
    v5 = MEMORY[0x277D755B8];
    [(GKImageContext *)self scale];
    v6 = [v5 imageWithCGImage:v4 scale:0 orientation:?];
    CGImageRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)writeRawPixelsToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  CGContext = self->_CGContext;
  v17 = 64181;
  BytesPerRow = CGBitmapContextGetBytesPerRow(CGContext);
  height = self->_size.height;
  width = self->_size.width;
  v19 = height;
  LODWORD(self) = self->_scale;
  v20 = BytesPerRow;
  v21 = self;
  BitmapInfo = CGBitmapContextGetBitmapInfo(CGContext);
  v10 = height * self * BytesPerRow;
  v11 = [MEMORY[0x277CBEB28] dataWithCapacity:v10 + 28];
  [v11 appendBytes:&v17 length:28];
  [v11 appendBytes:CGBitmapContextGetData(CGContext) length:v10];
  v16 = 0;
  LOBYTE(v10) = [v11 writeToURL:v6 options:1 error:&v16];
  v12 = v16;
  if ((v10 & 1) == 0)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v13 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      [GKImageContext writeRawPixelsToURL:error:];
      if (!a4)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  if (a4)
  {
LABEL_6:
    v14 = v12;
    *a4 = v12;
  }

LABEL_7:

  return v12 == 0;
}

+ (id)imageFromRawPixelsAtURL:(id)a3
{
  v3 = a3;
  v27 = 0;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v3 options:1 error:&v27];
  v5 = v27;
  if (!v4)
  {
    v9 = MEMORY[0x277D0C268];
    if (os_log_type_enabled(*MEMORY[0x277D0C268], OS_LOG_TYPE_DEBUG))
    {
      v26 = 0;
      v10 = [v3 checkResourceIsReachableAndReturnError:&v26];
      v11 = v26;
      if (v10)
      {
        if (!*MEMORY[0x277D0C2A0])
        {
          v12 = GKOSLoggers();
        }

        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
        {
          +[GKImageContext imageFromRawPixelsAtURL:];
        }
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_25;
  }

  if ([v4 length] <= 0x23)
  {
    v6 = MEMORY[0x277D0C2A0];
    v7 = *MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v8 = GKOSLoggers();
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(GKImageContext *)v7 imageFromRawPixelsAtURL:v4, v3];
    }

LABEL_25:
    v17 = 0;
    goto LABEL_26;
  }

  v13 = [v4 bytes];
  v14 = v13;
  if (*v13 != 64181)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v16 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      +[GKImageContext imageFromRawPixelsAtURL:];
    }

    goto LABEL_25;
  }

  if (v13[1])
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v15 = GKOSLoggers();
    }

    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      +[GKImageContext imageFromRawPixelsAtURL:];
    }

    goto LABEL_25;
  }

  if ([v4 length] < (v13[5] * v13[3] * v13[4]) + 28)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v19 = GKOSLoggers();
    }

    v20 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      [(GKImageContext *)v20 imageFromRawPixelsAtURL:v4, v3];
    }

    goto LABEL_25;
  }

  v21 = MEMORY[0x277D755B8];
  v22 = [v4 subdataWithRange:{28, objc_msgSend(v4, "length") - 28}];
  LODWORD(v23) = v14[2];
  LODWORD(v24) = v14[3];
  LODWORD(v25) = v14[5];
  v17 = [v21 _gkImageWithRawData:v22 size:v14[4] scale:v14[6] rowBytes:v23 bitmapInfo:{v24, v25}];

LABEL_26:

  return v17;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)writeRawPixelsToURL:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)imageFromRawPixelsAtURL:(uint64_t)a3 .cold.3(void *a1, void *a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = a1;
  [a2 length];
  OUTLINED_FUNCTION_0_1();
  v7 = a3;
  _os_log_error_impl(&dword_24E4A8000, v5, OS_LOG_TYPE_ERROR, "image header size can't contain full image:%lu for image at URL:%@", v6, 0x16u);
}

+ (void)imageFromRawPixelsAtURL:(uint64_t)a3 .cold.4(void *a1, void *a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = a1;
  [a2 length];
  OUTLINED_FUNCTION_0_1();
  v7 = a3;
  _os_log_debug_impl(&dword_24E4A8000, v5, OS_LOG_TYPE_DEBUG, "image header size way too small:%lu from image at URL:%@", v6, 0x16u);
}

+ (void)imageFromRawPixelsAtURL:.cold.5()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  v3 = v0;
  _os_log_debug_impl(&dword_24E4A8000, v1, OS_LOG_TYPE_DEBUG, "cannot read raw pixels:%@ for image at URL:%@", v2, 0x16u);
}

@end