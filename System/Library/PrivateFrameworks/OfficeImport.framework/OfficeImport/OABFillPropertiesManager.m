@interface OABFillPropertiesManager
- (BOOL)isFilled;
- (EshBlip)fillBlipDataReference;
- (EshColor)fillBgColor;
- (EshColor)fillFgColor;
- (EshColor)shadowColor;
- (EshColor)strokeBgColor;
- (EshColor)strokeFgColor;
- (OABFillPropertiesManager)initWithFill:(const EshFill *)a3 shapeType:(int)a4 masterShape:(EshShape *)a5;
- (const)fillGradientColors;
- (id)fillBlipName;
- (int)fillAngle;
- (int)fillBgAlpha;
- (int)fillFgAlpha;
- (int)fillFocus;
- (int)fillFocusBottom;
- (int)fillFocusLeft;
- (int)fillFocusRight;
- (int)fillFocusTop;
- (int)fillType;
- (unsigned)fillBlipID;
@end

@implementation OABFillPropertiesManager

- (int)fillType
{
  if (EshFill::isFillTypeSet(self->mFill))
  {
    mFill = self->mFill;

    return EshFill::getFillType(mFill);
  }

  else
  {
    mMasterManager = self->mMasterManager;

    return [(OABPropertiesManager *)mMasterManager fillType];
  }
}

- (BOOL)isFilled
{
  if (EshFill::isOnSet(self->mFill))
  {
    mFill = self->mFill;

    LOBYTE(isFillOn) = EshFill::getOn(mFill);
  }

  else
  {
    isFillOn = EshShapeLib::isFillOn(LOWORD(self->mShapeType), 1);
    if (isFillOn)
    {
      mMasterManager = self->mMasterManager;

      LOBYTE(isFillOn) = [(OABPropertiesManager *)mMasterManager isFilled];
    }
  }

  return isFillOn;
}

- (EshColor)fillFgColor
{
  v4 = v2;
  if (EshFill::isColorSet(self->mFill))
  {
    Color = EshFill::getColor(self->mFill);

    return EshColor::EshColor(v4, Color);
  }

  else
  {
    mMasterManager = self->mMasterManager;
    if (mMasterManager)
    {

      return [(OABPropertiesManager *)mMasterManager fillFgColor];
    }

    else
    {
      *v4 = 0;
    }
  }

  return mMasterManager;
}

- (int)fillFgAlpha
{
  if (EshFill::isOpacitySet(self->mFill))
  {
    mFill = self->mFill;

    return EshFill::getOpacity(mFill);
  }

  else
  {
    mMasterManager = self->mMasterManager;

    return [(OABPropertiesManager *)mMasterManager fillFgAlpha];
  }
}

- (unsigned)fillBlipID
{
  if (EshFill::isBlipSet(self->mFill) && EshFill::isBlipId(self->mFill))
  {
    mFill = self->mFill;

    return EshFill::getBlipId(mFill);
  }

  else
  {
    mMasterManager = self->mMasterManager;

    return [(OABPropertiesManager *)mMasterManager fillBlipID];
  }
}

- (id)fillBlipName
{
  if (EshFill::isBlipNameSet(self->mFill))
  {
    BlipName = EshFill::getBlipName(self->mFill);
    if (BlipName)
    {
      BlipName = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:BlipName];
    }
  }

  else
  {
    BlipName = [(OABPropertiesManager *)self->mMasterManager fillBlipName];
  }

  return BlipName;
}

- (EshBlip)fillBlipDataReference
{
  if (!EshFill::isBlipSet(self->mFill) || (EshFill::isBlipId(self->mFill) & 1) != 0)
  {
    return 0;
  }

  mFill = self->mFill;

  return EshFill::getBlipRecordReference(mFill);
}

- (int)fillAngle
{
  if (EshFill::isAngleSet(self->mFill))
  {
    mFill = self->mFill;

    return EshFill::getAngle(mFill);
  }

  else
  {
    mMasterManager = self->mMasterManager;

    return [(OABPropertiesManager *)mMasterManager fillAngle];
  }
}

- (int)fillFocus
{
  if (EshFill::isFocusSet(self->mFill))
  {
    mFill = self->mFill;

    return EshFill::getFocus(mFill);
  }

  else
  {
    mMasterManager = self->mMasterManager;

    return [(OABPropertiesManager *)mMasterManager fillFocus];
  }
}

- (EshColor)fillBgColor
{
  v4 = v2;
  if (EshFill::isColor2Set(self->mFill))
  {
    Color2 = EshFill::getColor2(self->mFill);

    return EshColor::EshColor(v4, Color2);
  }

  else
  {
    mMasterManager = self->mMasterManager;
    if (mMasterManager)
    {

      return [(OABPropertiesManager *)mMasterManager fillBgColor];
    }

    else
    {
      *v4 = 0;
    }
  }

  return mMasterManager;
}

- (const)fillGradientColors
{
  if (EshFill::isColorsSet(self->mFill))
  {
    mFill = self->mFill;

    return EshFill::getColors(mFill);
  }

  else
  {
    mMasterManager = self->mMasterManager;

    return [(OABPropertiesManager *)mMasterManager fillGradientColors];
  }
}

- (int)fillBgAlpha
{
  if (EshFill::isOpacity2Set(self->mFill))
  {
    mFill = self->mFill;

    return EshFill::getOpacity2(mFill);
  }

  else
  {
    mMasterManager = self->mMasterManager;

    return [(OABPropertiesManager *)mMasterManager fillBgAlpha];
  }
}

- (int)fillFocusLeft
{
  if (EshFill::isFocusLeftSet(self->mFill))
  {
    mFill = self->mFill;

    return EshFill::getFocusLeft(mFill);
  }

  else
  {
    mMasterManager = self->mMasterManager;

    return [(OABPropertiesManager *)mMasterManager fillFocusLeft];
  }
}

- (int)fillFocusTop
{
  if (EshFill::isFocusTopSet(self->mFill))
  {
    mFill = self->mFill;

    return EshFill::getFocusTop(mFill);
  }

  else
  {
    mMasterManager = self->mMasterManager;

    return [(OABPropertiesManager *)mMasterManager fillFocusTop];
  }
}

- (int)fillFocusRight
{
  if (EshFill::isFocusRightSet(self->mFill))
  {
    mFill = self->mFill;

    return EshFill::getFocusRight(mFill);
  }

  else
  {
    mMasterManager = self->mMasterManager;

    return [(OABPropertiesManager *)mMasterManager fillFocusRight];
  }
}

- (int)fillFocusBottom
{
  if (EshFill::isFocusBottomSet(self->mFill))
  {
    mFill = self->mFill;

    return EshFill::getFocusBottom(mFill);
  }

  else
  {
    mMasterManager = self->mMasterManager;

    return [(OABPropertiesManager *)mMasterManager fillFocusBottom];
  }
}

- (OABFillPropertiesManager)initWithFill:(const EshFill *)a3 shapeType:(int)a4 masterShape:(EshShape *)a5
{
  v13.receiver = self;
  v13.super_class = OABFillPropertiesManager;
  v8 = [(OABFillPropertiesManager *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->mFill = a3;
    v8->mShapeType = a4;
    if (a5)
    {
      v10 = [[OABShapeManager alloc] initWithShape:a5 masterShape:0];
    }

    else
    {
      v10 = objc_alloc_init(OABDefaultsManager);
    }

    mMasterManager = v9->mMasterManager;
    v9->mMasterManager = v10;
  }

  return v9;
}

- (EshColor)strokeFgColor
{
  mMasterManager = self->mMasterManager;
  if (mMasterManager)
  {
    return [(OABPropertiesManager *)mMasterManager strokeFgColor];
  }

  else
  {
    *v2 = 0;
  }

  return mMasterManager;
}

- (EshColor)strokeBgColor
{
  mMasterManager = self->mMasterManager;
  if (mMasterManager)
  {
    return [(OABPropertiesManager *)mMasterManager strokeBgColor];
  }

  else
  {
    *v2 = 0;
  }

  return mMasterManager;
}

- (EshColor)shadowColor
{
  mMasterManager = self->mMasterManager;
  if (mMasterManager)
  {
    return [(OABPropertiesManager *)mMasterManager shadowColor];
  }

  else
  {
    *v2 = 0;
  }

  return mMasterManager;
}

@end