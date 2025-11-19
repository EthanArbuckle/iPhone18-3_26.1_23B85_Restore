@interface HUMatterConnectedEcosystemItemProvider
- (id)futureFilteringOutSystemCommissionerEcosystem:(id)a3;
@end

@implementation HUMatterConnectedEcosystemItemProvider

- (id)futureFilteringOutSystemCommissionerEcosystem:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__HUMatterConnectedEcosystemItemProvider_futureFilteringOutSystemCommissionerEcosystem___block_invoke;
  v7[3] = &unk_277DBB720;
  objc_copyWeak(&v8, &location);
  v5 = [v4 flatMap:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

id __88__HUMatterConnectedEcosystemItemProvider_futureFilteringOutSystemCommissionerEcosystem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 na_filter:&__block_literal_global_68];
  v6 = [v3 count];

  [WeakRetained setHasSystemCommissionerEcosystem:{v6 > objc_msgSend(v5, "count")}];
  v7 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v7;
}

uint64_t __88__HUMatterConnectedEcosystemItemProvider_futureFilteringOutSystemCommissionerEcosystem___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 vendor];
  v3 = [v2 isSystemCommissionerVendor];

  return v3 ^ 1u;
}

@end