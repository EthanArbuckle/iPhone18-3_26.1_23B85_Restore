@interface HUGridFlowLayoutCellAttributes
- (BOOL)isEqual:(id)equal;
- (HUBackgroundEffectViewGrouping)backgroundEffectViewGrouper;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUGridFlowLayoutCellAttributes

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = HUGridFlowLayoutCellAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v7 copyWithZone:zone];
  backgroundEffectViewGrouper = [(HUGridFlowLayoutCellAttributes *)self backgroundEffectViewGrouper];
  [v4 setBackgroundEffectViewGrouper:backgroundEffectViewGrouper];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      backgroundEffectViewGrouper = [(HUGridFlowLayoutCellAttributes *)self backgroundEffectViewGrouper];
      backgroundEffectViewGrouper2 = [(HUGridFlowLayoutCellAttributes *)v5 backgroundEffectViewGrouper];
      v8 = backgroundEffectViewGrouper2;
      if (backgroundEffectViewGrouper == backgroundEffectViewGrouper2)
      {
      }

      else
      {
        backgroundEffectViewGrouper3 = [(HUGridFlowLayoutCellAttributes *)self backgroundEffectViewGrouper];
        backgroundEffectViewGrouper4 = [(HUGridFlowLayoutCellAttributes *)v5 backgroundEffectViewGrouper];
        v11 = [backgroundEffectViewGrouper3 isEqual:backgroundEffectViewGrouper4];

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