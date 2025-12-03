@interface PKPaymentTransactionMapsUpdateProcessorRequest
- (BOOL)coalesceWithConfigurations:(id)configurations;
- (PKPaymentTransactionMapsUpdateProcessorRequest)initWithConfigurations:(id)configurations;
- (id)mapIdentifiers;
@end

@implementation PKPaymentTransactionMapsUpdateProcessorRequest

- (PKPaymentTransactionMapsUpdateProcessorRequest)initWithConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v5 = [(PKPaymentTransactionMapsUpdateProcessorRequest *)self init];
  if (v5)
  {
    v6 = [configurationsCopy mutableCopy];
    configurations = v5->_configurations;
    v5->_configurations = v6;
  }

  return v5;
}

- (BOOL)coalesceWithConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  v5 = [(NSMutableArray *)self->_configurations count];
  v6 = 100 - v5;
  if (100 - v5 >= [configurationsCopy count])
  {
    v6 = [configurationsCopy count];
  }

  if (v5 == 100 || v6 < 1)
  {
    v8 = 0;
  }

  else if ([configurationsCopy count])
  {
    do
    {
      anyObject = [configurationsCopy anyObject];
      [(NSMutableArray *)self->_configurations addObject:anyObject];
      [configurationsCopy removeObject:anyObject];

      --v6;
    }

    while (v6);
    v8 = [configurationsCopy count] == 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)mapIdentifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_configurations;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        [v9 coordinate];
        v11 = v10;
        [v9 coordinate];
        v13 = [objc_alloc(off_10091CFB0()) initWithMUID:objc_msgSend(v9 resultProviderID:"muid") coordinate:{objc_msgSend(v9, "resultProviderID"), v11, v12}];
        [v3 addObject:v13];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = [v3 copy];

  return v14;
}

@end