@interface OADImageFill
+ (id)defaultProperties;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)a3;
- (BOOL)rotateWithShape;
- (OADImageFill)initWithDefaults;
- (id)blipRef;
- (id)color;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sourceRect;
- (id)technique;
- (int)dpi;
- (unint64_t)hash;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3;
- (void)removeUnnecessaryOverrides;
- (void)setParent:(id)a3;
- (void)setSourceRect:(id)a3;
- (void)setStyleColor:(id)a3;
- (void)setTechnique:(id)a3;
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
  v2 = [(OADProperties *)&v8 initWithDefaults];
  v3 = v2;
  if (v2)
  {
    [(OADImageFill *)v2 setBlipRef:0];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (LOBYTE(self->mBlipRef) == 1)
  {
    v6 = [*&self->super.mDefinedByStyle copyWithZone:a3];
    [v5 setBlipRef:v6];
  }

  v7 = *&self->mIsBlipRefOverridden;
  if (v7)
  {
    v8 = [v7 copyWithZone:a3];
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
    v10 = [v9 copyWithZone:a3];
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

- (void)setParent:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = OADImageFill;
  [(OADProperties *)&v6 setParent:v4];
  if (*&self->mDpi)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 technique];
      if ([v5 isMemberOfClass:objc_opt_class()])
      {
        [*&self->mDpi setParent:v5];
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

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = OADImageFill;
  [(OADProperties *)&v30 fixPropertiesForChangingParentPreservingEffectiveValues:v4];
  if ((self->mBlipRef & 1) != 0 || ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != v4))
  {
    v6 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_isBlipRefOverridden];

    if (v6)
    {
      v7 = [(OADImageFill *)self blipRef];
    }

    else
    {
      v7 = 0;
    }

    v8 = [v4 possiblyInexistentOverrideForSelector:sel_isBlipRefOverridden];

    if (v8)
    {
      v9 = [v4 blipRef];
    }

    else
    {
      v9 = 0;
    }

    if (TCObjectEqual(v7, v9))
    {
      v10 = *&self->super.mDefinedByStyle;
      *&self->super.mDefinedByStyle = 0;

      LOBYTE(self->mBlipRef) = 0;
    }

    else if ((self->mBlipRef & 1) == 0 && v6)
    {
      [(OADImageFill *)self setBlipRef:v7];
    }
  }

  if ([(OADImageFill *)self isSourceRectOverridden]|| ([(OADProperties *)self parent], v11 = objc_claimAutoreleasedReturnValue(), v11, v11 != v4))
  {
    v12 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_isSourceRectOverridden];

    if (v12)
    {
      v13 = [(OADImageFill *)self sourceRect];
    }

    else
    {
      v13 = 0;
    }

    v14 = [v4 possiblyInexistentOverrideForSelector:sel_isSourceRectOverridden];

    if (v14)
    {
      v15 = [v4 sourceRect];
    }

    else
    {
      v15 = 0;
    }

    v16 = TCObjectEqual(v13, v15);
    v17 = *&self->mIsBlipRefOverridden;
    if (v16)
    {
      *&self->mIsBlipRefOverridden = 0;
    }

    else if (!v17 && v12)
    {
      [(OADImageFill *)self setSourceRect:v13];
    }
  }

  if ((BYTE4(self->mSourceRect) & 1) != 0 || ([(OADProperties *)self parent], v18 = objc_claimAutoreleasedReturnValue(), v18, v18 != v4))
  {
    v19 = [(OADImageFill *)self dpi];
    if (v19 == [v4 dpi])
    {
      BYTE4(self->mSourceRect) = 0;
    }

    else if ((BYTE4(self->mSourceRect) & 1) == 0)
    {
      [(OADImageFill *)self setDpi:[(OADImageFill *)self dpi]];
    }
  }

  if ((BYTE6(self->mSourceRect) & 1) != 0 || ([(OADProperties *)self parent], v20 = objc_claimAutoreleasedReturnValue(), v20, v20 != v4))
  {
    v21 = [(OADImageFill *)self rotateWithShape];
    if (v21 == [v4 rotateWithShape])
    {
      BYTE6(self->mSourceRect) = 0;
    }

    else if ((BYTE6(self->mSourceRect) & 1) == 0)
    {
      [(OADImageFill *)self setRotateWithShape:[(OADImageFill *)self rotateWithShape]];
    }
  }

  if (*&self->mDpi || ([(OADProperties *)self parent], v22 = objc_claimAutoreleasedReturnValue(), v22, v22 != v4))
  {
    v23 = [(OADImageFill *)self technique];
    v24 = objc_alloc_init(objc_opt_class());

    v25 = [(OADImageFill *)self technique];
    [v24 setParent:v25];

    objc_storeStrong(&self->mDpi, v24);
    v26 = [v4 possiblyInexistentOverrideForSelector:sel_isTechniqueOverridden];

    if (v26)
    {
      v26 = [v4 technique];
    }

    v27 = *&self->mDpi;
    if (v27 != v26)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        v29 = [objc_opt_class() defaultProperties];

        v26 = v29;
      }

      [*&self->mDpi changeParentPreservingEffectiveValues:v26];
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
  v3 = [(OADProperties *)self parent];

  if (v3)
  {
    v4 = [(OADProperties *)self isMerged];
    v5 = [(OADProperties *)self isMergedWithParent];
    [(OADProperties *)self setMerged:0];
    [(OADProperties *)self setMergedWithParent:0];
    if (![(OADImageFill *)self isSourceRectOverridden])
    {
      goto LABEL_10;
    }

    v6 = [(OADProperties *)self parent];
    v7 = [(OADImageFill *)self sourceRect];
    v8 = [v6 sourceRect];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)v7 removeUnnecessaryOverrides];
      v9 = objc_opt_class();
      if (v9 != objc_opt_class())
      {
        goto LABEL_9;
      }

      v10 = [(objc_object *)v7 isMergedWithParent];
      [(objc_object *)v7 setMergedWithParent:0];
      v11 = [(objc_object *)v7 isAnythingOverridden];
      [(objc_object *)v7 setMergedWithParent:v10];
      if (v11)
      {
        goto LABEL_9;
      }
    }

    else if (!TCObjectEqual(v7, v8))
    {
LABEL_9:

LABEL_10:
      if ([(OADImageFill *)self isDpiOverridden])
      {
        v13 = [(OADProperties *)self parent];
        v14 = [(OADImageFill *)self dpi];
        if (v14 == [v13 dpi])
        {
          [(OADImageFill *)self setDpi:72];
          BYTE4(self->mSourceRect) = 0;
        }
      }

      if ([(OADImageFill *)self isRotateWithShapeOverridden])
      {
        v15 = [(OADProperties *)self parent];
        v16 = [(OADImageFill *)self rotateWithShape];
        if (v16 == [v15 rotateWithShape])
        {
          [(OADImageFill *)self setRotateWithShape:1];
          BYTE6(self->mSourceRect) = 0;
        }
      }

      if (![(OADImageFill *)self isTechniqueOverridden])
      {
        goto LABEL_26;
      }

      v17 = [(OADProperties *)self parent];
      v18 = [(OADImageFill *)self technique];
      v19 = [v17 technique];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(objc_object *)v18 removeUnnecessaryOverrides];
        v20 = objc_opt_class();
        if (v20 != objc_opt_class())
        {
          goto LABEL_25;
        }

        v21 = [(objc_object *)v18 isMergedWithParent];
        [(objc_object *)v18 setMergedWithParent:0];
        v22 = [(objc_object *)v18 isAnythingOverridden];
        [(objc_object *)v18 setMergedWithParent:v21];
        if (v22)
        {
          goto LABEL_25;
        }
      }

      else if (!TCObjectEqual(v18, v19))
      {
LABEL_25:

LABEL_26:
        [(OADProperties *)self setMerged:v4];
        [(OADProperties *)self setMergedWithParent:v5];
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

    v7 = [v5 foregroundColor];
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  return v7;
}

- (void)setSourceRect:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OADImageFill setSourceRect:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADFill.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:1384 isFatal:0 description:"invalid nil value for '%{public}s'", "sourceRect"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v7 = *&self->mIsBlipRefOverridden;
  *&self->mIsBlipRefOverridden = v4;
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

- (void)setTechnique:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OADImageFill setTechnique:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADFill.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:1423 isFatal:0 description:"invalid nil value for '%{public}s'", "technique"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v7 = *&self->mDpi;
  *&self->mDpi = v4;
}

- (void)setStyleColor:(id)a3
{
  v8 = a3;
  v4 = [(OADImageFill *)self blipRef];
  v5 = [v4 effectCount];
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = [v4 effectAtIndex:i];
      [v7 setStyleColor:v8];
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = OADImageFill;
  if ([(OADFill *)&v8 isEqual:v4])
  {
    v5 = v4;
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