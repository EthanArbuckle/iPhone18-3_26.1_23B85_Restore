@interface CNAutocompleteLocalContactResultTransformBuilder
+ (id)localContactBuilderWithResultFactory:(id)factory;
+ (id)resultValueForContactPropertyValue:(id)value propertyKey:(id)key contact:(id)contact;
+ (id)serverContactBuilderWithResultFactory:(id)factory;
+ (id)suggestedContactBuilderWithResultFactory:(id)factory;
+ (int64_t)addressTypeForProperty:(id)property;
- (CNAutocompleteLocalContactResultTransformBuilder)initWithResultFactory:(id)factory;
- (id)build;
- (id)buildAggregateTransform;
- (id)makeTransformForProperty:(id)property;
- (void)addTransformForProperty:(id)property;
@end

@implementation CNAutocompleteLocalContactResultTransformBuilder

+ (id)localContactBuilderWithResultFactory:(id)factory
{
  factoryCopy = factory;
  v5 = [[self alloc] initWithResultFactory:factoryCopy];

  [v5 setBuiltContactType:0];

  return v5;
}

+ (id)suggestedContactBuilderWithResultFactory:(id)factory
{
  factoryCopy = factory;
  v5 = [[self alloc] initWithResultFactory:factoryCopy];

  [v5 setBuiltContactType:1];

  return v5;
}

+ (id)serverContactBuilderWithResultFactory:(id)factory
{
  factoryCopy = factory;
  v5 = [[self alloc] initWithResultFactory:factoryCopy];

  [v5 setBuiltContactType:2];

  return v5;
}

- (CNAutocompleteLocalContactResultTransformBuilder)initWithResultFactory:(id)factory
{
  factoryCopy = factory;
  v6 = [(CNAutocompleteLocalContactResultTransformBuilder *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_factory, factory);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    transforms = v7->_transforms;
    v7->_transforms = v8;

    v10 = v7;
  }

  return v7;
}

- (void)addTransformForProperty:(id)property
{
  v6 = [(CNAutocompleteLocalContactResultTransformBuilder *)self makeTransformForProperty:property];
  transforms = self->_transforms;
  v5 = _Block_copy(v6);
  [(NSMutableArray *)transforms _cn_addNonNilObject:v5];
}

- (id)makeTransformForProperty:(id)property
{
  propertyCopy = property;
  builtContactType = [(CNAutocompleteLocalContactResultTransformBuilder *)self builtContactType];
  v6 = self->_factory;
  v7 = objc_opt_class();
  v8 = objc_alloc_init(MEMORY[0x277CBDA78]);
  [v8 setStyle:0];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__CNAutocompleteLocalContactResultTransformBuilder_makeTransformForProperty___block_invoke;
  aBlock[3] = &unk_2781C4290;
  v16 = propertyCopy;
  v17 = v8;
  v19 = v7;
  v20 = builtContactType;
  v18 = v6;
  v9 = v6;
  v10 = v8;
  v11 = propertyCopy;
  v12 = _Block_copy(aBlock);
  v13 = [v12 copy];

  return v13;
}

id __77__CNAutocompleteLocalContactResultTransformBuilder_makeTransformForProperty___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 valueForKey:*(a1 + 32)];
  v5 = [*(a1 + 40) stringFromContact:v3];
  v6 = sNameComponentsFromContact_block_invoke(v5, v3);
  v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(a1 + 56) resultValueForContactPropertyValue:*(*(&v25 + 1) + 8 * v10) propertyKey:*(a1 + 32) contact:v3];
        v12 = *(a1 + 64);
        if (v12 == 1)
        {
          v13 = [*(a1 + 48) suggestedResultWithDisplayName:v5 value:v11 nameComponents:v6];
LABEL_10:
          v14 = v13;
          if (!v13)
          {
            goto LABEL_12;
          }

LABEL_11:
          [v24 addObject:v14];
          goto LABEL_12;
        }

        if (v12 == 2)
        {
          v13 = [*(a1 + 48) directoryServerResultWithDisplayName:v5 value:v11 nameComponents:v6];
          goto LABEL_10;
        }

        if ([v3 hasBeenPersisted])
        {
          v15 = [v3 linkIdentifier];
          v16 = v15;
          if (v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = [v3 identifier];
          }

          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        v14 = [*(a1 + 48) localContactResultWithDisplayName:v5 value:v11 nameComponents:v6 contactIdentifier:v18];

        if (v14)
        {
          goto LABEL_11;
        }

LABEL_12:

        ++v10;
      }

      while (v8 != v10);
      v19 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      v8 = v19;
    }

    while (v19);
  }

  v20 = [v24 copy];
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (int64_t)addressTypeForProperty:(id)property
{
  v3 = addressTypeForProperty__onceToken;
  propertyCopy = property;
  if (v3 != -1)
  {
    +[CNAutocompleteLocalContactResultTransformBuilder addressTypeForProperty:];
  }

  v5 = [addressTypeForProperty__sTypesByKeyMap objectForKey:propertyCopy];

  _cnac_autocompleteAddressTypeValue = [v5 _cnac_autocompleteAddressTypeValue];
  return _cnac_autocompleteAddressTypeValue;
}

void __75__CNAutocompleteLocalContactResultTransformBuilder_addressTypeForProperty___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v0 setObject:&unk_282793538 forKey:*MEMORY[0x277CBCFC0]];
  [v0 setObject:&unk_282793550 forKey:*MEMORY[0x277CBD098]];
  [v0 setObject:&unk_282793568 forKey:*MEMORY[0x277CBD038]];
  v1 = addressTypeForProperty__sTypesByKeyMap;
  addressTypeForProperty__sTypesByKeyMap = v0;
}

+ (id)resultValueForContactPropertyValue:(id)value propertyKey:(id)key contact:(id)contact
{
  v30 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  contactCopy = contact;
  v11 = [self addressTypeForProperty:keyCopy];
  v12 = objc_alloc_init(CNAutocompleteResultValue);
  label = [valueCopy label];
  [(CNAutocompleteResultValue *)v12 setLabel:label];

  if ([contactCopy hasBeenPersisted])
  {
    identifier = [valueCopy identifier];
    [(CNAutocompleteResultValue *)v12 setIdentifier:identifier];
  }

  [(CNAutocompleteResultValue *)v12 setAddressType:v11];
  switch(v11)
  {
    case 1:
      objc_opt_class();
      value = [valueCopy value];
      if (objc_opt_isKindOfClass())
      {
        v23 = value;
      }

      else
      {
        v23 = 0;
      }

      v17 = v23;

      if (v17)
      {
        [(CNAutocompleteResultValue *)v12 setAddress:v17];
      }

      break;
    case 2:
      objc_opt_class();
      value2 = [valueCopy value];
      if (objc_opt_isKindOfClass())
      {
        v21 = value2;
      }

      else
      {
        v21 = 0;
      }

      v17 = v21;

      if (!v17)
      {
        break;
      }

      stringValue = [v17 stringValue];
      [(CNAutocompleteResultValue *)v12 setAddress:stringValue];
LABEL_16:

      break;
    case 3:
      objc_opt_class();
      value3 = [valueCopy value];
      if (objc_opt_isKindOfClass())
      {
        v16 = value3;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (!v17)
      {
        break;
      }

      username = [v17 username];
      [(CNAutocompleteResultValue *)v12 setAddress:username];

      stringValue = [v17 service];
      [(CNAutocompleteResultValue *)v12 setInstantMessageAddressService:stringValue];
      goto LABEL_16;
    default:
      v17 = CNALoggingContextDebug();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412546;
        v27 = keyCopy;
        v28 = 2112;
        v29 = contactCopy;
        _os_log_impl(&dword_2155FE000, v17, OS_LOG_TYPE_DEFAULT, "Unknown address type for property: %@ contact: %@", &v26, 0x16u);
      }

      break;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)build
{
  v3 = [(NSMutableArray *)self->_transforms count];
  transforms = self->_transforms;
  if (v3 == 1)
  {
    lastObject = [(NSMutableArray *)transforms lastObject];
    v6 = [lastObject copy];
  }

  else
  {
    if ([(NSMutableArray *)transforms count]< 2)
    {
      buildAggregateTransform = _Block_copy(*MEMORY[0x277CFBCF0]);
    }

    else
    {
      buildAggregateTransform = [(CNAutocompleteLocalContactResultTransformBuilder *)self buildAggregateTransform];
    }

    v6 = buildAggregateTransform;
  }

  return v6;
}

- (id)buildAggregateTransform
{
  v2 = [(NSMutableArray *)self->_transforms copy];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__CNAutocompleteLocalContactResultTransformBuilder_buildAggregateTransform__block_invoke;
  aBlock[3] = &unk_2781C42E0;
  v8 = v2;
  v3 = v2;
  v4 = _Block_copy(aBlock);
  v5 = [v4 copy];

  return v5;
}

id __75__CNAutocompleteLocalContactResultTransformBuilder_buildAggregateTransform__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__CNAutocompleteLocalContactResultTransformBuilder_buildAggregateTransform__block_invoke_2;
  v9[3] = &unk_2781C42B8;
  v10 = v3;
  v5 = v3;
  v6 = [v4 _cn_map:v9];
  v7 = [v6 _cn_flatten];

  return v7;
}

@end