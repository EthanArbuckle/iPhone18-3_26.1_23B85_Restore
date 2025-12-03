@interface DCPresentmentSelection
- (DCPresentmentResponseEncryptionParameters)responseEncryptionParameters;
- (DCPresentmentSelection)init;
- (DCPresentmentSelection)initWithCoder:(id)coder;
- (DCPresentmentSelection)initWithCredentialIdentifier:(id)identifier elementsToPresent:(id)present authData:(id)data seAccessEndpoint:(id)endpoint deviceNamespaces:(id)namespaces;
- (NSData)authData;
- (NSDictionary)deviceNamespaces;
- (NSDictionary)elementsToPresent;
- (NSString)credentialIdentifier;
- (NSXPCListenerEndpoint)seAccessEndpoint;
- (id)copyWithElementsToPresent:(id)present;
- (void)encodeWithCoder:(id)coder;
- (void)setAuthData:(id)data;
- (void)setCredentialIdentifier:(id)identifier;
- (void)setDeviceNamespaces:(id)namespaces;
- (void)setElementsToPresent:(id)present;
- (void)setResponseEncryptionParameters:(id)parameters;
- (void)setSeAccessEndpoint:(id)endpoint;
@end

@implementation DCPresentmentSelection

- (DCPresentmentSelection)initWithCredentialIdentifier:(id)identifier elementsToPresent:(id)present authData:(id)data seAccessEndpoint:(id)endpoint deviceNamespaces:(id)namespaces
{
  identifierCopy = identifier;
  presentCopy = present;
  dataCopy = data;
  endpointCopy = endpoint;
  namespacesCopy = namespaces;
  v17 = [(DCPresentmentSelection *)self init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    credentialIdentifier = v17->_credentialIdentifier;
    v17->_credentialIdentifier = v18;

    v20 = [presentCopy copy];
    elementsToPresent = v17->_elementsToPresent;
    v17->_elementsToPresent = v20;

    v22 = [dataCopy copy];
    authData = v17->_authData;
    v17->_authData = v22;

    objc_storeStrong(&v17->_seAccessEndpoint, endpoint);
    v24 = [namespacesCopy copy];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->_lock);
  [coderCopy encodeObject:self->_credentialIdentifier forKey:0x28586CD20];
  [coderCopy encodeObject:self->_elementsToPresent forKey:0x28586D360];
  [coderCopy encodeObject:self->_authData forKey:0x28586D380];
  [coderCopy encodeObject:self->_seAccessEndpoint forKey:0x28586D3A0];
  [coderCopy encodeObject:self->_deviceNamespaces forKey:0x28586D3C0];
  [coderCopy encodeObject:self->_responseEncryptionParameters forKey:0x28586D400];

  os_unfair_lock_unlock(&self->_lock);
}

- (DCPresentmentSelection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DCPresentmentSelection *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CD20];
    credentialIdentifier = v5->_credentialIdentifier;
    v5->_credentialIdentifier = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:0x28586D360];
    elementsToPresent = v5->_elementsToPresent;
    v5->_elementsToPresent = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D380];
    authData = v5->_authData;
    v5->_authData = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D3A0];
    seAccessEndpoint = v5->_seAccessEndpoint;
    v5->_seAccessEndpoint = v16;

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v18 setWithObjects:{v19, v20, v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:0x28586D3C0];
    deviceNamespaces = v5->_deviceNamespaces;
    v5->_deviceNamespaces = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D400];
    responseEncryptionParameters = v5->_responseEncryptionParameters;
    v5->_responseEncryptionParameters = v25;
  }

  return v5;
}

- (id)copyWithElementsToPresent:(id)present
{
  presentCopy = present;
  os_unfair_lock_lock(&self->_lock);
  v5 = [[DCPresentmentSelection alloc] initWithCredentialIdentifier:self->_credentialIdentifier elementsToPresent:presentCopy authData:self->_authData seAccessEndpoint:self->_seAccessEndpoint deviceNamespaces:self->_deviceNamespaces];

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

- (void)setCredentialIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  if (self->_credentialIdentifier != identifierCopy)
  {
    v4 = [(NSString *)identifierCopy copyWithZone:0];
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

- (void)setElementsToPresent:(id)present
{
  presentCopy = present;
  os_unfair_lock_lock(&self->_lock);
  if (self->_elementsToPresent != presentCopy)
  {
    v4 = [(NSDictionary *)presentCopy copyWithZone:0];
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

- (void)setAuthData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock(&self->_lock);
  if (self->_authData != dataCopy)
  {
    v4 = [(NSData *)dataCopy copyWithZone:0];
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

- (void)setSeAccessEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  os_unfair_lock_lock(&self->_lock);
  seAccessEndpoint = self->_seAccessEndpoint;
  self->_seAccessEndpoint = endpointCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)deviceNamespaces
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_deviceNamespaces;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDeviceNamespaces:(id)namespaces
{
  namespacesCopy = namespaces;
  os_unfair_lock_lock(&self->_lock);
  if (self->_deviceNamespaces != namespacesCopy)
  {
    v4 = [(NSDictionary *)namespacesCopy copyWithZone:0];
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

- (void)setResponseEncryptionParameters:(id)parameters
{
  parametersCopy = parameters;
  os_unfair_lock_lock(&self->_lock);
  if (self->_responseEncryptionParameters != parametersCopy)
  {
    v4 = [(DCPresentmentResponseEncryptionParameters *)parametersCopy copyWithZone:0];
    responseEncryptionParameters = self->_responseEncryptionParameters;
    self->_responseEncryptionParameters = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end