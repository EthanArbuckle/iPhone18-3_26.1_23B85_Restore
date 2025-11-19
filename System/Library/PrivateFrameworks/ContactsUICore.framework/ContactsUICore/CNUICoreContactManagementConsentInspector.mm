@interface CNUICoreContactManagementConsentInspector
+ (unint64_t)contactManagementConsentStateFromSTContactManagementState:(int64_t)a3;
- (CNUICoreContactManagementConsentInspector)init;
- (CNUICoreContactManagementConsentInspector)initWithManagementState:(id)a3 schedulerProvider:(id)a4;
- (id)contactManagementConsentStateFutureForDSID:(id)a3;
- (unint64_t)contactManagementConsentStateOfDelegateWithInfo:(id)a3;
@end

@implementation CNUICoreContactManagementConsentInspector

- (CNUICoreContactManagementConsentInspector)init
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v3 = getSTManagementStateClass_softClass;
  v13 = getSTManagementStateClass_softClass;
  if (!getSTManagementStateClass_softClass)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getSTManagementStateClass_block_invoke;
    v9[3] = &unk_1E76E79E0;
    v9[4] = &v10;
    __getSTManagementStateClass_block_invoke(v9);
    v3 = v11[3];
  }

  v4 = v3;
  _Block_object_dispose(&v10, 8);
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x1E6996820] defaultProvider];
  v7 = [(CNUICoreContactManagementConsentInspector *)self initWithManagementState:v5 schedulerProvider:v6];

  return v7;
}

- (CNUICoreContactManagementConsentInspector)initWithManagementState:(id)a3 schedulerProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNUICoreContactManagementConsentInspector;
  v9 = [(CNUICoreContactManagementConsentInspector *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_managementState, a3);
    objc_storeStrong(&v10->_schedulerProvider, a4);
    v11 = v10;
  }

  return v10;
}

- (unint64_t)contactManagementConsentStateOfDelegateWithInfo:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 dsid];
  v5 = [(CNUICoreContactManagementConsentInspector *)self contactManagementConsentStateFutureForDSID:v4];
  v6 = [v5 result:0];
  v7 = [v6 unsignedIntegerValue];

  return v7;
}

- (id)contactManagementConsentStateFutureForDSID:(id)a3
{
  v4 = MEMORY[0x1E69967D0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(CNUICoreContactManagementConsentInspector *)self managementState];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __88__CNUICoreContactManagementConsentInspector_contactManagementConsentStateFutureForDSID___block_invoke;
  v14 = &unk_1E76EA1B0;
  v15 = v6;
  v16 = self;
  v8 = v6;
  [v7 contactManagementStateForDSID:v5 completionHandler:&v11];

  v9 = [v8 future];

  return v9;
}

void __88__CNUICoreContactManagementConsentInspector_contactManagementConsentStateFutureForDSID___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 finishWithResult:&unk_1F1645DF0];
  }

  else
  {
    v5 = [objc_opt_class() contactManagementConsentStateFromSTContactManagementState:a2];
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
    [v6 finishWithResult:v7];
  }
}

+ (unint64_t)contactManagementConsentStateFromSTContactManagementState:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return qword_1A34D9518[a3];
  }
}

@end