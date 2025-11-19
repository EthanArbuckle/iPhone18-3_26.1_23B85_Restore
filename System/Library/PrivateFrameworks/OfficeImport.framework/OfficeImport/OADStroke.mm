@interface OADStroke
+ (id)blackStroke;
+ (id)defaultProperties;
+ (id)nullStroke;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)a3;
- (OADLineEnd)head;
- (OADLineEnd)tail;
- (OADStroke)init;
- (OADStroke)initWithDefaults;
- (float)width;
- (id)color;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dash;
- (id)fill;
- (id)join;
- (int)penAlignment;
- (unint64_t)hash;
- (unsigned)cap;
- (unsigned)compoundType;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3;
- (void)removeUnnecessaryOverrides;
- (void)setParent:(id)a3;
@end

@implementation OADStroke

- (OADStroke)init
{
  v3.receiver = self;
  v3.super_class = OADStroke;
  return [(OADProperties *)&v3 init];
}

+ (id)defaultProperties
{
  if (+[OADStroke defaultProperties]::once != -1)
  {
    +[OADStroke defaultProperties];
  }

  v3 = +[OADStroke defaultProperties]::defaultProperties;

  return v3;
}

- (OADStroke)initWithDefaults
{
  v15.receiver = self;
  v15.super_class = OADStroke;
  v2 = [(OADProperties *)&v15 initWithDefaults];
  v3 = v2;
  if (v2)
  {
    [(OADStroke *)v2 setColor:0];
    v4 = +[OADNullFill nullFill];
    [(OADStroke *)v3 setFill:v4];

    v5 = +[OADPresetDash defaultProperties];
    v6 = [v5 copy];
    [(OADStroke *)v3 setDash:v6];

    v7 = +[OADRoundLineJoin defaultProperties];
    v8 = [v7 copy];
    [(OADStroke *)v3 setJoin:v8];

    v9 = +[OADLineEnd defaultProperties];
    v10 = [v9 copy];
    [(OADStroke *)v3 setHead:v10];

    v11 = +[OADLineEnd defaultProperties];
    v12 = [v11 copy];
    [(OADStroke *)v3 setTail:v12];

    LODWORD(v13) = 0.75;
    [(OADStroke *)v3 setWidth:v13];
    [(OADStroke *)v3 setCap:2];
    [(OADStroke *)v3 setCompoundType:0];
    [(OADStroke *)v3 setPenAlignment:0];
  }

  return v3;
}

- (OADLineEnd)head
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isHeadOverridden];
  v3 = v2[7];
  v4 = v3;

  return v3;
}

- (OADLineEnd)tail
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isTailOverridden];
  v3 = v2[8];
  v4 = v3;

  return v3;
}

+ (id)nullStroke
{
  v2 = objc_alloc_init(OADStroke);
  v3 = +[OADNullFill nullFill];
  [(OADStroke *)v2 setFill:v3];

  return v2;
}

- (id)fill
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isFillOverridden];
  v3 = v2[4];
  v4 = v3;

  return v3;
}

- (unint64_t)hash
{
  if (*(self + 84))
  {
    v3 = [(OADColor *)self->mColor hash];
  }

  else
  {
    v3 = 0;
  }

  mFill = self->mFill;
  if (mFill)
  {
    v3 ^= [(OADFill *)mFill hash];
  }

  mDash = self->mDash;
  if (mDash)
  {
    v3 ^= [(OADDash *)mDash hash];
  }

  mJoin = self->mJoin;
  if (mJoin)
  {
    v3 ^= [(OADProperties *)mJoin hash];
  }

  mHead = self->mHead;
  if (mHead)
  {
    v3 ^= [(OADLineEnd *)mHead hash];
  }

  mTail = self->mTail;
  if (mTail)
  {
    v3 ^= [(OADLineEnd *)mTail hash];
  }

  if ((*(self + 84) & 2) != 0)
  {
    v3 ^= self->mWidth;
  }

  if ((*(self + 84) & 4) != 0)
  {
    v3 ^= self->mCap;
  }

  if ((*(self + 84) & 8) != 0)
  {
    v3 ^= self->mCompoundType;
  }

  if ((*(self + 84) & 0x10) != 0)
  {
    v3 ^= self->mPenAlignment;
  }

  return v3;
}

- (float)width
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isWidthOverridden];
  v3 = v2[18];

  return v3;
}

- (id)dash
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isDashOverridden];
  v3 = v2[5];
  v4 = v3;

  return v3;
}

- (unsigned)compoundType
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isCompoundTypeOverridden];
  v3 = v2[77];

  return v3;
}

- (id)color
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isColorOverridden];
  v3 = v2[3];
  v4 = v3;

  return v3;
}

+ (id)blackStroke
{
  v2 = objc_alloc_init(OADStroke);
  v3 = +[OADSolidFill blackFill];
  [(OADStroke *)v2 setFill:v3];

  return v2;
}

- (id)join
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isJoinOverridden];
  v3 = v2[6];
  v4 = v3;

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*(self + 84))
  {
    v7 = [(OADColor *)self->mColor copyWithZone:a3];
    [v5 setColor:v7];
  }

  mFill = self->mFill;
  if (mFill)
  {
    v9 = [(OADFill *)mFill copyWithZone:a3];
    [v5 setFill:v9];
  }

  mDash = self->mDash;
  if (mDash)
  {
    v11 = [(OADDash *)mDash copyWithZone:a3];
    [v5 setDash:v11];
  }

  mJoin = self->mJoin;
  if (mJoin)
  {
    v13 = [(OADLineJoin *)mJoin copyWithZone:a3];
    [v5 setJoin:v13];
  }

  mHead = self->mHead;
  if (mHead)
  {
    v15 = [(OADLineEnd *)mHead copyWithZone:a3];
    [v5 setHead:v15];
  }

  mTail = self->mTail;
  if (mTail)
  {
    v17 = [(OADLineEnd *)mTail copyWithZone:a3];
    [v5 setTail:v17];
  }

  if ((*(self + 84) & 2) != 0)
  {
    *&v6 = self->mWidth;
    [v5 setWidth:v6];
  }

  if ((*(self + 84) & 4) != 0)
  {
    [v5 setCap:self->mCap];
  }

  if ((*(self + 84) & 8) != 0)
  {
    [v5 setCompoundType:self->mCompoundType];
  }

  if ((*(self + 84) & 0x10) != 0)
  {
    [v5 setPenAlignment:self->mPenAlignment];
  }

  return v5;
}

- (BOOL)isAnythingOverridden
{
  v4.receiver = self;
  v4.super_class = OADStroke;
  return [(OADProperties *)&v4 isAnythingOverridden]|| [(OADStroke *)self isColorOverridden]|| [(OADStroke *)self isFillOverridden]|| [(OADStroke *)self isDashOverridden]|| [(OADStroke *)self isJoinOverridden]|| [(OADStroke *)self isWidthOverridden]|| [(OADStroke *)self isCapOverridden]|| [(OADStroke *)self isCompoundTypeOverridden]|| [(OADStroke *)self isPenAlignmentOverridden]|| [(OADStroke *)self isHeadOverridden]|| [(OADStroke *)self isTailOverridden];
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3
{
  v4 = a3;
  v61.receiver = self;
  v61.super_class = OADStroke;
  [(OADProperties *)&v61 fixPropertiesForChangingParentPreservingEffectiveValues:v4];
  if ((*(self + 84) & 1) != 0 || ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != v4))
  {
    v6 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_isColorOverridden];

    if (v6)
    {
      v7 = [(OADStroke *)self color];
    }

    else
    {
      v7 = 0;
    }

    v8 = [v4 possiblyInexistentOverrideForSelector:sel_isColorOverridden];

    if (v8)
    {
      v9 = [v4 color];
    }

    else
    {
      v9 = 0;
    }

    if (TCObjectEqual(v7, v9))
    {
      mColor = self->mColor;
      self->mColor = 0;

      *(self + 84) &= ~1u;
    }

    else if ((*(self + 84) & 1) == 0 && v6)
    {
      [(OADStroke *)self setColor:v7];
    }
  }

  if (self->mFill || ([(OADProperties *)self parent], v11 = objc_claimAutoreleasedReturnValue(), v11, v11 != v4))
  {
    v12 = [(OADStroke *)self fill];
    v13 = objc_alloc_init(objc_opt_class());

    v14 = [(OADStroke *)self fill];
    [v13 setParent:v14];

    objc_storeStrong(&self->mFill, v13);
    v15 = [v4 possiblyInexistentOverrideForSelector:sel_isFillOverridden];

    if (v15)
    {
      v15 = [v4 fill];
    }

    mFill = self->mFill;
    if (mFill != v15)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        v18 = [objc_opt_class() defaultProperties];

        v15 = v18;
      }

      [(OADProperties *)self->mFill changeParentPreservingEffectiveValues:v15];
      if ((isKindOfClass & 1) == 0 || [(OADProperties *)self->mFill isAnythingOverridden])
      {
        goto LABEL_26;
      }

      mFill = self->mFill;
    }

    self->mFill = 0;

LABEL_26:
  }

  if (self->mDash || ([(OADProperties *)self parent], v19 = objc_claimAutoreleasedReturnValue(), v19, v19 != v4))
  {
    v20 = [(OADStroke *)self dash];
    v21 = objc_alloc_init(objc_opt_class());

    v22 = [(OADStroke *)self dash];
    [v21 setParent:v22];

    objc_storeStrong(&self->mDash, v21);
    v23 = [v4 possiblyInexistentOverrideForSelector:sel_isDashOverridden];

    if (v23)
    {
      v23 = [v4 dash];
    }

    mDash = self->mDash;
    if (mDash != v23)
    {
      objc_opt_class();
      v25 = objc_opt_isKindOfClass();
      if ((v25 & 1) == 0)
      {
        v26 = [objc_opt_class() defaultProperties];

        v23 = v26;
      }

      [(OADProperties *)self->mDash changeParentPreservingEffectiveValues:v23];
      if ((v25 & 1) == 0 || [(OADProperties *)self->mDash isAnythingOverridden])
      {
        goto LABEL_38;
      }

      mDash = self->mDash;
    }

    self->mDash = 0;

LABEL_38:
  }

  if (self->mJoin || ([(OADProperties *)self parent], v27 = objc_claimAutoreleasedReturnValue(), v27, v27 != v4))
  {
    v28 = [(OADStroke *)self join];
    v29 = objc_alloc_init(objc_opt_class());

    v30 = [(OADStroke *)self join];
    [v29 setParent:v30];

    objc_storeStrong(&self->mJoin, v29);
    v31 = [v4 possiblyInexistentOverrideForSelector:sel_isJoinOverridden];

    if (v31)
    {
      v31 = [v4 join];
    }

    mJoin = self->mJoin;
    if (mJoin != v31)
    {
      objc_opt_class();
      v33 = objc_opt_isKindOfClass();
      if ((v33 & 1) == 0)
      {
        v34 = [objc_opt_class() defaultProperties];

        v31 = v34;
      }

      [(OADProperties *)self->mJoin changeParentPreservingEffectiveValues:v31];
      if ((v33 & 1) == 0 || [(OADProperties *)self->mJoin isAnythingOverridden])
      {
        goto LABEL_50;
      }

      mJoin = self->mJoin;
    }

    self->mJoin = 0;

LABEL_50:
  }

  if (self->mHead || ([(OADProperties *)self parent], v35 = objc_claimAutoreleasedReturnValue(), v35, v35 != v4))
  {
    v36 = [(OADStroke *)self head];
    v37 = objc_alloc_init(objc_opt_class());

    v38 = [(OADStroke *)self head];
    [v37 setParent:v38];

    objc_storeStrong(&self->mHead, v37);
    v39 = [v4 possiblyInexistentOverrideForSelector:sel_isHeadOverridden];

    if (v39)
    {
      v39 = [v4 head];
    }

    mHead = self->mHead;
    if (mHead != v39)
    {
      objc_opt_class();
      v41 = objc_opt_isKindOfClass();
      if ((v41 & 1) == 0)
      {
        v42 = [objc_opt_class() defaultProperties];

        v39 = v42;
      }

      [(OADProperties *)self->mHead changeParentPreservingEffectiveValues:v39];
      if ((v41 & 1) == 0 || [(OADLineEnd *)self->mHead isAnythingOverridden])
      {
        goto LABEL_62;
      }

      mHead = self->mHead;
    }

    self->mHead = 0;

LABEL_62:
  }

  if (self->mTail || ([(OADProperties *)self parent], v43 = objc_claimAutoreleasedReturnValue(), v43, v43 != v4))
  {
    v44 = [(OADStroke *)self tail];
    v45 = objc_alloc_init(objc_opt_class());

    v46 = [(OADStroke *)self tail];
    [v45 setParent:v46];

    objc_storeStrong(&self->mTail, v45);
    v47 = [v4 possiblyInexistentOverrideForSelector:sel_isTailOverridden];

    if (v47)
    {
      v47 = [v4 tail];
    }

    mTail = self->mTail;
    if (mTail != v47)
    {
      objc_opt_class();
      v49 = objc_opt_isKindOfClass();
      if ((v49 & 1) == 0)
      {
        v50 = [objc_opt_class() defaultProperties];

        v47 = v50;
      }

      [(OADProperties *)self->mTail changeParentPreservingEffectiveValues:v47];
      if ((v49 & 1) == 0 || [(OADLineEnd *)self->mTail isAnythingOverridden])
      {
        goto LABEL_74;
      }

      mTail = self->mTail;
    }

    self->mTail = 0;

LABEL_74:
  }

  if ((*(self + 84) & 2) != 0 || ([(OADProperties *)self parent], v51 = objc_claimAutoreleasedReturnValue(), v51, v51 != v4))
  {
    [(OADStroke *)self width];
    v53 = v52;
    [v4 width];
    if (v53 == v54)
    {
      *(self + 84) &= ~2u;
    }

    else if ((*(self + 84) & 2) == 0)
    {
      [(OADStroke *)self width];
      [(OADStroke *)self setWidth:?];
    }
  }

  if ((*(self + 84) & 4) != 0 || ([(OADProperties *)self parent], v55 = objc_claimAutoreleasedReturnValue(), v55, v55 != v4))
  {
    v56 = [(OADStroke *)self cap];
    if (v56 == [v4 cap])
    {
      *(self + 84) &= ~4u;
    }

    else if ((*(self + 84) & 4) == 0)
    {
      [(OADStroke *)self setCap:[(OADStroke *)self cap]];
    }
  }

  if ((*(self + 84) & 8) != 0 || ([(OADProperties *)self parent], v57 = objc_claimAutoreleasedReturnValue(), v57, v57 != v4))
  {
    v58 = [(OADStroke *)self compoundType];
    if (v58 == [v4 compoundType])
    {
      *(self + 84) &= ~8u;
    }

    else if ((*(self + 84) & 8) == 0)
    {
      [(OADStroke *)self setCompoundType:[(OADStroke *)self compoundType]];
    }
  }

  if ((*(self + 84) & 0x10) != 0 || ([(OADProperties *)self parent], v59 = objc_claimAutoreleasedReturnValue(), v59, v59 != v4))
  {
    v60 = [(OADStroke *)self penAlignment];
    if (v60 == [v4 penAlignment])
    {
      *(self + 84) &= ~0x10u;
    }

    else if ((*(self + 84) & 0x10) == 0)
    {
      [(OADStroke *)self setPenAlignment:[(OADStroke *)self penAlignment]];
    }
  }
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
  if ([(OADStroke *)self isColorOverridden])
  {
    v6 = [(OADProperties *)self parent];
    v7 = [(OADStroke *)self color];
    v8 = [v6 color];
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

    mColor = self->mColor;
    self->mColor = 0;

    *(self + 84) &= ~1u;
    goto LABEL_9;
  }

LABEL_10:
  if (![(OADStroke *)self isFillOverridden])
  {
    goto LABEL_18;
  }

  v13 = [(OADProperties *)self parent];
  v14 = [(OADStroke *)self fill];
  v15 = [v13 fill];
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
    mFill = self->mFill;
    self->mFill = 0;
  }

LABEL_17:

LABEL_18:
  if (![(OADStroke *)self isDashOverridden])
  {
    goto LABEL_26;
  }

  v20 = [(OADProperties *)self parent];
  v21 = [(OADStroke *)self dash];
  v22 = [v20 dash];
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
    mDash = self->mDash;
    self->mDash = 0;
  }

LABEL_25:

LABEL_26:
  if (![(OADStroke *)self isJoinOverridden])
  {
    goto LABEL_34;
  }

  v27 = [(OADProperties *)self parent];
  v28 = [(OADStroke *)self join];
  v29 = [v27 join];
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
    mJoin = self->mJoin;
    self->mJoin = 0;
  }

LABEL_33:

LABEL_34:
  if (![(OADStroke *)self isHeadOverridden])
  {
    goto LABEL_42;
  }

  v34 = [(OADProperties *)self parent];
  v35 = [(OADStroke *)self head];
  v36 = [v34 head];
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
    mHead = self->mHead;
    self->mHead = 0;
  }

LABEL_41:

LABEL_42:
  if ([(OADStroke *)self isTailOverridden])
  {
    v41 = [(OADProperties *)self parent];
    v42 = [(OADStroke *)self tail];
    v43 = [v41 tail];
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

    mTail = self->mTail;
    self->mTail = 0;

    goto LABEL_49;
  }

LABEL_50:
  if ([(OADStroke *)self isWidthOverridden])
  {
    v48 = [(OADProperties *)self parent];
    [(OADStroke *)self width];
    v50 = v49;
    [v48 width];
    if (v50 == *&v51)
    {
      LODWORD(v51) = 0.75;
      [(OADStroke *)self setWidth:v51];
      *(self + 84) &= ~2u;
    }
  }

  if ([(OADStroke *)self isCapOverridden])
  {
    v52 = [(OADProperties *)self parent];
    v53 = [(OADStroke *)self cap];
    if (v53 == [v52 cap])
    {
      [(OADStroke *)self setCap:2];
      *(self + 84) &= ~4u;
    }
  }

  if ([(OADStroke *)self isCompoundTypeOverridden])
  {
    v54 = [(OADProperties *)self parent];
    v55 = [(OADStroke *)self compoundType];
    if (v55 == [v54 compoundType])
    {
      [(OADStroke *)self setCompoundType:0];
      *(self + 84) &= ~8u;
    }
  }

  if ([(OADStroke *)self isPenAlignmentOverridden])
  {
    v56 = [(OADProperties *)self parent];
    v57 = [(OADStroke *)self penAlignment];
    if (v57 == [v56 penAlignment])
    {
      [(OADStroke *)self setPenAlignment:0];
      *(self + 84) &= ~0x10u;
    }
  }

  [(OADProperties *)self setMerged:v4];
  [(OADProperties *)self setMergedWithParent:v5];
  v58.receiver = self;
  v58.super_class = OADStroke;
  [(OADProperties *)&v58 removeUnnecessaryOverrides];
}

void __30__OADStroke_defaultProperties__block_invoke()
{
  v0 = [[OADStroke alloc] initWithDefaults];
  v1 = +[OADStroke defaultProperties]::defaultProperties;
  +[OADStroke defaultProperties]::defaultProperties = v0;
}

- (void)setParent:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = OADStroke;
  [(OADProperties *)&v12 setParent:v4];
  if (self->mFill)
  {
    v5 = [v4 fill];
    if ([v5 isMemberOfClass:objc_opt_class()])
    {
      [(OADProperties *)self->mFill setParent:v5];
    }
  }

  if (self->mDash)
  {
    v6 = [v4 dash];
    if ([v6 isMemberOfClass:objc_opt_class()])
    {
      [(OADProperties *)self->mDash setParent:v6];
    }
  }

  if (self->mJoin)
  {
    v7 = [v4 join];
    if ([v7 isMemberOfClass:objc_opt_class()])
    {
      [(OADProperties *)self->mJoin setParent:v7];
    }
  }

  mHead = self->mHead;
  if (mHead)
  {
    v9 = [v4 head];
    [(OADProperties *)mHead setParent:v9];
  }

  mTail = self->mTail;
  if (mTail)
  {
    v11 = [v4 tail];
    [(OADProperties *)mTail setParent:v11];
  }
}

- (unsigned)cap
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isCapOverridden];
  v3 = v2[76];

  return v3;
}

- (int)penAlignment
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isPenAlignmentOverridden];
  v3 = v2[20];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    v8 = *(self + 84);
    v6 = ((v7[84] ^ v8) & 1) == 0 && ((v8 & 1) == 0 || [(OADColor *)self->mColor isEqual:*(v7 + 3)]) && TCObjectEqual(self->mFill, *(v7 + 4)) && TCObjectEqual(self->mDash, *(v7 + 5)) && TCObjectEqual(self->mJoin, *(v7 + 6)) && TCObjectEqual(self->mHead, *(v7 + 7)) && TCObjectEqual(self->mTail, *(v7 + 8)) && ((v7[84] >> 1) & 1) == (*(self + 84) & 2) >> 1 && ((*(self + 84) & 2) == 0 || self->mWidth == *(v7 + 18)) && ((v7[84] >> 2) & 1) == (*(self + 84) & 4) >> 2 && ((*(self + 84) & 4) == 0 || self->mCap == v7[76]) && ((v7[84] >> 3) & 1) == (*(self + 84) & 8) >> 3 && ((*(self + 84) & 8) == 0 || self->mCompoundType == v7[77]) && ((v7[84] >> 4) & 1) == (*(self + 84) & 0x10) >> 4 && ((*(self + 84) & 0x10) == 0 || self->mPenAlignment == *(v7 + 20));
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end