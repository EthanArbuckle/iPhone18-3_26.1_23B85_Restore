@interface SearchManager
- (SearchManager)init;
- (id)fullSearchUsingSearchContext:(id)context;
- (void)dealloc;
- (void)searchOperationDidFinish:(id)finish;
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

- (id)fullSearchUsingSearchContext:(id)context
{
  contextCopy = context;
  referencedMailboxes = [contextCopy referencedMailboxes];
  v6 = [[SearchOperation alloc] initWithDelegate:self mailboxes:referencedMailboxes searchContext:contextCopy];
  if (v6)
  {
    [(NSOperationQueue *)self->_workQueue addOperation:v6];
    progress = [(SearchOperation *)v6 progress];
  }

  else
  {
    progress = 0;
  }

  return progress;
}

- (void)searchOperationDidFinish:(id)finish
{
  finishCopy = finish;
  identifier = [finishCopy identifier];
  isCancelled = [finishCopy isCancelled];
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = identifier;
    v11 = 1024;
    v12 = isCancelled;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#search-manager FinishedSearchOperation identifier:%{public}@ isCancelled:%{BOOL}d", &v9, 0x12u);
  }

  searchContext = [finishCopy searchContext];
  delegate = [searchContext delegate];
  [delegate remoteSearchDidFinish];
}

@end