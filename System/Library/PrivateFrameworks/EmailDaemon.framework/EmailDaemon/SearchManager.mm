@interface SearchManager
- (SearchManager)init;
- (id)fullSearchUsingSearchContext:(id)a3;
- (void)dealloc;
- (void)searchOperationDidFinish:(id)a3;
@end

@implementation SearchManager

- (SearchManager)init
{
  v7.receiver = self;
  v7.super_class = SearchManager;
  v2 = [(SearchManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(NSOperationQueue);
    workQueue = v3->_workQueue;
    v3->_workQueue = v4;

    [(NSOperationQueue *)v3->_workQueue setQualityOfService:25];
    [(NSOperationQueue *)v3->_workQueue setMaxConcurrentOperationCount:3];
  }

  return v3;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_workQueue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = SearchManager;
  [(SearchManager *)&v3 dealloc];
}

- (id)fullSearchUsingSearchContext:(id)a3
{
  v4 = a3;
  v5 = [v4 referencedMailboxes];
  v6 = [[SearchOperation alloc] initWithDelegate:self mailboxes:v5 searchContext:v4];
  if (v6)
  {
    [(NSOperationQueue *)self->_workQueue addOperation:v6];
    v7 = [(SearchOperation *)v6 progress];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)searchOperationDidFinish:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [v3 isCancelled];
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#search-manager FinishedSearchOperation identifier:%{public}@ isCancelled:%{BOOL}d", &v9, 0x12u);
  }

  v7 = [v3 searchContext];
  v8 = [v7 delegate];
  [v8 remoteSearchDidFinish];
}

@end