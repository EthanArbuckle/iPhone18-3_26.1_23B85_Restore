@interface CRKFailIfMacAndUnenrolledStudentdTransportProvider
- (CRKFailIfMacAndUnenrolledStudentdTransportProvider)initWithTransportProvider:(id)provider;
- (CRKFailIfMacAndUnenrolledStudentdTransportProvider)initWithTransportProvider:(id)provider featureDataStore:(id)store;
- (void)fetchTransportWithCompletion:(id)completion;
@end

@implementation CRKFailIfMacAndUnenrolledStudentdTransportProvider

- (CRKFailIfMacAndUnenrolledStudentdTransportProvider)initWithTransportProvider:(id)provider featureDataStore:(id)store
{
  providerCopy = provider;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = CRKFailIfMacAndUnenrolledStudentdTransportProvider;
  v9 = [(CRKFailIfMacAndUnenrolledStudentdTransportProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_underlyingTransportProvider, provider);
    objc_storeStrong(&v10->_featureDataStore, store);
  }

  return v10;
}

- (CRKFailIfMacAndUnenrolledStudentdTransportProvider)initWithTransportProvider:(id)provider
{
  providerCopy = provider;
  v5 = objc_opt_new();
  makeFeatureDataStore = [v5 makeFeatureDataStore];

  v7 = [(CRKFailIfMacAndUnenrolledStudentdTransportProvider *)self initWithTransportProvider:providerCopy featureDataStore:makeFeatureDataStore];
  return v7;
}

- (void)fetchTransportWithCompletion:(id)completion
{
  completionCopy = completion;
  underlyingTransportProvider = [(CRKFailIfMacAndUnenrolledStudentdTransportProvider *)self underlyingTransportProvider];
  [underlyingTransportProvider fetchTransportWithCompletion:completionCopy];
}

@end