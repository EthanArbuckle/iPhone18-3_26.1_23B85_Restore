@interface DCPresentmentSelection
- (DCPresentmentResponseEncryptionParameters)responseEncryptionParameters;
- (DCPresentmentSelection)init;
- (DCPresentmentSelection)initWithCoder:(id)a3;
- (DCPresentmentSelection)initWithCredentialIdentifier:(id)a3 elementsToPresent:(id)a4 authData:(id)a5 seAccessEndpoint:(id)a6 deviceNamespaces:(id)a7;
- (NSData)authData;
- (NSDictionary)deviceNamespaces;
- (NSDictionary)elementsToPresent;
- (NSString)credentialIdentifier;
- (NSXPCListenerEndpoint)seAccessEndpoint;
- (id)copyWithElementsToPresent:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAuthData:(id)a3;
- (void)setCredentialIdentifier:(id)a3;
- (void)setDeviceNamespaces:(id)a3;
- (void)setElementsToPresent:(id)a3;
- (void)setResponseEncryptionParameters:(id)a3;
- (void)setSeAccessEndpoint:(id)a3;
@end

@implementation DCPresentmentSelection

- (DCPresentmentSelection)initWithCredentialIdentifier:(id)a3 elementsToPresent:(id)a4 authData:(id)a5 seAccessEndpoint:(id)a6 deviceNamespaces:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(DCPresentmentSelection *)self init];
  if (v17)
  {
    v18 = [v12 copy];
    credentialIdentifier = v17->_credentialIdentifier;
    v17->_credentialIdentifier = v18;

    v20 = [v13 copy];
    elementsToPresent = v17->_elementsToPresent;
    v17->_elementsToPresent = v20;

    v22 = [v14 copy];
    authData = v17->_authData;
    v17->_authData = v22;

    objc_storeStrong(&v17->_seAccessEndpoint, a6);
    v24 = [v16 copy];
    deviceNamespaces = v17->_deviceNamespaces;
    v17->_deviceNamespaces = v24;
  }

  return v17;
}

- (DCPresentmentSelection)init
{
  v7.receiver = self;
  v7.super_class = DCPresentmentSelection;
  v2 = [(DCPresentmentSelection *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = +[DCPresentmentResponseEncryptionParameters sessionEncryption];
    responseEncryptionParameters = v3->_responseEncryptionParameters;
    v3->_responseEncryptionParameters = v4;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [v4 encodeObject:self->_credentialIdentifier forKey:0x28586CD20];
  [v4 encodeObject:self->_elementsToPresent forKey:0x28586D360];
  [v4 encodeObject:self->_authData forKey:0x28586D380];
  [v4 encodeObject:self->_seAccessEndpoint forKey:0x28586D3A0];
  [v4 encodeObject:self->_deviceNamespaces forKey:0x28586D3C0];
  [v4 encodeObject:self->_responseEncryptionParameters forKey:0x28586D400];

  os_unfair_lock_unlock(&self->_lock);
}

- (DCPresentmentSelection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DCPresentmentSelection *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586CD20];
    credentialIdentifier = v5->_credentialIdentifier;
    v5->_credentialIdentifier = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:0x28586D360];
    elementsToPresent = v5->_elementsToPresent;
    v5->_elementsToPresent = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D380];
    authData = v5->_authData;
    v5->_authData = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D3A0];
    seAccessEndpoint = v5->_seAccessEndpoint;
    v5->_seAccessEndpoint = v16;

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v18 setWithObjects:{v19, v20, v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:0x28586D3C0];
    deviceNamespaces = v5->_deviceNamespaces;
    v5->_deviceNamespaces = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D400];
    responseEncryptionParameters = v5->_responseEncryptionParameters;
    v5->_responseEncryptionParameters = v25;
  }

  return v5;
}

- (id)copyWithElementsToPresent:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [[DCPresentmentSelection alloc] initWithCredentialIdentifier:self->_credentialIdentifier elementsToPresent:v4 authData:self->_authData seAccessEndpoint:self->_seAccessEndpoint deviceNamespaces:self->_deviceNamespaces];

  v6 = [(DCPresentmentResponseEncryptionParameters *)self->_responseEncryptionParameters copyWithZone:0];
  [(DCPresentmentSelection *)v5 setResponseEncryptionParameters:v6];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (NSString)credentialIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_credentialIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCredentialIdentifier:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_credentialIdentifier != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    credentialIdentifier = self->_credentialIdentifier;
    self->_credentialIdentifier = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)elementsToPresent
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_elementsToPresent;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setElementsToPresent:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_elementsToPresent != v6)
  {
    v4 = [(NSDictionary *)v6 copyWithZone:0];
    elementsToPresent = self->_elementsToPresent;
    self->_elementsToPresent = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)authData
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_authData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAuthData:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_authData != v6)
  {
    v4 = [(NSData *)v6 copyWithZone:0];
    authData = self->_authData;
    self->_authData = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSXPCListenerEndpoint)seAccessEndpoint
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_seAccessEndpoint;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSeAccessEndpoint:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  seAccessEndpoint = self->_seAccessEndpoint;
  self->_seAccessEndpoint = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)deviceNamespaces
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_deviceNamespaces;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDeviceNamespaces:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_deviceNamespaces != v6)
  {
    v4 = [(NSDictionary *)v6 copyWithZone:0];
    deviceNamespaces = self->_deviceNamespaces;
    self->_deviceNamespaces = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (DCPresentmentResponseEncryptionParameters)responseEncryptionParameters
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_responseEncryptionParameters;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setResponseEncryptionParameters:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_responseEncryptionParameters != v6)
  {
    v4 = [(DCPresentmentResponseEncryptionParameters *)v6 copyWithZone:0];
    responseEncryptionParameters = self->_responseEncryptionParameters;
    self->_responseEncryptionParameters = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end