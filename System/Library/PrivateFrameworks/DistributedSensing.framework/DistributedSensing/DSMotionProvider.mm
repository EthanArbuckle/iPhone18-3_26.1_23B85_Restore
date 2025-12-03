@interface DSMotionProvider
- (DSMotionProvider)initWithDelegate:(id)delegate queue:(id)queue;
- (DSMotionProviderDelegate)delegate;
- (void)failedToStartProviderWithOptions:(id)options error:(id)error;
- (void)requestedMotionDataWithOption:(id)option;
- (void)sendMotionData:(id)data;
- (void)startMotionDataProviderWithOptions:(id)options;
- (void)startedProviderWithOptions:(id)options;
- (void)stopMotionDataProvider;
- (void)stoppedProvider;
- (void)subscribedToMotionDataWithOptions:(id)options;
- (void)subscriptionExpired;
- (void)unsubscribed;
@end

@implementation DSMotionProvider

- (DSMotionProvider)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = DSMotionProvider;
  v7 = [(DSProvider *)&v10 initWithDispatchQueue:queue];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
  }

  return v8;
}

- (void)startMotionDataProviderWithOptions:(id)options
{
  v3.receiver = self;
  v3.super_class = DSMotionProvider;
  [(DSProvider *)&v3 startMotionDataProviderWithOptions:options];
}

- (void)sendMotionData:(id)data
{
  v3.receiver = self;
  v3.super_class = DSMotionProvider;
  [(DSProvider *)&v3 sendMotionData:data];
}

- (void)stopMotionDataProvider
{
  v2.receiver = self;
  v2.super_class = DSMotionProvider;
  [(DSProvider *)&v2 stopMotionDataProvider];
}

- (void)startedProviderWithOptions:(id)options
{
  delegate = [(DSMotionProvider *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(DSMotionProvider *)self delegate];
    [delegate2 dsmotionDidStartProvider:self];
  }
}

- (void)failedToStartProviderWithOptions:(id)options error:(id)error
{
  errorCopy = error;
  delegate = [(DSMotionProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(DSMotionProvider *)self delegate];
    [delegate2 dsmotion:self didFailToStartProviderWithError:errorCopy];
  }
}

- (void)subscribedToMotionDataWithOptions:(id)options
{
  optionsCopy = options;
  delegate = [(DSMotionProvider *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(DSMotionProvider *)self delegate];
    [delegate2 dsmotion:self didSubscribeToMotionDataWithOptions:optionsCopy];
  }
}

- (void)requestedMotionDataWithOption:(id)option
{
  optionCopy = option;
  delegate = [(DSMotionProvider *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(DSMotionProvider *)self delegate];
    [delegate2 dsmotion:self didRequestMotionDataWithOptions:optionCopy];
  }
}

- (void)subscriptionExpired
{
  delegate = [(DSMotionProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(DSMotionProvider *)self delegate];
    [delegate2 dsmotionDidExpireMotionDataSubscription:self];
  }
}

- (void)unsubscribed
{
  delegate = [(DSMotionProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(DSMotionProvider *)self delegate];
    [delegate2 dsmotionDidUnsubscribeToMotionData:self];
  }
}

- (void)stoppedProvider
{
  delegate = [(DSMotionProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(DSMotionProvider *)self delegate];
    [delegate2 dsmotionDidStopProvider:self];
  }
}

- (DSMotionProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end