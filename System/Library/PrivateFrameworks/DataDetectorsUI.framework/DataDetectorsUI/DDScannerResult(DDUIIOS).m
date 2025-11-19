@interface DDScannerResult(DDUIIOS)
- (uint64_t)ddui_isEquivalentToResult:()DDUIIOS;
@end

@implementation DDScannerResult(DDUIIOS)

- (uint64_t)ddui_isEquivalentToResult:()DDUIIOS
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 type];
    v6 = [v4 type];
    v7 = [v5 isEqualToString:v6];

    if (!v7)
    {
      v13 = 0;
      goto LABEL_19;
    }

    v8 = [a1 value];
    v9 = [v8 lowercaseString];
    v10 = [v4 value];
    v11 = [v10 lowercaseString];
    v12 = [v9 isEqual:v11];

    if (v12)
    {
      v13 = 1;
LABEL_19:

      goto LABEL_20;
    }

    [a1 coreResult];
    v14 = *MEMORY[0x277D04140];
    if (DDResultHasType())
    {
      v27 = 0;
      v28 = 0.0;
      if (DDResultCurrencyExtraction())
      {
        v25 = 0;
        v26 = 0.0;
        [v4 coreResult];
        if (DDResultCurrencyExtraction())
        {
          if (v28 == v26)
          {
            v13 = [v27 isEqualToString:{v25, v28}];
            v15 = 0;
LABEL_18:

            goto LABEL_19;
          }
        }
      }
    }

    else
    {
      v16 = *MEMORY[0x277D04168];
      if (!DDResultHasType())
      {
        v24 = 0;
        v13 = [a1 getPhoneValue:&v24 label:0];
        v15 = v24;
        if (v13)
        {
          v23 = 0;
          v18 = [v4 getPhoneValue:&v23 label:0];
          v19 = v23;
          v20 = v19;
          v13 = 0;
          if (v18 && v19)
          {
            if (v15 == v19)
            {
              v13 = 1;
            }

            else if ([v15 containsString:@"@"])
            {
              v21 = [v15 lowercaseString];
              v22 = [v20 lowercaseString];
              v13 = [v21 isEqualToString:v22];
            }

            else
            {
              v13 = [DDContactUtils phoneNumber:v15 isEqualToPhoneNumber:v20];
            }
          }
        }

        goto LABEL_18;
      }

      v27 = 0;
      v28 = 0.0;
      if (DDResultPhysicalUnitsExtraction())
      {
        v25 = 0;
        v26 = 0.0;
        [v4 coreResult];
        if (DDResultPhysicalUnitsExtraction())
        {
          if (v28 == v26)
          {
            v13 = [v27 isEqualToArray:{v25, v28}];
            v15 = 0;
            goto LABEL_18;
          }
        }
      }
    }

    v13 = 0;
    v15 = 0;
    goto LABEL_18;
  }

  v13 = 0;
LABEL_20:

  return v13;
}

@end