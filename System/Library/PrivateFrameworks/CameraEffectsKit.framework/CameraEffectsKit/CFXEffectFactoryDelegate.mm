@interface CFXEffectFactoryDelegate
+ (id)sharedInstance;
- (BOOL)CFX_disableExpensiveFilters;
- (BOOL)CFX_enoughPowerForStyleTransfer;
- (BOOL)CFX_isExpensiveEffectID:(id)d withFactory:(id)factory;
- (Class)JFXEffectClassForType:(int)type;
- (id)CFX_filterEffectsWithFactory:(id)factory;
- (id)CFX_overlayEffectsWithFactory:(id)factory;
- (id)effectFactory:(id)factory createEffectContentDataSourceForEffectID:(id)d ofType:(int)type;
- (void)effectFactory:(id)factory effectIDsAvailableForType:(int)type completion:(id)completion;
@end

@implementation CFXEffectFactoryDelegate

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CFXEffectFactoryDelegate sharedInstance];
  }

  v3 = sharedInstance_sInstance;

  return v3;
}

uint64_t __42__CFXEffectFactoryDelegate_sharedInstance__block_invoke()
{
  sharedInstance_sInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)effectFactory:(id)factory effectIDsAvailableForType:(int)type completion:(id)completion
{
  v6 = *&type;
  v19[5] = *MEMORY[0x277D85DE8];
  factoryCopy = factory;
  v9 = *MEMORY[0x277D419D8];
  v18[0] = &unk_28556D1E8;
  v18[1] = &unk_28556D200;
  v10 = *MEMORY[0x277D419E8];
  v19[0] = v9;
  v19[1] = v10;
  v18[2] = &unk_28556D218;
  v18[3] = &unk_28556D230;
  v19[2] = v10;
  v19[3] = v10;
  v18[4] = &unk_28556D248;
  v19[4] = v9;
  v11 = MEMORY[0x277CBEAC0];
  completionCopy = completion;
  v13 = [v11 dictionaryWithObjects:v19 forKeys:v18 count:5];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
  v15 = [v13 objectForKeyedSubscript:v14];

  if (v6 == 7)
  {
    v16 = [(CFXEffectFactoryDelegate *)self CFX_animojiEffectsWithFactory:factoryCopy];
  }

  else if (v6 == 2)
  {
    v16 = [(CFXEffectFactoryDelegate *)self CFX_overlayEffectsWithFactory:factoryCopy];
  }

  else
  {
    if (v6 == 1)
    {
      [(CFXEffectFactoryDelegate *)self CFX_filterEffectsWithFactory:factoryCopy];
    }

    else
    {
      [MEMORY[0x277D415F8] registeredEffectIDsForEffectType:v15];
    }
    v16 = ;
  }

  v17 = v16;
  completionCopy[2](completionCopy, v16);
}

- (id)effectFactory:(id)factory createEffectContentDataSourceForEffectID:(id)d ofType:(int)type
{
  if (type == 1)
  {
    dCopy = d;
    v6 = [[CFXFilterEffectContentDataSource alloc] initWithEffectID:dCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)CFX_filterEffectsWithFactory:(id)factory
{
  v38 = *MEMORY[0x277D85DE8];
  factoryCopy = factory;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [standardUserDefaults BOOLForKey:@"showAllRegisteredFilters"];

  if (v6)
  {
    v7 = [MEMORY[0x277D415F8] registeredEffectIDsForEffectType:*MEMORY[0x277D419D8]];
  }

  else
  {
    v8 = dispatch_semaphore_create(0);
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__7;
    v35 = __Block_byref_object_dispose__7;
    v36 = 0;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __57__CFXEffectFactoryDelegate_CFX_filterEffectsWithFactory___block_invoke;
    v28[3] = &unk_278D7A928;
    v30 = &v31;
    v9 = v8;
    v29 = v9;
    [factoryCopy effectCategoriesForType:1 completion:v28];
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    v7 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v32[5];
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v37 count:16];
    if (v11)
    {
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v10);
          }

          effectIDs = [*(*(&v24 + 1) + 8 * i) effectIDs];
          [v7 addObjectsFromArray:effectIDs];
        }

        v11 = [v10 countByEnumeratingWithState:&v24 objects:v37 count:16];
      }

      while (v11);
    }

    if ([(CFXEffectFactoryDelegate *)self CFX_disableExpensiveFilters])
    {
      v15 = MEMORY[0x277CCAC30];
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __57__CFXEffectFactoryDelegate_CFX_filterEffectsWithFactory___block_invoke_2;
      v21 = &unk_278D7A950;
      selfCopy = self;
      v23 = factoryCopy;
      v16 = [v15 predicateWithBlock:&v18];
      [v7 filterUsingPredicate:{v16, v18, v19, v20, v21, selfCopy}];
    }

    _Block_object_dispose(&v31, 8);
  }

  return v7;
}

void __57__CFXEffectFactoryDelegate_CFX_filterEffectsWithFactory___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)CFX_overlayEffectsWithFactory:(id)factory
{
  v27 = *MEMORY[0x277D85DE8];
  factoryCopy = factory;
  v4 = dispatch_semaphore_create(0);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__CFXEffectFactoryDelegate_CFX_overlayEffectsWithFactory___block_invoke;
  v17[3] = &unk_278D7A928;
  v19 = &v20;
  v5 = v4;
  v18 = v5;
  [factoryCopy effectCategoriesForType:2 completion:v17];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v21[5];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v26 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        effectIDs = [*(*(&v13 + 1) + 8 * i) effectIDs];
        [v6 addObjectsFromArray:effectIDs];
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v26 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(&v20, 8);

  return v6;
}

void __58__CFXEffectFactoryDelegate_CFX_overlayEffectsWithFactory___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)CFX_isExpensiveEffectID:(id)d withFactory:(id)factory
{
  dCopy = d;
  if ([dCopy isEqualToString:*MEMORY[0x277D416F8]] & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", *MEMORY[0x277D41700]) & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", *MEMORY[0x277D41708]) & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", *MEMORY[0x277D416F0]))
  {
    v5 = 1;
  }

  else
  {
    v5 = [dCopy isEqualToString:*MEMORY[0x277D416E8]];
  }

  return v5;
}

- (BOOL)CFX_disableExpensiveFilters
{
  if (CFX_disableExpensiveFilters_onceToken != -1)
  {
    [CFXEffectFactoryDelegate CFX_disableExpensiveFilters];
  }

  return CFX_disableExpensiveFilters_disable;
}

void __55__CFXEffectFactoryDelegate_CFX_disableExpensiveFilters__block_invoke()
{
  v8 = 0;
  v7 = 4;
  sysctlbyname("hw.cpufamily", &v8, &v7, 0, 0);
  v0 = 1;
  if (v8 <= 747742333)
  {
    if (v8 == -1829029944 || v8 == -1471079478 || v8 == 506291073)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v8 == 747742334 || v8 == 933271106)
  {
    goto LABEL_18;
  }

  if (v8 != 1741614739 || (v4 = +[CFXBundleUtils isRunningMessagesExtension](CFXBundleUtils, "isRunningMessagesExtension"), (CFX_disableExpensiveFilters_disable = !v4) != 0) && ([MEMORY[0x277D75418] currentDevice], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "jfx_memorySize"), v5, v6 > 3670016000))
  {
LABEL_17:
    v0 = 0;
LABEL_18:
    CFX_disableExpensiveFilters_disable = v0;
  }
}

- (Class)JFXEffectClassForType:(int)type
{
  if (type == 1 || type == 7 || type == 2)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)CFX_enoughPowerForStyleTransfer
{
  if (CFX_enoughPowerForStyleTransfer_onceToken != -1)
  {
    [CFXEffectFactoryDelegate CFX_enoughPowerForStyleTransfer];
  }

  return CFX_enoughPowerForStyleTransfer_enough;
}

void __59__CFXEffectFactoryDelegate_CFX_enoughPowerForStyleTransfer__block_invoke()
{
  v6 = 0;
  v5 = 4;
  sysctlbyname("hw.cpufamily", &v6, &v5, 0, 0);
  v2 = v6 != -1829029944 && v6 != 747742334 && v6 != 933271106;
  CFX_enoughPowerForStyleTransfer_enough = v2;
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"forceStyleTransferFiltersOn"];

  if (v4)
  {
    CFX_enoughPowerForStyleTransfer_enough = 1;
  }
}

@end