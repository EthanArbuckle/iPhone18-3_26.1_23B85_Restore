@interface NDNewsServiceConnectionClientProxy
- (NDNewsServiceClient)client;
- (void)serviceHasNewTodayResults;
@end

@implementation NDNewsServiceConnectionClientProxy

- (void)serviceHasNewTodayResults
{
  client = [(NDNewsServiceConnectionClientProxy *)self client];
  [client serviceHasNewTodayResults];
}

- (NDNewsServiceClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

@end