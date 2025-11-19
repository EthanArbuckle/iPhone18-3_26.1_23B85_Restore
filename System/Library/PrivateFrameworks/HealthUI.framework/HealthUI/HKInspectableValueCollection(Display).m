@interface HKInspectableValueCollection(Display)
+ (void)parseUncodedValueCollection:()Display referenceRanges:withCompletion:;
+ (void)parseValueCollection:()Display referenceRanges:healthRecordsStore:withCompletion:;
- (id)_stringsForValues:()Display;
- (id)displayString;
@end

@implementation HKInspectableValueCollection(Display)

- (id)displayString
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [a1 collectionType];
  if ((v3 - 2) < 2)
  {
    v5 = [a1 inspectableValues];
    v6 = [a1 _stringsForValues:v5];
    v1 = [a1 _joinValueStrings:v6];
LABEL_7:

    goto LABEL_8;
  }

  if (v3 == 1)
  {
    v5 = [a1 min];
    v6 = [v5 displayString];
    v11[0] = v6;
    v7 = [a1 max];
    v8 = [v7 displayString];
    v11[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v1 = [a1 _joinValueStrings:v9];

    goto LABEL_7;
  }

  if (!v3)
  {
    v4 = [a1 inspectableValue];
    v1 = [v4 displayString];
  }

LABEL_8:

  return v1;
}

- (id)_stringsForValues:()Display
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) displayString];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (void)parseValueCollection:()Display referenceRanges:healthRecordsStore:withCompletion:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v12 || [v10 collectionType])
  {
    goto LABEL_3;
  }

  v14 = [v10 inspectableValue];
  if ([v14 valueType] == 7)
  {
  }

  else
  {
    v15 = [v10 inspectableValue];
    v16 = [v15 valueType];

    if (v16 != 9)
    {
LABEL_3:
      [a1 parseUncodedValueCollection:v10 referenceRanges:v11 withCompletion:v13];
      goto LABEL_4;
    }
  }

  v17 = [v10 inspectableValue];
  v18 = [v17 valueType];

  v19 = [v10 inspectableValue];
  v20 = v19;
  if (v18 == 9)
  {
    v21 = [v19 dataAbsentReason];
    v22 = [v21 localizedPreferredName];

    if (![(__CFString *)v22 length])
    {
      _HKInitializeLogging();
      v23 = *MEMORY[0x1E696B948];
      if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_FAULT))
      {
        [HKInspectableValueCollection(Display) parseValueCollection:v23 referenceRanges:v10 healthRecordsStore:? withCompletion:?];
      }

      v22 = &stru_1F42FFBE0;
    }

    v13[2](v13, 0, v22, &stru_1F42FFBE0, 1);
  }

  else
  {
    v24 = [v19 ontologyConcept];
    v22 = [v24 localizedPreferredName];

    if (![(__CFString *)v22 length])
    {
      _HKInitializeLogging();
      v25 = *MEMORY[0x1E696B948];
      if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_FAULT))
      {
        [HKInspectableValueCollection(Display) parseValueCollection:v25 referenceRanges:v10 healthRecordsStore:? withCompletion:?];
      }

      v22 = &stru_1F42FFBE0;
    }

    v13[2](v13, 0, v22, &stru_1F42FFBE0, 0);
  }

LABEL_4:
}

+ (void)parseUncodedValueCollection:()Display referenceRanges:withCompletion:
{
  v11 = a5;
  if (a3)
  {
    v7 = a3;
    v8 = [v7 valueInRangeWithReferenceRanges:a4 includeUnitString:1];
    v9 = [v7 displayString];
    a3 = [v9 hk_trimWhitespaceAndNewlines];

    v10 = [MEMORY[0x1E696C200] _unitStringForValueCollection:v7];
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11[2](v11, v8, a3, v10, 0);
}

+ (void)parseValueCollection:()Display referenceRanges:healthRecordsStore:withCompletion:.cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 inspectableValue];
  v5 = [v4 ontologyConcept];
  OUTLINED_FUNCTION_0_3(&dword_1C3942000, v6, v7, "Concept display name should not be nil: %@", v8, v9, v10, v11, 2u);
}

+ (void)parseValueCollection:()Display referenceRanges:healthRecordsStore:withCompletion:.cold.2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 inspectableValue];
  v5 = [v4 dataAbsentReason];
  OUTLINED_FUNCTION_0_3(&dword_1C3942000, v6, v7, "Data absent reasaon display name should not be nil: %@", v8, v9, v10, v11, 2u);
}

@end