@interface NTKTimelineExtendDataOperation
- (void)_cancel;
- (void)_extendRight;
- (void)_invokeHandlerWithEntries:(id)entries;
@end

@implementation NTKTimelineExtendDataOperation

- (void)_cancel
{
  handler = self->_handler;
  self->_handler = 0;
}

- (void)_invokeHandlerWithEntries:(id)entries
{
  entriesCopy = entries;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__NTKTimelineExtendDataOperation__invokeHandlerWithEntries___block_invoke;
  v6[3] = &unk_27877E438;
  v6[4] = self;
  v7 = entriesCopy;
  v5 = entriesCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __60__NTKTimelineExtendDataOperation__invokeHandlerWithEntries___block_invoke(uint64_t a1)
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

- (void)_extendRight
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__NTKTimelineExtendDataOperation__extendRight__block_invoke;
  aBlock[3] = &unk_27877EC80;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  localDataSource = self->super._localDataSource;
  if (localDataSource)
  {
    [(CLKCComplicationDataSource *)localDataSource getTimelineEntriesAfterDate:self->_boundaryDate limit:100 withHandler:v3];
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__3;
    v17 = __Block_byref_object_dispose__3;
    v18 = 0;
    v5 = [[NTKTimelineRemoteDataSourceProvider alloc] initWithDataSource:self->super._remoteDataSource];
    v6 = v14[5];
    v14[5] = v5;

    v7 = v14[5];
    remoteComplication = self->super._remoteComplication;
    boundaryDate = self->_boundaryDate;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__NTKTimelineExtendDataOperation__extendRight__block_invoke_2;
    v10[3] = &unk_27877ECA8;
    v11 = v3;
    v12 = &v13;
    [v7 getEntriesForComplication:remoteComplication afterDate:boundaryDate limit:100 completion:v10];

    _Block_object_dispose(&v13, 8);
  }
}

void __46__NTKTimelineExtendDataOperation__extendRight__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [v2 _finalizedValidEntries:a2];
  [v2 _invokeHandlerWithEntries:v3];
}

void __46__NTKTimelineExtendDataOperation__extendRight__block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

@end