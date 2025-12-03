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
  collectionType = [self collectionType];
  if ((collectionType - 2) < 2)
  {
    inspectableValues = [self inspectableValues];
    displayString = [self _stringsForValues:inspectableValues];
    displayString3 = [self _joinValueStrings:displayString];
LABEL_7:

    goto LABEL_8;
  }

  if (collectionType == 1)
  {
    inspectableValues = [self min];
    displayString = [inspectableValues displayString];
    v11[0] = displayString;
    v7 = [self max];
    displayString2 = [v7 displayString];
    v11[1] = displayString2;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    displayString3 = [self _joinValueStrings:v9];

    goto LABEL_7;
  }

  if (!collectionType)
  {
    inspectableValue = [self inspectableValue];
    displayString3 = [inspectableValue displayString];
  }

LABEL_8:

  return displayString3;
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

        displayString = [*(*(&v12 + 1) + 8 * i) displayString];
        [v4 addObject:displayString];
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

  inspectableValue = [v10 inspectableValue];
  if ([inspectableValue valueType] == 7)
  {
  }

  else
  {
    inspectableValue2 = [v10 inspectableValue];
    valueType = [inspectableValue2 valueType];

    if (valueType != 9)
    {
LABEL_3:
      [self parseUncodedValueCollection:v10 referenceRanges:v11 withCompletion:v13];
      goto LABEL_4;
    }
  }

  inspectableValue3 = [v10 inspectableValue];
  valueType2 = [inspectableValue3 valueType];

  inspectableValue4 = [v10 inspectableValue];
  v20 = inspectableValue4;
  if (valueType2 == 9)
  {
    dataAbsentReason = [inspectableValue4 dataAbsentReason];
    localizedPreferredName = [dataAbsentReason localizedPreferredName];

    if (![(__CFString *)localizedPreferredName length])
    {
      _HKInitializeLogging();
      v23 = *MEMORY[0x1E696B948];
      if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_FAULT))
      {
        [HKInspectableValueCollection(Display) parseValueCollection:v23 referenceRanges:v10 healthRecordsStore:? withCompletion:?];
      }

      localizedPreferredName = &stru_1F42FFBE0;
    }

    v13[2](v13, 0, localizedPreferredName, &stru_1F42FFBE0, 1);
  }

  else
  {
    ontologyConcept = [inspectableValue4 ontologyConcept];
    localizedPreferredName = [ontologyConcept localizedPreferredName];

    if (![(__CFString *)localizedPreferredName length])
    {
      _HKInitializeLogging();
      v25 = *MEMORY[0x1E696B948];
      if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_FAULT))
      {
        [HKInspectableValueCollection(Display) parseValueCollection:v25 referenceRanges:v10 healthRecordsStore:? withCompletion:?];
      }

      localizedPreferredName = &stru_1F42FFBE0;
    }

    v13[2](v13, 0, localizedPreferredName, &stru_1F42FFBE0, 0);
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
    displayString = [v7 displayString];
    a3 = [displayString hk_trimWhitespaceAndNewlines];

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