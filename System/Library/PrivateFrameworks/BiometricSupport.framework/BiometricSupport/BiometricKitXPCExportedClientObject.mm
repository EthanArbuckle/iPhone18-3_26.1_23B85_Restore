@interface BiometricKitXPCExportedClientObject
- (BiometricKitXPCExportedClientObject)initWithClientID:(unint64_t)d clientInfo:(id)info exportedObject:(id)object;
- (BiometricKitXPCExportedObject)exportedObject;
- (id)description;
- (id)name;
- (void)enrollFeedback:(id)feedback;
- (void)enrollResult:(id)result;
- (void)enrollResult:(id)result details:(id)details;
- (void)enrollUpdate:(id)update;
- (void)homeButtonPressed;
- (void)matchResult:(id)result details:(id)details;
- (void)templateUpdate:(id)update details:(id)details;
@end

@implementation BiometricKitXPCExportedClientObject

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(BiometricKitXPCExportedClientObject *)self name];
  v7 = [(NSDictionary *)self->_clientInfo objectForKeyedSubscript:@"BKClientConnectionId"];
  v8 = [v3 stringWithFormat:@"<%@: %p: %@[%@]>", v5, self, name, v7];

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

- (BiometricKitXPCExportedClientObject)initWithClientID:(unint64_t)d clientInfo:(id)info exportedObject:(id)object
{
  infoCopy = info;
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = BiometricKitXPCExportedClientObject;
  v10 = [(BiometricKitXPCExportedClientObject *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_clientID = d;
    v12 = [infoCopy copy];
    clientInfo = v11->_clientInfo;
    v11->_clientInfo = v12;

    objc_storeWeak(&v11->_exportedObject, objectCopy);
  }

  return v11;
}

- (BiometricKitXPCExportedObject)exportedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);

  return WeakRetained;
}

- (void)enrollResult:(id)result
{
  resultCopy = result;
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);
  v5 = [WeakRetained isClient:self->_clientID entitled:2 forMethod:"-[BiometricKitXPCExportedClientObject enrollResult:]"];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_exportedObject);
    connection = [v6 connection];
    remoteObjectProxy = [connection remoteObjectProxy];
    [remoteObjectProxy enrollResult:resultCopy details:0 client:self->_clientID];
  }
}

- (void)enrollResult:(id)result details:(id)details
{
  resultCopy = result;
  detailsCopy = details;
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);
  v8 = [WeakRetained isClient:self->_clientID entitled:2 forMethod:"-[BiometricKitXPCExportedClientObject enrollResult:details:]"];

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_exportedObject);
    connection = [v9 connection];
    remoteObjectProxy = [connection remoteObjectProxy];
    [remoteObjectProxy enrollResult:resultCopy details:detailsCopy client:self->_clientID];
  }
}

- (void)enrollUpdate:(id)update
{
  updateCopy = update;
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);
  v5 = [WeakRetained isClient:self->_clientID entitled:2 forMethod:"-[BiometricKitXPCExportedClientObject enrollUpdate:]"];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_exportedObject);
    connection = [v6 connection];
    remoteObjectProxy = [connection remoteObjectProxy];
    [remoteObjectProxy enrollUpdate:updateCopy client:self->_clientID];
  }
}

- (void)enrollFeedback:(id)feedback
{
  feedbackCopy = feedback;
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);
  v5 = [WeakRetained isClient:self->_clientID entitled:2 forMethod:"-[BiometricKitXPCExportedClientObject enrollFeedback:]"];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_exportedObject);
    connection = [v6 connection];
    remoteObjectProxy = [connection remoteObjectProxy];
    [remoteObjectProxy enrollFeedback:feedbackCopy client:self->_clientID];
  }
}

- (void)matchResult:(id)result details:(id)details
{
  resultCopy = result;
  detailsCopy = details;
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);
  v8 = [WeakRetained isClient:self->_clientID entitled:4 forMethod:"-[BiometricKitXPCExportedClientObject matchResult:details:]"];

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_exportedObject);
    connection = [v9 connection];
    remoteObjectProxy = [connection remoteObjectProxy];
    [remoteObjectProxy matchResult:resultCopy details:detailsCopy client:self->_clientID];
  }
}

- (void)homeButtonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);
  v4 = [WeakRetained isClient:self->_clientID entitled:1 forMethod:"-[BiometricKitXPCExportedClientObject homeButtonPressed]"];

  if (v4)
  {
    v7 = objc_loadWeakRetained(&self->_exportedObject);
    connection = [v7 connection];
    remoteObjectProxy = [connection remoteObjectProxy];
    [remoteObjectProxy homeButtonPressed:self->_clientID];
  }
}

- (void)templateUpdate:(id)update details:(id)details
{
  updateCopy = update;
  detailsCopy = details;
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);
  v8 = [WeakRetained isClient:self->_clientID entitled:1 forMethod:"-[BiometricKitXPCExportedClientObject templateUpdate:details:]"];

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_exportedObject);
    connection = [v9 connection];
    remoteObjectProxy = [connection remoteObjectProxy];
    [remoteObjectProxy templateUpdate:updateCopy details:detailsCopy client:self->_clientID];
  }
}

@end