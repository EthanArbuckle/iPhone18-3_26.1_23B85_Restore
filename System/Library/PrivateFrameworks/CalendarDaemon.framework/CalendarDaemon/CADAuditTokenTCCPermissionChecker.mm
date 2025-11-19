@interface CADAuditTokenTCCPermissionChecker
- (CADAuditTokenTCCPermissionChecker)initWithAuditToken:(id *)a3;
- (void)requestAuthorization:(unint64_t)a3 forService:(__CFString *)a4 clientDictionary:(id)a5 completion:(id)a6;
@end

@implementation CADAuditTokenTCCPermissionChecker

- (CADAuditTokenTCCPermissionChecker)initWithAuditToken:(id *)a3
{
  v6.receiver = self;
  v6.super_class = CADAuditTokenTCCPermissionChecker;
  result = [(CADAuditTokenTCCPermissionChecker *)&v6 init];
  if (result)
  {
    v5 = *a3->var0;
    *&result->_auditToken.val[4] = *&a3->var0[4];
    *result->_auditToken.val = v5;
  }

  return result;
}

- (void)requestAuthorization:(unint64_t)a3 forService:(__CFString *)a4 clientDictionary:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = *&self->_auditToken.val[4];
  v18 = *self->_auditToken.val;
  v19 = v11;
  v12 = a5;
  v13 = tcc_credential_create_for_process_with_audit_token();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __97__CADAuditTokenTCCPermissionChecker_requestAuthorization_forService_clientDictionary_completion___block_invoke;
  v15[3] = &unk_27851A840;
  v16 = v10;
  v17 = a4;
  v15[4] = self;
  v14 = v10;
  CalRequestAuthorizationForServiceWithCompletion(a3, v13, a4, v12, v15);
}

uint64_t __97__CADAuditTokenTCCPermissionChecker_requestAuthorization_forService_clientDictionary_completion___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    [*(a1 + 32) _authorizationForService:*(a1 + 48)];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

@end