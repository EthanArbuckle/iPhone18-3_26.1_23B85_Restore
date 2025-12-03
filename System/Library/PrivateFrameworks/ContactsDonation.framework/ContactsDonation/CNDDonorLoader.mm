@interface CNDDonorLoader
+ (id)continuousExtensionsObservable;
+ (id)currentExtensionsObservable;
- (CNDDonorLoader)init;
- (id)donorWithIdentifier:(id)identifier;
@end

@implementation CNDDonorLoader

- (CNDDonorLoader)init
{
  v7.receiver = self;
  v7.super_class = CNDDonorLoader;
  v2 = [(CNDDonorLoader *)&v7 init];
  if (v2)
  {
    v3 = +[CNDonationLoggerProvider defaultProvider];
    loggerProvider = v2->_loggerProvider;
    v2->_loggerProvider = v3;

    v5 = v2;
  }

  return v2;
}

- (id)donorWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = MEMORY[0x277CFBE28];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__CNDDonorLoader_donorWithIdentifier___block_invoke;
  v15[3] = &unk_278569C20;
  v6 = identifierCopy;
  v16 = v6;
  v7 = [v5 futureWithBlock:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__CNDDonorLoader_donorWithIdentifier___block_invoke_2;
  v13[3] = &unk_278569C48;
  v13[4] = self;
  v8 = v6;
  v14 = v8;
  [v7 addSuccessBlock:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__CNDDonorLoader_donorWithIdentifier___block_invoke_3;
  v11[3] = &unk_278569C70;
  v11[4] = self;
  v12 = v8;
  v9 = v8;
  [v7 addFailureBlock:v11];

  return v7;
}

CNDDonorExtension *__38__CNDDonorLoader_donorWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v11 = 0;
  v5 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:v4 error:&v11];
  v6 = v11;
  if (v5)
  {
    v7 = [[CNDDonorExtension alloc] initWithExtension:v5];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    [v8 setObject:*(a1 + 32) forKeyedSubscript:@"bundle identifier"];
    [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CNDonationErrorDomain" code:504 userInfo:v8];
    if (a2)
    {
      v9 = v9;
      *a2 = v9;
    }

    v7 = 0;
  }

  return v7;
}

void __38__CNDDonorLoader_donorWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 loggerProvider];
  v5 = [v6 extensionLogger];
  [v5 loadedDonorExtension:v4 forIdentifier:*(a1 + 40)];
}

void __38__CNDDonorLoader_donorWithIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 loggerProvider];
  v5 = [v6 extensionLogger];
  [v5 couldNotLoadDonorExtensionForIdentifier:*(a1 + 40) error:v4];
}

+ (id)currentExtensionsObservable
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__CNDDonorLoader_currentExtensionsObservable__block_invoke;
  v4[3] = &__block_descriptor_40_e38____CNCancelable__16__0___CNObserver__8l;
  v4[4] = self;
  v2 = [MEMORY[0x277CFBE60] observableWithBlock:v4];

  return v2;
}

id __45__CNDDonorLoader_currentExtensionsObservable__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CFBDC8]);
  v5 = [*(a1 + 32) extensionAttributes];
  objc_initWeak(&location, v4);
  v6 = MEMORY[0x277CCA9C8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__CNDDonorLoader_currentExtensionsObservable__block_invoke_2;
  v9[3] = &unk_278569CE8;
  objc_copyWeak(&v11, &location);
  v7 = v3;
  v10 = v7;
  [v6 extensionsWithMatchingAttributes:v5 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v4;
}

void __45__CNDDonorLoader_currentExtensionsObservable__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v5)
  {
    v16 = v6;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        v12 = 0;
        do
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * v12);
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __45__CNDDonorLoader_currentExtensionsObservable__block_invoke_3;
          v22[3] = &unk_278569C98;
          v22[4] = v13;
          v23 = *(a1 + 32);
          [WeakRetained performBlock:v22];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __45__CNDDonorLoader_currentExtensionsObservable__block_invoke_4;
    v20[3] = &unk_278569CC0;
    v14 = &v21;
    v21 = *(a1 + 32);
    [WeakRetained performBlock:v20];
    v6 = v16;
  }

  else
  {
    NSLog(&cfstr_ExtensionDisco.isa, v6);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __45__CNDDonorLoader_currentExtensionsObservable__block_invoke_5;
    v17[3] = &unk_278569C98;
    v14 = &v18;
    v18 = *(a1 + 32);
    v19 = v6;
    [WeakRetained performBlock:v17];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __45__CNDDonorLoader_currentExtensionsObservable__block_invoke_3(uint64_t a1)
{
  v2 = [[CNDDonorExtension alloc] initWithExtension:*(a1 + 32)];
  [*(a1 + 40) observerDidReceiveResult:v2];
}

+ (id)continuousExtensionsObservable
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__CNDDonorLoader_continuousExtensionsObservable__block_invoke;
  v4[3] = &__block_descriptor_40_e38____CNCancelable__16__0___CNObserver__8l;
  v4[4] = self;
  v2 = [MEMORY[0x277CFBE60] observableWithBlock:v4];

  return v2;
}

id __48__CNDDonorLoader_continuousExtensionsObservable__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CFBDC8]);
  v5 = [*(a1 + 32) extensionAttributes];
  objc_initWeak(&location, v4);
  v6 = MEMORY[0x277CCA9C8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__CNDDonorLoader_continuousExtensionsObservable__block_invoke_2;
  v13[3] = &unk_278569CE8;
  objc_copyWeak(&v15, &location);
  v7 = v3;
  v14 = v7;
  v8 = [v6 beginMatchingExtensionsWithAttributes:v5 completion:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__CNDDonorLoader_continuousExtensionsObservable__block_invoke_6;
  v11[3] = &unk_278569CC0;
  v9 = v8;
  v12 = v9;
  [v4 addCancelationBlock:v11];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v4;
}

void __48__CNDDonorLoader_continuousExtensionsObservable__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v5)
  {
    v8 = [v5 _cn_map:&__block_literal_global_1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48__CNDDonorLoader_continuousExtensionsObservable__block_invoke_4;
    v13[3] = &unk_278569C98;
    v14 = *(a1 + 32);
    v15 = v8;
    v9 = v8;
    [WeakRetained performBlock:v13];
  }

  else
  {
    NSLog(&cfstr_ExtensionDisco.isa, v6);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__CNDDonorLoader_continuousExtensionsObservable__block_invoke_5;
    v10[3] = &unk_278569C98;
    v11 = *(a1 + 32);
    v12 = v6;
    [WeakRetained performBlock:v10];

    v9 = v11;
  }
}

CNDDonorExtension *__48__CNDDonorLoader_continuousExtensionsObservable__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNDDonorExtension alloc] initWithExtension:v2];

  return v3;
}

@end