@interface OADImageFill
+ (id)defaultProperties;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)equal;
- (BOOL)rotateWithShape;
- (OADImageFill)initWithDefaults;
- (id)blipRef;
- (id)color;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sourceRect;
- (id)technique;
- (int)dpi;
- (unint64_t)hash;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values;
- (void)removeUnnecessaryOverrides;
- (void)setParent:(id)parent;
- (void)setSourceRect:(id)rect;
- (void)setStyleColor:(id)color;
- (void)setTechnique:(id)technique;
@end

@implementation OADImageFill

+ (id)defaultProperties
{
  if (+[OADImageFill defaultProperties]::once != -1)
  {
    +[OADImageFill defaultProperties];
  }

  v3 = +[OADImageFill defaultProperties]::defaultProperties;

  return v3;
}

- (OADImageFill)initWithDefaults
{
  v8.receiver = self;
  v8.super_class = OADImageFill;
  initWithDefaults = [(OADProperties *)&v8 initWithDefaults];
  v3 = initWithDefaults;
  if (initWithDefaults)
  {
    [(OADImageFill *)initWithDefaults setBlipRef:0];
    v4 = [[OADRelativeRect alloc] initWithLeft:0.0 top:0.0 right:0.0 bottom:0.0];
    [(OADImageFill *)v3 setSourceRect:v4];
    [(OADImageFill *)v3 setDpi:72];
    [(OADImageFill *)v3 setRotateWithShape:1];
    v5 = +[OADTileTechnique defaultProperties];
    v6 = [v5 copy];
    [(OADImageFill *)v3 setTechnique:v6];
  }

  return v3;
}

- (id)sourceRect
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isSourceRectOverridden];
  v3 = v2[5];
  v4 = v3;

  return v3;
}

- (id)blipRef
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isBlipRefOverridden];
  v3 = v2[3];
  v4 = v3;

  return v3;
}

- (unint64_t)hash
{
  if (LOBYTE(self->mBlipRef) == 1)
  {
    v3 = [*&self->super.mDefinedByStyle hash];
  }

  else
  {
    v3 = 0;
  }

  v4 = *&self->mIsBlipRefOverridden;
  if (v4)
  {
    v3 ^= [v4 hash];
  }

  if (BYTE4(self->mSourceRect) == 1)
  {
    v3 ^= SLODWORD(self->mSourceRect);
  }

  if (BYTE6(self->mSourceRect) == 1)
  {
    v3 ^= BYTE5(self->mSourceRect);
  }

  v5 = *&self->mDpi;
  if (v5)
  {
    v3 ^= [v5 hash];
  }

  v7.receiver = self;
  v7.super_class = OADImageFill;
  return [(OADFill *)&v7 hash]^ v3;
}

- (id)technique
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isTechniqueOverridden];
  v3 = v2[7];
  v4 = v3;

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (LOBYTE(self->mBlipRef) == 1)
  {
    v6 = [*&self->super.mDefinedByStyle copyWithZone:zone];
    [v5 setBlipRef:v6];
  }

  v7 = *&self->mIsBlipRefOverridden;
  if (v7)
  {
    v8 = [v7 copyWithZone:zone];
    [v5 setSourceRect:v8];
  }

  if (BYTE4(self->mSourceRect) == 1)
  {
    [v5 setDpi:LODWORD(self->mSourceRect)];
  }

  if (BYTE6(self->mSourceRect) == 1)
  {
    [v5 setRotateWithShape:BYTE5(self->mSourceRect)];
  }

  v9 = *&self->mDpi;
  if (v9)
  {
    v10 = [v9 copyWithZone:zone];
    [v5 setTechnique:v10];
  }

  return v5;
}

void __33__OADImageFill_defaultProperties__block_invoke()
{
  v0 = [[OADImageFill alloc] initWithDefaults];
  v1 = +[OADImageFill defaultProperties]::defaultProperties;
  +[OADImageFill defaultProperties]::defaultProperties = v0;
}

- (void)setParent:(id)parent
{
  parentCopy = parent;
  v6.receiver = self;
  v6.super_class = OADImageFill;
  [(OADProperties *)&v6 setParent:parentCopy];
  if (*&self->mDpi)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      technique = [parentCopy technique];
      if ([technique isMemberOfClass:objc_opt_class()])
      {
        [*&self->mDpi setParent:technique];
      }
    }
  }
}

- (BOOL)isAnythingOverridden
{
  v4.receiver = self;
  v4.super_class = OADImageFill;
  return [(OADProperties *)&v4 isAnythingOverridden]|| [(OADImageFill *)self isBlipRefOverridden]|| [(OADImageFill *)self isSourceRectOverridden]|| [(OADImageFill *)self isDpiOverridden]|| [(OADImageFill *)self isRotateWithShapeOverridden]|| [(OADImageFill *)self isTechniqueOverridden];
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  v30.receiver = self;
  v30.super_class = OADImageFill;
  [(OADProperties *)&v30 fixPropertiesForChangingParentPreservingEffectiveValues:valuesCopy];
  if ((self->mBlipRef & 1) != 0 || ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != valuesCopy))
  {
    v6 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_isBlipRefOverridden];

    if (v6)
    {
      blipRef = [(OADImageFill *)self blipRef];
    }

    else
    {
      blipRef = 0;
    }

    v8 = [valuesCopy possiblyInexistentOverrideForSelector:sel_isBlipRefOverridden];

    if (v8)
    {
      blipRef2 = [valuesCopy blipRef];
    }

    else
    {
      blipRef2 = 0;
    }

    if (TCObjectEqual(blipRef, blipRef2))
    {
      v10 = *&self->super.mDefinedByStyle;
      *&self->super.mDefinedByStyle = 0;

      LOBYTE(self->mBlipRef) = 0;
    }

    else if ((self->mBlipRef & 1) == 0 && v6)
    {
      [(OADImageFill *)self setBlipRef:blipRef];
    }
  }

  if ([(OADImageFill *)self isSourceRectOverridden]|| ([(OADProperties *)self parent], v11 = objc_claimAutoreleasedReturnValue(), v11, v11 != valuesCopy))
  {
    v12 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_isSourceRectOverridden];

    if (v12)
    {
      sourceRect = [(OADImageFill *)self sourceRect];
    }

    else
    {
      sourceRect = 0;
    }

    v14 = [valuesCopy possiblyInexistentOverrideForSelector:sel_isSourceRectOverridden];

    if (v14)
    {
      sourceRect2 = [valuesCopy sourceRect];
    }

    else
    {
      sourceRect2 = 0;
    }

    v16 = TCObjectEqual(sourceRect, sourceRect2);
    v17 = *&self->mIsBlipRefOverridden;
    if (v16)
    {
      *&self->mIsBlipRefOverridden = 0;
    }

    else if (!v17 && v12)
    {
      [(OADImageFill *)self setSourceRect:sourceRect];
    }
  }

  if ((BYTE4(self->mSourceRect) & 1) != 0 || ([(OADProperties *)self parent], v18 = objc_claimAutoreleasedReturnValue(), v18, v18 != valuesCopy))
  {
    v19 = [(OADImageFill *)self dpi];
    if (v19 == [valuesCopy dpi])
    {
      BYTE4(self->mSourceRect) = 0;
    }

    else if ((BYTE4(self->mSourceRect) & 1) == 0)
    {
      [(OADImageFill *)self setDpi:[(OADImageFill *)self dpi]];
    }
  }

  if ((BYTE6(self->mSourceRect) & 1) != 0 || ([(OADProperties *)self parent], v20 = objc_claimAutoreleasedReturnValue(), v20, v20 != valuesCopy))
  {
    rotateWithShape = [(OADImageFill *)self rotateWithShape];
    if (rotateWithShape == [valuesCopy rotateWithShape])
    {
      BYTE6(self->mSourceRect) = 0;
    }

    else if ((BYTE6(self->mSourceRect) & 1) == 0)
    {
      [(OADImageFill *)self setRotateWithShape:[(OADImageFill *)self rotateWithShape]];
    }
  }

  if (*&self->mDpi || ([(OADProperties *)self parent], v22 = objc_claimAutoreleasedReturnValue(), v22, v22 != valuesCopy))
  {
    technique = [(OADImageFill *)self technique];
    v24 = objc_alloc_init(objc_opt_class());

    technique2 = [(OADImageFill *)self technique];
    [v24 setParent:technique2];

    objc_storeStrong(&self->mDpi, v24);
    technique3 = [valuesCopy possiblyInexistentOverrideForSelector:sel_isTechniqueOverridden];

    if (technique3)
    {
      technique3 = [valuesCopy technique];
    }

    v27 = *&self->mDpi;
    if (v27 != technique3)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        defaultProperties = [objc_opt_class() defaultProperties];

        technique3 = defaultProperties;
      }

      [*&self->mDpi changeParentPreservingEffectiveValues:technique3];
      if (isKindOfClass & 1) == 0 || ([*&self->mDpi isAnythingOverridden])
      {
        goto LABEL_52;
      }

      v27 = *&self->mDpi;
    }

    *&self->mDpi = 0;

LABEL_52:
  }
}

- (void)removeUnnecessaryOverrides
{
  parent = [(OADProperties *)self parent];

  if (parent)
  {
    isMerged = [(OADProperties *)self isMerged];
    isMergedWithParent = [(OADProperties *)self isMergedWithParent];
    [(OADProperties *)self setMerged:0];
    [(OADProperties *)self setMergedWithParent:0];
    if (![(OADImageFill *)self isSourceRectOverridden])
    {
      goto LABEL_10;
    }

    parent2 = [(OADProperties *)self parent];
    sourceRect = [(OADImageFill *)self sourceRect];
    sourceRect2 = [parent2 sourceRect];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)sourceRect removeUnnecessaryOverrides];
      v9 = objc_opt_class();
      if (v9 != objc_opt_class())
      {
        goto LABEL_9;
      }

      isMergedWithParent2 = [(objc_object *)sourceRect isMergedWithParent];
      [(objc_object *)sourceRect setMergedWithParent:0];
      isAnythingOverridden = [(objc_object *)sourceRect isAnythingOverridden];
      [(objc_object *)sourceRect setMergedWithParent:isMergedWithParent2];
      if (isAnythingOverridden)
      {
        goto LABEL_9;
      }
    }

    else if (!TCObjectEqual(sourceRect, sourceRect2))
    {
LABEL_9:

LABEL_10:
      if ([(OADImageFill *)self isDpiOverridden])
      {
        parent3 = [(OADProperties *)self parent];
        v14 = [(OADImageFill *)self dpi];
        if (v14 == [parent3 dpi])
        {
          [(OADImageFill *)self setDpi:72];
          BYTE4(self->mSourceRect) = 0;
        }
      }

      if ([(OADImageFill *)self isRotateWithShapeOverridden])
      {
        parent4 = [(OADProperties *)self parent];
        rotateWithShape = [(OADImageFill *)self rotateWithShape];
        if (rotateWithShape == [parent4 rotateWithShape])
        {
          [(OADImageFill *)self setRotateWithShape:1];
          BYTE6(self->mSourceRect) = 0;
        }
      }

      if (![(OADImageFill *)self isTechniqueOverridden])
      {
        goto LABEL_26;
      }

      parent5 = [(OADProperties *)self parent];
      technique = [(OADImageFill *)self technique];
      technique2 = [parent5 technique];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(objc_object *)technique removeUnnecessaryOverrides];
        v20 = objc_opt_class();
        if (v20 != objc_opt_class())
        {
          goto LABEL_25;
        }

        isMergedWithParent3 = [(objc_object *)technique isMergedWithParent];
        [(objc_object *)technique setMergedWithParent:0];
        isAnythingOverridden2 = [(objc_object *)technique isAnythingOverridden];
        [(objc_object *)technique setMergedWithParent:isMergedWithParent3];
        if (isAnythingOverridden2)
        {
          goto LABEL_25;
        }
      }

      else if (!TCObjectEqual(technique, technique2))
      {
LABEL_25:

LABEL_26:
        [(OADProperties *)self setMerged:isMerged];
        [(OADProperties *)self setMergedWithParent:isMergedWithParent];
        v24.receiver = self;
        v24.super_class = OADImageFill;
        [(OADProperties *)&v24 removeUnnecessaryOverrides];
        return;
      }

      v23 = *&self->mDpi;
      *&self->mDpi = 0;

      goto LABEL_25;
    }

    v12 = *&self->mIsBlipRefOverridden;
    *&self->mIsBlipRefOverridden = 0;

    goto LABEL_9;
  }
}

- (id)color
{
  if ([*&self->super.mDefinedByStyle effectCount])
  {
    v3 = 0;
    v4 = 1;
    while (1)
    {
      v5 = [*&self->super.mDefinedByStyle effectAtIndex:v3];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = v4;
      if ([*&self->super.mDefinedByStyle effectCount] <= v4++)
      {
        goto LABEL_5;
      }
    }

    foregroundColor = [v5 foregroundColor];
  }

  else
  {
LABEL_5:
    foregroundColor = 0;
  }

  return foregroundColor;
}

- (void)setSourceRect:(id)rect
{
  rectCopy = rect;
  if (!rectCopy)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OADImageFill setSourceRect:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADFill.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:1384 isFatal:0 description:"invalid nil value for '%{public}s'", "sourceRect"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v7 = *&self->mIsBlipRefOverridden;
  *&self->mIsBlipRefOverridden = rectCopy;
}

- (int)dpi
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isDpiOverridden];
  v3 = v2[12];

  return v3;
}

- (BOOL)rotateWithShape
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isRotateWithShapeOverridden];
  v3 = v2[53];

  return v3;
}

- (void)setTechnique:(id)technique
{
  techniqueCopy = technique;
  if (!techniqueCopy)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OADImageFill setTechnique:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADFill.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:1423 isFatal:0 description:"invalid nil value for '%{public}s'", "technique"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v7 = *&self->mDpi;
  *&self->mDpi = techniqueCopy;
}

- (void)setStyleColor:(id)color
{
  colorCopy = color;
  blipRef = [(OADImageFill *)self blipRef];
  effectCount = [blipRef effectCount];
  if (effectCount)
  {
    for (i = 0; i != effectCount; ++i)
    {
      v7 = [blipRef effectAtIndex:i];
      [v7 setStyleColor:colorCopy];
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = OADImageFill;
  if ([(OADFill *)&v8 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (LOBYTE(self->mBlipRef) == *(v5 + 32) && (!LOBYTE(self->mBlipRef) || [*&self->super.mDefinedByStyle isEqual:v5[3]]) && TCObjectEqual(*&self->mIsBlipRefOverridden, v5[5]) && BYTE4(self->mSourceRect) == *(v5 + 52) && (!BYTE4(self->mSourceRect) || LODWORD(self->mSourceRect) == *(v5 + 12)) && BYTE6(self->mSourceRect) == *(v5 + 54) && (!BYTE6(self->mSourceRect) || BYTE5(self->mSourceRect) == *(v5 + 53)))
    {
      v6 = TCObjectEqual(*&self->mDpi, v5[7]);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end