@interface HMDModernMessagingHandlerDefaultContextFactory
- (HMDModernMessagingHandlerDefaultContextFactory)initWithAccountRegistry:(id)a3;
- (id)createContextForRequestID:(id)a3;
- (id)deviceForAddress:(id)a3;
@end

@implementation HMDModernMessagingHandlerDefaultContextFactory

- (id)deviceForAddress:(id)a3
{
  v4 = a3;
  v5 = [(HMDModernMessagingHandlerDefaultContextFactory *)self accountRegistry];
  v6 = [v5 deviceForAddress:v4];

  return v6;
}

- (id)createContextForRequestID:(id)a3
{
  v4 = a3;
  v5 = [HMDModernMessagingHandlerContext alloc];
  v6 = [(HMDModernMessagingHandlerDefaultContextFactory *)self accountRegistry];
  v7 = [(HMDModernMessagingHandlerContext *)v5 initForRequestID:v4 accountRegistry:v6];

  return v7;
}

- (HMDModernMessagingHandlerDefaultContextFactory)initWithAccountRegistry:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDModernMessagingHandlerDefaultContextFactory;
  v6 = [(HMDModernMessagingHandlerDefaultContextFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountRegistry, a3);
  }

  return v7;
}

@end