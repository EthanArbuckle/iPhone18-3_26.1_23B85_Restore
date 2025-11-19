@interface FPDWrappedSearchEnumeratorProxy
- (FPDWrappedSearchEnumeratorProxy)initWithTarget:(id)a3 maximumNumberOfResultsPerPage:(int64_t)a4;
- (void)enumerateSearchResultsForObserver:(id)a3 startingAtPage:(id)a4;
@end

@implementation FPDWrappedSearchEnumeratorProxy

- (FPDWrappedSearchEnumeratorProxy)initWithTarget:(id)a3 maximumNumberOfResultsPerPage:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = FPDWrappedSearchEnumeratorProxy;
  v8 = [(FPDWrappedSearchEnumeratorProxy *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_target, a3);
    v9->_maximumNumberOfResultsPerPage = a4;
  }

  return v9;
}

- (void)enumerateSearchResultsForObserver:(id)a3 startingAtPage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[FPDWrappedSearchEnumeratorObserverProxy alloc] initWithTarget:v7 maximumNumberOfResultsPerPage:self->_maximumNumberOfResultsPerPage];

  [(FPXSearchEnumerator *)self->_target enumerateSearchResultsForObserver:v8 startingAtPage:v6];
}

@end