@interface HDKeyValueDomainTaskServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
- (HDKeyValueDomainTaskServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_unitTest_overrideKeyValueDomainCategory:(int64_t)a3;
- (void)didUpdateKeyValueDomain:(id)a3;
- (void)remote_allValuesWithCompletion:(id)a3;
- (void)remote_dataForKey:(id)a3 completion:(id)a4;
- (void)remote_dateForKey:(id)a3 completion:(id)a4;
- (void)remote_numberForKey:(id)a3 completion:(id)a4;
- (void)remote_observeChanges:(BOOL)a3 completion:(id)a4;
- (void)remote_removeValuesForKeys:(id)a3 completion:(id)a4;
- (void)remote_setData:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)remote_setDate:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)remote_setNumber:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)remote_setString:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)remote_setValueForAllKeys:(id)a3 completion:(id)a4;
- (void)remote_setValuesWithDictionary:(id)a3 completion:(id)a4;
- (void)remote_stringForKey:(id)a3 completion:(id)a4;
@end

@implementation HDKeyValueDomainTaskServer

- (HDKeyValueDomainTaskServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = HDKeyValueDomainTaskServer;
  v12 = [(HDStandardTaskServer *)&v23 initWithUUID:a3 configuration:v10 client:v11 delegate:a6];
  if (v12)
  {
    v13 = [v10 category];
    if (v13 > 4)
    {
      v14 = -1;
    }

    else
    {
      v14 = *&aI_2[8 * v13];
    }

    v15 = [v10 domainName];
    if ([v15 isEqualToString:@"HDKeyValueEntityDefaultDomain"])
    {
      v16 = &stru_283BF39C8;
    }

    else
    {
      v16 = [v10 domainName];
    }

    v17 = v16;

    v18 = [HDKeyValueDomain alloc];
    v19 = [v11 profile];
    v20 = [(HDKeyValueDomain *)v18 initWithCategory:v14 domainName:v17 profile:v19];
    keyValueDomain = v12->_keyValueDomain;
    v12->_keyValueDomain = v20;
  }

  return v12;
}

+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 domainName];
  v10 = [v9 length];

  if (!v10)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 format:{@"{public}%@: domain name must be non-empty", objc_opt_class()}];
    goto LABEL_14;
  }

  if ([v7 category] >= 5)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = objc_opt_class();
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "category")}];
    [v12 hk_assignError:a5 code:3 format:{@"{public}%@: invalid HKKeyValueCategory: %@", v13, v14}];

    goto LABEL_14;
  }

  if (([v8 hasEntitlement:*MEMORY[0x277CCC8B0]] & 1) == 0)
  {
    v15 = [v7 category];
    objc_opt_self();
    if (v15 <= 4 && ((0x1Bu >> v15) & 1) != 0)
    {
      v16 = **(&unk_2786204E8 + v15);
      if (v16)
      {
        v17 = [v8 entitlements];
        v18 = [v7 domainName];
        v19 = [v17 arrayEntitlement:v16 containsString:v18];

        if (v19)
        {

          goto LABEL_4;
        }
      }
    }

    else
    {
      v16 = 0;
    }

    v20 = MEMORY[0x277CCA9B8];
    v21 = [v7 domainName];
    [v20 hk_assignError:a5 code:4 format:{@"Unauthorized access to key-value domain %@", v21}];

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

LABEL_4:
  v11 = 1;
LABEL_15:

  return v11;
}

- (void)_unitTest_overrideKeyValueDomainCategory:(int64_t)a3
{
  v5 = [HDKeyValueDomain alloc];
  v9 = [(HDKeyValueDomain *)self->_keyValueDomain domainName];
  v6 = [(HDStandardTaskServer *)self profile];
  v7 = [(HDKeyValueDomain *)v5 initWithCategory:a3 domainName:v9 profile:v6];
  keyValueDomain = self->_keyValueDomain;
  self->_keyValueDomain = v7;
}

- (void)remote_setNumber:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a5;
  keyValueDomain = self->_keyValueDomain;
  v12 = 0;
  v10 = [(HDKeyValueDomain *)keyValueDomain setNumber:a3 forKey:a4 error:&v12];
  v11 = v12;
  if (v8)
  {
    v8[2](v8, v10, v11);
  }
}

- (void)remote_setData:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a5;
  keyValueDomain = self->_keyValueDomain;
  v12 = 0;
  v10 = [(HDKeyValueDomain *)keyValueDomain setData:a3 forKey:a4 error:&v12];
  v11 = v12;
  if (v8)
  {
    v8[2](v8, v10, v11);
  }
}

- (void)remote_setDate:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a5;
  keyValueDomain = self->_keyValueDomain;
  v12 = 0;
  v10 = [(HDKeyValueDomain *)keyValueDomain setDate:a3 forKey:a4 error:&v12];
  v11 = v12;
  if (v8)
  {
    v8[2](v8, v10, v11);
  }
}

- (void)remote_setString:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a5;
  keyValueDomain = self->_keyValueDomain;
  v12 = 0;
  v10 = [(HDKeyValueDomain *)keyValueDomain setString:a3 forKey:a4 error:&v12];
  v11 = v12;
  if (v8)
  {
    v8[2](v8, v10, v11);
  }
}

- (void)remote_setValuesWithDictionary:(id)a3 completion:(id)a4
{
  v6 = a4;
  keyValueDomain = self->_keyValueDomain;
  v10 = 0;
  v8 = [(HDKeyValueDomain *)keyValueDomain setValuesWithDictionary:a3 error:&v10];
  v9 = v10;
  if (v6)
  {
    v6[2](v6, v8, v9);
  }
}

- (void)remote_setValueForAllKeys:(id)a3 completion:(id)a4
{
  v6 = a4;
  keyValueDomain = self->_keyValueDomain;
  v10 = 0;
  v8 = [(HDKeyValueDomain *)keyValueDomain setValueForAllKeys:a3 error:&v10];
  v9 = v10;
  if (v6)
  {
    v6[2](v6, v8, v9);
  }
}

- (void)remote_removeValuesForKeys:(id)a3 completion:(id)a4
{
  v6 = a4;
  keyValueDomain = self->_keyValueDomain;
  v10 = 0;
  v8 = [(HDKeyValueDomain *)keyValueDomain removeValuesForKeys:a3 error:&v10];
  v9 = v10;
  if (v6)
  {
    v6[2](v6, v8, v9);
  }
}

- (void)remote_numberForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__87;
  v20 = __Block_byref_object_dispose__87;
  v21 = 0;
  v8 = [(HDStandardTaskServer *)self profile];
  v9 = [v8 database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__HDKeyValueDomainTaskServer_remote_numberForKey_completion___block_invoke;
  v12[3] = &unk_27861A440;
  v14 = &v16;
  v15 = 0;
  v12[4] = self;
  v10 = v6;
  v13 = v10;
  [v9 performHighPriorityTransactionsWithError:&v15 block:v12];
  v11 = v15;

  if (v7)
  {
    v7[2](v7, v17[5], v11);
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __61__HDKeyValueDomainTaskServer_remote_numberForKey_completion___block_invoke(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 40) numberForKey:a1[5] error:a2];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

- (void)remote_dataForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__87;
  v20 = __Block_byref_object_dispose__87;
  v21 = 0;
  v8 = [(HDStandardTaskServer *)self profile];
  v9 = [v8 database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__HDKeyValueDomainTaskServer_remote_dataForKey_completion___block_invoke;
  v12[3] = &unk_27861A440;
  v14 = &v16;
  v15 = 0;
  v12[4] = self;
  v10 = v6;
  v13 = v10;
  [v9 performHighPriorityTransactionsWithError:&v15 block:v12];
  v11 = v15;

  if (v7)
  {
    v7[2](v7, v17[5], v11);
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __59__HDKeyValueDomainTaskServer_remote_dataForKey_completion___block_invoke(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 40) dataForKey:a1[5] error:a2];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

- (void)remote_dateForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__87;
  v20 = __Block_byref_object_dispose__87;
  v21 = 0;
  v8 = [(HDStandardTaskServer *)self profile];
  v9 = [v8 database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__HDKeyValueDomainTaskServer_remote_dateForKey_completion___block_invoke;
  v12[3] = &unk_27861A440;
  v14 = &v16;
  v15 = 0;
  v12[4] = self;
  v10 = v6;
  v13 = v10;
  [v9 performHighPriorityTransactionsWithError:&v15 block:v12];
  v11 = v15;

  if (v7)
  {
    v7[2](v7, v17[5], v11);
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __59__HDKeyValueDomainTaskServer_remote_dateForKey_completion___block_invoke(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 40) dateForKey:a1[5] error:a2];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

- (void)remote_stringForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__87;
  v20 = __Block_byref_object_dispose__87;
  v21 = 0;
  v8 = [(HDStandardTaskServer *)self profile];
  v9 = [v8 database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__HDKeyValueDomainTaskServer_remote_stringForKey_completion___block_invoke;
  v12[3] = &unk_27861A440;
  v14 = &v16;
  v15 = 0;
  v12[4] = self;
  v10 = v6;
  v13 = v10;
  [v9 performHighPriorityTransactionsWithError:&v15 block:v12];
  v11 = v15;

  if (v7)
  {
    v7[2](v7, v17[5], v11);
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __61__HDKeyValueDomainTaskServer_remote_stringForKey_completion___block_invoke(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 40) stringForKey:a1[5] error:a2];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

- (void)remote_allValuesWithCompletion:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__87;
  v14 = __Block_byref_object_dispose__87;
  v15 = 0;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HDKeyValueDomainTaskServer_remote_allValuesWithCompletion___block_invoke;
  v8[3] = &unk_27861A418;
  v8[5] = &v10;
  v9 = 0;
  v8[4] = self;
  [v6 performHighPriorityTransactionsWithError:&v9 block:v8];
  v7 = v9;

  if (v4)
  {
    v4[2](v4, v11[5], v7);
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __61__HDKeyValueDomainTaskServer_remote_allValuesWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 40) allValuesWithError:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

- (void)remote_observeChanges:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  keyValueDomain = self->_keyValueDomain;
  v7 = a4;
  if (v4)
  {
    [(HDKeyValueDomain *)keyValueDomain startObservation:self];
  }

  else
  {
    [(HDKeyValueDomain *)keyValueDomain stopObservation:self];
  }

  v7[2](v7, 1, 0);
}

- (void)didUpdateKeyValueDomain:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__HDKeyValueDomainTaskServer_didUpdateKeyValueDomain___block_invoke;
  v10[3] = &unk_2786138D0;
  v10[4] = self;
  v4 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v10];
  if (v4)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_INFO))
    {
      keyValueDomain = self->_keyValueDomain;
      v7 = v5;
      v8 = [(HDKeyValueDomain *)keyValueDomain domainName];
      *buf = 138543618;
      v12 = self;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_INFO, "%{public}@: Notify client for domain:%{public}@ change", buf, 0x16u);
    }

    [v4 clientRemote_didUpdate];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __54__HDKeyValueDomainTaskServer_didUpdateKeyValueDomain___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    v6 = v2;
    v7 = [v5 domainName];
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v7;
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Unable to notify client for domain:%{public}@ change", &v8, 0x16u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end