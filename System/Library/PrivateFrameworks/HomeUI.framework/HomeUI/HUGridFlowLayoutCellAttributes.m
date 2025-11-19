@interface HUGridFlowLayoutCellAttributes
- (BOOL)isEqual:(id)a3;
- (HUBackgroundEffectViewGrouping)backgroundEffectViewGrouper;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HUGridFlowLayoutCellAttributes

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = HUGridFlowLayoutCellAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v7 copyWithZone:a3];
  v5 = [(HUGridFlowLayoutCellAttributes *)self backgroundEffectViewGrouper];
  [v4 setBackgroundEffectViewGrouper:v5];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HUGridFlowLayoutCellAttributes *)self backgroundEffectViewGrouper];
      v7 = [(HUGridFlowLayoutCellAttributes *)v5 backgroundEffectViewGrouper];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(HUGridFlowLayoutCellAttributes *)self backgroundEffectViewGrouper];
        v10 = [(HUGridFlowLayoutCellAttributes *)v5 backgroundEffectViewGrouper];
        v11 = [v9 isEqual:v10];

        if (!v11)
        {
          v12 = 0;
LABEL_10:

          goto LABEL_11;
        }
      }

      v14.receiver = self;
      v14.super_class = HUGridFlowLayoutCellAttributes;
      v12 = [(UICollectionViewLayoutAttributes *)&v14 isEqual:v5];
      goto LABEL_10;
    }

    v12 = 0;
  }

LABEL_11:

  return v12;
}

- (HUBackgroundEffectViewGrouping)backgroundEffectViewGrouper
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundEffectViewGrouper);

  return WeakRetained;
}

@end