@interface PKDigitalIssuanceServiceProviderProduct
- (PKDigitalIssuanceServiceProviderProduct)initWithDictionary:(id)dictionary;
@end

@implementation PKDigitalIssuanceServiceProviderProduct

- (PKDigitalIssuanceServiceProviderProduct)initWithDictionary:(id)dictionary
{
  v33 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v31.receiver = self;
    v31.super_class = PKDigitalIssuanceServiceProviderProduct;
    v5 = [(PKDigitalIssuanceServiceProviderProduct *)&v31 init];
    if (v5)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      identifier = v5->_identifier;
      v5->_identifier = uUIDString;

      v9 = [dictionaryCopy PKStringForKey:@"localizedDisplayName"];
      localizedDisplayName = v5->_localizedDisplayName;
      v5->_localizedDisplayName = v9;

      v11 = [dictionaryCopy PKStringForKey:@"localizedDescription"];
      localizedDescription = v5->_localizedDescription;
      v5->_localizedDescription = v11;

      v13 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"items"];
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end