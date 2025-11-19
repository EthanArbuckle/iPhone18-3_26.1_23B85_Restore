@interface INCIntentDefaultValueProvider
- (BOOL)isExpectedDefaultValueError:(id)a3;
- (INCIntentDefaultValueProvider)initWithIntent:(id)a3;
- (void)loadDefaultValuesWithAttributes:(id)a3 extensionProxy:(id)a4 completionHandler:(id)a5;
- (void)loadDefaultValuesWithCompletionHandler:(id)a3;
@end

@implementation INCIntentDefaultValueProvider

- (BOOL)isExpectedDefaultValueError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x277CD4450]])
  {
    v5 = [v3 code] == 1003;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)loadDefaultValuesWithAttributes:(id)a3 extensionProxy:(id)a4 completionHandler:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v35 = a4;
  v33 = a5;
  v34 = self;
  v9 = [(INCIntentDefaultValueProvider *)self intent];
  group = dispatch_group_create();
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3032000000;
  v51[3] = __Block_byref_object_copy__639;
  v51[4] = __Block_byref_object_dispose__640;
  v52 = 0;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v10)
  {
    v11 = *v48;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v48 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v47 + 1) + 8 * i);
        v14 = [v13 relationship];
        v15 = [v14 parentCodableAttribute];

        if (!v15)
        {
          goto LABEL_27;
        }

        v16 = [v13 relationship];
        v17 = [v16 relation] == 0;

        if (v17)
        {
          goto LABEL_27;
        }

        v18 = [v15 propertyName];
        v19 = [v9 valueForKey:v18];

        v20 = [v13 relationship];
        LOBYTE(v18) = [v20 compareValue:v19];

        if (v18)
        {
LABEL_27:
          if ([v13 supportsDynamicEnumeration])
          {
            dispatch_group_enter(group);
            v21 = [v13 propertyName];
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = __98__INCIntentDefaultValueProvider_loadDefaultValuesWithAttributes_extensionProxy_completionHandler___block_invoke;
            v42[3] = &unk_2797E7C58;
            v42[4] = v34;
            v46 = v51;
            v43 = group;
            v44 = v9;
            v45 = v13;
            [v35 getDefaultValueForParameterNamed:v21 completionHandler:v42];
          }

          else
          {
            v22 = [v13 metadata];
            v23 = v22;
            if (v22)
            {
              if ([v22 conformsToProtocol:&unk_2867761D0])
              {
                v24 = v23;
              }

              else
              {
                v24 = 0;
              }
            }

            else
            {
              v24 = 0;
            }

            v25 = v24;

            v26 = [v25 defaultValueForIntentDefaultValueProvider];
            if (v26)
            {
              if (![v13 modifier])
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v27 = [MEMORY[0x277CBEA60] arrayWithObject:v26];

                  v26 = v27;
                }
              }

              v28 = [v13 propertyName];
              [v9 setValue:v26 forKey:v28];
            }
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v10);
  }

  v29 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__INCIntentDefaultValueProvider_loadDefaultValuesWithAttributes_extensionProxy_completionHandler___block_invoke_2;
  block[3] = &unk_2797E7C80;
  v40 = v33;
  v41 = v51;
  v39 = v9;
  v30 = v9;
  v31 = v33;
  dispatch_group_notify(group, v29, block);

  _Block_object_dispose(v51, 8);
  v32 = *MEMORY[0x277D85DE8];
}

void __98__INCIntentDefaultValueProvider_loadDefaultValuesWithAttributes_extensionProxy_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v5 && ([*(a1 + 32) isExpectedDefaultValueError:v5] & 1) == 0)
  {
    v8 = *(*(a1 + 64) + 8);
    v9 = v5;
    v7 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    v6 = *(a1 + 48);
    v7 = [*(a1 + 56) propertyName];
    [v6 setValue:v10 forKey:v7];
  }

LABEL_7:
  dispatch_group_leave(*(a1 + 40));
}

uint64_t __98__INCIntentDefaultValueProvider_loadDefaultValuesWithAttributes_extensionProxy_completionHandler___block_invoke_2(uint64_t a1)
{
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  if (*(*(*(v3 + 8) + 8) + 40))
  {
    return (*(v2 + 16))(v2, 0);
  }

  else
  {
    return (*(v2 + 16))(v2, *(a1 + 32));
  }
}

- (void)loadDefaultValuesWithCompletionHandler:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(INCIntentDefaultValueProvider *)self intent];
  v6 = [(INCIntentDefaultValueProvider *)self intent];
  v7 = [v6 _codableDescription];
  v8 = [v7 displayOrderedAttributes];
  v9 = [v8 array];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v11)
  {
    v12 = *v35;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v34 + 1) + 8 * v13) supportsDynamicEnumeration])
        {

          if (MKBDeviceUnlockedSinceBoot())
          {
            v14 = [[INCExtensionConnection alloc] initWithIntent:v5];
            [(INCExtensionConnection *)v14 setRequiresTCC:0];
            v32[0] = 0;
            v32[1] = v32;
            v32[2] = 0x2020000000;
            v33 = 0;
            objc_initWeak(&location, v14);
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __72__INCIntentDefaultValueProvider_loadDefaultValuesWithCompletionHandler___block_invoke;
            v27[3] = &unk_2797E7BE0;
            v27[4] = self;
            v29 = v32;
            objc_copyWeak(&v30, &location);
            v28 = v4;
            v15 = MEMORY[0x259C36E60](v27);
            v25[0] = MEMORY[0x277D85DD0];
            v25[1] = 3221225472;
            v25[2] = __72__INCIntentDefaultValueProvider_loadDefaultValuesWithCompletionHandler___block_invoke_3;
            v25[3] = &unk_2797E7C08;
            v16 = v15;
            v26 = v16;
            [(INCExtensionConnection *)v14 setInterruptionHandler:v25];
            v22[0] = MEMORY[0x277D85DD0];
            v22[1] = 3221225472;
            v22[2] = __72__INCIntentDefaultValueProvider_loadDefaultValuesWithCompletionHandler___block_invoke_4;
            v22[3] = &unk_2797E7C30;
            v17 = v16;
            v24 = v17;
            v22[4] = self;
            v23 = v10;
            [(INCExtensionConnection *)v14 resumeWithCompletionHandler:v22];

            objc_destroyWeak(&v30);
            objc_destroyWeak(&location);
            _Block_object_dispose(v32, 8);
          }

          else
          {
            v18 = MEMORY[0x277CCA9B8];
            v38 = *MEMORY[0x277CCA450];
            v39 = @"Loading default values from an intent handler requires that the device be unlocked at least once";
            v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
            v20 = [v18 errorWithDomain:@"INCExtensionErrorDomain" code:1310 userInfo:v19];
            (*(v4 + 2))(v4, 0, v20);
          }

          goto LABEL_13;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  [(INCIntentDefaultValueProvider *)self loadDefaultValuesWithAttributes:v10 extensionProxy:0 completionHandler:v4];
LABEL_13:

  v21 = *MEMORY[0x277D85DE8];
}

void __72__INCIntentDefaultValueProvider_loadDefaultValuesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) completionHandlingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__INCIntentDefaultValueProvider_loadDefaultValuesWithCompletionHandler___block_invoke_2;
  block[3] = &unk_2797E7BB8;
  v15 = *(a1 + 48);
  objc_copyWeak(&v16, (a1 + 56));
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);

  objc_destroyWeak(&v16);
}

void __72__INCIntentDefaultValueProvider_loadDefaultValuesWithCompletionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __72__INCIntentDefaultValueProvider_loadDefaultValuesWithCompletionHandler___block_invoke_5;
    v7[3] = &unk_2797E8118;
    v8 = *(a1 + 48);
    [v4 loadDefaultValuesWithAttributes:v5 extensionProxy:a2 completionHandler:v7];
  }

  else
  {
    v6 = *(*(a1 + 48) + 16);

    v6();
  }
}

void __72__INCIntentDefaultValueProvider_loadDefaultValuesWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained reset];
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

- (INCIntentDefaultValueProvider)initWithIntent:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = INCIntentDefaultValueProvider;
  v5 = [(INCIntentDefaultValueProvider *)&v14 init];
  if (v5)
  {
    v6 = [v4 copy];
    intent = v5->_intent;
    v5->_intent = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_DEFAULT, 0);
    v10 = dispatch_queue_create("com.apple.Intents.IntentDefaultValueProvider.Completion", v9);
    completionHandlingQueue = v5->_completionHandlingQueue;
    v5->_completionHandlingQueue = v10;

    v12 = v5;
  }

  return v5;
}

@end