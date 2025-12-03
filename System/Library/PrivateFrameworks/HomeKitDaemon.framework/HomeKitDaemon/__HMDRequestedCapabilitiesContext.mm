@interface __HMDRequestedCapabilitiesContext
- (__HMDRequestedCapabilitiesContext)initWithTransactionID:(id)d requestedCapabilities:(id)capabilities destinationAddress:(id)address responseQueue:(id)queue completionHandler:(id)handler;
@end

@implementation __HMDRequestedCapabilitiesContext

- (__HMDRequestedCapabilitiesContext)initWithTransactionID:(id)d requestedCapabilities:(id)capabilities destinationAddress:(id)address responseQueue:(id)queue completionHandler:(id)handler
{
  dCopy = d;
  capabilitiesCopy = capabilities;
  addressCopy = address;
  queueCopy = queue;
  handlerCopy = handler;
  v25.receiver = self;
  v25.super_class = __HMDRequestedCapabilitiesContext;
  v17 = [(__HMDRequestedCapabilitiesContext *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_transactionID, d);
    objc_storeStrong(&v18->_requestedCapabilities, capabilities);
    objc_storeStrong(&v18->_destinationAddress, address);
    objc_storeStrong(&v18->_responseQueue, queue);
    v19 = _Block_copy(handlerCopy);
    completionHandler = v18->_completionHandler;
    v18->_completionHandler = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    receivedResponses = v18->_receivedResponses;
    v18->_receivedResponses = v21;
  }

  return v18;
}

@end