@interface CRKFailIfSimulatorTransportProvider
- (CRKFailIfSimulatorTransportProvider)initWithTransportProvider:(id)provider;
- (CRKFailIfSimulatorTransportProvider)initWithTransportProvider:(id)provider failureError:(id)error;
- (void)fetchTransportWithCompletion:(id)completion;
@end

@implementation CRKFailIfSimulatorTransportProvider

- (CRKFailIfSimulatorTransportProvider)initWithTransportProvider:(id)provider
{
  providerCopy = provider;
  v5 = CRKErrorWithCodeAndUserInfo(31, 0);
  v6 = [(CRKFailIfSimulatorTransportProvider *)self initWithTransportProvider:providerCopy failureError:v5];

  return v6;
}

- (CRKFailIfSimulatorTransportProvider)initWithTransportProvider:(id)provider failureError:(id)error
{
  providerCopy = provider;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = CRKFailIfSimulatorTransportProvider;
  v9 = [(CRKFailIfSimulatorTransportProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseProvider, provider);
    objc_storeStrong(&v10->_failureError, error);
  }

  return v10;
}

- (void)fetchTransportWithCompletion:(id)completion
{
  completionCopy = completion;
  if (CRKIsSimulator())
  {
    failureError = [(CRKFailIfSimulatorTransportProvider *)self failureError];
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    failureError = [(CRKFailIfSimulatorTransportProvider *)self baseProvider];
    [failureError fetchTransportWithCompletion:completionCopy];
  }
}

@end