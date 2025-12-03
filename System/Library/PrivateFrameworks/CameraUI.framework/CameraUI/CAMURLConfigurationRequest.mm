@interface CAMURLConfigurationRequest
- (BOOL)_captureModeFromString:(id)string outCaptureMode:(int64_t *)mode;
- (BOOL)_initializeFromQueryDictionary:(id)dictionary;
- (CAMURLConfigurationRequest)initWithQueryDictionary:(id)dictionary;
- (int64_t)_captureDeviceFromString:(id)string outCaptureDevice:(int64_t *)device;
@end

@implementation CAMURLConfigurationRequest

- (CAMURLConfigurationRequest)initWithQueryDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = CAMURLConfigurationRequest;
  v5 = [(CAMURLConfigurationRequest *)&v10 init];
  v6 = v5;
  if (v5)
  {
    if ([(CAMURLConfigurationRequest *)v5 _initializeFromQueryDictionary:dictionaryCopy])
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

- (BOOL)_initializeFromQueryDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"capturemode"];
  v6 = [(CAMURLConfigurationRequest *)self _captureModeFromString:v5 outCaptureMode:&self->_requestedCaptureMode];

  if (v6)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"capturedevice"];
    v8 = [(CAMURLConfigurationRequest *)self _captureDeviceFromString:v7 outCaptureDevice:&self->_requestedCaptureDevice]!= 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKey:@"qrcodes"];

  if (v9)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"qrcodes"];
    self->_wantsQRCodeForSession = [v10 isEqualToString:@"true"];
  }

  else
  {
    self->_wantsQRCodeForSession = 0;
  }

  return v8;
}

- (BOOL)_captureModeFromString:(id)string outCaptureMode:(int64_t *)mode
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"photo"])
  {
    v6 = 0;
  }

  else if ([stringCopy isEqualToString:@"square"])
  {
    v6 = 4;
  }

  else if ([stringCopy isEqualToString:@"video"])
  {
    v6 = 1;
  }

  else if ([stringCopy isEqualToString:@"slomo"])
  {
    v6 = 2;
  }

  else if ([stringCopy isEqualToString:@"timelapse"])
  {
    v6 = 5;
  }

  else if ([stringCopy isEqualToString:@"panorama"])
  {
    v6 = 3;
  }

  else if ([stringCopy isEqualToString:@"portrait"])
  {
    v6 = 6;
  }

  else if ([stringCopy isEqualToString:@"cinematic"])
  {
    v6 = 7;
  }

  else if ([stringCopy isEqualToString:@"spatialVideo"])
  {
    v6 = 8;
  }

  else
  {
    if (![stringCopy isEqualToString:@"spatialPhoto"])
    {
      v7 = 0;
      goto LABEL_22;
    }

    v6 = 9;
  }

  *mode = v6;
  v7 = 1;
LABEL_22:

  return v7;
}

- (int64_t)_captureDeviceFromString:(id)string outCaptureDevice:(int64_t *)device
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"front"])
  {
    v6 = 1;
LABEL_4:
    *device = v6;
    v8 = 1;
    goto LABEL_5;
  }

  v7 = [stringCopy isEqualToString:@"back"];
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