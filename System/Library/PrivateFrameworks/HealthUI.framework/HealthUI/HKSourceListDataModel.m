@interface HKSourceListDataModel
- (HKSourceListDataModel)initWithSourceModels:(id)a3;
- (HKSourceListDataModel)initWithSources:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_sortSources:(id)a3;
@end

@implementation HKSourceListDataModel

- (HKSourceListDataModel)initWithSources:(id)a3
{
  v4 = [a3 hk_map:&__block_literal_global_49];
  v5 = [(HKSourceListDataModel *)self initWithSourceModels:v4];

  return v5;
}

HKSourceDataModel *__41__HKSourceListDataModel_initWithSources___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HKSourceDataModel alloc] initWithSource:v2];

  [(HKSourceDataModel *)v3 setInstalled:1];

  return v3;
}

- (HKSourceListDataModel)initWithSourceModels:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HKSourceListDataModel;
  v5 = [(HKSourceListDataModel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HKSourceListDataModel *)v5 _sortSources:v4];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:self->_allSources copyItems:1];
  v5 = [v4 allObjects];

  v6 = [[HKSourceListDataModel allocWithZone:?], "initWithSourceModels:", v5];
  return v6;
}

- (void)_sortSources:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a3;
  context = objc_autoreleasePoolPush();
  v31 = v3;
  v4 = [v3 mutableCopy];
  [v4 sortUsingComparator:&__block_literal_global_341_0];
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    v9 = *MEMORY[0x1E696C820];
    v37 = *MEMORY[0x1E696C828];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        v12 = [v11 source];
        if (([v12 _isHidden] & 1) == 0)
        {
          v13 = [v12 bundleIdentifier];
          if ([v13 isEqualToString:v9])
          {
          }

          else
          {
            v14 = [v12 bundleIdentifier];
            v15 = [v14 isEqualToString:v37];

            if ((v15 & 1) == 0)
            {
              if ([v12 _isApplication])
              {
                if ([v11 installed])
                {
                  v16 = v36;
                }

                else
                {
                  v16 = v35;
                }
              }

              else if ([v12 _isResearchStudy])
              {
                v16 = v34;
              }

              else if ([v12 _isClinicalSource])
              {
                v16 = v32;
              }

              else
              {
                v16 = v33;
              }

              [v16 addObject:v11];
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v7);
  }

  v17 = [MEMORY[0x1E695DFD8] setWithArray:v5];
  allSources = self->_allSources;
  self->_allSources = v17;

  v19 = [v36 copy];
  orderedAppSources = self->_orderedAppSources;
  self->_orderedAppSources = v19;

  v21 = [v35 copy];
  orderedUninstalledAppSources = self->_orderedUninstalledAppSources;
  self->_orderedUninstalledAppSources = v21;

  v23 = [v33 copy];
  orderedDeviceSources = self->_orderedDeviceSources;
  self->_orderedDeviceSources = v23;

  v25 = [v34 copy];
  orderedResearchStudySources = self->_orderedResearchStudySources;
  self->_orderedResearchStudySources = v25;

  v27 = [v32 copy];
  orderedClinicalSources = self->_orderedClinicalSources;
  self->_orderedClinicalSources = v27;

  objc_autoreleasePoolPop(context);
}

uint64_t __38__HKSourceListDataModel__sortSources___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 source];
  v6 = [v5 name];
  v7 = [v4 source];

  v8 = [v7 name];
  v9 = [v6 localizedCaseInsensitiveCompare:v8];

  return v9;
}

@end