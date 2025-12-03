@interface ESECalendarDirectorySearchContext
- (ESECalendarDirectorySearchContext)initWithResultsBlock:(id)block completionBlock:(id)completionBlock;
- (void)resultsReturned:(id)returned;
@end

@implementation ESECalendarDirectorySearchContext

- (ESECalendarDirectorySearchContext)initWithResultsBlock:(id)block completionBlock:(id)completionBlock
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v14.receiver = self;
  v14.super_class = ESECalendarDirectorySearchContext;
  v8 = [(ESECalendarDirectorySearchContext *)&v14 init];
  if (v8)
  {
    v9 = MEMORY[0x24C212B50](blockCopy);
    resultsBlock = v8->_resultsBlock;
    v8->_resultsBlock = v9;

    v11 = MEMORY[0x24C212B50](completionBlockCopy);
    completionBlock = v8->_completionBlock;
    v8->_completionBlock = v11;
  }

  return v8;
}

- (void)resultsReturned:(id)returned
{
  returnedCopy = returned;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  resultsBlock = selfCopy->_resultsBlock;
  if (resultsBlock)
  {
    resultsBlock[2](resultsBlock, returnedCopy);
  }

  objc_sync_exit(selfCopy);
}

@end