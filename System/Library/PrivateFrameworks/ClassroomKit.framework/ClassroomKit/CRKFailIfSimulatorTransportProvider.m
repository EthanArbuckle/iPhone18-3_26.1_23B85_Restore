@interface CRKFailIfSimulatorTransportProvider
- (CRKFailIfSimulatorTransportProvider)initWithTransportProvider:(id)a3;
- (CRKFailIfSimulatorTransportProvider)initWithTransportProvider:(id)a3 failureError:(id)a4;
- (void)fetchTransportWithCompletion:(id)a3;
@end

@implementation CRKFailIfSimulatorTransportProvider

- (CRKFailIfSimulatorTransportProvider)initWithTransportProvider:(id)a3
{
  v4 = a3;
  v5 = CRKErrorWithCodeAndUserInfo(31, 0);
  v6 = [(CRKFailIfSimulatorTransportProvider *)self initWithTransportProvider:v4 failureError:v5];

  return v6;
}

- (CRKFailIfSimulatorTransportProvider)initWithTransportProvider:(id)a3 failureError:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRKFailIfSimulatorTransportProvider;
  v9 = [(CRKFailIfSimulatorTransportProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseProvider, a3);
    objc_storeStrong(&v10->_failureError, a4);
  }

  return v10;
}

- (void)fetchTransportWithCompletion:(id)a3
{
  v4 = a3;
  if (CRKIsSimulator())
  {
    v5 = [(CRKFailIfSimulatorTransportProvider *)self failureError];
    v4[2](v4, 0);
  }

  else
  {
    v5 = [(CRKFailIfSimulatorTransportProvider *)self baseProvider];
    [v5 fetchTransportWithCompletion:v4];
  }
}

@end