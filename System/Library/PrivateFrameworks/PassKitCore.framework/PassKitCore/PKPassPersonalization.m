@interface PKPassPersonalization
+ (PKPassPersonalization)passPersonalizationWithPassBundle:(id)a3;
- (PKPassPersonalization)initWithCoder:(id)a3;
- (PKPassPersonalization)initWithDictionary:(id)a3 bundle:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassPersonalization

+ (PKPassPersonalization)passPersonalizationWithPassBundle:(id)a3
{
  v4 = a3;
  v5 = [v4 URLForResource:@"personalization" withExtension:@"json"];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5 options:0 error:0];
    if (v6)
    {
      v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:0];
    }

    else
    {
      v7 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[a1 alloc] initWithDictionary:v7 bundle:v4];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PKPassPersonalization)initWithDictionary:(id)a3 bundle:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = PKPassPersonalization;
  v8 = [(PKPassPersonalization *)&v29 init];
  if (v8)
  {
    v9 = [v6 PKStringForKey:@"termsAndConditions"];
    v10 = [v9 copy];
    termsAndConditions = v8->_termsAndConditions;
    v8->_termsAndConditions = v10;

    v12 = [v6 PKStringForKey:@"description"];
    v13 = [v6 PKArrayForKey:@"requiredPersonalizationFields"];
    if (v12)
    {
      v14 = PKLocalizedPersonalizationStringForPassBundle(v12, v7);
      v15 = [v14 copy];
      localizedDescription = v8->_localizedDescription;
      v8->_localizedDescription = v15;
    }

    if (v13)
    {
      v26 = v12;
      v27 = v7;
      v28 = v6;
      v25 = v13;
      v17 = v13;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v18 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = 0;
        v21 = *v31;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v31 != v21)
            {
              objc_enumerationMutation(v17);
            }

            v23 = *(*(&v30 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v23 caseInsensitiveCompare:@"PKPassPersonalizationFieldName"])
              {
                if ([v23 caseInsensitiveCompare:@"PKPassPersonalizationFieldPostalCode"])
                {
                  if ([v23 caseInsensitiveCompare:@"PKPassPersonalizationFieldEmailAddress"])
                  {
                    if (![v23 caseInsensitiveCompare:@"PKPassPersonalizationFieldPhoneNumber"])
                    {
                      v20 |= 8uLL;
                    }
                  }

                  else
                  {
                    v20 |= 4uLL;
                  }
                }

                else
                {
                  v20 |= 2uLL;
                }
              }

              else
              {
                v20 |= 1uLL;
              }
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v19);
      }

      else
      {
        v20 = 0;
      }

      v7 = v27;
      v8->_requiredPersonalizationFields = v20;
      v6 = v28;
      v13 = v25;
      v12 = v26;
    }
  }

  return v8;
}

- (PKPassPersonalization)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPassPersonalization;
  v5 = [(PKPassPersonalization *)&v13 init];
  if (v5)
  {
    v5->_requiredPersonalizationFields = [v4 decodeIntegerForKey:@"requiredPersonalizationFields"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"description"];
    v7 = [v6 copy];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"termsAndConditions"];
    v10 = [v9 copy];
    termsAndConditions = v5->_termsAndConditions;
    v5->_termsAndConditions = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  requiredPersonalizationFields = self->_requiredPersonalizationFields;
  v5 = a3;
  [v5 encodeInteger:requiredPersonalizationFields forKey:@"requiredPersonalizationFields"];
  [v5 encodeObject:self->_localizedDescription forKey:@"description"];
  [v5 encodeObject:self->_termsAndConditions forKey:@"termsAndConditions"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PKPassPersonalization);
  v4->_requiredPersonalizationFields = self->_requiredPersonalizationFields;
  v5 = [(NSString *)self->_localizedDescription copy];
  localizedDescription = v4->_localizedDescription;
  v4->_localizedDescription = v5;

  v7 = [(NSString *)self->_termsAndConditions copy];
  termsAndConditions = v4->_termsAndConditions;
  v4->_termsAndConditions = v7;

  return v4;
}

- (id)description
{
  requiredPersonalizationFields = self->_requiredPersonalizationFields;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = v4;
  if (requiredPersonalizationFields)
  {
    [v4 addObject:@"PKPassPersonalizationFieldName"];
    if ((requiredPersonalizationFields & 2) == 0)
    {
LABEL_3:
      if ((requiredPersonalizationFields & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((requiredPersonalizationFields & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"PKPassPersonalizationFieldPostalCode"];
  if ((requiredPersonalizationFields & 4) == 0)
  {
LABEL_4:
    if ((requiredPersonalizationFields & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v5 addObject:@"PKPassPersonalizationFieldEmailAddress"];
  if ((requiredPersonalizationFields & 8) != 0)
  {
LABEL_5:
    [v5 addObject:@"PKPassPersonalizationFieldPhoneNumber"];
  }

LABEL_6:
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v5 componentsJoinedByString:{@", "}];
  v8 = [v6 stringWithFormat:@"Required Fields:[%@], Localized Description: %@", v7, self->_localizedDescription];

  return v8;
}

@end