@interface FTMSRScaler
- (BOOL)scaleSourceBuffer:(__CVBuffer *)buffer toDestinationBuffer:(__CVBuffer *)destinationBuffer sourceROI:(CGRect)i destinationROI:(CGRect)oI mean:;
- (FTMSRScaler)init;
@end

@implementation FTMSRScaler

- (FTMSRScaler)init
{
  v5.receiver = self;
  v5.super_class = FTMSRScaler;
  if ([(FTMSRScaler *)&v5 init])
  {
    v3 = 1;
    v4 = 4;
    operator new();
  }

  return 0;
}

- (BOOL)scaleSourceBuffer:(__CVBuffer *)buffer toDestinationBuffer:(__CVBuffer *)destinationBuffer sourceROI:(CGRect)i destinationROI:(CGRect)oI mean:
{
  v7 = v6;
  height = oI.size.height;
  width = oI.size.width;
  y = oI.origin.y;
  x = oI.origin.x;
  v13 = i.size.height;
  v14 = i.size.width;
  v15 = i.origin.y;
  v16 = i.origin.x;
  v48 = &unk_285F8F1F8;
  bufferCopy = buffer;
  v50 = 0;
  if (CVPixelBufferLockBaseAddress(buffer, 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to lock pixel buffer.");
    goto LABEL_24;
  }

  v47 = 0;
  v48 = &unk_285F8F2D0;
  v45 = &unk_285F8F1F8;
  destinationBufferCopy = destinationBuffer;
  if (CVPixelBufferLockBaseAddress(destinationBuffer, 0))
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Failed to lock pixel buffer.");
    goto LABEL_22;
  }

  v45 = &unk_285F8F2D0;
  v51.origin.x = v16;
  v51.origin.y = v15;
  v51.size.width = v14;
  v51.size.height = v13;
  if (CGRectIsEmpty(v51))
  {
    v14 = CVPixelBufferGetWidth(buffer);
    v13 = CVPixelBufferGetHeight(buffer);
    v16 = 0.0;
    v15 = 0.0;
  }

  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  if (CGRectIsEmpty(v52))
  {
    width = CVPixelBufferGetWidth(destinationBuffer);
    height = CVPixelBufferGetHeight(destinationBuffer);
    y = 0.0;
    x = 0.0;
  }

  bzero(v44, 0x620uLL);
  ptr = self->_resampler.__ptr_;
  if (v7)
  {
    v20 = v44;
  }

  else
  {
    v20 = 0;
  }

  *v27 = v16;
  *&v27[1] = v15;
  *&v27[2] = v14;
  *&v27[3] = v13;
  v28 = 1;
  v29 = x;
  v30 = y;
  v31 = width;
  v32 = height;
  v33 = 1;
  v34 = 0;
  v35 = 0;
  v36 = 1;
  v37 = 0;
  v38 = v20;
  v39 = x;
  v40 = y;
  v41 = width;
  v42 = height;
  v43 = v7 != 0;
  ik::core::msr::MSR::Resample(*ptr, buffer, destinationBuffer, v27);
  if (v7 && (v21 = FTComputeMeanColor(v44, (width * height), v7), v21))
  {
    v22 = ft::GetOsLog(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [FTMSRScaler scaleSourceBuffer:toDestinationBuffer:sourceROI:destinationROI:mean:];
    }

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v45 = &unk_285F8F1F8;
  if (CVPixelBufferUnlockBaseAddress(destinationBufferCopy, v47))
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Failed to unlock pixel buffer.");
LABEL_22:
    __cxa_throw(v26, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v48 = &unk_285F8F1F8;
  if (CVPixelBufferUnlockBaseAddress(bufferCopy, v50))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to unlock pixel buffer.");
LABEL_24:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return v23;
}

- (void)scaleSourceBuffer:(uint64_t)a1 toDestinationBuffer:(NSObject *)a2 sourceROI:destinationROI:mean:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = (*(*a1 + 16))(a1);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&dword_24BC30000, a2, OS_LOG_TYPE_ERROR, "Scaler encountered an error: %s", &v4, 0xCu);
}

@end