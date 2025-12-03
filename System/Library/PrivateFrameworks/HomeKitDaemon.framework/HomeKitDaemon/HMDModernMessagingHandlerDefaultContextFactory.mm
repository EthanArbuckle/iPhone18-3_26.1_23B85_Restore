@interface HMDModernMessagingHandlerDefaultContextFactory
- (HMDModernMessagingHandlerDefaultContextFactory)initWithAccountRegistry:(id)registry;
- (id)createContextForRequestID:(id)d;
- (id)deviceForAddress:(id)address;
@end

@implementation HMDModernMessagingHandlerDefaultContextFactory

- (id)deviceForAddress:(id)address
{
  addressCopy = address;
  accountRegistry = [(HMDModernMessagingHandlerDefaultContextFactory *)self accountRegistry];
  v6 = [accountRegistry deviceForAddress:addressCopy];

  return v6;
}

- (id)createContextForRequestID:(id)d
{
  dCopy = d;
  v5 = [HMDModernMessagingHandlerContext alloc];
  accountRegistry = [(HMDModernMessagingHandlerDefaultContextFactory *)self accountRegistry];
  v7 = [(HMDModernMessagingHandlerContext *)v5 initForRequestID:dCopy accountRegistry:accountRegistry];

  return v7;
}

- (HMDModernMessagingHandlerDefaultContextFactory)initWithAccountRegistry:(id)registry
{
  registryCopy = registry;
  v9.receiver = self;
  v9.super_class = HMDModernMessagingHandlerDefaultContextFactory;
  v6 = [(HMDModernMessagingHandlerDefaultContextFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountRegistry, registry);
  }

  return v7;
}

@end