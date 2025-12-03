@interface EDWorkbook
+ (id)impliedColorMap;
- (EDWorkbook)initWithFileName:(id)name andStringOptimization:(BOOL)optimization;
- (EDWorkbook)initWithStringOptimization:(BOOL)optimization;
- (id)activeSheet;
- (id)dateBaseDate;
- (id)description;
- (id)sheetAtIndex:(unint64_t)index loadIfNeeded:(BOOL)needed;
- (id)temporaryDirectory;
- (unint64_t)indexOfSheet:(id)sheet;
- (unint64_t)indexOfSheetWithName:(id)name;
- (unsigned)legacyDateBase;
- (void)addSheet:(id)sheet;
- (void)applyProcessors;
- (void)dealloc;
- (void)reduceMemoryIfPossible;
- (void)removeSheetAtIndex:(unint64_t)index;
- (void)setMappingContext:(id)context;
- (void)setResources:(id)resources;
- (void)setTemporaryDirectory:(id)directory;
- (void)setVisibleRange:(id)range;
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

- (EDWorkbook)initWithStringOptimization:(BOOL)optimization
{
  optimizationCopy = optimization;
  v20.receiver = self;
  v20.super_class = EDWorkbook;
  v4 = [(OCDDocument *)&v20 init];
  if (v4)
  {
    v5 = [[EDResources alloc] initWithStringOptimization:optimizationCopy];
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

- (EDWorkbook)initWithFileName:(id)name andStringOptimization:(BOOL)optimization
{
  optimizationCopy = optimization;
  nameCopy = name;
  v8 = [(EDWorkbook *)self initWithStringOptimization:optimizationCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mFileName, name);
  }

  return v9;
}

- (void)setResources:(id)resources
{
  resourcesCopy = resources;
  if (self->mResources != resourcesCopy)
  {
    v6 = resourcesCopy;
    objc_storeStrong(&self->mResources, resources);
    resourcesCopy = v6;
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

- (void)setTemporaryDirectory:(id)directory
{
  directoryCopy = directory;
  if (self->mTemporaryDirectory != directoryCopy)
  {
    v6 = directoryCopy;
    objc_storeStrong(&self->mTemporaryDirectory, directory);
    directoryCopy = v6;
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

- (void)setVisibleRange:(id)range
{
  rangeCopy = range;
  if (self->mVisibleRange != rangeCopy)
  {
    v6 = rangeCopy;
    objc_storeStrong(&self->mVisibleRange, range);
    rangeCopy = v6;
  }
}

- (id)sheetAtIndex:(unint64_t)index loadIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  if ([(EDWorkbook *)self sheetCount]<= index)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(NSMutableArray *)self->mSheets objectAtIndex:index];
    v8 = v7;
    if (neededCopy && ([v7 isLoaded] & 1) == 0)
    {
      [v8 load];
    }
  }

  return v8;
}

- (void)removeSheetAtIndex:(unint64_t)index
{
  v5 = [(EDWorkbook *)self sheetAtIndex:index loadIfNeeded:0];
  if (v5)
  {
    [v5 teardown];
    [(NSMutableArray *)self->mSheets removeObjectAtIndex:index];
  }
}

- (unint64_t)indexOfSheet:(id)sheet
{
  sheetCopy = sheet;
  if (sheetCopy)
  {
    v5 = [(NSMutableArray *)self->mSheets indexOfObject:sheetCopy];
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (unint64_t)indexOfSheetWithName:(id)name
{
  nameCopy = name;
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
        name = [v7 name];
        string = [name string];

        if (string)
        {
          v11 = [string isEqual:nameCopy];

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

- (void)addSheet:(id)sheet
{
  sheetCopy = sheet;
  if (sheetCopy)
  {
    [(NSMutableArray *)self->mSheets addObject:sheetCopy];
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

- (void)setMappingContext:(id)context
{
  contextCopy = context;
  if (self->mMappingContext != contextCopy)
  {
    v6 = contextCopy;
    objc_storeStrong(&self->mMappingContext, context);
    contextCopy = v6;
  }
}

- (void)applyProcessors
{
  [(EDProcessors *)self->mProcessors applyProcessorsWithSheet:0];
  [(EDProcessors *)self->mProcessors removeAllObjects];
  sheetCount = [(EDWorkbook *)self sheetCount];
  if (sheetCount)
  {
    v4 = sheetCount;
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
  sheetCount = [(EDWorkbook *)self sheetCount];
  if (sheetCount)
  {
    v4 = sheetCount;
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