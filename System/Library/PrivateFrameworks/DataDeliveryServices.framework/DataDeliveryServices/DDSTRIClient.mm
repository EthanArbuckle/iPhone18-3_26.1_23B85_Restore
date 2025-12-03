@interface DDSTRIClient
- (DDSTRIClient)initWithClient:(id)client;
- (id)addUpdateHandlerForNamespaceName:(id)name queue:(id)queue usingBlock:(id)block;
- (id)experimentIdentifiersWithNamespaceName:(id)name;
- (id)levelForFactor:(id)factor withNamespaceName:(id)name;
- (void)refresh;
- (void)removeUpdateHandlerForToken:(id)token;
@end

@implementation DDSTRIClient

- (DDSTRIClient)initWithClient:(id)client
{
  clientCopy = client;
  v9.receiver = self;
  v9.super_class = DDSTRIClient;
  v6 = [(DDSTRIClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_client, client);
  }

  return v7;
}

- (id)experimentIdentifiersWithNamespaceName:(id)name
{
  nameCopy = name;
  client = [(DDSTRIClient *)self client];
  v6 = [client experimentIdentifiersWithNamespaceName:nameCopy];

  return v6;
}

- (id)levelForFactor:(id)factor withNamespaceName:(id)name
{
  nameCopy = name;
  factorCopy = factor;
  client = [(DDSTRIClient *)self client];
  v9 = [client levelForFactor:factorCopy withNamespaceName:nameCopy];

  return v9;
}

- (id)addUpdateHandlerForNamespaceName:(id)name queue:(id)queue usingBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  nameCopy = name;
  client = [(DDSTRIClient *)self client];
  v12 = [client addUpdateHandlerForNamespaceName:nameCopy queue:queueCopy usingBlock:blockCopy];

  return v12;
}

- (void)removeUpdateHandlerForToken:(id)token
{
  tokenCopy = token;
  client = [(DDSTRIClient *)self client];
  [client removeUpdateHandlerForToken:tokenCopy];
}

- (void)refresh
{
  client = [(DDSTRIClient *)self client];
  [client refresh];
}

@end