@interface DAEGrantedDelegatesListContext
- (DAEGrantedDelegatesListContext)initWithResultsBlock:(id)a3;
- (void)finishedWithResults:(id)a3 error:(id)a4;
@end

@implementation DAEGrantedDelegatesListContext

- (DAEGrantedDelegatesListContext)initWithResultsBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DAEGrantedDelegatesListContext;
  v5 = [(DAEGrantedDelegatesListContext *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    resultsBlock = v5->_resultsBlock;
    v5->_resultsBlock = v6;
  }

  return v5;
}

- (void)finishedWithResults:(id)a3 error:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  resultsBlock = v7->_resultsBlock;
  if (resultsBlock)
  {
    resultsBlock[2](resultsBlock, v10, v6);
    v9 = v7->_resultsBlock;
    v7->_resultsBlock = 0;
  }

  objc_sync_exit(v7);
}

@end