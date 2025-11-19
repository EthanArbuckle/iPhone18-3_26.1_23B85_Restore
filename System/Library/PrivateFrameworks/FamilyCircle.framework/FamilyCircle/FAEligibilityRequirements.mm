@interface FAEligibilityRequirements
- (FAEligibilityRequirements)initWithCoder:(id)a3;
- (FAEligibilityRequirements)initWithDictionaryRepresentation:(id)a3;
- (FAEligibilityRequirements)initWithPropertyRequirements:(id)a3;
@end

@implementation FAEligibilityRequirements

- (FAEligibilityRequirements)initWithDictionaryRepresentation:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = [FAPropertyEligibilityRequirements alloc];
        v13 = [v6 objectForKeyedSubscript:{v11, v19}];
        v14 = [(FAPropertyEligibilityRequirements *)v12 initWithPropertyName:v11 dictionaryRepresentation:v13];
        [v5 setObject:v14 forKeyedSubscript:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];
  v16 = [(FAEligibilityRequirements *)self initWithPropertyRequirements:v15];

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (FAEligibilityRequirements)initWithPropertyRequirements:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FAEligibilityRequirements;
  v5 = [(FAEligibilityRequirements *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    properties = v5->_properties;
    v5->_properties = v6;
  }

  return v5;
}

- (FAEligibilityRequirements)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FAEligibilityRequirements *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"properties"];
    properties = v5->_properties;
    v5->_properties = v10;
  }

  return v5;
}

@end