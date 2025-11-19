@interface MCMClientCodeSignInfo
- (BOOL)cached;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToClientCodeSignInfo:(id)a3;
- (BOOL)isPlatformBinary;
- (BOOL)isSignatureValid;
- (BOOL)isSigned;
- (MCMClientCodeSignInfo)initWithCDHash:(id)a3 entitlements:(id)a4 identifier:(id)a5 teamIdentifier:(id)a6 status:(unint64_t)a7;
- (MCMEntitlements)entitlements;
- (NSData)cdhash;
- (NSString)identifier;
- (NSString)teamIdentifier;
- (id)clientCodeSignInfoByChangingCached:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)clientCodeSignInfoByChangingCached:(BOOL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [(MCMClientCodeSignInfo *)self copy];
  v4[8] = a3;
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MCMClientCodeSignInfo *)self isEqualToClientCodeSignInfo:v4];

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqualToClientCodeSignInfo:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSData *)self->_cdhash isEqualToData:v4[5]])
  {
    v5 = [(NSString *)self->_identifier isEqualToString:v4[3]];
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

- (MCMClientCodeSignInfo)initWithCDHash:(id)a3 entitlements:(id)a4 identifier:(id)a5 teamIdentifier:(id)a6 status:(unint64_t)a7
{
  v7 = a7;
  v22 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v21.receiver = self;
  v21.super_class = MCMClientCodeSignInfo;
  v17 = [(MCMClientCodeSignInfo *)&v21 init];
  v18 = v17;
  if (v17)
  {
    v17->_isSigned = v7 & 1;
    v17->_isSignatureValid = (v7 & 2) != 0;
    v17->_isPlatformBinary = (v7 & 4) != 0;
    objc_storeStrong(&v17->_cdhash, a3);
    objc_storeStrong(&v18->_entitlements, a4);
    objc_storeStrong(&v18->_identifier, a5);
    objc_storeStrong(&v18->_teamIdentifier, a6);
    v18->_cached = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

@end