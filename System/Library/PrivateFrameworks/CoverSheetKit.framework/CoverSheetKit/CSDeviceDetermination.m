@interface CSDeviceDetermination
+ (BOOL)_screenScaleMatchesZoomScale:(double)a3;
+ (double)_zoomScaleForBaseDevice:(unint64_t)a3;
+ (unint64_t)_zoomAwareCategoryForDevice:(unint64_t)a3 zoomVariant:(unint64_t)a4;
+ (unint64_t)baseCategory;
+ (unint64_t)categoryFromReferenceBounds:(CGRect)a3;
+ (unint64_t)categoryFromScreenSize;
@end

@implementation CSDeviceDetermination

+ (unint64_t)categoryFromScreenSize
{
  v3 = _CSEmbeddedFBSDisplayConfiguration();
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  return [a1 categoryFromReferenceBounds:{v5, v7, v9, v11}];
}

+ (unint64_t)baseCategory
{
  if (_CS_Private_MainScreenClass_onceToken != -1)
  {
    +[CSDeviceDetermination baseCategory];
  }

  result = 26;
  switch(_CS_Private_MainScreenClass_mainScreenClass)
  {
    case 5:
      result = 0;
      break;
    case 8:
      result = 1;
      break;
    case 9:
      result = 2;
      break;
    case 11:
      return result;
    case 14:
      result = 25;
      break;
    case 15:
      result = 4;
      break;
    case 18:
    case 19:
      if (_CS_Private_BaseIsN84OrSimilarDevice_onceToken != -1)
      {
        +[CSDeviceDetermination baseCategory];
      }

      if (_CS_Private_BaseIsN84OrSimilarDevice_baseIsN84OrSimilarDevice)
      {
        result = 7;
      }

      else
      {
        result = 5;
      }

      break;
    case 20:
    case 23:
      result = 28;
      break;
    case 21:
      result = 24;
      break;
    case 22:
      result = 9;
      break;
    case 24:
      if (_CS_Private_ProductType_onceToken[0] != -1)
      {
        +[CSDeviceDetermination baseCategory];
      }

      if (_CS_Private_ProductType_productType == 689804742)
      {
        result = 11;
      }

      else
      {
        result = 10;
      }

      break;
    case 25:
      result = 18;
      break;
    case 28:
      result = 27;
      break;
    case 30:
      result = 13;
      break;
    case 31:
      result = 20;
      break;
    case 32:
      result = 32;
      break;
    case 33:
      result = 29;
      break;
    case 36:
      result = 15;
      break;
    case 37:
      result = 22;
      break;
    case 39:
      result = 16;
      break;
    default:
      result = 34;
      break;
  }

  return result;
}

+ (unint64_t)categoryFromReferenceBounds:(CGRect)a3
{
  BSSizeRoundForScale();
  v4 = [MEMORY[0x1E698E730] sharedInstance];
  v5 = [v4 deviceClass];

  v6 = [MEMORY[0x1E698E730] sharedInstance];
  v7 = v6;
  if (v5 == 2)
  {
    v8 = [v6 homeButtonType];

    if (v8 == 2)
    {
      if (BSFloatGreaterThanFloat())
      {
        return 32;
      }

      if (BSFloatGreaterThanFloat())
      {
        return 31;
      }

      if (BSFloatGreaterThanFloat())
      {
        return 29;
      }

      if (BSFloatGreaterThanFloat())
      {
        return 28;
      }

      if (BSFloatGreaterThanFloat() & 1) != 0 || (BSSizeEqualToSize())
      {
        return 27;
      }

      if (BSFloatGreaterThanFloat())
      {
        return 33;
      }

      if (BSSizeEqualToSize())
      {
        return 30;
      }

      return 34;
    }

    if (BSFloatGreaterThanFloat())
    {
      return 26;
    }

    if (BSFloatGreaterThanFloat())
    {
      return 25;
    }

    if (BSFloatGreaterThanFloat())
    {
      return 24;
    }

    return 23;
  }

  v10 = [v6 deviceClass];

  if (v10)
  {
    return 34;
  }

  if (CSEffectiveArtworkSubtype_onceToken != -1)
  {
    +[CSDeviceDetermination categoryFromReferenceBounds:];
  }

  v11 = CSEffectiveArtworkSubtype_deviceSubtype;
  v12 = [MEMORY[0x1E698E730] sharedInstance];
  v13 = [v12 homeButtonType];

  if (v13 != 2)
  {
    if (BSFloatGreaterThanFloat())
    {
      return 2;
    }

    else
    {
      return BSFloatGreaterThanFloat();
    }
  }

  if (_CS_Private_MainScreenClass_onceToken != -1)
  {
    +[CSDeviceDetermination baseCategory];
  }

  if (_CS_Private_MainScreenClass_mainScreenClass == 22)
  {
    v14 = a1;
    v15 = 9;
    v16 = 8;
LABEL_31:

    return [v14 _zoomAwareCategoryForDevice:v15 zoomVariant:v16];
  }

  if (_CS_Private_BaseIsN84OrSimilarDevice_onceToken != -1)
  {
    +[CSDeviceDetermination baseCategory];
  }

  if (_CS_Private_BaseIsN84OrSimilarDevice_baseIsN84OrSimilarDevice == 1)
  {
    v14 = a1;
    v15 = 7;
    v16 = 6;
    goto LABEL_31;
  }

  if (BSFloatGreaterThanFloat())
  {
    if (v11 != 2736)
    {
      if (v11 == 2868)
      {
        return 22;
      }

      if (v11 == 2796)
      {
        return 20;
      }

      return 18;
    }

    v14 = a1;
    v15 = 16;
    v16 = 17;
    goto LABEL_31;
  }

  if (BSFloatGreaterThanFloat())
  {
    v17 = 5;
    if (v11 == 2556)
    {
      v17 = 13;
    }

    if (v11 == 2622)
    {
      return 15;
    }

    else
    {
      return v17;
    }
  }

  else
  {
    if (v11 > 2795)
    {
      if (v11 == 2796)
      {
        if (BSFloatEqualToFloat())
        {
          return 19;
        }
      }

      else if (v11 == 2868 && (BSFloatEqualToFloat() & 1) != 0)
      {
        return 21;
      }
    }

    else if (v11 == 2556)
    {
      if (BSFloatEqualToFloat())
      {
        return 12;
      }
    }

    else if (v11 == 2622 && (BSFloatEqualToFloat() & 1) != 0)
    {
      return 14;
    }

    if (BSFloatGreaterThanFloat())
    {
      if (_CS_Private_ProductType_onceToken[0] != -1)
      {
        +[CSDeviceDetermination baseCategory];
      }

      if (_CS_Private_ProductType_productType == 689804742 || _CS_Private_ProductType_productType == 2309863438)
      {
        return 11;
      }

      else
      {
        return 10;
      }
    }

    else if (BSFloatGreaterThanFloat())
    {
      return 4;
    }

    else
    {
      if ((BSFloatGreaterThanFloat() & 1) == 0)
      {
        return 34;
      }

      return 3;
    }
  }
}

+ (unint64_t)_zoomAwareCategoryForDevice:(unint64_t)a3 zoomVariant:(unint64_t)a4
{
  [a1 _zoomScaleForBaseDevice:?];
  if ([a1 _screenScaleMatchesZoomScale:?])
  {
    return a4;
  }

  else
  {
    return a3;
  }
}

+ (double)_zoomScaleForBaseDevice:(unint64_t)a3
{
  result = 3.375;
  if (a3 > 8)
  {
    if (a3 == 9)
    {
      return result;
    }

    if (a3 == 17)
    {
      return 3.36;
    }
  }

  else
  {
    if (a3 == 4)
    {
      return result;
    }

    if (a3 == 7)
    {
      return 2.208;
    }
  }

  return 0.0;
}

+ (BOOL)_screenScaleMatchesZoomScale:(double)a3
{
  _CSEmbeddedDisplayNativeScale();

  return BSFloatEqualToFloat();
}

@end