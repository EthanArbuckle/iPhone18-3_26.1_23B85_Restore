@interface OABShapeManager
- (BOOL)hidden;
- (BOOL)isFillOK;
- (BOOL)isFilled;
- (BOOL)isShadowOK;
- (BOOL)isShadowed;
- (BOOL)isStrokeOK;
- (BOOL)isStroked;
- (BOOL)isTextPath;
- (BOOL)textPathBold;
- (BOOL)textPathItalic;
- (BOOL)textPathSmallcaps;
- (BOOL)textPathStrikethrough;
- (BOOL)textPathUnderline;
- (OABShapeManager)initWithShape:(void *)shape masterShape:(void *)masterShape;
- (id)textPathFontFamily;
- (id)textPathUnicodeString;
- (int)textPathFontSize;
- (int)textPathTextAlignment;
@end

@implementation OABShapeManager

- (BOOL)isFilled
{
  v5.receiver = self;
  v5.super_class = OABShapeManager;
  isFilled = [(OABFillPropertiesManager *)&v5 isFilled];
  if (isFilled)
  {
    LOBYTE(isFilled) = [(OABShapeManager *)self isFillOK];
  }

  return isFilled;
}

- (BOOL)isTextPath
{
  if (EshTextPath::isOnSet((self->mShape + 504)))
  {
    v3 = (self->mShape + 504);

    return EshTextPath::getOn(v3);
  }

  else if (EshShapeLib::isWordArt(LOWORD(self->super.super.mShapeType)))
  {
    return 1;
  }

  else
  {
    mMasterManager = self->super.super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager isTextPath];
  }
}

- (BOOL)isStroked
{
  v5.receiver = self;
  v5.super_class = OABShapeManager;
  isStroked = [(OABShapeBaseManager *)&v5 isStroked];
  if (isStroked)
  {
    LOBYTE(isStroked) = [(OABShapeManager *)self isStrokeOK];
  }

  return isStroked;
}

- (BOOL)isShadowed
{
  v5.receiver = self;
  v5.super_class = OABShapeManager;
  isShadowed = [(OABShapeBaseManager *)&v5 isShadowed];
  if (isShadowed)
  {
    LOBYTE(isShadowed) = [(OABShapeManager *)self isShadowOK];
  }

  return isShadowed;
}

- (BOOL)hidden
{
  if (EshShapeProperties::isHiddenSet((self->mShape + 424)))
  {
    v3 = (self->mShape + 424);

    return EshShapeProperties::getHidden(v3);
  }

  else
  {
    mMasterManager = self->super.super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager hidden];
  }
}

- (BOOL)isStrokeOK
{
  if (EshPath::isStrokeOKSet(self->mShape + 22))
  {
    v3 = (self->mShape + 528);

    LOBYTE(isStrokeOK) = EshPath::getStrokeOK(v3);
  }

  else
  {
    isStrokeOK = EshShapeLib::isStrokeOK(LOWORD(self->super.super.mShapeType), 1);
    if (isStrokeOK)
    {
      mMasterManager = self->super.super.mMasterManager;

      LOBYTE(isStrokeOK) = [(OABPropertiesManager *)mMasterManager isStrokeOK];
    }
  }

  return isStrokeOK;
}

- (BOOL)isFillOK
{
  if (EshPath::isFillOKSet(self->mShape + 22))
  {
    v3 = (self->mShape + 528);

    LOBYTE(isFillOK) = EshPath::getFillOK(v3);
  }

  else
  {
    isFillOK = EshShapeLib::isFillOK(LOWORD(self->super.super.mShapeType), 1);
    if (isFillOK)
    {
      mMasterManager = self->super.super.mMasterManager;

      LOBYTE(isFillOK) = [(OABPropertiesManager *)mMasterManager isFillOK];
    }
  }

  return isFillOK;
}

- (BOOL)isShadowOK
{
  if (EshPath::isShadowOKSet(self->mShape + 22))
  {
    v3 = (self->mShape + 528);

    LOBYTE(isShadowOK) = EshPath::getShadowOK(v3);
  }

  else
  {
    isShadowOK = EshShapeLib::isShadowOK(LOWORD(self->super.super.mShapeType), 1);
    if (isShadowOK)
    {
      mMasterManager = self->super.super.mMasterManager;

      LOBYTE(isShadowOK) = [(OABPropertiesManager *)mMasterManager isShadowOK];
    }
  }

  return isShadowOK;
}

- (int)textPathTextAlignment
{
  if (EshTextPath::isAlignSet((self->mShape + 504)))
  {
    v3 = (self->mShape + 504);

    return EshTextPath::getAlign(v3);
  }

  else
  {
    mMasterManager = self->super.super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager textPathTextAlignment];
  }
}

- (id)textPathUnicodeString
{
  if (EshTextPath::isStringSet((self->mShape + 504)))
  {
    String = EshTextPath::getString((self->mShape + 504));
    if (String)
    {
      String = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:String];
    }
  }

  else
  {
    String = [(OABPropertiesManager *)self->super.super.mMasterManager textPathUnicodeString];
  }

  return String;
}

- (id)textPathFontFamily
{
  if (EshTextPath::isFontSet((self->mShape + 504)))
  {
    Font = EshTextPath::getFont((self->mShape + 504));
    if (Font)
    {
      Font = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:Font];
    }
  }

  else
  {
    Font = [(OABPropertiesManager *)self->super.super.mMasterManager textPathFontFamily];
  }

  return Font;
}

- (int)textPathFontSize
{
  if (EshTextPath::isSizeSet((self->mShape + 504)))
  {
    v3 = (self->mShape + 504);

    return EshTextPath::getSize(v3);
  }

  else
  {
    mMasterManager = self->super.super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager textPathFontSize];
  }
}

- (BOOL)textPathBold
{
  if (EshTextPath::isBoldSet((self->mShape + 504)))
  {
    v3 = (self->mShape + 504);

    return EshTextPath::getBold(v3);
  }

  else
  {
    mMasterManager = self->super.super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager textPathBold];
  }
}

- (BOOL)textPathItalic
{
  if (EshTextPath::isItalicSet((self->mShape + 504)))
  {
    v3 = (self->mShape + 504);

    return EshTextPath::getItalic(v3);
  }

  else
  {
    mMasterManager = self->super.super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager textPathItalic];
  }
}

- (BOOL)textPathSmallcaps
{
  if (EshTextPath::isSmallcapsSet((self->mShape + 504)))
  {
    v3 = (self->mShape + 504);

    return EshTextPath::getSmallcaps(v3);
  }

  else
  {
    mMasterManager = self->super.super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager textPathSmallcaps];
  }
}

- (OABShapeManager)initWithShape:(void *)shape masterShape:(void *)masterShape
{
  ShapeType = EshShapeProperties::getShapeType((shape + 424));
  v9.receiver = self;
  v9.super_class = OABShapeManager;
  result = [(OABShapeBaseManager *)&v9 initWithShapeBase:shape shapeType:ShapeType masterShape:masterShape];
  if (result)
  {
    result->mShape = shape;
  }

  return result;
}

- (BOOL)textPathUnderline
{
  if (EshTextPath::isUnderlineSet((self->mShape + 504)))
  {
    v3 = (self->mShape + 504);

    return EshTextPath::getUnderline(v3);
  }

  else
  {
    mMasterManager = self->super.super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager textPathUnderline];
  }
}

- (BOOL)textPathStrikethrough
{
  if (EshTextPath::isStrikethroughSet((self->mShape + 504)))
  {
    v3 = (self->mShape + 504);

    return EshTextPath::getStrikethrough(v3);
  }

  else
  {
    mMasterManager = self->super.super.mMasterManager;

    return [(OABPropertiesManager *)mMasterManager textPathStrikethrough];
  }
}

@end