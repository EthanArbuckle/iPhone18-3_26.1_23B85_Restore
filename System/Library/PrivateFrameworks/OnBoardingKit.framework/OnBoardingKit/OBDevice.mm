@interface OBDevice
+ (id)currentDevice;
- (BOOL)isMiniPad;
- (unint64_t)templateTypeForBoundsWidth:(double)width;
@end

@implementation OBDevice

+ (id)currentDevice
{
  if (currentDevice_onceToken != -1)
  {
    +[OBDevice currentDevice];
  }

  v3 = currentDevice_currentDevice;

  return v3;
}

uint64_t __25__OBDevice_currentDevice__block_invoke()
{
  v0 = objc_alloc_init(OBDevice);
  v1 = currentDevice_currentDevice;
  currentDevice_currentDevice = v0;

  v2 = MGGetStringAnswer();
  if (CFStringCompare(v2, @"iPad", 0))
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [currentDevice_currentDevice setType:v3];
  if (v2)
  {
    CFRelease(v2);
  }

  v4 = MGGetSInt32Answer();
  v5 = +[OBUtilities mainScreen];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  if ([currentDevice_currentDevice type] == 1)
  {
    switch(v4)
    {
      case 5:
        v10 = currentDevice_currentDevice;
        v11 = 5;
        goto LABEL_19;
      case 8:
      case 9:
      case 22:
        v10 = currentDevice_currentDevice;
        v11 = 4;
        goto LABEL_19;
      case 10:
        v10 = currentDevice_currentDevice;
        v11 = 3;
        goto LABEL_19;
      case 15:
      case 19:
      case 24:
      case 30:
      case 36:
      case 39:
        v10 = currentDevice_currentDevice;
        goto LABEL_15;
      case 18:
      case 25:
      case 31:
      case 37:
        v10 = currentDevice_currentDevice;
        if (v7 < 414.0 || v9 < 896.0)
        {
LABEL_15:
          v11 = 2;
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_19;
      default:
        goto LABEL_20;
    }
  }

  v10 = currentDevice_currentDevice;
  v11 = 6;
LABEL_19:
  [v10 setTemplateType:v11];
LABEL_20:
  v13 = MGGetSInt32Answer() != 2;
  v14 = currentDevice_currentDevice;

  return [v14 setHasHomeButton:v13];
}

- (unint64_t)templateTypeForBoundsWidth:(double)width
{
  if (width <= 320.0)
  {
    return 7;
  }

  if (width >= 744.0)
  {
    return 6;
  }

  if (width >= 414.0)
  {
    return 9;
  }

  return 8;
}

- (BOOL)isMiniPad
{
  v2 = 1;
  v3 = MGGetProductType();
  if (v3 > 2903084587)
  {
    if (v3 == 2903084588)
    {
      return v2;
    }

    v4 = 3184375231;
  }

  else
  {
    if (v3 == 88647037)
    {
      return v2;
    }

    v4 = 1895344378;
  }

  if (v3 != v4)
  {
    return 0;
  }

  return v2;
}

@end