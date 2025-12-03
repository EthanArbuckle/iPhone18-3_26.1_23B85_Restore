@interface HKWorkout(HKDataMetadataSubsampleSection)
- (id)fixedAggregateValuesWithDisplayTypeController:()HKDataMetadataSubsampleSection unitController:;
- (id)subExertionSamplePredicate;
- (id)subSampleSectionTitle;
@end

@implementation HKWorkout(HKDataMetadataSubsampleSection)

- (id)fixedAggregateValuesWithDisplayTypeController:()HKDataMetadataSubsampleSection unitController:
{
  v62[9] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v52 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BC38]];
  v46 = v51 = self;
  v8 = [self statisticsForType:?];
  sumQuantity = [v8 sumQuantity];

  kilocalorieUnit = [MEMORY[0x1E696C510] kilocalorieUnit];
  v47 = sumQuantity;
  [sumQuantity doubleValueForUnit:kilocalorieUnit];
  v12 = v11;

  if (v12 > 0.00000011920929)
  {
    v13 = [MEMORY[0x1E696C2E0] dataTypeWithCode:10];
    v14 = [v6 displayTypeWithIdentifier:&unk_1F4384798];
    v15 = [v7 unitForDisplayType:v14];
    v16 = [v7 localizedDisplayNameForDisplayType:v14];
    v17 = [v14 hk_numberFormatterForUnit:v15];
    [v47 doubleValueForUnit:v15];
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v19 = [v17 stringFromNumber:v18 displayType:v14 unitController:v7];

    v20 = HKFormatValueAndUnit(v19, v16);
    [v52 setObject:v20 forKey:v13];
  }

  v55 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BCC8]];
  v62[0] = v55;
  v53 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BCF8]];
  v62[1] = v53;
  v48 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BCF0]];
  v62[2] = v48;
  v21 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BCD0]];
  v62[3] = v21;
  v22 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BD00]];
  v62[4] = v22;
  v23 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BCC0]];
  v62[5] = v23;
  v24 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BCE0]];
  v62[6] = v24;
  v25 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BCE8]];
  v62[7] = v25;
  v26 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BCD8]];
  v62[8] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:9];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v28 = v27;
  v29 = v51;
  v56 = [v28 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v56)
  {
    v54 = *v58;
    v49 = v28;
    v50 = v7;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v58 != v54)
        {
          objc_enumerationMutation(v28);
        }

        v31 = *(*(&v57 + 1) + 8 * i);
        v32 = [v29 statisticsForType:v31];
        if (v32)
        {
          v33 = [v6 displayTypeForObjectType:v31];
          v34 = [v7 unitForDisplayType:v33];
          aggregationStyle = [v31 aggregationStyle];
          if (aggregationStyle != 1)
          {
            if (!aggregationStyle)
            {
              sumQuantity2 = [v32 sumQuantity];
LABEL_13:
              v37 = sumQuantity2;
              [sumQuantity2 doubleValueForUnit:v34];
              v39 = v38;

              if (v39 > 0.00000011920929)
              {
                presentation = [v33 presentation];
                v41 = [MEMORY[0x1E696AD98] numberWithDouble:v39];
                [presentation adjustedValueForDaemonValue:v41];
                v43 = v42 = v6;
                v44 = HKFormattedStringFromValueForContext(v43, v33, v7, 0, 0, 1);

                v6 = v42;
                v28 = v49;

                v29 = v51;
                [v52 setObject:v44 forKey:v31];

                v7 = v50;
              }
            }

            goto LABEL_16;
          }

          sumQuantity2 = [v32 averageQuantity];
          goto LABEL_13;
        }

LABEL_16:
      }

      v56 = [v28 countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v56);
  }

  return v52;
}

- (id)subExertionSamplePredicate
{
  v1 = MEMORY[0x1E696C378];
  uUID = [self UUID];
  v3 = [v1 predicateForObjectWithUUID:uUID];

  return v3;
}

- (id)subSampleSectionTitle
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v1 = [v0 localizedStringForKey:@"RELATED_SAMPLES" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v1;
}

@end