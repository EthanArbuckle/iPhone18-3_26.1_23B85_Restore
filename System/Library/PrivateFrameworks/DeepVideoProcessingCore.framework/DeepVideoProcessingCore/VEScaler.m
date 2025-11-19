@interface VEScaler
- (VEScaler)init;
- (void)dealloc;
- (void)downScaleFrameSource:(__CVBuffer *)a3 destination:(__CVBuffer *)a4 rotate:(int64_t)a5 waitForCompletion:(BOOL)a6;
- (void)scaleFrameSource:(__CVBuffer *)a3 destination:(__CVBuffer *)a4 cropRectangles:(id *)a5 upscale:(BOOL)a6 rotate:(int64_t)a7 waitForCompletion:(BOOL)a8;
- (void)upScaleAndCropFrameSource:(__CVBuffer *)a3 destination:(__CVBuffer *)a4 upscale:(BOOL)a5 rotate:(int64_t)a6 waitForCompletion:(BOOL)a7;
@end

@implementation VEScaler

- (VEScaler)init
{
  v6.receiver = self;
  v6.super_class = VEScaler;
  v2 = [(VEScaler *)&v6 init];
  if (v2 && (IOSurfaceAcceleratorCreate(), !v2->_scaler))
  {
    if ((global_logLevel & 0x10) != 0)
    {
      v4 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
      {
        [(VEScaler *)v4 init];
      }
    }

    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (void)scaleFrameSource:(__CVBuffer *)a3 destination:(__CVBuffer *)a4 cropRectangles:(id *)a5 upscale:(BOOL)a6 rotate:(int64_t)a7 waitForCompletion:(BOOL)a8
{
  v8 = a8;
  v10 = a6;
  v13 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v15 = Mutable;
  v16 = MEMORY[0x277CBED28];
  if (v8)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1AE90], *MEMORY[0x277CBED28]);
    if (v10)
    {
LABEL_3:
      v17 = *v16;
      CFDictionarySetValue(v15, *MEMORY[0x277D1AE38], *v16);
      CFDictionarySetValue(v15, *MEMORY[0x277D1AE88], v17);
      if (!a7)
      {
        goto LABEL_4;
      }

LABEL_8:
      switch(a7)
      {
        case 3:
          v18 = 3;
          break;
        case 2:
          v18 = 7;
          break;
        case 1:
          v18 = 4;
          break;
        default:
          LODWORD(v21) = 0;
LABEL_16:
          v19 = CFNumberCreate(v13, kCFNumberIntType, &v21);
          CFDictionarySetValue(v15, *MEMORY[0x277D1AEA0], v19);
          CFRelease(v19);
          if (v8)
          {
            goto LABEL_5;
          }

LABEL_17:
          v21 = xmmword_285B2E498;
          v22 = qword_285B2E4A8;
          CVPixelBufferGetIOSurface(a3);
          CVPixelBufferGetIOSurface(a4);
          goto LABEL_18;
      }

      LODWORD(v21) = v18;
      goto LABEL_16;
    }
  }

  if (a7)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_5:
  CVPixelBufferGetIOSurface(a3);
  CVPixelBufferGetIOSurface(a4);
LABEL_18:
  if (IOSurfaceAcceleratorTransformSurface())
  {
    if ((global_logLevel & 0x10) != 0)
    {
      v20 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
      {
        [VEScaler scaleFrameSource:v20 destination:a3 cropRectangles:a4 upscale:? rotate:? waitForCompletion:?];
      }
    }
  }

  CFRelease(v15);
}

- (void)downScaleFrameSource:(__CVBuffer *)a3 destination:(__CVBuffer *)a4 rotate:(int64_t)a5 waitForCompletion:(BOOL)a6
{
  v6 = a6;
  kdebug_trace();
  v14 = 0u;
  v11 = 0u;
  v12 = CVPixelBufferGetWidth(a3) << 16;
  v13 = CVPixelBufferGetHeight(a3) << 16;
  [(VEScaler *)self scaleFrameSource:a3 destination:a4 cropRectangles:&v11 upscale:0 rotate:a5 waitForCompletion:v6];
  kdebug_trace();
}

- (void)upScaleAndCropFrameSource:(__CVBuffer *)a3 destination:(__CVBuffer *)a4 upscale:(BOOL)a5 rotate:(int64_t)a6 waitForCompletion:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  kdebug_trace();
  Width = CVPixelBufferGetWidth(a4);
  v14 = Width;
  v23 = Width;
  Height = CVPixelBufferGetHeight(a4);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v20 = v14;
  v21 = Height;
  if ((a6 - 1) <= 1)
  {
    swapWidthAndHeight(&v23, &Height);
  }

  if (v9)
  {
    v15 = (v23 << 15) & 0xFFFFFFFFFFFF0000;
    v16 = (Height << 15) & 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v15 = v23 << 16;
    v16 = Height << 16;
  }

  *&v18 = v15;
  *(&v18 + 1) = v16;
  [(VEScaler *)self scaleFrameSource:a3 destination:a4 cropRectangles:&v17 upscale:v9 rotate:a6 waitForCompletion:v7];
  kdebug_trace();
}

- (void)dealloc
{
  scaler = self->_scaler;
  if (scaler)
  {
    CFRelease(scaler);
  }

  v4.receiver = self;
  v4.super_class = VEScaler;
  [(VEScaler *)&v4 dealloc];
}

- (void)scaleFrameSource:(__CVBuffer *)a3 destination:cropRectangles:upscale:rotate:waitForCompletion:.cold.1(void *a1, __CVBuffer *a2, __CVBuffer *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = 134219264;
  Width = CVPixelBufferGetWidth(a2);
  v8 = 2048;
  Height = CVPixelBufferGetHeight(a2);
  v10 = 1024;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v12 = 2048;
  v13 = CVPixelBufferGetWidth(a3);
  v14 = 2048;
  v15 = CVPixelBufferGetHeight(a3);
  v16 = 1024;
  v17 = CVPixelBufferGetPixelFormatType(a3);
  _os_log_error_impl(&dword_24874B000, v5, OS_LOG_TYPE_ERROR, "[Scaler] Error! failed to run scaler. Source: %ld x %ld, format:%d, Destination: %ld x %ld, format: %d\n", &v6, 0x36u);
}

@end