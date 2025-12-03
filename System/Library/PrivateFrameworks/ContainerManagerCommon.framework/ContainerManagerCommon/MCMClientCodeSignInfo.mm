@interface MCMClientCodeSignInfo
- (BOOL)cached;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToClientCodeSignInfo:(id)info;
- (BOOL)isPlatformBinary;
- (BOOL)isSignatureValid;
- (BOOL)isSigned;
- (MCMClientCodeSignInfo)initWithCDHash:(id)hash entitlements:(id)entitlements identifier:(id)identifier teamIdentifier:(id)teamIdentifier status:(unint64_t)status;
- (MCMEntitlements)entitlements;
- (NSData)cdhash;
- (NSString)identifier;
- (NSString)teamIdentifier;
- (id)clientCodeSignInfoByChangingCached:(BOOL)cached;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation MCMClientCodeSignInfo

- (BOOL)cached
{
  result = self->_cached;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMEntitlements)entitlements
{
  result = self->_entitlements;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)identifier
{
  result = self->_identifier;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)teamIdentifier
{
  result = self->_teamIdentifier;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isSigned
{
  result = self->_isSigned;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isSignatureValid
{
  result = self->_isSignatureValid;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isPlatformBinary
{
  result = self->_isPlatformBinary;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSData)cdhash
{
  result = self->_cdhash;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)clientCodeSignInfoByChangingCached:(BOOL)cached
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [(MCMClientCodeSignInfo *)self copy];
  v4[8] = cached;
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 16), self->_entitlements);
    objc_storeStrong((v5 + 24), self->_identifier);
    *(v5 + 8) = self->_cached;
    *(v5 + 9) = self->_isSigned;
    *(v5 + 10) = self->_isSignatureValid;
    *(v5 + 11) = self->_isPlatformBinary;
    objc_storeStrong((v5 + 32), self->_teamIdentifier);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v8 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MCMClientCodeSignInfo *)self isEqualToClientCodeSignInfo:equalCopy];

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqualToClientCodeSignInfo:(id)info
{
  v8 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if ([(NSData *)self->_cdhash isEqualToData:infoCopy[5]])
  {
    v5 = [(NSString *)self->_identifier isEqualToString:infoCopy[3]];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(NSData *)self->_cdhash hash];
  v4 = [(NSString *)self->_identifier hash];
  v5 = *MEMORY[0x1E69E9840];
  return v4 ^ v3;
}

- (MCMClientCodeSignInfo)initWithCDHash:(id)hash entitlements:(id)entitlements identifier:(id)identifier teamIdentifier:(id)teamIdentifier status:(unint64_t)status
{
  statusCopy = status;
  v22 = *MEMORY[0x1E69E9840];
  hashCopy = hash;
  entitlementsCopy = entitlements;
  identifierCopy = identifier;
  teamIdentifierCopy = teamIdentifier;
  v21.receiver = self;
  v21.super_class = MCMClientCodeSignInfo;
  v17 = [(MCMClientCodeSignInfo *)&v21 init];
  v18 = v17;
  if (v17)
  {
    v17->_isSigned = statusCopy & 1;
    v17->_isSignatureValid = (statusCopy & 2) != 0;
    v17->_isPlatformBinary = (statusCopy & 4) != 0;
    objc_storeStrong(&v17->_cdhash, hash);
    objc_storeStrong(&v18->_entitlements, entitlements);
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v18->_teamIdentifier, teamIdentifier);
    v18->_cached = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

@end