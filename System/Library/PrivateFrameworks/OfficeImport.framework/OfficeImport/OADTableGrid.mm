@interface OADTableGrid
- (OADTableGrid)init;
- (id)addColumn;
- (id)description;
- (void)flipColumnsRTL;
@end

@implementation OADTableGrid

- (OADTableGrid)init
{
  v6.receiver = self;
  v6.super_class = OADTableGrid;
  v2 = [(OADTableGrid *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mColumns = v2->mColumns;
    v2->mColumns = v3;
  }

  return v2;
}

- (id)addColumn
{
  v3 = objc_alloc_init(OADTableColumn);
  [(NSMutableArray *)self->mColumns addObject:v3];

  return v3;
}

- (void)flipColumnsRTL
{
  columnCount = [(OADTableGrid *)self columnCount];
  v4 = columnCount - 1;
  if (columnCount != 1)
  {
    v5 = 1;
    do
    {
      [(NSMutableArray *)self->mColumns exchangeObjectAtIndex:v5 - 1 withObjectAtIndex:v4--];
    }

    while (v5++ < v4);
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADTableGrid;
  v2 = [(OADTableGrid *)&v4 description];

  return v2;
}

@end