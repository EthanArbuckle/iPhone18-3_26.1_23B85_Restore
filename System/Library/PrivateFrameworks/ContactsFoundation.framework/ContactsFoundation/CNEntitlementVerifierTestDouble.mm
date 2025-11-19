@interface CNEntitlementVerifierTestDouble
+ (id)keyForEntitlement:(id)a3 auditToken:(id *)a4;
- (BOOL)BOOLeanResultForKey:(id)a3 error:(id *)a4;
- (BOOL)auditToken:(id *)a3 allowsHighPriorityWithError:(id *)a4;
- (BOOL)auditToken:(id *)a3 hasArrayWithStringValue:(id)a4 forAnyEntitlement:(id)a5 error:(id *)a6;
- (BOOL)auditToken:(id *)a3 hasBooleanEntitlement:(id)a4 error:(id *)a5;
- (BOOL)auditToken:(id *)a3 isFirstOrSecondPartyWithError:(id *)a4;
- (BOOL)currentProcessHasArrayWithStringValue:(id)a3 forAnyEntitlement:(id)a4 error:(id *)a5;
- (BOOL)currentProcessHasBooleanEntitlement:(id)a3 error:(id *)a4;
- (BOOL)currentProcessIsFirstOrSecondPartyWithError:(id *)a3;
- (CNEntitlementVerifierTestDouble)init;
- (id)stringArrayResultForKey:(id)a3 error:(id *)a4;
- (id)valueForEntitlementForKey:(id)a3 error:(id *)a4;
- (id)valuesForAuditToken:(id *)a3 forEntitlements:(id)a4 error:(id *)a5;
- (id)valuesForCurrentProcessForEntitlements:(id)a3 error:(id *)a4;
- (void)setAuditToken:(id *)a3 allowsHighPriorityError:(id)a4;
- (void)setAuditToken:(id *)a3 hasError:(id)a4 forEntitlement:(id)a5;
- (void)setAuditToken:(id *)a3 hasValue:(id)a4 forEntitlement:(id)a5;
- (void)setAuditToken:(id *)a3 isFirstOrSecondPartyError:(id)a4;
- (void)setCurrentProcessHasError:(id)a3 forEntitlement:(id)a4;
- (void)setCurrentProcessHasValue:(id)a3 forEntitlement:(id)a4;
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

- (void)setCurrentProcessHasValue:(id)a3 forEntitlement:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [objc_opt_class() keyForEntitlement:v6];

  v8 = [CNResult successWithValue:v7];

  [(NSMutableDictionary *)self->_entitlements setObject:v8 forKeyedSubscript:v9];
}

- (void)setCurrentProcessHasError:(id)a3 forEntitlement:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [objc_opt_class() keyForEntitlement:v6];

  v8 = [CNResult failureWithError:v7];

  [(NSMutableDictionary *)self->_entitlements setObject:v8 forKeyedSubscript:v9];
}

- (void)setAuditToken:(id *)a3 hasValue:(id)a4 forEntitlement:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = objc_opt_class();
  v11 = *&a3->var0[4];
  v14[0] = *a3->var0;
  v14[1] = v11;
  v12 = [v10 keyForEntitlement:v8 auditToken:v14];

  v13 = [CNResult successWithValue:v9];

  [(NSMutableDictionary *)self->_entitlements setObject:v13 forKeyedSubscript:v12];
}

- (void)setAuditToken:(id *)a3 hasError:(id)a4 forEntitlement:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = objc_opt_class();
  v11 = *&a3->var0[4];
  v14[0] = *a3->var0;
  v14[1] = v11;
  v12 = [v10 keyForEntitlement:v8 auditToken:v14];

  v13 = [CNResult failureWithError:v9];

  [(NSMutableDictionary *)self->_entitlements setObject:v13 forKeyedSubscript:v12];
}

- (void)setAuditToken:(id *)a3 isFirstOrSecondPartyError:(id)a4
{
  v6 = a4;
  v7 = objc_opt_class();
  v8 = *&a3->var0[4];
  v11[0] = *a3->var0;
  v11[1] = v8;
  v9 = [v7 keyForEntitlement:@"__isFirstParty__" auditToken:v11];
  v10 = [CNResult failureWithError:v6];

  [(NSMutableDictionary *)self->_entitlements setObject:v10 forKeyedSubscript:v9];
}

- (void)setAuditToken:(id *)a3 allowsHighPriorityError:(id)a4
{
  v6 = a4;
  v7 = objc_opt_class();
  v8 = *&a3->var0[4];
  v11[0] = *a3->var0;
  v11[1] = v8;
  v9 = [v7 keyForEntitlement:@"__isHighPriorityAllowed__" auditToken:v11];
  v10 = [CNResult failureWithError:v6];

  [(NSMutableDictionary *)self->_entitlements setObject:v10 forKeyedSubscript:v9];
}

+ (id)keyForEntitlement:(id)a3 auditToken:(id *)a4
{
  v5 = [a3 mutableCopy];
  for (i = 0; i != 8; ++i)
  {
    [v5 appendString:@"-"];
    [v5 appendFormat:@"%d", a4->var0[i]];
  }

  return v5;
}

- (BOOL)currentProcessHasBooleanEntitlement:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() keyForEntitlement:v6];

  LOBYTE(a4) = [(CNEntitlementVerifierTestDouble *)self BOOLeanResultForKey:v7 error:a4];
  return a4;
}

- (BOOL)auditToken:(id *)a3 hasBooleanEntitlement:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = objc_opt_class();
  v10 = *&a3->var0[4];
  v13[0] = *a3->var0;
  v13[1] = v10;
  v11 = [v9 keyForEntitlement:v8 auditToken:v13];

  LOBYTE(a5) = [(CNEntitlementVerifierTestDouble *)self BOOLeanResultForKey:v11 error:a5];
  return a5;
}

- (BOOL)BOOLeanResultForKey:(id)a3 error:(id *)a4
{
  v5 = [(NSMutableDictionary *)self->_entitlements objectForKeyedSubscript:a3];
  v6 = v5;
  if (v5)
  {
    if ([v5 isSuccess])
    {
      v7 = [v6 value];
      v8 = [v7 BOOLValue];
    }

    else
    {
      v9 = [v6 error];
      v7 = v9;
      if (a4)
      {
        v10 = v9;
        v8 = 0;
        *a4 = v7;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)currentProcessHasArrayWithStringValue:(id)a3 forAnyEntitlement:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
  v10 = v8;
  v15 = v10;
  v11 = [v9 _cn_any:v14];
  v12 = v18[5];
  if (v12)
  {
    v11 = 0;
    if (a5)
    {
      *a5 = v12;
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

- (BOOL)auditToken:(id *)a3 hasArrayWithStringValue:(id)a4 forAnyEntitlement:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v12 = *&a3->var0[4];
  v20 = *a3->var0;
  v21 = v12;
  v17[2] = __94__CNEntitlementVerifierTestDouble_auditToken_hasArrayWithStringValue_forAnyEntitlement_error___block_invoke;
  v17[3] = &unk_1E6ED5410;
  v17[4] = self;
  v19 = &v22;
  v13 = v10;
  v18 = v13;
  v14 = [v11 _cn_any:v17];
  v15 = v23[5];
  if (v15)
  {
    v14 = 0;
    if (a6)
    {
      *a6 = v15;
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

- (id)stringArrayResultForKey:(id)a3 error:(id *)a4
{
  v5 = [(NSMutableDictionary *)self->_entitlements objectForKeyedSubscript:a3];
  v6 = v5;
  if (v5)
  {
    if ([v5 isSuccess])
    {
      v7 = [v6 value];
      goto LABEL_8;
    }

    v8 = [v6 error];
    if (a4)
    {
      v8 = v8;
      *a4 = v8;
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)valuesForCurrentProcessForEntitlements:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v16 = [MEMORY[0x1E695DF90] dictionary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__CNEntitlementVerifierTestDouble_valuesForCurrentProcessForEntitlements_error___block_invoke;
  v10[3] = &unk_1E6ED5438;
  v10[4] = self;
  v10[5] = &v17;
  v10[6] = &v11;
  [v6 _cn_each:v10];
  v7 = v18[5];
  if (v7)
  {
    v8 = 0;
    if (a4)
    {
      *a4 = v7;
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

- (id)valuesForAuditToken:(id *)a3 forEntitlements:(id)a4 error:(id *)a5
{
  v8 = a4;
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
  v21 = [MEMORY[0x1E695DF90] dictionary];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v9 = *&a3->var0[4];
  v14 = *a3->var0;
  v15 = v9;
  v13[2] = __77__CNEntitlementVerifierTestDouble_valuesForAuditToken_forEntitlements_error___block_invoke;
  v13[3] = &unk_1E6ED5460;
  v13[4] = self;
  v13[5] = &v22;
  v13[6] = &v16;
  [v8 _cn_each:v13];
  v10 = v23[5];
  if (v10)
  {
    v11 = 0;
    if (a5)
    {
      *a5 = v10;
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

- (id)valueForEntitlementForKey:(id)a3 error:(id *)a4
{
  v5 = [(NSMutableDictionary *)self->_entitlements objectForKeyedSubscript:a3];
  v6 = v5;
  if (v5)
  {
    if ([v5 isSuccess])
    {
      v7 = [v6 value];
      goto LABEL_8;
    }

    v8 = [v6 error];
    if (a4)
    {
      v8 = v8;
      *a4 = v8;
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (BOOL)currentProcessIsFirstOrSecondPartyWithError:(id *)a3
{
  v5 = [objc_opt_class() keyForEntitlement:@"__isFirstParty__"];
  v6 = [(NSMutableDictionary *)self->_entitlements objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    if ([v6 isSuccess])
    {
      v8 = [v7 value];
      v9 = [v8 BOOLValue];
    }

    else
    {
      v10 = [v7 error];
      v8 = v10;
      if (a3)
      {
        v11 = v10;
        v9 = 0;
        *a3 = v8;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)auditToken:(id *)a3 isFirstOrSecondPartyWithError:(id *)a4
{
  v7 = objc_opt_class();
  v8 = *&a3->var0[4];
  v17[0] = *a3->var0;
  v17[1] = v8;
  v9 = [v7 keyForEntitlement:@"__isFirstParty__" auditToken:v17];
  v10 = [(NSMutableDictionary *)self->_entitlements objectForKeyedSubscript:v9];
  v11 = v10;
  if (v10)
  {
    if ([v10 isSuccess])
    {
      v12 = [v11 value];
      v13 = [v12 BOOLValue];
    }

    else
    {
      v14 = [v11 error];
      v12 = v14;
      if (a4)
      {
        v15 = v14;
        v13 = 0;
        *a4 = v12;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)auditToken:(id *)a3 allowsHighPriorityWithError:(id *)a4
{
  v7 = objc_opt_class();
  v8 = *&a3->var0[4];
  v17[0] = *a3->var0;
  v17[1] = v8;
  v9 = [v7 keyForEntitlement:@"__isHighPriorityAllowed__" auditToken:v17];
  v10 = [(NSMutableDictionary *)self->_entitlements objectForKeyedSubscript:v9];
  v11 = v10;
  if (v10)
  {
    if ([v10 isSuccess])
    {
      v12 = [v11 value];
      v13 = [v12 BOOLValue];
    }

    else
    {
      v14 = [v11 error];
      v12 = v14;
      if (a4)
      {
        v15 = v14;
        v13 = 0;
        *a4 = v12;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end