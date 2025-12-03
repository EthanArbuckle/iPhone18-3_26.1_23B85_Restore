@interface MCMClientIdentityIndex
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToClientIdentityIndex:(id)index;
- (MCMClientIdentityIndex)initWithAuditToken:(id *)token proximateAuditToken:(id *)auditToken personaUniqueString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation MCMClientIdentityIndex

- (unint64_t)hash
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(NSData *)self->_auditToken hash];
  v4 = [(NSData *)self->_proximateAuditToken hash];
  personaUniqueString = self->_personaUniqueString;
  if (personaUniqueString)
  {
    personaUniqueString = [personaUniqueString hash];
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4 ^ v3 ^ personaUniqueString;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  [(NSData *)self->_auditToken getBytes:&v12 length:32];
  v10 = 0u;
  v11 = 0u;
  [(NSData *)self->_proximateAuditToken getBytes:&v10 length:32];
  v4 = [MCMClientIdentityIndex alloc];
  personaUniqueString = self->_personaUniqueString;
  v9[0] = v12;
  v9[1] = v13;
  v8[0] = v10;
  v8[1] = v11;
  result = [(MCMClientIdentityIndex *)v4 initWithAuditToken:v9 proximateAuditToken:v8 personaUniqueString:personaUniqueString];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v8 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MCMClientIdentityIndex *)self isEqualToClientIdentityIndex:equalCopy];

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqualToClientIdentityIndex:(id)index
{
  v10 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  if (![(NSData *)self->_auditToken isEqualToData:indexCopy[1]]|| ![(NSData *)self->_proximateAuditToken isEqualToData:indexCopy[2]])
  {
    goto LABEL_8;
  }

  personaUniqueString = self->_personaUniqueString;
  v6 = indexCopy[3];
  if (personaUniqueString)
  {
    if (v6 && [(NSString *)personaUniqueString isEqualToString:?])
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  if (v6)
  {
    goto LABEL_8;
  }

LABEL_6:
  v7 = 1;
LABEL_9:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (MCMClientIdentityIndex)initWithAuditToken:(id *)token proximateAuditToken:(id *)auditToken personaUniqueString:(id)string
{
  v18 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v17.receiver = self;
  v17.super_class = MCMClientIdentityIndex;
  v10 = [(MCMClientIdentityIndex *)&v17 init];
  if (v10)
  {
    v11 = [MEMORY[0x1E695DEF0] dataWithBytes:token length:32];
    auditToken = v10->_auditToken;
    v10->_auditToken = v11;

    v13 = [MEMORY[0x1E695DEF0] dataWithBytes:auditToken length:32];
    proximateAuditToken = v10->_proximateAuditToken;
    v10->_proximateAuditToken = v13;

    objc_storeStrong(&v10->_personaUniqueString, string);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

@end