@interface GKCollectionViewLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (GKCollectionViewLayoutAttributes)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation GKCollectionViewLayoutAttributes

- (GKCollectionViewLayoutAttributes)init
{
  v3.receiver = self;
  v3.super_class = GKCollectionViewLayoutAttributes;
  result = [(UICollectionViewLayoutAttributes *)&v3 init];
  if (result)
  {
    result->_allSectionItemsVisible = 1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = GKCollectionViewLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setAllSectionItemsVisible:self->_allSectionItemsVisible];
    [v5 setIsPinned:self->_isPinned];
    [v5 setIsPartOfGlobalPinningGroup:self->_isPartOfGlobalPinningGroup];
    [v5 setUnpinnedY:self->_unpinnedY];
    [v5 setDataSource:self->_dataSource];
    [v5 setSectionMetrics:self->_sectionMetrics];
    [v5 setSupplementaryMetrics:self->_supplementaryMetrics];
    [v5 setCurrentVisibleItemCount:self->_currentVisibleItemCount];
    [v5 setCurrentTotalItemCount:self->_currentTotalItemCount];
    [v5 setMaxTotalItemCount:self->_maxTotalItemCount];
    [v5 setGridLayoutLocation:self->_gridLayoutLocation];
    [v5 setDoesAbutLeftOfCollectionView:self->_doesAbutLeftOfCollectionView];
    [v5 setLeadingMargin:self->_leadingMargin];
    [v5 setTrailingMargin:self->_trailingMargin];
  }

  return v5;
}

- (id)description
{
  v28 = MEMORY[0x277CCACA8];
  v31.receiver = self;
  v31.super_class = GKCollectionViewLayoutAttributes;
  v30 = [(UICollectionViewLayoutAttributes *)&v31 description];
  leadingMargin = self->_leadingMargin;
  if (leadingMargin == 0.0)
  {
    v29 = &stru_28612D290;
  }

  else
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = _gkBeautifyVariableName();
    v26 = [MEMORY[0x277CCABB0] numberWithDouble:self->_leadingMargin];
    v27 = v5;
    v29 = [v4 stringWithFormat:@" %@: %@", v5, v26];
  }

  if (self->_isPinned)
  {
    v6 = @"pinned";
  }

  else
  {
    v6 = &stru_28612D290;
  }

  if (self->_allSectionItemsVisible)
  {
    v7 = @"allvis";
  }

  else
  {
    v7 = &stru_28612D290;
  }

  dataSource = self->_dataSource;
  if (dataSource)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = _gkBeautifyVariableName();
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ %p>", objc_opt_class(), self->_dataSource];
    v25 = v10;
    v11 = [v9 stringWithFormat:@" %@: %@", v10, v24];
  }

  else
  {
    v11 = &stru_28612D290;
  }

  if (self->_sectionMetrics)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = _gkBeautifyVariableName();
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ %p>", objc_opt_class(), self->_sectionMetrics];
    v15 = [v12 stringWithFormat:@" %@: %@", v13, v14];
    v22 = v7;
    v16 = v29;
    v20 = v6;
    v17 = v30;
    v18 = [v28 stringWithFormat:@"%@%@%@%@%@%@%@", v30, v29, v20, v22, &stru_28612D290, v11, v15];

    if (!dataSource)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v23 = v7;
  v16 = v29;
  v21 = v6;
  v17 = v30;
  v18 = [v28 stringWithFormat:@"%@%@%@%@%@%@%@", v30, v29, v21, v23, &stru_28612D290, v11, &stru_28612D290];
  if (dataSource)
  {
LABEL_15:
  }

LABEL_16:
  if (leadingMargin != 0.0)
  {
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26.receiver = self;
    v26.super_class = GKCollectionViewLayoutAttributes;
    v5 = [(UICollectionViewLayoutAttributes *)&v26 isEqual:equalCopy];
    v6 = equalCopy;
    maxTotalItemCount = [(GKCollectionViewLayoutAttributes *)self maxTotalItemCount];
    if (maxTotalItemCount == [v6 maxTotalItemCount])
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }

    currentVisibleItemCount = [(GKCollectionViewLayoutAttributes *)self currentVisibleItemCount];
    if (currentVisibleItemCount != [v6 currentVisibleItemCount])
    {
      v8 = 0;
    }

    currentTotalItemCount = [(GKCollectionViewLayoutAttributes *)self currentTotalItemCount];
    if (currentTotalItemCount == [v6 currentTotalItemCount])
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    [(GKCollectionViewLayoutAttributes *)self leadingMargin];
    v13 = v12;
    [v6 leadingMargin];
    if (v13 != v14)
    {
      v11 = 0;
    }

    [(GKCollectionViewLayoutAttributes *)self trailingMargin];
    v16 = v15;
    [v6 trailingMargin];
    if (v16 == v17)
    {
      v18 = v11;
    }

    else
    {
      v18 = 0;
    }

    sectionMetrics = [(GKCollectionViewLayoutAttributes *)self sectionMetrics];
    [sectionMetrics calculatedItemHeight];
    v21 = v20;
    sectionMetrics2 = [v6 sectionMetrics];

    [sectionMetrics2 calculatedItemHeight];
    v24 = v21 == v23 && v18;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = GKCollectionViewLayoutAttributes;
  return [(UICollectionViewLayoutAttributes *)&v3 hash];
}

@end