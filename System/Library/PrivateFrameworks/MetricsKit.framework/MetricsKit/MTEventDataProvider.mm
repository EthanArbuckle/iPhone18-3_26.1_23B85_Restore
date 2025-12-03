@interface MTEventDataProvider
- (MTEventDataProviderDelegate)delegate;
- (NSDictionary)knownFieldMethods;
- (SEL)knownFieldAccessorForFieldName:(id)name;
- (id)flattenAdditionalData;
- (id)knownFieldMethodsForKnownFields:(id)fields;
- (id)knownFields;
- (id)processMetricsData:(id)data performanceData:(id)performanceData;
- (void)addFields:(id)fields;
- (void)addFieldsWithBlock:(id)block;
@end

@implementation MTEventDataProvider

- (void)addFields:(id)fields
{
  fieldsCopy = fields;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  additionalData = [(MTEventDataProvider *)selfCopy additionalData];
  array = [additionalData mutableCopy];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v14 = &v15;
  v8 = fieldsCopy;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [array addObjectsFromArray:v10];
      }

      else
      {
        [array addObject:v10];
      }

      v11 = v14++;
      v12 = *v11;

      v10 = v12;
    }

    while (v12);
  }

  mt_condensedArray = [array mt_condensedArray];
  [(MTEventDataProvider *)selfCopy setAdditionalData:mt_condensedArray];

  objc_sync_exit(selfCopy);
}

- (void)addFieldsWithBlock:(id)block
{
  v4 = MEMORY[0x259C9F5D0](block, a2);
  [(MTEventDataProvider *)self addFields:v4, 0];
}

- (id)flattenAdditionalData
{
  additionalData = [(MTEventDataProvider *)self additionalData];
  v3 = [additionalData mt_map:&__block_literal_global_19];

  return v3;
}

id __44__MTEventDataProvider_flattenAdditionalData__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  NSClassFromString(&cfstr_Nsblock.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = MEMORY[0x259C9F5D0](v2);
    v4 = v3[2]();
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
    }

    else
    {
      v6 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&dword_258F4B000, v6, OS_LOG_TYPE_DEBUG, "MetricsKit: A fields block has returned an unrecognized value: %@.", &v9, 0xCu);
      }

      v5 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v5 = v2;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSDictionary)knownFieldMethods
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_knownFieldMethods)
  {
    knownFields = [(MTEventDataProvider *)selfCopy knownFields];
    v4 = knownFields;
    if (knownFields)
    {
      v5 = knownFields;
    }

    else
    {
      v5 = MEMORY[0x277CBEBF8];
    }

    v6 = [(MTEventDataProvider *)selfCopy knownFieldMethodsForKnownFields:v5];
    knownFieldMethods = selfCopy->_knownFieldMethods;
    selfCopy->_knownFieldMethods = v6;
  }

  objc_sync_exit(selfCopy);

  v8 = selfCopy->_knownFieldMethods;

  return v8;
}

- (id)knownFieldMethodsForKnownFields:(id)fields
{
  v33 = *MEMORY[0x277D85DE8];
  fieldsCopy = fields;
  v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(fieldsCopy, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = fieldsCopy;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        v11 = [(MTEventDataProvider *)self knownFieldAccessorForFieldName:v10];
        if (v11)
        {
          v12 = v11;
          v13 = [(MTEventDataProvider *)self methodSignatureForSelector:v11];
          methodReturnType = [v13 methodReturnType];
          if (methodReturnType && *methodReturnType == 64 && !methodReturnType[1])
          {
            v22 = [[MTKnownFieldMethod alloc] initWithIMP:[(MTEventDataProvider *)self methodForSelector:v12] accessor:v12];
            [v27 setObject:v22 forKey:v10];
          }

          else
          {
            v21 = MTConfigurationError(108, @"Accessor for field named %@ doesn't return an object.", v15, v16, v17, v18, v19, v20, v10);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v23 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
      v7 = v23;
    }

    while (v23);
  }

  v24 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v27];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)knownFields
{
  delegate = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    knownFields = [delegate2 knownFields];
  }

  else
  {
    knownFields = 0;
  }

  return knownFields;
}

- (id)processMetricsData:(id)data performanceData:(id)performanceData
{
  v31 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  performanceDataCopy = performanceData;
  knownFields = [(MTEventDataProvider *)self knownFields];
  v8 = knownFields;
  v9 = MEMORY[0x277CBEBF8];
  if (knownFields)
  {
    v9 = knownFields;
  }

  v10 = v9;

  v24 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v10, "count")}];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        knownFieldMethods = [(MTEventDataProvider *)self knownFieldMethods];
        v17 = [knownFieldMethods objectForKeyedSubscript:v15];

        if (v17)
        {
          v18 = [v17 imp];
          if (performanceDataCopy)
          {
            Current = CFAbsoluteTimeGetCurrent();
          }

          else
          {
            Current = 0.0;
          }

          v20 = v18(self, [v17 accessor], dataCopy);
          if (performanceDataCopy)
          {
            v21 = [MEMORY[0x277CCABB0] numberWithInteger:((CFAbsoluteTimeGetCurrent() - Current) * 1000000.0)];
            [performanceDataCopy setObject:v21 forKeyedSubscript:v15];
          }

          if (v20)
          {
            [v24 setValue:v20 forKey:v15];
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v24;
}

- (SEL)knownFieldAccessorForFieldName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy stringByAppendingString:@":"];
  v5 = NSSelectorFromString(v4);

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v5 = NSSelectorFromString(nameCopy);
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v5 = 0;
    }
  }

  return v5;
}

- (MTEventDataProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end