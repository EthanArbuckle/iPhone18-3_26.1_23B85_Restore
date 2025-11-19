@interface DAECalendarDirectorySearchContext
- (DAECalendarDirectorySearchContext)initWithResultsBlock:(id)a3 completionBlock:(id)a4;
- (void)resultsReturned:(id)a3;
@end

@implementation DAECalendarDirectorySearchContext

- (DAECalendarDirectorySearchContext)initWithResultsBlock:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = DAECalendarDirectorySearchContext;
  v8 = [(DAECalendarDirectorySearchContext *)&v14 init];
  if (v8)
  {
    v9 = _Block_copy(v6);
    resultsBlock = v8->_resultsBlock;
    v8->_resultsBlock = v9;

    v11 = _Block_copy(v7);
    completionBlock = v8->_completionBlock;
    v8->_completionBlock = v11;
  }

  return v8;
}

- (void)resultsReturned:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  resultsBlock = v4->_resultsBlock;
  if (resultsBlock)
  {
    resultsBlock[2](resultsBlock, v6);
  }

  objc_sync_exit(v4);
}

@end