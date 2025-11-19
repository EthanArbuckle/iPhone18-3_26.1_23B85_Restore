@interface HFStateDumpBuilder
+ (id)_coerceObjectToPropertyList:(id)a3 options:(unint64_t)a4;
+ (id)builderWithObject:(id)a3 context:(id)a4;
- (HFStateDumpBuilder)initWithObject:(id)a3 context:(id)a4;
- (id)_filteredEntries;
- (id)_formattedObjectForEntry:(id)a3 withRepresentation:(unint64_t)a4;
- (id)_formattedObjectForObject:(id)a3 withRepresentation:(unint64_t)a4 context:(id)a5 options:(unint64_t)a6;
- (id)buildDescription;
- (id)buildPropertyListRepresentation;
- (void)appendBool:(BOOL)a3 withName:(id)a4;
- (void)appendBool:(BOOL)a3 withName:(id)a4 ifEqualTo:(BOOL)a5;
- (void)appendObject:(id)a3 withName:(id)a4 context:(id)a5 options:(unint64_t)a6;
@end

@implementation HFStateDumpBuilder

+ (id)builderWithObject:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithObject:v7 context:v6];

  return v8;
}

- (HFStateDumpBuilder)initWithObject:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = HFStateDumpBuilder;
  v9 = [(HFStateDumpBuilder *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_object, a3);
    v11 = [v8 copy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [HFStateDumpBuilderContext contextWithDetailLevel:0];
    }

    context = v10->_context;
    v10->_context = v13;

    v15 = objc_opt_new();
    entries = v10->_entries;
    v10->_entries = v15;
  }

  return v10;
}

- (void)appendObject:(id)a3 withName:(id)a4 context:(id)a5 options:(unint64_t)a6
{
  v17 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(HFStateDumpBuilder *)self context];
  v13 = [v12 objectsToExclude];
  v14 = [v13 containsObject:v17];

  if ((v14 & 1) == 0)
  {
    v15 = objc_alloc_init(HFStateDumpEntry);
    [(HFStateDumpEntry *)v15 setObject:v17];
    [(HFStateDumpEntry *)v15 setName:v10];
    [(HFStateDumpEntry *)v15 setContext:v11];
    [(HFStateDumpEntry *)v15 setOptions:a6];
    v16 = [(HFStateDumpBuilder *)self entries];
    [v16 addObject:v15];
  }
}

- (void)appendBool:(BOOL)a3 withName:(id)a4
{
  if (a3)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [(HFStateDumpBuilder *)self appendObject:v4 withName:a4];
}

- (void)appendBool:(BOOL)a3 withName:(id)a4 ifEqualTo:(BOOL)a5
{
  if (a3 == a5)
  {
    [HFStateDumpBuilder appendBool:"appendBool:withName:" withName:?];
  }
}

- (id)buildPropertyListRepresentation
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = [(HFStateDumpBuilder *)self context];
  v5 = [v4 derivedOutputStyle];

  if ((v5 - 1) < 2)
  {
    a2 = [@"<" mutableCopy];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = [(HFStateDumpBuilder *)self _filteredEntries];
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v33;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v32 + 1) + 8 * i);
          v21 = [(HFStateDumpBuilder *)self _formattedObjectForEntry:v20 withRepresentation:1];
          v22 = [v21 description];
          v23 = v22;
          if (v21 && [v22 length])
          {
            if (v17)
            {
              [a2 appendString:{@", "}];
            }

            v24 = [v20 name];
            [a2 appendFormat:@"%@: %@", v24, v23];

            ++v17;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v16);
    }

    [a2 appendString:@">"];
  }

  else if (v5)
  {
    if (v5 == 3)
    {
      a2 = objc_opt_new();
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v6 = [(HFStateDumpBuilder *)self _filteredEntries];
      v7 = [v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v29;
        do
        {
          for (j = 0; j != v8; ++j)
          {
            if (*v29 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v28 + 1) + 8 * j);
            v12 = [(HFStateDumpBuilder *)self _formattedObjectForEntry:v11 withRepresentation:1];
            v13 = [v11 name];
            [a2 setObject:v12 forKeyedSubscript:v13];
          }

          v8 = [v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v8);
      }
    }
  }

  else
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"HFStateDumpBuilder.m" lineNumber:133 description:@"Unexpected output style!"];

    a2 = @"(internal error)";
  }

  v26 = *MEMORY[0x277D85DE8];

  return a2;
}

- (id)buildDescription
{
  v4 = MEMORY[0x277D2C8F8];
  v5 = [(HFStateDumpBuilder *)self object];
  v6 = [v4 builderWithObject:v5];

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __38__HFStateDumpBuilder_buildDescription__block_invoke;
  v21 = &unk_277DF3370;
  v22 = self;
  v7 = v6;
  v23 = v7;
  v8 = _Block_copy(&v18);
  v9 = [(HFStateDumpBuilder *)self context:v18];
  v10 = [v9 derivedOutputStyle];

  if ((v10 - 1) < 2)
  {
    v8[2](v8);
  }

  else if (v10)
  {
    if (v10 == 3)
    {
      v11 = [(HFStateDumpBuilder *)self context];
      v12 = [v11 multilinePrefix];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = &stru_2824B1A78;
      }

      [v7 appendBodySectionWithName:0 multilinePrefix:v14 block:v8];
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HFStateDumpBuilder.m" lineNumber:175 description:@"Unexpected output style!"];
  }

  v16 = [v7 build];

  return v16;
}

void __38__HFStateDumpBuilder_buildDescription__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [*(a1 + 32) _filteredEntries];
  v2 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v27;
    do
    {
      v5 = 0;
      do
      {
        if (*v27 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * v5);
        v7 = [*(a1 + 32) _formattedObjectForEntry:v6 withRepresentation:0];
        v8 = [v6 options];
        objc_opt_class();
        v9 = v7;
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        v12 = v9;
        if (v11)
        {
          goto LABEL_14;
        }

        objc_opt_class();
        v13 = v9;
        v14 = (objc_opt_isKindOfClass() & 1) != 0 ? v13 : 0;
        v15 = v14;

        v12 = [v15 allObjects];

        if (v12)
        {
LABEL_14:
          v16 = *(a1 + 40);
          v17 = [v6 name];
          [v16 appendArraySection:v12 withName:v17 skipIfEmpty:v8 & 1];
        }

        else
        {
          objc_opt_class();
          v12 = v13;
          if (objc_opt_isKindOfClass())
          {
            v18 = v12;
          }

          else
          {
            v18 = 0;
          }

          v19 = v18;

          v20 = *(a1 + 40);
          v17 = [v6 name];
          v21 = v8 & 1;
          if (v19)
          {
            [v20 appendDictionarySection:v19 withName:v17 skipIfEmpty:v21];
          }

          else
          {
            v22 = [v20 appendObject:v12 withName:v17 skipIfNil:v21];
            v12 = 0;
          }
        }

        ++v5;
      }

      while (v3 != v5);
      v23 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      v3 = v23;
    }

    while (v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)_formattedObjectForEntry:(id)a3 withRepresentation:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 object];
  v8 = [v6 context];
  v9 = v8;
  if (!v8)
  {
    v9 = [(HFStateDumpBuilder *)self context];
  }

  v10 = -[HFStateDumpBuilder _formattedObjectForObject:withRepresentation:context:options:](self, "_formattedObjectForObject:withRepresentation:context:options:", v7, a4, v9, [v6 options]);
  if (!v8)
  {
  }

  return v10;
}

- (id)_formattedObjectForObject:(id)a3 withRepresentation:(unint64_t)a4 context:(id)a5 options:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__HFStateDumpBuilder__formattedObjectForObject_withRepresentation_context_options___block_invoke;
  aBlock[3] = &unk_277E00B10;
  v12 = v11;
  v48 = v12;
  v49 = self;
  v13 = _Block_copy(aBlock);
  objc_opt_class();
  v14 = v10;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = v14;
  if (!v16)
  {
    objc_opt_class();
    v18 = v14;
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    v17 = [v20 allObjects];
  }

  objc_opt_class();
  v21 = v14;
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  if ((a6 & 1) != 0 && (v17 && ![v17 count] || v23 && !objc_msgSend(v23, "count")))
  {
    v31 = 0;
    goto LABEL_35;
  }

  v36 = a6;
  v37 = v12;
  v24 = a4;
  v25 = v21;
  if ([v25 conformsToProtocol:&unk_2825462B8])
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  if (v27)
  {
    v28 = v13[2](v13);
    v29 = [v27 hf_stateDumpBuilderWithContext:v28];

    if (v24 == 1)
    {
      v30 = [v29 buildPropertyListRepresentation];
      goto LABEL_26;
    }

    if (!v24)
    {
      v30 = [v29 buildDescription];
LABEL_26:
      v31 = v30;

LABEL_33:
      v12 = v37;
      goto LABEL_34;
    }
  }

  if (!v17)
  {
    if (v23)
    {
      v32 = objc_opt_new();
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __83__HFStateDumpBuilder__formattedObjectForObject_withRepresentation_context_options___block_invoke_3;
      v38[3] = &unk_277E00B60;
      v38[4] = self;
      v33 = v32;
      v39 = v33;
      v41 = v24;
      v40 = v13;
      [v23 enumerateKeysAndObjectsUsingBlock:v38];
      v34 = v40;
      v31 = v33;
    }

    else
    {
      v31 = [objc_opt_class() _coerceObjectToPropertyList:v25 options:v36];
    }

    goto LABEL_33;
  }

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __83__HFStateDumpBuilder__formattedObjectForObject_withRepresentation_context_options___block_invoke_2;
  v42[3] = &unk_277E00B38;
  v12 = v37;
  v43 = v37;
  v44 = self;
  v46 = v24;
  v45 = v13;
  v31 = [v17 na_map:v42];

LABEL_34:
LABEL_35:

  return v31;
}

id __83__HFStateDumpBuilder__formattedObjectForObject_withRepresentation_context_options___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  v3 = [*(a1 + 40) object];

  if (v3)
  {
    v4 = [*(a1 + 32) objectsToExclude];
    v5 = [*(a1 + 40) object];
    v6 = [v4 setByAddingObject:v5];
    [v2 setObjectsToExclude:v6];
  }

  v7 = [*(a1 + 32) multilinePrefix];
  v8 = v7;
  if (!v7)
  {
    v7 = &stru_2824B1A78;
  }

  v9 = [(__CFString *)v7 stringByAppendingString:@"  "];
  [v2 setMultilinePrefix:v9];

  return v2;
}

id __83__HFStateDumpBuilder__formattedObjectForObject_withRepresentation_context_options___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 mutableCopy];
  v6 = [*(a1 + 32) multilinePrefix];
  v7 = v6;
  if (!v6)
  {
    v6 = &stru_2824B1A78;
  }

  v8 = [(__CFString *)v6 stringByAppendingString:@"  "];
  [v5 setMultilinePrefix:v8];

  v9 = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = (*(*(a1 + 48) + 16))();
  v12 = [v10 _formattedObjectForObject:v4 withRepresentation:v9 context:v11 options:0];

  return v12;
}

void __83__HFStateDumpBuilder__formattedObjectForObject_withRepresentation_context_options___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v12 = [objc_opt_class() _coerceObjectToPropertyList:v7 options:0];

  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  v10 = (*(*(a1 + 48) + 16))();
  v11 = [v8 _formattedObjectForObject:v6 withRepresentation:v9 context:v10 options:0];

  [*(a1 + 40) setObject:v11 forKeyedSubscript:v12];
}

+ (id)_coerceObjectToPropertyList:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (!v8)
  {
    if (![v6 conformsToProtocol:&unk_2825812A8])
    {
      objc_opt_class();
      v11 = v6;
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      if (v13)
      {
        [v13 UUIDString];
      }

      else
      {
        [v11 description];
      }
      v10 = ;

      goto LABEL_21;
    }

    if (v4)
    {
      v9 = HFPrunePropertyList(v6);
    }

    else
    {
      v9 = v6;
    }

    goto LABEL_8;
  }

  if ((v4 & 1) == 0 || [v8 length])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Data (%luB)", objc_msgSend(v8, "length")];
LABEL_8:
    v10 = v9;
    goto LABEL_21;
  }

  v10 = 0;
LABEL_21:

  return v10;
}

- (id)_filteredEntries
{
  v3 = [(HFStateDumpBuilder *)self context];
  v4 = [v3 excludePrimaryID];

  v5 = [(HFStateDumpBuilder *)self entries];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 na_filter:&__block_literal_global_206];

    v6 = v7;
  }

  return v6;
}

@end