@interface OADTextBodyProperties
+ (id)defaultEscherWordArtProperties;
+ (id)defaultProperties;
- (BOOL)isAnchorCenter;
- (BOOL)isEqual:(id)a3;
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
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3;
- (void)removeUnnecessaryOverrides;
- (void)setIsAnchorCenter:(BOOL)a3;
- (void)setIsLeftToRightColumns:(BOOL)a3;
- (void)setIsUpright:(BOOL)a3;
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
  v2 = [(OADProperties *)&v13 initWithDefaults];
  v3 = v2;
  if (v2)
  {
    [(OADTextBodyProperties *)v2 setRespectLastFirstLineSpacing:1];
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
  v3 = [(OADProperties *)self parent];

  if (!v3)
  {
    return;
  }

  v4 = [(OADProperties *)self isMerged];
  v5 = [(OADProperties *)self isMergedWithParent];
  [(OADProperties *)self setMerged:0];
  [(OADProperties *)self setMergedWithParent:0];
  if ([(OADTextBodyProperties *)self hasRespectLastFirstLineSpacing])
  {
    v6 = [(OADProperties *)self parent];
    v7 = [(OADTextBodyProperties *)self respectLastFirstLineSpacing];
    if (v7 == [v6 respectLastFirstLineSpacing])
    {
      [(OADTextBodyProperties *)self setRespectLastFirstLineSpacing:0];
      *(self + 75) &= ~1u;
    }
  }

  if ([(OADTextBodyProperties *)self hasTopInset])
  {
    v8 = [(OADProperties *)self parent];
    [(OADTextBodyProperties *)self topInset];
    v10 = v9;
    [v8 topInset];
    if (v10 == v11)
    {
      [(OADTextBodyProperties *)self setTopInset:0.0];
      *(self + 75) &= ~2u;
    }
  }

  if ([(OADTextBodyProperties *)self hasLeftInset])
  {
    v12 = [(OADProperties *)self parent];
    [(OADTextBodyProperties *)self leftInset];
    v14 = v13;
    [v12 leftInset];
    if (v14 == v15)
    {
      [(OADTextBodyProperties *)self setLeftInset:0.0];
      *(self + 75) &= ~4u;
    }
  }

  if ([(OADTextBodyProperties *)self hasRightInset])
  {
    v16 = [(OADProperties *)self parent];
    [(OADTextBodyProperties *)self rightInset];
    v18 = v17;
    [v16 rightInset];
    if (v18 == v19)
    {
      [(OADTextBodyProperties *)self setRightInset:0.0];
      *(self + 75) &= ~8u;
    }
  }

  if ([(OADTextBodyProperties *)self hasBottomInset])
  {
    v20 = [(OADProperties *)self parent];
    [(OADTextBodyProperties *)self bottomInset];
    v22 = v21;
    [v20 bottomInset];
    if (v22 == v23)
    {
      [(OADTextBodyProperties *)self setBottomInset:0.0];
      *(self + 75) &= ~0x10u;
    }
  }

  if ([(OADTextBodyProperties *)self hasColumnCount])
  {
    v24 = [(OADProperties *)self parent];
    v25 = [(OADTextBodyProperties *)self columnCount];
    if (v25 == [v24 columnCount])
    {
      [(OADTextBodyProperties *)self setColumnCount:0];
      *(self + 74) &= ~0x20u;
    }
  }

  if ([(OADTextBodyProperties *)self hasColumnSpacing])
  {
    v26 = [(OADProperties *)self parent];
    [(OADTextBodyProperties *)self columnSpacing];
    v28 = v27;
    [v26 columnSpacing];
    if (v28 == v29)
    {
      [(OADTextBodyProperties *)self setColumnSpacing:0.0];
      *(self + 74) &= ~0x40u;
    }
  }

  if ([(OADTextBodyProperties *)self hasIsLeftToRightColumns])
  {
    v30 = [(OADProperties *)self parent];
    v31 = [(OADTextBodyProperties *)self isLeftToRightColumns];
    if (v31 == [v30 isLeftToRightColumns])
    {
      [(OADTextBodyProperties *)self setIsLeftToRightColumns:0];
      *(self + 74) &= ~0x80u;
    }
  }

  if ([(OADTextBodyProperties *)self hasAutoFit])
  {
    v32 = [(OADProperties *)self parent];
    v33 = [(OADTextBodyProperties *)self autoFit];
    v34 = [v32 autoFit];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)v33 removeUnnecessaryOverrides];
      v35 = objc_opt_class();
      if (v35 != objc_opt_class())
      {
        goto LABEL_41;
      }

      v36 = [(objc_object *)v33 isMergedWithParent];
      [(objc_object *)v33 setMergedWithParent:0];
      v37 = [(objc_object *)v33 isAnythingOverridden];
      [(objc_object *)v33 setMergedWithParent:v36];
      if (v37)
      {
        goto LABEL_41;
      }
    }

    else if (!TCObjectEqual(v33, v34))
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
    v39 = [(OADProperties *)self parent];
    v40 = [(OADTextBodyProperties *)self flowType];
    if (v40 == [v39 flowType])
    {
      [(OADTextBodyProperties *)self setFlowType:0];
      *(self + 73) &= ~0x80u;
    }
  }

  if ([(OADTextBodyProperties *)self hasWrapType])
  {
    v41 = [(OADProperties *)self parent];
    v42 = [(OADTextBodyProperties *)self wrapType];
    if (v42 == [v41 wrapType])
    {
      [(OADTextBodyProperties *)self setWrapType:0];
      *(self + 74) &= ~1u;
    }
  }

  if ([(OADTextBodyProperties *)self hasVerticalOverflowType])
  {
    v43 = [(OADProperties *)self parent];
    v44 = [(OADTextBodyProperties *)self verticalOverflowType];
    if (v44 == [v43 verticalOverflowType])
    {
      [(OADTextBodyProperties *)self setVerticalOverflowType:0];
      *(self + 73) &= ~0x10u;
    }
  }

  if ([(OADTextBodyProperties *)self hasTextBodyId])
  {
    v45 = [(OADProperties *)self parent];
    v46 = [(OADTextBodyProperties *)self textBodyId];
    if (v46 == [v45 textBodyId])
    {
      [(OADTextBodyProperties *)self setTextBodyId:0];
      *(self + 73) &= ~0x40u;
    }
  }

  if (![(OADTextBodyProperties *)self hasTextWarp])
  {
    goto LABEL_66;
  }

  v47 = [(OADProperties *)self parent];
  v48 = [(OADTextBodyProperties *)self textWarp];
  v49 = [v47 textWarp];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)v48 removeUnnecessaryOverrides];
    v50 = objc_opt_class();
    if (v50 != objc_opt_class())
    {
      goto LABEL_65;
    }

    v51 = [(objc_object *)v48 isMergedWithParent];
    [(objc_object *)v48 setMergedWithParent:0];
    v52 = [(objc_object *)v48 isAnythingOverridden];
    [(objc_object *)v48 setMergedWithParent:v51];
    if (v52)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if (TCObjectEqual(v48, v49))
  {
LABEL_64:
    mTextWarp = self->mTextWarp;
    self->mTextWarp = 0;
  }

LABEL_65:

LABEL_66:
  if ([(OADTextBodyProperties *)self hasIsAnchorCenter])
  {
    v54 = [(OADProperties *)self parent];
    v55 = [(OADTextBodyProperties *)self isAnchorCenter];
    if (v55 == [v54 isAnchorCenter])
    {
      [(OADTextBodyProperties *)self setIsAnchorCenter:0];
      *(self + 74) &= ~4u;
    }
  }

  if ([(OADTextBodyProperties *)self hasTextAnchorType])
  {
    v56 = [(OADProperties *)self parent];
    v57 = [(OADTextBodyProperties *)self textAnchorType];
    if (v57 == [v56 textAnchorType])
    {
      [(OADTextBodyProperties *)self setTextAnchorType:0];
      *(self + 74) &= ~2u;
    }
  }

  if ([(OADTextBodyProperties *)self hasIsUpright])
  {
    v58 = [(OADProperties *)self parent];
    v59 = [(OADTextBodyProperties *)self isUpright];
    if (v59 == [v58 isUpright])
    {
      [(OADTextBodyProperties *)self setIsUpright:0];
      *(self + 74) &= ~8u;
    }
  }

  if ([(OADTextBodyProperties *)self hasRotation])
  {
    v60 = [(OADProperties *)self parent];
    [(OADTextBodyProperties *)self rotation];
    v62 = v61;
    [v60 rotation];
    if (v62 == v63)
    {
      [(OADTextBodyProperties *)self setRotation:0.0];
      *(self + 74) &= ~0x10u;
    }
  }

  [(OADProperties *)self setMerged:v4];
  [(OADProperties *)self setMergedWithParent:v5];
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

- (void)setIsLeftToRightColumns:(BOOL)a3
{
  if (a3)
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
  v2 = [(OADTextBodyProperties *)self textWarp];
  v3 = +[OADTextWarp nullWarp];
  v4 = [v2 isEqual:v3];

  return v4 ^ 1;
}

- (void)setIsAnchorCenter:(BOOL)a3
{
  if (a3)
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

- (void)setIsUpright:(BOOL)a3
{
  if (a3)
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

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3
{
  v4 = a3;
  v69.receiver = self;
  v69.super_class = OADTextBodyProperties;
  [(OADProperties *)&v69 fixPropertiesForChangingParentPreservingEffectiveValues:v4];
  if ([(OADTextBodyProperties *)self hasAutoFit]|| ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != v4))
  {
    v6 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasAutoFit];

    if (v6)
    {
      v7 = [(OADTextBodyProperties *)self autoFit];
    }

    else
    {
      v7 = 0;
    }

    v8 = [v4 possiblyInexistentOverrideForSelector:sel_hasAutoFit];

    if (v8)
    {
      v9 = [v4 autoFit];
    }

    else
    {
      v9 = 0;
    }

    v10 = TCObjectEqual(v7, v9);
    mAutoFit = self->mAutoFit;
    if (v10)
    {
      self->mAutoFit = 0;
    }

    else if (!mAutoFit && v6)
    {
      [(OADTextBodyProperties *)self setAutoFit:v7];
    }
  }

  if ([(OADTextBodyProperties *)self hasTextWarp]|| ([(OADProperties *)self parent], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 != v4))
  {
    v13 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasTextWarp];

    if (v13)
    {
      v14 = [(OADTextBodyProperties *)self textWarp];
    }

    else
    {
      v14 = 0;
    }

    v15 = [v4 possiblyInexistentOverrideForSelector:sel_hasTextWarp];

    if (v15)
    {
      v16 = [v4 textWarp];
    }

    else
    {
      v16 = 0;
    }

    v17 = TCObjectEqual(v14, v16);
    mTextWarp = self->mTextWarp;
    if (v17)
    {
      self->mTextWarp = 0;
    }

    else if (!mTextWarp && v13)
    {
      [(OADTextBodyProperties *)self setTextWarp:v14];
    }
  }

  if ((*(self + 75) & 2) != 0 || ([(OADProperties *)self parent], v19 = objc_claimAutoreleasedReturnValue(), v19, v19 != v4))
  {
    [(OADTextBodyProperties *)self topInset];
    v21 = v20;
    [v4 topInset];
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

  if ((*(self + 75) & 4) != 0 || ([(OADProperties *)self parent], v23 = objc_claimAutoreleasedReturnValue(), v23, v23 != v4))
  {
    [(OADTextBodyProperties *)self leftInset];
    v25 = v24;
    [v4 leftInset];
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

  if ((*(self + 75) & 0x10) != 0 || ([(OADProperties *)self parent], v27 = objc_claimAutoreleasedReturnValue(), v27, v27 != v4))
  {
    [(OADTextBodyProperties *)self bottomInset];
    v29 = v28;
    [v4 bottomInset];
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

  if ((*(self + 75) & 8) != 0 || ([(OADProperties *)self parent], v31 = objc_claimAutoreleasedReturnValue(), v31, v31 != v4))
  {
    [(OADTextBodyProperties *)self rightInset];
    v33 = v32;
    [v4 rightInset];
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

  if ((*(self + 74) & 0x10) != 0 || ([(OADProperties *)self parent], v35 = objc_claimAutoreleasedReturnValue(), v35, v35 != v4))
  {
    [(OADTextBodyProperties *)self rotation];
    v37 = v36;
    [v4 rotation];
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

  if ((*(self + 74) & 0x40) != 0 || ([(OADProperties *)self parent], v39 = objc_claimAutoreleasedReturnValue(), v39, v39 != v4))
  {
    [(OADTextBodyProperties *)self columnSpacing];
    v41 = v40;
    [v4 columnSpacing];
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

  if ((*(self + 74) & 0x20) != 0 || ([(OADProperties *)self parent], v43 = objc_claimAutoreleasedReturnValue(), v43, v43 != v4))
  {
    v44 = [(OADTextBodyProperties *)self columnCount];
    if (v44 == [v4 columnCount])
    {
      *(self + 74) &= ~0x20u;
    }

    else if ((*(self + 74) & 0x20) == 0)
    {
      [(OADTextBodyProperties *)self setColumnCount:[(OADTextBodyProperties *)self columnCount]];
    }
  }

  if ((*(self + 73) & 0x40) != 0 || ([(OADProperties *)self parent], v45 = objc_claimAutoreleasedReturnValue(), v45, v45 != v4))
  {
    v46 = [(OADTextBodyProperties *)self textBodyId];
    if (v46 == [v4 textBodyId])
    {
      *(self + 73) &= ~0x40u;
    }

    else if ((*(self + 73) & 0x40) == 0)
    {
      [(OADTextBodyProperties *)self setTextBodyId:[(OADTextBodyProperties *)self textBodyId]];
    }
  }

  if ((*(self + 74) & 2) != 0 || ([(OADProperties *)self parent], v47 = objc_claimAutoreleasedReturnValue(), v47, v47 != v4))
  {
    v48 = [(OADTextBodyProperties *)self textAnchorType];
    if (v48 == [v4 textAnchorType])
    {
      *(self + 74) &= ~2u;
    }

    else if ((*(self + 74) & 2) == 0)
    {
      [(OADTextBodyProperties *)self setTextAnchorType:[(OADTextBodyProperties *)self textAnchorType]];
    }
  }

  if (*(self + 73) < 0 || ([(OADProperties *)self parent], v49 = objc_claimAutoreleasedReturnValue(), v49, v49 != v4))
  {
    v50 = [(OADTextBodyProperties *)self flowType];
    v51 = [v4 flowType];
    v52 = *(self + 73);
    if (v50 == v51)
    {
      *(self + 73) = v52 & 0x7F;
    }

    else if ((v52 & 0x80000000) == 0)
    {
      [(OADTextBodyProperties *)self setFlowType:[(OADTextBodyProperties *)self flowType]];
    }
  }

  if ((*(self + 74) & 1) != 0 || ([(OADProperties *)self parent], v53 = objc_claimAutoreleasedReturnValue(), v53, v53 != v4))
  {
    v54 = [(OADTextBodyProperties *)self wrapType];
    if (v54 == [v4 wrapType])
    {
      *(self + 74) &= ~1u;
    }

    else if ((*(self + 74) & 1) == 0)
    {
      [(OADTextBodyProperties *)self setWrapType:[(OADTextBodyProperties *)self wrapType]];
    }
  }

  if ((*(self + 73) & 0x10) != 0 || ([(OADProperties *)self parent], v55 = objc_claimAutoreleasedReturnValue(), v55, v55 != v4))
  {
    v56 = [(OADTextBodyProperties *)self verticalOverflowType];
    if (v56 == [v4 verticalOverflowType])
    {
      *(self + 73) &= ~0x10u;
    }

    else if ((*(self + 73) & 0x10) == 0)
    {
      [(OADTextBodyProperties *)self setVerticalOverflowType:[(OADTextBodyProperties *)self verticalOverflowType]];
    }
  }

  if ((*(self + 73) & 0x20) != 0 || ([(OADProperties *)self parent], v57 = objc_claimAutoreleasedReturnValue(), v57, v57 != v4))
  {
    v58 = [(OADTextBodyProperties *)self horizontalOverflowType];
    if (v58 == [v4 horizontalOverflowType])
    {
      *(self + 73) &= ~0x20u;
    }

    else if ((*(self + 73) & 0x20) == 0)
    {
      [(OADTextBodyProperties *)self setHorizontalOverflowType:[(OADTextBodyProperties *)self horizontalOverflowType]];
    }
  }

  if ((*(self + 75) & 1) != 0 || ([(OADProperties *)self parent], v59 = objc_claimAutoreleasedReturnValue(), v59, v59 != v4))
  {
    v60 = [(OADTextBodyProperties *)self respectLastFirstLineSpacing];
    if (v60 == [v4 respectLastFirstLineSpacing])
    {
      *(self + 75) &= ~1u;
    }

    else if ((*(self + 75) & 1) == 0)
    {
      [(OADTextBodyProperties *)self setRespectLastFirstLineSpacing:[(OADTextBodyProperties *)self respectLastFirstLineSpacing]];
    }
  }

  if ((*(self + 74) & 8) != 0 || ([(OADProperties *)self parent], v61 = objc_claimAutoreleasedReturnValue(), v61, v61 != v4))
  {
    v62 = [(OADTextBodyProperties *)self isUpright];
    if (v62 == [v4 isUpright])
    {
      *(self + 74) &= ~8u;
    }

    else if ((*(self + 74) & 8) == 0)
    {
      [(OADTextBodyProperties *)self setIsUpright:[(OADTextBodyProperties *)self isUpright]];
    }
  }

  if ((*(self + 74) & 4) != 0 || ([(OADProperties *)self parent], v63 = objc_claimAutoreleasedReturnValue(), v63, v63 != v4))
  {
    v64 = [(OADTextBodyProperties *)self isAnchorCenter];
    if (v64 == [v4 isAnchorCenter])
    {
      *(self + 74) &= ~4u;
    }

    else if ((*(self + 74) & 4) == 0)
    {
      [(OADTextBodyProperties *)self setIsAnchorCenter:[(OADTextBodyProperties *)self isAnchorCenter]];
    }
  }

  if (*(self + 74) < 0 || ([(OADProperties *)self parent], v65 = objc_claimAutoreleasedReturnValue(), v65, v65 != v4))
  {
    v66 = [(OADTextBodyProperties *)self isLeftToRightColumns];
    v67 = [v4 isLeftToRightColumns];
    v68 = *(self + 74);
    if (v66 == v67)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
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