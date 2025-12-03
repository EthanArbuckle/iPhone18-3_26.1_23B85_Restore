@interface OABShapeBaseManager
- (BOOL)isShadowed;
- (BOOL)isStroked;
- (EshBlip)strokeFillBlipDataReference;
- (EshColor)shadowColor;
- (EshColor)strokeBgColor;
- (EshColor)strokeFgColor;
- (OABShapeBaseManager)initWithShapeBase:(void *)base shapeType:(int)type masterShape:(EshShape *)shape;
- (const)strokeCustomDash;
- (id)strokeFillBlipName;
- (int)shadowAlpha;
- (int)shadowOffsetX;
- (int)shadowOffsetY;
- (int)shadowSoftness;
- (int)shadowType;
- (int)strokeCapStyle;
- (int)strokeCompoundType;
- (int)strokeEndArrowLength;
- (int)strokeEndArrowType;
- (int)strokeEndArrowWidth;
- (int)strokeFgAlpha;
- (int)strokeFillType;
- (int)strokeJoinStyle;
- (int)strokeMiterLimit;
- (int)strokePresetDash;
- (int)strokeStartArrowLength;
- (int)strokeStartArrowType;
- (int)strokeStartArrowWidth;
- (int)strokeWidth;
- (unsigned)strokeFillBlipID;
@end

@implementation OABShapeBaseManager

- (EshColor)strokeFgColor
{
  v4 = v2;
  if (EshStroke::isColorSet((self->mShapeBase + 320)))
  {
    Color = EshStroke::getColor((self->mShapeBase + 320));

    return EshColor::EshColor(v4, Color);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;
    if (mMasterManager)
    {

      return [(OABPropertiesManager *)mMasterManager strokeFgColor];
    }

    else
    {
      *v4 = 0;
    }
  }

  return mMasterManager;
}

- (int)strokeFgAlpha
{
  if (EshStroke::isOpacitySet((self->mShapeBase + 320)))
  {
    v3 = (self->mShapeBase + 320);

    return EshStroke::getOpacity(v3);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager strokeFgAlpha];
  }
}

- (BOOL)isStroked
{
  if (EshStroke::isOnSet((self->mShapeBase + 320)))
  {
    v3 = (self->mShapeBase + 320);

    LOBYTE(isStrokeOn) = EshStroke::getOn(v3);
  }

  else
  {
    isStrokeOn = EshShapeLib::isStrokeOn(LOWORD(self->super.mShapeType), 1);
    if (isStrokeOn)
    {
      mMasterManager = self->super.mMasterManager;

      LOBYTE(isStrokeOn) = [(OABPropertiesManager *)mMasterManager isStroked];
    }
  }

  return isStrokeOn;
}

- (int)strokeFillType
{
  if (EshStroke::isFillTypeSet((self->mShapeBase + 320)))
  {
    v3 = (self->mShapeBase + 320);

    return EshStroke::getFillType(v3);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager strokeFillType];
  }
}

- (const)strokeCustomDash
{
  if (EshStroke::isDashStyleSet((self->mShapeBase + 320)))
  {
    v3 = (self->mShapeBase + 320);

    return EshStroke::getDashStyle(v3);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager strokeCustomDash];
  }
}

- (int)strokePresetDash
{
  if (EshStroke::isPredefDashStyleSet((self->mShapeBase + 320)))
  {
    v3 = (self->mShapeBase + 320);

    return EshStroke::getPredefDashStyle(v3);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager strokePresetDash];
  }
}

- (int)strokeJoinStyle
{
  if (EshStroke::isJoinStyleSet((self->mShapeBase + 320)))
  {
    v3 = (self->mShapeBase + 320);

    return EshStroke::getJoinStyle(v3);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager strokeJoinStyle];
  }
}

- (int)strokeStartArrowType
{
  if (EshStroke::isStartArrowSet((self->mShapeBase + 320)))
  {
    v3 = (self->mShapeBase + 320);

    return EshStroke::getStartArrow(v3);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager strokeStartArrowType];
  }
}

- (int)strokeStartArrowWidth
{
  if (EshStroke::isStartArrowWidthSet((self->mShapeBase + 320)))
  {
    v3 = (self->mShapeBase + 320);

    return EshStroke::getStartArrowWidth(v3);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager strokeStartArrowWidth];
  }
}

- (int)strokeStartArrowLength
{
  if (EshStroke::isStartArrowLengthSet((self->mShapeBase + 320)))
  {
    v3 = (self->mShapeBase + 320);

    return EshStroke::getStartArrowLength(v3);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager strokeStartArrowLength];
  }
}

- (int)strokeEndArrowType
{
  if (EshStroke::isEndArrowSet((self->mShapeBase + 320)))
  {
    v3 = (self->mShapeBase + 320);

    return EshStroke::getEndArrow(v3);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager strokeEndArrowType];
  }
}

- (int)strokeEndArrowWidth
{
  if (EshStroke::isEndArrowWidthSet((self->mShapeBase + 320)))
  {
    v3 = (self->mShapeBase + 320);

    return EshStroke::getEndArrowWidth(v3);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager strokeEndArrowWidth];
  }
}

- (int)strokeEndArrowLength
{
  if (EshStroke::isEndArrowLengthSet((self->mShapeBase + 320)))
  {
    v3 = (self->mShapeBase + 320);

    return EshStroke::getEndArrowLength(v3);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager strokeEndArrowLength];
  }
}

- (int)strokeWidth
{
  if (EshStroke::isWeightSet((self->mShapeBase + 320)))
  {
    v3 = (self->mShapeBase + 320);

    return EshStroke::getWeight(v3);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager strokeWidth];
  }
}

- (int)strokeCapStyle
{
  if (EshStroke::isCapStyleSet((self->mShapeBase + 320)))
  {
    v3 = (self->mShapeBase + 320);

    return EshStroke::getCapStyle(v3);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager strokeCapStyle];
  }
}

- (int)strokeCompoundType
{
  if (EshStroke::isLineStyleSet((self->mShapeBase + 320)))
  {
    v3 = (self->mShapeBase + 320);

    return EshStroke::getLineStyle(v3);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager strokeCompoundType];
  }
}

- (BOOL)isShadowed
{
  if (EshShadow::isOnSet((self->mShapeBase + 344)))
  {
    v3 = (self->mShapeBase + 344);

    return EshShadow::getOn(v3);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager isShadowed];
  }
}

- (EshColor)shadowColor
{
  v4 = v2;
  if (EshShadow::isColorSet((self->mShapeBase + 344)))
  {
    Color = EshShadow::getColor((self->mShapeBase + 344));

    return EshColor::EshColor(v4, Color);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;
    if (mMasterManager)
    {

      return [(OABPropertiesManager *)mMasterManager shadowColor];
    }

    else
    {
      *v4 = 0;
    }
  }

  return mMasterManager;
}

- (int)shadowAlpha
{
  if (EshShadow::isOpacitySet((self->mShapeBase + 344)))
  {
    v3 = (self->mShapeBase + 344);

    return EshShadow::getOpacity(v3);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager shadowAlpha];
  }
}

- (int)shadowSoftness
{
  if (EshShadow::isSoftnessSet((self->mShapeBase + 344)))
  {
    v3 = (self->mShapeBase + 344);

    return EshShadow::getSoftness(v3);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager shadowSoftness];
  }
}

- (int)shadowOffsetX
{
  if (EshShadow::isOffsetXSet((self->mShapeBase + 344)))
  {
    v3 = (self->mShapeBase + 344);

    return EshShadow::getOffsetX(v3);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager shadowOffsetX];
  }
}

- (int)shadowOffsetY
{
  if (EshShadow::isOffsetYSet((self->mShapeBase + 344)))
  {
    v3 = (self->mShapeBase + 344);

    return EshShadow::getOffsetY(v3);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager shadowOffsetY];
  }
}

- (int)shadowType
{
  if (EshShadow::isShadowTypeSet((self->mShapeBase + 344)))
  {
    v3 = (self->mShapeBase + 344);

    return EshShadow::getShadowType(v3);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager shadowType];
  }
}

- (int)strokeMiterLimit
{
  if (EshStroke::isMiterLimitSet((self->mShapeBase + 320)))
  {
    v3 = (self->mShapeBase + 320);

    return EshStroke::getMiterLimit(v3);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager strokeMiterLimit];
  }
}

- (unsigned)strokeFillBlipID
{
  if (EshStroke::isBlipSet((self->mShapeBase + 320)))
  {
    v3 = (self->mShapeBase + 320);

    return EshStroke::getBlipId(v3);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager strokeFillBlipID];
  }
}

- (id)strokeFillBlipName
{
  if (EshStroke::isBlipNameSet((self->mShapeBase + 320)))
  {
    BlipName = EshStroke::getBlipName((self->mShapeBase + 320));
    if (BlipName)
    {
      BlipName = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:BlipName];
    }
  }

  else
  {
    BlipName = [(OABPropertiesManager *)self->super.mMasterManager strokeFillBlipName];
  }

  return BlipName;
}

- (EshColor)strokeBgColor
{
  v4 = v2;
  if (EshStroke::isColor2Set((self->mShapeBase + 320)))
  {
    Color2 = EshStroke::getColor2((self->mShapeBase + 320));

    return EshColor::EshColor(v4, Color2);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;
    if (mMasterManager)
    {

      return [(OABPropertiesManager *)mMasterManager strokeBgColor];
    }

    else
    {
      *v4 = 0;
    }
  }

  return mMasterManager;
}

- (OABShapeBaseManager)initWithShapeBase:(void *)base shapeType:(int)type masterShape:(EshShape *)shape
{
  v7.receiver = self;
  v7.super_class = OABShapeBaseManager;
  result = [(OABFillPropertiesManager *)&v7 initWithFill:base + 296 shapeType:*&type masterShape:shape];
  if (result)
  {
    result->mShapeBase = base;
  }

  return result;
}

- (EshBlip)strokeFillBlipDataReference
{
  if (EshStroke::isBlipSet((self->mShapeBase + 320)) && (EshStroke::isBlipId((self->mShapeBase + 320)) & 1) == 0)
  {
    v5 = (self->mShapeBase + 320);

    return EshStroke::getBlipRecordReference(v5);
  }

  else
  {
    mMasterManager = self->super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager strokeFillBlipDataReference];
  }
}

@end