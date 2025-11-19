@interface MTConfig
- (BOOL)disabledForSources:(id)a3;
- (BOOL)metricsDisabledOrDenylistedEvent:(id)a3 sources:(id)a4;
- (MTConfigDelegate)delegate;
- (id)computeWithConfigSources:(id)a3;
- (id)configValueForKeyPath:(id)a3 default:(id)a4;
- (id)configValueForKeyPath:(id)a3 sources:(id)a4;
- (id)deResFieldsForSources:(id)a3;
- (id)denylistedEventsForSources:(id)a3;
- (id)denylistedFieldsForSources:(id)a3;
- (id)injectedSource;
- (id)sources;
- (int64_t)eventDataTimeout;
- (void)applyDeRes:(id)a3 sources:(id)a4;
- (void)removeDenylistedFields:(id)a3 sources:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation MTConfig

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(MTObject *)self metricsKit];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained setMetricsKit:v7];
  }
}

- (id)injectedSource
{
  v2 = [(MTConfig *)self debugSource];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 objectForKey:@"MetricsKitConfigOverrides"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277CCAAA0];
    v6 = [v4 dataUsingEncoding:4];
    v7 = [v5 JSONObjectWithData:v6 options:0 error:0];

    v4 = v7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v2)
    {
      v8 = [v2 mutableCopy];
      [v8 addEntriesFromDictionary:v4];
      v9 = [v8 copy];

      v2 = v9;
    }

    else
    {
      v2 = v4;
    }
  }

  return v2;
}

- (id)sources
{
  v3 = [(MTConfig *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v11 = [(MTConfig *)self delegate];
    v12 = [v11 sources];

    v13 = [(MTConfig *)self delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = [(MTObject *)self metricsKit];
      v16 = [v15 topic];

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __19__MTConfig_sources__block_invoke;
      v25[3] = &unk_2798CD3E0;
      v26 = v16;
      v17 = v16;
      v18 = [v12 thenWithBlock:v25];

      v12 = v18;
    }
  }

  else
  {
    v19 = MTConfigurationError(101, @"The method %s must be implemented in MTConfigDelegate.", v5, v6, v7, v8, v9, v10, "[MTConfig sources]");
    v12 = [MTPromise promiseWithError:v19];
  }

  v20 = [(MTConfig *)self injectedSource];
  if ([v20 count])
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __19__MTConfig_sources__block_invoke_2;
    v23[3] = &unk_2798CD3E0;
    v24 = v20;
    v21 = [v12 thenWithBlock:v23];

    v12 = v21;
  }

  return v12;
}

id __19__MTConfig_sources__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 firstObject];
  v5 = [MTReflectUtil objectAsDictionary:v4];
  v6 = [v5 copy];

  v7 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  if (v7)
  {
    v8 = [v3 arrayByAddingObject:v7];

    v3 = v8;
  }

  v9 = [MTPromise promiseWithResult:v3];

  return v9;
}

id __19__MTConfig_sources__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 arrayByAddingObject:*(a1 + 32)];
  v3 = [MTPromise promiseWithResult:v2];

  return v3;
}

- (int64_t)eventDataTimeout
{
  if ([(MTConfig *)self _isEventDataTimeoutUnset])
  {
    objc_initWeak(&location, self);
    v3 = [(MTConfig *)self sources];
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __28__MTConfig_eventDataTimeout__block_invoke;
    v8 = &unk_2798CD408;
    objc_copyWeak(&v9, &location);
    [v3 addFinishBlock:&v5];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  if ([(MTConfig *)self _isEventDataTimeoutUnset:v5])
  {
    return 10000;
  }

  else
  {
    return self->_eventDataTimeout;
  }
}

void __28__MTConfig_eventDataTimeout__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _isEventDataTimeoutUnset];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 configValueForKeyPath:@"eventDataTimeout" sources:v11];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = 0.0;
    if (isKindOfClass)
    {
      [v6 doubleValue];
    }

    if (v8 == 0.0)
    {
      v8 = 10000.0;
    }

    v9 = v8;
    v10 = objc_loadWeakRetained((a1 + 32));
    [v10 setEventDataTimeout:v9];
  }
}

- (id)configValueForKeyPath:(id)a3 sources:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTConfig *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(MTConfig *)self delegate];
    v11 = [v10 configValueForKeyPath:v6 sources:v7];
  }

  else
  {
    v12 = [v7 count];
    if (v12 - 1 < 0)
    {
LABEL_7:
      v11 = 0;
    }

    else
    {
      v13 = v12;
      while (1)
      {
        v14 = [v7 objectAtIndex:--v13];
        v11 = [v14 mt_nullableValueForKeyPath:v6];

        if (v11)
        {
          break;
        }

        if (v13 <= 0)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return v11;
}

- (BOOL)disabledForSources:(id)a3
{
  v3 = [(MTConfig *)self configValueForKeyPath:@"disabled" sources:a3];
  v4 = [MTReflectUtil objectAsBool:v3];

  return v4;
}

- (id)denylistedEventsForSources:(id)a3
{
  v4 = a3;
  v5 = [(MTConfig *)self configValueForKeyPath:@"blacklistedEvents" sources:v4];
  v6 = [MTReflectUtil objectAsArray:v5];
  v7 = [(MTConfig *)self configValueForKeyPath:@"denylistedEvents" sources:v4];

  v8 = [MTReflectUtil objectAsArray:v7];
  v9 = [v6 arrayByAddingObjectsFromArray:v8];

  return v9;
}

- (id)denylistedFieldsForSources:(id)a3
{
  v4 = a3;
  v5 = [(MTConfig *)self configValueForKeyPath:@"blacklistedFields" sources:v4];
  v6 = [MTReflectUtil objectAsArray:v5];
  v7 = [(MTConfig *)self configValueForKeyPath:@"denylistedFields" sources:v4];

  v8 = [MTReflectUtil objectAsArray:v7];
  v9 = [v6 arrayByAddingObjectsFromArray:v8];

  return v9;
}

- (id)deResFieldsForSources:(id)a3
{
  v3 = [(MTConfig *)self configValueForKeyPath:@"deResFields" sources:a3];
  v4 = [MTReflectUtil objectAsArray:v3];

  return v4;
}

- (BOOL)metricsDisabledOrDenylistedEvent:(id)a3 sources:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MTConfig *)self disabledForSources:v7])
  {
    v8 = 1;
  }

  else if (v6)
  {
    v9 = [(MTConfig *)self denylistedEventsForSources:v7];
    v8 = [v9 containsObject:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)removeDenylistedFields:(id)a3 sources:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v7 = [(MTConfig *)self denylistedFieldsForSources:v6];
    [v8 removeObjectsForKeys:v7];
  }
}

- (void)applyDeRes:(id)a3 sources:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    [(MTConfig *)self deResFieldsForSources:a4];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v23 = 0u;
    v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = [MTReflectUtil objectAsDictionary:*(*(&v20 + 1) + 8 * v10)];
          v12 = [v11 objectForKeyedSubscript:@"fieldName"];
          v13 = [v6 objectForKeyedSubscript:v12];

          if (v13)
          {
            v14 = [v6 objectForKeyedSubscript:v12];
            v15 = [v11 objectForKeyedSubscript:@"magnitude"];
            v16 = [v11 objectForKeyedSubscript:@"significantDigits"];
            v17 = [MTNumberUtil deResNumber:v14 magnitude:v15 significantDigits:v16];
            [v6 setObject:v17 forKeyedSubscript:v12];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)computeWithConfigSources:(id)a3
{
  v4 = a3;
  v5 = [(MTConfig *)self sources];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__MTConfig_computeWithConfigSources___block_invoke;
  v9[3] = &unk_2798CD430;
  v10 = v4;
  v6 = v4;
  v7 = [v5 thenWithBlock:v9];

  return v7;
}

id __37__MTConfig_computeWithConfigSources___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  if (v1)
  {
    v2 = [MTPromise promiseWithResult:v1];
  }

  else
  {
    v3 = [MEMORY[0x277CBEB68] null];
    v2 = [MTPromise promiseWithResult:v3];
  }

  return v2;
}

- (id)configValueForKeyPath:(id)a3 default:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTConfig *)self sources];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __42__MTConfig_configValueForKeyPath_default___block_invoke;
  v17[3] = &unk_2798CD458;
  v17[4] = self;
  v18 = v6;
  v9 = v7;
  v19 = v9;
  v10 = v6;
  v11 = [v8 thenWithBlock:v17];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __42__MTConfig_configValueForKeyPath_default___block_invoke_2;
  v15[3] = &unk_2798CD480;
  v16 = v9;
  v12 = v9;
  v13 = [v11 catchWithBlock:v15];

  return v13;
}

id __42__MTConfig_configValueForKeyPath_default___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) configValueForKeyPath:*(a1 + 40) sources:a2];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = *(a1 + 48);
  }

  v5 = [MTPromise promiseWithResult:v4];

  return v5;
}

- (MTConfigDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end