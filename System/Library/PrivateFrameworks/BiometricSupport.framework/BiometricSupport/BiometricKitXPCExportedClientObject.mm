@interface BiometricKitXPCExportedClientObject
- (BiometricKitXPCExportedClientObject)initWithClientID:(unint64_t)a3 clientInfo:(id)a4 exportedObject:(id)a5;
- (BiometricKitXPCExportedObject)exportedObject;
- (id)description;
- (id)name;
- (void)enrollFeedback:(id)a3;
- (void)enrollResult:(id)a3;
- (void)enrollResult:(id)a3 details:(id)a4;
- (void)enrollUpdate:(id)a3;
- (void)homeButtonPressed;
- (void)matchResult:(id)a3 details:(id)a4;
- (void)templateUpdate:(id)a3 details:(id)a4;
@end

@implementation BiometricKitXPCExportedClientObject

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(BiometricKitXPCExportedClientObject *)self name];
  v7 = [(NSDictionary *)self->_clientInfo objectForKeyedSubscript:@"BKClientConnectionId"];
  v8 = [v3 stringWithFormat:@"<%@: %p: %@[%@]>", v5, self, v6, v7];

  return v8;
}

- (id)name
{
  v3 = [(NSDictionary *)self->_clientInfo objectForKeyedSubscript:@"BKClientBundleIdentifier"];
  if (v3)
  {
    v4 = @"BKClientBundleIdentifier";
  }

  else
  {
    v4 = @"BKClientProcessName";
  }

  v5 = [(NSDictionary *)self->_clientInfo objectForKeyedSubscript:v4];

  return v5;
}

- (BiometricKitXPCExportedClientObject)initWithClientID:(unint64_t)a3 clientInfo:(id)a4 exportedObject:(id)a5
{
  v8 = a4;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = BiometricKitXPCExportedClientObject;
  v10 = [(BiometricKitXPCExportedClientObject *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_clientID = a3;
    v12 = [v8 copy];
    clientInfo = v11->_clientInfo;
    v11->_clientInfo = v12;

    objc_storeWeak(&v11->_exportedObject, v9);
  }

  return v11;
}

- (BiometricKitXPCExportedObject)exportedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);

  return WeakRetained;
}

- (void)enrollResult:(id)a3
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);
  v5 = [WeakRetained isClient:self->_clientID entitled:2 forMethod:"-[BiometricKitXPCExportedClientObject enrollResult:]"];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_exportedObject);
    v7 = [v6 connection];
    v8 = [v7 remoteObjectProxy];
    [v8 enrollResult:v9 details:0 client:self->_clientID];
  }
}

- (void)enrollResult:(id)a3 details:(id)a4
{
  v12 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);
  v8 = [WeakRetained isClient:self->_clientID entitled:2 forMethod:"-[BiometricKitXPCExportedClientObject enrollResult:details:]"];

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_exportedObject);
    v10 = [v9 connection];
    v11 = [v10 remoteObjectProxy];
    [v11 enrollResult:v12 details:v6 client:self->_clientID];
  }
}

- (void)enrollUpdate:(id)a3
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);
  v5 = [WeakRetained isClient:self->_clientID entitled:2 forMethod:"-[BiometricKitXPCExportedClientObject enrollUpdate:]"];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_exportedObject);
    v7 = [v6 connection];
    v8 = [v7 remoteObjectProxy];
    [v8 enrollUpdate:v9 client:self->_clientID];
  }
}

- (void)enrollFeedback:(id)a3
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);
  v5 = [WeakRetained isClient:self->_clientID entitled:2 forMethod:"-[BiometricKitXPCExportedClientObject enrollFeedback:]"];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_exportedObject);
    v7 = [v6 connection];
    v8 = [v7 remoteObjectProxy];
    [v8 enrollFeedback:v9 client:self->_clientID];
  }
}

- (void)matchResult:(id)a3 details:(id)a4
{
  v12 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);
  v8 = [WeakRetained isClient:self->_clientID entitled:4 forMethod:"-[BiometricKitXPCExportedClientObject matchResult:details:]"];

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_exportedObject);
    v10 = [v9 connection];
    v11 = [v10 remoteObjectProxy];
    [v11 matchResult:v12 details:v6 client:self->_clientID];
  }
}

- (void)homeButtonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);
  v4 = [WeakRetained isClient:self->_clientID entitled:1 forMethod:"-[BiometricKitXPCExportedClientObject homeButtonPressed]"];

  if (v4)
  {
    v7 = objc_loadWeakRetained(&self->_exportedObject);
    v5 = [v7 connection];
    v6 = [v5 remoteObjectProxy];
    [v6 homeButtonPressed:self->_clientID];
  }
}

- (void)templateUpdate:(id)a3 details:(id)a4
{
  v12 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);
  v8 = [WeakRetained isClient:self->_clientID entitled:1 forMethod:"-[BiometricKitXPCExportedClientObject templateUpdate:details:]"];

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_exportedObject);
    v10 = [v9 connection];
    v11 = [v10 remoteObjectProxy];
    [v11 templateUpdate:v12 details:v6 client:self->_clientID];
  }
}

@end