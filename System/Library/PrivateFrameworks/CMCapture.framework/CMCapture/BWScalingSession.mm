@interface BWScalingSession
- (BWScalingSession)init;
- (id)_newIntermediatePoolWithDimensions:(id)dimensions pixelFormat:(unsigned int)format;
- (int)scalePixelBuffer:(__CVBuffer *)buffer rect:(CGRect)rect exifOrientation:(int)orientation intoPixelBuffer:(__CVBuffer *)pixelBuffer rect:(CGRect)a7;
- (int)scalePixelBuffer:(__CVBuffer *)buffer rect:(CGRect)rect intoPixelBuffer:(__CVBuffer *)pixelBuffer rect:(CGRect)a6;
- (void)_ensurePixelTransferSession;
- (void)dealloc;
- (void)init;
- (void)invalidate;
@end

@implementation BWScalingSession

- (BWScalingSession)init
{
  v5.receiver = self;
  v5.super_class = BWScalingSession;
  v2 = [(BWScalingSession *)&v5 init];
  v3 = v2;
  if (v2)
  {
    VTSessionSetProperty(v2->_rotationSession, *MEMORY[0x1E6983D68], MEMORY[0x1E695E118]);
    [(BWScalingSession *)v3 _ensurePixelTransferSession];
    if (!v3->_transferSession)
    {
      [(BWScalingSession *)v3 init];
      return 0;
    }
  }

  return v3;
}

- (void)_ensurePixelTransferSession
{
  p_transferSession = &self->_transferSession;
  if (!self->_transferSession)
  {
    VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], p_transferSession);
    v3 = MEMORY[0x1E695E118];
    VTSessionSetProperty(*p_transferSession, *MEMORY[0x1E6983DF0], MEMORY[0x1E695E118]);
    VTSessionSetProperty(*p_transferSession, *MEMORY[0x1E6983DF8], v3);
    VTSessionSetProperty(*p_transferSession, *MEMORY[0x1E6983E58], MEMORY[0x1E695E110]);
    v4 = *p_transferSession;
    v5 = *MEMORY[0x1E6983E00];

    VTSessionSetProperty(v4, v5, v3);
  }
}

- (void)dealloc
{
  rotationSession = self->_rotationSession;
  if (rotationSession)
  {
    VTPixelRotationSessionInvalidate(rotationSession);
    v4 = self->_rotationSession;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  transferSession = self->_transferSession;
  if (transferSession)
  {
    VTPixelTransferSessionInvalidate(transferSession);
    v6 = self->_transferSession;
    if (v6)
    {
      CFRelease(v6);
    }
  }

  v7.receiver = self;
  v7.super_class = BWScalingSession;
  [(BWScalingSession *)&v7 dealloc];
}

- (int)scalePixelBuffer:(__CVBuffer *)buffer rect:(CGRect)rect intoPixelBuffer:(__CVBuffer *)pixelBuffer rect:(CGRect)a6
{
  if (!buffer)
  {
    [BWScalingSession scalePixelBuffer:rect:intoPixelBuffer:rect:];
    return 0;
  }

  if (!pixelBuffer)
  {
    [BWScalingSession scalePixelBuffer:rect:intoPixelBuffer:rect:];
    return 0;
  }

  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v11 = rect.size.height;
  v12 = rect.size.width;
  v13 = rect.origin.y;
  v14 = rect.origin.x;
  if (CGRectIsNull(rect))
  {
    v14 = psn_pixelBufferRect(buffer);
    v13 = v17;
    v12 = v18;
    v11 = v19;
  }

  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  if (CGRectIsNull(v49))
  {
    x = psn_pixelBufferRect(pixelBuffer);
    y = v20;
    width = v21;
    height = v22;
  }

  v23 = ss_conformRectForMSR420vfPixelBuffer(buffer, 0, v14, v13, v12, v11);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = ss_conformRectForMSR420vfPixelBuffer(pixelBuffer, 1, x, y, width, height);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  transferSession = self->_transferSession;
  v38 = *MEMORY[0x1E6983E40];
  v50.origin.x = v23;
  v50.origin.y = v25;
  v50.size.width = v27;
  v50.size.height = v29;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v50);
  v40 = CFAutorelease(DictionaryRepresentation);
  v41 = VTSessionSetProperty(transferSession, v38, v40);
  if (v41)
  {
    v47 = v41;
    [BWScalingSession scalePixelBuffer:rect:intoPixelBuffer:rect:];
  }

  else
  {
    v42 = self->_transferSession;
    v43 = *MEMORY[0x1E6983DD0];
    v51.origin.x = v30;
    v51.origin.y = v32;
    v51.size.width = v34;
    v51.size.height = v36;
    v44 = CGRectCreateDictionaryRepresentation(v51);
    v45 = CFAutorelease(v44);
    v46 = VTSessionSetProperty(v42, v43, v45);
    if (v46)
    {
      v47 = v46;
      [BWScalingSession scalePixelBuffer:rect:intoPixelBuffer:rect:];
    }

    else
    {
      v47 = VTPixelTransferSessionTransferImage(self->_transferSession, buffer, pixelBuffer);
      if (v47)
      {
        [BWScalingSession scalePixelBuffer:rect:intoPixelBuffer:rect:];
      }
    }
  }

  return v47;
}

- (int)scalePixelBuffer:(__CVBuffer *)buffer rect:(CGRect)rect exifOrientation:(int)orientation intoPixelBuffer:(__CVBuffer *)pixelBuffer rect:(CGRect)a7
{
  if (!buffer)
  {
    [BWScalingSession scalePixelBuffer:rect:exifOrientation:intoPixelBuffer:rect:];
    return 0;
  }

  if (!pixelBuffer)
  {
    [BWScalingSession scalePixelBuffer:rect:exifOrientation:intoPixelBuffer:rect:];
    return 0;
  }

  if ((orientation - 9) <= 0xFFFFFFF7)
  {
    [BWScalingSession scalePixelBuffer:rect:exifOrientation:intoPixelBuffer:rect:];
    return 0;
  }

  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v13 = rect.size.height;
  v14 = rect.size.width;
  v15 = rect.origin.y;
  v16 = rect.origin.x;
  if (CGRectIsNull(rect))
  {
    v16 = psn_pixelBufferRect(buffer);
    v15 = v19;
    v14 = v20;
    v13 = v21;
  }

  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v43 = v16;
  v44 = v15;
  if (CGRectIsNull(v45))
  {
    psn_pixelBufferRect(pixelBuffer);
    width = v22;
    height = v23;
  }

  v24 = FigCaptureRotationDegreesAndMirroringFromExifOrientation(orientation, 0);
  v25 = v24;
  if (v24 == 270 || (v26 = width, v27 = height, v24 == 90))
  {
    v26 = height;
    v27 = width;
  }

  v28 = v26 / v14;
  v29 = 0.251256281;
  if (v26 / v14 >= 0.251256281 && v28 <= 3.98)
  {
    v28 = v27 / v13;
    if (v27 / v13 <= 3.98 && v28 >= 0.251256281)
    {
      v30 = 0;
      goto LABEL_22;
    }
  }

  v31 = v26;
  v32 = v27;
  intermediateBufferPool = self->_intermediateBufferPool;
  if (!intermediateBufferPool)
  {
    v34 = v31 | (v32 << 32);
    goto LABEL_20;
  }

  v34 = v31 | (v32 << 32);
  if (*&self->_intermediateBufferPoolDimensions != v34)
  {
LABEL_20:

    intermediateBufferPool = [(BWScalingSession *)self _newIntermediatePoolWithDimensions:v34 pixelFormat:CVPixelBufferGetPixelFormatType(buffer)];
    self->_intermediateBufferPool = intermediateBufferPool;
    self->_intermediateBufferPoolDimensions.width = v31;
    self->_intermediateBufferPoolDimensions.height = v32;
    if (intermediateBufferPool)
    {
      goto LABEL_21;
    }

    [BWScalingSession scalePixelBuffer:rect:exifOrientation:intoPixelBuffer:rect:];
    return 0;
  }

LABEL_21:
  v30 = [(BWPixelBufferPool *)intermediateBufferPool newPixelBuffer:v29];
  v35 = [(BWScalingSession *)self scalePixelBuffer:buffer rect:v30 intoPixelBuffer:v43 rect:v44, v14, v13, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), v26, v27];
  if (v35)
  {
    v41 = v35;
    [BWScalingSession scalePixelBuffer:rect:exifOrientation:intoPixelBuffer:rect:];
    goto LABEL_37;
  }

LABEL_22:
  p_rotationSession = &self->_rotationSession;
  rotationSession = self->_rotationSession;
  if (rotationSession)
  {
    if (self->_rotationSessionDegrees == v25)
    {
      goto LABEL_35;
    }

    CFRelease(rotationSession);
    *p_rotationSession = 0;
  }

  v38 = VTPixelRotationSessionCreate(*MEMORY[0x1E695E480], &self->_rotationSession);
  if (v38)
  {
    v41 = v38;
    [BWScalingSession scalePixelBuffer:rect:exifOrientation:intoPixelBuffer:rect:];
  }

  else
  {
    switch(v25)
    {
      case 270:
        v39 = MEMORY[0x1E6983FF8];
        break;
      case 180:
        v39 = MEMORY[0x1E6983FF0];
        break;
      case 90:
        v39 = MEMORY[0x1E6984000];
        break;
      default:
        v39 = MEMORY[0x1E6983FE8];
        break;
    }

    v40 = VTSessionSetProperty(*p_rotationSession, *MEMORY[0x1E6983D98], *v39);
    if (v40)
    {
      v41 = v40;
      [BWScalingSession scalePixelBuffer:rect:exifOrientation:intoPixelBuffer:rect:];
    }

    else
    {
      self->_rotationSessionDegrees = v25;
      if (self->_rotationSession)
      {
LABEL_35:
        v41 = VTPixelRotationSessionRotateSubImage();
        if (v41)
        {
          [BWScalingSession scalePixelBuffer:rect:exifOrientation:intoPixelBuffer:rect:];
        }

        goto LABEL_37;
      }

      [BWScalingSession scalePixelBuffer:rect:exifOrientation:intoPixelBuffer:rect:];
      v41 = 0;
    }
  }

LABEL_37:
  if (v30)
  {
    CFRelease(v30);
  }

  return v41;
}

- (id)_newIntermediatePoolWithDimensions:(id)dimensions pixelFormat:(unsigned int)format
{
  v4 = *&format;
  v6 = objc_alloc_init(BWVideoFormatRequirements);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  -[BWVideoFormatRequirements setSupportedPixelFormats:](v6, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1]);
  [(BWVideoFormatRequirements *)v6 setWidth:dimensions.var0];
  [(BWVideoFormatRequirements *)v6 setHeight:*&dimensions >> 32];
  v8 = v6;
  return -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1]), 1, @"BWVideoPIPOverlayNode Intermediate Pool", +[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"));
}

- (void)invalidate
{
  rotationSession = self->_rotationSession;
  if (rotationSession)
  {
    VTPixelRotationSessionInvalidate(rotationSession);
    v4 = self->_rotationSession;
    if (v4)
    {
      CFRelease(v4);
      self->_rotationSession = 0;
    }
  }

  transferSession = self->_transferSession;
  if (transferSession)
  {
    VTPixelTransferSessionInvalidate(transferSession);
    v6 = self->_transferSession;
    if (v6)
    {
      CFRelease(v6);
      self->_transferSession = 0;
    }
  }
}

- (void)init
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  FigDebugAssert3();
}

- (uint64_t)scalePixelBuffer:rect:intoPixelBuffer:rect:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)scalePixelBuffer:rect:intoPixelBuffer:rect:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)scalePixelBuffer:rect:intoPixelBuffer:rect:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)scalePixelBuffer:rect:intoPixelBuffer:rect:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)scalePixelBuffer:rect:intoPixelBuffer:rect:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)scalePixelBuffer:rect:exifOrientation:intoPixelBuffer:rect:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)scalePixelBuffer:rect:exifOrientation:intoPixelBuffer:rect:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)scalePixelBuffer:rect:exifOrientation:intoPixelBuffer:rect:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)scalePixelBuffer:rect:exifOrientation:intoPixelBuffer:rect:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)scalePixelBuffer:rect:exifOrientation:intoPixelBuffer:rect:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)scalePixelBuffer:rect:exifOrientation:intoPixelBuffer:rect:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)scalePixelBuffer:rect:exifOrientation:intoPixelBuffer:rect:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)scalePixelBuffer:rect:exifOrientation:intoPixelBuffer:rect:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)scalePixelBuffer:rect:exifOrientation:intoPixelBuffer:rect:.cold.9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end