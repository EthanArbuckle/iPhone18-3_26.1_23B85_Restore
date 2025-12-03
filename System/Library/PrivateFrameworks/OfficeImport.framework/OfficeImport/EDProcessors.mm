@interface EDProcessors
- (EDProcessors)initWithWorkbook:(id)workbook;
- (void)addProcessorClass:(Class)class;
- (void)applyProcessorsWithSheet:(id)sheet;
- (void)markObject:(id)object processor:(Class)processor;
- (void)removeProcessorClass:(Class)class;
@end

@implementation EDProcessors

- (EDProcessors)initWithWorkbook:(id)workbook
{
  workbookCopy = workbook;
  v10.receiver = self;
  v10.super_class = EDProcessors;
  v5 = [(EDProcessors *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mWorkbook, workbookCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mProcessors = v6->mProcessors;
    v6->mProcessors = v7;
  }

  return v6;
}

- (void)addProcessorClass:(Class)class
{
  v4 = [class alloc];
  WeakRetained = objc_loadWeakRetained(&self->mWorkbook);
  v6 = [v4 initWithWorkbook:WeakRetained];

  [(NSMutableArray *)self->mProcessors addObject:v6];
}

- (void)removeProcessorClass:(Class)class
{
  v5 = [(NSMutableArray *)self->mProcessors count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [(NSMutableArray *)self->mProcessors objectAtIndex:v7];
      v9 = objc_opt_class();

      if (v9 == class)
      {
        break;
      }

      if (v6 == ++v7)
      {
        return;
      }
    }

    mProcessors = self->mProcessors;

    [(NSMutableArray *)mProcessors removeObjectAtIndex:v7];
  }
}

- (void)markObject:(id)object processor:(Class)processor
{
  objectCopy = object;
  v6 = [(NSMutableArray *)self->mProcessors count];
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = [(NSMutableArray *)self->mProcessors objectAtIndex:v7];
      if (v8)
      {
        if (objc_opt_class() == processor && [v8 isObjectSupported:objectCopy])
        {
          break;
        }
      }

      if (v6 == ++v7)
      {
        goto LABEL_7;
      }
    }

    [v8 markObjectForPostProcessing:objectCopy];
  }

LABEL_7:
}

- (void)applyProcessorsWithSheet:(id)sheet
{
  sheetCopy = sheet;
  v4 = objc_autoreleasePoolPush();
  v5 = [(NSMutableArray *)self->mProcessors count];
  [TCProgressContext createStageWithSteps:v5 takingSteps:1.0];
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = [(NSMutableArray *)self->mProcessors objectAtIndex:i];
      [v7 applyProcessorWithSheet:sheetCopy];

      [TCProgressContext advanceProgress:1.0];
    }
  }

  [(EDProcessors *)self removeAllObjects];
  +[TCProgressContext endStage];
  objc_autoreleasePoolPop(v4);
}

@end