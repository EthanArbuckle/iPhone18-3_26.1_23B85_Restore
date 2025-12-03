@interface EDRowBlocks
- (BOOL)spaceForRowNumber:(unsigned int)number rowBlock:(id)block;
- (Class)classForFormulaType:(unsigned __int8)type;
- (EDCellHeader)cellWithRowNumber:(unsigned int)number columnNumber:(int)columnNumber;
- (EDRowBlocks)initWithWorksheet:(id)worksheet;
- (NSString)description;
- (id)fileNameForPersistingRowBlocks;
- (id)fileNameForPersistingRowBlocksWithIndex:(unint64_t)index;
- (id)rowBlockAtIndex:(unint64_t)index;
- (id)rowBlockForRowNumber:(unsigned int)number currentRowBlock:(id)block;
- (id)rowBlockForRowNumber:(unsigned int)number currentRowBlock:(id)block createIfNil:(BOOL)nil;
- (unint64_t)expectedIndexOfRowBlockForRowNumber:(unsigned int)number;
- (unint64_t)indexOfRowBlockForRowNumber:(unsigned int)number;
- (unsigned)formulaTypeForFormula:(id)formula;
- (void)dealloc;
- (void)load;
- (void)lock;
- (void)save;
- (void)unlock;
- (void)updateMaxPopulatedRow:(unsigned int)row column:(unsigned int)column;
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

- (EDRowBlocks)initWithWorksheet:(id)worksheet
{
  worksheetCopy = worksheet;
  v16.receiver = self;
  v16.super_class = EDRowBlocks;
  v6 = [(EDRowBlocks *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mWorksheet, worksheet);
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
    processors = [worksheetCopy processors];
    [processors markObject:v7 processor:objc_opt_class()];
  }

  return v7;
}

- (id)rowBlockAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->mRowBlocks count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->mRowBlocks objectAtIndex:index];
  }

  return v5;
}

- (unint64_t)expectedIndexOfRowBlockForRowNumber:(unsigned int)number
{
  v3 = *&number;
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
    minRowNumber = [v9 minRowNumber];
    maxRowNumber = [v9 maxRowNumber];
    if (minRowNumber <= v3 && maxRowNumber >= v3)
    {
      break;
    }

    if (minRowNumber <= v3)
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

- (unint64_t)indexOfRowBlockForRowNumber:(unsigned int)number
{
  v4 = [(EDRowBlocks *)self expectedIndexOfRowBlockForRowNumber:*&number];
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

- (id)rowBlockForRowNumber:(unsigned int)number currentRowBlock:(id)block
{
  v4 = [(EDRowBlocks *)self rowBlockForRowNumber:*&number currentRowBlock:block createIfNil:0];

  return v4;
}

- (id)rowBlockForRowNumber:(unsigned int)number currentRowBlock:(id)block createIfNil:(BOOL)nil
{
  nilCopy = nil;
  v6 = *&number;
  blockCopy = block;
  v9 = blockCopy;
  if (blockCopy && [blockCopy minRowNumber] <= v6)
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
    if (nilCopy)
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
    if (nilCopy)
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

- (EDCellHeader)cellWithRowNumber:(unsigned int)number columnNumber:(int)columnNumber
{
  v4 = *&columnNumber;
  v5 = *&number;
  v6 = [(EDRowBlocks *)self rowBlockForRowNumber:*&number currentRowBlock:0];
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

- (BOOL)spaceForRowNumber:(unsigned int)number rowBlock:(id)block
{
  blockCopy = block;
  v6 = blockCopy;
  v7 = blockCopy && [blockCopy minRowNumber] <= number && objc_msgSend(v6, "maxRowNumber") >= number;

  return v7;
}

- (id)fileNameForPersistingRowBlocksWithIndex:(unint64_t)index
{
  workbook = [(EDSheet *)self->mWorksheet workbook];
  fileName = [workbook fileName];

  if ([fileName length])
  {
    lastPathComponent = [fileName lastPathComponent];
    v8 = [@"_" stringByAppendingFormat:@"%@_", lastPathComponent];
  }

  else
  {
    v8 = @"_";
  }

  workbook2 = [(EDSheet *)self->mWorksheet workbook];
  v10 = [workbook2 indexOfSheet:self->mWorksheet];

  if (v10 != -1)
  {
    v11 = [(__CFString *)v8 stringByAppendingFormat:@"Sheet%li_", v10 + 1];

    v8 = v11;
  }

  name = [(EDSheet *)self->mWorksheet name];
  string = [name string];
  v14 = [(__CFString *)v8 stringByAppendingString:string];

  workbook3 = [(EDSheet *)self->mWorksheet workbook];
  temporaryDirectory = [workbook3 temporaryDirectory];
  index = [v14 stringByAppendingFormat:@"_%lu", index];
  v18 = [temporaryDirectory stringByAppendingPathComponent:index];

  v19 = [v18 stringByAppendingPathExtension:@"ed"];

  return v19;
}

- (id)fileNameForPersistingRowBlocks
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
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
    fileNameForPersistingRowBlocks = [(EDRowBlocks *)self fileNameForPersistingRowBlocks];
    mFileName = self->mFileName;
    self->mFileName = fileNameForPersistingRowBlocks;

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
    workbook = [(EDSheet *)self->mWorksheet workbook];
    [workbook outOfMemoryDetected];
  }
}

- (unsigned)formulaTypeForFormula:(id)formula
{
  formulaCopy = formula;
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

- (Class)classForFormulaType:(unsigned __int8)type
{
  v3 = objc_opt_class();

  return v3;
}

- (void)updateMaxPopulatedRow:(unsigned int)row column:(unsigned int)column
{
  if (self->mMaxPopulatedRow < row)
  {
    self->mMaxPopulatedRow = row;
  }

  if (self->mMaxPopulatedColumn < column)
  {
    self->mMaxPopulatedColumn = column;
  }
}

@end