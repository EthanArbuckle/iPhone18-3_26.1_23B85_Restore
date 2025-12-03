@interface BWStillImageSettings
- (BOOL)isEqual:(id)equal;
- (BWStillImageSettings)initWithCoder:(id)coder;
- (BWStillImageSettings)initWithRequestedSettings:(id)settings captureSettings:(id)captureSettings processingSettings:(id)processingSettings;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BWStillImageSettings

- (BWStillImageSettings)initWithRequestedSettings:(id)settings captureSettings:(id)captureSettings processingSettings:(id)processingSettings
{
  if (settings)
  {
    v10.receiver = self;
    v10.super_class = BWStillImageSettings;
    v8 = [(BWStillImageSettings *)&v10 init];
    if (v8)
    {
      v8->_requestedSettings = settings;
      v8->_captureSettings = captureSettings;
      v8->_processingSettings = processingSettings;
    }
  }

  else
  {
    [BWStillImageSettings initWithRequestedSettings:? captureSettings:? processingSettings:?];
    return 0;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageSettings;
  [(BWStillImageSettings *)&v3 dealloc];
}

- (BWStillImageSettings)initWithCoder:(id)coder
{
  v4 = [(BWStillImageSettings *)self init];
  if (v4)
  {
    v4->_requestedSettings = [coder decodeObjectOfClass:objc_opt_class() forKey:@"requestedSettings"];
    v4->_captureSettings = [coder decodeObjectOfClass:objc_opt_class() forKey:@"captureSettings"];
    v4->_processingSettings = [coder decodeObjectOfClass:objc_opt_class() forKey:@"processingSettings"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_requestedSettings forKey:@"requestedSettings"];
  [coder encodeObject:self->_captureSettings forKey:@"captureSettings"];
  processingSettings = self->_processingSettings;

  [coder encodeObject:processingSettings forKey:@"processingSettings"];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v16 = v5;
    v17 = v4;
    v18 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      requestedSettings = [(BWStillImageSettings *)self requestedSettings];
      if (requestedSettings == [equal requestedSettings] || (v12 = -[FigCaptureStillImageSettings isEqual:](-[BWStillImageSettings requestedSettings](self, "requestedSettings"), "isEqual:", objc_msgSend(equal, "requestedSettings"))))
      {
        v13 = [(BWStillImageSettings *)self captureSettings:v6];
        if (v13 == [equal captureSettings] || (v12 = -[BWStillImageCaptureSettings isEqual:](-[BWStillImageSettings captureSettings](self, "captureSettings"), "isEqual:", objc_msgSend(equal, "captureSettings"))))
        {
          processingSettings = [(BWStillImageSettings *)self processingSettings];
          if (processingSettings == [equal processingSettings] || (v12 = -[BWStillImageProcessingSettings isEqual:](-[BWStillImageSettings processingSettings](self, "processingSettings"), "isEqual:", objc_msgSend(equal, "processingSettings"))))
          {
            LOBYTE(v12) = 1;
          }
        }
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(FigCaptureStillImageSettings *)self->_requestedSettings hash];
  v4 = [(BWStillImageCaptureSettings *)self->_captureSettings hash]^ v3;
  return v4 ^ [(BWStillImageProcessingSettings *)self->_processingSettings hash];
}

- (void)initWithRequestedSettings:(void *)a1 captureSettings:processingSettings:.cold.1(void *a1)
{
  FigDebugAssert3();
}

@end