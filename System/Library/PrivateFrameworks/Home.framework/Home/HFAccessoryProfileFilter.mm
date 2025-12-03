@interface HFAccessoryProfileFilter
+ (BOOL)_shouldIncludeObject:(id)object passingNullableFilterSet:(id)set;
+ (id)filterProfiles:(id)profiles options:(id)options;
@end

@implementation HFAccessoryProfileFilter

+ (id)filterProfiles:(id)profiles options:(id)options
{
  optionsCopy = options;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__HFAccessoryProfileFilter_filterProfiles_options___block_invoke;
  v10[3] = &unk_277DFDC00;
  v11 = optionsCopy;
  selfCopy = self;
  v7 = optionsCopy;
  v8 = [profiles na_filter:v10];

  return v8;
}

uint64_t __51__HFAccessoryProfileFilter_filterProfiles_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = [v3 accessory];
  v6 = [*(a1 + 32) byAccessories];
  if ([v4 _shouldIncludeObject:v5 passingNullableFilterSet:v6])
  {
    v7 = *(a1 + 40);
    v8 = [v3 accessory];
    v9 = [v8 category];
    v10 = [v9 categoryType];
    v11 = [*(a1 + 32) byCategoryTypes];
    if ([v7 _shouldIncludeObject:v10 passingNullableFilterSet:v11])
    {
      v44 = v8;
      v12 = *(a1 + 40);
      v13 = [*(a1 + 32) byClasses];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __51__HFAccessoryProfileFilter_filterProfiles_options___block_invoke_2;
      v45[3] = &unk_277DF9908;
      v14 = v3;
      v46 = v14;
      v43 = v13;
      v15 = [v13 na_any:v45];
      v42 = [*(a1 + 32) byClasses];
      if ([v12 _shouldIncludeObjectPassingFilter:v15 shouldApplyFilter:v42 != 0])
      {
        v16 = *(a1 + 40);
        v41 = [v14 accessory];
        if ([v16 _shouldIncludeObjectPassingFilter:objc_msgSend(v41 shouldApplyFilter:{"hf_effectiveIsFavorite"), objc_msgSend(*(a1 + 32), "byFavorites")}])
        {
          v17 = *(a1 + 40);
          v39 = [v14 accessory];
          v18 = [v39 manufacturer];
          [*(a1 + 32) byManufacturers];
          v38 = v40 = v18;
          if ([v17 _shouldIncludeObject:v18 passingNullableFilterSet:v38])
          {
            v19 = *(a1 + 40);
            v37 = [v14 accessory];
            v20 = [v37 model];
            v21 = [*(a1 + 32) byModels];
            v36 = v20;
            v22 = v20;
            v23 = v21;
            if ([v19 _shouldIncludeObject:v22 passingNullableFilterSet:v21])
            {
              v33 = *(a1 + 40);
              v35 = [v14 accessory];
              v24 = [v35 room];
              v25 = [*(a1 + 32) byRooms];
              v26 = v33;
              v32 = v25;
              v34 = v24;
              if ([v26 _shouldIncludeObject:v24 passingNullableFilterSet:?])
              {
                v27 = [*(a1 + 32) byFilter];
                if (v27)
                {
                  v31 = v27;
                  v28 = [*(a1 + 32) byFilter];
                  v29 = (v28)[2](v28, v14);

                  v27 = v31;
                }

                else
                {
                  v29 = 1;
                }

                v8 = v44;
              }

              else
              {
                v29 = 0;
                v8 = v44;
              }
            }

            else
            {
              v29 = 0;
              v8 = v44;
            }
          }

          else
          {
            v29 = 0;
            v8 = v44;
          }
        }

        else
        {
          v29 = 0;
          v8 = v44;
        }
      }

      else
      {
        v29 = 0;
        v8 = v44;
      }
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

+ (BOOL)_shouldIncludeObject:(id)object passingNullableFilterSet:(id)set
{
  if (object)
  {
    object = [set containsObject:?];
  }

  return [self _shouldIncludeObjectPassingFilter:object shouldApplyFilter:set != 0];
}

@end