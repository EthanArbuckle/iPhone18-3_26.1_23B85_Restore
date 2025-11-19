@interface EDWorkbook
+ (id)impliedColorMap;
- (EDWorkbook)initWithFileName:(id)a3 andStringOptimization:(BOOL)a4;
- (EDWorkbook)initWithStringOptimization:(BOOL)a3;
- (id)activeSheet;
- (id)dateBaseDate;
- (id)description;
- (id)sheetAtIndex:(unint64_t)a3 loadIfNeeded:(BOOL)a4;
- (id)temporaryDirectory;
- (unint64_t)indexOfSheet:(id)a3;
- (unint64_t)indexOfSheetWithName:(id)a3;
- (unsigned)legacyDateBase;
- (void)addSheet:(id)a3;
- (void)applyProcessors;
- (void)dealloc;
- (void)reduceMemoryIfPossible;
- (void)removeSheetAtIndex:(unint64_t)a3;
- (void)setMappingContext:(id)a3;
- (void)setResources:(id)a3;
- (void)setTemporaryDirectory:(id)a3;
- (void)setVisibleRange:(id)a3;
@end

@implementation EDWorkbook

- (void)dealloc
{
  v3 = [(NSMutableArray *)self->mSheets count];
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = [(NSMutableArray *)self->mSheets objectAtIndex:v4];
      [v5 teardown];

      ++v4;
    }

    while (v3 != v4);
  }

  [(EDProcessors *)self->mProcessors removeAllObjects];
  v6.receiver = self;
  v6.super_class = EDWorkbook;
  [(EDWorkbook *)&v6 dealloc];
}

- (EDWorkbook)initWithStringOptimization:(BOOL)a3
{
  v3 = a3;
  v20.receiver = self;
  v20.super_class = EDWorkbook;
  v4 = [(OCDDocument *)&v20 init];
  if (v4)
  {
    v5 = [[EDResources alloc] initWithStringOptimization:v3];
    mResources = v4->mResources;
    v4->mResources = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mOtherResources = v4->mOtherResources;
    v4->mOtherResources = v7;

    v9 = [[EDProcessors alloc] initWithWorkbook:v4];
    mProcessors = v4->mProcessors;
    v4->mProcessors = v9;

    v11 = objc_alloc_init(EDWarnings);
    mWarnings = v4->mWarnings;
    v4->mWarnings = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mSheets = v4->mSheets;
    v4->mSheets = v13;

    v15 = objc_alloc_init(ECMappingContext);
    mMappingContext = v4->mMappingContext;
    v4->mMappingContext = v15;

    v4->mDateBase = 2;
    v4->mActiveSheetIndex = -1;
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mBulletBlips = v4->mBulletBlips;
    v4->mBulletBlips = v17;

    v4->mIsOutOfMemoryConditionDetected = 0;
  }

  return v4;
}

- (EDWorkbook)initWithFileName:(id)a3 andStringOptimization:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = [(EDWorkbook *)self initWithStringOptimization:v4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mFileName, a3);
  }

  return v9;
}

- (void)setResources:(id)a3
{
  v5 = a3;
  if (self->mResources != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mResources, a3);
    v5 = v6;
  }
}

- (id)temporaryDirectory
{
  mTemporaryDirectory = self->mTemporaryDirectory;
  if (!mTemporaryDirectory)
  {
    v4 = NSTemporaryDirectory();
    v5 = self->mTemporaryDirectory;
    self->mTemporaryDirectory = v4;

    mTemporaryDirectory = self->mTemporaryDirectory;
  }

  return mTemporaryDirectory;
}

- (void)setTemporaryDirectory:(id)a3
{
  v5 = a3;
  if (self->mTemporaryDirectory != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mTemporaryDirectory, a3);
    v5 = v6;
  }
}

- (id)dateBaseDate
{
  mDateBaseDate = self->mDateBaseDate;
  if (!mDateBaseDate)
  {
    mDateBase = self->mDateBase;
    v5 = 1904;
    if (mDateBase == 1)
    {
      v5 = 1900;
    }

    if (mDateBase)
    {
      v6 = v5;
    }

    else
    {
      v6 = 1899;
    }

    if (mDateBase)
    {
      v7 = 1;
    }

    else
    {
      v7 = 30;
    }

    v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v8 setDay:v7];
    if (mDateBase)
    {
      v9 = 1;
    }

    else
    {
      v9 = 12;
    }

    [v8 setMonth:v9];
    [v8 setYear:v6];
    v10 = objc_alloc(MEMORY[0x277CBEA80]);
    v11 = [v10 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v12 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
    [v11 setTimeZone:v12];

    v13 = [v11 dateFromComponents:v8];
    v14 = self->mDateBaseDate;
    self->mDateBaseDate = v13;

    mDateBaseDate = self->mDateBaseDate;
  }

  return mDateBaseDate;
}

- (unsigned)legacyDateBase
{
  if (self->mDateBase == 2)
  {
    return 1904;
  }

  else
  {
    return 1900;
  }
}

- (void)setVisibleRange:(id)a3
{
  v5 = a3;
  if (self->mVisibleRange != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mVisibleRange, a3);
    v5 = v6;
  }
}

- (id)sheetAtIndex:(unint64_t)a3 loadIfNeeded:(BOOL)a4
{
  v4 = a4;
  if ([(EDWorkbook *)self sheetCount]<= a3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(NSMutableArray *)self->mSheets objectAtIndex:a3];
    v8 = v7;
    if (v4 && ([v7 isLoaded] & 1) == 0)
    {
      [v8 load];
    }
  }

  return v8;
}

- (void)removeSheetAtIndex:(unint64_t)a3
{
  v5 = [(EDWorkbook *)self sheetAtIndex:a3 loadIfNeeded:0];
  if (v5)
  {
    [v5 teardown];
    [(NSMutableArray *)self->mSheets removeObjectAtIndex:a3];
  }
}

- (unint64_t)indexOfSheet:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableArray *)self->mSheets indexOfObject:v4];
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (unint64_t)indexOfSheetWithName:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->mSheets count];
  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [(NSMutableArray *)self->mSheets objectAtIndex:v6];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 name];
        v10 = [v9 string];

        if (v10)
        {
          v11 = [v10 isEqual:v4];

          if (v11)
          {
            goto LABEL_10;
          }
        }

        else
        {
        }
      }

      ++v6;
    }

    while (v5 != v6);
  }

  v6 = -1;
LABEL_10:

  return v6;
}

- (void)addSheet:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSMutableArray *)self->mSheets addObject:v4];
  }
}

- (id)activeSheet
{
  if (self->mActiveSheetIndex == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(EDWorkbook *)self sheetAtIndex:v2];
  }

  return v4;
}

- (void)setMappingContext:(id)a3
{
  v5 = a3;
  if (self->mMappingContext != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mMappingContext, a3);
    v5 = v6;
  }
}

- (void)applyProcessors
{
  [(EDProcessors *)self->mProcessors applyProcessorsWithSheet:0];
  [(EDProcessors *)self->mProcessors removeAllObjects];
  v3 = [(EDWorkbook *)self sheetCount];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [(EDWorkbook *)self sheetAtIndex:i loadIfNeeded:1];
    }
  }
}

+ (id)impliedColorMap
{
  v2 = objc_alloc_init(OADColorMap);
  [(OADColorMap *)v2 addDefaultMappings:1];

  return v2;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDWorkbook;
  v2 = [(EDWorkbook *)&v4 description];

  return v2;
}

- (void)reduceMemoryIfPossible
{
  v3 = [(EDWorkbook *)self sheetCount];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [(EDWorkbook *)self sheetAtIndex:i loadIfNeeded:0];
      if ([v6 isLoaded])
      {
        [v6 reduceMemoryIfPossible];
      }
    }
  }
}

@end