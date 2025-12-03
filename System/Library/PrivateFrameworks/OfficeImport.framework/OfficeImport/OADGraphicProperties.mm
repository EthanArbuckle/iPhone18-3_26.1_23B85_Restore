@interface OADGraphicProperties
- (BOOL)hasNonEmptyFill;
- (BOOL)isBehindText;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (OADGraphicProperties)initWithDefaults;
- (id)effects;
- (id)exts;
- (id)fill;
- (id)scene3D;
- (id)shape3D;
- (id)stroke;
- (unint64_t)hash;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values;
- (void)removeUnnecessaryOverrides;
- (void)setIsBehindText:(BOOL)text;
- (void)setParent:(id)parent;
@end

@implementation OADGraphicProperties

- (OADGraphicProperties)initWithDefaults
{
  v10.receiver = self;
  v10.super_class = OADGraphicProperties;
  initWithDefaults = [(OADDrawableProperties *)&v10 initWithDefaults];
  if (initWithDefaults)
  {
    v3 = +[OADNullFill nullFill];
    [(OADGraphicProperties *)initWithDefaults setFill:v3];

    array = [MEMORY[0x277CBEA60] array];
    [(OADGraphicProperties *)initWithDefaults setEffects:array];

    array2 = [MEMORY[0x277CBEA60] array];
    [(OADGraphicProperties *)initWithDefaults setExts:array2];

    v6 = +[OADStroke nullStroke];
    [(OADGraphicProperties *)initWithDefaults setStroke:v6];

    v7 = +[OADScene3D nullScene3D];
    [(OADGraphicProperties *)initWithDefaults setScene3D:v7];

    v8 = +[OADShape3D nullShape3D];
    [(OADGraphicProperties *)initWithDefaults setShape3D:v8];

    [(OADGraphicProperties *)initWithDefaults setIsBehindText:0];
  }

  return initWithDefaults;
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
  if ([(OADGraphicProperties *)self hasFill])
  {
    parent2 = [(OADProperties *)self parent];
    fill = [(OADGraphicProperties *)self fill];
    fill2 = [parent2 fill];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)fill removeUnnecessaryOverrides];
      v9 = objc_opt_class();
      if (v9 != objc_opt_class())
      {
        goto LABEL_9;
      }

      isMergedWithParent2 = [(objc_object *)fill isMergedWithParent];
      [(objc_object *)fill setMergedWithParent:0];
      isAnythingOverridden = [(objc_object *)fill isAnythingOverridden];
      [(objc_object *)fill setMergedWithParent:isMergedWithParent2];
      if (isAnythingOverridden)
      {
        goto LABEL_9;
      }
    }

    else if (!TCObjectEqual(fill, fill2))
    {
LABEL_9:

      goto LABEL_10;
    }

    mFill = self->mFill;
    self->mFill = 0;

    goto LABEL_9;
  }

LABEL_10:
  if (![(OADGraphicProperties *)self hasEffects])
  {
    goto LABEL_18;
  }

  parent3 = [(OADProperties *)self parent];
  effects = [(OADGraphicProperties *)self effects];
  effects2 = [parent3 effects];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)effects removeUnnecessaryOverrides];
    v16 = objc_opt_class();
    if (v16 != objc_opt_class())
    {
      goto LABEL_17;
    }

    isMergedWithParent3 = [(objc_object *)effects isMergedWithParent];
    [(objc_object *)effects setMergedWithParent:0];
    isAnythingOverridden2 = [(objc_object *)effects isAnythingOverridden];
    [(objc_object *)effects setMergedWithParent:isMergedWithParent3];
    if (isAnythingOverridden2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (TCObjectEqual(effects, effects2))
  {
LABEL_16:
    mEffects = self->mEffects;
    self->mEffects = 0;
  }

LABEL_17:

LABEL_18:
  if (![(OADGraphicProperties *)self hasExts])
  {
    goto LABEL_26;
  }

  parent4 = [(OADProperties *)self parent];
  exts = [(OADGraphicProperties *)self exts];
  exts2 = [parent4 exts];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)exts removeUnnecessaryOverrides];
    v23 = objc_opt_class();
    if (v23 != objc_opt_class())
    {
      goto LABEL_25;
    }

    isMergedWithParent4 = [(objc_object *)exts isMergedWithParent];
    [(objc_object *)exts setMergedWithParent:0];
    isAnythingOverridden3 = [(objc_object *)exts isAnythingOverridden];
    [(objc_object *)exts setMergedWithParent:isMergedWithParent4];
    if (isAnythingOverridden3)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (TCObjectEqual(exts, exts2))
  {
LABEL_24:
    mExts = self->mExts;
    self->mExts = 0;
  }

LABEL_25:

LABEL_26:
  if (![(OADGraphicProperties *)self hasScene3D])
  {
    goto LABEL_34;
  }

  parent5 = [(OADProperties *)self parent];
  scene3D = [(OADGraphicProperties *)self scene3D];
  scene3D2 = [parent5 scene3D];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)scene3D removeUnnecessaryOverrides];
    v30 = objc_opt_class();
    if (v30 != objc_opt_class())
    {
      goto LABEL_33;
    }

    isMergedWithParent5 = [(objc_object *)scene3D isMergedWithParent];
    [(objc_object *)scene3D setMergedWithParent:0];
    isAnythingOverridden4 = [(objc_object *)scene3D isAnythingOverridden];
    [(objc_object *)scene3D setMergedWithParent:isMergedWithParent5];
    if (isAnythingOverridden4)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (TCObjectEqual(scene3D, scene3D2))
  {
LABEL_32:
    mScene3D = self->mScene3D;
    self->mScene3D = 0;
  }

LABEL_33:

LABEL_34:
  if (![(OADGraphicProperties *)self hasShape3D])
  {
    goto LABEL_42;
  }

  parent6 = [(OADProperties *)self parent];
  shape3D = [(OADGraphicProperties *)self shape3D];
  shape3D2 = [parent6 shape3D];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)shape3D removeUnnecessaryOverrides];
    v37 = objc_opt_class();
    if (v37 != objc_opt_class())
    {
      goto LABEL_41;
    }

    isMergedWithParent6 = [(objc_object *)shape3D isMergedWithParent];
    [(objc_object *)shape3D setMergedWithParent:0];
    isAnythingOverridden5 = [(objc_object *)shape3D isAnythingOverridden];
    [(objc_object *)shape3D setMergedWithParent:isMergedWithParent6];
    if (isAnythingOverridden5)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (TCObjectEqual(shape3D, shape3D2))
  {
LABEL_40:
    mShape3D = self->mShape3D;
    self->mShape3D = 0;
  }

LABEL_41:

LABEL_42:
  if ([(OADGraphicProperties *)self hasStroke])
  {
    parent7 = [(OADProperties *)self parent];
    stroke = [(OADGraphicProperties *)self stroke];
    stroke2 = [parent7 stroke];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)stroke removeUnnecessaryOverrides];
      v44 = objc_opt_class();
      if (v44 != objc_opt_class())
      {
        goto LABEL_49;
      }

      isMergedWithParent7 = [(objc_object *)stroke isMergedWithParent];
      [(objc_object *)stroke setMergedWithParent:0];
      isAnythingOverridden6 = [(objc_object *)stroke isAnythingOverridden];
      [(objc_object *)stroke setMergedWithParent:isMergedWithParent7];
      if (isAnythingOverridden6)
      {
        goto LABEL_49;
      }
    }

    else if (!TCObjectEqual(stroke, stroke2))
    {
LABEL_49:

      goto LABEL_50;
    }

    mStroke = self->mStroke;
    self->mStroke = 0;

    goto LABEL_49;
  }

LABEL_50:
  if ([(OADGraphicProperties *)self hasIsBehindText])
  {
    parent8 = [(OADProperties *)self parent];
    isBehindText = [(OADGraphicProperties *)self isBehindText];
    if (isBehindText == [parent8 isBehindText])
    {
      [(OADGraphicProperties *)self setIsBehindText:0];
      *(self + 120) &= ~1u;
    }
  }

  [(OADProperties *)self setMerged:isMerged];
  [(OADProperties *)self setMergedWithParent:isMergedWithParent];
  v50.receiver = self;
  v50.super_class = OADGraphicProperties;
  [(OADDrawableProperties *)&v50 removeUnnecessaryOverrides];
}

- (id)fill
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasFill];
  v3 = v2[9];
  v4 = v3;

  return v3;
}

- (id)effects
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasEffects];
  v3 = v2[10];
  v4 = v3;

  return v3;
}

- (id)stroke
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasStroke];
  v3 = v2[14];
  v4 = v3;

  return v3;
}

- (BOOL)isBehindText
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasIsBehindText];
  v3 = (v2[120] >> 1) & 1;

  return v3;
}

- (void)setParent:(id)parent
{
  parentCopy = parent;
  v17.receiver = self;
  v17.super_class = OADGraphicProperties;
  [(OADProperties *)&v17 setParent:parentCopy];
  if (self->mFill)
  {
    fill = [parentCopy fill];
    v6 = self->mFill;
    parent = [(OADProperties *)self->mFill parent];

    if (parent != fill)
    {
      parent2 = [(OADProperties *)self->mFill parent];
      v8Parent = [parent2 parent];

      if (v8Parent)
      {
        parent3 = [(OADProperties *)self->mFill parent];

        v6 = parent3;
      }

      if ([fill isMemberOfClass:objc_opt_class()])
      {
        [(OADProperties *)v6 setParent:fill];
      }
    }
  }

  if (self->mStroke)
  {
    stroke = [parentCopy stroke];
    v12 = self->mStroke;
    parent4 = [(OADProperties *)self->mStroke parent];

    if (parent4 != stroke)
    {
      parent5 = [(OADProperties *)self->mStroke parent];
      v14Parent = [parent5 parent];

      if (v14Parent)
      {
        parent6 = [(OADProperties *)self->mStroke parent];

        v12 = parent6;
      }

      [(OADStroke *)v12 setParent:stroke];
    }
  }
}

- (BOOL)hasNonEmptyFill
{
  if ([(OADGraphicProperties *)self hasFill])
  {
    fill = [(OADGraphicProperties *)self fill];
    objc_opt_class();
    v4 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (id)exts
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasExts];
  v3 = v2[11];
  v4 = v3;

  return v3;
}

- (id)scene3D
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasScene3D];
  v3 = v2[12];
  v4 = v3;

  return v3;
}

- (id)shape3D
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasShape3D];
  v3 = v2[13];
  v4 = v3;

  return v3;
}

- (void)setIsBehindText:(BOOL)text
{
  if (text)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 120) = *(self + 120) & 0xFD | v3;
  *(self + 120) |= 1u;
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  v51.receiver = self;
  v51.super_class = OADGraphicProperties;
  [(OADDrawableProperties *)&v51 fixPropertiesForChangingParentPreservingEffectiveValues:valuesCopy];
  if (self->mFill || ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != valuesCopy))
  {
    fill = [(OADGraphicProperties *)self fill];
    v7 = objc_alloc_init(objc_opt_class());

    fill2 = [(OADGraphicProperties *)self fill];
    [v7 setParent:fill2];

    objc_storeStrong(&self->mFill, v7);
    fill3 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasFill];

    if (fill3)
    {
      fill3 = [valuesCopy fill];
    }

    mFill = self->mFill;
    if (mFill != fill3)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        defaultProperties = [objc_opt_class() defaultProperties];

        fill3 = defaultProperties;
      }

      [(OADProperties *)self->mFill changeParentPreservingEffectiveValues:fill3];
      if ((isKindOfClass & 1) == 0 || [(OADProperties *)self->mFill isAnythingOverridden])
      {
        goto LABEL_12;
      }

      mFill = self->mFill;
    }

    self->mFill = 0;

LABEL_12:
  }

  if ([(OADGraphicProperties *)self hasEffects]|| ([(OADProperties *)self parent], v13 = objc_claimAutoreleasedReturnValue(), v13, v13 != valuesCopy))
  {
    v14 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasEffects];

    if (v14)
    {
      effects = [(OADGraphicProperties *)self effects];
    }

    else
    {
      effects = 0;
    }

    v16 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasEffects];

    if (v16)
    {
      effects2 = [valuesCopy effects];
    }

    else
    {
      effects2 = 0;
    }

    v18 = TCObjectEqual(effects, effects2);
    mEffects = self->mEffects;
    if (v18)
    {
      self->mEffects = 0;
    }

    else if (!mEffects && v14)
    {
      [(OADGraphicProperties *)self setEffects:effects];
    }
  }

  if ([(OADGraphicProperties *)self hasExts]|| ([(OADProperties *)self parent], v20 = objc_claimAutoreleasedReturnValue(), v20, v20 != valuesCopy))
  {
    v21 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasExts];

    if (v21)
    {
      exts = [(OADGraphicProperties *)self exts];
    }

    else
    {
      exts = 0;
    }

    v23 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasExts];

    if (v23)
    {
      exts2 = [valuesCopy exts];
    }

    else
    {
      exts2 = 0;
    }

    v25 = TCObjectEqual(exts, exts2);
    mExts = self->mExts;
    if (v25)
    {
      self->mExts = 0;
    }

    else if (!mExts && v21)
    {
      [(OADGraphicProperties *)self setExts:exts];
    }
  }

  if ([(OADGraphicProperties *)self hasScene3D]|| ([(OADProperties *)self parent], v27 = objc_claimAutoreleasedReturnValue(), v27, v27 != valuesCopy))
  {
    v28 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasScene3D];

    if (v28)
    {
      scene3D = [(OADGraphicProperties *)self scene3D];
    }

    else
    {
      scene3D = 0;
    }

    v30 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasScene3D];

    if (v30)
    {
      scene3D2 = [valuesCopy scene3D];
    }

    else
    {
      scene3D2 = 0;
    }

    v32 = TCObjectEqual(scene3D, scene3D2);
    mScene3D = self->mScene3D;
    if (v32)
    {
      self->mScene3D = 0;
    }

    else if (!mScene3D && v28)
    {
      [(OADGraphicProperties *)self setScene3D:scene3D];
    }
  }

  if ([(OADGraphicProperties *)self hasShape3D]|| ([(OADProperties *)self parent], v34 = objc_claimAutoreleasedReturnValue(), v34, v34 != valuesCopy))
  {
    v35 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasShape3D];

    if (v35)
    {
      shape3D = [(OADGraphicProperties *)self shape3D];
    }

    else
    {
      shape3D = 0;
    }

    v37 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasShape3D];

    if (v37)
    {
      shape3D2 = [valuesCopy shape3D];
    }

    else
    {
      shape3D2 = 0;
    }

    v39 = TCObjectEqual(shape3D, shape3D2);
    mShape3D = self->mShape3D;
    if (v39)
    {
      self->mShape3D = 0;
    }

    else if (!mShape3D && v35)
    {
      [(OADGraphicProperties *)self setShape3D:shape3D];
    }
  }

  if (self->mStroke || ([(OADProperties *)self parent], v41 = objc_claimAutoreleasedReturnValue(), v41, v41 != valuesCopy))
  {
    stroke = [(OADGraphicProperties *)self stroke];
    v43 = objc_alloc_init(objc_opt_class());

    stroke2 = [(OADGraphicProperties *)self stroke];
    [v43 setParent:stroke2];

    objc_storeStrong(&self->mStroke, v43);
    stroke3 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasStroke];

    if (stroke3)
    {
      stroke3 = [valuesCopy stroke];
    }

    mStroke = self->mStroke;
    if (mStroke != stroke3)
    {
      objc_opt_class();
      v47 = objc_opt_isKindOfClass();
      if ((v47 & 1) == 0)
      {
        defaultProperties2 = [objc_opt_class() defaultProperties];

        stroke3 = defaultProperties2;
      }

      [(OADProperties *)self->mStroke changeParentPreservingEffectiveValues:stroke3];
      if ((v47 & 1) == 0 || [(OADStroke *)self->mStroke isAnythingOverridden])
      {
        goto LABEL_80;
      }

      mStroke = self->mStroke;
    }

    self->mStroke = 0;

LABEL_80:
  }

  if ((*(self + 120) & 1) != 0 || ([(OADProperties *)self parent], v49 = objc_claimAutoreleasedReturnValue(), v49, v49 != valuesCopy))
  {
    isBehindText = [(OADGraphicProperties *)self isBehindText];
    if (isBehindText == [valuesCopy isBehindText])
    {
      *(self + 120) &= ~1u;
    }

    else if ((*(self + 120) & 1) == 0)
    {
      [(OADGraphicProperties *)self setIsBehindText:[(OADGraphicProperties *)self isBehindText]];
    }
  }
}

- (unint64_t)hash
{
  v3 = [(OADFill *)self->mFill hash];
  v4 = [(OADScene3D *)self->mScene3D hash]^ v3;
  v5 = [(OADShape3D *)self->mShape3D hash];
  v6 = v4 ^ v5 ^ [(OADStroke *)self->mStroke hash];
  if ([(NSArray *)self->mEffects count])
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = [(NSArray *)self->mEffects objectAtIndex:v7];
      v6 ^= [v9 hash];

      v7 = v8;
      v10 = [(NSArray *)self->mEffects count]> v8++;
    }

    while (v10);
  }

  if ([(NSArray *)self->mExts count])
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = [(NSArray *)self->mExts objectAtIndex:v11];
      v6 ^= [v13 hash];

      v11 = v12;
      v10 = [(NSArray *)self->mExts count]> v12++;
    }

    while (v10);
  }

  v14 = (*(self + 120) >> 1) & 1;
  v16.receiver = self;
  v16.super_class = OADGraphicProperties;
  return v6 ^ [(OADDrawableProperties *)&v16 hash]^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = [(OADGraphicProperties *)self hash];
    if (v6 == [v5 hash] && (v7 = objc_msgSend(v5, "hasFill"), v7 == -[OADGraphicProperties hasFill](self, "hasFill")) && (!objc_msgSend(v5, "hasFill") || (objc_msgSend(v5, "fill"), v8 = objc_claimAutoreleasedReturnValue(), -[OADGraphicProperties fill](self, "fill"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, (v10 & 1) != 0)) && (v11 = objc_msgSend(v5, "hasEffects"), v11 == -[OADGraphicProperties hasEffects](self, "hasEffects")) && (!objc_msgSend(v5, "hasEffects") || (objc_msgSend(v5, "effects"), v12 = objc_claimAutoreleasedReturnValue(), -[OADGraphicProperties effects](self, "effects"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqualToArray:", v13), v13, v12, (v14 & 1) != 0)) && (v15 = objc_msgSend(v5, "hasScene3D"), v15 == -[OADGraphicProperties hasScene3D](self, "hasScene3D")) && (!objc_msgSend(v5, "hasScene3D") || (objc_msgSend(v5, "scene3D"), v16 = objc_claimAutoreleasedReturnValue(), -[OADGraphicProperties scene3D](self, "scene3D"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqual:", v17), v17, v16, (v18 & 1) != 0)) && (v19 = objc_msgSend(v5, "hasShape3D"), v19 == -[OADGraphicProperties hasShape3D](self, "hasShape3D")) && (!objc_msgSend(v5, "hasShape3D") || (objc_msgSend(v5, "shape3D"), v20 = objc_claimAutoreleasedReturnValue(), -[OADGraphicProperties shape3D](self, "shape3D"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqual:", v21), v21, v20, (v22 & 1) != 0)) && (v23 = objc_msgSend(v5, "hasStroke"), v23 == -[OADGraphicProperties hasStroke](self, "hasStroke")) && (!objc_msgSend(v5, "hasStroke") || (objc_msgSend(v5, "stroke"), v24 = objc_claimAutoreleasedReturnValue(), -[OADGraphicProperties stroke](self, "stroke"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v24, "isEqual:", v25), v25, v24, (v26 & 1) != 0)) && (v27 = objc_msgSend(v5, "hasIsBehindText"), v27 == -[OADGraphicProperties hasIsBehindText](self, "hasIsBehindText")) && (!objc_msgSend(v5, "hasIsBehindText") || (v30 = objc_msgSend(v5, "isBehindText"), v30 == -[OADGraphicProperties isBehindText](self, "isBehindText"))))
    {
      v31.receiver = self;
      v31.super_class = OADGraphicProperties;
      v28 = [(OADDrawableProperties *)&v31 isEqual:v5];
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = OADGraphicProperties;
  v2 = [(OADDrawableProperties *)&v4 description];

  return v2;
}

@end