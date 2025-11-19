@interface CAMTimelapseJPEGReader
+ (BOOL)_hasExifRotation:(id)a3;
+ (CGImage)createCGImageFromData:(id)a3 applyTransform:(BOOL)a4 maxPixelSize:(int64_t)a5 useBGRA:(BOOL)a6;
+ (__CVBuffer)createPixelBufferFromData:(id)a3 applyTransform:(BOOL)a4 maxPixelSize:(int64_t)a5 useBGRA:(BOOL)a6 cleanApertureSize:(CGSize)a7;
+ (id)_decodeOptionsWithMaxPixelSize:(int64_t)a3 applyTransform:(BOOL)a4 useBGRA:(BOOL)a5;
+ (id)newDataFromFilePath:(id)a3;
@end

@implementation CAMTimelapseJPEGReader

+ (id)newDataFromFilePath:(id)a3
{
  v3 = a3;
  v10 = 0;
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v3 options:0 error:&v10];
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = os_log_create("com.apple.camera", "Nebula");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CAMTimelapseJPEGReader *)v3 newDataFromFilePath:v6, v8];
    }
  }

  return v4;
}

+ (id)_decodeOptionsWithMaxPixelSize:(int64_t)a3 applyTransform:(BOOL)a4 useBGRA:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = v8;
  if (v5)
  {
    [v8 setObject:&unk_1F16C7988 forKey:*MEMORY[0x1E6991AE8]];
  }

  if (v6)
  {
    [v9 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6991AC0]];
  }

  if (a3 >= 1)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v9 setObject:v10 forKey:*MEMORY[0x1E6991AE0]];
  }

  return v9;
}

+ (CGImage)createCGImageFromData:(id)a3 applyTransform:(BOOL)a4 maxPixelSize:(int64_t)a5 useBGRA:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v24 = *MEMORY[0x1E69E9840];
  v11 = a3;
  if (v11)
  {
    v12 = [a1 _decodeOptionsWithMaxPixelSize:a5 applyTransform:v8 useBGRA:v6];
    CGImageFromImageData = PFFigCreateCGImageFromImageData();
    if (CGImageFromImageData)
    {
      v14 = CGImageFromImageData;
      v15 = os_log_create("com.apple.camera", "Nebula");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromSelector(a2);
        *buf = 138543874;
        v19 = v17;
        v20 = 2048;
        v21 = v14;
        v22 = 2048;
        v23 = [v11 length];
        _os_log_error_impl(&dword_1A3640000, v15, OS_LOG_TYPE_ERROR, "PFFigCreateCGImageFromImageData %{public}@ returned %ld from %lu", buf, 0x20u);
      }
    }
  }

  return 0;
}

+ (BOOL)_hasExifRotation:(id)a3
{
  v3 = CGImageSourceCreateWithData(a3, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CGImageSourceCopyPropertiesAtIndex(v3, 0, 0);
  v6 = v5;
  if (v5)
  {
    v7 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
    v8 = v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v7 intValue] - 5 < 4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  CFRelease(v4);

  return v8;
}

+ (__CVBuffer)createPixelBufferFromData:(id)a3 applyTransform:(BOOL)a4 maxPixelSize:(int64_t)a5 useBGRA:(BOOL)a6 cleanApertureSize:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v9 = a6;
  v11 = a4;
  v67[4] = *MEMORY[0x1E69E9840];
  v14 = a3;
  pixelTransferSessionOut = 0;
  pixelBuffer = 0;
  pixelBufferOut = 0;
  if (!v14)
  {
    goto LABEL_37;
  }

  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    v24 = [a1 _decodeOptionsWithMaxPixelSize:a5 applyTransform:v11 useBGRA:v9];
    v21 = OUTLINED_FUNCTION_0_2(v24, v25, v26, v27);
  }

  else
  {
    if (v9)
    {
      v16 = 1111970369;
    }

    else
    {
      v16 = 875704422;
    }

    v17 = [a1 _decodeOptionsWithMaxPixelSize:0 applyTransform:v11 useBGRA:0];
    v21 = OUTLINED_FUNCTION_0_2(v17, v18, v19, v20);
    if (!v21)
    {
      if (a5 < 1)
      {
        v23 = 1.0;
      }

      else
      {
        if (width <= height)
        {
          v22 = height;
        }

        else
        {
          v22 = width;
        }

        v23 = fmin(a5 / v22, 1.0);
      }

      v29 = width * v23;
      v30 = vcvtas_u32_f32(v29);
      v31 = height * v23;
      v32 = vcvtas_u32_f32(v31);
      v33 = CVPixelBufferGetWidth(pixelBuffer);
      v34 = CVPixelBufferGetHeight(pixelBuffer);
      if (v11 && vabdd_f64(width / height, v34 / v33) < 0.01)
      {
        v35 = v30;
        v36 = height;
      }

      else
      {
        v35 = v32;
        v32 = v30;
        v36 = width;
        width = height;
      }

      v66[0] = *MEMORY[0x1E6965D80];
      v37 = [MEMORY[0x1E696AD98] numberWithDouble:v36];
      v67[0] = v37;
      v66[1] = *MEMORY[0x1E6965D60];
      v38 = [MEMORY[0x1E696AD98] numberWithDouble:width];
      v39 = *MEMORY[0x1E6965D68];
      v67[1] = v38;
      v67[2] = &unk_1F16C79A0;
      v40 = *MEMORY[0x1E6965D78];
      v66[2] = v39;
      v66[3] = v40;
      v67[3] = &unk_1F16C79A0;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:4];

      CVBufferSetAttachment(pixelBuffer, *MEMORY[0x1E6965D70], v41, kCVAttachmentMode_ShouldNotPropagate);
      v64 = *MEMORY[0x1E69660D8];
      v65 = MEMORY[0x1E695E0F8];
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      v43 = *MEMORY[0x1E695E480];
      v44 = CVPixelBufferCreate(*MEMORY[0x1E695E480], v32, v35, v16, v42, &pixelBufferOut);
      if (v44 || (v44 = VTPixelTransferSessionCreate(v43, &pixelTransferSessionOut)) != 0 || (VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983DF8], *MEMORY[0x1E695E4D0]), (v44 = VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983E30], *MEMORY[0x1E69840E0])) != 0))
      {
        v28 = v44;
      }

      else
      {
        v28 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, pixelBuffer, pixelBufferOut);
        if (!v28)
        {
          CFRelease(pixelBuffer);
          pixelBuffer = pixelBufferOut;
          pixelBufferOut = 0;
        }
      }

      if (pixelTransferSessionOut)
      {
        CFRelease(pixelTransferSessionOut);
      }

      height = width;
      width = v36;
      goto LABEL_30;
    }
  }

  v28 = v21;

LABEL_30:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (!v28)
  {
    v46 = pixelBuffer;
    goto LABEL_39;
  }

  v45 = os_log_create("com.apple.camera", "Nebula");
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    v48 = NSStringFromSelector(a2);
    v49 = [v14 length];
    v68.width = width;
    v68.height = height;
    v50 = NSStringFromCGSize(v68);
    *buf = 138544386;
    v55 = v48;
    v56 = 2048;
    v57 = v28;
    v58 = 1024;
    v59 = v28;
    v60 = 2048;
    v61 = v49;
    v62 = 2114;
    v63 = v50;
    _os_log_error_impl(&dword_1A3640000, v45, OS_LOG_TYPE_ERROR, "Error decoding JPEG to PixelBuffer from %{public}@, err %ld (0x%x), JPEG size %lu, clapSize %{public}@", buf, 0x30u);
  }

  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

LABEL_37:
  v46 = 0;
LABEL_39:

  return v46;
}

+ (void)newDataFromFilePath:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1A3640000, log, OS_LOG_TYPE_ERROR, "Error creating data from file %{public}@: %{public}@", &v3, 0x16u);
}

@end