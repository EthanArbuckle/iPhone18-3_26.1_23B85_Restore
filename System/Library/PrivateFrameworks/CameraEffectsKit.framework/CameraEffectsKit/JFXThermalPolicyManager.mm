@interface JFXThermalPolicyManager
- (JFXThermalPolicy)highestPriorityPolicy;
- (JFXThermalPolicyManager)initWithDefaultPolicy:(id)policy;
- (id)description;
- (void)setPolicyType:(Class)type active:(BOOL)active;
@end

@implementation JFXThermalPolicyManager

- (JFXThermalPolicyManager)initWithDefaultPolicy:(id)policy
{
  v8.receiver = self;
  v8.super_class = JFXThermalPolicyManager;
  policyCopy = policy;
  v4 = [(JFXThermalPolicyManager *)&v8 init];
  v5 = objc_alloc_init(JFXThreadSafeArray);
  activePolicies = v4->_activePolicies;
  v4->_activePolicies = v5;

  [(JFXThreadSafeArray *)v4->_activePolicies addObject:policyCopy, v8.receiver, v8.super_class];
  return v4;
}

- (JFXThermalPolicy)highestPriorityPolicy
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__22;
  v10 = __Block_byref_object_dispose__22;
  v11 = 0;
  activePolicies = [(JFXThermalPolicyManager *)self activePolicies];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__JFXThermalPolicyManager_highestPriorityPolicy__block_invoke;
  v5[3] = &unk_278D7C5F8;
  v5[4] = &v6;
  [activePolicies enumerateObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __48__JFXThermalPolicyManager_highestPriorityPolicy__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 8);
  v7 = v4;
  if (*(v5 + 40))
  {
    v6 = [v4 priority];
    if (v6 > [*(*(*(a1 + 32) + 8) + 40) priority])
    {
      goto LABEL_5;
    }

    v5 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((v5 + 40), a2);
LABEL_5:
}

- (void)setPolicyType:(Class)type active:(BOOL)active
{
  if (active)
  {
    v9 = objc_alloc_init(type);
    activePolicies = [(JFXThermalPolicyManager *)self activePolicies];
    [activePolicies addObject:v9];
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__22;
    v15 = __Block_byref_object_dispose__22;
    v16 = 0;
    activePolicies2 = [(JFXThermalPolicyManager *)self activePolicies];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__JFXThermalPolicyManager_setPolicyType_active___block_invoke;
    v10[3] = &unk_278D7C620;
    v10[4] = &v11;
    v10[5] = type;
    [activePolicies2 enumerateObjectsUsingBlock:v10];

    if (v12[5])
    {
      activePolicies3 = [(JFXThermalPolicyManager *)self activePolicies];
      [activePolicies3 removeObject:v12[5]];
    }

    _Block_object_dispose(&v11, 8);
  }
}

void __48__JFXThermalPolicyManager_setPolicyType_active___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  highestPriorityPolicy = [(JFXThermalPolicyManager *)self highestPriorityPolicy];
  activePolicies = [(JFXThermalPolicyManager *)self activePolicies];
  v6 = [v3 stringWithFormat:@"Highest Priority: %@\n\nActive Policy List:\n%@\n", highestPriorityPolicy, activePolicies];

  return v6;
}

@end