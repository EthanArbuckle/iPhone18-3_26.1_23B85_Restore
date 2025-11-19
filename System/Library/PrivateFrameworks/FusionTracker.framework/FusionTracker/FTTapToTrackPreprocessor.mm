@interface FTTapToTrackPreprocessor
- (BOOL)preprocessBuffer:(__CVBuffer *)a3;
- (FTTapToTrackPreprocessor)initWithScaler:(id)a3;
- (double)meanPixel;
- (id).cxx_construct;
@end

@implementation FTTapToTrackPreprocessor

- (FTTapToTrackPreprocessor)initWithScaler:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = FTTapToTrackPreprocessor;
  v6 = [(FTTapToTrackPreprocessor *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scaler, a3);
    v8 = v7;
  }

  return v7;
}

- (BOOL)preprocessBuffer:(__CVBuffer *)a3
{
  ptr = self->_intermediateBuffer.__ptr_;
  if (!ptr)
  {
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    if (Width <= Height)
    {
      v7 = Height;
    }

    else
    {
      v7 = Width;
    }

    v8 = (v7 / 0x280);
    if (v8 <= 1)
    {
      v8 = 1;
    }

    if (v8 >= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = CVPixelBufferGetWidth(a3) / v9;
    v11 = CVPixelBufferGetHeight(a3);
    ft::CreateIOSurfaceBackedPixelBuffer(v10, v11 / v9, 0x42475241u, &v16);
  }

  v12 = [(FTScaling *)self->_scaler scaleSourceBuffer:a3 toDestinationBuffer:ptr sourceROI:self->_meanPixel destinationROI:*MEMORY[0x277CBF398] mean:*(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24), *MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24), v16];
  if ((v12 & 1) == 0)
  {
    v13 = v12;
    v14 = ft::GetOsLog(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [FTTapToTrackPreprocessor preprocessBuffer:v14];
    }

    LOBYTE(v12) = v13;
  }

  return v12;
}

- (double)meanPixel
{
  a2.i32[0] = *(a1 + 24);
  *&result = vmovl_u8(a2).u64[0];
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end