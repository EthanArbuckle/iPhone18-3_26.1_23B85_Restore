@interface FRCScaler
- (FRCScaler)init;
- (void)dealloc;
- (void)scaleFrameSource:(__CVBuffer *)source destination:(__CVBuffer *)destination cropRectangles:(id *)rectangles upscale:(BOOL)upscale rotate:(int64_t)rotate waitForCompletion:(BOOL)completion;
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

- (void)scaleFrameSource:(__CVBuffer *)source destination:(__CVBuffer *)destination cropRectangles:(id *)rectangles upscale:(BOOL)upscale rotate:(int64_t)rotate waitForCompletion:(BOOL)completion
{
  completionCopy = completion;
  upscaleCopy = upscale;
  v14 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v16 = Mutable;
  v17 = MEMORY[0x277CBED28];
  if (completionCopy)
  {
    if (upscaleCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1AE90], *MEMORY[0x277CBED28]);
    if (upscaleCopy)
    {
LABEL_3:
      v18 = *v17;
      CFDictionarySetValue(v16, *MEMORY[0x277D1AE38], *v17);
      CFDictionarySetValue(v16, *MEMORY[0x277D1AE88], v18);
      if (!rotate)
      {
        goto LABEL_4;
      }

LABEL_8:
      switch(rotate)
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
          if (completionCopy)
          {
            goto LABEL_5;
          }

          goto LABEL_17;
      }

      LODWORD(valuePtr) = v20;
      goto LABEL_16;
    }
  }

  if (rotate)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (completionCopy)
  {
LABEL_5:
    scaler = self->_scaler;
    CVPixelBufferGetIOSurface(source);
    CVPixelBufferGetIOSurface(destination);
    goto LABEL_18;
  }

LABEL_17:
  valuePtr = xmmword_285DE3538;
  v30 = qword_285DE3548;
  v22 = self->_scaler;
  CVPixelBufferGetIOSurface(source);
  CVPixelBufferGetIOSurface(destination);
LABEL_18:
  if (IOSurfaceAcceleratorTransformSurface())
  {
    Width = CVPixelBufferGetWidth(source);
    Height = CVPixelBufferGetHeight(source);
    PixelFormatType = CVPixelBufferGetPixelFormatType(source);
    v26 = CVPixelBufferGetWidth(destination);
    v27 = CVPixelBufferGetHeight(destination);
    v28 = CVPixelBufferGetPixelFormatType(destination);
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