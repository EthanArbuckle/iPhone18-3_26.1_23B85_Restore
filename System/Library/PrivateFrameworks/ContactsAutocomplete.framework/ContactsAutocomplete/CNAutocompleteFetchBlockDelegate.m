@interface CNAutocompleteFetchBlockDelegate
- (BOOL)autocompleteFetch:(id)a3 shouldExpectSupplementalResultsForRequest:(id)a4 completionHandler:(id)a5;
- (BOOL)respondsToSelector:(SEL)a3;
- (id)autocompleteFetch:(id)a3 willAdjustResults:(id)a4;
- (id)resultComparatorForAutocompleteFetch:(id)a3;
- (void)autocompleteFetch:(id)a3 didFailWithError:(id)a4;
- (void)autocompleteFetch:(id)a3 didReceiveResults:(id)a4;
- (void)autocompleteFetch:(id)a3 willSortResults:(id)a4;
- (void)autocompleteFetchDidBeginNetworkActivity:(id)a3;
- (void)autocompleteFetchDidEndNetworkActivity:(id)a3;
- (void)autocompleteFetchDidFinish:(id)a3;
@end

@implementation CNAutocompleteFetchBlockDelegate

- (void)autocompleteFetch:(id)a3 didReceiveResults:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(CNAutocompleteFetchBlockDelegate *)self resultHandler];

  if (v7)
  {
    v8 = [(CNAutocompleteFetchBlockDelegate *)self resultHandler];
    (v8)[2](v8, v9, v6);
  }
}

- (void)autocompleteFetchDidFinish:(id)a3
{
  v6 = a3;
  v4 = [(CNAutocompleteFetchBlockDelegate *)self finishHandler];

  if (v4)
  {
    v5 = [(CNAutocompleteFetchBlockDelegate *)self finishHandler];
    (v5)[2](v5, v6);
  }
}

- (void)autocompleteFetch:(id)a3 didFailWithError:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(CNAutocompleteFetchBlockDelegate *)self errorHandler];

  if (v7)
  {
    v8 = [(CNAutocompleteFetchBlockDelegate *)self errorHandler];
    (v8)[2](v8, v9, v6);
  }
}

- (void)autocompleteFetchDidBeginNetworkActivity:(id)a3
{
  v6 = a3;
  v4 = [(CNAutocompleteFetchBlockDelegate *)self beganNetworkActivityHandler];

  if (v4)
  {
    v5 = [(CNAutocompleteFetchBlockDelegate *)self beganNetworkActivityHandler];
    (v5)[2](v5, v6);
  }
}

- (void)autocompleteFetchDidEndNetworkActivity:(id)a3
{
  v6 = a3;
  v4 = [(CNAutocompleteFetchBlockDelegate *)self endedNetworkActivityHandler];

  if (v4)
  {
    v5 = [(CNAutocompleteFetchBlockDelegate *)self endedNetworkActivityHandler];
    (v5)[2](v5, v6);
  }
}

- (BOOL)autocompleteFetch:(id)a3 shouldExpectSupplementalResultsForRequest:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CNAutocompleteFetchBlockDelegate *)self supplementalResultHandler];
  v12 = (v11)[2](v11, v10, v9, v8);

  return v12;
}

- (id)autocompleteFetch:(id)a3 willAdjustResults:(id)a4
{
  v5 = a4;
  v6 = [(CNAutocompleteFetchBlockDelegate *)self adjustmentHandler];
  v7 = (v6)[2](v6, v5);

  return v7;
}

- (void)autocompleteFetch:(id)a3 willSortResults:(id)a4
{
  v7 = a4;
  v5 = [(CNAutocompleteFetchBlockDelegate *)self willSortHandler];

  if (v5)
  {
    v6 = [(CNAutocompleteFetchBlockDelegate *)self willSortHandler];
    (v6)[2](v6, v7);
  }
}

- (id)resultComparatorForAutocompleteFetch:(id)a3
{
  v4 = [(CNAutocompleteFetchBlockDelegate *)self comparatorHandler];

  if (v4)
  {
    v5 = [(CNAutocompleteFetchBlockDelegate *)self comparatorHandler];
    v6 = v5[2]();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (sel_autocompleteFetch_didReceiveResults_ == a3)
  {
    v4 = [(CNAutocompleteFetchBlockDelegate *)self resultHandler];
LABEL_20:
    v3 = v4 != 0;

    return v3;
  }

  if (sel_autocompleteFetchDidFinish_ == a3)
  {
    v4 = [(CNAutocompleteFetchBlockDelegate *)self finishHandler];
    goto LABEL_20;
  }

  if (sel_autocompleteFetch_didFailWithError_ == a3)
  {
    v4 = [(CNAutocompleteFetchBlockDelegate *)self errorHandler];
    goto LABEL_20;
  }

  if (sel_autocompleteFetchDidBeginNetworkActivity_ == a3)
  {
    v4 = [(CNAutocompleteFetchBlockDelegate *)self beganNetworkActivityHandler];
    goto LABEL_20;
  }

  if (sel_autocompleteFetchDidEndNetworkActivity_ == a3)
  {
    v4 = [(CNAutocompleteFetchBlockDelegate *)self endedNetworkActivityHandler];
    goto LABEL_20;
  }

  if (sel_autocompleteFetch_shouldExpectSupplementalResultsForRequest_completionHandler_ == a3)
  {
    v4 = [(CNAutocompleteFetchBlockDelegate *)self supplementalResultHandler];
    goto LABEL_20;
  }

  if (sel_autocompleteFetch_willAdjustResults_ == a3)
  {
    v4 = [(CNAutocompleteFetchBlockDelegate *)self adjustmentHandler];
    goto LABEL_20;
  }

  if (sel_autocompleteFetch_willSortResults_ == a3)
  {
    v4 = [(CNAutocompleteFetchBlockDelegate *)self willSortHandler];
    goto LABEL_20;
  }

  if (sel_resultComparatorForAutocompleteFetch_ == a3)
  {
    v4 = [(CNAutocompleteFetchBlockDelegate *)self comparatorHandler];
    goto LABEL_20;
  }

  v6.receiver = self;
  v6.super_class = CNAutocompleteFetchBlockDelegate;
  return [(CNAutocompleteFetchBlockDelegate *)&v6 respondsToSelector:?];
}

@end