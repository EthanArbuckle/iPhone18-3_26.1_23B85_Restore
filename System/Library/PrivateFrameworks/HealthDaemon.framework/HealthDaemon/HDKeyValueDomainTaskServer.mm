@interface HDKeyValueDomainTaskServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
- (HDKeyValueDomainTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_unitTest_overrideKeyValueDomainCategory:(int64_t)category;
- (void)didUpdateKeyValueDomain:(id)domain;
- (void)remote_allValuesWithCompletion:(id)completion;
- (void)remote_dataForKey:(id)key completion:(id)completion;
- (void)remote_dateForKey:(id)key completion:(id)completion;
- (void)remote_numberForKey:(id)key completion:(id)completion;
- (void)remote_observeChanges:(BOOL)changes completion:(id)completion;
- (void)remote_removeValuesForKeys:(id)keys completion:(id)completion;
- (void)remote_setData:(id)data forKey:(id)key completion:(id)completion;
- (void)remote_setDate:(id)date forKey:(id)key completion:(id)completion;
- (void)remote_setNumber:(id)number forKey:(id)key completion:(id)completion;
- (void)remote_setString:(id)string forKey:(id)key completion:(id)completion;
- (void)remote_setValueForAllKeys:(id)keys completion:(id)completion;
- (void)remote_setValuesWithDictionary:(id)dictionary completion:(id)completion;
- (void)remote_stringForKey:(id)key completion:(id)completion;
@end

@implementation HDKeyValueDomainTaskServer

- (HDKeyValueDomainTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  clientCopy = client;
  v23.receiver = self;
  v23.super_class = HDKeyValueDomainTaskServer;
  v12 = [(HDStandardTaskServer *)&v23 initWithUUID:d configuration:configurationCopy client:clientCopy delegate:delegate];
  if (v12)
  {
    category = [configurationCopy category];
    if (category > 4)
    {
      v14 = -1;
    }

    else
    {
      v14 = *&aI_2[8 * category];
    }

    domainName = [configurationCopy domainName];
    if ([domainName isEqualToString:@"HDKeyValueEntityDefaultDomain"])
    {
      domainName2 = &stru_283BF39C8;
    }

    else
    {
      domainName2 = [configurationCopy domainName];
    }

    v17 = domainName2;

    v18 = [HDKeyValueDomain alloc];
    profile = [clientCopy profile];
    v20 = [(HDKeyValueDomain *)v18 initWithCategory:v14 domainName:v17 profile:profile];
    keyValueDomain = v12->_keyValueDomain;
    v12->_keyValueDomain = v20;
  }

  return v12;
}

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  configurationCopy = configuration;
  clientCopy = client;
  domainName = [configurationCopy domainName];
  v10 = [domainName length];

  if (!v10)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{@"{public}%@: domain name must be non-empty", objc_opt_class()}];
    goto LABEL_14;
  }

  if ([configurationCopy category] >= 5)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = objc_opt_class();
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(configurationCopy, "category")}];
    [v12 hk_assignError:error code:3 format:{@"{public}%@: invalid HKKeyValueCategory: %@", v13, v14}];

    goto LABEL_14;
  }

  if (([clientCopy hasEntitlement:*MEMORY[0x277CCC8B0]] & 1) == 0)
  {
    category = [configurationCopy category];
    objc_opt_self();
    if (category <= 4 && ((0x1Bu >> category) & 1) != 0)
    {
      v16 = **(&unk_2786204E8 + category);
      if (v16)
      {
        entitlements = [clientCopy entitlements];
        domainName2 = [configurationCopy domainName];
        v19 = [entitlements arrayEntitlement:v16 containsString:domainName2];

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
    domainName3 = [configurationCopy domainName];
    [v20 hk_assignError:error code:4 format:{@"Unauthorized access to key-value domain %@", domainName3}];

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

LABEL_4:
  v11 = 1;
LABEL_15:

  return v11;
}

- (void)_unitTest_overrideKeyValueDomainCategory:(int64_t)category
{
  v5 = [HDKeyValueDomain alloc];
  domainName = [(HDKeyValueDomain *)self->_keyValueDomain domainName];
  profile = [(HDStandardTaskServer *)self profile];
  v7 = [(HDKeyValueDomain *)v5 initWithCategory:category domainName:domainName profile:profile];
  keyValueDomain = self->_keyValueDomain;
  self->_keyValueDomain = v7;
}

- (void)remote_setNumber:(id)number forKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyValueDomain = self->_keyValueDomain;
  v12 = 0;
  v10 = [(HDKeyValueDomain *)keyValueDomain setNumber:number forKey:key error:&v12];
  v11 = v12;
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v10, v11);
  }
}

- (void)remote_setData:(id)data forKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyValueDomain = self->_keyValueDomain;
  v12 = 0;
  v10 = [(HDKeyValueDomain *)keyValueDomain setData:data forKey:key error:&v12];
  v11 = v12;
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v10, v11);
  }
}

- (void)remote_setDate:(id)date forKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyValueDomain = self->_keyValueDomain;
  v12 = 0;
  v10 = [(HDKeyValueDomain *)keyValueDomain setDate:date forKey:key error:&v12];
  v11 = v12;
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v10, v11);
  }
}

- (void)remote_setString:(id)string forKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyValueDomain = self->_keyValueDomain;
  v12 = 0;
  v10 = [(HDKeyValueDomain *)keyValueDomain setString:string forKey:key error:&v12];
  v11 = v12;
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v10, v11);
  }
}

- (void)remote_setValuesWithDictionary:(id)dictionary completion:(id)completion
{
  completionCopy = completion;
  keyValueDomain = self->_keyValueDomain;
  v10 = 0;
  v8 = [(HDKeyValueDomain *)keyValueDomain setValuesWithDictionary:dictionary error:&v10];
  v9 = v10;
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v8, v9);
  }
}

- (void)remote_setValueForAllKeys:(id)keys completion:(id)completion
{
  completionCopy = completion;
  keyValueDomain = self->_keyValueDomain;
  v10 = 0;
  v8 = [(HDKeyValueDomain *)keyValueDomain setValueForAllKeys:keys error:&v10];
  v9 = v10;
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v8, v9);
  }
}

- (void)remote_removeValuesForKeys:(id)keys completion:(id)completion
{
  completionCopy = completion;
  keyValueDomain = self->_keyValueDomain;
  v10 = 0;
  v8 = [(HDKeyValueDomain *)keyValueDomain removeValuesForKeys:keys error:&v10];
  v9 = v10;
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v8, v9);
  }
}

- (void)remote_numberForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__87;
  v20 = __Block_byref_object_dispose__87;
  v21 = 0;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__HDKeyValueDomainTaskServer_remote_numberForKey_completion___block_invoke;
  v12[3] = &unk_27861A440;
  v14 = &v16;
  v15 = 0;
  v12[4] = self;
  v10 = keyCopy;
  v13 = v10;
  [database performHighPriorityTransactionsWithError:&v15 block:v12];
  v11 = v15;

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v17[5], v11);
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

- (void)remote_dataForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__87;
  v20 = __Block_byref_object_dispose__87;
  v21 = 0;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__HDKeyValueDomainTaskServer_remote_dataForKey_completion___block_invoke;
  v12[3] = &unk_27861A440;
  v14 = &v16;
  v15 = 0;
  v12[4] = self;
  v10 = keyCopy;
  v13 = v10;
  [database performHighPriorityTransactionsWithError:&v15 block:v12];
  v11 = v15;

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v17[5], v11);
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

- (void)remote_dateForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__87;
  v20 = __Block_byref_object_dispose__87;
  v21 = 0;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__HDKeyValueDomainTaskServer_remote_dateForKey_completion___block_invoke;
  v12[3] = &unk_27861A440;
  v14 = &v16;
  v15 = 0;
  v12[4] = self;
  v10 = keyCopy;
  v13 = v10;
  [database performHighPriorityTransactionsWithError:&v15 block:v12];
  v11 = v15;

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v17[5], v11);
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

- (void)remote_stringForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__87;
  v20 = __Block_byref_object_dispose__87;
  v21 = 0;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__HDKeyValueDomainTaskServer_remote_stringForKey_completion___block_invoke;
  v12[3] = &unk_27861A440;
  v14 = &v16;
  v15 = 0;
  v12[4] = self;
  v10 = keyCopy;
  v13 = v10;
  [database performHighPriorityTransactionsWithError:&v15 block:v12];
  v11 = v15;

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v17[5], v11);
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

- (void)remote_allValuesWithCompletion:(id)completion
{
  completionCopy = completion;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__87;
  v14 = __Block_byref_object_dispose__87;
  v15 = 0;
  profile = [(HDStandardTaskServer *)self profile];
  database = [profile database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__HDKeyValueDomainTaskServer_remote_allValuesWithCompletion___block_invoke;
  v8[3] = &unk_27861A418;
  v8[5] = &v10;
  v9 = 0;
  v8[4] = self;
  [database performHighPriorityTransactionsWithError:&v9 block:v8];
  v7 = v9;

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v11[5], v7);
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

- (void)remote_observeChanges:(BOOL)changes completion:(id)completion
{
  changesCopy = changes;
  keyValueDomain = self->_keyValueDomain;
  completionCopy = completion;
  if (changesCopy)
  {
    [(HDKeyValueDomain *)keyValueDomain startObservation:self];
  }

  else
  {
    [(HDKeyValueDomain *)keyValueDomain stopObservation:self];
  }

  completionCopy[2](completionCopy, 1, 0);
}

- (void)didUpdateKeyValueDomain:(id)domain
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
      domainName = [(HDKeyValueDomain *)keyValueDomain domainName];
      *buf = 138543618;
      selfCopy = self;
      v13 = 2114;
      v14 = domainName;
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