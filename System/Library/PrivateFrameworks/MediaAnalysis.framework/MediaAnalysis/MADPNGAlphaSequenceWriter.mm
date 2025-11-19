@interface MADPNGAlphaSequenceWriter
- (MADPNGAlphaSequenceWriter)initWithFrameCount:(unint64_t)a3;
- (id).cxx_construct;
- (id)finishWithEndTime:(id *)a3;
- (id)transcodeWithMaxDimension:(unint64_t)a3;
- (int)addPixelBuffer:(__CVBuffer *)a3 withTime:(id *)a4;
@end

@implementation MADPNGAlphaSequenceWriter

- (MADPNGAlphaSequenceWriter)initWithFrameCount:(unint64_t)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = MADPNGAlphaSequenceWriter;
  v4 = [(MADPNGAlphaSequenceWriter *)&v13 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF88] data];
    data = v4->_data;
    v4->_data = v5;

    v7 = v4->_data;
    v8 = [*MEMORY[0x1E6982F28] identifier];
    v12 = CGImageDestinationCreateWithData(v7, v8, a3, 0);
    CF<__CVBuffer *>::operator=(&v4->_destination.value_, &v12);
    CF<__CVBuffer *>::~CF(&v12);

    value = v4->_destination.value_;
    if (value)
    {
      v16[0] = *MEMORY[0x1E696DEB0];
      v14 = *MEMORY[0x1E696D3C8];
      v15 = &unk_1F49BE080;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v16[1] = *MEMORY[0x1E696DD50];
      v17[0] = v10;
      v17[1] = MEMORY[0x1E695E118];
      CGImageDestinationSetProperties(value, [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2]);
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create PNG sequence destination", &v12, 2u);
      }

      v4->_status = -18;
    }

    v4->_remainingFrameCount = a3;
  }

  return v4;
}

- (int)addPixelBuffer:(__CVBuffer *)a3 withTime:(id *)a4
{
  v4 = self;
  v26 = *MEMORY[0x1E69E9840];
  LODWORD(self) = self->_status;
  if (self)
  {
    return self;
  }

  if (v4->_remainingFrameCount)
  {
    value = v4->_lastPixelBuffer.value_;
    if (!value)
    {
LABEL_9:
      lhs.value = CFRetain(a3);
      CF<__CVBuffer *>::operator=(&v4->_lastPixelBuffer.value_, &lhs);
      CF<__CVBuffer *>::~CF(&lhs);
      LODWORD(self) = 0;
      var3 = a4->var3;
      *&v4->_lastPTS.value = *&a4->var0;
      v4->_lastPTS.epoch = var3;
      return self;
    }

    v8 = v4->_lastImage.value_;
    if (v8)
    {
      CFRelease(v8);
      v4->_lastImage.value_ = 0;
    }

    LODWORD(self) = VTCreateCGImageFromCVPixelBuffer(value, 0, &v4->_lastImage.value_);
    v4->_status = self;
    if (!self)
    {
      v9 = MEMORY[0x1E695DF90];
      v23 = *MEMORY[0x1E696DEB0];
      v21 = *MEMORY[0x1E696D3D0];
      v10 = MEMORY[0x1E696AD98];
      lhs = *a4;
      rhs = v4->_lastPTS;
      CMTimeSubtract(&time, &lhs, &rhs);
      v11 = [v10 numberWithDouble:CMTimeGetSeconds(&time)];
      v22 = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v24 = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v14 = [v9 dictionaryWithDictionary:v13];

      CGImageDestinationAddImage(v4->_destination.value_, v4->_lastImage.value_, v14);
      --v4->_remainingFrameCount;

      goto LABEL_9;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      var0 = a4->var0;
      var1 = a4->var1;
      LODWORD(lhs.value) = 134218240;
      *(&lhs.value + 4) = var0;
      LOWORD(lhs.flags) = 1024;
      *(&lhs.flags + 2) = var1;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PNG sequence full; dropping pixel buffer (%lld/%d)", &lhs, 0x12u);
    }

    self = v4->_lastImage.value_;
    if (self)
    {
      CFRelease(self);
      LODWORD(self) = 0;
      v4->_lastImage.value_ = 0;
    }
  }

  return self;
}

- (id)finishWithEndTime:(id *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  if (self->_status)
  {
    goto LABEL_2;
  }

  remainingFrameCount = self->_remainingFrameCount;
  if (remainingFrameCount)
  {
    if (remainingFrameCount != 1 && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v8 = LODWORD(self->_remainingFrameCount) - 1;
      LODWORD(buf.var0) = 67109120;
      HIDWORD(buf.var0) = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PNG sequence expected %d more frames; repeating last", &buf, 8u);
    }

    buf = *a3;
    time2 = self->_lastPTS;
    if (CMTimeCompare(&buf, &time2) < 0)
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_2;
      }

      LOWORD(buf.var0) = 0;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "Invalid PNG sequence end time specified";
      goto LABEL_32;
    }

    value = self->_lastPixelBuffer.value_;
    v10 = self->_lastImage.value_;
    if (v10)
    {
      CFRelease(v10);
      self->_lastImage.value_ = 0;
    }

    if (VTCreateCGImageFromCVPixelBuffer(value, 0, &self->_lastImage.value_))
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_2;
      }

      LOWORD(buf.var0) = 0;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "Failed to convert CVPixelBuffer to CGImage";
LABEL_32:
      _os_log_impl(&dword_1C9B70000, v11, OS_LOG_TYPE_ERROR, v12, &buf, 2u);
LABEL_2:
      v3 = 0;
      goto LABEL_3;
    }

    buf = *a3;
    time2 = self->_lastPTS;
    CMTimeSubtract(&time, &buf, &time2);
    Seconds = CMTimeGetSeconds(&time);
    v16 = self->_remainingFrameCount;
    if (v16)
    {
      v17 = Seconds / v16;
      v18 = *MEMORY[0x1E696DEB0];
      v19 = *MEMORY[0x1E696D3D0];
      do
      {
        v20 = MEMORY[0x1E695DF90];
        v29 = v18;
        v27 = v19;
        v21 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
        v28 = v21;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v30 = v22;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v24 = [v20 dictionaryWithDictionary:v23];

        CGImageDestinationAddImage(self->_destination.value_, self->_lastImage.value_, v24);
        --self->_remainingFrameCount;
      }

      while (self->_remainingFrameCount);
    }
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_lastPTS.value;
    timescale = self->_lastPTS.timescale;
    LODWORD(buf.var0) = 134218240;
    *(&buf.var0 + 4) = v13;
    LOWORD(buf.var2) = 1024;
    *(&buf.var2 + 2) = timescale;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "PNG sequence full; dropping pixel buffer (%lld/%d)", &buf, 0x12u);
  }

  if (!CGImageDestinationFinalize(self->_destination.value_))
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_2;
    }

    LOWORD(buf.var0) = 0;
    v11 = MEMORY[0x1E69E9C10];
    v12 = "Failed to finalize output PNG sequence";
    goto LABEL_32;
  }

  v3 = self->_data;
LABEL_3:

  return v3;
}

- (id)transcodeWithMaxDimension:(unint64_t)a3
{
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Transcode not supported", v4, 2u);
  }

  return 0;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 4) = 0;
  *(self + 8) = 0;
  return self;
}

@end