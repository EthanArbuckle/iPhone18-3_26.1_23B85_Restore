@interface MFMessageActionHandler
- (MFMessageActionHandler)initWithActionHandler:(id)handler;
- (NSArray)messageActionProviderIDs;
- (NSArray)messageActionProviders;
- (NSArray)requiredHeaders;
- (id)ruleForMessage:(id)message usingMessageActionProvider:(id)provider;
@end

@implementation MFMessageActionHandler

- (MFMessageActionHandler)initWithActionHandler:(id)handler
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = MFMessageActionHandler;
  v6 = [(MFMessageActionHandler *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_actionHandler, handler);
    v8 = objc_alloc_init(MFMailMessageMEMessageTransformer);
    transformer = v7->_transformer;
    v7->_transformer = v8;
  }

  return v7;
}

- (NSArray)messageActionProviders
{
  actionHandler = [(MFMessageActionHandler *)self actionHandler];
  messageActionProviders = [actionHandler messageActionProviders];

  return messageActionProviders;
}

- (NSArray)messageActionProviderIDs
{
  actionHandler = [(MFMessageActionHandler *)self actionHandler];
  messageActionProviders = [actionHandler messageActionProviders];
  v4 = [messageActionProviders ef_map:&stru_100158E78];

  return v4;
}

- (NSArray)requiredHeaders
{
  actionHandler = [(MFMessageActionHandler *)self actionHandler];
  requiredHeaders = [actionHandler requiredHeaders];

  return requiredHeaders;
}

- (id)ruleForMessage:(id)message usingMessageActionProvider:(id)provider
{
  messageCopy = message;
  providerCopy = provider;
  transformer = [(MFMessageActionHandler *)self transformer];
  v9 = [transformer messageForMailMessage:messageCopy];

  if (!v9)
  {
    v16 = 0;
    goto LABEL_9;
  }

  actionHandler = [(MFMessageActionHandler *)self actionHandler];
  v11 = [actionHandler actionDecisionForMessage:v9 usingMessageActionProvider:providerCopy];

  actions = [v11 actions];
  v13 = [actions count];

  if (v13)
  {
    v14 = [MFMessageActionRule alloc];
    actions2 = [v11 actions];
    v16 = [(MFMessageActionRule *)v14 initWithMessageActions:actions2];
  }

  else
  {
    if (![v11 invokeAgainWithBody])
    {
      v16 = 0;
      goto LABEL_8;
    }

    actions2 = [v9 rawData];
    v16 = 0;
  }

LABEL_8:
LABEL_9:

  return v16;
}

@end