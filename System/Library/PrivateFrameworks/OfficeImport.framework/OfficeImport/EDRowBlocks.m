@interface EDRowBlocks
- (BOOL)spaceForRowNumber:(unsigned int)a3 rowBlock:(id)a4;
- (Class)classForFormulaType:(unsigned __int8)a3;
- (EDCellHeader)cellWithRowNumber:(unsigned int)a3 columnNumber:(int)a4;
- (EDRowBlocks)initWithWorksheet:(id)a3;
- (NSString)description;
- (id)fileNameForPersistingRowBlocks;
- (id)fileNameForPersistingRowBlocksWithIndex:(unint64_t)a3;
- (id)rowBlockAtIndex:(unint64_t)a3;
- (id)rowBlockForRowNumber:(unsigned int)a3 currentRowBlock:(id)a4;
- (id)rowBlockForRowNumber:(unsigned int)a3 currentRowBlock:(id)a4 createIfNil:(BOOL)a5;
- (unint64_t)expectedIndexOfRowBlockForRowNumber:(unsigned int)a3;
- (unint64_t)indexOfRowBlockForRowNumber:(unsigned int)a3;
- (unsigned)formulaTypeForFormula:(id)a3;
- (void)dealloc;
- (void)load;
- (void)lock;
- (void)save;
- (void)unlock;
- (void)updateMaxPopulatedRow:(unsigned int)a3 column:(unsigned int)a4;
@end

@implementation EDRowBlocks

- (void)lock
{
  v3 = +[OITSUFlushingManager sharedManager];
  [v3 removeObject:self];

  [(NSRecursiveLock *)self->mSaveLoadLock lock];
  mLockCount = self->mLockCount;
  if (!mLockCount)
  {
    [(EDRowBlocks *)self load];
    mLockCount = self->mLockCount;
  }

  self->mLockCount = mLockCount + 1;
  mSaveLoadLock = self->mSaveLoadLock;

  [(NSRecursiveLock *)mSaveLoadLock unlock];
}

- (void)load
{
  v3 = +[OITSUFlushingManager sharedManager];
  [v3 removeObject:self];

  [(NSRecursiveLock *)self->mSaveLoadLock lock];
  if (self->mFileName)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:self->mFileName];
    v5 = [v4 length];
    v6 = v4 != 0;
    if (v4)
    {
      v7 = v5;
      v16 = 0;
      if (v5 < 8)
      {
        v8 = 8;
      }

      else
      {
        [v4 getBytes:&v16 length:8];
        v8 = v16 + 8;
      }

      if (v8 >= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = v8;
      }

      v10 = 8;
      v15 = 8;
      if (v9 >= 9)
      {
        do
        {
          v11 = objc_alloc_init(EDRowBlock);
          [(EDRowBlock *)v11 unarchiveFromData:v4 offset:&v15];
          [(NSMutableArray *)self->mRowBlocks addObject:v11];

          v10 = v15;
        }

        while (v15 < v9);
      }

      while (v10 < v7)
      {
        v14 = 0;
        [v4 getBytes:&v14 range:?];
        ++v15;
        v12 = objc_alloc_init([(EDRowBlocks *)self classForFormulaType:v14]);
        [v12 unarchiveFromData:v4 offset:&v15];
        [(EDCollection *)self->mFormulas addObject:v12];

        v10 = v15;
      }
    }

    TCRemoveFileSecurely(self->mFileName);
    mFileName = self->mFileName;
    self->mFileName = 0;
  }

  else
  {
    v4 = 0;
    v6 = 1;
  }

  [(NSRecursiveLock *)self->mSaveLoadLock unlock];
  if (!v6)
  {
    [TCMessageException raise:TCUnknownProblemMessage];
  }
}

- (void)unlock
{
  [(NSRecursiveLock *)self->mSaveLoadLock lock];
  v3 = self->mLockCount - 1;
  self->mLockCount = v3;
  if (!v3)
  {
    v4 = +[OITSUFlushingManager sharedManager];
    [v4 addObject:self];
  }

  mSaveLoadLock = self->mSaveLoadLock;

  [(NSRecursiveLock *)mSaveLoadLock unlock];
}

- (void)dealloc
{
  mFileName = self->mFileName;
  if (mFileName)
  {
    TCRemoveFileSecurely(mFileName);
  }

  v4.receiver = self;
  v4.super_class = EDRowBlocks;
  [(EDRowBlocks *)&v4 dealloc];
}

- (EDRowBlocks)initWithWorksheet:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = EDRowBlocks;
  v6 = [(EDRowBlocks *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mWorksheet, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mRowBlocks = v7->mRowBlocks;
    v7->mRowBlocks = v8;

    v10 = objc_alloc_init(EDCollection);
    mFormulas = v7->mFormulas;
    v7->mFormulas = v10;

    v12 = objc_alloc_init(MEMORY[0x277CCAC60]);
    mSaveLoadLock = v7->mSaveLoadLock;
    v7->mSaveLoadLock = v12;

    *&v7->mMaxPopulatedRow = 0;
    v7->mLockCount = 0;
    v14 = [v5 processors];
    [v14 markObject:v7 processor:objc_opt_class()];
  }

  return v7;
}

- (id)rowBlockAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->mRowBlocks count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->mRowBlocks objectAtIndex:a3];
  }

  return v5;
}

- (unint64_t)expectedIndexOfRowBlockForRowNumber:(unsigned int)a3
{
  v3 = *&a3;
  if (![(EDRowBlocks *)self rowBlockCount])
  {
    return 0;
  }

  v5 = [(EDRowBlocks *)self rowBlockCount]- 1;
  if (v5 < 0)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = v6 + v5;
    v8 = (v6 + v5) >> 1;
    v9 = [(EDRowBlocks *)self rowBlockAtIndex:v8];
    v10 = [v9 minRowNumber];
    v11 = [v9 maxRowNumber];
    if (v10 <= v3 && v11 >= v3)
    {
      break;
    }

    if (v10 <= v3)
    {
      v6 = v8 + 1;
    }

    else
    {
      v5 = v8 - 1;
    }

    if (v6 > v5)
    {
      goto LABEL_14;
    }
  }

LABEL_14:
  if (v7 < 2)
  {
    return 0;
  }

  v15 = [(EDRowBlocks *)self rowBlockAtIndex:v8 - 1];
  if ([(EDRowBlocks *)self spaceForRowNumber:v3 rowBlock:v15])
  {
    v13 = v8 - 1;
  }

  else
  {
    v13 = v8;
  }

  return v13;
}

- (unint64_t)indexOfRowBlockForRowNumber:(unsigned int)a3
{
  v4 = [(EDRowBlocks *)self expectedIndexOfRowBlockForRowNumber:*&a3];
  v5 = [(EDRowBlocks *)self rowBlockAtIndex:v4];
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (id)rowBlockForRowNumber:(unsigned int)a3 currentRowBlock:(id)a4
{
  v4 = [(EDRowBlocks *)self rowBlockForRowNumber:*&a3 currentRowBlock:a4 createIfNil:0];

  return v4;
}

- (id)rowBlockForRowNumber:(unsigned int)a3 currentRowBlock:(id)a4 createIfNil:(BOOL)a5
{
  v5 = a5;
  v6 = *&a3;
  v8 = a4;
  v9 = v8;
  if (v8 && [v8 minRowNumber] <= v6)
  {
    if ([(EDRowBlocks *)self spaceForRowNumber:v6 rowBlock:v9])
    {
      v13 = v9;
      goto LABEL_21;
    }

    v11 = -[EDRowBlocks rowBlockAtIndex:](self, "rowBlockAtIndex:", [v9 index] + 1);
    if (!v11)
    {
      v13 = +[EDRowBlock rowBlock];
      [v13 setIndex:{-[NSMutableArray count](self->mRowBlocks, "count")}];
      [(NSMutableArray *)self->mRowBlocks addObject:v13];
      goto LABEL_20;
    }

    if ([(EDRowBlocks *)self spaceForRowNumber:v6 rowBlock:v11])
    {
      v17 = v11;
      goto LABEL_18;
    }
  }

  v10 = [(EDRowBlocks *)self expectedIndexOfRowBlockForRowNumber:v6];
  v11 = [(EDRowBlocks *)self rowBlockAtIndex:v10];
  if (!v11)
  {
    if (v5)
    {
LABEL_13:
      v14 = [(NSMutableArray *)self->mRowBlocks count];
      if (v10 < v14)
      {
        v15 = v10;
        do
        {
          v16 = [(NSMutableArray *)self->mRowBlocks objectAtIndex:v15];
          [v16 incrementIndex];

          ++v15;
        }

        while (v14 != v15);
      }

      v12 = +[EDRowBlock rowBlock];

      [v12 setIndex:v10];
      [(NSMutableArray *)self->mRowBlocks insertObject:v12 atIndex:v10];
      goto LABEL_17;
    }

    v11 = 0;
LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  if (![(EDRowBlocks *)self spaceForRowNumber:v6 rowBlock:v11])
  {
    if (v5)
    {
      if ([v11 maxRowNumber] < v6)
      {
        ++v10;
      }

      goto LABEL_13;
    }

    goto LABEL_19;
  }

  v12 = v11;
LABEL_17:
  v17 = v12;
  v11 = v17;
LABEL_18:
  v13 = v17;
LABEL_20:

LABEL_21:

  return v13;
}

- (EDCellHeader)cellWithRowNumber:(unsigned int)a3 columnNumber:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v6 = [(EDRowBlocks *)self rowBlockForRowNumber:*&a3 currentRowBlock:0];
  v7 = [v6 rowInfoWithRowNumber:v5];
  if (v7)
  {
    v8 = [v6 cellWithColumnNumber:v4 rowInfo:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = EDRowBlocks;
  v2 = [(EDRowBlocks *)&v4 description];

  return v2;
}

- (BOOL)spaceForRowNumber:(unsigned int)a3 rowBlock:(id)a4
{
  v5 = a4;
  v6 = v5;
  v7 = v5 && [v5 minRowNumber] <= a3 && objc_msgSend(v6, "maxRowNumber") >= a3;

  return v7;
}

- (id)fileNameForPersistingRowBlocksWithIndex:(unint64_t)a3
{
  v5 = [(EDSheet *)self->mWorksheet workbook];
  v6 = [v5 fileName];

  if ([v6 length])
  {
    v7 = [v6 lastPathComponent];
    v8 = [@"_" stringByAppendingFormat:@"%@_", v7];
  }

  else
  {
    v8 = @"_";
  }

  v9 = [(EDSheet *)self->mWorksheet workbook];
  v10 = [v9 indexOfSheet:self->mWorksheet];

  if (v10 != -1)
  {
    v11 = [(__CFString *)v8 stringByAppendingFormat:@"Sheet%li_", v10 + 1];

    v8 = v11;
  }

  v12 = [(EDSheet *)self->mWorksheet name];
  v13 = [v12 string];
  v14 = [(__CFString *)v8 stringByAppendingString:v13];

  v15 = [(EDSheet *)self->mWorksheet workbook];
  v16 = [v15 temporaryDirectory];
  v17 = [v14 stringByAppendingFormat:@"_%lu", a3];
  v18 = [v16 stringByAppendingPathComponent:v17];

  v19 = [v18 stringByAppendingPathExtension:@"ed"];

  return v19;
}

- (id)fileNameForPersistingRowBlocks
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  for (i = [(EDRowBlocks *)self fileNameForPersistingRowBlocksWithIndex:[EDRowBlocks(Private) fileNameForPersistingRowBlocks]::index];
  {
    ++[EDRowBlocks(Private) fileNameForPersistingRowBlocks]::index;
    v5 = [(EDRowBlocks *)self fileNameForPersistingRowBlocksWithIndex:?];
  }

  return i;
}

- (void)save
{
  [(NSRecursiveLock *)self->mSaveLoadLock lock];
  if (self->mLockCount || self->mFileName)
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v6 = [(EDRowBlocks *)self fileNameForPersistingRowBlocks];
    mFileName = self->mFileName;
    self->mFileName = v6;

    v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
    while ([(EDRowBlocks *)self rowBlockCount])
    {
      v8 = [(EDRowBlocks *)self rowBlockAtIndex:0];
      [v8 archiveByAppendingToMutableData:v3];

      [(NSMutableArray *)self->mRowBlocks removeObjectAtIndex:0];
    }

    v11 = [v3 length];
    [v3 replaceBytesInRange:0 withBytes:0 length:{&v11, 8}];
    while ([(EDCollection *)self->mFormulas count])
    {
      v9 = [(EDCollection *)self->mFormulas objectAtIndex:0];
      v10 = [(EDRowBlocks *)self formulaTypeForFormula:v9];
      [v3 appendBytes:&v10 length:1];
      [v9 archiveByAppendingToMutableData:v3];
      [(EDCollection *)self->mFormulas removeObjectAtIndex:0];
    }

    v4 = [v3 writeToFile:self->mFileName atomically:1];
  }

  [(NSRecursiveLock *)self->mSaveLoadLock unlock];
  if ((v4 & 1) == 0)
  {
    v5 = [(EDSheet *)self->mWorksheet workbook];
    [v5 outOfMemoryDetected];
  }
}

- (unsigned)formulaTypeForFormula:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(v4) = 2;
  }

  else
  {
    objc_opt_class();
    v4 = objc_opt_isKindOfClass() & 1;
  }

  return v4;
}

- (Class)classForFormulaType:(unsigned __int8)a3
{
  v3 = objc_opt_class();

  return v3;
}

- (void)updateMaxPopulatedRow:(unsigned int)a3 column:(unsigned int)a4
{
  if (self->mMaxPopulatedRow < a3)
  {
    self->mMaxPopulatedRow = a3;
  }

  if (self->mMaxPopulatedColumn < a4)
  {
    self->mMaxPopulatedColumn = a4;
  }
}

@end