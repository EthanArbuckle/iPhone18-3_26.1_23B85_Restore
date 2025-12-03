@interface FPDWrappedSearchEnumeratorProxy
- (FPDWrappedSearchEnumeratorProxy)initWithTarget:(id)target maximumNumberOfResultsPerPage:(int64_t)page;
- (void)enumerateSearchResultsForObserver:(id)observer startingAtPage:(id)page;
@end

@implementation FPDWrappedSearchEnumeratorProxy

- (FPDWrappedSearchEnumeratorProxy)initWithTarget:(id)target maximumNumberOfResultsPerPage:(int64_t)page
{
  targetCopy = target;
  v11.receiver = self;
  v11.super_class = FPDWrappedSearchEnumeratorProxy;
  v8 = [(FPDWrappedSearchEnumeratorProxy *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_target, target);
    v9->_maximumNumberOfResultsPerPage = page;
  }

  return v9;
}

- (void)enumerateSearchResultsForObserver:(id)observer startingAtPage:(id)page
{
  pageCopy = page;
  observerCopy = observer;
  v8 = [[FPDWrappedSearchEnumeratorObserverProxy alloc] initWithTarget:observerCopy maximumNumberOfResultsPerPage:self->_maximumNumberOfResultsPerPage];

  [(FPXSearchEnumerator *)self->_target enumerateSearchResultsForObserver:v8 startingAtPage:pageCopy];
}

@end