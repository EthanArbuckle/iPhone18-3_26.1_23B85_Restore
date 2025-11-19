@interface CNEntitlementVerifier
- (BOOL)auditToken:(id *)a3 allowsHighPriorityWithError:(id *)a4;
- (BOOL)auditToken:(id *)a3 hasArrayWithStringValue:(id)a4 forAnyEntitlement:(id)a5 error:(id *)a6;
- (BOOL)auditToken:(id *)a3 hasBooleanEntitlement:(id)a4 error:(id *)a5;
- (BOOL)auditToken:(id *)a3 isFirstOrSecondPartyWithError:(id *)a4;
- (BOOL)currentProcessHasArrayWithStringValue:(id)a3 forAnyEntitlement:(id)a4 error:(id *)a5;
- (BOOL)currentProcessHasBooleanEntitlement:(id)a3 error:(id *)a4;
- (BOOL)currentProcessIsFirstOrSecondPartyWithError:(id *)a3;
- (BOOL)secTask:(__SecTask *)a3 allowsHighPriorityWithError:(id *)a4;
- (BOOL)secTask:(__SecTask *)a3 hasArrayWithStringValue:(id)a4 forAnyEntitlement:(id)a5 error:(id *)a6;
- (BOOL)secTask:(__SecTask *)a3 hasBooleanEntitlement:(id)a4 error:(id *)a5;
- (BOOL)secTask:(__SecTask *)a3 isFirstOrSecondPartyWithError:(id *)a4;
- (id)highPriorityBundleIdentifiers;
- (id)secTask:(__SecTask *)a3 valuesForEntitlements:(id)a4 error:(id *)a5;
- (id)valuesForAuditToken:(id *)a3 forEntitlements:(id)a4 error:(id *)a5;
- (id)valuesForCurrentProcessForEntitlements:(id)a3 error:(id *)a4;
@end

@implementation CNEntitlementVerifier

- (id)highPriorityBundleIdentifiers
{
  if (highPriorityBundleIdentifiers_cn_once_token_1 != -1)
  {
    [CNEntitlementVerifier highPriorityBundleIdentifiers];
  }

  v3 = highPriorityBundleIdentifiers_cn_once_object_1;

  return v3;
}

- (BOOL)currentProcessHasBooleanEntitlement:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v7)
  {
    v8 = v7;
    v9 = [(CNEntitlementVerifier *)self secTask:v7 hasBooleanEntitlement:v6 error:a4];
    CFRelease(v8);
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:3 userInfo:0];
    if (a4)
    {
      v10 = v10;
      *a4 = v10;
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)auditToken:(id *)a3 hasBooleanEntitlement:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = *&a3->var0[4];
  *v15.val = *a3->var0;
  *&v15.val[4] = v9;
  v10 = SecTaskCreateWithAuditToken(0, &v15);
  if (v10)
  {
    v11 = v10;
    v12 = [(CNEntitlementVerifier *)self secTask:v10 hasBooleanEntitlement:v8 error:a5];
    CFRelease(v11);
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:3 userInfo:0];
    if (a5)
    {
      v13 = v13;
      *a5 = v13;
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)secTask:(__SecTask *)a3 hasBooleanEntitlement:(id)a4 error:(id *)a5
{
  error = 0;
  v6 = SecTaskCopyValueForEntitlement(a3, a4, &error);
  if (a5)
  {
    *a5 = error;
  }

  v7 = [v6 BOOLValue];

  return v7;
}

- (BOOL)currentProcessHasArrayWithStringValue:(id)a3 forAnyEntitlement:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v10)
  {
    v11 = v10;
    v12 = [(CNEntitlementVerifier *)self secTask:v10 hasArrayWithStringValue:v8 forAnyEntitlement:v9 error:a5];
    CFRelease(v11);
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:3 userInfo:0];
    if (a5)
    {
      v13 = v13;
      *a5 = v13;
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)auditToken:(id *)a3 hasArrayWithStringValue:(id)a4 forAnyEntitlement:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = *&a3->var0[4];
  *v18.val = *a3->var0;
  *&v18.val[4] = v12;
  v13 = SecTaskCreateWithAuditToken(0, &v18);
  if (v13)
  {
    v14 = v13;
    v15 = [(CNEntitlementVerifier *)self secTask:v13 hasArrayWithStringValue:v10 forAnyEntitlement:v11 error:a6];
    CFRelease(v14);
  }

  else
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:3 userInfo:0];
    if (a6)
    {
      v16 = v16;
      *a6 = v16;
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)secTask:(__SecTask *)a3 hasArrayWithStringValue:(id)a4 forAnyEntitlement:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__CNEntitlementVerifier_secTask_hasArrayWithStringValue_forAnyEntitlement_error___block_invoke;
  v15[3] = &unk_1E6ED53C0;
  v17 = &v19;
  v18 = a3;
  v11 = v9;
  v16 = v11;
  v12 = [v10 _cn_any:v15];
  v13 = v20[5];
  if (v13)
  {
    v12 = 0;
    if (a6)
    {
      *a6 = v13;
    }
  }

  _Block_object_dispose(&v19, 8);
  return v12;
}

uint64_t __81__CNEntitlementVerifier_secTask_hasArrayWithStringValue_forAnyEntitlement_error___block_invoke(uint64_t a1, const __CFString *a2)
{
  error = 0;
  v3 = SecTaskCopyValueForEntitlement(*(a1 + 48), a2, &error);
  v4 = v3;
  v5 = error;
  if (error)
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = error;
    objc_storeStrong((v6 + 40), v5);

    v8 = 0;
  }

  else
  {
    v8 = [v3 containsObject:*(a1 + 32)];
  }

  return v8;
}

- (id)valuesForCurrentProcessForEntitlements:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v7)
  {
    v8 = v7;
    v9 = [(CNEntitlementVerifier *)self secTask:v7 valuesForEntitlements:v6 error:a4];
    CFRelease(v8);
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:3 userInfo:0];
    if (a4)
    {
      v10 = v10;
      *a4 = v10;
    }

    v9 = 0;
  }

  return v9;
}

- (id)valuesForAuditToken:(id *)a3 forEntitlements:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = *&a3->var0[4];
  *v15.val = *a3->var0;
  *&v15.val[4] = v9;
  v10 = SecTaskCreateWithAuditToken(0, &v15);
  if (v10)
  {
    v11 = v10;
    v12 = [(CNEntitlementVerifier *)self secTask:v10 valuesForEntitlements:v8 error:a5];
    CFRelease(v11);
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:3 userInfo:0];
    if (a5)
    {
      v13 = v13;
      *a5 = v13;
    }

    v12 = 0;
  }

  return v12;
}

- (id)secTask:(__SecTask *)a3 valuesForEntitlements:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = v7;
  if ([(__CFArray *)v7 containsObject:@"com.apple.private.contacts"])
  {
    v8 = [(__CFArray *)v7 arrayByAddingObject:@"com.apple.private.contactsui"];
  }

  error = 0;
  v9 = SecTaskCopyValuesForEntitlements(a3, v8, &error);
  v10 = v9;
  if (a5)
  {
    *a5 = error;
  }

  else if (!v9)
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  return v10;
}

- (BOOL)currentProcessIsFirstOrSecondPartyWithError:(id *)a3
{
  v5 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v5)
  {
    v6 = v5;
    v7 = [(CNEntitlementVerifier *)self secTask:v5 isFirstOrSecondPartyWithError:a3];
    CFRelease(v6);
    return v7;
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:3 userInfo:0];
    if (a3)
    {
      v9 = v9;
      *a3 = v9;
    }

    return 0;
  }
}

- (BOOL)auditToken:(id *)a3 isFirstOrSecondPartyWithError:(id *)a4
{
  v6 = *MEMORY[0x1E695E480];
  v7 = *&a3->var0[4];
  *v13.val = *a3->var0;
  *&v13.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(v6, &v13);
  if (v8)
  {
    v9 = v8;
    v10 = [(CNEntitlementVerifier *)self secTask:v8 isFirstOrSecondPartyWithError:a4];
    CFRelease(v9);
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:3 userInfo:0];
    if (a4)
    {
      v11 = v11;
      *a4 = v11;
    }

    return 0;
  }

  return v10;
}

- (BOOL)secTask:(__SecTask *)a3 isFirstOrSecondPartyWithError:(id *)a4
{
  v5 = SecTaskCopySigningIdentifier(a3, 0);
  if (off_1EF440708(&__block_literal_global_120, v5))
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:3 userInfo:0];
    if (a4)
    {
      v6 = v6;
      *a4 = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [(__CFString *)v5 hasPrefix:@"com.apple."];
  }

  return v7;
}

- (BOOL)auditToken:(id *)a3 allowsHighPriorityWithError:(id *)a4
{
  v6 = *MEMORY[0x1E695E480];
  v7 = *&a3->var0[4];
  *v13.val = *a3->var0;
  *&v13.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(v6, &v13);
  if (v8)
  {
    v9 = v8;
    v10 = [(CNEntitlementVerifier *)self secTask:v8 allowsHighPriorityWithError:a4];
    CFRelease(v9);
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:3 userInfo:0];
    if (a4)
    {
      v11 = v11;
      *a4 = v11;
    }

    return 0;
  }

  return v10;
}

- (BOOL)secTask:(__SecTask *)a3 allowsHighPriorityWithError:(id *)a4
{
  v6 = SecTaskCopySigningIdentifier(a3, 0);
  if (off_1EF440708(&__block_literal_global_120, v6))
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:3 userInfo:0];
    v8 = v7;
    if (a4)
    {
      v9 = v7;
      v10 = 0;
      *a4 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v8 = [(CNEntitlementVerifier *)self highPriorityBundleIdentifiers];
    v10 = [v8 containsObject:v6];
  }

  return v10;
}

void __54__CNEntitlementVerifier_highPriorityBundleIdentifiers__block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"com.apple.telephonyutilities.callservicesd";
  v5[1] = @"com.apple.TelephonyUtilities";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = highPriorityBundleIdentifiers_cn_once_object_1;
  highPriorityBundleIdentifiers_cn_once_object_1 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end