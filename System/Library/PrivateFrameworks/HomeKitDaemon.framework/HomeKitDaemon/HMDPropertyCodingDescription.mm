@interface HMDPropertyCodingDescription
- (BOOL)shouldIncludeWithConditions:(id)conditions;
- (NSString)shortDescription;
- (id)initWithModel:(void *)model property:;
@end

@implementation HMDPropertyCodingDescription

- (id)initWithModel:(void *)model property:
{
  v36 = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = HMDPropertyCodingDescription;
  v5 = objc_msgSendSuper2(&v30, sel_init);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(v5 + 1, model);
    v7 = [(HMDManagedObjectCodingModel *)a2 codingKeyForProperty:model];
    v8 = v6[2];
    v6[2] = v7;

    userInfo = [model userInfo];
    v10 = [userInfo objectForKeyedSubscript:*(a2 + 112)];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      v13 = *(a2 + 40);
      v14 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_."];
      invertedSet = [v14 invertedSet];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v28 = v12;
      obj = [v12 componentsSeparatedByString:@"|"];
      v16 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v16)
      {
        v17 = v16;
        v26 = a2;
        modelCopy = model;
        v18 = 0;
        v19 = *v32;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v32 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v31 + 1) + 8 * i);
            if (![v21 length] || objc_msgSend(v21, "rangeOfCharacterFromSet:", invertedSet) != 0x7FFFFFFFFFFFFFFFLL)
            {
              v25 = *(v26 + 112);
              [modelCopy entity];
              [objc_claimAutoreleasedReturnValue() name];
              objc_claimAutoreleasedReturnValue();
              [modelCopy name];
              objc_claimAutoreleasedReturnValue();
              _HMFPreconditionFailureWithFormat();
LABEL_25:
              _HMFPreconditionFailure();
            }

            objc_opt_self();
            v22 = [v13 indexOfObject:v21];
            if (v22 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v22 = [v13 count];
              [v13 addObject:v21];
            }

            objc_opt_self();
            if (v22 >= 0x40)
            {
              goto LABEL_25;
            }

            v18 |= 1 << v22;
          }

          v17 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v17);
      }

      else
      {
        v18 = 0;
      }

      v12 = v28;
    }

    else
    {
      v18 = 0;
    }

    v6[3] = v18;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v6;
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  entity = [(NSPropertyDescription *)self->_property entity];
  name = [entity name];
  name2 = [(NSPropertyDescription *)self->_property name];
  v7 = [v3 stringWithFormat:@"%@.%@", name, name2];

  return v7;
}

- (BOOL)shouldIncludeWithConditions:(id)conditions
{
  conditions = self->_conditions;
  if (!conditions)
  {
    return 1;
  }

  if (conditions)
  {
    v4 = *(conditions + 2);
  }

  else
  {
    v4 = 0;
  }

  return (v4 & conditions) != 0;
}

@end