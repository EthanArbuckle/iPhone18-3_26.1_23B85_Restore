@interface NAFuture(FirewallRuleManager)
- (id)blockAndWaitForCompletionWithError:()FirewallRuleManager;
@end

@implementation NAFuture(FirewallRuleManager)

- (id)blockAndWaitForCompletionWithError:()FirewallRuleManager
{
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__24695;
  v25 = __Block_byref_object_dispose__24696;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__24695;
  v19 = __Block_byref_object_dispose__24696;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__NAFuture_FirewallRuleManager__blockAndWaitForCompletionWithError___block_invoke;
  v11[3] = &unk_279724340;
  v13 = &v21;
  v14 = &v15;
  v6 = v5;
  v12 = v6;
  v7 = [a1 addCompletionBlock:v11];
  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  if (a3)
  {
    if (v22[5])
    {
      v8 = 0;
    }

    else
    {
      v8 = v16[5];
    }

    *a3 = v8;
  }

  v9 = v22[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

@end