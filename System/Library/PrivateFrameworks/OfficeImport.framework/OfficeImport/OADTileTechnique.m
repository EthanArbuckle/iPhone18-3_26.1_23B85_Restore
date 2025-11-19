@interface OADTileTechnique
+ (id)defaultProperties;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)a3;
- (OADTileTechnique)initWithDefaults;
- (float)offsetX;
- (float)offsetY;
- (float)scaleX;
- (float)scaleY;
- (id)copyWithZone:(_NSZone *)a3;
- (int)alignment;
- (int)flipMode;
- (unint64_t)hash;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3;
- (void)removeUnnecessaryOverrides;
@end

@implementation OADTileTechnique

+ (id)defaultProperties
{
  if (+[OADTileTechnique defaultProperties]::once != -1)
  {
    +[OADTileTechnique defaultProperties];
  }

  v3 = +[OADTileTechnique defaultProperties]::defaultProperties;

  return v3;
}

- (OADTileTechnique)initWithDefaults
{
  v7.receiver = self;
  v7.super_class = OADTileTechnique;
  v2 = [(OADProperties *)&v7 initWithDefaults];
  v3 = v2;
  if (v2)
  {
    [(OADTileTechnique *)v2 setOffsetX:0.0];
    [(OADTileTechnique *)v3 setOffsetY:0.0];
    LODWORD(v4) = 1.0;
    [(OADTileTechnique *)v3 setScaleX:v4];
    LODWORD(v5) = 1.0;
    [(OADTileTechnique *)v3 setScaleY:v5];
    [(OADTileTechnique *)v3 setFlipMode:0];
    [(OADTileTechnique *)v3 setAlignment:1];
  }

  return v3;
}

- (unint64_t)hash
{
  if (LOBYTE(self->mOffsetX) == 1)
  {
    v2 = *(&self->super.super + 5);
  }

  else
  {
    v2 = 0;
  }

  if (LOBYTE(self->mOffsetY) == 1)
  {
    v2 ^= *&self->mIsOffsetXOverridden;
  }

  if (LOBYTE(self->mScaleX) == 1)
  {
    v2 ^= *&self->mIsOffsetYOverridden;
  }

  if (LOBYTE(self->mScaleY) == 1)
  {
    v2 ^= *&self->mIsScaleXOverridden;
  }

  if (LOBYTE(self->mFlipMode) == 1)
  {
    v2 ^= *&self->mIsScaleYOverridden;
  }

  if (LOBYTE(self->mAlignment) == 1)
  {
    v2 ^= *&self->mIsFlipModeOverridden;
  }

  v4.receiver = self;
  v4.super_class = OADTileTechnique;
  return [(OADImageFillTechnique *)&v4 hash]^ v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v4;
  if (LOBYTE(self->mOffsetX) == 1)
  {
    LODWORD(v5) = *(&self->super.super + 5);
    [v4 setOffsetX:v5];
  }

  if (LOBYTE(self->mOffsetY) == 1)
  {
    LODWORD(v5) = *&self->mIsOffsetXOverridden;
    [v6 setOffsetY:v5];
  }

  if (LOBYTE(self->mScaleX) == 1)
  {
    LODWORD(v5) = *&self->mIsOffsetYOverridden;
    [v6 setScaleX:v5];
  }

  if (LOBYTE(self->mScaleY) == 1)
  {
    LODWORD(v5) = *&self->mIsScaleXOverridden;
    [v6 setScaleY:v5];
  }

  if (LOBYTE(self->mFlipMode) == 1)
  {
    [v6 setFlipMode:*&self->mIsScaleYOverridden];
  }

  if (LOBYTE(self->mAlignment) == 1)
  {
    [v6 setAlignment:*&self->mIsFlipModeOverridden];
  }

  return v6;
}

void __37__OADTileTechnique_defaultProperties__block_invoke()
{
  v0 = [[OADTileTechnique alloc] initWithDefaults];
  v1 = +[OADTileTechnique defaultProperties]::defaultProperties;
  +[OADTileTechnique defaultProperties]::defaultProperties = v0;
}

- (BOOL)isAnythingOverridden
{
  v4.receiver = self;
  v4.super_class = OADTileTechnique;
  return [(OADProperties *)&v4 isAnythingOverridden]|| [(OADTileTechnique *)self isOffsetXOverridden]|| [(OADTileTechnique *)self isOffsetYOverridden]|| [(OADTileTechnique *)self isScaleXOverridden]|| [(OADTileTechnique *)self isScaleYOverridden]|| [(OADTileTechnique *)self isFlipModeOverridden]|| [(OADTileTechnique *)self isAlignmentOverridden];
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = OADTileTechnique;
  [(OADProperties *)&v25 fixPropertiesForChangingParentPreservingEffectiveValues:v4];
  if ((LOBYTE(self->mOffsetX) & 1) != 0 || ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != v4))
  {
    [(OADTileTechnique *)self offsetX];
    v7 = v6;
    [v4 offsetX];
    if (v7 == v8)
    {
      LOBYTE(self->mOffsetX) = 0;
    }

    else if ((LOBYTE(self->mOffsetX) & 1) == 0)
    {
      [(OADTileTechnique *)self offsetX];
      [(OADTileTechnique *)self setOffsetX:?];
    }
  }

  if ((LOBYTE(self->mOffsetY) & 1) != 0 || ([(OADProperties *)self parent], v9 = objc_claimAutoreleasedReturnValue(), v9, v9 != v4))
  {
    [(OADTileTechnique *)self offsetY];
    v11 = v10;
    [v4 offsetY];
    if (v11 == v12)
    {
      LOBYTE(self->mOffsetY) = 0;
    }

    else if ((LOBYTE(self->mOffsetY) & 1) == 0)
    {
      [(OADTileTechnique *)self offsetY];
      [(OADTileTechnique *)self setOffsetY:?];
    }
  }

  if ((LOBYTE(self->mScaleX) & 1) != 0 || ([(OADProperties *)self parent], v13 = objc_claimAutoreleasedReturnValue(), v13, v13 != v4))
  {
    [(OADTileTechnique *)self scaleX];
    v15 = v14;
    [v4 scaleX];
    if (v15 == v16)
    {
      LOBYTE(self->mScaleX) = 0;
    }

    else if ((LOBYTE(self->mScaleX) & 1) == 0)
    {
      [(OADTileTechnique *)self scaleX];
      [(OADTileTechnique *)self setScaleX:?];
    }
  }

  if ((LOBYTE(self->mScaleY) & 1) != 0 || ([(OADProperties *)self parent], v17 = objc_claimAutoreleasedReturnValue(), v17, v17 != v4))
  {
    [(OADTileTechnique *)self scaleY];
    v19 = v18;
    [v4 scaleY];
    if (v19 == v20)
    {
      LOBYTE(self->mScaleY) = 0;
    }

    else if ((LOBYTE(self->mScaleY) & 1) == 0)
    {
      [(OADTileTechnique *)self scaleY];
      [(OADTileTechnique *)self setScaleY:?];
    }
  }

  if ((self->mFlipMode & 1) != 0 || ([(OADProperties *)self parent], v21 = objc_claimAutoreleasedReturnValue(), v21, v21 != v4))
  {
    v22 = [(OADTileTechnique *)self flipMode];
    if (v22 == [v4 flipMode])
    {
      LOBYTE(self->mFlipMode) = 0;
    }

    else if ((self->mFlipMode & 1) == 0)
    {
      [(OADTileTechnique *)self setFlipMode:[(OADTileTechnique *)self flipMode]];
    }
  }

  if ((self->mAlignment & 1) != 0 || ([(OADProperties *)self parent], v23 = objc_claimAutoreleasedReturnValue(), v23, v23 != v4))
  {
    v24 = [(OADTileTechnique *)self alignment];
    if (v24 == [v4 alignment])
    {
      LOBYTE(self->mAlignment) = 0;
    }

    else if ((self->mAlignment & 1) == 0)
    {
      [(OADTileTechnique *)self setAlignment:[(OADTileTechnique *)self alignment]];
    }
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
    if ([(OADTileTechnique *)self isOffsetXOverridden])
    {
      v6 = [(OADProperties *)self parent];
      [(OADTileTechnique *)self offsetX];
      v8 = v7;
      [v6 offsetX];
      if (v8 == v9)
      {
        [(OADTileTechnique *)self setOffsetX:0.0];
        LOBYTE(self->mOffsetX) = 0;
      }
    }

    if ([(OADTileTechnique *)self isOffsetYOverridden])
    {
      v10 = [(OADProperties *)self parent];
      [(OADTileTechnique *)self offsetY];
      v12 = v11;
      [v10 offsetY];
      if (v12 == v13)
      {
        [(OADTileTechnique *)self setOffsetY:0.0];
        LOBYTE(self->mOffsetY) = 0;
      }
    }

    if ([(OADTileTechnique *)self isScaleXOverridden])
    {
      v14 = [(OADProperties *)self parent];
      [(OADTileTechnique *)self scaleX];
      v16 = v15;
      [v14 scaleX];
      if (v16 == *&v17)
      {
        LODWORD(v17) = 1.0;
        [(OADTileTechnique *)self setScaleX:v17];
        LOBYTE(self->mScaleX) = 0;
      }
    }

    if ([(OADTileTechnique *)self isScaleYOverridden])
    {
      v18 = [(OADProperties *)self parent];
      [(OADTileTechnique *)self scaleY];
      v20 = v19;
      [v18 scaleY];
      if (v20 == *&v21)
      {
        LODWORD(v21) = 1.0;
        [(OADTileTechnique *)self setScaleY:v21];
        LOBYTE(self->mScaleY) = 0;
      }
    }

    if ([(OADTileTechnique *)self isFlipModeOverridden])
    {
      v22 = [(OADProperties *)self parent];
      v23 = [(OADTileTechnique *)self flipMode];
      if (v23 == [v22 flipMode])
      {
        [(OADTileTechnique *)self setFlipMode:0];
        LOBYTE(self->mFlipMode) = 0;
      }
    }

    if ([(OADTileTechnique *)self isAlignmentOverridden])
    {
      v24 = [(OADProperties *)self parent];
      v25 = [(OADTileTechnique *)self alignment];
      if (v25 == [v24 alignment])
      {
        [(OADTileTechnique *)self setAlignment:1];
        LOBYTE(self->mAlignment) = 0;
      }
    }

    [(OADProperties *)self setMerged:v4];
    [(OADProperties *)self setMergedWithParent:v5];
    v26.receiver = self;
    v26.super_class = OADTileTechnique;
    [(OADProperties *)&v26 removeUnnecessaryOverrides];
  }
}

- (float)offsetX
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isOffsetXOverridden];
  v3 = v2[5];

  return v3;
}

- (float)offsetY
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isOffsetYOverridden];
  v3 = v2[7];

  return v3;
}

- (float)scaleX
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isScaleXOverridden];
  v3 = v2[9];

  return v3;
}

- (float)scaleY
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isScaleYOverridden];
  v3 = v2[11];

  return v3;
}

- (int)flipMode
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isFlipModeOverridden];
  v3 = v2[13];

  return v3;
}

- (int)alignment
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isAlignmentOverridden];
  v3 = v2[15];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = OADTileTechnique;
  if ([(OADImageFillTechnique *)&v8 isEqual:v4])
  {
    v5 = v4;
    if (LOBYTE(self->mOffsetX) == *(v5 + 24) && (!LOBYTE(self->mOffsetX) || *(&self->super.super + 5) == v5[5]) && LOBYTE(self->mOffsetY) == *(v5 + 32) && (!LOBYTE(self->mOffsetY) || *&self->mIsOffsetXOverridden == v5[7]) && LOBYTE(self->mScaleX) == *(v5 + 40) && (!LOBYTE(self->mScaleX) || *&self->mIsOffsetYOverridden == v5[9]) && LOBYTE(self->mScaleY) == *(v5 + 48) && (!LOBYTE(self->mScaleY) || *&self->mIsScaleXOverridden == v5[11]) && LOBYTE(self->mFlipMode) == *(v5 + 56) && (!LOBYTE(self->mFlipMode) || *&self->mIsScaleYOverridden == *(v5 + 13)) && LOBYTE(self->mAlignment) == *(v5 + 64))
    {
      if (LOBYTE(self->mAlignment))
      {
        v6 = *&self->mIsFlipModeOverridden == *(v5 + 15);
      }

      else
      {
        v6 = 1;
      }
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