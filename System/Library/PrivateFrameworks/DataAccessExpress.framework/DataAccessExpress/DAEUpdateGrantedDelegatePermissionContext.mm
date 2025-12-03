@interface DAEUpdateGrantedDelegatePermissionContext
- (DAEUpdateGrantedDelegatePermissionContext)initWithResultsBlock:(id)block;
- (void)finishedWithError:(id)error;
@end

@implementation DAEUpdateGrantedDelegatePermissionContext

- (DAEUpdateGrantedDelegatePermissionContext)initWithResultsBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = DAEUpdateGrantedDelegatePermissionContext;
  v5 = [(DAEUpdateGrantedDelegatePermissionContext *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(blockCopy);
    resultsBlock = v5->_resultsBlock;
    v5->_resultsBlock = v6;
  }

  return v5;
}

- (void)finishedWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  resultsBlock = selfCopy->_resultsBlock;
  if (resultsBlock)
  {
    resultsBlock[2](resultsBlock, errorCopy);
    v6 = selfCopy->_resultsBlock;
    selfCopy->_resultsBlock = 0;
  }

  objc_sync_exit(selfCopy);
}

@end