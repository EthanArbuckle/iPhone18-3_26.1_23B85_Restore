@interface CAMURLConfigurationRequest
- (BOOL)_captureModeFromString:(id)a3 outCaptureMode:(int64_t *)a4;
- (BOOL)_initializeFromQueryDictionary:(id)a3;
- (CAMURLConfigurationRequest)initWithQueryDictionary:(id)a3;
- (int64_t)_captureDeviceFromString:(id)a3 outCaptureDevice:(int64_t *)a4;
@end

@implementation CAMURLConfigurationRequest

- (CAMURLConfigurationRequest)initWithQueryDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CAMURLConfigurationRequest;
  v5 = [(CAMURLConfigurationRequest *)&v10 init];
  v6 = v5;
  if (v5)
  {
    if ([(CAMURLConfigurationRequest *)v5 _initializeFromQueryDictionary:v4])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v8;
}

- (BOOL)_initializeFromQueryDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"capturemode"];
  v6 = [(CAMURLConfigurationRequest *)self _captureModeFromString:v5 outCaptureMode:&self->_requestedCaptureMode];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"capturedevice"];
    v8 = [(CAMURLConfigurationRequest *)self _captureDeviceFromString:v7 outCaptureDevice:&self->_requestedCaptureDevice]!= 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 objectForKey:@"qrcodes"];

  if (v9)
  {
    v10 = [v4 objectForKeyedSubscript:@"qrcodes"];
    self->_wantsQRCodeForSession = [v10 isEqualToString:@"true"];
  }

  else
  {
    self->_wantsQRCodeForSession = 0;
  }

  return v8;
}

- (BOOL)_captureModeFromString:(id)a3 outCaptureMode:(int64_t *)a4
{
  v5 = a3;
  if ([v5 isEqualToString:@"photo"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"square"])
  {
    v6 = 4;
  }

  else if ([v5 isEqualToString:@"video"])
  {
    v6 = 1;
  }

  else if ([v5 isEqualToString:@"slomo"])
  {
    v6 = 2;
  }

  else if ([v5 isEqualToString:@"timelapse"])
  {
    v6 = 5;
  }

  else if ([v5 isEqualToString:@"panorama"])
  {
    v6 = 3;
  }

  else if ([v5 isEqualToString:@"portrait"])
  {
    v6 = 6;
  }

  else if ([v5 isEqualToString:@"cinematic"])
  {
    v6 = 7;
  }

  else if ([v5 isEqualToString:@"spatialVideo"])
  {
    v6 = 8;
  }

  else
  {
    if (![v5 isEqualToString:@"spatialPhoto"])
    {
      v7 = 0;
      goto LABEL_22;
    }

    v6 = 9;
  }

  *a4 = v6;
  v7 = 1;
LABEL_22:

  return v7;
}

- (int64_t)_captureDeviceFromString:(id)a3 outCaptureDevice:(int64_t *)a4
{
  v5 = a3;
  if ([v5 isEqualToString:@"front"])
  {
    v6 = 1;
LABEL_4:
    *a4 = v6;
    v8 = 1;
    goto LABEL_5;
  }

  v7 = [v5 isEqualToString:@"back"];
  v6 = 0;
  v8 = 0;
  if (v7)
  {
    goto LABEL_4;
  }

LABEL_5:

  return v8;
}

@end