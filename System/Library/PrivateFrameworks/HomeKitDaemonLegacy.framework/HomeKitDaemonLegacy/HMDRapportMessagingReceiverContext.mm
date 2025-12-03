@interface HMDRapportMessagingReceiverContext
- (HMDRapportMessagingReceiverContext)initWithRequestHandler:(id)handler;
@end

@implementation HMDRapportMessagingReceiverContext

- (HMDRapportMessagingReceiverContext)initWithRequestHandler:(id)handler
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = HMDRapportMessagingReceiverContext;
  v5 = [(HMDRapportMessagingReceiverContext *)&v11 init];
  if (v5)
  {
    v6 = _Block_copy(handlerCopy);
    requestHandler = v5->_requestHandler;
    v5->_requestHandler = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    requestQueue = v5->_requestQueue;
    v5->_requestQueue = v8;
  }

  return v5;
}

@end