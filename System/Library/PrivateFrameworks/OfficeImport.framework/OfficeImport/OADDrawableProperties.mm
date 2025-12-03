@interface OADDrawableProperties
- (BOOL)isEqual:(id)equal;
- (OADDrawableProperties)initWithDefaults;
- (id)description;
- (id)orientedBounds;
- (id)orientedBoundsForCharts;
- (unint64_t)hash;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values;
- (void)removeUnnecessaryOverrides;
- (void)setAltDescription:(id)description;
- (void)setAltTitle:(id)title;
- (void)setAspectRatioLocked:(BOOL)locked;
- (void)setWrdInline:(BOOL)inline;
@end

@implementation OADDrawableProperties

- (OADDrawableProperties)initWithDefaults
{
  v6.receiver = self;
  v6.super_class = OADDrawableProperties;
  initWithDefaults = [(OADProperties *)&v6 initWithDefaults];
  if (initWithDefaults)
  {
    v3 = [OADOrientedBounds alloc];
    v4 = [(OADOrientedBounds *)v3 initWithBounds:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(OADDrawableProperties *)initWithDefaults setOrientedBounds:v4];
    [(OADDrawableProperties *)initWithDefaults setAspectRatioLocked:0];
    [(OADDrawableProperties *)initWithDefaults setWrdInline:0];
  }

  return initWithDefaults;
}

- (id)orientedBounds
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasOrientedBounds];
  v3 = v2[3];
  v4 = v3;

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
  if ([(OADDrawableProperties *)self hasAspectRatioLocked])
  {
    parent2 = [(OADProperties *)self parent];
    isAspectRatioLocked = [(OADDrawableProperties *)self isAspectRatioLocked];
    if (isAspectRatioLocked == [parent2 isAspectRatioLocked])
    {
      [(OADDrawableProperties *)self setAspectRatioLocked:0];
      *(self + 64) &= ~1u;
    }
  }

  if ([(OADDrawableProperties *)self hasOrientedBounds])
  {
    parent3 = [(OADProperties *)self parent];
    orientedBounds = [(OADDrawableProperties *)self orientedBounds];
    orientedBounds2 = [parent3 orientedBounds];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)orientedBounds removeUnnecessaryOverrides];
      v11 = objc_opt_class();
      if (v11 != objc_opt_class())
      {
        goto LABEL_13;
      }

      isMergedWithParent2 = [(objc_object *)orientedBounds isMergedWithParent];
      [(objc_object *)orientedBounds setMergedWithParent:0];
      isAnythingOverridden = [(objc_object *)orientedBounds isAnythingOverridden];
      [(objc_object *)orientedBounds setMergedWithParent:isMergedWithParent2];
      if (isAnythingOverridden)
      {
        goto LABEL_13;
      }
    }

    else if (!TCObjectEqual(orientedBounds, orientedBounds2))
    {
LABEL_13:

      goto LABEL_14;
    }

    mOrientedBounds = self->mOrientedBounds;
    self->mOrientedBounds = 0;

    goto LABEL_13;
  }

LABEL_14:
  if (![(OADDrawableProperties *)self hasClickHyperlink])
  {
    goto LABEL_22;
  }

  parent4 = [(OADProperties *)self parent];
  clickHyperlink = [(OADDrawableProperties *)self clickHyperlink];
  clickHyperlink2 = [parent4 clickHyperlink];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)clickHyperlink removeUnnecessaryOverrides];
    v18 = objc_opt_class();
    if (v18 != objc_opt_class())
    {
      goto LABEL_21;
    }

    isMergedWithParent3 = [(objc_object *)clickHyperlink isMergedWithParent];
    [(objc_object *)clickHyperlink setMergedWithParent:0];
    isAnythingOverridden2 = [(objc_object *)clickHyperlink isAnythingOverridden];
    [(objc_object *)clickHyperlink setMergedWithParent:isMergedWithParent3];
    if (isAnythingOverridden2)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (TCObjectEqual(clickHyperlink, clickHyperlink2))
  {
LABEL_20:
    mClickHyperlink = self->mClickHyperlink;
    self->mClickHyperlink = 0;
  }

LABEL_21:

LABEL_22:
  if ([(OADDrawableProperties *)self hasHoverHyperlink])
  {
    parent5 = [(OADProperties *)self parent];
    hoverHyperlink = [(OADDrawableProperties *)self hoverHyperlink];
    hoverHyperlink2 = [parent5 hoverHyperlink];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)hoverHyperlink removeUnnecessaryOverrides];
      v25 = objc_opt_class();
      if (v25 != objc_opt_class())
      {
        goto LABEL_29;
      }

      isMergedWithParent4 = [(objc_object *)hoverHyperlink isMergedWithParent];
      [(objc_object *)hoverHyperlink setMergedWithParent:0];
      isAnythingOverridden3 = [(objc_object *)hoverHyperlink isAnythingOverridden];
      [(objc_object *)hoverHyperlink setMergedWithParent:isMergedWithParent4];
      if (isAnythingOverridden3)
      {
        goto LABEL_29;
      }
    }

    else if (!TCObjectEqual(hoverHyperlink, hoverHyperlink2))
    {
LABEL_29:

      goto LABEL_30;
    }

    mHoverHyperlink = self->mHoverHyperlink;
    self->mHoverHyperlink = 0;

    goto LABEL_29;
  }

LABEL_30:
  if ([(OADDrawableProperties *)self hasWrdInline])
  {
    parent6 = [(OADProperties *)self parent];
    isWrdInline = [(OADDrawableProperties *)self isWrdInline];
    if (isWrdInline == [parent6 isWrdInline])
    {
      [(OADDrawableProperties *)self setWrdInline:0];
      *(self + 64) &= ~4u;
    }
  }

  [(OADProperties *)self setMerged:isMerged];
  [(OADProperties *)self setMergedWithParent:isMergedWithParent];
  v31.receiver = self;
  v31.super_class = OADDrawableProperties;
  [(OADProperties *)&v31 removeUnnecessaryOverrides];
}

- (id)orientedBoundsForCharts
{
  v2 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasOrientedBounds];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 24);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAspectRatioLocked:(BOOL)locked
{
  *(self + 64) |= 1u;
  if (locked)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 64) = *(self + 64) & 0xFD | v3;
}

- (void)setWrdInline:(BOOL)inline
{
  *(self + 64) |= 4u;
  if (inline)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 64) = *(self + 64) & 0xF7 | v3;
}

- (void)setAltTitle:(id)title
{
  titleCopy = title;
  if (self->mTitle != titleCopy)
  {
    v6 = titleCopy;
    objc_storeStrong(&self->mTitle, title);
    titleCopy = v6;
  }
}

- (void)setAltDescription:(id)description
{
  descriptionCopy = description;
  if (self->mDescription != descriptionCopy)
  {
    v6 = descriptionCopy;
    objc_storeStrong(&self->mDescription, description);
    descriptionCopy = v6;
  }
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  v37.receiver = self;
  v37.super_class = OADDrawableProperties;
  [(OADProperties *)&v37 fixPropertiesForChangingParentPreservingEffectiveValues:valuesCopy];
  if ([(OADDrawableProperties *)self hasOrientedBounds]|| ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != valuesCopy))
  {
    v6 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasOrientedBounds];

    if (v6)
    {
      orientedBounds = [(OADDrawableProperties *)self orientedBounds];
    }

    else
    {
      orientedBounds = 0;
    }

    v8 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasOrientedBounds];

    if (v8)
    {
      orientedBounds2 = [valuesCopy orientedBounds];
    }

    else
    {
      orientedBounds2 = 0;
    }

    v10 = TCObjectEqual(orientedBounds, orientedBounds2);
    mOrientedBounds = self->mOrientedBounds;
    if (v10)
    {
      self->mOrientedBounds = 0;
    }

    else if (!mOrientedBounds && v6)
    {
      [(OADDrawableProperties *)self setOrientedBounds:orientedBounds];
    }
  }

  if ([(OADDrawableProperties *)self hasClickHyperlink]|| ([(OADProperties *)self parent], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 != valuesCopy))
  {
    v13 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasClickHyperlink];

    if (v13)
    {
      clickHyperlink = [(OADDrawableProperties *)self clickHyperlink];
    }

    else
    {
      clickHyperlink = 0;
    }

    v15 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasClickHyperlink];

    if (v15)
    {
      clickHyperlink2 = [valuesCopy clickHyperlink];
    }

    else
    {
      clickHyperlink2 = 0;
    }

    v17 = TCObjectEqual(clickHyperlink, clickHyperlink2);
    mClickHyperlink = self->mClickHyperlink;
    if (v17)
    {
      self->mClickHyperlink = 0;
    }

    else if (!mClickHyperlink && v13)
    {
      [(OADDrawableProperties *)self setClickHyperlink:clickHyperlink];
    }
  }

  if ([(OADDrawableProperties *)self hasHoverHyperlink]|| ([(OADProperties *)self parent], v19 = objc_claimAutoreleasedReturnValue(), v19, v19 != valuesCopy))
  {
    v20 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasHoverHyperlink];

    if (v20)
    {
      hoverHyperlink = [(OADDrawableProperties *)self hoverHyperlink];
    }

    else
    {
      hoverHyperlink = 0;
    }

    v22 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasHoverHyperlink];

    if (v22)
    {
      hoverHyperlink2 = [valuesCopy hoverHyperlink];
    }

    else
    {
      hoverHyperlink2 = 0;
    }

    v24 = TCObjectEqual(hoverHyperlink, hoverHyperlink2);
    mHoverHyperlink = self->mHoverHyperlink;
    if (v24)
    {
      self->mHoverHyperlink = 0;
    }

    else if (!mHoverHyperlink && v20)
    {
      [(OADDrawableProperties *)self setHoverHyperlink:hoverHyperlink];
    }
  }

  if ([(OADDrawableProperties *)self hasAltTitle]|| ([(OADProperties *)self parent], v26 = objc_claimAutoreleasedReturnValue(), v26, v26 != valuesCopy))
  {
    v27 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasAltTitle];

    if (v27)
    {
      altTitle = [(OADDrawableProperties *)self altTitle];
    }

    else
    {
      altTitle = 0;
    }

    v29 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasAltTitle];

    if (v29)
    {
      altTitle2 = [valuesCopy altTitle];
    }

    else
    {
      altTitle2 = 0;
    }

    v31 = TCObjectEqual(altTitle, altTitle2);
    mTitle = self->mTitle;
    if (v31)
    {
      self->mTitle = 0;
    }

    else if (!mTitle && v27)
    {
      [(OADDrawableProperties *)self setAltTitle:altTitle];
    }
  }

  if ((*(self + 64) & 2) != 0 || ([(OADProperties *)self parent], v33 = objc_claimAutoreleasedReturnValue(), v33, v33 != valuesCopy))
  {
    isAspectRatioLocked = [(OADDrawableProperties *)self isAspectRatioLocked];
    if (isAspectRatioLocked == [valuesCopy isAspectRatioLocked])
    {
      *(self + 64) &= ~2u;
    }

    else if ((*(self + 64) & 2) == 0)
    {
      [(OADDrawableProperties *)self setAspectRatioLocked:[(OADDrawableProperties *)self isAspectRatioLocked]];
    }
  }

  if ((*(self + 64) & 4) != 0 || ([(OADProperties *)self parent], v35 = objc_claimAutoreleasedReturnValue(), v35, v35 != valuesCopy))
  {
    isWrdInline = [(OADDrawableProperties *)self isWrdInline];
    if (isWrdInline == [valuesCopy isWrdInline])
    {
      *(self + 64) &= ~4u;
    }

    else if ((*(self + 64) & 4) == 0)
    {
      [(OADDrawableProperties *)self setWrdInline:[(OADDrawableProperties *)self isWrdInline]];
    }
  }
}

- (unint64_t)hash
{
  v3 = [(OADOrientedBounds *)self->mOrientedBounds hash];
  v4 = [(OADHyperlink *)self->mClickHyperlink hash];
  v5 = [(OADHyperlink *)self->mHoverHyperlink hash];
  v6 = (*(self + 64) >> 1) & 1;
  v7 = (*(self + 64) >> 3) & 1;
  v9.receiver = self;
  v9.super_class = OADDrawableProperties;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(OADProperties *)&v9 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = [(OADDrawableProperties *)self hash];
    if (v6 == [v5 hash] && (v7 = objc_msgSend(v5, "hasOrientedBounds"), v7 == -[OADDrawableProperties hasOrientedBounds](self, "hasOrientedBounds")) && (!objc_msgSend(v5, "hasOrientedBounds") || (objc_msgSend(v5, "orientedBounds"), v8 = objc_claimAutoreleasedReturnValue(), -[OADDrawableProperties orientedBounds](self, "orientedBounds"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, (v10 & 1) != 0)) && (objc_msgSend(v5, "clickHyperlink"), v11 = objc_claimAutoreleasedReturnValue(), -[OADDrawableProperties clickHyperlink](self, "clickHyperlink"), v12 = objc_claimAutoreleasedReturnValue(), v13 = (v11 != 0) ^ (v12 == 0), v12, v11, (v13 & 1) != 0) && ((objc_msgSend(v5, "clickHyperlink"), (v14 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_msgSend(v5, "clickHyperlink"), v15 = objc_claimAutoreleasedReturnValue(), -[OADDrawableProperties clickHyperlink](self, "clickHyperlink"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqual:", v16), v16, v15, v14, (v17 & 1) != 0)) && (objc_msgSend(v5, "hoverHyperlink"), v18 = objc_claimAutoreleasedReturnValue(), -[OADDrawableProperties hoverHyperlink](self, "hoverHyperlink"), v19 = objc_claimAutoreleasedReturnValue(), v20 = (v18 != 0) ^ (v19 == 0), v19, v18, (v20 & 1) != 0) && ((objc_msgSend(v5, "hoverHyperlink"), (v21 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_msgSend(v5, "hoverHyperlink"), v22 = objc_claimAutoreleasedReturnValue(), -[OADDrawableProperties hoverHyperlink](self, "hoverHyperlink"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "isEqual:", v23), v23, v22, v21, (v24 & 1) != 0)) && (v25 = objc_msgSend(v5, "hasAspectRatioLocked"), v25 == -[OADDrawableProperties hasAspectRatioLocked](self, "hasAspectRatioLocked")) && (!objc_msgSend(v5, "hasAspectRatioLocked") || (v26 = objc_msgSend(v5, "isAspectRatioLocked"), v26 == -[OADDrawableProperties isAspectRatioLocked](self, "isAspectRatioLocked"))) && (v27 = objc_msgSend(v5, "hasWrdInline"), v27 == -[OADDrawableProperties hasWrdInline](self, "hasWrdInline")) && (!objc_msgSend(v5, "hasWrdInline") || (v30 = objc_msgSend(v5, "isWrdInline"), v30 == -[OADDrawableProperties isWrdInline](self, "isWrdInline"))))
    {
      v31.receiver = self;
      v31.super_class = OADDrawableProperties;
      v28 = [(OADProperties *)&v31 isEqual:v5];
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

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADDrawableProperties;
  v2 = [(OADProperties *)&v4 description];

  return v2;
}

@end