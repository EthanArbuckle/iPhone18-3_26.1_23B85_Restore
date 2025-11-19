@interface OABRTable
- (OABRTable)initWithSourceTable:(id)a3 targetTable:(id)a4 state:(id)a5;
- (id)readStrokeFromShape:(void *)a3;
- (void)createTargetTableContents;
- (void)dealloc;
- (void)map;
- (void)mapScale;
- (void)readAnchor;
- (void)readCellsAndLines;
- (void)readCoordinates;
- (void)validateTable;
@end

@implementation OABRTable

- (void)map
{
  v3 = [(OADTable *)self->mTgtTable tableProperties];
  [v3 setRightToLeft:{*(EshGroupProperties::getTableProperties((-[ESDContainer eshGroup](self->mSrcTable, "eshGroup") + 288)) + 2)}];

  [(OABRTable *)self readAnchor];
  [(OABRTable *)self mapScale];
  [(OABRTable *)self readCoordinates];
  [(OABRTable *)self readCellsAndLines];
  [(OABRTable *)self validateTable];
  [(OABRTable *)self createTargetTableContents];
  v4 = [(OADTable *)self->mTgtTable tableProperties];
  v5 = [v4 rightToLeft];

  if (v5)
  {
    mTgtTable = self->mTgtTable;

    [(OADTable *)mTgtTable flipTableRTL];
  }
}

- (void)readAnchor
{
  [OABContent readFromContainer:self->mSrcTable toDrawable:self->mTgtTable state:self->mState];
  v3 = [(OABReaderState *)self->mState client];
  mSrcTable = self->mSrcTable;
  mTgtTable = self->mTgtTable;
  mState = self->mState;

  [(objc_class *)v3 readClientDataFromGroup:mSrcTable toGroup:mTgtTable state:mState];
}

- (void)mapScale
{
  v3 = MEMORY[0x277CBF3A0];
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [(OADDrawable *)self->mTgtTable clientData];

  if (v8)
  {
    v9 = [(OADDrawable *)self->mTgtTable clientData];
    [v9 bounds];
    v4 = v10;
    v5 = v11;
    v6 = v12;
    v7 = v13;
  }

  v28.origin.x = v4;
  v28.origin.y = v5;
  v28.size.width = v6;
  v28.size.height = v7;
  if (CGRectEqualToRect(v28, *v3))
  {
    v14 = [(OADDrawable *)self->mTgtTable drawableProperties];
    v15 = [v14 orientedBounds];
    [v15 bounds];
    v4 = v16;
    v5 = v17;
    v6 = v18;
    v7 = v19;

    v29.origin.x = v4;
    v29.origin.y = v5;
    v29.size.width = v6;
    v29.size.height = v7;
    if (CGRectEqualToRect(v29, *v3))
    {
      [MEMORY[0x277CBEAD8] raise:@"Table bounds must be available in order to read the table" format:&stru_286EE1130];
    }
  }

  v20 = *([(ESDContainer *)self->mSrcTable eshGroup]+ 280);
  v21 = *(v20 + 28);
  v22 = *(v20 + 36);
  v30.origin.x = v4;
  v30.origin.y = v5;
  v30.size.width = v6;
  v30.size.height = v7;
  Width = CGRectGetWidth(v30);
  v31.origin.x = v4;
  v31.origin.y = v5;
  v31.size.width = v6;
  v31.size.height = v7;
  Height = CGRectGetHeight(v31);
  v24 = vsub_s32(v22, v21);
  v25.i64[0] = v24.i32[0];
  v25.i64[1] = v24.i32[1];
  v26.f64[0] = Width;
  v26.f64[1] = Height;
  self->mScale = vdivq_f64(v26, vcvtq_f64_s64(v25));
}

- (void)readCoordinates
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = [(ESDContainer *)self->mSrcTable childCount];
  if (v5 >= 2)
  {
    for (i = 1; i != v5; ++i)
    {
      v7 = [(ESDContainer *)self->mSrcTable childAt:i];
      v8 = [v7 eshShape];
      if (!v8)
      {

        v4 = 0;
        v3 = 0;
        [MEMORY[0x277CBEAD8] raise:@"Could not read shape" format:&stru_286EE1130];
      }

      if (EshShapeProperties::getShapeType((v8 + 424)) == 1)
      {
        v9 = [MEMORY[0x277CCABB0] numberWithInt:EshContentProperties::getLeft((v8 + 424))];
        [v3 addObject:v9];

        v10 = [MEMORY[0x277CCABB0] numberWithInt:EshContentProperties::getRight((v8 + 424))];
        [v3 addObject:v10];

        v11 = [MEMORY[0x277CCABB0] numberWithInt:EshContentProperties::getTop((v8 + 424))];
        [v4 addObject:v11];

        v12 = [MEMORY[0x277CCABB0] numberWithInt:EshContentProperties::getBottom((v8 + 424))];
        [v4 addObject:v12];
      }
    }
  }

  self->mColumnCount = [v3 count] - 1;
  self->mRowCount = [v4 count] - 1;
  v13 = [[OABTableSortedIntArray alloc] initWithIntSet:v3];
  mXCoords = self->mXCoords;
  self->mXCoords = v13;

  v15 = [[OABTableSortedIntArray alloc] initWithIntSet:v4];
  mYCoords = self->mYCoords;
  self->mYCoords = v15;

  operator new();
}

- (void)readCellsAndLines
{
  v3 = [(ESDContainer *)self->mSrcTable childCount];
  if (v3 >= 2)
  {
    v20 = v3 & 0x7FFFFFFF;
    v4 = 1;
    do
    {
      v24 = [(ESDContainer *)self->mSrcTable childAt:v4, v20];
      v5 = [v24 eshShape];
      v22 = [(OABTableSortedIntArray *)self->mXCoords indexOfInt:EshContentProperties::getLeft((v5 + 424))];
      v23 = [(OABTableSortedIntArray *)self->mXCoords indexOfInt:EshContentProperties::getRight((v5 + 424))];
      v26 = [(OABTableSortedIntArray *)self->mYCoords indexOfInt:EshContentProperties::getTop((v5 + 424))];
      v25 = [(OABTableSortedIntArray *)self->mYCoords indexOfInt:EshContentProperties::getBottom((v5 + 424))];
      mCells = self->mCells;
      if (v22 >= *mCells || v26 >= mCells[1])
      {
        [MEMORY[0x277CBEAD8] raise:@"index out of bounds in cell coordinates" format:&stru_286EE1130];
      }

      v21 = v4;
      if (EshShapeProperties::getShapeType((v5 + 424)) == 1)
      {
        if (v23 > v22)
        {
          v7 = v22;
          do
          {
            if (v25 > v26)
            {
              v8 = 0;
              if (v7 == v22)
              {
                v9 = v23 - v22;
              }

              else
              {
                v9 = 1;
              }

              v10 = v26;
              do
              {
                v11 = *OABTable2DArray<OABTableCell>::element(self->mCells, v7, v10) == 0;
                TCVerifyInputMeetsCondition(v11);
                v12 = v24;
                v13 = OABTable2DArray<OABTableCell>::element(self->mCells, v7, v10);
                v14 = v13;
                if (v8)
                {
                  v15 = 1;
                }

                else
                {
                  v15 = v25 - v26;
                }

                v16 = *v13;
                *v13 = v12;

                *(v14 + 2) = v9;
                *(v14 + 3) = v15;
                *(v14 + 16) = v7 > v22;
                *(v14 + 17) = v10++ > v26;
                --v8;
              }

              while (v25 != v10);
            }

            ++v7;
          }

          while (v7 != v23);
        }
      }

      else if (EshShapeProperties::getShapeType((v5 + 424)) == 20 && (v23 == v22 || v25 == v26))
      {
        v17 = v22;
        if (v23 > v22)
        {
          do
          {
            v18 = *OABTable2DArray<EshShape *>::element(self->mHorzLines, v17, v26) == 0;
            TCVerifyInputMeetsCondition(v18);
            *OABTable2DArray<EshShape *>::element(self->mHorzLines, v17++, v26) = v5;
          }

          while (v23 != v17);
        }

        if (v25 > v26)
        {
          do
          {
            v19 = *OABTable2DArray<EshShape *>::element(self->mVertLines, v22, v26) == 0;
            TCVerifyInputMeetsCondition(v19);
            *OABTable2DArray<EshShape *>::element(self->mVertLines, v22, v26++) = v5;
          }

          while (v25 != v26);
        }
      }

      ++v4;
    }

    while (v21 + 1 != v20);
  }
}

- (void)dealloc
{
  mHorzLines = self->mHorzLines;
  if (mHorzLines)
  {
    v4 = mHorzLines[1];
    if (v4)
    {
      MEMORY[0x25F896FE0](v4, 0x20C8093837F09);
    }

    MEMORY[0x25F897000](mHorzLines, 0x1080C4057E67DB5);
  }

  mVertLines = self->mVertLines;
  if (mVertLines)
  {
    v6 = mVertLines[1];
    if (v6)
    {
      MEMORY[0x25F896FE0](v6, 0x20C8093837F09);
    }

    MEMORY[0x25F897000](mVertLines, 0x1080C4057E67DB5);
  }

  mCells = self->mCells;
  if (mCells)
  {
    v8 = OABTable2DArray<OABTableCell>::~OABTable2DArray(mCells);
    MEMORY[0x25F897000](v8, 0x1020C405730B0C9);
  }

  v9.receiver = self;
  v9.super_class = OABRTable;
  [(OABRTable *)&v9 dealloc];
}

- (void)validateTable
{
  mRowCount = self->mRowCount;
  if (mRowCount >= 1)
  {
    v4 = 0;
    mColumnCount = self->mColumnCount;
    do
    {
      if (mColumnCount >= 1)
      {
        for (i = 0; i < mColumnCount; ++i)
        {
          v7 = *OABTable2DArray<OABTableCell>::element(self->mCells, i, v4) != 0;
          TCVerifyInputMeetsCondition(v7);
          mColumnCount = self->mColumnCount;
        }

        mRowCount = self->mRowCount;
      }

      ++v4;
    }

    while (v4 < mRowCount);
  }

  if ((mRowCount & 0x80000000) == 0)
  {
    v8 = 0;
    v9 = self->mColumnCount;
    do
    {
      if (v9 >= 1)
      {
        for (j = 0; j < v9; ++j)
        {
          v11 = OABTable2DArray<EshShape *>::element(self->mHorzLines, j, v8);
          if (v8 && *v11 && v8 < self->mRowCount)
          {
            v12 = *OABTable2DArray<OABTableCell>::element(self->mCells, j, v8 - 1);
            v13 = v12 != *OABTable2DArray<OABTableCell>::element(self->mCells, j, v8);
            TCVerifyInputMeetsCondition(v13);
          }

          if (j < self->mColumnCount - 1)
          {
            if (v8)
            {
              v14 = *OABTable2DArray<OABTableCell>::element(self->mCells, j, v8 - 1);
              v15 = v14 != *OABTable2DArray<OABTableCell>::element(self->mCells, j + 1, v8 - 1);
            }

            else
            {
              v15 = 0;
            }

            if (v8 >= self->mRowCount)
            {
              v17 = 0;
            }

            else
            {
              v16 = *OABTable2DArray<OABTableCell>::element(self->mCells, j, v8);
              v17 = v16 != *OABTable2DArray<OABTableCell>::element(self->mCells, j + 1, v8);
            }

            if (!v15 && !v17)
            {
              v18 = *OABTable2DArray<EshShape *>::element(self->mHorzLines, j, v8);
              v19 = v18 == *OABTable2DArray<EshShape *>::element(self->mHorzLines, j + 1, v8);
              TCVerifyInputMeetsCondition(v19);
            }
          }

          v9 = self->mColumnCount;
        }

        mRowCount = self->mRowCount;
      }

      v20 = v8++ < mRowCount;
    }

    while (v20);
    if (mRowCount >= 1)
    {
      v21 = 0;
      v22 = self->mColumnCount;
      do
      {
        v23 = v21 + 1;
        if ((v22 & 0x80000000) == 0)
        {
          v24 = 0;
          do
          {
            v25 = OABTable2DArray<EshShape *>::element(self->mVertLines, v24, v21);
            if (v24 && *v25 && v24 < self->mColumnCount)
            {
              v26 = *OABTable2DArray<OABTableCell>::element(self->mCells, v24 - 1, v21);
              v27 = v26 != *OABTable2DArray<OABTableCell>::element(self->mCells, v24, v21);
              TCVerifyInputMeetsCondition(v27);
            }

            if (v21 < self->mRowCount - 1)
            {
              if (v24)
              {
                v28 = *OABTable2DArray<OABTableCell>::element(self->mCells, v24 - 1, v21);
                v29 = v28 != *OABTable2DArray<OABTableCell>::element(self->mCells, v24 - 1, v21 + 1);
              }

              else
              {
                v29 = 0;
              }

              if (v24 >= self->mColumnCount)
              {
                v31 = 0;
              }

              else
              {
                v30 = *OABTable2DArray<OABTableCell>::element(self->mCells, v24, v21);
                v31 = v30 != *OABTable2DArray<OABTableCell>::element(self->mCells, v24, v21 + 1);
              }

              if (!v29 && !v31 && v24 < self->mColumnCount)
              {
                v32 = *OABTable2DArray<EshShape *>::element(self->mVertLines, v24, v21);
                v33 = v32 == *OABTable2DArray<EshShape *>::element(self->mVertLines, v24, v21 + 1);
                TCVerifyInputMeetsCondition(v33);
              }
            }

            v22 = self->mColumnCount;
            v20 = v24++ < v22;
          }

          while (v20);
          mRowCount = self->mRowCount;
        }

        ++v21;
      }

      while (v23 < mRowCount);
    }
  }
}

- (void)createTargetTableContents
{
  if (self->mColumnCount >= 1)
  {
    v3 = 0;
    do
    {
      v4 = (v3 + 1);
      v5 = [(OABTableSortedIntArray *)self->mXCoords intAtIndex:v4];
      v6 = [(OABTableSortedIntArray *)self->mXCoords intAtIndex:v3];
      v28 = [(OADTable *)self->mTgtTable grid];
      v7 = [v28 addColumn];
      v8 = self->mScale.x * (v5 - v6);
      *&v8 = v8;
      [v7 setWidth:v8];

      v3 = v4;
    }

    while (v4 < self->mColumnCount);
  }

  if (self->mRowCount >= 1)
  {
    v9 = 0;
    do
    {
      v29 = [(OADTable *)self->mTgtTable addRow];
      v27 = v9 + 1;
      v10 = [(OABTableSortedIntArray *)self->mYCoords intAtIndex:?];
      v11 = self->mScale.y * (v10 - [(OABTableSortedIntArray *)self->mYCoords intAtIndex:v9]);
      *&v11 = v11;
      [v29 setHeight:v11];
      if (self->mColumnCount >= 1)
      {
        v12 = 0;
        do
        {
          v13 = [v29 addCell];
          v14 = OABTable2DArray<OABTableCell>::element(self->mCells, v12, v9);
          [v13 setRowSpan:*(v14 + 3)];
          [v13 setGridSpan:*(v14 + 2)];
          [v13 setHorzMerge:*(v14 + 16)];
          [v13 setVertMerge:*(v14 + 17)];
          if ((v14[2] & 1) == 0 && (*(v14 + 17) & 1) == 0)
          {
            v15 = [*v14 eshShape];
            [(objc_class *)[(OABReaderState *)self->mState client] readClientDataFromTableCell:*v14 toTableCell:v13 state:self->mState];
            v16 = [v13 textBody];
            if (!v16)
            {
              v16 = objc_alloc_init(OADTextBody);
              [v13 setTextBody:v16];
            }

            v17 = [(OADTextBody *)v16 properties];
            [OABTextBodyProperties readTextBodyProperties:v17 textBox:v15 + 272 useDefaults:1 state:self->mState];

            v18 = [(OADTextBody *)v16 properties];
            [(OADTextBody *)v16 setProperties:v18];

            v19 = objc_alloc_init(OADTableCellProperties);
            v20 = [[OABShapeManager alloc] initWithShape:v15];
            v21 = [OABFill readFillFromFillPropertiesManager:v20 state:self->mState];
            [(OADTableCellProperties *)v19 setFill:v21];
            v22 = [(OABRTable *)self readStrokeFromShape:*OABTable2DArray<EshShape *>::element(self->mVertLines, v12, v9)];
            [(OADTableCellProperties *)v19 setLeftStroke:v22];

            v23 = [(OABRTable *)self readStrokeFromShape:*OABTable2DArray<EshShape *>::element(self->mVertLines, v12 + *(v14 + 2), v9)];
            [(OADTableCellProperties *)v19 setRightStroke:v23];

            v24 = [(OABRTable *)self readStrokeFromShape:*OABTable2DArray<EshShape *>::element(self->mHorzLines, v12, v9)];
            [(OADTableCellProperties *)v19 setTopStroke:v24];

            v25 = [(OABRTable *)self readStrokeFromShape:*OABTable2DArray<EshShape *>::element(self->mHorzLines, v12, *(v14 + 3) + v9)];
            [(OADTableCellProperties *)v19 setBottomStroke:v25];

            v26 = [(OADTextBody *)v16 properties];
            -[OADTableCellProperties setTextAnchor:](v19, "setTextAnchor:", [v26 textAnchorType]);

            [v13 setProperties:v19];
          }

          ++v12;
        }

        while (v12 < self->mColumnCount);
      }

      v9 = v27;
    }

    while (v27 < self->mRowCount);
  }
}

- (OABRTable)initWithSourceTable:(id)a3 targetTable:(id)a4 state:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = OABRTable;
  v12 = [(OABRTable *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->mSrcTable, a3);
    objc_storeStrong(&v13->mTgtTable, a4);
    objc_storeStrong(&v13->mState, a5);
  }

  return v13;
}

- (id)readStrokeFromShape:(void *)a3
{
  if (a3)
  {
    v4 = [[OABShapeManager alloc] initWithShape:a3];
    v5 = [OABStroke readStrokeFromShapeBaseManager:v4 state:self->mState];
    if ([(OADStroke *)v5 isCapOverridden]&& [(OADStroke *)v5 cap]!= 2)
    {
      [(OADStroke *)v5 setCap:2];
    }
  }

  else
  {
    v5 = objc_alloc_init(OADStroke);
    v4 = +[OADNullFill nullFill];
    [(OADStroke *)v5 setFill:v4];
  }

  return v5;
}

@end