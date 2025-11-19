@interface BWStillImageSettings
- (BOOL)isEqual:(id)a3;
- (BWStillImageSettings)initWithCoder:(id)a3;
- (BWStillImageSettings)initWithRequestedSettings:(id)a3 captureSettings:(id)a4 processingSettings:(id)a5;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BWStillImageSettings

- (BWStillImageSettings)initWithRequestedSettings:(id)a3 captureSettings:(id)a4 processingSettings:(id)a5
{
  if (a3)
  {
    v10.receiver = self;
    v10.super_class = BWStillImageSettings;
    v8 = [(BWStillImageSettings *)&v10 init];
    if (v8)
    {
      v8->_requestedSettings = a3;
      v8->_captureSettings = a4;
      v8->_processingSettings = a5;
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

- (BWStillImageSettings)initWithCoder:(id)a3
{
  v4 = [(BWStillImageSettings *)self init];
  if (v4)
  {
    v4->_requestedSettings = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"requestedSettings"];
    v4->_captureSettings = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"captureSettings"];
    v4->_processingSettings = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"processingSettings"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_requestedSettings forKey:@"requestedSettings"];
  [a3 encodeObject:self->_captureSettings forKey:@"captureSettings"];
  processingSettings = self->_processingSettings;

  [a3 encodeObject:processingSettings forKey:@"processingSettings"];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
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
      v11 = [(BWStillImageSettings *)self requestedSettings];
      if (v11 == [a3 requestedSettings] || (v12 = -[FigCaptureStillImageSettings isEqual:](-[BWStillImageSettings requestedSettings](self, "requestedSettings"), "isEqual:", objc_msgSend(a3, "requestedSettings"))))
      {
        v13 = [(BWStillImageSettings *)self captureSettings:v6];
        if (v13 == [a3 captureSettings] || (v12 = -[BWStillImageCaptureSettings isEqual:](-[BWStillImageSettings captureSettings](self, "captureSettings"), "isEqual:", objc_msgSend(a3, "captureSettings"))))
        {
          v14 = [(BWStillImageSettings *)self processingSettings];
          if (v14 == [a3 processingSettings] || (v12 = -[BWStillImageProcessingSettings isEqual:](-[BWStillImageSettings processingSettings](self, "processingSettings"), "isEqual:", objc_msgSend(a3, "processingSettings"))))
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