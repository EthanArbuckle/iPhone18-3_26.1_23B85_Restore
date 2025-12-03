@interface CNEntitlementVerifier
- (BOOL)auditToken:(id *)token allowsHighPriorityWithError:(id *)error;
- (BOOL)auditToken:(id *)token hasArrayWithStringValue:(id)value forAnyEntitlement:(id)entitlement error:(id *)error;
- (BOOL)auditToken:(id *)token hasBooleanEntitlement:(id)entitlement error:(id *)error;
- (BOOL)auditToken:(id *)token isFirstOrSecondPartyWithError:(id *)error;
- (BOOL)currentProcessHasArrayWithStringValue:(id)value forAnyEntitlement:(id)entitlement error:(id *)error;
- (BOOL)currentProcessHasBooleanEntitlement:(id)entitlement error:(id *)error;
- (BOOL)currentProcessIsFirstOrSecondPartyWithError:(id *)error;
- (BOOL)secTask:(__SecTask *)task allowsHighPriorityWithError:(id *)error;
- (BOOL)secTask:(__SecTask *)task hasArrayWithStringValue:(id)value forAnyEntitlement:(id)entitlement error:(id *)error;
- (BOOL)secTask:(__SecTask *)task hasBooleanEntitlement:(id)entitlement error:(id *)error;
- (BOOL)secTask:(__SecTask *)task isFirstOrSecondPartyWithError:(id *)error;
- (id)highPriorityBundleIdentifiers;
- (id)secTask:(__SecTask *)task valuesForEntitlements:(id)entitlements error:(id *)error;
- (id)valuesForAuditToken:(id *)token forEntitlements:(id)entitlements error:(id *)error;
- (id)valuesForCurrentProcessForEntitlements:(id)entitlements error:(id *)error;
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

- (BOOL)currentProcessHasBooleanEntitlement:(id)entitlement error:(id *)error
{
  entitlementCopy = entitlement;
  v7 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v7)
  {
    v8 = v7;
    v9 = [(CNEntitlementVerifier *)self secTask:v7 hasBooleanEntitlement:entitlementCopy error:error];
    CFRelease(v8);
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:3 userInfo:0];
    if (error)
    {
      v10 = v10;
      *error = v10;
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)auditToken:(id *)token hasBooleanEntitlement:(id)entitlement error:(id *)error
{
  entitlementCopy = entitlement;
  v9 = *&token->var0[4];
  *v15.val = *token->var0;
  *&v15.val[4] = v9;
  v10 = SecTaskCreateWithAuditToken(0, &v15);
  if (v10)
  {
    v11 = v10;
    v12 = [(CNEntitlementVerifier *)self secTask:v10 hasBooleanEntitlement:entitlementCopy error:error];
    CFRelease(v11);
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:3 userInfo:0];
    if (error)
    {
      v13 = v13;
      *error = v13;
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)secTask:(__SecTask *)task hasBooleanEntitlement:(id)entitlement error:(id *)error
{
  error = 0;
  v6 = SecTaskCopyValueForEntitlement(task, entitlement, &error);
  if (error)
  {
    *error = error;
  }

  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (BOOL)currentProcessHasArrayWithStringValue:(id)value forAnyEntitlement:(id)entitlement error:(id *)error
{
  valueCopy = value;
  entitlementCopy = entitlement;
  v10 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v10)
  {
    v11 = v10;
    v12 = [(CNEntitlementVerifier *)self secTask:v10 hasArrayWithStringValue:valueCopy forAnyEntitlement:entitlementCopy error:error];
    CFRelease(v11);
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:3 userInfo:0];
    if (error)
    {
      v13 = v13;
      *error = v13;
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)auditToken:(id *)token hasArrayWithStringValue:(id)value forAnyEntitlement:(id)entitlement error:(id *)error
{
  valueCopy = value;
  entitlementCopy = entitlement;
  v12 = *&token->var0[4];
  *v18.val = *token->var0;
  *&v18.val[4] = v12;
  v13 = SecTaskCreateWithAuditToken(0, &v18);
  if (v13)
  {
    v14 = v13;
    v15 = [(CNEntitlementVerifier *)self secTask:v13 hasArrayWithStringValue:valueCopy forAnyEntitlement:entitlementCopy error:error];
    CFRelease(v14);
  }

  else
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:3 userInfo:0];
    if (error)
    {
      v16 = v16;
      *error = v16;
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)secTask:(__SecTask *)task hasArrayWithStringValue:(id)value forAnyEntitlement:(id)entitlement error:(id *)error
{
  valueCopy = value;
  entitlementCopy = entitlement;
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
  taskCopy = task;
  v11 = valueCopy;
  v16 = v11;
  v12 = [entitlementCopy _cn_any:v15];
  v13 = v20[5];
  if (v13)
  {
    v12 = 0;
    if (error)
    {
      *error = v13;
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

- (id)valuesForCurrentProcessForEntitlements:(id)entitlements error:(id *)error
{
  entitlementsCopy = entitlements;
  v7 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v7)
  {
    v8 = v7;
    v9 = [(CNEntitlementVerifier *)self secTask:v7 valuesForEntitlements:entitlementsCopy error:error];
    CFRelease(v8);
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:3 userInfo:0];
    if (error)
    {
      v10 = v10;
      *error = v10;
    }

    v9 = 0;
  }

  return v9;
}

- (id)valuesForAuditToken:(id *)token forEntitlements:(id)entitlements error:(id *)error
{
  entitlementsCopy = entitlements;
  v9 = *&token->var0[4];
  *v15.val = *token->var0;
  *&v15.val[4] = v9;
  v10 = SecTaskCreateWithAuditToken(0, &v15);
  if (v10)
  {
    v11 = v10;
    v12 = [(CNEntitlementVerifier *)self secTask:v10 valuesForEntitlements:entitlementsCopy error:error];
    CFRelease(v11);
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:3 userInfo:0];
    if (error)
    {
      v13 = v13;
      *error = v13;
    }

    v12 = 0;
  }

  return v12;
}

- (id)secTask:(__SecTask *)task valuesForEntitlements:(id)entitlements error:(id *)error
{
  entitlementsCopy = entitlements;
  v8 = entitlementsCopy;
  if ([(__CFArray *)entitlementsCopy containsObject:@"com.apple.private.contacts"])
  {
    v8 = [(__CFArray *)entitlementsCopy arrayByAddingObject:@"com.apple.private.contactsui"];
  }

  error = 0;
  v9 = SecTaskCopyValuesForEntitlements(task, v8, &error);
  v10 = v9;
  if (error)
  {
    *error = error;
  }

  else if (!v9)
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  return v10;
}

- (BOOL)currentProcessIsFirstOrSecondPartyWithError:(id *)error
{
  v5 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v5)
  {
    v6 = v5;
    v7 = [(CNEntitlementVerifier *)self secTask:v5 isFirstOrSecondPartyWithError:error];
    CFRelease(v6);
    return v7;
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:3 userInfo:0];
    if (error)
    {
      v9 = v9;
      *error = v9;
    }

    return 0;
  }
}

- (BOOL)auditToken:(id *)token isFirstOrSecondPartyWithError:(id *)error
{
  v6 = *MEMORY[0x1E695E480];
  v7 = *&token->var0[4];
  *v13.val = *token->var0;
  *&v13.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(v6, &v13);
  if (v8)
  {
    v9 = v8;
    v10 = [(CNEntitlementVerifier *)self secTask:v8 isFirstOrSecondPartyWithError:error];
    CFRelease(v9);
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:3 userInfo:0];
    if (error)
    {
      v11 = v11;
      *error = v11;
    }

    return 0;
  }

  return v10;
}

- (BOOL)secTask:(__SecTask *)task isFirstOrSecondPartyWithError:(id *)error
{
  v5 = SecTaskCopySigningIdentifier(task, 0);
  if (off_1EF440708(&__block_literal_global_120, v5))
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:3 userInfo:0];
    if (error)
    {
      v6 = v6;
      *error = v6;
    }

    v7 = 0;
  }

  else
  {
    v7 = [(__CFString *)v5 hasPrefix:@"com.apple."];
  }

  return v7;
}

- (BOOL)auditToken:(id *)token allowsHighPriorityWithError:(id *)error
{
  v6 = *MEMORY[0x1E695E480];
  v7 = *&token->var0[4];
  *v13.val = *token->var0;
  *&v13.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(v6, &v13);
  if (v8)
  {
    v9 = v8;
    v10 = [(CNEntitlementVerifier *)self secTask:v8 allowsHighPriorityWithError:error];
    CFRelease(v9);
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:3 userInfo:0];
    if (error)
    {
      v11 = v11;
      *error = v11;
    }

    return 0;
  }

  return v10;
}

- (BOOL)secTask:(__SecTask *)task allowsHighPriorityWithError:(id *)error
{
  v6 = SecTaskCopySigningIdentifier(task, 0);
  if (off_1EF440708(&__block_literal_global_120, v6))
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:3 userInfo:0];
    highPriorityBundleIdentifiers = v7;
    if (error)
    {
      v9 = v7;
      v10 = 0;
      *error = highPriorityBundleIdentifiers;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    highPriorityBundleIdentifiers = [(CNEntitlementVerifier *)self highPriorityBundleIdentifiers];
    v10 = [highPriorityBundleIdentifiers containsObject:v6];
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