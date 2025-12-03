@interface GKImageContext
+ (id)contextDrawnWithSize:(CGSize)size scale:(double)scale options:(unsigned int)options usingBlock:(id)block;
+ (id)imageDrawnWithSize:(CGSize)size scale:(double)scale options:(unsigned int)options usingBlock:(id)block;
+ (id)imageFromRawPixelsAtURL:(id)l;
- (BOOL)writeRawPixelsToURL:(id)l error:(id *)error;
- (CGSize)size;
- (GKImageContext)initWithSize:(CGSize)size scale:(double)scale options:(unsigned int)options data:(void *)data;
- (UIImage)image;
- (void)dealloc;
@end

@implementation GKImageContext

+ (id)contextDrawnWithSize:(CGSize)size scale:(double)scale options:(unsigned int)options usingBlock:(id)block
{
  v6 = *&options;
  height = size.height;
  width = size.width;
  blockCopy = block;
  scale = [[GKImageContext alloc] initWithSize:v6 scale:0 options:width data:height, scale];
  v12 = scale;
  if ((v6 & 4) != 0)
  {
    UIGraphicsPushContext([(GKImageContext *)scale CGContext]);
    blockCopy[2](blockCopy, v12);
    UIGraphicsPopContext();
  }

  else
  {
    blockCopy[2](blockCopy, scale);
  }

  return v12;
}

+ (id)imageDrawnWithSize:(CGSize)size scale:(double)scale options:(unsigned int)options usingBlock:(id)block
{
  v6 = [self contextDrawnWithSize:*&options scale:block options:size.width usingBlock:{size.height, scale}];
  image = [v6 image];

  return image;
}

- (void)dealloc
{
  CGContextRelease(self->_CGContext);
  v3.receiver = self;
  v3.super_class = GKImageContext;
  [(GKImageContext *)&v3 dealloc];
}

- (GKImageContext)initWithSize:(CGSize)size scale:(double)scale options:(unsigned int)options data:(void *)data
{
  optionsCopy = options;
  height = size.height;
  width = size.width;
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
  if (scale == 0.0)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    scale = v15;
  }

  v14->_scale = scale;
  v16 = width * scale;
  LODWORD(v7) = vcvtps_s32_f32(v16);
  v17 = height * scale;
  LODWORD(mainScreen) = vcvtps_s32_f32(v17);
  if (v7 >= 1 && mainScreen >= 1)
  {
    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
    if ((optionsCopy & 2) != 0)
    {
      DeviceGray = CGColorSpaceCreateDeviceGray();
      v21 = 0;
    }

    else
    {
      if (optionsCopy)
      {
        v21 = 8198;
      }

      else
      {
        v21 = 8194;
      }

      DeviceGray = CGColorSpaceCreateDeviceRGB();
    }

    v23 = CGBitmapContextCreate(data, v7, mainScreen, 8uLL, AlignedBytesPerRow, DeviceGray, v21);
    CGColorSpaceRelease(DeviceGray);
    if (!v23)
    {
      goto LABEL_23;
    }

    if (data)
    {
      if ((optionsCopy & 8) == 0)
      {
LABEL_19:
        CGContextTranslateCTM(v23, 0.0, mainScreen);
        CGContextScaleCTM(v23, scale, -scale);
        scaleCopy2 = scale;
        scaleCopy3 = -scale;
LABEL_22:
        CGAffineTransformMakeScale(&v27, scaleCopy2, scaleCopy3);
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
      v29.size.height = mainScreen;
      v29.origin.x = 0.0;
      v29.origin.y = 0.0;
      CGContextClearRect(v23, v29);
      if ((optionsCopy & 8) == 0)
      {
        goto LABEL_19;
      }
    }

    CGContextScaleCTM(v23, scale, scale);
    scaleCopy2 = scale;
    scaleCopy3 = scale;
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

- (BOOL)writeRawPixelsToURL:(id)l error:(id *)error
{
  lCopy = l;
  CGContext = self->_CGContext;
  v17 = 64181;
  BytesPerRow = CGBitmapContextGetBytesPerRow(CGContext);
  height = self->_size.height;
  width = self->_size.width;
  v19 = height;
  LODWORD(self) = self->_scale;
  v20 = BytesPerRow;
  selfCopy = self;
  BitmapInfo = CGBitmapContextGetBitmapInfo(CGContext);
  v10 = height * self * BytesPerRow;
  v11 = [MEMORY[0x277CBEB28] dataWithCapacity:v10 + 28];
  [v11 appendBytes:&v17 length:28];
  [v11 appendBytes:CGBitmapContextGetData(CGContext) length:v10];
  v16 = 0;
  LOBYTE(v10) = [v11 writeToURL:lCopy options:1 error:&v16];
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
      if (!error)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  if (error)
  {
LABEL_6:
    v14 = v12;
    *error = v12;
  }

LABEL_7:

  return v12 == 0;
}

+ (id)imageFromRawPixelsAtURL:(id)l
{
  lCopy = l;
  v27 = 0;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy options:1 error:&v27];
  v5 = v27;
  if (!v4)
  {
    v9 = MEMORY[0x277D0C268];
    if (os_log_type_enabled(*MEMORY[0x277D0C268], OS_LOG_TYPE_DEBUG))
    {
      v26 = 0;
      v10 = [lCopy checkResourceIsReachableAndReturnError:&v26];
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
      [(GKImageContext *)v7 imageFromRawPixelsAtURL:v4, lCopy];
    }

LABEL_25:
    v17 = 0;
    goto LABEL_26;
  }

  bytes = [v4 bytes];
  v14 = bytes;
  if (*bytes != 64181)
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

  if (bytes[1])
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

  if ([v4 length] < (bytes[5] * bytes[3] * bytes[4]) + 28)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v19 = GKOSLoggers();
    }

    v20 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      [(GKImageContext *)v20 imageFromRawPixelsAtURL:v4, lCopy];
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