@interface MFMessageActionHandler
- (MFMessageActionHandler)initWithActionHandler:(id)a3;
- (NSArray)messageActionProviderIDs;
- (NSArray)messageActionProviders;
- (NSArray)requiredHeaders;
- (id)ruleForMessage:(id)a3 usingMessageActionProvider:(id)a4;
@end

@implementation MFMessageActionHandler

- (MFMessageActionHandler)initWithActionHandler:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MFMessageActionHandler;
  v6 = [(MFMessageActionHandler *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_actionHandler, a3);
    v8 = objc_alloc_init(MFMailMessageMEMessageTransformer);
    transformer = v7->_transformer;
    v7->_transformer = v8;
  }

  return v7;
}

- (NSArray)messageActionProviders
{
  v2 = [(MFMessageActionHandler *)self actionHandler];
  v3 = [v2 messageActionProviders];

  return v3;
}

- (NSArray)messageActionProviderIDs
{
  v2 = [(MFMessageActionHandler *)self actionHandler];
  v3 = [v2 messageActionProviders];
  v4 = [v3 ef_map:&stru_100158E78];

  return v4;
}

- (NSArray)requiredHeaders
{
  v2 = [(MFMessageActionHandler *)self actionHandler];
  v3 = [v2 requiredHeaders];

  return v3;
}

- (id)ruleForMessage:(id)a3 usingMessageActionProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFMessageActionHandler *)self transformer];
  v9 = [v8 messageForMailMessage:v6];

  if (!v9)
  {
    v16 = 0;
    goto LABEL_9;
  }

  v10 = [(MFMessageActionHandler *)self actionHandler];
  v11 = [v10 actionDecisionForMessage:v9 usingMessageActionProvider:v7];

  v12 = [v11 actions];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [MFMessageActionRule alloc];
    v15 = [v11 actions];
    v16 = [(MFMessageActionRule *)v14 initWithMessageActions:v15];
  }

  else
  {
    if (![v11 invokeAgainWithBody])
    {
      v16 = 0;
      goto LABEL_8;
    }

    v15 = [v9 rawData];
    v16 = 0;
  }

LABEL_8:
LABEL_9:

  return v16;
}

@end