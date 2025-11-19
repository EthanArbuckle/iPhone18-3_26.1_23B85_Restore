@interface DAEUpdateGrantedDelegatePermissionContext
- (DAEUpdateGrantedDelegatePermissionContext)initWithResultsBlock:(id)a3;
- (void)finishedWithError:(id)a3;
@end

@implementation DAEUpdateGrantedDelegatePermissionContext

- (DAEUpdateGrantedDelegatePermissionContext)initWithResultsBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DAEUpdateGrantedDelegatePermissionContext;
  v5 = [(DAEUpdateGrantedDelegatePermissionContext *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    resultsBlock = v5->_resultsBlock;
    v5->_resultsBlock = v6;
  }

  return v5;
}

- (void)finishedWithError:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  resultsBlock = v4->_resultsBlock;
  if (resultsBlock)
  {
    resultsBlock[2](resultsBlock, v7);
    v6 = v4->_resultsBlock;
    v4->_resultsBlock = 0;
  }

  objc_sync_exit(v4);
}

@end