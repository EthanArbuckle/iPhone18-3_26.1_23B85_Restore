@interface OADGraphicProperties
- (BOOL)hasNonEmptyFill;
- (BOOL)isBehindText;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (OADGraphicProperties)initWithDefaults;
- (id)effects;
- (id)exts;
- (id)fill;
- (id)scene3D;
- (id)shape3D;
- (id)stroke;
- (unint64_t)hash;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3;
- (void)removeUnnecessaryOverrides;
- (void)setIsBehindText:(BOOL)a3;
- (void)setParent:(id)a3;
@end

@implementation OADGraphicProperties

- (OADGraphicProperties)initWithDefaults
{
  v10.receiver = self;
  v10.super_class = OADGraphicProperties;
  v2 = [(OADDrawableProperties *)&v10 initWithDefaults];
  if (v2)
  {
    v3 = +[OADNullFill nullFill];
    [(OADGraphicProperties *)v2 setFill:v3];

    v4 = [MEMORY[0x277CBEA60] array];
    [(OADGraphicProperties *)v2 setEffects:v4];

    v5 = [MEMORY[0x277CBEA60] array];
    [(OADGraphicProperties *)v2 setExts:v5];

    v6 = +[OADStroke nullStroke];
    [(OADGraphicProperties *)v2 setStroke:v6];

    v7 = +[OADScene3D nullScene3D];
    [(OADGraphicProperties *)v2 setScene3D:v7];

    v8 = +[OADShape3D nullShape3D];
    [(OADGraphicProperties *)v2 setShape3D:v8];

    [(OADGraphicProperties *)v2 setIsBehindText:0];
  }

  return v2;
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
  if ([(OADGraphicProperties *)self hasFill])
  {
    v6 = [(OADProperties *)self parent];
    v7 = [(OADGraphicProperties *)self fill];
    v8 = [v6 fill];
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

  v13 = [(OADProperties *)self parent];
  v14 = [(OADGraphicProperties *)self effects];
  v15 = [v13 effects];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)v14 removeUnnecessaryOverrides];
    v16 = objc_opt_class();
    if (v16 != objc_opt_class())
    {
      goto LABEL_17;
    }

    v17 = [(objc_object *)v14 isMergedWithParent];
    [(objc_object *)v14 setMergedWithParent:0];
    v18 = [(objc_object *)v14 isAnythingOverridden];
    [(objc_object *)v14 setMergedWithParent:v17];
    if (v18)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (TCObjectEqual(v14, v15))
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

  v20 = [(OADProperties *)self parent];
  v21 = [(OADGraphicProperties *)self exts];
  v22 = [v20 exts];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)v21 removeUnnecessaryOverrides];
    v23 = objc_opt_class();
    if (v23 != objc_opt_class())
    {
      goto LABEL_25;
    }

    v24 = [(objc_object *)v21 isMergedWithParent];
    [(objc_object *)v21 setMergedWithParent:0];
    v25 = [(objc_object *)v21 isAnythingOverridden];
    [(objc_object *)v21 setMergedWithParent:v24];
    if (v25)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (TCObjectEqual(v21, v22))
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

  v27 = [(OADProperties *)self parent];
  v28 = [(OADGraphicProperties *)self scene3D];
  v29 = [v27 scene3D];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)v28 removeUnnecessaryOverrides];
    v30 = objc_opt_class();
    if (v30 != objc_opt_class())
    {
      goto LABEL_33;
    }

    v31 = [(objc_object *)v28 isMergedWithParent];
    [(objc_object *)v28 setMergedWithParent:0];
    v32 = [(objc_object *)v28 isAnythingOverridden];
    [(objc_object *)v28 setMergedWithParent:v31];
    if (v32)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (TCObjectEqual(v28, v29))
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

  v34 = [(OADProperties *)self parent];
  v35 = [(OADGraphicProperties *)self shape3D];
  v36 = [v34 shape3D];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)v35 removeUnnecessaryOverrides];
    v37 = objc_opt_class();
    if (v37 != objc_opt_class())
    {
      goto LABEL_41;
    }

    v38 = [(objc_object *)v35 isMergedWithParent];
    [(objc_object *)v35 setMergedWithParent:0];
    v39 = [(objc_object *)v35 isAnythingOverridden];
    [(objc_object *)v35 setMergedWithParent:v38];
    if (v39)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (TCObjectEqual(v35, v36))
  {
LABEL_40:
    mShape3D = self->mShape3D;
    self->mShape3D = 0;
  }

LABEL_41:

LABEL_42:
  if ([(OADGraphicProperties *)self hasStroke])
  {
    v41 = [(OADProperties *)self parent];
    v42 = [(OADGraphicProperties *)self stroke];
    v43 = [v41 stroke];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)v42 removeUnnecessaryOverrides];
      v44 = objc_opt_class();
      if (v44 != objc_opt_class())
      {
        goto LABEL_49;
      }

      v45 = [(objc_object *)v42 isMergedWithParent];
      [(objc_object *)v42 setMergedWithParent:0];
      v46 = [(objc_object *)v42 isAnythingOverridden];
      [(objc_object *)v42 setMergedWithParent:v45];
      if (v46)
      {
        goto LABEL_49;
      }
    }

    else if (!TCObjectEqual(v42, v43))
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
    v48 = [(OADProperties *)self parent];
    v49 = [(OADGraphicProperties *)self isBehindText];
    if (v49 == [v48 isBehindText])
    {
      [(OADGraphicProperties *)self setIsBehindText:0];
      *(self + 120) &= ~1u;
    }
  }

  [(OADProperties *)self setMerged:v4];
  [(OADProperties *)self setMergedWithParent:v5];
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

- (void)setParent:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = OADGraphicProperties;
  [(OADProperties *)&v17 setParent:v4];
  if (self->mFill)
  {
    v5 = [v4 fill];
    v6 = self->mFill;
    v7 = [(OADProperties *)self->mFill parent];

    if (v7 != v5)
    {
      v8 = [(OADProperties *)self->mFill parent];
      v9 = [v8 parent];

      if (v9)
      {
        v10 = [(OADProperties *)self->mFill parent];

        v6 = v10;
      }

      if ([v5 isMemberOfClass:objc_opt_class()])
      {
        [(OADProperties *)v6 setParent:v5];
      }
    }
  }

  if (self->mStroke)
  {
    v11 = [v4 stroke];
    v12 = self->mStroke;
    v13 = [(OADProperties *)self->mStroke parent];

    if (v13 != v11)
    {
      v14 = [(OADProperties *)self->mStroke parent];
      v15 = [v14 parent];

      if (v15)
      {
        v16 = [(OADProperties *)self->mStroke parent];

        v12 = v16;
      }

      [(OADStroke *)v12 setParent:v11];
    }
  }
}

- (BOOL)hasNonEmptyFill
{
  if ([(OADGraphicProperties *)self hasFill])
  {
    v3 = [(OADGraphicProperties *)self fill];
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

- (void)setIsBehindText:(BOOL)a3
{
  if (a3)
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

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3
{
  v4 = a3;
  v51.receiver = self;
  v51.super_class = OADGraphicProperties;
  [(OADDrawableProperties *)&v51 fixPropertiesForChangingParentPreservingEffectiveValues:v4];
  if (self->mFill || ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != v4))
  {
    v6 = [(OADGraphicProperties *)self fill];
    v7 = objc_alloc_init(objc_opt_class());

    v8 = [(OADGraphicProperties *)self fill];
    [v7 setParent:v8];

    objc_storeStrong(&self->mFill, v7);
    v9 = [v4 possiblyInexistentOverrideForSelector:sel_hasFill];

    if (v9)
    {
      v9 = [v4 fill];
    }

    mFill = self->mFill;
    if (mFill != v9)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        v12 = [objc_opt_class() defaultProperties];

        v9 = v12;
      }

      [(OADProperties *)self->mFill changeParentPreservingEffectiveValues:v9];
      if ((isKindOfClass & 1) == 0 || [(OADProperties *)self->mFill isAnythingOverridden])
      {
        goto LABEL_12;
      }

      mFill = self->mFill;
    }

    self->mFill = 0;

LABEL_12:
  }

  if ([(OADGraphicProperties *)self hasEffects]|| ([(OADProperties *)self parent], v13 = objc_claimAutoreleasedReturnValue(), v13, v13 != v4))
  {
    v14 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasEffects];

    if (v14)
    {
      v15 = [(OADGraphicProperties *)self effects];
    }

    else
    {
      v15 = 0;
    }

    v16 = [v4 possiblyInexistentOverrideForSelector:sel_hasEffects];

    if (v16)
    {
      v17 = [v4 effects];
    }

    else
    {
      v17 = 0;
    }

    v18 = TCObjectEqual(v15, v17);
    mEffects = self->mEffects;
    if (v18)
    {
      self->mEffects = 0;
    }

    else if (!mEffects && v14)
    {
      [(OADGraphicProperties *)self setEffects:v15];
    }
  }

  if ([(OADGraphicProperties *)self hasExts]|| ([(OADProperties *)self parent], v20 = objc_claimAutoreleasedReturnValue(), v20, v20 != v4))
  {
    v21 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasExts];

    if (v21)
    {
      v22 = [(OADGraphicProperties *)self exts];
    }

    else
    {
      v22 = 0;
    }

    v23 = [v4 possiblyInexistentOverrideForSelector:sel_hasExts];

    if (v23)
    {
      v24 = [v4 exts];
    }

    else
    {
      v24 = 0;
    }

    v25 = TCObjectEqual(v22, v24);
    mExts = self->mExts;
    if (v25)
    {
      self->mExts = 0;
    }

    else if (!mExts && v21)
    {
      [(OADGraphicProperties *)self setExts:v22];
    }
  }

  if ([(OADGraphicProperties *)self hasScene3D]|| ([(OADProperties *)self parent], v27 = objc_claimAutoreleasedReturnValue(), v27, v27 != v4))
  {
    v28 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasScene3D];

    if (v28)
    {
      v29 = [(OADGraphicProperties *)self scene3D];
    }

    else
    {
      v29 = 0;
    }

    v30 = [v4 possiblyInexistentOverrideForSelector:sel_hasScene3D];

    if (v30)
    {
      v31 = [v4 scene3D];
    }

    else
    {
      v31 = 0;
    }

    v32 = TCObjectEqual(v29, v31);
    mScene3D = self->mScene3D;
    if (v32)
    {
      self->mScene3D = 0;
    }

    else if (!mScene3D && v28)
    {
      [(OADGraphicProperties *)self setScene3D:v29];
    }
  }

  if ([(OADGraphicProperties *)self hasShape3D]|| ([(OADProperties *)self parent], v34 = objc_claimAutoreleasedReturnValue(), v34, v34 != v4))
  {
    v35 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasShape3D];

    if (v35)
    {
      v36 = [(OADGraphicProperties *)self shape3D];
    }

    else
    {
      v36 = 0;
    }

    v37 = [v4 possiblyInexistentOverrideForSelector:sel_hasShape3D];

    if (v37)
    {
      v38 = [v4 shape3D];
    }

    else
    {
      v38 = 0;
    }

    v39 = TCObjectEqual(v36, v38);
    mShape3D = self->mShape3D;
    if (v39)
    {
      self->mShape3D = 0;
    }

    else if (!mShape3D && v35)
    {
      [(OADGraphicProperties *)self setShape3D:v36];
    }
  }

  if (self->mStroke || ([(OADProperties *)self parent], v41 = objc_claimAutoreleasedReturnValue(), v41, v41 != v4))
  {
    v42 = [(OADGraphicProperties *)self stroke];
    v43 = objc_alloc_init(objc_opt_class());

    v44 = [(OADGraphicProperties *)self stroke];
    [v43 setParent:v44];

    objc_storeStrong(&self->mStroke, v43);
    v45 = [v4 possiblyInexistentOverrideForSelector:sel_hasStroke];

    if (v45)
    {
      v45 = [v4 stroke];
    }

    mStroke = self->mStroke;
    if (mStroke != v45)
    {
      objc_opt_class();
      v47 = objc_opt_isKindOfClass();
      if ((v47 & 1) == 0)
      {
        v48 = [objc_opt_class() defaultProperties];

        v45 = v48;
      }

      [(OADProperties *)self->mStroke changeParentPreservingEffectiveValues:v45];
      if ((v47 & 1) == 0 || [(OADStroke *)self->mStroke isAnythingOverridden])
      {
        goto LABEL_80;
      }

      mStroke = self->mStroke;
    }

    self->mStroke = 0;

LABEL_80:
  }

  if ((*(self + 120) & 1) != 0 || ([(OADProperties *)self parent], v49 = objc_claimAutoreleasedReturnValue(), v49, v49 != v4))
  {
    v50 = [(OADGraphicProperties *)self isBehindText];
    if (v50 == [v4 isBehindText])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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