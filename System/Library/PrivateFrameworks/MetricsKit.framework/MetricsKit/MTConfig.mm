@interface MTConfig
- (BOOL)disabledForSources:(id)sources;
- (BOOL)metricsDisabledOrDenylistedEvent:(id)event sources:(id)sources;
- (MTConfigDelegate)delegate;
- (id)computeWithConfigSources:(id)sources;
- (id)configValueForKeyPath:(id)path default:(id)default;
- (id)configValueForKeyPath:(id)path sources:(id)sources;
- (id)deResFieldsForSources:(id)sources;
- (id)denylistedEventsForSources:(id)sources;
- (id)denylistedFieldsForSources:(id)sources;
- (id)injectedSource;
- (id)sources;
- (int64_t)eventDataTimeout;
- (void)applyDeRes:(id)res sources:(id)sources;
- (void)removeDenylistedFields:(id)fields sources:(id)sources;
- (void)setDelegate:(id)delegate;
@end

@implementation MTConfig

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    metricsKit = [(MTObject *)self metricsKit];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained setMetricsKit:metricsKit];
  }
}

- (id)injectedSource
{
  debugSource = [(MTConfig *)self debugSource];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"MetricsKitConfigOverrides"];

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
    if (debugSource)
    {
      v8 = [debugSource mutableCopy];
      [v8 addEntriesFromDictionary:v4];
      v9 = [v8 copy];

      debugSource = v9;
    }

    else
    {
      debugSource = v4;
    }
  }

  return debugSource;
}

- (id)sources
{
  delegate = [(MTConfig *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTConfig *)self delegate];
    sources = [delegate2 sources];

    delegate3 = [(MTConfig *)self delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      metricsKit = [(MTObject *)self metricsKit];
      topic = [metricsKit topic];

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __19__MTConfig_sources__block_invoke;
      v25[3] = &unk_2798CD3E0;
      v26 = topic;
      v17 = topic;
      v18 = [sources thenWithBlock:v25];

      sources = v18;
    }
  }

  else
  {
    v19 = MTConfigurationError(101, @"The method %s must be implemented in MTConfigDelegate.", v5, v6, v7, v8, v9, v10, "[MTConfig sources]");
    sources = [MTPromise promiseWithError:v19];
  }

  injectedSource = [(MTConfig *)self injectedSource];
  if ([injectedSource count])
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __19__MTConfig_sources__block_invoke_2;
    v23[3] = &unk_2798CD3E0;
    v24 = injectedSource;
    v21 = [sources thenWithBlock:v23];

    sources = v21;
  }

  return sources;
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
    sources = [(MTConfig *)self sources];
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __28__MTConfig_eventDataTimeout__block_invoke;
    v8 = &unk_2798CD408;
    objc_copyWeak(&v9, &location);
    [sources addFinishBlock:&v5];

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

- (id)configValueForKeyPath:(id)path sources:(id)sources
{
  pathCopy = path;
  sourcesCopy = sources;
  delegate = [(MTConfig *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(MTConfig *)self delegate];
    v11 = [delegate2 configValueForKeyPath:pathCopy sources:sourcesCopy];
  }

  else
  {
    v12 = [sourcesCopy count];
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
        v14 = [sourcesCopy objectAtIndex:--v13];
        v11 = [v14 mt_nullableValueForKeyPath:pathCopy];

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

- (BOOL)disabledForSources:(id)sources
{
  v3 = [(MTConfig *)self configValueForKeyPath:@"disabled" sources:sources];
  v4 = [MTReflectUtil objectAsBool:v3];

  return v4;
}

- (id)denylistedEventsForSources:(id)sources
{
  sourcesCopy = sources;
  v5 = [(MTConfig *)self configValueForKeyPath:@"blacklistedEvents" sources:sourcesCopy];
  v6 = [MTReflectUtil objectAsArray:v5];
  v7 = [(MTConfig *)self configValueForKeyPath:@"denylistedEvents" sources:sourcesCopy];

  v8 = [MTReflectUtil objectAsArray:v7];
  v9 = [v6 arrayByAddingObjectsFromArray:v8];

  return v9;
}

- (id)denylistedFieldsForSources:(id)sources
{
  sourcesCopy = sources;
  v5 = [(MTConfig *)self configValueForKeyPath:@"blacklistedFields" sources:sourcesCopy];
  v6 = [MTReflectUtil objectAsArray:v5];
  v7 = [(MTConfig *)self configValueForKeyPath:@"denylistedFields" sources:sourcesCopy];

  v8 = [MTReflectUtil objectAsArray:v7];
  v9 = [v6 arrayByAddingObjectsFromArray:v8];

  return v9;
}

- (id)deResFieldsForSources:(id)sources
{
  v3 = [(MTConfig *)self configValueForKeyPath:@"deResFields" sources:sources];
  v4 = [MTReflectUtil objectAsArray:v3];

  return v4;
}

- (BOOL)metricsDisabledOrDenylistedEvent:(id)event sources:(id)sources
{
  eventCopy = event;
  sourcesCopy = sources;
  if ([(MTConfig *)self disabledForSources:sourcesCopy])
  {
    v8 = 1;
  }

  else if (eventCopy)
  {
    v9 = [(MTConfig *)self denylistedEventsForSources:sourcesCopy];
    v8 = [v9 containsObject:eventCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)removeDenylistedFields:(id)fields sources:(id)sources
{
  fieldsCopy = fields;
  sourcesCopy = sources;
  if (objc_opt_respondsToSelector())
  {
    v7 = [(MTConfig *)self denylistedFieldsForSources:sourcesCopy];
    [fieldsCopy removeObjectsForKeys:v7];
  }
}

- (void)applyDeRes:(id)res sources:(id)sources
{
  v25 = *MEMORY[0x277D85DE8];
  resCopy = res;
  if (resCopy)
  {
    [(MTConfig *)self deResFieldsForSources:sources];
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
          v13 = [resCopy objectForKeyedSubscript:v12];

          if (v13)
          {
            v14 = [resCopy objectForKeyedSubscript:v12];
            v15 = [v11 objectForKeyedSubscript:@"magnitude"];
            v16 = [v11 objectForKeyedSubscript:@"significantDigits"];
            v17 = [MTNumberUtil deResNumber:v14 magnitude:v15 significantDigits:v16];
            [resCopy setObject:v17 forKeyedSubscript:v12];
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

- (id)computeWithConfigSources:(id)sources
{
  sourcesCopy = sources;
  sources = [(MTConfig *)self sources];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__MTConfig_computeWithConfigSources___block_invoke;
  v9[3] = &unk_2798CD430;
  v10 = sourcesCopy;
  v6 = sourcesCopy;
  v7 = [sources thenWithBlock:v9];

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

- (id)configValueForKeyPath:(id)path default:(id)default
{
  pathCopy = path;
  defaultCopy = default;
  sources = [(MTConfig *)self sources];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __42__MTConfig_configValueForKeyPath_default___block_invoke;
  v17[3] = &unk_2798CD458;
  v17[4] = self;
  v18 = pathCopy;
  v9 = defaultCopy;
  v19 = v9;
  v10 = pathCopy;
  v11 = [sources thenWithBlock:v17];

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