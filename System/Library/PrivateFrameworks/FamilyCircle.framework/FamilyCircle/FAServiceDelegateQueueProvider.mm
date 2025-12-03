@interface FAServiceDelegateQueueProvider
- (id)requestQueueWithOptions:(id)options;
- (unsigned)_qosClassForOptions:(id)options;
@end

@implementation FAServiceDelegateQueueProvider

- (unsigned)_qosClassForOptions:(id)options
{
  v3 = [options objectForKeyedSubscript:@"FAQualityOfServiceOptionKey"];
  integerValue = [v3 integerValue];

  v5 = __ROR8__(integerValue - 9, 3);
  v6 = 8 * v5 + 9;
  if (v5 >= 4)
  {
    return 21;
  }

  else
  {
    return v6;
  }
}

- (id)requestQueueWithOptions:(id)options
{
  v3 = [(FAServiceDelegateQueueProvider *)self _qosClassForOptions:options];

  return dispatch_get_global_queue(v3, 0);
}

@end