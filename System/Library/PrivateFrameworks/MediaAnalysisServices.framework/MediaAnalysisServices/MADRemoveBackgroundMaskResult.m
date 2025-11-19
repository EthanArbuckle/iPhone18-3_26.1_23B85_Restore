@interface MADRemoveBackgroundMaskResult
- (CGImage)instanceMaskImage;
- (CGRect)sourceRegionOfInterest;
- (MADRemoveBackgroundMaskResult)initWithCoder:(id)a3;
- (MADRemoveBackgroundMaskResult)initWithInstances:(id)a3 instanceMaskSurface:(id)a4 perInstanceMaskSurfaces:(id)a5 sourceRegionOfInterest:(CGRect)a6 confidence:(float)a7 animatedStickerScore:(id)a8;
- (__CVBuffer)instanceMaskPixelBuffer;
- (id).cxx_construct;
- (id)description;
- (id)maskImagesForInstances:(id)a3 error:(id *)a4;
- (id)maskPixelBuffersForInstances:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADRemoveBackgroundMaskResult

- (MADRemoveBackgroundMaskResult)initWithInstances:(id)a3 instanceMaskSurface:(id)a4 perInstanceMaskSurfaces:(id)a5 sourceRegionOfInterest:(CGRect)a6 confidence:(float)a7 animatedStickerScore:(id)a8
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a8;
  v25.receiver = self;
  v25.super_class = MADRemoveBackgroundMaskResult;
  v22 = [(MADResult *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_allInstances, a3);
    objc_storeStrong(&v23->_instanceMaskSurface, a4);
    objc_storeStrong(&v23->_perInstanceMaskSurfaces, a5);
    v23->_sourceRegionOfInterest.origin.x = x;
    v23->_sourceRegionOfInterest.origin.y = y;
    v23->_sourceRegionOfInterest.size.width = width;
    v23->_sourceRegionOfInterest.size.height = height;
    v23->_confidence = a7;
    objc_storeStrong(&v23->_animatedStickerScore, a8);
  }

  return v23;
}

- (MADRemoveBackgroundMaskResult)initWithCoder:(id)a3
{
  v24[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = MADRemoveBackgroundMaskResult;
  v5 = [(MADResult *)&v23 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AllInstances"];
    allInstances = v5->_allInstances;
    v5->_allInstances = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"InstanceMaskSurface"];
    instanceMaskSurface = v5->_instanceMaskSurface;
    v5->_instanceMaskSurface = v8;

    v10 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v24[2] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
    v12 = [v10 setWithArray:v11];

    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"PerInstanceMaskSurfaces"];
    perInstanceMaskSurfaces = v5->_perInstanceMaskSurfaces;
    v5->_perInstanceMaskSurfaces = v13;

    [v4 decodeRectForKey:@"SourceRegionOfInterest"];
    v5->_sourceRegionOfInterest.origin.x = v15;
    v5->_sourceRegionOfInterest.origin.y = v16;
    v5->_sourceRegionOfInterest.size.width = v17;
    v5->_sourceRegionOfInterest.size.height = v18;
    [v4 decodeFloatForKey:@"Confidence"];
    v5->_confidence = v19;
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AnimatedStickerScore"];
    animatedStickerScore = v5->_animatedStickerScore;
    v5->_animatedStickerScore = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = MADRemoveBackgroundMaskResult;
  [(MADResult *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_allInstances forKey:@"AllInstances"];
  [v4 encodeObject:self->_instanceMaskSurface forKey:@"InstanceMaskSurface"];
  [v4 encodeObject:self->_perInstanceMaskSurfaces forKey:@"PerInstanceMaskSurfaces"];
  [v4 encodeRect:@"SourceRegionOfInterest" forKey:{self->_sourceRegionOfInterest.origin.x, self->_sourceRegionOfInterest.origin.y, self->_sourceRegionOfInterest.size.width, self->_sourceRegionOfInterest.size.height}];
  *&v5 = self->_confidence;
  [v4 encodeFloat:@"Confidence" forKey:v5];
  [v4 encodeObject:self->_animatedStickerScore forKey:@"AnimatedStickerScore"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"allInstances: %@, ", self->_allInstances];
  [v3 appendFormat:@"instanceMaskSurface: %@, ", self->_instanceMaskSurface];
  [v3 appendFormat:@"perInstanceMaskSurfaces: %@, ", self->_perInstanceMaskSurfaces];
  [v3 appendFormat:@"sourceRegionOfInterest: %0.2fx%0.2f @ (%0.2f, %0.2f), ", *&self->_sourceRegionOfInterest.size.width, *&self->_sourceRegionOfInterest.size.height, *&self->_sourceRegionOfInterest.origin.x, *&self->_sourceRegionOfInterest.origin.y];
  [v3 appendFormat:@"confidence: %0.2f, ", self->_confidence];
  [v3 appendFormat:@"animatedStickerScore: %@>", self->_animatedStickerScore];

  return v3;
}

- (__CVBuffer)instanceMaskPixelBuffer
{
  result = self->_instanceMaskPixelBuffer.value_;
  if (!result)
  {
    CVPixelBufferCreateWithIOSurface(0, self->_instanceMaskSurface, 0, &self->_instanceMaskPixelBuffer.value_);
    result = self->_instanceMaskPixelBuffer.value_;
    if (!result)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [MADRemoveBackgroundMaskResult instanceMaskPixelBuffer];
      }

      return self->_instanceMaskPixelBuffer.value_;
    }
  }

  return result;
}

- (CGImage)instanceMaskImage
{
  result = self->_instanceMaskImage.value_;
  if (!result)
  {
    v4 = [(MADRemoveBackgroundMaskResult *)self instanceMaskPixelBuffer];
    result = self->_instanceMaskImage.value_;
    if (v4)
    {
      if (result)
      {
        CFRelease(result);
        self->_instanceMaskImage.value_ = 0;
      }

      VTCreateCGImageFromCVPixelBuffer(v4, 0, &self->_instanceMaskImage.value_);
      result = self->_instanceMaskImage.value_;
      if (!result)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [MADRemoveBackgroundMaskResult instanceMaskImage];
        }

        return self->_instanceMaskImage.value_;
      }
    }
  }

  return result;
}

- (id)maskPixelBuffersForInstances:(id)a3 error:(id *)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [v6 firstIndex];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_6:
    v13 = v7;
  }

  else
  {
    v22 = *MEMORY[0x1E696A768];
    v23 = *MEMORY[0x1E696A578];
    while (1)
    {
      perInstanceMaskSurfaces = self->_perInstanceMaskSurfaces;
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
      v11 = [(NSDictionary *)perInstanceMaskSurfaces objectForKeyedSubscript:v10];

      if (!v11)
      {
        break;
      }

      pixelBufferOut = 0;
      v12 = CVPixelBufferCreateWithIOSurface(0, v11, 0, &pixelBufferOut);
      if (!pixelBufferOut)
      {
        v17 = v12;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [(MADRemoveBackgroundMaskResult *)buf maskPixelBuffersForInstances:v17 error:&v28];
        }

        if (a4)
        {
          v18 = MEMORY[0x1E696ABC0];
          v25 = v23;
          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create CVPixelBufferRef from IOSurface (%d)", v17];
          v26 = v19;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          *a4 = [v18 errorWithDomain:v22 code:-18 userInfo:v20];
        }

        CF<CGColorSpace *>::~CF(&pixelBufferOut);

        goto LABEL_16;
      }

      [v7 addObject:?];
      v8 = [v6 indexGreaterThanIndex:v8];
      CF<CGColorSpace *>::~CF(&pixelBufferOut);

      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_6;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [MADRemoveBackgroundMaskResult maskPixelBuffersForInstances:error:];
    }

    if (a4)
    {
      v14 = MEMORY[0x1E696ABC0];
      v29 = v23;
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid instance index %d", v8];
      v30[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      *a4 = [v14 errorWithDomain:v22 code:-50 userInfo:v16];
    }

LABEL_16:
    v13 = 0;
  }

  return v13;
}

- (id)maskImagesForInstances:(id)a3 error:(id *)a4
{
  v44[1] = *MEMORY[0x1E69E9840];
  v29 = a3;
  v30 = [MEMORY[0x1E695DF70] array];
  v5 = [v29 firstIndex];
  v26 = *MEMORY[0x1E696A768];
  v27 = *MEMORY[0x1E696A578];
  while (1)
  {
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v30;
      goto LABEL_31;
    }

    perInstanceMaskSurfaces = self->_perInstanceMaskSurfaces;
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
    v8 = [(NSDictionary *)perInstanceMaskSurfaces objectForKeyedSubscript:v7];

    if (!v8)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [MADRemoveBackgroundMaskResult maskPixelBuffersForInstances:error:];
      }

      if (!a4)
      {
        goto LABEL_24;
      }

      v17 = MEMORY[0x1E696ABC0];
      v43 = v27;
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid instance index %d", v5];
      v44[0] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      v20 = [v17 errorWithDomain:v26 code:-50 userInfo:v19];
      goto LABEL_23;
    }

    if ([v8 pixelFormat] != 1278226534)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [MADRemoveBackgroundMaskResult maskImagesForInstances:error:];
      }

      if (!a4)
      {
        goto LABEL_24;
      }

      v21 = MEMORY[0x1E696ABC0];
      v41 = v27;
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected pixel format"];
      v42 = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v20 = [v21 errorWithDomain:v26 code:-50 userInfo:v19];
LABEL_23:
      *a4 = v20;

LABEL_24:
      goto LABEL_30;
    }

    callbacks = *byte_1F49179B0;
    v35 = CGDataProviderCreateDirect(v8, [v8 height] * objc_msgSend(v8, "bytesPerRow"), &callbacks);
    if (!v35)
    {
      break;
    }

    CFRetain(v8);
    DeviceGray = CGColorSpaceCreateDeviceGray();
    v9 = [v8 width];
    v10 = [v8 height];
    v11 = [v8 bytesPerRow];
    v12 = CGImageCreate(v9, v10, 0x20uLL, 0x20uLL, v11, DeviceGray, 0x2100u, v35, 0, 1, kCGRenderingIntentDefault);
    v33 = v12;
    if (v12)
    {
      [v30 addObject:v12];
      v5 = [v29 indexGreaterThanIndex:v5];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [MADRemoveBackgroundMaskResult maskImagesForInstances:v32 error:?];
      }

      if (a4)
      {
        v13 = MEMORY[0x1E696ABC0];
        v37 = v27;
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create CGImage for IOSurface"];
        v38 = v14;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        *a4 = [v13 errorWithDomain:v26 code:-18 userInfo:v15];
      }
    }

    CF<CGColorSpace *>::~CF(&v33);
    CF<CGColorSpace *>::~CF(&DeviceGray);
    CF<CGColorSpace *>::~CF(&v35);

    if (!v12)
    {
      goto LABEL_30;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [MADRemoveBackgroundMaskResult maskImagesForInstances:error:];
  }

  if (a4)
  {
    v22 = MEMORY[0x1E696ABC0];
    v39 = v27;
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create CGDataProviderRef for IOSurface"];
    v40 = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    *a4 = [v22 errorWithDomain:v26 code:-18 userInfo:v24];
  }

  CF<CGColorSpace *>::~CF(&v35);

LABEL_30:
  v16 = 0;
LABEL_31:

  return v16;
}

- (CGRect)sourceRegionOfInterest
{
  x = self->_sourceRegionOfInterest.origin.x;
  y = self->_sourceRegionOfInterest.origin.y;
  width = self->_sourceRegionOfInterest.size.width;
  height = self->_sourceRegionOfInterest.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 11) = 0;
  return self;
}

- (void)maskPixelBuffersForInstances:(_DWORD *)a3 error:.cold.1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create CVPixelBufferRef from IOSurface (%d)", buf, 8u);
}

- (void)maskImagesForInstances:(uint8_t *)buf error:(_BYTE *)a2 .cold.2(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create CGImage for IOSurface", buf, 2u);
}

@end