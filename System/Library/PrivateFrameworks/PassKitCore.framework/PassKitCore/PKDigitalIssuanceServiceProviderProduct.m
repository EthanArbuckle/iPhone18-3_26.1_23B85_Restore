@interface PKDigitalIssuanceServiceProviderProduct
- (PKDigitalIssuanceServiceProviderProduct)initWithDictionary:(id)a3;
@end

@implementation PKDigitalIssuanceServiceProviderProduct

- (PKDigitalIssuanceServiceProviderProduct)initWithDictionary:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v31.receiver = self;
    v31.super_class = PKDigitalIssuanceServiceProviderProduct;
    v5 = [(PKDigitalIssuanceServiceProviderProduct *)&v31 init];
    if (v5)
    {
      v6 = [MEMORY[0x1E696AFB0] UUID];
      v7 = [v6 UUIDString];
      identifier = v5->_identifier;
      v5->_identifier = v7;

      v9 = [v4 PKStringForKey:@"localizedDisplayName"];
      localizedDisplayName = v5->_localizedDisplayName;
      v5->_localizedDisplayName = v9;

      v11 = [v4 PKStringForKey:@"localizedDescription"];
      localizedDescription = v5->_localizedDescription;
      v5->_localizedDescription = v11;

      v13 = [v4 PKArrayContaining:objc_opt_class() forKey:@"items"];
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v28;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v28 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v27 + 1) + 8 * i);
            v21 = [PKDigitalIssuanceServiceProviderItem alloc];
            v22 = [(PKDigitalIssuanceServiceProviderItem *)v21 initWithDictionary:v20, v27];
            [v14 safelyAddObject:v22];
          }

          v17 = [v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v17);
      }

      v23 = [v14 copy];
      items = v5->_items;
      v5->_items = v23;
    }

    self = v5;
    v25 = self;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

@end