@interface MTUtils
- (id)applyFieldsMap:(id)a3 sectionName:(id)a4;
@end

@implementation MTUtils

- (id)applyFieldsMap:(id)a3 sectionName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTObject *)self metricsKit];
  v9 = [v8 config];
  v10 = [v9 sources];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__MTUtils_applyFieldsMap_sectionName___block_invoke;
  v15[3] = &unk_2798CD458;
  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v11 = v7;
  v12 = v6;
  v13 = [v10 thenWithBlock:v15];

  return v13;
}

id __38__MTUtils_applyFieldsMap_sectionName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) metricsKit];
  v5 = [v4 config];
  v6 = [v5 configValueForKeyPath:@"fieldsMap" sources:v3];

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v22 = 0;
  v9 = [MTEventFieldsUtil applyFieldsMap:v6 data:v7 sectionName:v8 error:&v22];
  v10 = v22;
  if (!v9)
  {
    v11 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [*(a1 + 32) metricsKit];
      v13 = [v12 config];
      v14 = [@"treatmentProfiles." stringByAppendingString:*(a1 + 48)];
      v15 = [v13 configValueForKeyPath:v14 sources:v3];

      if (v15)
      {
        v16 = [MTTreatmentProfile treatmentProfileWithConfigData:v15];
        v17 = v16;
        if (v16)
        {
          v9 = [v16 performTreatments:*(a1 + 40)];

          v10 = 0;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  if (v10)
  {
    v18 = [MTPromise promiseWithError:v10];
  }

  else
  {
    if (v9)
    {
      v19 = v9;
    }

    else
    {
      v19 = MEMORY[0x277CBEC10];
    }

    v18 = [MTPromise promiseWithResult:v19];
  }

  v20 = v18;

  return v20;
}

@end