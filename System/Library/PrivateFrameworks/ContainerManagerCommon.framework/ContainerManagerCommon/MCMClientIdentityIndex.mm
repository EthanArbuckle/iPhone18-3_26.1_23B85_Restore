@interface MCMClientIdentityIndex
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToClientIdentityIndex:(id)a3;
- (MCMClientIdentityIndex)initWithAuditToken:(id *)a3 proximateAuditToken:(id *)a4 personaUniqueString:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MCMClientIdentityIndex *)self isEqualToClientIdentityIndex:v4];

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqualToClientIdentityIndex:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(NSData *)self->_auditToken isEqualToData:v4[1]]|| ![(NSData *)self->_proximateAuditToken isEqualToData:v4[2]])
  {
    goto LABEL_8;
  }

  personaUniqueString = self->_personaUniqueString;
  v6 = v4[3];
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

- (MCMClientIdentityIndex)initWithAuditToken:(id *)a3 proximateAuditToken:(id *)a4 personaUniqueString:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v17.receiver = self;
  v17.super_class = MCMClientIdentityIndex;
  v10 = [(MCMClientIdentityIndex *)&v17 init];
  if (v10)
  {
    v11 = [MEMORY[0x1E695DEF0] dataWithBytes:a3 length:32];
    auditToken = v10->_auditToken;
    v10->_auditToken = v11;

    v13 = [MEMORY[0x1E695DEF0] dataWithBytes:a4 length:32];
    proximateAuditToken = v10->_proximateAuditToken;
    v10->_proximateAuditToken = v13;

    objc_storeStrong(&v10->_personaUniqueString, a5);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

@end