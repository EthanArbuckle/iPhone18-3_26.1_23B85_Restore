@interface GKSectionPresentationData
- (GKSectionPresentationData)initWithSection:(int64_t)section presentationData:(id)data;
- (double)itemsMinY;
- (double)showMoreMaxY;
- (id)description;
- (void)updateWithLayoutAttributes:(id)attributes supplementaryLocation:(unint64_t)location;
@end

@implementation GKSectionPresentationData

- (GKSectionPresentationData)initWithSection:(int64_t)section presentationData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = GKSectionPresentationData;
  v7 = [(GKSectionPresentationData *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_showMoreMaxY = -1.0;
    v7->_itemsMinY = 1.79769313e308;
    v7->_minY = 1.79769313e308;
    v7->_section = section;
    v7->_headerMinY = 1.79769313e308;
    v7->_footerMinY = 1.79769313e308;
    if (dataCopy)
    {
      [dataCopy maxY];
      v8->_maxY = v9;
    }
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v54 = [MEMORY[0x277CCABB0] numberWithInteger:self->_section];
  v51 = v3;
  v57 = [v3 stringWithFormat:@" section: %@", v54];
  v4 = MEMORY[0x277CCACA8];
  minY = self->_minY;
  if (minY == 1.79769313e308)
  {
    v6 = &stru_28612D290;
  }

  else
  {
    v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_minY];
    v45 = [MEMORY[0x277CCABB0] numberWithDouble:self->_maxY];
    v46 = v3;
    v6 = [v4 stringWithFormat:@" %@(%@-%@)", @"y", v3, v45];
  }

  headerMinY = self->_headerMinY;
  if (headerMinY == 1.79769313e308)
  {
    v9 = &stru_28612D290;
  }

  else
  {
    v3 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_headerMinY];
    v43 = [MEMORY[0x277CCABB0] numberWithDouble:self->_headerMaxY];
    v44 = v8;
    v9 = [v3 stringWithFormat:@" %@(%@-%@)", @"hdrY", v8, v43];
  }

  itemsMinY = self->_itemsMinY;
  if (itemsMinY == 1.79769313e308)
  {
    v12 = &stru_28612D290;
  }

  else
  {
    v3 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_itemsMinY];
    v41 = [MEMORY[0x277CCABB0] numberWithDouble:self->_itemsMaxY];
    v42 = v11;
    v12 = [v3 stringWithFormat:@" %@(%@-%@)", @"itemsY", v11, v41];
  }

  footerMinY = self->_footerMinY;
  if (footerMinY == 1.79769313e308)
  {
    v15 = &stru_28612D290;
  }

  else
  {
    v3 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_footerMinY];
    v39 = [MEMORY[0x277CCABB0] numberWithDouble:self->_footerMaxY];
    v40 = v14;
    v15 = [v3 stringWithFormat:@" %@(%@-%@)", @"ftrY", v14, v39];
  }

  maxY = self->_maxY;
  showMoreMaxY = self->_showMoreMaxY;
  if (showMoreMaxY <= maxY)
  {
    v19 = &stru_28612D290;
  }

  else
  {
    v3 = MEMORY[0x277CCACA8];
    v18 = _gkBeautifyVariableName();
    v33 = [MEMORY[0x277CCABB0] numberWithDouble:self->_showMoreMaxY];
    v34 = v18;
    v19 = [v3 stringWithFormat:@" %@: %@", v18, v33];
  }

  v47 = v19;
  v56 = [v4 stringWithFormat:@" |%@%@%@%@%@|", v6, v9, v12, v15, v19];
  numHeaders = self->_numHeaders;
  if (numHeaders)
  {
    v3 = MEMORY[0x277CCACA8];
    v20 = _gkBeautifyVariableName();
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numHeaders];
    v38 = v20;
    v55 = [v3 stringWithFormat:@" %@: %@", v20, v37];
  }

  else
  {
    v55 = &stru_28612D290;
  }

  v49 = v15;
  v50 = v12;
  numItems = self->_numItems;
  if (numItems)
  {
    v3 = MEMORY[0x277CCACA8];
    v22 = _gkBeautifyVariableName();
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numItems];
    v36 = v22;
    v23 = [v3 stringWithFormat:@" %@: %@", v22, v35];
  }

  else
  {
    v23 = &stru_28612D290;
  }

  v52 = v9;
  v53 = v6;
  numFooters = self->_numFooters;
  if (numFooters)
  {
    v25 = MEMORY[0x277CCACA8];
    v9 = _gkBeautifyVariableName();
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numFooters];
    v26 = [v25 stringWithFormat:@" %@: %@", v9, v3];
  }

  else
  {
    v26 = &stru_28612D290;
  }

  if (self->_numOverlays)
  {
    v27 = MEMORY[0x277CCACA8];
    v28 = _gkBeautifyVariableName();
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numOverlays];
    v30 = [v27 stringWithFormat:@" %@: %@", v28, v29];
    v31 = [v51 stringWithFormat:@"%@%@%@%@%@%@", v57, v56, v55, v23, v26, v30];
  }

  else
  {
    v31 = [v51 stringWithFormat:@"%@%@%@%@%@%@", v57, v56, v55, v23, v26, &stru_28612D290];
  }

  if (numFooters)
  {
  }

  if (numItems)
  {
  }

  if (numHeaders)
  {
  }

  if (showMoreMaxY > maxY)
  {
  }

  if (footerMinY != 1.79769313e308)
  {
  }

  if (itemsMinY != 1.79769313e308)
  {
  }

  if (headerMinY != 1.79769313e308)
  {
  }

  if (minY != 1.79769313e308)
  {
  }

  return v31;
}

- (double)showMoreMaxY
{
  result = self->_showMoreMaxY;
  if (result < 0.0)
  {
    return self->_maxY;
  }

  return result;
}

- (double)itemsMinY
{
  result = self->_itemsMinY;
  if (result == 1.79769313e308)
  {
    return self->_headerMaxY;
  }

  return result;
}

- (void)updateWithLayoutAttributes:(id)attributes supplementaryLocation:(unint64_t)location
{
  attributesCopy = attributes;
  [attributesCopy frame];
  MinY = CGRectGetMinY(v25);
  [attributesCopy frame];
  MaxY = CGRectGetMaxY(v26);
  representedElementCategory = [attributesCopy representedElementCategory];
  if (!representedElementCategory)
  {
    v14 = 40;
    v15 = 32;
    v7 = MaxY;
    v8 = MinY;
LABEL_9:
    v16 = *(&self->super.isa + v15);
    if (v16 > v8)
    {
      v16 = v8;
    }

    *(&self->super.isa + v15) = v16;
    goto LABEL_12;
  }

  v7 = MaxY;
  v8 = MinY;
  if (representedElementCategory != 1)
  {
    goto LABEL_15;
  }

  if (!location)
  {
    v14 = 24;
    v15 = 16;
    goto LABEL_9;
  }

  if (location != 1)
  {
    goto LABEL_15;
  }

  v9.f64[0] = self->_footerMinY;
  v9.f64[1] = MaxY;
  v10.f64[1] = self->_footerMaxY;
  v10.f64[0] = MinY;
  v11 = vcgtq_f64(v9, v10);
  v9.f64[0] = MinY;
  *&self->_footerMinY = vbslq_s8(v11, v9, *&self->_footerMinY);
  representedElementKind = [attributesCopy representedElementKind];
  v13 = [representedElementKind isEqualToString:@"IncrementalReveal"];

  v7 = MaxY;
  v8 = MinY;
  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

  v14 = 80;
LABEL_12:
  v17 = *(&self->super.isa + v14);
  if (v17 < v7)
  {
    v17 = v7;
  }

  *(&self->super.isa + v14) = v17;
LABEL_15:
  v18.f64[0] = self->_minY;
  v18.f64[1] = v7;
  v19.f64[1] = self->_maxY;
  v19.f64[0] = v8;
  v20 = vcgtq_f64(v18, v19);
  v18.f64[0] = v8;
  *&self->_minY = vbslq_s8(v20, v18, *&self->_minY);
}

@end