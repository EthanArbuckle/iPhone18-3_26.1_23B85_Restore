@interface CNAuditToken
+ (id)auditToken:(id *)a3;
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

+ (id)auditToken:(id *)a3
{
  v4 = objc_alloc_init(CNAuditToken);
  v5 = *&a3->var0[4];
  *v4->_audit_token.val = *a3->var0;
  *&v4->_audit_token.val[4] = v5;

  return v4;
}

@end