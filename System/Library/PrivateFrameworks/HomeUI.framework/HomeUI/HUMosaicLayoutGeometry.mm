@interface HUMosaicLayoutGeometry
- (HUGridSize)gridSize;
- (id)description;
@end

@implementation HUMosaicLayoutGeometry

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277D2C8F8]) initWithObject:self];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __37__HUMosaicLayoutGeometry_description__block_invoke;
  v13 = &unk_277DB7558;
  v14 = v3;
  v15 = self;
  v4 = v3;
  [v4 appendBodySectionWithName:@"gridSize" multilinePrefix:@"\t" block:&v10];
  [(HUMosaicLayoutGeometry *)self cellSize:v10];
  v5 = [v4 appendDouble:@"cellSize" withName:0 decimalPrecision:?];
  [(HUMosaicLayoutGeometry *)self cellSpacing];
  v6 = [v4 appendDouble:@"cellSpacing" withName:0 decimalPrecision:?];
  v7 = [v4 appendBool:-[HUMosaicLayoutGeometry isPortrait](self withName:{"isPortrait"), @"isPortrait"}];
  v8 = [v4 build];

  return v8;
}

id __37__HUMosaicLayoutGeometry_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendInt64:objc_msgSend(*(a1 + 40) withName:{"gridSize"), @"rowsDown"}];
  v3 = *(a1 + 32);
  [*(a1 + 40) gridSize];
  return [v3 appendInt64:v4 withName:@"columnsAcross"];
}

- (HUGridSize)gridSize
{
  columnsAcross = self->_gridSize.columnsAcross;
  rowsDown = self->_gridSize.rowsDown;
  result.columnsAcross = columnsAcross;
  result.rowsDown = rowsDown;
  return result;
}

@end