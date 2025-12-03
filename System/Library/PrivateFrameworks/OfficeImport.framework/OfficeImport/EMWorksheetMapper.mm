@interface EMWorksheetMapper
- (BOOL)isCellNonEmpty:(EDCellHeader *)empty state:(id)state;
- (BOOL)isVisible;
- (CGSize)preprocessDrawableSizeWithState:(id)state;
- (CGSize)preprocessSizeWithState:(id)state;
- (EMWorksheetMapper)initWithEDWorksheet:(id)worksheet parent:(id)parent;
- (double)defaultColumnWidth;
- (id)columnWidthConvertor;
- (int)preprocessHeightWithState:(id)state;
- (int)preprocessWidthWithState:(id)state;
- (void)_initWithState:(id)state;
- (void)countRowsAndColumnsWithState:(id)state;
- (void)dealloc;
- (void)forceRecountForTesting:(id)testing;
- (void)mapAt:(id)at withState:(id)state;
- (void)mapColumnInfosAt:(id)at withState:(id)state;
- (void)mapDrawablesAt:(id)at withState:(id)state;
- (void)mapTableAt:(id)at withState:(id)state;
- (void)mapWorksheetClassesAtTableNode:(id)node;
- (void)readHyperlinksWithState:(id)state;
- (void)setRowGrid;
@end

@implementation EMWorksheetMapper

- (void)setRowGrid
{
  if ((self->mMaxPopulatedRow & 0x8000000000000000) == 0)
  {
    rowBlocks = [(EDWorksheet *)self->edWorksheet rowBlocks];
    self->mRowGrid = smalloc_typed(self->mMaxPopulatedRow + 1, 8uLL, 0x100004000313F17uLL);
    if ((self->mMaxPopulatedRow & 0x8000000000000000) == 0)
    {
      v3 = 0;
      v4 = 0;
      v5 = 1;
      do
      {
        v6 = [rowBlocks rowBlockForRowNumber:v5 - 1 currentRowBlock:v4 createIfNil:0];

        v7 = [v6 rowInfoWithRowNumber:v5 - 1];
        if (!v7 || (defaultRowHeight = *(v7 + 20)) == 0)
        {
          defaultRowHeight = [(EDWorksheet *)self->edWorksheet defaultRowHeight];
        }

        self->mRowGrid[v3] = defaultRowHeight;
        v3 = v5;
        v9 = self->mMaxPopulatedRow < v5++;
        v4 = v6;
      }

      while (!v9);
    }
  }
}

- (id)columnWidthConvertor
{
  mColumnWidthConvertor = self->mColumnWidthConvertor;
  if (!mColumnWidthConvertor)
  {
    v4 = objc_alloc_init(ECColumnWidthConvertor);
    v5 = self->mColumnWidthConvertor;
    self->mColumnWidthConvertor = v4;

    v6 = self->mColumnWidthConvertor;
    WeakRetained = objc_loadWeakRetained(&self->super.super.mParent);
    document = [WeakRetained document];
    resources = [document resources];
    styles = [resources styles];
    defaultWorkbookStyle = [styles defaultWorkbookStyle];
    font = [defaultWorkbookStyle font];
    [(ECColumnWidthConvertor *)v6 setupWithEDFont:font state:0];

    mColumnWidthConvertor = self->mColumnWidthConvertor;
  }

  return mColumnWidthConvertor;
}

- (BOOL)isVisible
{
  if ([(EDSheet *)self->edWorksheet isHidden])
  {
    return 0;
  }

  rowBlocks = [(EDWorksheet *)self->edWorksheet rowBlocks];
  if ([rowBlocks rowBlockCount])
  {
    v3 = 1;
  }

  else
  {
    columnInfos = [(EDWorksheet *)self->edWorksheet columnInfos];
    if ([columnInfos count])
    {
      v3 = 1;
    }

    else
    {
      maxCellReferencedInFormulas = [(EDWorksheet *)self->edWorksheet maxCellReferencedInFormulas];
      v3 = maxCellReferencedInFormulas != 0;
    }
  }

  return v3;
}

- (void)dealloc
{
  mColumnGrid = self->mColumnGrid;
  if (mColumnGrid)
  {
    free(mColumnGrid);
  }

  mRowGrid = self->mRowGrid;
  if (mRowGrid)
  {
    free(mRowGrid);
  }

  v5.receiver = self;
  v5.super_class = EMWorksheetMapper;
  [(EMWorksheetMapper *)&v5 dealloc];
}

- (double)defaultColumnWidth
{
  [(EDWorksheet *)self->edWorksheet defaultColumnWidth];

  [(EMWorksheetMapper *)self xlColumnWidthToPoints:?];
  return result;
}

- (EMWorksheetMapper)initWithEDWorksheet:(id)worksheet parent:(id)parent
{
  worksheetCopy = worksheet;
  parentCopy = parent;
  v14.receiver = self;
  v14.super_class = EMWorksheetMapper;
  v9 = [(CMMapper *)&v14 initWithParent:parentCopy];
  v10 = v9;
  if (v9)
  {
    v9->mHeight = 0;
    v9->mWidth = 0;
    v9->mMaxPopulatedColumn = -1;
    v9->mMaxPopulatedRow = -1;
    objc_storeStrong(&v9->edWorksheet, worksheet);
    v11 = objc_alloc_init(CMStyle);
    mStyle = v10->mStyle;
    v10->mStyle = v11;
  }

  return v10;
}

- (void)_initWithState:(id)state
{
  stateCopy = state;
  if (self->mMaxPopulatedRow < 0 && self->mMaxPopulatedColumn < 0 && !self->mColumnGrid)
  {
    [(EMWorksheetMapper *)self countRowsAndColumnsWithState:stateCopy];
    mMaxPopulatedColumn = self->mMaxPopulatedColumn;
    if (mMaxPopulatedColumn > 0x4000)
    {
      v5 = 0;
    }

    else
    {
      v5 = smalloc_typed(mMaxPopulatedColumn + 1, 8uLL, 0x100004000313F17uLL);
    }

    self->mColumnGrid = v5;
    [(EMWorksheetMapper *)self setRowGrid];
  }
}

- (void)readHyperlinksWithState:(id)state
{
  stateCopy = state;
  hyperlinks = [(EDWorksheet *)self->edWorksheet hyperlinks];
  v5 = [hyperlinks count];

  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      hyperlinks2 = [(EDWorksheet *)self->edWorksheet hyperlinks];
      v8 = [hyperlinks2 objectAtIndex:i];

      reference = [v8 reference];
      firstRow = [reference firstRow];
      reference2 = [v8 reference];
      [stateCopy setHyperlink:v8 forRow:firstRow column:{objc_msgSend(reference2, "firstColumn")}];
    }
  }
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  [(EMWorksheetMapper *)self _initWithState:stateCopy];
  v7 = [OIXMLElement elementWithType:3];
  [(EMWorksheetMapper *)self readHyperlinksWithState:stateCopy];
  [(EMWorksheetMapper *)self mapTableAt:v7 withState:stateCopy];
  [(EMWorksheetMapper *)self mapDrawablesAt:v7 withState:stateCopy];
  if ([v7 childrenCount] >= 1)
  {
    [atCopy addChild:v7];
  }
}

- (int)preprocessWidthWithState:(id)state
{
  [(EMWorksheetMapper *)self _initWithState:state];
  if (!self->mColumnGrid)
  {
    return 0;
  }

  [(EDWorksheet *)self->edWorksheet defaultColumnWidth];
  v5 = v4;
  columnInfos = [(EDWorksheet *)self->edWorksheet columnInfos];
  v6 = [columnInfos count];
  if (v6)
  {
    v34 = v6;
    v7 = 0;
    v8 = -1;
    v9 = 0.0;
    while (v8 <= SLODWORD(self->mMaxPopulatedColumn))
    {
      v10 = [columnInfos objectAtIndex:v7];
      v11 = v10;
      if (v10)
      {
        range = [v10 range];
        firstColumn = [range firstColumn];
        lastColumn = [range lastColumn];
        if (firstColumn < 0 || (v15 = lastColumn, lastColumn < 0) || self->mMaxPopulatedColumn < firstColumn)
        {

          break;
        }

        if (v8 + 1 < firstColumn)
        {
          v16 = [[EMColumnInfoMapper alloc] initWithDefaultWidth:firstColumn + ~v8 span:self parent:v5];
          [(EMColumnInfoMapper *)v16 columnWidth];
          v18 = ~v8 + firstColumn;
          v19 = &self->mColumnGrid[v8 + 1];
          do
          {
            *v19++ = v17;
            v9 = v17 + v9;
            --v18;
          }

          while (v18);
        }

        v20 = 0.0;
        if (([v11 isHidden] & 1) == 0)
        {
          v21 = [[EMColumnInfoMapper alloc] initWithEDColumnInfo:v11 maxSpan:self->mMaxPopulatedColumn - v8 parent:self];
          [(EMColumnInfoMapper *)v21 columnWidth];
          v20 = v22;
        }

        if (firstColumn <= v15)
        {
          mMaxPopulatedColumn = self->mMaxPopulatedColumn;
          v24 = firstColumn - 1;
          v25 = firstColumn;
          do
          {
            if (mMaxPopulatedColumn < v25)
            {
              break;
            }

            self->mColumnGrid[v25] = v20;
            v9 = v20 + v9;
            ++v25;
            ++v24;
          }

          while (v15 > v24);
        }

        v8 = v15;
      }

      else
      {
        v15 = v8;
      }

      if (++v7 == v34)
      {
        goto LABEL_27;
      }
    }

    v15 = v8;
  }

  else
  {
    v9 = 0.0;
    v15 = -1;
  }

LABEL_27:
  if (self->mMaxPopulatedColumn > v15)
  {
    v27 = [[EMColumnInfoMapper alloc] initWithDefaultWidth:self->mMaxPopulatedColumn - v15 span:self parent:v5];
    [(EMColumnInfoMapper *)v27 columnWidth];
    v29 = self->mMaxPopulatedColumn;
    v30 = (v15 + 1);
    if (v29 >= v30)
    {
      v31 = v30 - 1;
      v32 = &self->mColumnGrid[v30];
      do
      {
        *v32++ = v28;
        v9 = v28 + v9;
        ++v31;
      }

      while (v29 > v31);
    }
  }

  v26 = v9;

  return v26;
}

- (int)preprocessHeightWithState:(id)state
{
  [(EMWorksheetMapper *)self _initWithState:state];
  rowBlocks = [(EDWorksheet *)self->edWorksheet rowBlocks];
  maxPopulatedRow = [rowBlocks maxPopulatedRow];
  if (maxPopulatedRow == -1)
  {
    v8 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = -1;
    do
    {
      v10 = v7;
      v7 = [rowBlocks rowBlockForRowNumber:v6 currentRowBlock:v7 createIfNil:0];

      if (v7)
      {
        v11 = [v7 rowInfoWithRowNumber:v6];
        v13 = v11;
        if (v11)
        {
          v14 = *(v11 + 4);
          if (v14 > SLODWORD(self->mMaxPopulatedRow))
          {
            break;
          }

          if (v9 + 1 < v14)
          {
            v15 = ~v9 + v14;
            do
            {
              v12 = [(EDWorksheet *)self->edWorksheet defaultRowHeight]/ 20.0 + v8;
              v8 = v12;
              --v15;
            }

            while (v15);
          }

          LOWORD(v12) = *(v13 + 20);
          v8 = (*&v12 / 20.0 + v8);
          v9 = v14;
        }
      }

      v16 = v6 == maxPopulatedRow;
      v6 = (v6 + 1);
    }

    while (!v16);
  }

  return v8;
}

- (CGSize)preprocessDrawableSizeWithState:(id)state
{
  v5 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  drawableCount = [(EDSheet *)self->edWorksheet drawableCount];
  if (drawableCount)
  {
    v7 = drawableCount;
    for (i = 0; i != v7; ++i)
    {
      v9 = [(EDSheet *)self->edWorksheet drawableAtIndex:i];
      v10 = [[EMDrawableMapper alloc] initWithOADDrawable:v9 parent:self];
      [(EMDrawableMapper *)v10 getImageRect];
      v15 = v13 + v14;
      if (v15 > v5)
      {
        v5 = v15;
      }

      if (v11 + v12 > v4)
      {
        v4 = v11 + v12;
      }
    }
  }

  v16 = v5;
  v17 = v4;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)preprocessSizeWithState:(id)state
{
  stateCopy = state;
  v5 = [(EMWorksheetMapper *)self preprocessWidthWithState:stateCopy];
  v6 = [(EMWorksheetMapper *)self preprocessHeightWithState:stateCopy];
  [(EMWorksheetMapper *)self preprocessDrawableSizeWithState:stateCopy];
  if (v7 < v5)
  {
    v7 = v5;
  }

  if (v8 < v6)
  {
    v8 = v6;
  }

  if (v7 > 0.0 || v8 > 0.0)
  {
    if (v7 > 0.0)
    {
      if (v8 <= 0.0)
      {
        v8 = v7 * 3.0 * 0.25;
      }
    }

    else
    {
      v7 = v8 * 4.0 / 3.0;
    }

    v10 = v7 + 20.0;
    v9 = v8 + 20.0;
  }

  else
  {
    v9 = 600.0;
    v10 = 980.0;
  }

  if (v10 >= 300.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 300.0;
  }

  if (v9 >= 200.0)
  {
    v12 = v9;
  }

  else
  {
    v12 = 200.0;
  }

  v13 = v11;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)countRowsAndColumnsWithState:(id)state
{
  v41 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (self->mMaxPopulatedRow < 0 && self->mMaxPopulatedColumn < 0)
  {
    rowBlocks = [(EDWorksheet *)self->edWorksheet rowBlocks];
    self->mMaxPopulatedColumn = 0;
    maxPopulatedRow = [rowBlocks maxPopulatedRow];
    self->mMaxPopulatedRow = 0;
    mergedCells = [(EDWorksheet *)self->edWorksheet mergedCells];
    v34 = (maxPopulatedRow + 1);
    if (maxPopulatedRow == -1)
    {
      v7 = 0;
    }

    else
    {
      v8 = 0;
      v7 = 0;
      do
      {
        v9 = v7;
        v10 = v8;
        v7 = [rowBlocks rowBlockForRowNumber:? currentRowBlock:? createIfNil:?];

        if (v7)
        {
          v11 = [v7 rowInfoWithRowNumber:v10];
          v12 = v11;
          if (v11)
          {
            if (*(v11 + 8))
            {
              v13 = 0;
              v32 = 1;
              do
              {
                while (1)
                {
                  v14 = [v7 cellAtIndex:v13 rowInfo:v12];
                  v15 = columnNumberForEDCell(v14);
                  if (![(EMWorksheetMapper *)self isCellNonEmpty:v14 state:stateCopy])
                  {
                    break;
                  }

                  v32 = 0;
                  mMaxPopulatedColumn = self->mMaxPopulatedColumn;
                  if (mMaxPopulatedColumn <= v15)
                  {
                    mMaxPopulatedColumn = v15;
                  }

                  self->mMaxPopulatedColumn = mMaxPopulatedColumn;
                  v13 = (v13 + 1);
                  if (v13 >= *(v12 + 8))
                  {
                    goto LABEL_18;
                  }
                }

                v13 = (v13 + 1);
              }

              while (v13 < *(v12 + 8));
              if (v32)
              {
                goto LABEL_21;
              }

LABEL_18:
              mMaxPopulatedRow = self->mMaxPopulatedRow;
              if (mMaxPopulatedRow <= v10)
              {
                mMaxPopulatedRow = v10;
              }

              self->mMaxPopulatedRow = mMaxPopulatedRow;
            }
          }
        }

LABEL_21:
        v8 = v10 + 1;
      }

      while (v10 + 1 != v34);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = mergedCells;
    v18 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v18)
    {
      v33 = *v37;
      do
      {
        v35 = v18;
        for (i = 0; i != v35; ++i)
        {
          if (*v37 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v36 + 1) + 8 * i);
          if (([v20 firstColumn] || objc_msgSend(v20, "lastColumn") != 0x3FFF) && (self->mMaxPopulatedColumn <= objc_msgSend(v20, "lastColumn") || self->mMaxPopulatedRow <= objc_msgSend(v20, "lastRow")))
          {
            for (j = [v20 firstRow]; j <= objc_msgSend(v20, "lastRow"); ++j)
            {
              v22 = [rowBlocks rowBlockForRowNumber:j currentRowBlock:v7 createIfNil:0];

              v7 = v22;
              if (v22)
              {
                v23 = [v22 rowInfoWithRowNumber:j];
                v24 = v23;
                if (v23)
                {
                  if (*(v23 + 8))
                  {
                    firstColumn = [v20 firstColumn];
                    while (firstColumn <= [v20 lastColumn])
                    {
                      v26 = -[EMWorksheetMapper isCellNonEmpty:state:](self, "isCellNonEmpty:state:", [v7 cellAtIndex:firstColumn rowInfo:v24], stateCopy);
                      firstColumn = (firstColumn + 1);
                      if (v26)
                      {
                        lastColumn = [v20 lastColumn];
                        lastColumn2 = self->mMaxPopulatedColumn;
                        if (lastColumn2 < lastColumn)
                        {
                          lastColumn2 = [v20 lastColumn];
                        }

                        self->mMaxPopulatedColumn = lastColumn2;
                        v29 = self->mMaxPopulatedRow;
                        if (v29 <= j)
                        {
                          v29 = j;
                        }

                        self->mMaxPopulatedRow = v29;
                        break;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v18 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v18);
    }
  }
}

- (BOOL)isCellNonEmpty:(EDCellHeader *)empty state:(id)state
{
  stateCopy = state;
  v6 = typeForEDCell(empty);
  if (v6)
  {
    if (v6 == 3)
    {
      document = [stateCopy document];
      resources = [document resources];
      v9 = stringValueForEDCell(empty, resources);

      string = [v9 string];
      v11 = [string length] == 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  v12 = [stateCopy cellStyleWrapperForIndex:styleIndexForEDCell(empty)];
  v13 = v12;
  if (v11)
  {
    isVisible = [v12 isVisible];
  }

  else
  {
    isVisible = 1;
  }

  return isVisible;
}

- (void)mapColumnInfosAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  if ((self->mMaxPopulatedColumn & 0x8000000000000000) == 0)
  {
    [(EDWorksheet *)self->edWorksheet defaultColumnWidth];
    v7 = v6;
    columnInfos = [(EDWorksheet *)self->edWorksheet columnInfos];
    v36 = columnInfos;
    v9 = [columnInfos count];
    if (v9)
    {
      v37 = v9;
      v10 = 0;
      v11 = -1;
      v12 = 0.0;
      while (v11 < SLODWORD(self->mMaxPopulatedColumn))
      {
        v13 = [columnInfos objectAtIndex:v10];
        v14 = v13;
        if (v13)
        {
          range = [v13 range];
          firstColumn = [range firstColumn];
          lastColumn = [range lastColumn];
          if (firstColumn < 0 || (v18 = lastColumn, lastColumn < 0) || self->mMaxPopulatedColumn < firstColumn || !self->mColumnGrid)
          {

            v18 = v11;
            columnInfos = v36;
            goto LABEL_27;
          }

          if (v11 + 1 < firstColumn)
          {
            v19 = [[EMColumnInfoMapper alloc] initWithDefaultWidth:firstColumn + ~v11 span:self parent:v7];
            [(EMColumnInfoMapper *)v19 mapAt:atCopy withState:stateCopy];
            [(EMColumnInfoMapper *)v19 columnWidth];
            v21 = ~v11 + firstColumn;
            v22 = &self->mColumnGrid[v11 + 1];
            do
            {
              *v22++ = v20;
              v12 = v20 + v12;
              --v21;
            }

            while (v21);
          }

          v23 = 0.0;
          if (([v14 isHidden] & 1) == 0)
          {
            v24 = [[EMColumnInfoMapper alloc] initWithEDColumnInfo:v14 maxSpan:self->mMaxPopulatedColumn - v11 parent:self];
            [(EMColumnInfoMapper *)v24 mapAt:atCopy withState:stateCopy];
            [(EMColumnInfoMapper *)v24 columnWidth];
            v23 = v25;
          }

          if (firstColumn <= v18)
          {
            mMaxPopulatedColumn = self->mMaxPopulatedColumn;
            v27 = firstColumn - 1;
            v28 = firstColumn;
            do
            {
              if (mMaxPopulatedColumn < v28)
              {
                break;
              }

              self->mColumnGrid[v28] = v23;
              v12 = v23 + v12;
              ++v28;
              ++v27;
            }

            while (v18 > v27);
          }

          v11 = v18;
          columnInfos = v36;
        }

        else
        {
          v18 = v11;
        }

        if (++v10 == v37)
        {
          goto LABEL_27;
        }
      }

      v18 = v11;
    }

    else
    {
      v12 = 0.0;
      v18 = -1;
    }

LABEL_27:
    if (v18 < SLODWORD(self->mMaxPopulatedColumn) && self->mColumnGrid)
    {
      v29 = [[EMColumnInfoMapper alloc] initWithDefaultWidth:self->mMaxPopulatedColumn - v18 span:self parent:v7];
      [(EMColumnInfoMapper *)v29 mapAt:atCopy withState:stateCopy];
      [(EMColumnInfoMapper *)v29 columnWidth];
      v31 = self->mMaxPopulatedColumn;
      v32 = (v18 + 1);
      if (v31 >= v32)
      {
        v33 = v32 - 1;
        v34 = &self->mColumnGrid[v32];
        do
        {
          *v34++ = v30;
          v12 = v30 + v12;
          ++v33;
        }

        while (v31 > v33);
      }
    }

    v35 = [[CMLengthProperty alloc] initWithNumber:v12];
    [(CMStyle *)self->mStyle addProperty:v35 forKey:@"width"];
    self->mWidth = v12;
  }
}

- (void)mapWorksheetClassesAtTableNode:(id)node
{
  nodeCopy = node;
  if ([(EDSheet *)self->edWorksheet isDisplayGridlines])
  {
    v4 = [&unk_286F6D6F8 arrayByAddingObject:@"showGridlines"];
  }

  else
  {
    v4 = &unk_286F6D6F8;
  }

  v5 = [v4 componentsJoinedByString:@" "];
  v6 = [OIXMLAttribute attributeWithName:@"class" stringValue:v5];

  [nodeCopy addAttribute:v6];
}

- (void)mapDrawablesAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  drawableCount = [(EDSheet *)self->edWorksheet drawableCount];
  if (drawableCount)
  {
    for (i = 0; i != drawableCount; ++i)
    {
      v9 = [(EDSheet *)self->edWorksheet drawableAtIndex:i];
      v10 = [[EMDrawableMapper alloc] initWithOADDrawable:v9 parent:self];
      [(EMDrawableMapper *)v10 mapAt:atCopy withState:stateCopy];
      [(CMDrawableMapper *)v10 box];
      v15 = (v13 + v14);
      if (self->mWidth < v15)
      {
        self->mWidth = v15;
      }

      v16 = (v11 + v12);
      if (self->mHeight < v16)
      {
        self->mHeight = v16;
      }
    }
  }
}

- (void)mapTableAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  v25 = stateCopy;
  if ([(EMWorksheetMapper *)self isVisible])
  {
    rowBlocks = [(EDWorksheet *)self->edWorksheet rowBlocks];
    if ((self->mMaxPopulatedRow & 0x8000000000000000) == 0)
    {
      v7 = [OIXMLElement elementWithType:18];
      [atCopy addChild:v7];
      [(EMWorksheetMapper *)self mapColumnInfosAt:v7 withState:stateCopy];
      cssStyleString = [(CMStyle *)self->mStyle cssStyleString];
      v9 = [OIXMLAttribute attributeWithName:@"style" stringValue:cssStyleString];

      [v7 addAttribute:v9];
      [(EMWorksheetMapper *)self mapWorksheetClassesAtTableNode:v7];
      if ((self->mMaxPopulatedRow & 0x8000000000000000) == 0)
      {
        v23 = v9;
        v10 = 0;
        v11 = 0;
        v12 = -1;
        do
        {
          v13 = [rowBlocks rowBlockForRowNumber:v10 currentRowBlock:v11 createIfNil:{0, v23}];

          if (v13)
          {
            v14 = [v13 rowInfoWithRowNumber:v10];
            v15 = v14;
            if (v14)
            {
              v16 = *(v14 + 4);
              if (v16 > SLODWORD(self->mMaxPopulatedRow))
              {
                break;
              }

              v26 = *(v14 + 4);
              if (v12 + 1 < v16)
              {
                v17 = ~v12 + v16;
                do
                {
                  [EMRowMapper mapEmptyRowAt:v7 colspan:self->mMaxPopulatedColumn + 1 height:[(EDWorksheet *)self->edWorksheet defaultRowHeight]];
                  self->mHeight = ([(EDWorksheet *)self->edWorksheet defaultRowHeight]/ 20.0 + self->mHeight);
                  --v17;
                }

                while (v17);
              }

              v18 = [[EMRowMapper alloc] initWithEDRowBlock:v13 rowInfo:v15 parent:self];
              LOWORD(v19) = *(v15 + 20);
              self->mHeight = (v19 / 20.0 + self->mHeight);
              stateCopy = v25;
              [(EMRowMapper *)v18 mapAt:v7 withState:v25];
              isThumbnail = [v25 isThumbnail];
              v21 = v10 > 0xC8 ? isThumbnail : 0;

              v12 = v26;
              if (v21)
              {
                break;
              }
            }
          }

          if (v10 > 0xFFE)
          {
            break;
          }

          v11 = v13;
        }

        while (self->mMaxPopulatedRow > v10++);

        v9 = v23;
      }
    }
  }
}

- (void)forceRecountForTesting:(id)testing
{
  self->mMaxPopulatedColumn = -1;
  self->mMaxPopulatedRow = -1;
  [(EMWorksheetMapper *)self countRowsAndColumnsWithState:testing];
}

@end