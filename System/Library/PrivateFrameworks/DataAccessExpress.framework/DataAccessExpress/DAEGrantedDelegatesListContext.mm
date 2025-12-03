@interface DAEGrantedDelegatesListContext
- (DAEGrantedDelegatesListContext)initWithResultsBlock:(id)block;
- (void)finishedWithResults:(id)results error:(id)error;
@end

@implementation DAEGrantedDelegatesListContext

- (DAEGrantedDelegatesListContext)initWithResultsBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = DAEGrantedDelegatesListContext;
  v5 = [(DAEGrantedDelegatesListContext *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(blockCopy);
    resultsBlock = v5->_resultsBlock;
    v5->_resultsBlock = v6;
  }

  return v5;
}

- (void)finishedWithResults:(id)results error:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  resultsBlock = selfCopy->_resultsBlock;
  if (resultsBlock)
  {
    resultsBlock[2](resultsBlock, resultsCopy, errorCopy);
    v9 = selfCopy->_resultsBlock;
    selfCopy->_resultsBlock = 0;
  }

  objc_sync_exit(selfCopy);
}

@end