@interface DAHolidayCalendarsFetchContext
- (DAHolidayCalendarsFetchContext)initWithResultsBlock:(id)block completionBlock:(id)completionBlock;
- (void)finishedWithError:(id)error;
- (void)resultsReturned:(id)returned;
@end

@implementation DAHolidayCalendarsFetchContext

- (DAHolidayCalendarsFetchContext)initWithResultsBlock:(id)block completionBlock:(id)completionBlock
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v14.receiver = self;
  v14.super_class = DAHolidayCalendarsFetchContext;
  v8 = [(DAHolidayCalendarsFetchContext *)&v14 init];
  if (v8)
  {
    v9 = _Block_copy(blockCopy);
    resultsBlock = v8->_resultsBlock;
    v8->_resultsBlock = v9;

    v11 = _Block_copy(completionBlockCopy);
    completionBlock = v8->_completionBlock;
    v8->_completionBlock = v11;
  }

  return v8;
}

- (void)resultsReturned:(id)returned
{
  returnedCopy = returned;
  if (self->_resultsBlock)
  {
    queue = self->_queue;
    if (queue)
    {
      v6 = queue;
    }

    else
    {
      v6 = dispatch_get_global_queue(0, 0);
    }

    v7 = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__DAHolidayCalendarsFetchContext_resultsReturned___block_invoke;
    v8[3] = &unk_27851FED8;
    v8[4] = self;
    v9 = returnedCopy;
    dispatch_async(v7, v8);
  }
}

- (void)finishedWithError:(id)error
{
  errorCopy = error;
  if (self->_completionBlock)
  {
    queue = self->_queue;
    if (queue)
    {
      v6 = queue;
    }

    else
    {
      v6 = dispatch_get_global_queue(0, 0);
    }

    v7 = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__DAHolidayCalendarsFetchContext_finishedWithError___block_invoke;
    v8[3] = &unk_27851FED8;
    v8[4] = self;
    v9 = errorCopy;
    dispatch_async(v7, v8);
  }
}

@end