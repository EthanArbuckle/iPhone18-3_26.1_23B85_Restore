@interface OADGradientFill
+ (id)defaultProperties;
+ (id)stringForTileFlipMode:(int)mode;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)equal;
- (BOOL)rotateWithShape;
- (BOOL)usesPlaceholderColor;
- (OADGradientFill)initWithDefaults;
- (id)copyWithZone:(_NSZone *)zone;
- (id)firstStop;
- (id)lastStop;
- (id)shade;
- (id)stops;
- (id)tileRect;
- (int)flipMode;
- (unint64_t)hash;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values;
- (void)removeUnnecessaryOverrides;
- (void)setParent:(id)parent;
- (void)setShade:(id)shade;
- (void)setStops:(id)stops;
- (void)setTileRect:(id)rect;
- (void)sortStops;
@end

@implementation OADGradientFill

+ (id)defaultProperties
{
  if (+[OADGradientFill defaultProperties]::once != -1)
  {
    +[OADGradientFill defaultProperties];
  }

  v3 = +[OADGradientFill defaultProperties]::defaultProperties;

  return v3;
}

- (OADGradientFill)initWithDefaults
{
  v11.receiver = self;
  v11.super_class = OADGradientFill;
  initWithDefaults = [(OADProperties *)&v11 initWithDefaults];
  if (initWithDefaults)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    v4 = +[OADRgbColor black];
    [OADGradientFillStop addStopWithColor:v4 position:v3 toArray:0.0];

    v5 = +[OADRgbColor white];
    LODWORD(v6) = 1.0;
    [OADGradientFillStop addStopWithColor:v5 position:v3 toArray:v6];

    [(OADGradientFill *)initWithDefaults setStops:v3];
    v7 = [[OADRelativeRect alloc] initWithLeft:0.0 top:0.0 right:0.0 bottom:0.0];
    [(OADGradientFill *)initWithDefaults setTileRect:v7];
    [(OADGradientFill *)initWithDefaults setFlipMode:0];
    [(OADGradientFill *)initWithDefaults setRotateWithShape:1];
    v8 = +[OADLinearShade defaultProperties];
    v9 = [v8 copy];
    [(OADGradientFill *)initWithDefaults setShade:v9];
  }

  return initWithDefaults;
}

- (id)stops
{
  v2 = [(OADProperties *)self overrideForSelector:sel_areStopsOverridden];
  v3 = v2[3];
  v4 = v3;

  return v3;
}

- (unint64_t)hash
{
  mStops = self->mStops;
  if (mStops)
  {
    v4 = [(NSArray *)mStops hash];
  }

  else
  {
    v4 = 0;
  }

  if (BYTE4(self->mTileRect) == 1)
  {
    v4 ^= LODWORD(self->mTileRect);
  }

  if (BYTE6(self->mTileRect) == 1)
  {
    v4 ^= BYTE5(self->mTileRect);
  }

  v5 = *&self->mFlipMode;
  if (v5)
  {
    v4 ^= [v5 hash];
  }

  v7.receiver = self;
  v7.super_class = OADGradientFill;
  return [(OADFill *)&v7 hash]^ v4;
}

- (id)shade
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isShadeOverridden];
  v3 = v2[6];
  v4 = v3;

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->super.mDefinedByStyle)
  {
    v6 = [objc_msgSend(MEMORY[0x277CBEA60] allocWithZone:{zone), "initWithArray:copyItems:", *&self->super.mDefinedByStyle, 1}];
    [v5 setStops:v6];
  }

  mStops = self->mStops;
  if (mStops)
  {
    v8 = [(NSArray *)mStops copyWithZone:zone];
    [v5 setTileRect:v8];
  }

  if (BYTE4(self->mTileRect) == 1)
  {
    [v5 setFlipMode:LODWORD(self->mTileRect)];
  }

  if (BYTE6(self->mTileRect) == 1)
  {
    [v5 setRotateWithShape:BYTE5(self->mTileRect)];
  }

  v9 = *&self->mFlipMode;
  if (v9)
  {
    v10 = [v9 copyWithZone:zone];
    [v5 setShade:v10];
  }

  return v5;
}

void __36__OADGradientFill_defaultProperties__block_invoke()
{
  v0 = [[OADGradientFill alloc] initWithDefaults];
  v1 = +[OADGradientFill defaultProperties]::defaultProperties;
  +[OADGradientFill defaultProperties]::defaultProperties = v0;
}

- (void)setParent:(id)parent
{
  parentCopy = parent;
  v6.receiver = self;
  v6.super_class = OADGradientFill;
  [(OADProperties *)&v6 setParent:parentCopy];
  if (*&self->mFlipMode)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      shade = [parentCopy shade];
      if ([shade isMemberOfClass:objc_opt_class()])
      {
        [*&self->mFlipMode setParent:shade];
      }
    }
  }
}

- (BOOL)isAnythingOverridden
{
  v4.receiver = self;
  v4.super_class = OADGradientFill;
  return [(OADProperties *)&v4 isAnythingOverridden]|| [(OADGradientFill *)self areStopsOverridden]|| [(OADGradientFill *)self isTileRectOverridden]|| [(OADGradientFill *)self isFlipModeOverridden]|| [(OADGradientFill *)self isRotateWithShapeOverridden]|| [(OADGradientFill *)self isShadeOverridden];
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  v31.receiver = self;
  v31.super_class = OADGradientFill;
  [(OADProperties *)&v31 fixPropertiesForChangingParentPreservingEffectiveValues:valuesCopy];
  if ([(OADGradientFill *)self areStopsOverridden]|| ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != valuesCopy))
  {
    v6 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_areStopsOverridden];

    if (v6)
    {
      stops = [(OADGradientFill *)self stops];
    }

    else
    {
      stops = 0;
    }

    v8 = [valuesCopy possiblyInexistentOverrideForSelector:sel_areStopsOverridden];

    if (v8)
    {
      stops2 = [valuesCopy stops];
    }

    else
    {
      stops2 = 0;
    }

    v10 = TCObjectEqual(stops, stops2);
    v11 = *&self->super.mDefinedByStyle;
    if (v10)
    {
      *&self->super.mDefinedByStyle = 0;
    }

    else if (!v11 && v6)
    {
      [(OADGradientFill *)self setStops:stops];
    }
  }

  if ([(OADGradientFill *)self isTileRectOverridden]|| ([(OADProperties *)self parent], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 != valuesCopy))
  {
    v13 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_isTileRectOverridden];

    if (v13)
    {
      tileRect = [(OADGradientFill *)self tileRect];
    }

    else
    {
      tileRect = 0;
    }

    v15 = [valuesCopy possiblyInexistentOverrideForSelector:sel_isTileRectOverridden];

    if (v15)
    {
      tileRect2 = [valuesCopy tileRect];
    }

    else
    {
      tileRect2 = 0;
    }

    v17 = TCObjectEqual(tileRect, tileRect2);
    mStops = self->mStops;
    if (v17)
    {
      self->mStops = 0;
    }

    else if (!mStops && v13)
    {
      [(OADGradientFill *)self setTileRect:tileRect];
    }
  }

  if ((BYTE4(self->mTileRect) & 1) != 0 || ([(OADProperties *)self parent], v19 = objc_claimAutoreleasedReturnValue(), v19, v19 != valuesCopy))
  {
    flipMode = [(OADGradientFill *)self flipMode];
    if (flipMode == [valuesCopy flipMode])
    {
      BYTE4(self->mTileRect) = 0;
    }

    else if ((BYTE4(self->mTileRect) & 1) == 0)
    {
      [(OADGradientFill *)self setFlipMode:[(OADGradientFill *)self flipMode]];
    }
  }

  if ((BYTE6(self->mTileRect) & 1) != 0 || ([(OADProperties *)self parent], v21 = objc_claimAutoreleasedReturnValue(), v21, v21 != valuesCopy))
  {
    rotateWithShape = [(OADGradientFill *)self rotateWithShape];
    if (rotateWithShape == [valuesCopy rotateWithShape])
    {
      BYTE6(self->mTileRect) = 0;
    }

    else if ((BYTE6(self->mTileRect) & 1) == 0)
    {
      [(OADGradientFill *)self setRotateWithShape:[(OADGradientFill *)self rotateWithShape]];
    }
  }

  if (*&self->mFlipMode || ([(OADProperties *)self parent], v23 = objc_claimAutoreleasedReturnValue(), v23, v23 != valuesCopy))
  {
    shade = [(OADGradientFill *)self shade];
    v25 = objc_alloc_init(objc_opt_class());

    shade2 = [(OADGradientFill *)self shade];
    [v25 setParent:shade2];

    objc_storeStrong(&self->mFlipMode, v25);
    shade3 = [valuesCopy possiblyInexistentOverrideForSelector:sel_isShadeOverridden];

    if (shade3)
    {
      shade3 = [valuesCopy shade];
    }

    v28 = *&self->mFlipMode;
    if (v28 != shade3)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        defaultProperties = [objc_opt_class() defaultProperties];

        shade3 = defaultProperties;
      }

      [*&self->mFlipMode changeParentPreservingEffectiveValues:shade3];
      if (isKindOfClass & 1) == 0 || ([*&self->mFlipMode isAnythingOverridden])
      {
        goto LABEL_52;
      }

      v28 = *&self->mFlipMode;
    }

    *&self->mFlipMode = 0;

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
    if (![(OADGradientFill *)self areStopsOverridden])
    {
      goto LABEL_10;
    }

    parent2 = [(OADProperties *)self parent];
    stops = [(OADGradientFill *)self stops];
    stops2 = [parent2 stops];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)stops removeUnnecessaryOverrides];
      v9 = objc_opt_class();
      if (v9 != objc_opt_class())
      {
        goto LABEL_9;
      }

      isMergedWithParent2 = [(objc_object *)stops isMergedWithParent];
      [(objc_object *)stops setMergedWithParent:0];
      isAnythingOverridden = [(objc_object *)stops isAnythingOverridden];
      [(objc_object *)stops setMergedWithParent:isMergedWithParent2];
      if (isAnythingOverridden)
      {
        goto LABEL_9;
      }
    }

    else if (!TCObjectEqual(stops, stops2))
    {
LABEL_9:

LABEL_10:
      if (![(OADGradientFill *)self isTileRectOverridden])
      {
        goto LABEL_18;
      }

      parent3 = [(OADProperties *)self parent];
      tileRect = [(OADGradientFill *)self tileRect];
      tileRect2 = [parent3 tileRect];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(objc_object *)tileRect removeUnnecessaryOverrides];
        v16 = objc_opt_class();
        if (v16 != objc_opt_class())
        {
          goto LABEL_17;
        }

        isMergedWithParent3 = [(objc_object *)tileRect isMergedWithParent];
        [(objc_object *)tileRect setMergedWithParent:0];
        isAnythingOverridden2 = [(objc_object *)tileRect isAnythingOverridden];
        [(objc_object *)tileRect setMergedWithParent:isMergedWithParent3];
        if (isAnythingOverridden2)
        {
          goto LABEL_17;
        }
      }

      else if (!TCObjectEqual(tileRect, tileRect2))
      {
LABEL_17:

LABEL_18:
        if ([(OADGradientFill *)self isFlipModeOverridden])
        {
          parent4 = [(OADProperties *)self parent];
          flipMode = [(OADGradientFill *)self flipMode];
          if (flipMode == [parent4 flipMode])
          {
            [(OADGradientFill *)self setFlipMode:0];
            BYTE4(self->mTileRect) = 0;
          }
        }

        if ([(OADGradientFill *)self isRotateWithShapeOverridden])
        {
          parent5 = [(OADProperties *)self parent];
          rotateWithShape = [(OADGradientFill *)self rotateWithShape];
          if (rotateWithShape == [parent5 rotateWithShape])
          {
            [(OADGradientFill *)self setRotateWithShape:1];
            BYTE6(self->mTileRect) = 0;
          }
        }

        if (![(OADGradientFill *)self isShadeOverridden])
        {
          goto LABEL_34;
        }

        parent6 = [(OADProperties *)self parent];
        shade = [(OADGradientFill *)self shade];
        shade2 = [parent6 shade];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(objc_object *)shade removeUnnecessaryOverrides];
          v27 = objc_opt_class();
          if (v27 != objc_opt_class())
          {
            goto LABEL_33;
          }

          isMergedWithParent4 = [(objc_object *)shade isMergedWithParent];
          [(objc_object *)shade setMergedWithParent:0];
          isAnythingOverridden3 = [(objc_object *)shade isAnythingOverridden];
          [(objc_object *)shade setMergedWithParent:isMergedWithParent4];
          if (isAnythingOverridden3)
          {
            goto LABEL_33;
          }
        }

        else if (!TCObjectEqual(shade, shade2))
        {
LABEL_33:

LABEL_34:
          [(OADProperties *)self setMerged:isMerged];
          [(OADProperties *)self setMergedWithParent:isMergedWithParent];
          v31.receiver = self;
          v31.super_class = OADGradientFill;
          [(OADProperties *)&v31 removeUnnecessaryOverrides];
          return;
        }

        v30 = *&self->mFlipMode;
        *&self->mFlipMode = 0;

        goto LABEL_33;
      }

      mStops = self->mStops;
      self->mStops = 0;

      goto LABEL_17;
    }

    v12 = *&self->super.mDefinedByStyle;
    *&self->super.mDefinedByStyle = 0;

    goto LABEL_9;
  }
}

- (void)setStops:(id)stops
{
  v4 = [stops copy];
  v5 = *&self->super.mDefinedByStyle;
  *&self->super.mDefinedByStyle = v4;
}

- (void)sortStops
{
  v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"position" ascending:1];
  v3 = [MEMORY[0x277CBEA60] arrayWithObject:?];
  v4 = [*&self->super.mDefinedByStyle sortedArrayUsingDescriptors:v3];
  [(OADGradientFill *)self setStops:v4];
}

- (id)tileRect
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isTileRectOverridden];
  v3 = v2[4];
  v4 = v3;

  return v3;
}

- (void)setTileRect:(id)rect
{
  rectCopy = rect;
  if (!rectCopy)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OADGradientFill setTileRect:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADFill.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:743 isFatal:0 description:"invalid nil value for '%{public}s'", "tileRect"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  mStops = self->mStops;
  self->mStops = rectCopy;
}

- (int)flipMode
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isFlipModeOverridden];
  v3 = v2[10];

  return v3;
}

- (BOOL)rotateWithShape
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isRotateWithShapeOverridden];
  v3 = v2[45];

  return v3;
}

- (void)setShade:(id)shade
{
  shadeCopy = shade;
  if (!shadeCopy)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OADGradientFill setShade:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADFill.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:782 isFatal:0 description:"invalid nil value for '%{public}s'", "shade"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v7 = *&self->mFlipMode;
  *&self->mFlipMode = shadeCopy;
}

- (id)firstStop
{
  objc_opt_class();
  stops = [(OADGradientFill *)self stops];
  firstObject = [stops firstObject];

  return firstObject;
}

- (id)lastStop
{
  objc_opt_class();
  stops = [(OADGradientFill *)self stops];
  lastObject = [stops lastObject];

  return lastObject;
}

- (BOOL)usesPlaceholderColor
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *&self->super.mDefinedByStyle;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) usesPlaceholderColor])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

+ (id)stringForTileFlipMode:(int)mode
{
  if (mode > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_2799C7CD0[mode];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = OADGradientFill;
  if ([(OADFill *)&v8 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (TCObjectEqual(*&self->super.mDefinedByStyle, v5[3]) && TCObjectEqual(self->mStops, v5[4]) && BYTE4(self->mTileRect) == *(v5 + 44) && (!BYTE4(self->mTileRect) || LODWORD(self->mTileRect) == *(v5 + 10)) && BYTE6(self->mTileRect) == *(v5 + 46) && (!BYTE6(self->mTileRect) || BYTE5(self->mTileRect) == *(v5 + 45)))
    {
      v6 = TCObjectEqual(*&self->mFlipMode, v5[6]);
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