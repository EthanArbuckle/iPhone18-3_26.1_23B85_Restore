@interface HMDModernMessagingHandlerContext
- (HMDModernMessagingHandlerContext)initWithTransport:(id)a3 messageDispatcher:(id)a4;
- (id)initForRequestID:(id)a3 accountRegistry:(id)a4;
@end

@implementation HMDModernMessagingHandlerContext

- (id)initForRequestID:(id)a3 accountRegistry:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[HMDModernRemoteMessageTransport alloc] initWithAccountRegistry:v6 requestID:v7];

  v9 = [objc_alloc(MEMORY[0x277D0F828]) initWithTransport:v8];
  v10 = [(HMDModernMessagingHandlerContext *)self initWithTransport:v8 messageDispatcher:v9];

  return v10;
}

- (HMDModernMessagingHandlerContext)initWithTransport:(id)a3 messageDispatcher:(id)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = HMDModernMessagingHandlerContext;
  v9 = [(HMDModernMessagingHandlerContext *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_modernTransport, a3);
    objc_storeStrong(&v10->_messageDispatcher, a4);
    v11 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v13 = [v11 setWithArray:v12];
    [(HMFMessageDispatcher *)v10->_messageDispatcher setFilterClasses:v13];

    [(HMFMessageTransport *)v10->_modernTransport setDelegate:v10->_messageDispatcher];
    v14 = [(HMDRemoteMessageTransport *)v10->_modernTransport start];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

@end