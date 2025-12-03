@interface PKPassVerificationFieldsMethod
- (PKPassVerificationFieldsMethod)initWithCoder:(id)coder;
- (PKPassVerificationFieldsMethod)initWithDictionary:(id)dictionary;
- (PKPassVerificationFieldsMethod)initWithFieldIdentifiers:(id)identifiers fieldConfiguration:(id)configuration;
- (void)_appendDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassVerificationFieldsMethod

- (PKPassVerificationFieldsMethod)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"fields"];
  v6 = objc_opt_class();
  v7 = [dictionaryCopy PKDictionaryOfKeyClass:v6 valueClass:objc_opt_class() ForKey:@"fieldOptions"];

  v8 = [(PKPassVerificationFieldsMethod *)self initWithFieldIdentifiers:v5 fieldConfiguration:v7];
  return v8;
}

- (PKPassVerificationFieldsMethod)initWithFieldIdentifiers:(id)identifiers fieldConfiguration:(id)configuration
{
  v29 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  configurationCopy = configuration;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = identifiersCopy;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = [configurationCopy objectForKeyedSubscript:v14];
        v16 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:v14 configuration:v15];
        [v8 safelyAddObject:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  if (![v8 count])
  {
    v17 = 0;
    goto LABEL_12;
  }

  v23.receiver = self;
  v23.super_class = PKPassVerificationFieldsMethod;
  v17 = [(PKPassVerificationMethod *)&v23 _initWithType:7 identifier:@"fields" requiresUserInteraction:1];
  if (v17)
  {
    v18 = [v8 copy];
    v19 = *(v17 + 7);
    *(v17 + 7) = v18;

    objc_storeStrong(v17 + 5, identifiers);
    v20 = configurationCopy;
    self = *(v17 + 6);
    *(v17 + 6) = v20;
LABEL_12:
  }

  return v17;
}

- (PKPassVerificationFieldsMethod)initWithCoder:(id)coder
{
  v34 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = PKPassVerificationFieldsMethod;
  v5 = [(PKPassVerificationMethod *)&v32 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"fieldIdentifiers"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v7 setWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
    v27 = coderCopy;
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"fieldConfiguration"];

    fieldConfiguration = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = v6;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          v20 = [(NSDictionary *)v12 objectForKeyedSubscript:v19];
          v21 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:v19 configuration:v20];
          [(NSArray *)fieldConfiguration safelyAddObject:v21];
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v16);
    }

    if ([(NSArray *)fieldConfiguration count])
    {
      fields = v5->_fields;
      v5->_fields = fieldConfiguration;
      v23 = fieldConfiguration;

      fieldIdentifiers = v5->_fieldIdentifiers;
      v5->_fieldIdentifiers = v14;
      v25 = v14;

      fieldConfiguration = v5->_fieldConfiguration;
      v5->_fieldConfiguration = v12;
      v12 = v25;
      v14 = v23;
    }

    else
    {

      v5 = 0;
    }

    coderCopy = v27;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassVerificationFieldsMethod;
  coderCopy = coder;
  [(PKPassVerificationMethod *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_fieldIdentifiers forKey:{@"fieldIdentifiers", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_fieldConfiguration forKey:@"fieldConfiguration"];
}

- (void)_appendDescription:(id)description
{
  v5.receiver = self;
  v5.super_class = PKPassVerificationFieldsMethod;
  descriptionCopy = description;
  [(PKPassVerificationMethod *)&v5 _appendDescription:descriptionCopy];
  [descriptionCopy appendFormat:@"fields: '%@'; ", self->_fields];
}

@end