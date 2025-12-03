@interface CNAutocompleteFetchBlockDelegate
- (BOOL)autocompleteFetch:(id)fetch shouldExpectSupplementalResultsForRequest:(id)request completionHandler:(id)handler;
- (BOOL)respondsToSelector:(SEL)selector;
- (id)autocompleteFetch:(id)fetch willAdjustResults:(id)results;
- (id)resultComparatorForAutocompleteFetch:(id)fetch;
- (void)autocompleteFetch:(id)fetch didFailWithError:(id)error;
- (void)autocompleteFetch:(id)fetch didReceiveResults:(id)results;
- (void)autocompleteFetch:(id)fetch willSortResults:(id)results;
- (void)autocompleteFetchDidBeginNetworkActivity:(id)activity;
- (void)autocompleteFetchDidEndNetworkActivity:(id)activity;
- (void)autocompleteFetchDidFinish:(id)finish;
@end

@implementation CNAutocompleteFetchBlockDelegate

- (void)autocompleteFetch:(id)fetch didReceiveResults:(id)results
{
  fetchCopy = fetch;
  resultsCopy = results;
  resultHandler = [(CNAutocompleteFetchBlockDelegate *)self resultHandler];

  if (resultHandler)
  {
    resultHandler2 = [(CNAutocompleteFetchBlockDelegate *)self resultHandler];
    (resultHandler2)[2](resultHandler2, fetchCopy, resultsCopy);
  }
}

- (void)autocompleteFetchDidFinish:(id)finish
{
  finishCopy = finish;
  finishHandler = [(CNAutocompleteFetchBlockDelegate *)self finishHandler];

  if (finishHandler)
  {
    finishHandler2 = [(CNAutocompleteFetchBlockDelegate *)self finishHandler];
    (finishHandler2)[2](finishHandler2, finishCopy);
  }
}

- (void)autocompleteFetch:(id)fetch didFailWithError:(id)error
{
  fetchCopy = fetch;
  errorCopy = error;
  errorHandler = [(CNAutocompleteFetchBlockDelegate *)self errorHandler];

  if (errorHandler)
  {
    errorHandler2 = [(CNAutocompleteFetchBlockDelegate *)self errorHandler];
    (errorHandler2)[2](errorHandler2, fetchCopy, errorCopy);
  }
}

- (void)autocompleteFetchDidBeginNetworkActivity:(id)activity
{
  activityCopy = activity;
  beganNetworkActivityHandler = [(CNAutocompleteFetchBlockDelegate *)self beganNetworkActivityHandler];

  if (beganNetworkActivityHandler)
  {
    beganNetworkActivityHandler2 = [(CNAutocompleteFetchBlockDelegate *)self beganNetworkActivityHandler];
    (beganNetworkActivityHandler2)[2](beganNetworkActivityHandler2, activityCopy);
  }
}

- (void)autocompleteFetchDidEndNetworkActivity:(id)activity
{
  activityCopy = activity;
  endedNetworkActivityHandler = [(CNAutocompleteFetchBlockDelegate *)self endedNetworkActivityHandler];

  if (endedNetworkActivityHandler)
  {
    endedNetworkActivityHandler2 = [(CNAutocompleteFetchBlockDelegate *)self endedNetworkActivityHandler];
    (endedNetworkActivityHandler2)[2](endedNetworkActivityHandler2, activityCopy);
  }
}

- (BOOL)autocompleteFetch:(id)fetch shouldExpectSupplementalResultsForRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  fetchCopy = fetch;
  supplementalResultHandler = [(CNAutocompleteFetchBlockDelegate *)self supplementalResultHandler];
  v12 = (supplementalResultHandler)[2](supplementalResultHandler, fetchCopy, requestCopy, handlerCopy);

  return v12;
}

- (id)autocompleteFetch:(id)fetch willAdjustResults:(id)results
{
  resultsCopy = results;
  adjustmentHandler = [(CNAutocompleteFetchBlockDelegate *)self adjustmentHandler];
  v7 = (adjustmentHandler)[2](adjustmentHandler, resultsCopy);

  return v7;
}

- (void)autocompleteFetch:(id)fetch willSortResults:(id)results
{
  resultsCopy = results;
  willSortHandler = [(CNAutocompleteFetchBlockDelegate *)self willSortHandler];

  if (willSortHandler)
  {
    willSortHandler2 = [(CNAutocompleteFetchBlockDelegate *)self willSortHandler];
    (willSortHandler2)[2](willSortHandler2, resultsCopy);
  }
}

- (id)resultComparatorForAutocompleteFetch:(id)fetch
{
  comparatorHandler = [(CNAutocompleteFetchBlockDelegate *)self comparatorHandler];

  if (comparatorHandler)
  {
    comparatorHandler2 = [(CNAutocompleteFetchBlockDelegate *)self comparatorHandler];
    v6 = comparatorHandler2[2]();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (sel_autocompleteFetch_didReceiveResults_ == selector)
  {
    resultHandler = [(CNAutocompleteFetchBlockDelegate *)self resultHandler];
LABEL_20:
    v3 = resultHandler != 0;

    return v3;
  }

  if (sel_autocompleteFetchDidFinish_ == selector)
  {
    resultHandler = [(CNAutocompleteFetchBlockDelegate *)self finishHandler];
    goto LABEL_20;
  }

  if (sel_autocompleteFetch_didFailWithError_ == selector)
  {
    resultHandler = [(CNAutocompleteFetchBlockDelegate *)self errorHandler];
    goto LABEL_20;
  }

  if (sel_autocompleteFetchDidBeginNetworkActivity_ == selector)
  {
    resultHandler = [(CNAutocompleteFetchBlockDelegate *)self beganNetworkActivityHandler];
    goto LABEL_20;
  }

  if (sel_autocompleteFetchDidEndNetworkActivity_ == selector)
  {
    resultHandler = [(CNAutocompleteFetchBlockDelegate *)self endedNetworkActivityHandler];
    goto LABEL_20;
  }

  if (sel_autocompleteFetch_shouldExpectSupplementalResultsForRequest_completionHandler_ == selector)
  {
    resultHandler = [(CNAutocompleteFetchBlockDelegate *)self supplementalResultHandler];
    goto LABEL_20;
  }

  if (sel_autocompleteFetch_willAdjustResults_ == selector)
  {
    resultHandler = [(CNAutocompleteFetchBlockDelegate *)self adjustmentHandler];
    goto LABEL_20;
  }

  if (sel_autocompleteFetch_willSortResults_ == selector)
  {
    resultHandler = [(CNAutocompleteFetchBlockDelegate *)self willSortHandler];
    goto LABEL_20;
  }

  if (sel_resultComparatorForAutocompleteFetch_ == selector)
  {
    resultHandler = [(CNAutocompleteFetchBlockDelegate *)self comparatorHandler];
    goto LABEL_20;
  }

  v6.receiver = self;
  v6.super_class = CNAutocompleteFetchBlockDelegate;
  return [(CNAutocompleteFetchBlockDelegate *)&v6 respondsToSelector:?];
}

@end