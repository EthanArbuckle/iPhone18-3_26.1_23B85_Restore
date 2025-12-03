@interface EDProcessor
- (EDProcessor)initWithWorkbook:(id)workbook;
- (void)applyProcessorWithSheet:(id)sheet;
@end

@implementation EDProcessor

- (EDProcessor)initWithWorkbook:(id)workbook
{
  workbookCopy = workbook;
  v11.receiver = self;
  v11.super_class = EDProcessor;
  v5 = [(EDProcessor *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mWorkbook, workbookCopy);
    resources = [workbookCopy resources];
    objc_storeWeak(&v6->mResources, resources);

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mObjects = v6->mObjects;
    v6->mObjects = v8;
  }

  return v6;
}

- (void)applyProcessorWithSheet:(id)sheet
{
  sheetCopy = sheet;
  for (i = 0; [(NSMutableArray *)self->mObjects count]> i; ++i)
  {
    v5 = [(NSMutableArray *)self->mObjects objectAtIndex:i];
    if (v5)
    {
      if ([(EDProcessor *)self isObjectSupported:v5])
      {
        [(EDProcessor *)self applyProcessorToObject:v5 sheet:sheetCopy];
      }
    }
  }
}

@end