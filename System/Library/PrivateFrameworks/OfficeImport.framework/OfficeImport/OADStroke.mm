@interface OADStroke
+ (id)blackStroke;
+ (id)defaultProperties;
+ (id)nullStroke;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)equal;
- (OADLineEnd)head;
- (OADLineEnd)tail;
- (OADStroke)init;
- (OADStroke)initWithDefaults;
- (float)width;
- (id)color;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dash;
- (id)fill;
- (id)join;
- (int)penAlignment;
- (unint64_t)hash;
- (unsigned)cap;
- (unsigned)compoundType;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values;
- (void)removeUnnecessaryOverrides;
- (void)setParent:(id)parent;
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
  initWithDefaults = [(OADProperties *)&v15 initWithDefaults];
  v3 = initWithDefaults;
  if (initWithDefaults)
  {
    [(OADStroke *)initWithDefaults setColor:0];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*(self + 84))
  {
    v7 = [(OADColor *)self->mColor copyWithZone:zone];
    [v5 setColor:v7];
  }

  mFill = self->mFill;
  if (mFill)
  {
    v9 = [(OADFill *)mFill copyWithZone:zone];
    [v5 setFill:v9];
  }

  mDash = self->mDash;
  if (mDash)
  {
    v11 = [(OADDash *)mDash copyWithZone:zone];
    [v5 setDash:v11];
  }

  mJoin = self->mJoin;
  if (mJoin)
  {
    v13 = [(OADLineJoin *)mJoin copyWithZone:zone];
    [v5 setJoin:v13];
  }

  mHead = self->mHead;
  if (mHead)
  {
    v15 = [(OADLineEnd *)mHead copyWithZone:zone];
    [v5 setHead:v15];
  }

  mTail = self->mTail;
  if (mTail)
  {
    v17 = [(OADLineEnd *)mTail copyWithZone:zone];
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

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  v61.receiver = self;
  v61.super_class = OADStroke;
  [(OADProperties *)&v61 fixPropertiesForChangingParentPreservingEffectiveValues:valuesCopy];
  if ((*(self + 84) & 1) != 0 || ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != valuesCopy))
  {
    v6 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_isColorOverridden];

    if (v6)
    {
      color = [(OADStroke *)self color];
    }

    else
    {
      color = 0;
    }

    v8 = [valuesCopy possiblyInexistentOverrideForSelector:sel_isColorOverridden];

    if (v8)
    {
      color2 = [valuesCopy color];
    }

    else
    {
      color2 = 0;
    }

    if (TCObjectEqual(color, color2))
    {
      mColor = self->mColor;
      self->mColor = 0;

      *(self + 84) &= ~1u;
    }

    else if ((*(self + 84) & 1) == 0 && v6)
    {
      [(OADStroke *)self setColor:color];
    }
  }

  if (self->mFill || ([(OADProperties *)self parent], v11 = objc_claimAutoreleasedReturnValue(), v11, v11 != valuesCopy))
  {
    fill = [(OADStroke *)self fill];
    v13 = objc_alloc_init(objc_opt_class());

    fill2 = [(OADStroke *)self fill];
    [v13 setParent:fill2];

    objc_storeStrong(&self->mFill, v13);
    fill3 = [valuesCopy possiblyInexistentOverrideForSelector:sel_isFillOverridden];

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
        goto LABEL_26;
      }

      mFill = self->mFill;
    }

    self->mFill = 0;

LABEL_26:
  }

  if (self->mDash || ([(OADProperties *)self parent], v19 = objc_claimAutoreleasedReturnValue(), v19, v19 != valuesCopy))
  {
    dash = [(OADStroke *)self dash];
    v21 = objc_alloc_init(objc_opt_class());

    dash2 = [(OADStroke *)self dash];
    [v21 setParent:dash2];

    objc_storeStrong(&self->mDash, v21);
    dash3 = [valuesCopy possiblyInexistentOverrideForSelector:sel_isDashOverridden];

    if (dash3)
    {
      dash3 = [valuesCopy dash];
    }

    mDash = self->mDash;
    if (mDash != dash3)
    {
      objc_opt_class();
      v25 = objc_opt_isKindOfClass();
      if ((v25 & 1) == 0)
      {
        defaultProperties2 = [objc_opt_class() defaultProperties];

        dash3 = defaultProperties2;
      }

      [(OADProperties *)self->mDash changeParentPreservingEffectiveValues:dash3];
      if ((v25 & 1) == 0 || [(OADProperties *)self->mDash isAnythingOverridden])
      {
        goto LABEL_38;
      }

      mDash = self->mDash;
    }

    self->mDash = 0;

LABEL_38:
  }

  if (self->mJoin || ([(OADProperties *)self parent], v27 = objc_claimAutoreleasedReturnValue(), v27, v27 != valuesCopy))
  {
    join = [(OADStroke *)self join];
    v29 = objc_alloc_init(objc_opt_class());

    join2 = [(OADStroke *)self join];
    [v29 setParent:join2];

    objc_storeStrong(&self->mJoin, v29);
    join3 = [valuesCopy possiblyInexistentOverrideForSelector:sel_isJoinOverridden];

    if (join3)
    {
      join3 = [valuesCopy join];
    }

    mJoin = self->mJoin;
    if (mJoin != join3)
    {
      objc_opt_class();
      v33 = objc_opt_isKindOfClass();
      if ((v33 & 1) == 0)
      {
        defaultProperties3 = [objc_opt_class() defaultProperties];

        join3 = defaultProperties3;
      }

      [(OADProperties *)self->mJoin changeParentPreservingEffectiveValues:join3];
      if ((v33 & 1) == 0 || [(OADProperties *)self->mJoin isAnythingOverridden])
      {
        goto LABEL_50;
      }

      mJoin = self->mJoin;
    }

    self->mJoin = 0;

LABEL_50:
  }

  if (self->mHead || ([(OADProperties *)self parent], v35 = objc_claimAutoreleasedReturnValue(), v35, v35 != valuesCopy))
  {
    head = [(OADStroke *)self head];
    v37 = objc_alloc_init(objc_opt_class());

    head2 = [(OADStroke *)self head];
    [v37 setParent:head2];

    objc_storeStrong(&self->mHead, v37);
    head3 = [valuesCopy possiblyInexistentOverrideForSelector:sel_isHeadOverridden];

    if (head3)
    {
      head3 = [valuesCopy head];
    }

    mHead = self->mHead;
    if (mHead != head3)
    {
      objc_opt_class();
      v41 = objc_opt_isKindOfClass();
      if ((v41 & 1) == 0)
      {
        defaultProperties4 = [objc_opt_class() defaultProperties];

        head3 = defaultProperties4;
      }

      [(OADProperties *)self->mHead changeParentPreservingEffectiveValues:head3];
      if ((v41 & 1) == 0 || [(OADLineEnd *)self->mHead isAnythingOverridden])
      {
        goto LABEL_62;
      }

      mHead = self->mHead;
    }

    self->mHead = 0;

LABEL_62:
  }

  if (self->mTail || ([(OADProperties *)self parent], v43 = objc_claimAutoreleasedReturnValue(), v43, v43 != valuesCopy))
  {
    tail = [(OADStroke *)self tail];
    v45 = objc_alloc_init(objc_opt_class());

    tail2 = [(OADStroke *)self tail];
    [v45 setParent:tail2];

    objc_storeStrong(&self->mTail, v45);
    tail3 = [valuesCopy possiblyInexistentOverrideForSelector:sel_isTailOverridden];

    if (tail3)
    {
      tail3 = [valuesCopy tail];
    }

    mTail = self->mTail;
    if (mTail != tail3)
    {
      objc_opt_class();
      v49 = objc_opt_isKindOfClass();
      if ((v49 & 1) == 0)
      {
        defaultProperties5 = [objc_opt_class() defaultProperties];

        tail3 = defaultProperties5;
      }

      [(OADProperties *)self->mTail changeParentPreservingEffectiveValues:tail3];
      if ((v49 & 1) == 0 || [(OADLineEnd *)self->mTail isAnythingOverridden])
      {
        goto LABEL_74;
      }

      mTail = self->mTail;
    }

    self->mTail = 0;

LABEL_74:
  }

  if ((*(self + 84) & 2) != 0 || ([(OADProperties *)self parent], v51 = objc_claimAutoreleasedReturnValue(), v51, v51 != valuesCopy))
  {
    [(OADStroke *)self width];
    v53 = v52;
    [valuesCopy width];
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

  if ((*(self + 84) & 4) != 0 || ([(OADProperties *)self parent], v55 = objc_claimAutoreleasedReturnValue(), v55, v55 != valuesCopy))
  {
    v56 = [(OADStroke *)self cap];
    if (v56 == [valuesCopy cap])
    {
      *(self + 84) &= ~4u;
    }

    else if ((*(self + 84) & 4) == 0)
    {
      [(OADStroke *)self setCap:[(OADStroke *)self cap]];
    }
  }

  if ((*(self + 84) & 8) != 0 || ([(OADProperties *)self parent], v57 = objc_claimAutoreleasedReturnValue(), v57, v57 != valuesCopy))
  {
    compoundType = [(OADStroke *)self compoundType];
    if (compoundType == [valuesCopy compoundType])
    {
      *(self + 84) &= ~8u;
    }

    else if ((*(self + 84) & 8) == 0)
    {
      [(OADStroke *)self setCompoundType:[(OADStroke *)self compoundType]];
    }
  }

  if ((*(self + 84) & 0x10) != 0 || ([(OADProperties *)self parent], v59 = objc_claimAutoreleasedReturnValue(), v59, v59 != valuesCopy))
  {
    penAlignment = [(OADStroke *)self penAlignment];
    if (penAlignment == [valuesCopy penAlignment])
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
  parent = [(OADProperties *)self parent];

  if (!parent)
  {
    return;
  }

  isMerged = [(OADProperties *)self isMerged];
  isMergedWithParent = [(OADProperties *)self isMergedWithParent];
  [(OADProperties *)self setMerged:0];
  [(OADProperties *)self setMergedWithParent:0];
  if ([(OADStroke *)self isColorOverridden])
  {
    parent2 = [(OADProperties *)self parent];
    color = [(OADStroke *)self color];
    color2 = [parent2 color];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)color removeUnnecessaryOverrides];
      v9 = objc_opt_class();
      if (v9 != objc_opt_class())
      {
        goto LABEL_9;
      }

      isMergedWithParent2 = [(objc_object *)color isMergedWithParent];
      [(objc_object *)color setMergedWithParent:0];
      isAnythingOverridden = [(objc_object *)color isAnythingOverridden];
      [(objc_object *)color setMergedWithParent:isMergedWithParent2];
      if (isAnythingOverridden)
      {
        goto LABEL_9;
      }
    }

    else if (!TCObjectEqual(color, color2))
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

  parent3 = [(OADProperties *)self parent];
  fill = [(OADStroke *)self fill];
  fill2 = [parent3 fill];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)fill removeUnnecessaryOverrides];
    v16 = objc_opt_class();
    if (v16 != objc_opt_class())
    {
      goto LABEL_17;
    }

    isMergedWithParent3 = [(objc_object *)fill isMergedWithParent];
    [(objc_object *)fill setMergedWithParent:0];
    isAnythingOverridden2 = [(objc_object *)fill isAnythingOverridden];
    [(objc_object *)fill setMergedWithParent:isMergedWithParent3];
    if (isAnythingOverridden2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (TCObjectEqual(fill, fill2))
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

  parent4 = [(OADProperties *)self parent];
  dash = [(OADStroke *)self dash];
  dash2 = [parent4 dash];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)dash removeUnnecessaryOverrides];
    v23 = objc_opt_class();
    if (v23 != objc_opt_class())
    {
      goto LABEL_25;
    }

    isMergedWithParent4 = [(objc_object *)dash isMergedWithParent];
    [(objc_object *)dash setMergedWithParent:0];
    isAnythingOverridden3 = [(objc_object *)dash isAnythingOverridden];
    [(objc_object *)dash setMergedWithParent:isMergedWithParent4];
    if (isAnythingOverridden3)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (TCObjectEqual(dash, dash2))
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

  parent5 = [(OADProperties *)self parent];
  join = [(OADStroke *)self join];
  join2 = [parent5 join];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)join removeUnnecessaryOverrides];
    v30 = objc_opt_class();
    if (v30 != objc_opt_class())
    {
      goto LABEL_33;
    }

    isMergedWithParent5 = [(objc_object *)join isMergedWithParent];
    [(objc_object *)join setMergedWithParent:0];
    isAnythingOverridden4 = [(objc_object *)join isAnythingOverridden];
    [(objc_object *)join setMergedWithParent:isMergedWithParent5];
    if (isAnythingOverridden4)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (TCObjectEqual(join, join2))
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

  parent6 = [(OADProperties *)self parent];
  head = [(OADStroke *)self head];
  head2 = [parent6 head];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)head removeUnnecessaryOverrides];
    v37 = objc_opt_class();
    if (v37 != objc_opt_class())
    {
      goto LABEL_41;
    }

    isMergedWithParent6 = [(objc_object *)head isMergedWithParent];
    [(objc_object *)head setMergedWithParent:0];
    isAnythingOverridden5 = [(objc_object *)head isAnythingOverridden];
    [(objc_object *)head setMergedWithParent:isMergedWithParent6];
    if (isAnythingOverridden5)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (TCObjectEqual(head, head2))
  {
LABEL_40:
    mHead = self->mHead;
    self->mHead = 0;
  }

LABEL_41:

LABEL_42:
  if ([(OADStroke *)self isTailOverridden])
  {
    parent7 = [(OADProperties *)self parent];
    tail = [(OADStroke *)self tail];
    tail2 = [parent7 tail];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)tail removeUnnecessaryOverrides];
      v44 = objc_opt_class();
      if (v44 != objc_opt_class())
      {
        goto LABEL_49;
      }

      isMergedWithParent7 = [(objc_object *)tail isMergedWithParent];
      [(objc_object *)tail setMergedWithParent:0];
      isAnythingOverridden6 = [(objc_object *)tail isAnythingOverridden];
      [(objc_object *)tail setMergedWithParent:isMergedWithParent7];
      if (isAnythingOverridden6)
      {
        goto LABEL_49;
      }
    }

    else if (!TCObjectEqual(tail, tail2))
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
    parent8 = [(OADProperties *)self parent];
    [(OADStroke *)self width];
    v50 = v49;
    [parent8 width];
    if (v50 == *&v51)
    {
      LODWORD(v51) = 0.75;
      [(OADStroke *)self setWidth:v51];
      *(self + 84) &= ~2u;
    }
  }

  if ([(OADStroke *)self isCapOverridden])
  {
    parent9 = [(OADProperties *)self parent];
    v53 = [(OADStroke *)self cap];
    if (v53 == [parent9 cap])
    {
      [(OADStroke *)self setCap:2];
      *(self + 84) &= ~4u;
    }
  }

  if ([(OADStroke *)self isCompoundTypeOverridden])
  {
    parent10 = [(OADProperties *)self parent];
    compoundType = [(OADStroke *)self compoundType];
    if (compoundType == [parent10 compoundType])
    {
      [(OADStroke *)self setCompoundType:0];
      *(self + 84) &= ~8u;
    }
  }

  if ([(OADStroke *)self isPenAlignmentOverridden])
  {
    parent11 = [(OADProperties *)self parent];
    penAlignment = [(OADStroke *)self penAlignment];
    if (penAlignment == [parent11 penAlignment])
    {
      [(OADStroke *)self setPenAlignment:0];
      *(self + 84) &= ~0x10u;
    }
  }

  [(OADProperties *)self setMerged:isMerged];
  [(OADProperties *)self setMergedWithParent:isMergedWithParent];
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

- (void)setParent:(id)parent
{
  parentCopy = parent;
  v12.receiver = self;
  v12.super_class = OADStroke;
  [(OADProperties *)&v12 setParent:parentCopy];
  if (self->mFill)
  {
    fill = [parentCopy fill];
    if ([fill isMemberOfClass:objc_opt_class()])
    {
      [(OADProperties *)self->mFill setParent:fill];
    }
  }

  if (self->mDash)
  {
    dash = [parentCopy dash];
    if ([dash isMemberOfClass:objc_opt_class()])
    {
      [(OADProperties *)self->mDash setParent:dash];
    }
  }

  if (self->mJoin)
  {
    join = [parentCopy join];
    if ([join isMemberOfClass:objc_opt_class()])
    {
      [(OADProperties *)self->mJoin setParent:join];
    }
  }

  mHead = self->mHead;
  if (mHead)
  {
    head = [parentCopy head];
    [(OADProperties *)mHead setParent:head];
  }

  mTail = self->mTail;
  if (mTail)
  {
    tail = [parentCopy tail];
    [(OADProperties *)mTail setParent:tail];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
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