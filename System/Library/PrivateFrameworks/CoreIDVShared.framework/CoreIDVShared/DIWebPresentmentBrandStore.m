@interface DIWebPresentmentBrandStore
- (DIWebPresentmentBrandStore)init;
- (void)brandWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)permissionsForBrandWithIdentifier:(id)a3 completionHandler:(id)a4;
@end

@implementation DIWebPresentmentBrandStore

- (DIWebPresentmentBrandStore)init
{
  v8.receiver = self;
  v8.super_class = DIWebPresentmentBrandStore;
  v2 = [(DIWebPresentmentBrandStore *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getBCSBusinessQueryServiceClass_softClass;
    v13 = getBCSBusinessQueryServiceClass_softClass;
    if (!getBCSBusinessQueryServiceClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getBCSBusinessQueryServiceClass_block_invoke;
      v9[3] = &unk_278573400;
      v9[4] = &v10;
      __getBCSBusinessQueryServiceClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = [[v3 alloc] init];
    queryService = v2->_queryService;
    v2->_queryService = v5;
  }

  return v2;
}

- (void)brandWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  queryService = self->_queryService;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__DIWebPresentmentBrandStore_brandWithIdentifier_completionHandler___block_invoke;
  v9[3] = &unk_2785733B0;
  v10 = v6;
  v8 = v6;
  [(BCSBusinessQueryService *)queryService fetchBrandWithIdentifier:a3 serviceType:5 completion:v9];
}

void __68__DIWebPresentmentBrandStore_brandWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (v5)
    {
      v8 = objc_alloc(MEMORY[0x277CBEB38]);
      v9 = [v5 localizedNames];
      v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

      v11 = [v5 localizedNames];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __68__DIWebPresentmentBrandStore_brandWithIdentifier_completionHandler___block_invoke_2;
      v17[3] = &unk_278573388;
      v18 = v10;
      v12 = v10;
      [v11 enumerateKeysAndObjectsUsingBlock:v17];

      v13 = [DIWebPresentmentBrand alloc];
      v14 = [v5 brandId];
      v15 = [v5 logoURL];
      v16 = [(DIWebPresentmentBrand *)v13 initWithBrandIdentifier:v14 localizedNames:v12 logoURL:v15];

      v7 = *(a1 + 32);
    }

    else
    {
      v16 = 0;
    }

    (*(v7 + 16))(v7, v16, v6);
  }
}

void __68__DIWebPresentmentBrandStore_brandWithIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEAF8];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithLocaleIdentifier:v7];

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v8];
}

- (void)permissionsForBrandWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  queryService = self->_queryService;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__DIWebPresentmentBrandStore_permissionsForBrandWithIdentifier_completionHandler___block_invoke;
  v9[3] = &unk_2785733D8;
  v10 = v6;
  v8 = v6;
  [(BCSBusinessQueryService *)queryService fetchWebPresentmentPermissionsWithIdentifier:a3 completion:v9];
}

uint64_t __82__DIWebPresentmentBrandStore_permissionsForBrandWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end