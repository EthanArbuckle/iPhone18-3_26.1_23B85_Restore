@interface LACMutableCredentialRequest
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)a3;
- (LACMutableCredentialRequest)init;
- (NSString)description;
- (void)setAuditToken:(id *)a3;
@end

@implementation LACMutableCredentialRequest

- (LACMutableCredentialRequest)init
{
  v4.receiver = self;
  v4.super_class = LACMutableCredentialRequest;
  result = [(LACMutableCredentialRequest *)&v4 init];
  if (result)
  {
    v3 = identifierCounter_0++;
    result->_identifier = v3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 conformsToProtocol:&unk_1F26A4CA0])
  {
    v15 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [(LACMutableCredentialRequest *)self identifier];
  if (v6 != [v5 identifier])
  {
    goto LABEL_7;
  }

  v7 = [(LACMutableCredentialRequest *)self credential];
  if (v7 != [v5 credential])
  {
    goto LABEL_7;
  }

  v8 = [(LACMutableCredentialRequest *)self userID];
  if (v8 != [v5 userID])
  {
    goto LABEL_7;
  }

  v9 = [(LACMutableCredentialRequest *)self externalizedContext];
  v10 = [v5 externalizedContext];
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_12;
  }

  v12 = [(LACMutableCredentialRequest *)self externalizedContext];
  v13 = [v5 externalizedContext];
  v14 = [v12 isEqualToData:v13];

  if (v14)
  {
LABEL_12:
    v17 = [(LACMutableCredentialRequest *)self contextID];
    v18 = [v5 contextID];
    if (v17 == v18)
    {
      v15 = 1;
    }

    else
    {
      v19 = [(LACMutableCredentialRequest *)self contextID];
      v20 = [v5 contextID];
      v15 = [v19 isEqual:v20];
    }

    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:

LABEL_10:
  return v15 & 1;
}

- (NSString)description
{
  v16[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v15[0] = @"identifier";
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", -[LACMutableCredentialRequest identifier](self, "identifier")];
  v16[0] = v5;
  v15[1] = @"credential";
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", -[LACMutableCredentialRequest credential](self, "credential")];
  v16[1] = v6;
  v15[2] = @"userID";
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", -[LACMutableCredentialRequest userID](self, "userID")];
  v16[2] = v7;
  v15[3] = @"contextID";
  v8 = MEMORY[0x1E696AEC0];
  v9 = [(LACMutableCredentialRequest *)self contextID];
  v10 = [v8 stringWithFormat:@"%@", v9];
  v16[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v12 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v11];;

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[1].var0[6];
  *retstr->var0 = *&self[1].var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setAuditToken:(id *)a3
{
  v3 = *a3->var0;
  *&self->_auditToken.val[4] = *&a3->var0[4];
  *self->_auditToken.val = v3;
}

@end