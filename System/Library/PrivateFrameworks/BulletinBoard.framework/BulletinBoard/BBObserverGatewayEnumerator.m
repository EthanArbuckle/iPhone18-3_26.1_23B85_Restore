@interface BBObserverGatewayEnumerator
- (BBObserverGatewayEnumerator)init;
- (id)defaultGateway;
- (void)cancel;
- (void)enumerateWithCompletion:(id)a3;
@end

@implementation BBObserverGatewayEnumerator

- (BBObserverGatewayEnumerator)init
{
  v6.receiver = self;
  v6.super_class = BBObserverGatewayEnumerator;
  v2 = [(BBObserverGatewayEnumerator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    gatewaysPlayedLightsAndSirens = v2->_gatewaysPlayedLightsAndSirens;
    v2->_gatewaysPlayedLightsAndSirens = v3;
  }

  return v2;
}

- (void)cancel
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = BBLogGateway;
  if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(BBObserverGatewayEnumerator *)self bulletin];
    v6 = [v5 bulletinID];
    v7 = [(BBObserverGatewayEnumerator *)self bulletin];
    v8 = [v7 sectionID];
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Gateway enumerator for bulletin %{public}@ in section %{public}@ cancelled", &v10, 0x16u);
  }

  self->_cancelled = 1;
  v9 = *MEMORY[0x277D85DE8];
}

- (void)enumerateWithCompletion:(id)a3
{
  gateways = self->_gateways;
  v5 = a3;
  v6 = [(NSArray *)gateways objectEnumerator];
  [(BBObserverGatewayEnumerator *)self attemptNextGatewayInEnumerator:v6 playLightsAndSirens:1 completion:v5];
}

void __93__BBObserverGatewayEnumerator_attemptNextGatewayInEnumerator_playLightsAndSirens_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = BBLogGateway;
  if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v7 = "DID";
    }

    else
    {
      v7 = "DID NOT";
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(a1 + 48);
    v10 = *(a1 + 56);
    v12 = v6;
    v13 = [v10 cancelled];
    *v16 = 138544386;
    v14 = "NOT";
    *&v16[4] = v8;
    *&v16[12] = 2082;
    if (v13)
    {
      v14 = "";
    }

    *&v16[14] = v7;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v11;
    v21 = 2082;
    v22 = v14;
    _os_log_impl(&dword_241EFF000, v12, OS_LOG_TYPE_DEFAULT, "Gateway enumerator received from %{public}@ %{public}s play lights and sirens for %{public}@ in section %{public}@ currently %{public}s cancelled", v16, 0x34u);
  }

  if (a2)
  {
    [*(*(a1 + 56) + 48) addObject:*(a1 + 64)];
  }

  [*(a1 + 56) attemptNextGatewayInEnumerator:*(a1 + 72) playLightsAndSirens:(a2 ^ 1) & *(a1 + 88) completion:{*(a1 + 80), *v16}];

  v15 = *MEMORY[0x277D85DE8];
}

- (id)defaultGateway
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_gateways;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 gatewayPriority] == 3)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

@end