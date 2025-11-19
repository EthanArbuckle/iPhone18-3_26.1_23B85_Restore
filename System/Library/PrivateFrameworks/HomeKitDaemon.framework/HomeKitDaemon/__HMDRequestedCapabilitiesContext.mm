@interface __HMDRequestedCapabilitiesContext
- (__HMDRequestedCapabilitiesContext)initWithTransactionID:(id)a3 requestedCapabilities:(id)a4 destinationAddress:(id)a5 responseQueue:(id)a6 completionHandler:(id)a7;
@end

@implementation __HMDRequestedCapabilitiesContext

- (__HMDRequestedCapabilitiesContext)initWithTransactionID:(id)a3 requestedCapabilities:(id)a4 destinationAddress:(id)a5 responseQueue:(id)a6 completionHandler:(id)a7
{
  v24 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = __HMDRequestedCapabilitiesContext;
  v17 = [(__HMDRequestedCapabilitiesContext *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_transactionID, a3);
    objc_storeStrong(&v18->_requestedCapabilities, a4);
    objc_storeStrong(&v18->_destinationAddress, a5);
    objc_storeStrong(&v18->_responseQueue, a6);
    v19 = _Block_copy(v16);
    completionHandler = v18->_completionHandler;
    v18->_completionHandler = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    receivedResponses = v18->_receivedResponses;
    v18->_receivedResponses = v21;
  }

  return v18;
}

@end