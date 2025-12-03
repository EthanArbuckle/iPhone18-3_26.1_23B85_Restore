@interface MADPixelBufferProcesser
- (id).cxx_construct;
- (int)_configurePixelRotationSessionWithOrientation:(unsigned int)orientation;
- (int)_createPixelBuffer:(__CVBuffer *)buffer width:(unint64_t)width height:(unint64_t)height format:(unsigned int)format;
- (int)processPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation regionOfInterest:(CGRect)interest scaledWidth:(unint64_t)width scaledHeight:(unint64_t)height pixelFormat:(unsigned int)format output:(__CVBuffer *)output;
@end

@implementation MADPixelBufferProcesser

- (int)_configurePixelRotationSessionWithOrientation:(unsigned int)orientation
{
  if (orientation > 4)
  {
    if (orientation > 6)
    {
      if (orientation != 7)
      {
        if (orientation != 8)
        {
          goto LABEL_29;
        }

        value = self->_rotationSession.value_;
        v10 = *MEMORY[0x1E6983D98];
        v11 = MEMORY[0x1E6983FF8];
        goto LABEL_19;
      }

      v12 = self->_rotationSession.value_;
      v13 = *MEMORY[0x1E6983D98];
      v14 = MEMORY[0x1E6984000];
    }

    else
    {
      if (orientation != 5)
      {
        value = self->_rotationSession.value_;
        v10 = *MEMORY[0x1E6983D98];
        v11 = MEMORY[0x1E6984000];
        goto LABEL_19;
      }

      v12 = self->_rotationSession.value_;
      v13 = *MEMORY[0x1E6983D98];
      v14 = MEMORY[0x1E6983FF8];
    }
  }

  else
  {
    if (orientation <= 2)
    {
      if (orientation != 1)
      {
        if (orientation == 2)
        {
          result = VTSessionSetProperty(self->_rotationSession.value_, *MEMORY[0x1E6983D98], *MEMORY[0x1E6983FE8]);
          if (!result)
          {
            result = VTSessionSetProperty(self->_rotationSession.value_, *MEMORY[0x1E6983D78], *MEMORY[0x1E695E4D0]);
            if (!result)
            {
              v6 = self->_rotationSession.value_;
              v7 = *MEMORY[0x1E6983D80];
              v8 = MEMORY[0x1E695E4C0];
LABEL_26:
              v16 = *v8;
LABEL_27:
              result = VTSessionSetProperty(v6, v7, v16);
              if (!result)
              {
                return 0;
              }

              return result;
            }
          }

          return result;
        }

LABEL_29:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [MADPixelBufferProcesser _configurePixelRotationSessionWithOrientation:orientation];
        }

        return -50;
      }

      value = self->_rotationSession.value_;
      v10 = *MEMORY[0x1E6983D98];
      v11 = MEMORY[0x1E6983FE8];
LABEL_19:
      result = VTSessionSetProperty(value, v10, *v11);
      if (!result)
      {
        v15 = *MEMORY[0x1E695E4C0];
        result = VTSessionSetProperty(self->_rotationSession.value_, *MEMORY[0x1E6983D78], *MEMORY[0x1E695E4C0]);
        if (!result)
        {
          v6 = self->_rotationSession.value_;
          v7 = *MEMORY[0x1E6983D80];
          v16 = v15;
          goto LABEL_27;
        }
      }

      return result;
    }

    if (orientation == 3)
    {
      value = self->_rotationSession.value_;
      v10 = *MEMORY[0x1E6983D98];
      v11 = MEMORY[0x1E6983FF0];
      goto LABEL_19;
    }

    v12 = self->_rotationSession.value_;
    v13 = *MEMORY[0x1E6983D98];
    v14 = MEMORY[0x1E6983FE8];
  }

  result = VTSessionSetProperty(v12, v13, *v14);
  if (!result)
  {
    result = VTSessionSetProperty(self->_rotationSession.value_, *MEMORY[0x1E6983D78], *MEMORY[0x1E695E4C0]);
    if (!result)
    {
      v6 = self->_rotationSession.value_;
      v7 = *MEMORY[0x1E6983D80];
      v8 = MEMORY[0x1E695E4D0];
      goto LABEL_26;
    }
  }

  return result;
}

- (int)_createPixelBuffer:(__CVBuffer *)buffer width:(unint64_t)width height:(unint64_t)height format:(unsigned int)format
{
  v24[6] = *MEMORY[0x1E69E9840];
  cf = 0;
  p_pool = &self->_pool;
  value = self->_pool.value_;
  if (!value || self->_bufferWidth != width || self->_bufferHeight != height || self->_pixelFormat != format)
  {
    self->_bufferWidth = width;
    self->_bufferHeight = height;
    self->_pixelFormat = format;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{*&format, cf, *MEMORY[0x1E6966130]}];
    v24[0] = v11;
    v23[1] = *MEMORY[0x1E6966208];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:width];
    v24[1] = v12;
    v23[2] = *MEMORY[0x1E69660B8];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:height];
    v24[2] = v13;
    v23[3] = *MEMORY[0x1E6966090];
    if ((width & 0xF) != 0)
    {
      v14 = 16 - (width & 0xF);
    }

    else
    {
      v14 = 0;
    }

    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v14];
    v24[3] = v15;
    v23[4] = *MEMORY[0x1E6966078];
    if ((height & 0xF) != 0)
    {
      v16 = 16 - (height & 0xF);
    }

    else
    {
      v16 = 0;
    }

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v16];
    v23[5] = *MEMORY[0x1E69660D8];
    v24[4] = v17;
    v24[5] = MEMORY[0x1E695E0F8];
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:6];

    if (p_pool->value_)
    {
      CFRelease(p_pool->value_);
      p_pool->value_ = 0;
    }

    PixelBuffer = CVPixelBufferPoolCreate(0, 0, v18, &p_pool->value_);

    if (PixelBuffer)
    {
      goto LABEL_17;
    }

    value = p_pool->value_;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(0, value, &cf);
  if (PixelBuffer)
  {
LABEL_17:
    if (p_pool->value_)
    {
      CFRelease(p_pool->value_);
      p_pool->value_ = 0;
    }

    goto LABEL_22;
  }

  v20 = cf;
  if (cf)
  {
    v20 = CFRetain(cf);
  }

  PixelBuffer = 0;
  *buffer = v20;
LABEL_22:
  CF<CGColorSpace *>::~CF(&cf);
  return PixelBuffer;
}

- (int)processPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation regionOfInterest:(CGRect)interest scaledWidth:(unint64_t)width scaledHeight:(unint64_t)height pixelFormat:(unsigned int)format output:(__CVBuffer *)output
{
  v9 = *&format;
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v16 = *&orientation;
  v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@][processPixelBuffer]", objc_opt_class()];
  v19 = MADSignpostLog();
  v20 = os_signpost_id_generate(v19);

  v21 = MADSignpostLog();
  v22 = v21;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "MADPixelBufferProcesser_processPixelBuffer", &unk_1C977645E, buf, 2u);
  }

  p_rotationSession = &self->_rotationSession;
  if (self->_rotationSession.value_ || (v24 = VTPixelRotationSessionCreate(0, &self->_rotationSession.value_)) == 0)
  {
    v24 = [(MADPixelBufferProcesser *)self _configurePixelRotationSessionWithOrientation:v16];
    if (v24)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [MADPixelBufferProcesser processPixelBuffer:orientation:regionOfInterest:scaledWidth:scaledHeight:pixelFormat:output:];
      }
    }

    else
    {
      v25 = CVPixelBufferGetWidth(buffer);
      v26 = CVPixelBufferGetHeight(buffer);
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      if (CGRectIsEmpty(v50) || (v54.size.width = v25, v54.size.height = v26, v54.origin.x = 0.0, v54.origin.y = 0.0, v51.origin.x = x, v51.origin.y = y, v51.size.width = width, v51.size.height = height, CGRectEqualToRect(v51, v54)))
      {
        VTSessionSetProperty(p_rotationSession->value_, *MEMORY[0x1E6983E40], 0);
        VTSessionSetProperty(p_rotationSession->value_, *MEMORY[0x1E6983DD0], 0);
      }

      else
      {
        v52.origin.x = x;
        v52.origin.y = y;
        v52.size.width = width;
        v52.size.height = height;
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v52);
        v53.size.height = height;
        v53.size.width = width;
        *buf = DictionaryRepresentation;
        v53.origin.x = 0.0;
        v53.origin.y = 0.0;
        propertyValue[0] = CGRectCreateDictionaryRepresentation(v53);
        VTSessionSetProperty(p_rotationSession->value_, *MEMORY[0x1E6983E40], *buf);
        VTSessionSetProperty(p_rotationSession->value_, *MEMORY[0x1E6983DD0], propertyValue[0]);
        CF<CGColorSpace *>::~CF(propertyValue);
        CF<CGColorSpace *>::~CF(buf);
      }

      v28 = *MEMORY[0x1E695E4D0];
      VTSessionSetProperty(p_rotationSession->value_, *MEMORY[0x1E6983E38], *MEMORY[0x1E695E4D0]);
      VTSessionSetProperty(p_rotationSession->value_, *MEMORY[0x1E6983DA0], v28);
      if (v16 <= 4)
      {
        heightCopy = width;
      }

      else
      {
        heightCopy = height;
      }

      if (v16 <= 4)
      {
        width = height;
      }

      *buf = 0;
      v30 = MADSignpostLog();
      v31 = os_signpost_id_generate(v30);

      v32 = MADSignpostLog();
      v33 = v32;
      if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
      {
        LOWORD(propertyValue[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C972C000, v33, OS_SIGNPOST_INTERVAL_BEGIN, v31, "MADPixelBufferProcesser_CreatePixelBuffer", &unk_1C977645E, propertyValue, 2u);
      }

      if (*buf)
      {
        CFRelease(*buf);
        *buf = 0;
      }

      v24 = [(MADPixelBufferProcesser *)self _createPixelBuffer:buf width:heightCopy height:width format:v9];
      v34 = MADSignpostLog();
      v35 = v34;
      if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
      {
        LOWORD(propertyValue[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C972C000, v35, OS_SIGNPOST_INTERVAL_END, v31, "MADPixelBufferProcesser_CreatePixelBuffer", &unk_1C977645E, propertyValue, 2u);
      }

      if (v24)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [MADPixelBufferProcesser processPixelBuffer:orientation:regionOfInterest:scaledWidth:scaledHeight:pixelFormat:output:];
        }
      }

      else
      {
        v36 = MADSignpostLog();
        v37 = os_signpost_id_generate(v36);

        v38 = MADSignpostLog();
        v39 = v38;
        if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
        {
          LOWORD(propertyValue[0]) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C972C000, v39, OS_SIGNPOST_INTERVAL_BEGIN, v37, "MADPixelBufferProcesser_ScaleRotate", &unk_1C977645E, propertyValue, 2u);
        }

        v24 = VTPixelRotationSessionRotateImage(p_rotationSession->value_, buffer, *buf);
        v40 = MADSignpostLog();
        v41 = v40;
        if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
        {
          LOWORD(propertyValue[0]) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C972C000, v41, OS_SIGNPOST_INTERVAL_END, v37, "MADPixelBufferProcesser_ScaleRotate", &unk_1C977645E, propertyValue, 2u);
        }

        if (v24)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [MADPixelBufferProcesser processPixelBuffer:orientation:regionOfInterest:scaledWidth:scaledHeight:pixelFormat:output:];
          }
        }

        else
        {
          v42 = *buf;
          if (*buf)
          {
            v42 = CFRetain(*buf);
          }

          *output = v42;
          v43 = MADSignpostLog();
          v44 = v43;
          if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
          {
            LOWORD(propertyValue[0]) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C972C000, v44, OS_SIGNPOST_INTERVAL_END, v20, "MADPixelBufferProcesser_processPixelBuffer", &unk_1C977645E, propertyValue, 2u);
          }

          v24 = 0;
        }
      }

      CF<CGColorSpace *>::~CF(buf);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [MADPixelBufferProcesser processPixelBuffer:orientation:regionOfInterest:scaledWidth:scaledHeight:pixelFormat:output:];
  }

  return v24;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)_configurePixelRotationSessionWithOrientation:(int)a1 .cold.1(int a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid orientation: %u", v1, 8u);
}

@end