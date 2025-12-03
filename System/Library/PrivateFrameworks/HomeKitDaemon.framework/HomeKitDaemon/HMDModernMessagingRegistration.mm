@interface HMDModernMessagingRegistration
+ (id)clientHMMMMessageNameFromPrefixedMessageName:(id)name;
- (BOOL)matchesPrefixedMessageName:(id)name;
- (HMDModernMessagingRegistration)initWithMessageName:(id)name xpcConnection:(id)connection;
- (id)prefixedMessageName;
@end

@implementation HMDModernMessagingRegistration

- (BOOL)matchesPrefixedMessageName:(id)name
{
  nameCopy = name;
  messageName = [(HMDModernMessagingRegistration *)self messageName];
  v6 = [HMDModernMessagingRegistration prefixedHMMMMessageNameWithMessageName:messageName];
  v7 = [v6 isEqualToString:nameCopy];

  return v7;
}

- (id)prefixedMessageName
{
  messageName = [(HMDModernMessagingRegistration *)self messageName];
  v3 = [HMDModernMessagingRegistration prefixedHMMMMessageNameWithMessageName:messageName];

  return v3;
}

- (HMDModernMessagingRegistration)initWithMessageName:(id)name xpcConnection:(id)connection
{
  nameCopy = name;
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = HMDModernMessagingRegistration;
  v9 = [(HMDModernMessagingRegistration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messageName, name);
    objc_storeStrong(&v10->_xpcConnection, connection);
  }

  return v10;
}

+ (id)clientHMMMMessageNameFromPrefixedMessageName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy length];
  if (v4 <= [@"HMMM.message.name.prefix_" length])
  {
    v5 = 0;
  }

  else
  {
    v5 = [nameCopy substringFromIndex:{objc_msgSend(@"HMMM.message.name.prefix_", "length")}];
  }

  return v5;
}

@end