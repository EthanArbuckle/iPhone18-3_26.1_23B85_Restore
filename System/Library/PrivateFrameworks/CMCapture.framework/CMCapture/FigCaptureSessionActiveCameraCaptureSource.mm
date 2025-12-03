@interface FigCaptureSessionActiveCameraCaptureSource
- (id)initWithSource:(void *)source device:;
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

- (id)initWithSource:(void *)source device:
{
  selfCopy = self;
  if (self)
  {
    if (!a2 || !source)
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v11.receiver = selfCopy;
    v11.super_class = FigCaptureSessionActiveCameraCaptureSource;
    selfCopy = objc_msgSendSuper2(&v11, sel_init);
    if (selfCopy)
    {
      if (a2)
      {
        v6 = CFRetain(a2);
      }

      else
      {
        v6 = 0;
      }

      *(selfCopy + 1) = v6;
      *(selfCopy + 2) = source;
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

      *(selfCopy + 3) = [objc_msgSend(v8 objectForKeyedSubscript:{@"NonLocalizedName", "copy"}];
      *(selfCopy + 8) = [objc_msgSend(v10 objectForKeyedSubscript:{@"DeviceType", "intValue"}];
    }
  }

  return selfCopy;
}

@end