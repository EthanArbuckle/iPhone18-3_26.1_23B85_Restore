@interface FigCaptureSessionActiveCameraCaptureSource
- (id)initWithSource:(void *)a3 device:;
- (void)dealloc;
@end

@implementation FigCaptureSessionActiveCameraCaptureSource

- (void)dealloc
{
  source = self->_source;
  if (source)
  {
    CFRelease(source);
  }

  v4.receiver = self;
  v4.super_class = FigCaptureSessionActiveCameraCaptureSource;
  [(FigCaptureSessionActiveCameraCaptureSource *)&v4 dealloc];
}

- (id)initWithSource:(void *)a3 device:
{
  v3 = a1;
  if (a1)
  {
    if (!a2 || !a3)
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v11.receiver = v3;
    v11.super_class = FigCaptureSessionActiveCameraCaptureSource;
    v3 = objc_msgSendSuper2(&v11, sel_init);
    if (v3)
    {
      if (a2)
      {
        v6 = CFRetain(a2);
      }

      else
      {
        v6 = 0;
      }

      *(v3 + 1) = v6;
      *(v3 + 2) = a3;
      v10 = 0;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        v7(a2, @"AttributesDictionary", *MEMORY[0x1E695E480], &v10);
        v8 = v10;
      }

      else
      {
        v8 = 0;
      }

      *(v3 + 3) = [objc_msgSend(v8 objectForKeyedSubscript:{@"NonLocalizedName", "copy"}];
      *(v3 + 8) = [objc_msgSend(v10 objectForKeyedSubscript:{@"DeviceType", "intValue"}];
    }
  }

  return v3;
}

@end