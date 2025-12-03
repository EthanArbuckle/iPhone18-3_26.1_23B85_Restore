@interface LACMutableCredentialRequest
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)equal;
- (LACMutableCredentialRequest)init;
- (NSString)description;
- (void)setAuditToken:(id *)token;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy conformsToProtocol:&unk_1F26A4CA0])
  {
    v15 = 0;
    goto LABEL_10;
  }

  v5 = equalCopy;
  identifier = [(LACMutableCredentialRequest *)self identifier];
  if (identifier != [v5 identifier])
  {
    goto LABEL_7;
  }

  credential = [(LACMutableCredentialRequest *)self credential];
  if (credential != [v5 credential])
  {
    goto LABEL_7;
  }

  userID = [(LACMutableCredentialRequest *)self userID];
  if (userID != [v5 userID])
  {
    goto LABEL_7;
  }

  externalizedContext = [(LACMutableCredentialRequest *)self externalizedContext];
  externalizedContext2 = [v5 externalizedContext];
  v11 = externalizedContext2;
  if (externalizedContext == externalizedContext2)
  {

    goto LABEL_12;
  }

  externalizedContext3 = [(LACMutableCredentialRequest *)self externalizedContext];
  externalizedContext4 = [v5 externalizedContext];
  v14 = [externalizedContext3 isEqualToData:externalizedContext4];

  if (v14)
  {
LABEL_12:
    contextID = [(LACMutableCredentialRequest *)self contextID];
    contextID2 = [v5 contextID];
    if (contextID == contextID2)
    {
      v15 = 1;
    }

    else
    {
      contextID3 = [(LACMutableCredentialRequest *)self contextID];
      contextID4 = [v5 contextID];
      v15 = [contextID3 isEqual:contextID4];
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
  contextID = [(LACMutableCredentialRequest *)self contextID];
  v10 = [v8 stringWithFormat:@"%@", contextID];
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

- (void)setAuditToken:(id *)token
{
  v3 = *token->var0;
  *&self->_auditToken.val[4] = *&token->var0[4];
  *self->_auditToken.val = v3;
}

@end