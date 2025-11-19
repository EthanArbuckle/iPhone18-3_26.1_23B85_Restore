@interface NDNewsServiceConnectionClientProxy
- (NDNewsServiceClient)client;
- (void)serviceHasNewTodayResults;
@end

@implementation NDNewsServiceConnectionClientProxy

- (void)serviceHasNewTodayResults
{
  v2 = [(NDNewsServiceConnectionClientProxy *)self client];
  [v2 serviceHasNewTodayResults];
}

- (NDNewsServiceClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

@end