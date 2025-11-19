@interface DDSTRIClient
- (DDSTRIClient)initWithClient:(id)a3;
- (id)addUpdateHandlerForNamespaceName:(id)a3 queue:(id)a4 usingBlock:(id)a5;
- (id)experimentIdentifiersWithNamespaceName:(id)a3;
- (id)levelForFactor:(id)a3 withNamespaceName:(id)a4;
- (void)refresh;
- (void)removeUpdateHandlerForToken:(id)a3;
@end

@implementation DDSTRIClient

- (DDSTRIClient)initWithClient:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DDSTRIClient;
  v6 = [(DDSTRIClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_client, a3);
  }

  return v7;
}

- (id)experimentIdentifiersWithNamespaceName:(id)a3
{
  v4 = a3;
  v5 = [(DDSTRIClient *)self client];
  v6 = [v5 experimentIdentifiersWithNamespaceName:v4];

  return v6;
}

- (id)levelForFactor:(id)a3 withNamespaceName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DDSTRIClient *)self client];
  v9 = [v8 levelForFactor:v7 withNamespaceName:v6];

  return v9;
}

- (id)addUpdateHandlerForNamespaceName:(id)a3 queue:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DDSTRIClient *)self client];
  v12 = [v11 addUpdateHandlerForNamespaceName:v10 queue:v9 usingBlock:v8];

  return v12;
}

- (void)removeUpdateHandlerForToken:(id)a3
{
  v4 = a3;
  v5 = [(DDSTRIClient *)self client];
  [v5 removeUpdateHandlerForToken:v4];
}

- (void)refresh
{
  v2 = [(DDSTRIClient *)self client];
  [v2 refresh];
}

@end