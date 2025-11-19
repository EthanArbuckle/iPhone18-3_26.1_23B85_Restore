@interface NTKTimelineUpdateEndDateOperation
- (void)_getEndDate;
- (void)_invokeHandler;
@end

@implementation NTKTimelineUpdateEndDateOperation

- (void)_getEndDate
{
  if (![(NTKTimelineDataOperation *)self canceled])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__NTKTimelineUpdateEndDateOperation__getEndDate__block_invoke;
    aBlock[3] = &unk_27877EBB8;
    aBlock[4] = self;
    v3 = _Block_copy(aBlock);
    localDataSource = self->super._localDataSource;
    if (localDataSource)
    {
      [(CLKCComplicationDataSource *)localDataSource getTimelineEndDateWithHandler:v3];
    }

    else
    {
      [(CLKComplicationDataSource *)self->super._remoteDataSource getTimelineEndDateForComplication:self->super._remoteComplication withHandler:v3];
    }
  }
}

void __48__NTKTimelineUpdateEndDateOperation__getEndDate__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 40), a2);
  v4 = a2;
  [*(a1 + 32) _invokeHandler];
}

- (void)_invokeHandler
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NTKTimelineUpdateEndDateOperation__invokeHandler__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __51__NTKTimelineUpdateEndDateOperation__invokeHandler__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 48))
  {
    result = [result canceled];
    if ((result & 1) == 0)
    {
      v3 = *(*(*(a1 + 32) + 48) + 16);

      return v3();
    }
  }

  return result;
}

@end