@interface CNEntitlementVerifierTestDouble
+ (id)keyForEntitlement:(id)entitlement auditToken:(id *)token;
- (BOOL)BOOLeanResultForKey:(id)key error:(id *)error;
- (BOOL)auditToken:(id *)token allowsHighPriorityWithError:(id *)error;
- (BOOL)auditToken:(id *)token hasArrayWithStringValue:(id)value forAnyEntitlement:(id)entitlement error:(id *)error;
- (BOOL)auditToken:(id *)token hasBooleanEntitlement:(id)entitlement error:(id *)error;
- (BOOL)auditToken:(id *)token isFirstOrSecondPartyWithError:(id *)error;
- (BOOL)currentProcessHasArrayWithStringValue:(id)value forAnyEntitlement:(id)entitlement error:(id *)error;
- (BOOL)currentProcessHasBooleanEntitlement:(id)entitlement error:(id *)error;
- (BOOL)currentProcessIsFirstOrSecondPartyWithError:(id *)error;
- (CNEntitlementVerifierTestDouble)init;
- (id)stringArrayResultForKey:(id)key error:(id *)error;
- (id)valueForEntitlementForKey:(id)key error:(id *)error;
- (id)valuesForAuditToken:(id *)token forEntitlements:(id)entitlements error:(id *)error;
- (id)valuesForCurrentProcessForEntitlements:(id)entitlements error:(id *)error;
- (void)setAuditToken:(id *)token allowsHighPriorityError:(id)error;
- (void)setAuditToken:(id *)token hasError:(id)error forEntitlement:(id)entitlement;
- (void)setAuditToken:(id *)token hasValue:(id)value forEntitlement:(id)entitlement;
- (void)setAuditToken:(id *)token isFirstOrSecondPartyError:(id)error;
- (void)setCurrentProcessHasError:(id)error forEntitlement:(id)entitlement;
- (void)setCurrentProcessHasValue:(id)value forEntitlement:(id)entitlement;
@end

@implementation CNEntitlementVerifierTestDouble

- (CNEntitlementVerifierTestDouble)init
{
  v7.receiver = self;
  v7.super_class = CNEntitlementVerifierTestDouble;
  v2 = [(CNEntitlementVerifierTestDouble *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    entitlements = v2->_entitlements;
    v2->_entitlements = v3;

    v5 = v2;
  }

  return v2;
}

- (void)setCurrentProcessHasValue:(id)value forEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  valueCopy = value;
  v9 = [objc_opt_class() keyForEntitlement:entitlementCopy];

  v8 = [CNResult successWithValue:valueCopy];

  [(NSMutableDictionary *)self->_entitlements setObject:v8 forKeyedSubscript:v9];
}

- (void)setCurrentProcessHasError:(id)error forEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  errorCopy = error;
  v9 = [objc_opt_class() keyForEntitlement:entitlementCopy];

  v8 = [CNResult failureWithError:errorCopy];

  [(NSMutableDictionary *)self->_entitlements setObject:v8 forKeyedSubscript:v9];
}

- (void)setAuditToken:(id *)token hasValue:(id)value forEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  valueCopy = value;
  v10 = objc_opt_class();
  v11 = *&token->var0[4];
  v14[0] = *token->var0;
  v14[1] = v11;
  v12 = [v10 keyForEntitlement:entitlementCopy auditToken:v14];

  v13 = [CNResult successWithValue:valueCopy];

  [(NSMutableDictionary *)self->_entitlements setObject:v13 forKeyedSubscript:v12];
}

- (void)setAuditToken:(id *)token hasError:(id)error forEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  errorCopy = error;
  v10 = objc_opt_class();
  v11 = *&token->var0[4];
  v14[0] = *token->var0;
  v14[1] = v11;
  v12 = [v10 keyForEntitlement:entitlementCopy auditToken:v14];

  v13 = [CNResult failureWithError:errorCopy];

  [(NSMutableDictionary *)self->_entitlements setObject:v13 forKeyedSubscript:v12];
}

- (void)setAuditToken:(id *)token isFirstOrSecondPartyError:(id)error
{
  errorCopy = error;
  v7 = objc_opt_class();
  v8 = *&token->var0[4];
  v11[0] = *token->var0;
  v11[1] = v8;
  v9 = [v7 keyForEntitlement:@"__isFirstParty__" auditToken:v11];
  v10 = [CNResult failureWithError:errorCopy];

  [(NSMutableDictionary *)self->_entitlements setObject:v10 forKeyedSubscript:v9];
}

- (void)setAuditToken:(id *)token allowsHighPriorityError:(id)error
{
  errorCopy = error;
  v7 = objc_opt_class();
  v8 = *&token->var0[4];
  v11[0] = *token->var0;
  v11[1] = v8;
  v9 = [v7 keyForEntitlement:@"__isHighPriorityAllowed__" auditToken:v11];
  v10 = [CNResult failureWithError:errorCopy];

  [(NSMutableDictionary *)self->_entitlements setObject:v10 forKeyedSubscript:v9];
}

+ (id)keyForEntitlement:(id)entitlement auditToken:(id *)token
{
  v5 = [entitlement mutableCopy];
  for (i = 0; i != 8; ++i)
  {
    [v5 appendString:@"-"];
    [v5 appendFormat:@"%d", token->var0[i]];
  }

  return v5;
}

- (BOOL)currentProcessHasBooleanEntitlement:(id)entitlement error:(id *)error
{
  entitlementCopy = entitlement;
  v7 = [objc_opt_class() keyForEntitlement:entitlementCopy];

  LOBYTE(error) = [(CNEntitlementVerifierTestDouble *)self BOOLeanResultForKey:v7 error:error];
  return error;
}

- (BOOL)auditToken:(id *)token hasBooleanEntitlement:(id)entitlement error:(id *)error
{
  entitlementCopy = entitlement;
  v9 = objc_opt_class();
  v10 = *&token->var0[4];
  v13[0] = *token->var0;
  v13[1] = v10;
  v11 = [v9 keyForEntitlement:entitlementCopy auditToken:v13];

  LOBYTE(error) = [(CNEntitlementVerifierTestDouble *)self BOOLeanResultForKey:v11 error:error];
  return error;
}

- (BOOL)BOOLeanResultForKey:(id)key error:(id *)error
{
  v5 = [(NSMutableDictionary *)self->_entitlements objectForKeyedSubscript:key];
  v6 = v5;
  if (v5)
  {
    if ([v5 isSuccess])
    {
      value = [v6 value];
      bOOLValue = [value BOOLValue];
    }

    else
    {
      error = [v6 error];
      value = error;
      if (error)
      {
        v10 = error;
        bOOLValue = 0;
        *error = value;
      }

      else
      {
        bOOLValue = 0;
      }
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)currentProcessHasArrayWithStringValue:(id)value forAnyEntitlement:(id)entitlement error:(id *)error
{
  valueCopy = value;
  entitlementCopy = entitlement;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __97__CNEntitlementVerifierTestDouble_currentProcessHasArrayWithStringValue_forAnyEntitlement_error___block_invoke;
  v14[3] = &unk_1E6ED53E8;
  v14[4] = self;
  v16 = &v17;
  v10 = valueCopy;
  v15 = v10;
  v11 = [entitlementCopy _cn_any:v14];
  v12 = v18[5];
  if (v12)
  {
    v11 = 0;
    if (error)
    {
      *error = v12;
    }
  }

  _Block_object_dispose(&v17, 8);
  return v11;
}

uint64_t __97__CNEntitlementVerifierTestDouble_currentProcessHasArrayWithStringValue_forAnyEntitlement_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [objc_opt_class() keyForEntitlement:v4];

  v6 = a1[4];
  v7 = *(a1[6] + 8);
  obj = *(v7 + 40);
  v8 = [v6 stringArrayResultForKey:v5 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = [v8 containsObject:a1[5]];

  return v9;
}

- (BOOL)auditToken:(id *)token hasArrayWithStringValue:(id)value forAnyEntitlement:(id)entitlement error:(id *)error
{
  valueCopy = value;
  entitlementCopy = entitlement;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v12 = *&token->var0[4];
  v20 = *token->var0;
  v21 = v12;
  v17[2] = __94__CNEntitlementVerifierTestDouble_auditToken_hasArrayWithStringValue_forAnyEntitlement_error___block_invoke;
  v17[3] = &unk_1E6ED5410;
  v17[4] = self;
  v19 = &v22;
  v13 = valueCopy;
  v18 = v13;
  v14 = [entitlementCopy _cn_any:v17];
  v15 = v23[5];
  if (v15)
  {
    v14 = 0;
    if (error)
    {
      *error = v15;
    }
  }

  _Block_object_dispose(&v22, 8);
  return v14;
}

uint64_t __94__CNEntitlementVerifierTestDouble_auditToken_hasArrayWithStringValue_forAnyEntitlement_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = *(a1 + 72);
  v14[0] = *(a1 + 56);
  v14[1] = v6;
  v7 = [v5 keyForEntitlement:v4 auditToken:v14];

  v8 = *(a1 + 32);
  v9 = *(*(a1 + 48) + 8);
  obj = *(v9 + 40);
  v10 = [v8 stringArrayResultForKey:v7 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  v11 = [v10 containsObject:*(a1 + 40)];

  return v11;
}

- (id)stringArrayResultForKey:(id)key error:(id *)error
{
  v5 = [(NSMutableDictionary *)self->_entitlements objectForKeyedSubscript:key];
  v6 = v5;
  if (v5)
  {
    if ([v5 isSuccess])
    {
      value = [v6 value];
      goto LABEL_8;
    }

    error = [v6 error];
    if (error)
    {
      error = error;
      *error = error;
    }
  }

  value = 0;
LABEL_8:

  return value;
}

- (id)valuesForCurrentProcessForEntitlements:(id)entitlements error:(id *)error
{
  entitlementsCopy = entitlements;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__CNEntitlementVerifierTestDouble_valuesForCurrentProcessForEntitlements_error___block_invoke;
  v10[3] = &unk_1E6ED5438;
  v10[4] = self;
  v10[5] = &v17;
  v10[6] = &v11;
  [entitlementsCopy _cn_each:v10];
  v7 = v18[5];
  if (v7)
  {
    v8 = 0;
    if (error)
    {
      *error = v7;
    }
  }

  else
  {
    v8 = v12[5];
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

void __80__CNEntitlementVerifierTestDouble_valuesForCurrentProcessForEntitlements_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [objc_opt_class() keyForEntitlement:v3];
  v6 = a1[4];
  v7 = *(a1[5] + 8);
  obj = *(v7 + 40);
  v8 = [v6 valueForEntitlementForKey:v5 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    [*(*(a1[6] + 8) + 40) setObject:v8 forKey:v3];
  }
}

- (id)valuesForAuditToken:(id *)token forEntitlements:(id)entitlements error:(id *)error
{
  entitlementsCopy = entitlements;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v9 = *&token->var0[4];
  v14 = *token->var0;
  v15 = v9;
  v13[2] = __77__CNEntitlementVerifierTestDouble_valuesForAuditToken_forEntitlements_error___block_invoke;
  v13[3] = &unk_1E6ED5460;
  v13[4] = self;
  v13[5] = &v22;
  v13[6] = &v16;
  [entitlementsCopy _cn_each:v13];
  v10 = v23[5];
  if (v10)
  {
    v11 = 0;
    if (error)
    {
      *error = v10;
    }
  }

  else
  {
    v11 = v17[5];
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v11;
}

void __77__CNEntitlementVerifierTestDouble_valuesForAuditToken_forEntitlements_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = *(a1 + 72);
  v12[0] = *(a1 + 56);
  v12[1] = v6;
  v7 = [v5 keyForEntitlement:v3 auditToken:v12];
  v8 = *(a1 + 32);
  v9 = *(*(a1 + 40) + 8);
  obj = *(v9 + 40);
  v10 = [v8 valueForEntitlementForKey:v7 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  if (v10)
  {
    [*(*(*(a1 + 48) + 8) + 40) setObject:v10 forKey:v3];
  }
}

- (id)valueForEntitlementForKey:(id)key error:(id *)error
{
  v5 = [(NSMutableDictionary *)self->_entitlements objectForKeyedSubscript:key];
  v6 = v5;
  if (v5)
  {
    if ([v5 isSuccess])
    {
      value = [v6 value];
      goto LABEL_8;
    }

    error = [v6 error];
    if (error)
    {
      error = error;
      *error = error;
    }
  }

  value = 0;
LABEL_8:

  return value;
}

- (BOOL)currentProcessIsFirstOrSecondPartyWithError:(id *)error
{
  v5 = [objc_opt_class() keyForEntitlement:@"__isFirstParty__"];
  v6 = [(NSMutableDictionary *)self->_entitlements objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    if ([v6 isSuccess])
    {
      value = [v7 value];
      bOOLValue = [value BOOLValue];
    }

    else
    {
      error = [v7 error];
      value = error;
      if (error)
      {
        v11 = error;
        bOOLValue = 0;
        *error = value;
      }

      else
      {
        bOOLValue = 0;
      }
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)auditToken:(id *)token isFirstOrSecondPartyWithError:(id *)error
{
  v7 = objc_opt_class();
  v8 = *&token->var0[4];
  v17[0] = *token->var0;
  v17[1] = v8;
  v9 = [v7 keyForEntitlement:@"__isFirstParty__" auditToken:v17];
  v10 = [(NSMutableDictionary *)self->_entitlements objectForKeyedSubscript:v9];
  v11 = v10;
  if (v10)
  {
    if ([v10 isSuccess])
    {
      value = [v11 value];
      bOOLValue = [value BOOLValue];
    }

    else
    {
      error = [v11 error];
      value = error;
      if (error)
      {
        v15 = error;
        bOOLValue = 0;
        *error = value;
      }

      else
      {
        bOOLValue = 0;
      }
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)auditToken:(id *)token allowsHighPriorityWithError:(id *)error
{
  v7 = objc_opt_class();
  v8 = *&token->var0[4];
  v17[0] = *token->var0;
  v17[1] = v8;
  v9 = [v7 keyForEntitlement:@"__isHighPriorityAllowed__" auditToken:v17];
  v10 = [(NSMutableDictionary *)self->_entitlements objectForKeyedSubscript:v9];
  v11 = v10;
  if (v10)
  {
    if ([v10 isSuccess])
    {
      value = [v11 value];
      bOOLValue = [value BOOLValue];
    }

    else
    {
      error = [v11 error];
      value = error;
      if (error)
      {
        v15 = error;
        bOOLValue = 0;
        *error = value;
      }

      else
      {
        bOOLValue = 0;
      }
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end