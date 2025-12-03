@interface OADTextBodyProperties
+ (id)defaultEscherWordArtProperties;
+ (id)defaultProperties;
- (BOOL)isAnchorCenter;
- (BOOL)isEqual:(id)equal;
- (BOOL)isLeftToRightColumns;
- (BOOL)isUpright;
- (BOOL)isWarped;
- (BOOL)respectLastFirstLineSpacing;
- (OADTextBodyProperties)init;
- (OADTextBodyProperties)initWithDefaults;
- (float)bottomInset;
- (float)columnSpacing;
- (float)leftInset;
- (float)rightInset;
- (float)rotation;
- (float)topInset;
- (id)autoFit;
- (id)description;
- (id)textWarp;
- (int)columnCount;
- (unint64_t)hash;
- (unsigned)flowType;
- (unsigned)horizontalOverflowType;
- (unsigned)textAnchorType;
- (unsigned)verticalOverflowType;
- (unsigned)wrapType;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values;
- (void)removeUnnecessaryOverrides;
- (void)setIsAnchorCenter:(BOOL)center;
- (void)setIsLeftToRightColumns:(BOOL)columns;
- (void)setIsUpright:(BOOL)upright;
@end

@implementation OADTextBodyProperties

- (OADTextBodyProperties)init
{
  v3.receiver = self;
  v3.super_class = OADTextBodyProperties;
  return [(OADProperties *)&v3 init];
}

+ (id)defaultProperties
{
  if (+[OADTextBodyProperties defaultProperties]::once != -1)
  {
    +[OADTextBodyProperties defaultProperties];
  }

  v3 = +[OADTextBodyProperties defaultProperties]::defaultProperties;

  return v3;
}

- (OADTextBodyProperties)initWithDefaults
{
  v13.receiver = self;
  v13.super_class = OADTextBodyProperties;
  initWithDefaults = [(OADProperties *)&v13 initWithDefaults];
  v3 = initWithDefaults;
  if (initWithDefaults)
  {
    [(OADTextBodyProperties *)initWithDefaults setRespectLastFirstLineSpacing:1];
    LODWORD(v4) = 1080452710;
    [(OADTextBodyProperties *)v3 setTopInset:v4];
    LODWORD(v5) = 1088841318;
    [(OADTextBodyProperties *)v3 setLeftInset:v5];
    LODWORD(v6) = 1080452710;
    [(OADTextBodyProperties *)v3 setBottomInset:v6];
    LODWORD(v7) = 1088841318;
    [(OADTextBodyProperties *)v3 setRightInset:v7];
    [(OADTextBodyProperties *)v3 setColumnCount:1];
    LODWORD(v8) = 3.0;
    [(OADTextBodyProperties *)v3 setColumnSpacing:v8];
    [(OADTextBodyProperties *)v3 setIsLeftToRightColumns:1];
    v9 = [[OADTextBodyAutoFit alloc] initWithType:0];
    [(OADTextBodyProperties *)v3 setAutoFit:v9];
    [(OADTextBodyProperties *)v3 setFlowType:0];
    [(OADTextBodyProperties *)v3 setWrapType:1];
    [(OADTextBodyProperties *)v3 setVerticalOverflowType:0];
    [(OADTextBodyProperties *)v3 setHorizontalOverflowType:0];
    v10 = +[OADTextWarp nullWarp];
    [(OADTextBodyProperties *)v3 setTextWarp:v10];

    [(OADTextBodyProperties *)v3 setIsAnchorCenter:0];
    [(OADTextBodyProperties *)v3 setTextAnchorType:0];
    [(OADTextBodyProperties *)v3 setIsUpright:0];
    [(OADTextBodyProperties *)v3 setRotation:0.0];
    v11 = v3;
  }

  return v3;
}

- (void)removeUnnecessaryOverrides
{
  parent = [(OADProperties *)self parent];

  if (!parent)
  {
    return;
  }

  isMerged = [(OADProperties *)self isMerged];
  isMergedWithParent = [(OADProperties *)self isMergedWithParent];
  [(OADProperties *)self setMerged:0];
  [(OADProperties *)self setMergedWithParent:0];
  if ([(OADTextBodyProperties *)self hasRespectLastFirstLineSpacing])
  {
    parent2 = [(OADProperties *)self parent];
    respectLastFirstLineSpacing = [(OADTextBodyProperties *)self respectLastFirstLineSpacing];
    if (respectLastFirstLineSpacing == [parent2 respectLastFirstLineSpacing])
    {
      [(OADTextBodyProperties *)self setRespectLastFirstLineSpacing:0];
      *(self + 75) &= ~1u;
    }
  }

  if ([(OADTextBodyProperties *)self hasTopInset])
  {
    parent3 = [(OADProperties *)self parent];
    [(OADTextBodyProperties *)self topInset];
    v10 = v9;
    [parent3 topInset];
    if (v10 == v11)
    {
      [(OADTextBodyProperties *)self setTopInset:0.0];
      *(self + 75) &= ~2u;
    }
  }

  if ([(OADTextBodyProperties *)self hasLeftInset])
  {
    parent4 = [(OADProperties *)self parent];
    [(OADTextBodyProperties *)self leftInset];
    v14 = v13;
    [parent4 leftInset];
    if (v14 == v15)
    {
      [(OADTextBodyProperties *)self setLeftInset:0.0];
      *(self + 75) &= ~4u;
    }
  }

  if ([(OADTextBodyProperties *)self hasRightInset])
  {
    parent5 = [(OADProperties *)self parent];
    [(OADTextBodyProperties *)self rightInset];
    v18 = v17;
    [parent5 rightInset];
    if (v18 == v19)
    {
      [(OADTextBodyProperties *)self setRightInset:0.0];
      *(self + 75) &= ~8u;
    }
  }

  if ([(OADTextBodyProperties *)self hasBottomInset])
  {
    parent6 = [(OADProperties *)self parent];
    [(OADTextBodyProperties *)self bottomInset];
    v22 = v21;
    [parent6 bottomInset];
    if (v22 == v23)
    {
      [(OADTextBodyProperties *)self setBottomInset:0.0];
      *(self + 75) &= ~0x10u;
    }
  }

  if ([(OADTextBodyProperties *)self hasColumnCount])
  {
    parent7 = [(OADProperties *)self parent];
    columnCount = [(OADTextBodyProperties *)self columnCount];
    if (columnCount == [parent7 columnCount])
    {
      [(OADTextBodyProperties *)self setColumnCount:0];
      *(self + 74) &= ~0x20u;
    }
  }

  if ([(OADTextBodyProperties *)self hasColumnSpacing])
  {
    parent8 = [(OADProperties *)self parent];
    [(OADTextBodyProperties *)self columnSpacing];
    v28 = v27;
    [parent8 columnSpacing];
    if (v28 == v29)
    {
      [(OADTextBodyProperties *)self setColumnSpacing:0.0];
      *(self + 74) &= ~0x40u;
    }
  }

  if ([(OADTextBodyProperties *)self hasIsLeftToRightColumns])
  {
    parent9 = [(OADProperties *)self parent];
    isLeftToRightColumns = [(OADTextBodyProperties *)self isLeftToRightColumns];
    if (isLeftToRightColumns == [parent9 isLeftToRightColumns])
    {
      [(OADTextBodyProperties *)self setIsLeftToRightColumns:0];
      *(self + 74) &= ~0x80u;
    }
  }

  if ([(OADTextBodyProperties *)self hasAutoFit])
  {
    parent10 = [(OADProperties *)self parent];
    autoFit = [(OADTextBodyProperties *)self autoFit];
    autoFit2 = [parent10 autoFit];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)autoFit removeUnnecessaryOverrides];
      v35 = objc_opt_class();
      if (v35 != objc_opt_class())
      {
        goto LABEL_41;
      }

      isMergedWithParent2 = [(objc_object *)autoFit isMergedWithParent];
      [(objc_object *)autoFit setMergedWithParent:0];
      isAnythingOverridden = [(objc_object *)autoFit isAnythingOverridden];
      [(objc_object *)autoFit setMergedWithParent:isMergedWithParent2];
      if (isAnythingOverridden)
      {
        goto LABEL_41;
      }
    }

    else if (!TCObjectEqual(autoFit, autoFit2))
    {
LABEL_41:

      goto LABEL_42;
    }

    mAutoFit = self->mAutoFit;
    self->mAutoFit = 0;

    goto LABEL_41;
  }

LABEL_42:
  if ([(OADTextBodyProperties *)self hasFlowType])
  {
    parent11 = [(OADProperties *)self parent];
    flowType = [(OADTextBodyProperties *)self flowType];
    if (flowType == [parent11 flowType])
    {
      [(OADTextBodyProperties *)self setFlowType:0];
      *(self + 73) &= ~0x80u;
    }
  }

  if ([(OADTextBodyProperties *)self hasWrapType])
  {
    parent12 = [(OADProperties *)self parent];
    wrapType = [(OADTextBodyProperties *)self wrapType];
    if (wrapType == [parent12 wrapType])
    {
      [(OADTextBodyProperties *)self setWrapType:0];
      *(self + 74) &= ~1u;
    }
  }

  if ([(OADTextBodyProperties *)self hasVerticalOverflowType])
  {
    parent13 = [(OADProperties *)self parent];
    verticalOverflowType = [(OADTextBodyProperties *)self verticalOverflowType];
    if (verticalOverflowType == [parent13 verticalOverflowType])
    {
      [(OADTextBodyProperties *)self setVerticalOverflowType:0];
      *(self + 73) &= ~0x10u;
    }
  }

  if ([(OADTextBodyProperties *)self hasTextBodyId])
  {
    parent14 = [(OADProperties *)self parent];
    textBodyId = [(OADTextBodyProperties *)self textBodyId];
    if (textBodyId == [parent14 textBodyId])
    {
      [(OADTextBodyProperties *)self setTextBodyId:0];
      *(self + 73) &= ~0x40u;
    }
  }

  if (![(OADTextBodyProperties *)self hasTextWarp])
  {
    goto LABEL_66;
  }

  parent15 = [(OADProperties *)self parent];
  textWarp = [(OADTextBodyProperties *)self textWarp];
  textWarp2 = [parent15 textWarp];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)textWarp removeUnnecessaryOverrides];
    v50 = objc_opt_class();
    if (v50 != objc_opt_class())
    {
      goto LABEL_65;
    }

    isMergedWithParent3 = [(objc_object *)textWarp isMergedWithParent];
    [(objc_object *)textWarp setMergedWithParent:0];
    isAnythingOverridden2 = [(objc_object *)textWarp isAnythingOverridden];
    [(objc_object *)textWarp setMergedWithParent:isMergedWithParent3];
    if (isAnythingOverridden2)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if (TCObjectEqual(textWarp, textWarp2))
  {
LABEL_64:
    mTextWarp = self->mTextWarp;
    self->mTextWarp = 0;
  }

LABEL_65:

LABEL_66:
  if ([(OADTextBodyProperties *)self hasIsAnchorCenter])
  {
    parent16 = [(OADProperties *)self parent];
    isAnchorCenter = [(OADTextBodyProperties *)self isAnchorCenter];
    if (isAnchorCenter == [parent16 isAnchorCenter])
    {
      [(OADTextBodyProperties *)self setIsAnchorCenter:0];
      *(self + 74) &= ~4u;
    }
  }

  if ([(OADTextBodyProperties *)self hasTextAnchorType])
  {
    parent17 = [(OADProperties *)self parent];
    textAnchorType = [(OADTextBodyProperties *)self textAnchorType];
    if (textAnchorType == [parent17 textAnchorType])
    {
      [(OADTextBodyProperties *)self setTextAnchorType:0];
      *(self + 74) &= ~2u;
    }
  }

  if ([(OADTextBodyProperties *)self hasIsUpright])
  {
    parent18 = [(OADProperties *)self parent];
    isUpright = [(OADTextBodyProperties *)self isUpright];
    if (isUpright == [parent18 isUpright])
    {
      [(OADTextBodyProperties *)self setIsUpright:0];
      *(self + 74) &= ~8u;
    }
  }

  if ([(OADTextBodyProperties *)self hasRotation])
  {
    parent19 = [(OADProperties *)self parent];
    [(OADTextBodyProperties *)self rotation];
    v62 = v61;
    [parent19 rotation];
    if (v62 == v63)
    {
      [(OADTextBodyProperties *)self setRotation:0.0];
      *(self + 74) &= ~0x10u;
    }
  }

  [(OADProperties *)self setMerged:isMerged];
  [(OADProperties *)self setMergedWithParent:isMergedWithParent];
  v64.receiver = self;
  v64.super_class = OADTextBodyProperties;
  [(OADProperties *)&v64 removeUnnecessaryOverrides];
}

- (float)topInset
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasTopInset];
  v3 = v2[10];

  return v3;
}

- (float)leftInset
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasLeftInset];
  v3 = v2[11];

  return v3;
}

- (float)rightInset
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasRightInset];
  v3 = v2[13];

  return v3;
}

- (float)bottomInset
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasBottomInset];
  v3 = v2[12];

  return v3;
}

- (int)columnCount
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasColumnCount];
  v3 = v2[32];

  return v3;
}

- (float)columnSpacing
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasColumnSpacing];
  v3 = v2[15];

  return v3;
}

- (BOOL)isLeftToRightColumns
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasIsLeftToRightColumns];
  v3 = (v2[73] >> 3) & 1;

  return v3;
}

- (id)autoFit
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasAutoFit];
  v3 = v2[3];
  v4 = v3;

  return v3;
}

- (unsigned)flowType
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasFlowType];
  v3 = v2[69];

  return v3;
}

- (unsigned)wrapType
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasWrapType];
  v3 = v2[70];

  return v3;
}

- (unsigned)verticalOverflowType
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasVerticalOverflowType];
  v3 = v2[71];

  return v3;
}

- (BOOL)isAnchorCenter
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasIsAnchorCenter];
  v3 = (v2[73] >> 2) & 1;

  return v3;
}

- (unsigned)textAnchorType
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasTextAnchorType];
  v3 = v2[68];

  return v3;
}

- (BOOL)isUpright
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasIsUpright];
  v3 = (v2[73] >> 1) & 1;

  return v3;
}

- (float)rotation
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasRotation];
  v3 = v2[14];

  return v3;
}

+ (id)defaultEscherWordArtProperties
{
  if (+[OADTextBodyProperties defaultEscherWordArtProperties]::once != -1)
  {
    +[OADTextBodyProperties defaultEscherWordArtProperties];
  }

  v3 = +[OADTextBodyProperties defaultEscherWordArtProperties]::defaultProperties;

  return v3;
}

- (id)textWarp
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasTextWarp];
  v3 = v2[4];
  v4 = v3;

  return v3;
}

void __42__OADTextBodyProperties_defaultProperties__block_invoke()
{
  v0 = [[OADTextBodyProperties alloc] initWithDefaults];
  v1 = +[OADTextBodyProperties defaultProperties]::defaultProperties;
  +[OADTextBodyProperties defaultProperties]::defaultProperties = v0;
}

- (BOOL)respectLastFirstLineSpacing
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasRespectLastFirstLineSpacing];
  v3 = v2[73];

  return v3 & 1;
}

- (void)setIsLeftToRightColumns:(BOOL)columns
{
  if (columns)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 73) = *(self + 73) & 0xF7 | v3;
  *(self + 74) |= 0x80u;
}

- (unsigned)horizontalOverflowType
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasHorizontalOverflowType];
  v3 = v2[72];

  return v3;
}

- (BOOL)isWarped
{
  textWarp = [(OADTextBodyProperties *)self textWarp];
  v3 = +[OADTextWarp nullWarp];
  v4 = [textWarp isEqual:v3];

  return v4 ^ 1;
}

- (void)setIsAnchorCenter:(BOOL)center
{
  if (center)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 73) = *(self + 73) & 0xFB | v3;
  *(self + 74) |= 4u;
}

- (void)setIsUpright:(BOOL)upright
{
  if (upright)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 73) = *(self + 73) & 0xFD | v3;
  *(self + 74) |= 8u;
}

void __55__OADTextBodyProperties_defaultEscherWordArtProperties__block_invoke()
{
  v0 = objc_alloc_init(OADTextBodyProperties);
  v1 = +[OADTextBodyProperties defaultEscherWordArtProperties]::defaultProperties;
  +[OADTextBodyProperties defaultEscherWordArtProperties]::defaultProperties = v0;

  [+[OADTextBodyProperties defaultEscherWordArtProperties]::defaultProperties setParent:0];
  [+[OADTextBodyProperties defaultEscherWordArtProperties]::defaultProperties setRespectLastFirstLineSpacing:0];
  [+[OADTextBodyProperties defaultEscherWordArtProperties]::defaultProperties setTopInset:0.0];
  [+[OADTextBodyProperties defaultEscherWordArtProperties]::defaultProperties setLeftInset:0.0];
  [+[OADTextBodyProperties defaultEscherWordArtProperties]::defaultProperties setBottomInset:0.0];
  [+[OADTextBodyProperties defaultEscherWordArtProperties]::defaultProperties setRightInset:0.0];
  [+[OADTextBodyProperties defaultEscherWordArtProperties]::defaultProperties setColumnCount:1];
  LODWORD(v2) = 3.0;
  [+[OADTextBodyProperties defaultEscherWordArtProperties]::defaultProperties setColumnSpacing:v2];
  [+[OADTextBodyProperties defaultEscherWordArtProperties]::defaultProperties setIsLeftToRightColumns:1];
  v4 = [[OADTextBodyAutoFit alloc] initWithType:1];
  [+[OADTextBodyProperties defaultEscherWordArtProperties]::defaultProperties setAutoFit:?];
  [+[OADTextBodyProperties defaultEscherWordArtProperties]::defaultProperties setFlowType:0];
  [+[OADTextBodyProperties defaultEscherWordArtProperties]::defaultProperties setWrapType:0];
  [+[OADTextBodyProperties defaultEscherWordArtProperties]::defaultProperties setVerticalOverflowType:0];
  [+[OADTextBodyProperties defaultEscherWordArtProperties]::defaultProperties setHorizontalOverflowType:0];
  v3 = objc_alloc_init(OADPresetTextWarp);
  [(OADPresetTextWarp *)v3 setPresetTextWarpType:29];
  [+[OADTextBodyProperties defaultEscherWordArtProperties]::defaultProperties setTextWarp:v3];
  [+[OADTextBodyProperties defaultEscherWordArtProperties]::defaultProperties setIsAnchorCenter:0];
  [+[OADTextBodyProperties defaultEscherWordArtProperties]::defaultProperties setTextAnchorType:1];
  [+[OADTextBodyProperties defaultEscherWordArtProperties]::defaultProperties setIsUpright:0];
  [+[OADTextBodyProperties defaultEscherWordArtProperties]::defaultProperties setRotation:0.0];
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  v69.receiver = self;
  v69.super_class = OADTextBodyProperties;
  [(OADProperties *)&v69 fixPropertiesForChangingParentPreservingEffectiveValues:valuesCopy];
  if ([(OADTextBodyProperties *)self hasAutoFit]|| ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != valuesCopy))
  {
    v6 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasAutoFit];

    if (v6)
    {
      autoFit = [(OADTextBodyProperties *)self autoFit];
    }

    else
    {
      autoFit = 0;
    }

    v8 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasAutoFit];

    if (v8)
    {
      autoFit2 = [valuesCopy autoFit];
    }

    else
    {
      autoFit2 = 0;
    }

    v10 = TCObjectEqual(autoFit, autoFit2);
    mAutoFit = self->mAutoFit;
    if (v10)
    {
      self->mAutoFit = 0;
    }

    else if (!mAutoFit && v6)
    {
      [(OADTextBodyProperties *)self setAutoFit:autoFit];
    }
  }

  if ([(OADTextBodyProperties *)self hasTextWarp]|| ([(OADProperties *)self parent], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 != valuesCopy))
  {
    v13 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasTextWarp];

    if (v13)
    {
      textWarp = [(OADTextBodyProperties *)self textWarp];
    }

    else
    {
      textWarp = 0;
    }

    v15 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasTextWarp];

    if (v15)
    {
      textWarp2 = [valuesCopy textWarp];
    }

    else
    {
      textWarp2 = 0;
    }

    v17 = TCObjectEqual(textWarp, textWarp2);
    mTextWarp = self->mTextWarp;
    if (v17)
    {
      self->mTextWarp = 0;
    }

    else if (!mTextWarp && v13)
    {
      [(OADTextBodyProperties *)self setTextWarp:textWarp];
    }
  }

  if ((*(self + 75) & 2) != 0 || ([(OADProperties *)self parent], v19 = objc_claimAutoreleasedReturnValue(), v19, v19 != valuesCopy))
  {
    [(OADTextBodyProperties *)self topInset];
    v21 = v20;
    [valuesCopy topInset];
    if (v21 == v22)
    {
      *(self + 75) &= ~2u;
    }

    else if ((*(self + 75) & 2) == 0)
    {
      [(OADTextBodyProperties *)self topInset];
      [(OADTextBodyProperties *)self setTopInset:?];
    }
  }

  if ((*(self + 75) & 4) != 0 || ([(OADProperties *)self parent], v23 = objc_claimAutoreleasedReturnValue(), v23, v23 != valuesCopy))
  {
    [(OADTextBodyProperties *)self leftInset];
    v25 = v24;
    [valuesCopy leftInset];
    if (v25 == v26)
    {
      *(self + 75) &= ~4u;
    }

    else if ((*(self + 75) & 4) == 0)
    {
      [(OADTextBodyProperties *)self leftInset];
      [(OADTextBodyProperties *)self setLeftInset:?];
    }
  }

  if ((*(self + 75) & 0x10) != 0 || ([(OADProperties *)self parent], v27 = objc_claimAutoreleasedReturnValue(), v27, v27 != valuesCopy))
  {
    [(OADTextBodyProperties *)self bottomInset];
    v29 = v28;
    [valuesCopy bottomInset];
    if (v29 == v30)
    {
      *(self + 75) &= ~0x10u;
    }

    else if ((*(self + 75) & 0x10) == 0)
    {
      [(OADTextBodyProperties *)self bottomInset];
      [(OADTextBodyProperties *)self setBottomInset:?];
    }
  }

  if ((*(self + 75) & 8) != 0 || ([(OADProperties *)self parent], v31 = objc_claimAutoreleasedReturnValue(), v31, v31 != valuesCopy))
  {
    [(OADTextBodyProperties *)self rightInset];
    v33 = v32;
    [valuesCopy rightInset];
    if (v33 == v34)
    {
      *(self + 75) &= ~8u;
    }

    else if ((*(self + 75) & 8) == 0)
    {
      [(OADTextBodyProperties *)self rightInset];
      [(OADTextBodyProperties *)self setRightInset:?];
    }
  }

  if ((*(self + 74) & 0x10) != 0 || ([(OADProperties *)self parent], v35 = objc_claimAutoreleasedReturnValue(), v35, v35 != valuesCopy))
  {
    [(OADTextBodyProperties *)self rotation];
    v37 = v36;
    [valuesCopy rotation];
    if (v37 == v38)
    {
      *(self + 74) &= ~0x10u;
    }

    else if ((*(self + 74) & 0x10) == 0)
    {
      [(OADTextBodyProperties *)self rotation];
      [(OADTextBodyProperties *)self setRotation:?];
    }
  }

  if ((*(self + 74) & 0x40) != 0 || ([(OADProperties *)self parent], v39 = objc_claimAutoreleasedReturnValue(), v39, v39 != valuesCopy))
  {
    [(OADTextBodyProperties *)self columnSpacing];
    v41 = v40;
    [valuesCopy columnSpacing];
    if (v41 == v42)
    {
      *(self + 74) &= ~0x40u;
    }

    else if ((*(self + 74) & 0x40) == 0)
    {
      [(OADTextBodyProperties *)self columnSpacing];
      [(OADTextBodyProperties *)self setColumnSpacing:?];
    }
  }

  if ((*(self + 74) & 0x20) != 0 || ([(OADProperties *)self parent], v43 = objc_claimAutoreleasedReturnValue(), v43, v43 != valuesCopy))
  {
    columnCount = [(OADTextBodyProperties *)self columnCount];
    if (columnCount == [valuesCopy columnCount])
    {
      *(self + 74) &= ~0x20u;
    }

    else if ((*(self + 74) & 0x20) == 0)
    {
      [(OADTextBodyProperties *)self setColumnCount:[(OADTextBodyProperties *)self columnCount]];
    }
  }

  if ((*(self + 73) & 0x40) != 0 || ([(OADProperties *)self parent], v45 = objc_claimAutoreleasedReturnValue(), v45, v45 != valuesCopy))
  {
    textBodyId = [(OADTextBodyProperties *)self textBodyId];
    if (textBodyId == [valuesCopy textBodyId])
    {
      *(self + 73) &= ~0x40u;
    }

    else if ((*(self + 73) & 0x40) == 0)
    {
      [(OADTextBodyProperties *)self setTextBodyId:[(OADTextBodyProperties *)self textBodyId]];
    }
  }

  if ((*(self + 74) & 2) != 0 || ([(OADProperties *)self parent], v47 = objc_claimAutoreleasedReturnValue(), v47, v47 != valuesCopy))
  {
    textAnchorType = [(OADTextBodyProperties *)self textAnchorType];
    if (textAnchorType == [valuesCopy textAnchorType])
    {
      *(self + 74) &= ~2u;
    }

    else if ((*(self + 74) & 2) == 0)
    {
      [(OADTextBodyProperties *)self setTextAnchorType:[(OADTextBodyProperties *)self textAnchorType]];
    }
  }

  if (*(self + 73) < 0 || ([(OADProperties *)self parent], v49 = objc_claimAutoreleasedReturnValue(), v49, v49 != valuesCopy))
  {
    flowType = [(OADTextBodyProperties *)self flowType];
    flowType2 = [valuesCopy flowType];
    v52 = *(self + 73);
    if (flowType == flowType2)
    {
      *(self + 73) = v52 & 0x7F;
    }

    else if ((v52 & 0x80000000) == 0)
    {
      [(OADTextBodyProperties *)self setFlowType:[(OADTextBodyProperties *)self flowType]];
    }
  }

  if ((*(self + 74) & 1) != 0 || ([(OADProperties *)self parent], v53 = objc_claimAutoreleasedReturnValue(), v53, v53 != valuesCopy))
  {
    wrapType = [(OADTextBodyProperties *)self wrapType];
    if (wrapType == [valuesCopy wrapType])
    {
      *(self + 74) &= ~1u;
    }

    else if ((*(self + 74) & 1) == 0)
    {
      [(OADTextBodyProperties *)self setWrapType:[(OADTextBodyProperties *)self wrapType]];
    }
  }

  if ((*(self + 73) & 0x10) != 0 || ([(OADProperties *)self parent], v55 = objc_claimAutoreleasedReturnValue(), v55, v55 != valuesCopy))
  {
    verticalOverflowType = [(OADTextBodyProperties *)self verticalOverflowType];
    if (verticalOverflowType == [valuesCopy verticalOverflowType])
    {
      *(self + 73) &= ~0x10u;
    }

    else if ((*(self + 73) & 0x10) == 0)
    {
      [(OADTextBodyProperties *)self setVerticalOverflowType:[(OADTextBodyProperties *)self verticalOverflowType]];
    }
  }

  if ((*(self + 73) & 0x20) != 0 || ([(OADProperties *)self parent], v57 = objc_claimAutoreleasedReturnValue(), v57, v57 != valuesCopy))
  {
    horizontalOverflowType = [(OADTextBodyProperties *)self horizontalOverflowType];
    if (horizontalOverflowType == [valuesCopy horizontalOverflowType])
    {
      *(self + 73) &= ~0x20u;
    }

    else if ((*(self + 73) & 0x20) == 0)
    {
      [(OADTextBodyProperties *)self setHorizontalOverflowType:[(OADTextBodyProperties *)self horizontalOverflowType]];
    }
  }

  if ((*(self + 75) & 1) != 0 || ([(OADProperties *)self parent], v59 = objc_claimAutoreleasedReturnValue(), v59, v59 != valuesCopy))
  {
    respectLastFirstLineSpacing = [(OADTextBodyProperties *)self respectLastFirstLineSpacing];
    if (respectLastFirstLineSpacing == [valuesCopy respectLastFirstLineSpacing])
    {
      *(self + 75) &= ~1u;
    }

    else if ((*(self + 75) & 1) == 0)
    {
      [(OADTextBodyProperties *)self setRespectLastFirstLineSpacing:[(OADTextBodyProperties *)self respectLastFirstLineSpacing]];
    }
  }

  if ((*(self + 74) & 8) != 0 || ([(OADProperties *)self parent], v61 = objc_claimAutoreleasedReturnValue(), v61, v61 != valuesCopy))
  {
    isUpright = [(OADTextBodyProperties *)self isUpright];
    if (isUpright == [valuesCopy isUpright])
    {
      *(self + 74) &= ~8u;
    }

    else if ((*(self + 74) & 8) == 0)
    {
      [(OADTextBodyProperties *)self setIsUpright:[(OADTextBodyProperties *)self isUpright]];
    }
  }

  if ((*(self + 74) & 4) != 0 || ([(OADProperties *)self parent], v63 = objc_claimAutoreleasedReturnValue(), v63, v63 != valuesCopy))
  {
    isAnchorCenter = [(OADTextBodyProperties *)self isAnchorCenter];
    if (isAnchorCenter == [valuesCopy isAnchorCenter])
    {
      *(self + 74) &= ~4u;
    }

    else if ((*(self + 74) & 4) == 0)
    {
      [(OADTextBodyProperties *)self setIsAnchorCenter:[(OADTextBodyProperties *)self isAnchorCenter]];
    }
  }

  if (*(self + 74) < 0 || ([(OADProperties *)self parent], v65 = objc_claimAutoreleasedReturnValue(), v65, v65 != valuesCopy))
  {
    isLeftToRightColumns = [(OADTextBodyProperties *)self isLeftToRightColumns];
    isLeftToRightColumns2 = [valuesCopy isLeftToRightColumns];
    v68 = *(self + 74);
    if (isLeftToRightColumns == isLeftToRightColumns2)
    {
      *(self + 74) = v68 & 0x7F;
    }

    else if ((v68 & 0x80000000) == 0)
    {
      [(OADTextBodyProperties *)self setIsLeftToRightColumns:[(OADTextBodyProperties *)self isLeftToRightColumns]];
    }
  }
}

- (unint64_t)hash
{
  v15 = [(OADTextBodyAutoFit *)self->mAutoFit hash];
  v3 = [(OADTextWarp *)self->mTextWarp hash];
  mTopInset = self->mTopInset;
  mLeftInset = self->mLeftInset;
  mBottomInset = self->mBottomInset;
  mRightInset = self->mRightInset;
  mRotation = self->mRotation;
  mColumnSpacing = self->mColumnSpacing;
  mColumnCount = self->mColumnCount;
  mTextBodyId = self->mTextBodyId;
  v11 = (self->mFlowType ^ self->mTextAnchorType ^ self->mWrapType ^ self->mVerticalOverflowType ^ self->mHorizontalOverflowType);
  v12 = ((*(self + 73) ^ (*(self + 73) >> 1) ^ (*(self + 73) >> 2)) ^ (*(self + 73) >> 3)) & 1;
  v16.receiver = self;
  v16.super_class = OADTextBodyProperties;
  return v3 ^ v15 ^ mTopInset ^ mLeftInset ^ mBottomInset ^ mRightInset ^ mRotation ^ mColumnSpacing ^ mColumnCount ^ mTextBodyId ^ v11 ^ v12 ^ [(OADProperties *)&v16 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = [(OADTextBodyProperties *)self hash];
    if (v6 == [v5 hash]
      && (v7 = [v5 hasRespectLastFirstLineSpacing], v7 == -[OADTextBodyProperties hasRespectLastFirstLineSpacing](self, "hasRespectLastFirstLineSpacing"))
      && (![v5 hasRespectLastFirstLineSpacing] || (v8 = objc_msgSend(v5, "respectLastFirstLineSpacing"), v8 == -[OADTextBodyProperties respectLastFirstLineSpacing](self, "respectLastFirstLineSpacing")))
      && (v9 = [v5 hasTopInset], v9 == -[OADTextBodyProperties hasTopInset](self, "hasTopInset"))
      && (![v5 hasTopInset] || (objc_msgSend(v5, "topInset"), v11 = v10, -[OADTextBodyProperties topInset](self, "topInset"), v11 == v12))
      && (v13 = [v5 hasLeftInset], v13 == -[OADTextBodyProperties hasLeftInset](self, "hasLeftInset"))
      && (![v5 hasLeftInset] || (objc_msgSend(v5, "leftInset"), v15 = v14, -[OADTextBodyProperties leftInset](self, "leftInset"), v15 == v16))
      && (v17 = [v5 hasBottomInset], v17 == -[OADTextBodyProperties hasBottomInset](self, "hasBottomInset"))
      && (![v5 hasBottomInset] || (objc_msgSend(v5, "leftInset"), v19 = v18, -[OADTextBodyProperties leftInset](self, "leftInset"), v19 == v20))
      && (v21 = [v5 hasRightInset], v21 == -[OADTextBodyProperties hasRightInset](self, "hasRightInset"))
      && (![v5 hasRightInset] || (objc_msgSend(v5, "rightInset"), v23 = v22, -[OADTextBodyProperties rightInset](self, "rightInset"), v23 == v24))
      && (v25 = [v5 hasColumnCount], v25 == -[OADTextBodyProperties hasColumnCount](self, "hasColumnCount"))
      && (![v5 hasColumnCount] || (v26 = objc_msgSend(v5, "columnCount"), v26 == -[OADTextBodyProperties columnCount](self, "columnCount")))
      && (v27 = [v5 hasColumnSpacing], v27 == -[OADTextBodyProperties hasColumnSpacing](self, "hasColumnSpacing"))
      && (![v5 hasColumnSpacing] || (objc_msgSend(v5, "columnSpacing"), v29 = v28, -[OADTextBodyProperties columnSpacing](self, "columnSpacing"), v29 == v30))
      && (v31 = [v5 hasIsLeftToRightColumns], v31 == -[OADTextBodyProperties hasIsLeftToRightColumns](self, "hasIsLeftToRightColumns"))
      && (![v5 hasIsLeftToRightColumns] || (v32 = objc_msgSend(v5, "isLeftToRightColumns"), v32 == -[OADTextBodyProperties isLeftToRightColumns](self, "isLeftToRightColumns")))
      && (v33 = [v5 hasAutoFit], v33 == -[OADTextBodyProperties hasAutoFit](self, "hasAutoFit"))
      && (![v5 hasAutoFit] || (objc_msgSend(v5, "autoFit"), v34 = objc_claimAutoreleasedReturnValue(), -[OADTextBodyProperties autoFit](self, "autoFit"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v34, "isEqual:", v35), v35, v34, (v36 & 1) != 0))
      && (v37 = [v5 hasFlowType], v37 == -[OADTextBodyProperties hasFlowType](self, "hasFlowType"))
      && (![v5 hasFlowType] || (v38 = objc_msgSend(v5, "flowType"), v38 == -[OADTextBodyProperties flowType](self, "flowType")))
      && (v39 = [v5 hasWrapType], v39 == -[OADTextBodyProperties hasWrapType](self, "hasWrapType"))
      && (![v5 hasWrapType] || (v40 = objc_msgSend(v5, "wrapType"), v40 == -[OADTextBodyProperties wrapType](self, "wrapType")))
      && (v41 = [v5 hasVerticalOverflowType], v41 == -[OADTextBodyProperties hasVerticalOverflowType](self, "hasVerticalOverflowType"))
      && (![v5 hasVerticalOverflowType] || (v42 = objc_msgSend(v5, "verticalOverflowType"), v42 == -[OADTextBodyProperties verticalOverflowType](self, "verticalOverflowType")))
      && (v43 = [v5 hasHorizontalOverflowType], v43 == -[OADTextBodyProperties hasHorizontalOverflowType](self, "hasHorizontalOverflowType"))
      && (![v5 hasHorizontalOverflowType] || (v44 = objc_msgSend(v5, "horizontalOverflowType"), v44 == -[OADTextBodyProperties horizontalOverflowType](self, "horizontalOverflowType")))
      && (v45 = [v5 hasTextBodyId], v45 == -[OADTextBodyProperties hasTextBodyId](self, "hasTextBodyId"))
      && (![v5 hasTextBodyId] || (v46 = objc_msgSend(v5, "textBodyId"), v46 == -[OADTextBodyProperties textBodyId](self, "textBodyId")))
      && (v47 = [v5 hasTextWarp], v47 == -[OADTextBodyProperties hasTextWarp](self, "hasTextWarp"))
      && (![v5 hasTextWarp] || (objc_msgSend(v5, "textWarp"), v48 = objc_claimAutoreleasedReturnValue(), -[OADTextBodyProperties textWarp](self, "textWarp"), v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v48, "isEqual:", v49), v49, v48, (v50 & 1) != 0))
      && (v51 = [v5 hasIsAnchorCenter], v51 == -[OADTextBodyProperties hasIsAnchorCenter](self, "hasIsAnchorCenter"))
      && (![v5 hasIsAnchorCenter] || (v52 = objc_msgSend(v5, "isAnchorCenter"), v52 == -[OADTextBodyProperties isAnchorCenter](self, "isAnchorCenter")))
      && (v53 = [v5 hasTextAnchorType], v53 == -[OADTextBodyProperties hasTextAnchorType](self, "hasTextAnchorType"))
      && (![v5 hasTextAnchorType] || (v54 = objc_msgSend(v5, "textAnchorType"), v54 == -[OADTextBodyProperties textAnchorType](self, "textAnchorType")))
      && (v55 = [v5 hasIsUpright], v55 == -[OADTextBodyProperties hasIsUpright](self, "hasIsUpright"))
      && (![v5 hasIsUpright] || (v56 = objc_msgSend(v5, "isUpright"), v56 == -[OADTextBodyProperties isUpright](self, "isUpright")))
      && (v57 = [v5 hasRotation], v57 == -[OADTextBodyProperties hasRotation](self, "hasRotation"))
      && (![v5 hasRotation] || (objc_msgSend(v5, "rotation"), v59 = v58, -[OADTextBodyProperties rotation](self, "rotation"), v59 == v60)))
    {
      v63.receiver = self;
      v63.super_class = OADTextBodyProperties;
      v61 = [(OADProperties *)&v63 isEqual:v5];
    }

    else
    {
      v61 = 0;
    }
  }

  else
  {
    v61 = 0;
  }

  return v61;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADTextBodyProperties;
  v2 = [(OADProperties *)&v4 description];

  return v2;
}

@end