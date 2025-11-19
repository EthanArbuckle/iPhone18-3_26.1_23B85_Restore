@interface FRCScaler
- (FRCScaler)init;
- (void)dealloc;
- (void)scaleFrameSource:(__CVBuffer *)a3 destination:(__CVBuffer *)a4 cropRectangles:(id *)a5 upscale:(BOOL)a6 rotate:(int64_t)a7 waitForCompletion:(BOOL)a8;
@end

@implementation FRCScaler

- (FRCScaler)init
{
  v6.receiver = self;
  v6.super_class = FRCScaler;
  v2 = [(FRCScaler *)&v6 init];
  if (v2 && (v3 = *MEMORY[0x277CBECE8], IOSurfaceAcceleratorCreate(), !v2->_scaler))
  {
    NSLog(&cfstr_FailedToCreate_1.isa);
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

- (void)scaleFrameSource:(__CVBuffer *)a3 destination:(__CVBuffer *)a4 cropRectangles:(id *)a5 upscale:(BOOL)a6 rotate:(int64_t)a7 waitForCompletion:(BOOL)a8
{
  v8 = a8;
  v10 = a6;
  v14 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v16 = Mutable;
  v17 = MEMORY[0x277CBED28];
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
      v18 = *v17;
      CFDictionarySetValue(v16, *MEMORY[0x277D1AE38], *v17);
      CFDictionarySetValue(v16, *MEMORY[0x277D1AE88], v18);
      if (!a7)
      {
        goto LABEL_4;
      }

LABEL_8:
      switch(a7)
      {
        case 3:
          v20 = 3;
          break;
        case 2:
          v20 = 7;
          break;
        case 1:
          v20 = 4;
          break;
        default:
          LODWORD(valuePtr) = 0;
LABEL_16:
          v21 = CFNumberCreate(v14, kCFNumberIntType, &valuePtr);
          CFDictionarySetValue(v16, *MEMORY[0x277D1AEA0], v21);
          CFRelease(v21);
          if (v8)
          {
            goto LABEL_5;
          }

          goto LABEL_17;
      }

      LODWORD(valuePtr) = v20;
      goto LABEL_16;
    }
  }

  if (a7)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v8)
  {
LABEL_5:
    scaler = self->_scaler;
    CVPixelBufferGetIOSurface(a3);
    CVPixelBufferGetIOSurface(a4);
    goto LABEL_18;
  }

LABEL_17:
  valuePtr = xmmword_285DE3538;
  v30 = qword_285DE3548;
  v22 = self->_scaler;
  CVPixelBufferGetIOSurface(a3);
  CVPixelBufferGetIOSurface(a4);
LABEL_18:
  if (IOSurfaceAcceleratorTransformSurface())
  {
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    v26 = CVPixelBufferGetWidth(a4);
    v27 = CVPixelBufferGetHeight(a4);
    v28 = CVPixelBufferGetPixelFormatType(a4);
    NSLog(&cfstr_ScalerErrorFai.isa, Width, Height, PixelFormatType, v26, v27, v28);
  }

  CFRelease(v16);
}

- (void)dealloc
{
  scaler = self->_scaler;
  if (scaler)
  {
    CFRelease(scaler);
  }

  v4.receiver = self;
  v4.super_class = FRCScaler;
  [(FRCScaler *)&v4 dealloc];
}

@end