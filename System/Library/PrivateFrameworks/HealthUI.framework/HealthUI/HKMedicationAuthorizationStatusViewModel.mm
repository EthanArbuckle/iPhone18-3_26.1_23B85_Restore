@interface HKMedicationAuthorizationStatusViewModel
+ (BOOL)areAllAuthorizedForMedicationViewModels:(id)models;
+ (id)authorizationStatusesFromMedicationViewModels:(id)models;
+ (void)updateAllMedicationViewModels:(id)models authorized:(BOOL)authorized;
- (HKMedicationAuthorizationStatusViewModel)initWithMedicationName:(id)name authorized:(BOOL)authorized requested:(BOOL)requested type:(id)type identifier:(id)identifier;
@end

@implementation HKMedicationAuthorizationStatusViewModel

- (HKMedicationAuthorizationStatusViewModel)initWithMedicationName:(id)name authorized:(BOOL)authorized requested:(BOOL)requested type:(id)type identifier:(id)identifier
{
  nameCopy = name;
  typeCopy = type;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = HKMedicationAuthorizationStatusViewModel;
  v16 = [(HKMedicationAuthorizationStatusViewModel *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_medicationName, name);
    v17->_authorized = authorized;
    v17->_requested = requested;
    objc_storeStrong(&v17->_type, type);
    objc_storeStrong(&v17->_identifier, identifier);
  }

  return v17;
}

+ (BOOL)areAllAuthorizedForMedicationViewModels:(id)models
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  modelsCopy = models;
  v4 = [modelsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(modelsCopy);
        }

        if (![*(*(&v10 + 1) + 8 * i) isAuthorized])
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [modelsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  return v8;
}

+ (void)updateAllMedicationViewModels:(id)models authorized:(BOOL)authorized
{
  authorizedCopy = authorized;
  v17 = *MEMORY[0x1E69E9840];
  modelsCopy = models;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [modelsCopy mutableCopy];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) setAuthorized:{authorizedCopy, v12}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = [modelsCopy copy];
}

+ (id)authorizationStatusesFromMedicationViewModels:(id)models
{
  v20 = *MEMORY[0x1E69E9840];
  modelsCopy = models;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(modelsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = modelsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 isAuthorized])
        {
          v11 = &unk_1F4384618;
        }

        else
        {
          v11 = &unk_1F4384630;
        }

        identifier = [v10 identifier];
        [v4 setObject:v11 forKeyedSubscript:identifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

@end