@interface OADDrawableProperties
- (BOOL)isEqual:(id)a3;
- (OADDrawableProperties)initWithDefaults;
- (id)description;
- (id)orientedBounds;
- (id)orientedBoundsForCharts;
- (unint64_t)hash;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3;
- (void)removeUnnecessaryOverrides;
- (void)setAltDescription:(id)a3;
- (void)setAltTitle:(id)a3;
- (void)setAspectRatioLocked:(BOOL)a3;
- (void)setWrdInline:(BOOL)a3;
@end

@implementation OADDrawableProperties

- (OADDrawableProperties)initWithDefaults
{
  v6.receiver = self;
  v6.super_class = OADDrawableProperties;
  v2 = [(OADProperties *)&v6 initWithDefaults];
  if (v2)
  {
    v3 = [OADOrientedBounds alloc];
    v4 = [(OADOrientedBounds *)v3 initWithBounds:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(OADDrawableProperties *)v2 setOrientedBounds:v4];
    [(OADDrawableProperties *)v2 setAspectRatioLocked:0];
    [(OADDrawableProperties *)v2 setWrdInline:0];
  }

  return v2;
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
  v3 = [(OADProperties *)self parent];

  if (!v3)
  {
    return;
  }

  v4 = [(OADProperties *)self isMerged];
  v5 = [(OADProperties *)self isMergedWithParent];
  [(OADProperties *)self setMerged:0];
  [(OADProperties *)self setMergedWithParent:0];
  if ([(OADDrawableProperties *)self hasAspectRatioLocked])
  {
    v6 = [(OADProperties *)self parent];
    v7 = [(OADDrawableProperties *)self isAspectRatioLocked];
    if (v7 == [v6 isAspectRatioLocked])
    {
      [(OADDrawableProperties *)self setAspectRatioLocked:0];
      *(self + 64) &= ~1u;
    }
  }

  if ([(OADDrawableProperties *)self hasOrientedBounds])
  {
    v8 = [(OADProperties *)self parent];
    v9 = [(OADDrawableProperties *)self orientedBounds];
    v10 = [v8 orientedBounds];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)v9 removeUnnecessaryOverrides];
      v11 = objc_opt_class();
      if (v11 != objc_opt_class())
      {
        goto LABEL_13;
      }

      v12 = [(objc_object *)v9 isMergedWithParent];
      [(objc_object *)v9 setMergedWithParent:0];
      v13 = [(objc_object *)v9 isAnythingOverridden];
      [(objc_object *)v9 setMergedWithParent:v12];
      if (v13)
      {
        goto LABEL_13;
      }
    }

    else if (!TCObjectEqual(v9, v10))
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

  v15 = [(OADProperties *)self parent];
  v16 = [(OADDrawableProperties *)self clickHyperlink];
  v17 = [v15 clickHyperlink];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)v16 removeUnnecessaryOverrides];
    v18 = objc_opt_class();
    if (v18 != objc_opt_class())
    {
      goto LABEL_21;
    }

    v19 = [(objc_object *)v16 isMergedWithParent];
    [(objc_object *)v16 setMergedWithParent:0];
    v20 = [(objc_object *)v16 isAnythingOverridden];
    [(objc_object *)v16 setMergedWithParent:v19];
    if (v20)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (TCObjectEqual(v16, v17))
  {
LABEL_20:
    mClickHyperlink = self->mClickHyperlink;
    self->mClickHyperlink = 0;
  }

LABEL_21:

LABEL_22:
  if ([(OADDrawableProperties *)self hasHoverHyperlink])
  {
    v22 = [(OADProperties *)self parent];
    v23 = [(OADDrawableProperties *)self hoverHyperlink];
    v24 = [v22 hoverHyperlink];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)v23 removeUnnecessaryOverrides];
      v25 = objc_opt_class();
      if (v25 != objc_opt_class())
      {
        goto LABEL_29;
      }

      v26 = [(objc_object *)v23 isMergedWithParent];
      [(objc_object *)v23 setMergedWithParent:0];
      v27 = [(objc_object *)v23 isAnythingOverridden];
      [(objc_object *)v23 setMergedWithParent:v26];
      if (v27)
      {
        goto LABEL_29;
      }
    }

    else if (!TCObjectEqual(v23, v24))
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
    v29 = [(OADProperties *)self parent];
    v30 = [(OADDrawableProperties *)self isWrdInline];
    if (v30 == [v29 isWrdInline])
    {
      [(OADDrawableProperties *)self setWrdInline:0];
      *(self + 64) &= ~4u;
    }
  }

  [(OADProperties *)self setMerged:v4];
  [(OADProperties *)self setMergedWithParent:v5];
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

- (void)setAspectRatioLocked:(BOOL)a3
{
  *(self + 64) |= 1u;
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 64) = *(self + 64) & 0xFD | v3;
}

- (void)setWrdInline:(BOOL)a3
{
  *(self + 64) |= 4u;
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 64) = *(self + 64) & 0xF7 | v3;
}

- (void)setAltTitle:(id)a3
{
  v5 = a3;
  if (self->mTitle != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mTitle, a3);
    v5 = v6;
  }
}

- (void)setAltDescription:(id)a3
{
  v5 = a3;
  if (self->mDescription != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mDescription, a3);
    v5 = v6;
  }
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = OADDrawableProperties;
  [(OADProperties *)&v37 fixPropertiesForChangingParentPreservingEffectiveValues:v4];
  if ([(OADDrawableProperties *)self hasOrientedBounds]|| ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != v4))
  {
    v6 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasOrientedBounds];

    if (v6)
    {
      v7 = [(OADDrawableProperties *)self orientedBounds];
    }

    else
    {
      v7 = 0;
    }

    v8 = [v4 possiblyInexistentOverrideForSelector:sel_hasOrientedBounds];

    if (v8)
    {
      v9 = [v4 orientedBounds];
    }

    else
    {
      v9 = 0;
    }

    v10 = TCObjectEqual(v7, v9);
    mOrientedBounds = self->mOrientedBounds;
    if (v10)
    {
      self->mOrientedBounds = 0;
    }

    else if (!mOrientedBounds && v6)
    {
      [(OADDrawableProperties *)self setOrientedBounds:v7];
    }
  }

  if ([(OADDrawableProperties *)self hasClickHyperlink]|| ([(OADProperties *)self parent], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 != v4))
  {
    v13 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasClickHyperlink];

    if (v13)
    {
      v14 = [(OADDrawableProperties *)self clickHyperlink];
    }

    else
    {
      v14 = 0;
    }

    v15 = [v4 possiblyInexistentOverrideForSelector:sel_hasClickHyperlink];

    if (v15)
    {
      v16 = [v4 clickHyperlink];
    }

    else
    {
      v16 = 0;
    }

    v17 = TCObjectEqual(v14, v16);
    mClickHyperlink = self->mClickHyperlink;
    if (v17)
    {
      self->mClickHyperlink = 0;
    }

    else if (!mClickHyperlink && v13)
    {
      [(OADDrawableProperties *)self setClickHyperlink:v14];
    }
  }

  if ([(OADDrawableProperties *)self hasHoverHyperlink]|| ([(OADProperties *)self parent], v19 = objc_claimAutoreleasedReturnValue(), v19, v19 != v4))
  {
    v20 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasHoverHyperlink];

    if (v20)
    {
      v21 = [(OADDrawableProperties *)self hoverHyperlink];
    }

    else
    {
      v21 = 0;
    }

    v22 = [v4 possiblyInexistentOverrideForSelector:sel_hasHoverHyperlink];

    if (v22)
    {
      v23 = [v4 hoverHyperlink];
    }

    else
    {
      v23 = 0;
    }

    v24 = TCObjectEqual(v21, v23);
    mHoverHyperlink = self->mHoverHyperlink;
    if (v24)
    {
      self->mHoverHyperlink = 0;
    }

    else if (!mHoverHyperlink && v20)
    {
      [(OADDrawableProperties *)self setHoverHyperlink:v21];
    }
  }

  if ([(OADDrawableProperties *)self hasAltTitle]|| ([(OADProperties *)self parent], v26 = objc_claimAutoreleasedReturnValue(), v26, v26 != v4))
  {
    v27 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasAltTitle];

    if (v27)
    {
      v28 = [(OADDrawableProperties *)self altTitle];
    }

    else
    {
      v28 = 0;
    }

    v29 = [v4 possiblyInexistentOverrideForSelector:sel_hasAltTitle];

    if (v29)
    {
      v30 = [v4 altTitle];
    }

    else
    {
      v30 = 0;
    }

    v31 = TCObjectEqual(v28, v30);
    mTitle = self->mTitle;
    if (v31)
    {
      self->mTitle = 0;
    }

    else if (!mTitle && v27)
    {
      [(OADDrawableProperties *)self setAltTitle:v28];
    }
  }

  if ((*(self + 64) & 2) != 0 || ([(OADProperties *)self parent], v33 = objc_claimAutoreleasedReturnValue(), v33, v33 != v4))
  {
    v34 = [(OADDrawableProperties *)self isAspectRatioLocked];
    if (v34 == [v4 isAspectRatioLocked])
    {
      *(self + 64) &= ~2u;
    }

    else if ((*(self + 64) & 2) == 0)
    {
      [(OADDrawableProperties *)self setAspectRatioLocked:[(OADDrawableProperties *)self isAspectRatioLocked]];
    }
  }

  if ((*(self + 64) & 4) != 0 || ([(OADProperties *)self parent], v35 = objc_claimAutoreleasedReturnValue(), v35, v35 != v4))
  {
    v36 = [(OADDrawableProperties *)self isWrdInline];
    if (v36 == [v4 isWrdInline])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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