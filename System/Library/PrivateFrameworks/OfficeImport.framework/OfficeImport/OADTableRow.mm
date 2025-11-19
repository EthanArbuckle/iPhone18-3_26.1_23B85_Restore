@interface OADTableRow
- (OADTableRow)init;
- (id)addCell;
- (id)description;
- (void)flipCellsRTL;
@end

@implementation OADTableRow

- (OADTableRow)init
{
  v6.receiver = self;
  v6.super_class = OADTableRow;
  v2 = [(OADTableRow *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mCells = v2->mCells;
    v2->mCells = v3;
  }

  return v2;
}

- (id)addCell
{
  v3 = objc_alloc_init(OADTableCell);
  [(NSMutableArray *)self->mCells addObject:v3];

  return v3;
}

- (void)flipCellsRTL
{
  v3 = [(NSMutableArray *)self->mCells count];
  v4 = v3 - 1;
  if (v3 == 1)
  {
    goto LABEL_6;
  }

  v5 = 1;
  do
  {
    [(NSMutableArray *)self->mCells exchangeObjectAtIndex:v5 - 1 withObjectAtIndex:v4--];
  }

  while (v5++ < v4);
  if (v3)
  {
LABEL_6:
    v7 = 0;
    do
    {
      v8 = [(NSMutableArray *)self->mCells objectAtIndexedSubscript:v7];
      v9 = v7 + 1;
      if ([v8 horzMerge])
      {
        if (v9 >= v3)
        {
LABEL_11:
          v9 = v7;
        }

        else
        {
          while (1)
          {
            v10 = [(NSMutableArray *)self->mCells objectAtIndexedSubscript:v9];
            if (([v10 horzMerge] & 1) == 0)
            {
              break;
            }

            if (v3 == ++v9)
            {
              goto LABEL_11;
            }
          }

          [(NSMutableArray *)self->mCells exchangeObjectAtIndex:v7 withObjectAtIndex:v9++];
        }
      }

      v7 = v9;
    }

    while (v9 < v3);
    v11 = 0;
    do
    {
      v12 = [(OADTableRow *)self cellAtIndex:v11];
      v13 = [v12 properties];
      v14 = [v13 leftStroke];
      v15 = [v13 rightStroke];
      [v13 setLeftStroke:v15];

      [v13 setRightStroke:v14];
      ++v11;
    }

    while (v3 != v11);
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADTableRow;
  v2 = [(OADTableRow *)&v4 description];

  return v2;
}

@end