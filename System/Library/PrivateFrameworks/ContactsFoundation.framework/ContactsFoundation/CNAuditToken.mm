@interface CNAuditToken
+ (id)auditToken:(id *)token;
- ($115C4C562B26FF47E01F9F4EA65B5887)audit_token;
@end

@implementation CNAuditToken

- ($115C4C562B26FF47E01F9F4EA65B5887)audit_token
{
  v3 = *&self->var0[6];
  *retstr->var0 = *&self->var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

+ (id)auditToken:(id *)token
{
  v4 = objc_alloc_init(CNAuditToken);
  v5 = *&token->var0[4];
  *v4->_audit_token.val = *token->var0;
  *&v4->_audit_token.val[4] = v5;

  return v4;
}

@end