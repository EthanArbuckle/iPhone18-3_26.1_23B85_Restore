@interface EDProcessor
- (EDProcessor)initWithWorkbook:(id)a3;
- (void)applyProcessorWithSheet:(id)a3;
@end

@implementation EDProcessor

- (EDProcessor)initWithWorkbook:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = EDProcessor;
  v5 = [(EDProcessor *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mWorkbook, v4);
    v7 = [v4 resources];
    objc_storeWeak(&v6->mResources, v7);

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mObjects = v6->mObjects;
    v6->mObjects = v8;
  }

  return v6;
}

- (void)applyProcessorWithSheet:(id)a3
{
  v6 = a3;
  for (i = 0; [(NSMutableArray *)self->mObjects count]> i; ++i)
  {
    v5 = [(NSMutableArray *)self->mObjects objectAtIndex:i];
    if (v5)
    {
      if ([(EDProcessor *)self isObjectSupported:v5])
      {
        [(EDProcessor *)self applyProcessorToObject:v5 sheet:v6];
      }
    }
  }
}

@end