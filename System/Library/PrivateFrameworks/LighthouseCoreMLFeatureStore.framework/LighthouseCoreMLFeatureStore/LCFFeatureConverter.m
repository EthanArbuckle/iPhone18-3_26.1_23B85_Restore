@interface LCFFeatureConverter
+ (id)fromBiomeLabeledDataFeatureValue:(id)a3;
+ (id)fromFeatureSetToLabeledData:(id)a3;
+ (id)fromFeatureValueToLabeledData:(id)a3;
+ (id)fromLabeledDataBiomeFeatureStore:(id)a3 timestamp:(id)a4;
@end

@implementation LCFFeatureConverter

+ (id)fromBiomeLabeledDataFeatureValue:(id)a3
{
  v3 = a3;
  if ([v3 hasIntValue])
  {
    v4 = [LCFFeatureValue alloc];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v3, "intValue")}];
    v6 = [(LCFFeatureValue *)v4 initWithIntValue:v5];
LABEL_9:
    v12 = v6;
LABEL_10:

    goto LABEL_11;
  }

  if ([v3 hasBoolValue])
  {
    v7 = [LCFFeatureValue alloc];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "BOOLValue")}];
    v6 = [(LCFFeatureValue *)v7 initWithBoolValue:v5];
    goto LABEL_9;
  }

  if ([v3 hasDoubleValue])
  {
    v8 = [LCFFeatureValue alloc];
    v9 = MEMORY[0x277CCABB0];
    [v3 doubleValue];
    v5 = [v9 numberWithDouble:?];
    v6 = [(LCFFeatureValue *)v8 initWithDoubleValue:v5];
    goto LABEL_9;
  }

  v10 = [v3 stringValue];

  if (v10)
  {
    v11 = [LCFFeatureValue alloc];
    v5 = [v3 stringValue];
    v6 = [(LCFFeatureValue *)v11 initWithStringValue:v5];
    goto LABEL_9;
  }

  v14 = [v3 doubleValuedVectorValue];

  if (v14)
  {
    v15 = [LCFFeatureValue alloc];
    v5 = [v3 doubleValuedVectorValue];
    v16 = [v5 vectorWithDoubles];
    v12 = [(LCFFeatureValue *)v15 initWithDoubleArray:v16];

    goto LABEL_10;
  }

  if ([v3 timeBucketValue])
  {
    v17 = [LCFFeatureValue alloc];
    v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "timeBucketValue")}];
    v6 = [(LCFFeatureValue *)v17 initWithTimeBucketValue:v5];
    goto LABEL_9;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

+ (id)fromLabeledDataBiomeFeatureStore:(id)a3 timestamp:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v38 = a4;
  v37 = [v5 itemIdentifier];
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v5, "featureVersion")}];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = [v5 featureVector];
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        [v12 featureName];
        v13 = BMMLSEVirtualFeatureStoreFeaturefeatureNameAsString();
        v14 = [v12 featureValue];
        v15 = [LCFFeatureConverter fromBiomeLabeledDataFeatureValue:v14];

        [v6 setValue:v15 forKey:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v9);
  }

  if ([v5 hasIsPositiveLabeled])
  {
    v16 = [LCFFeatureValue alloc];
    v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "isPositiveLabeled")}];
    v18 = [(LCFFeatureValue *)v16 initWithBoolValue:v17];

    [v6 setValue:v18 forKey:@"_isPositiveLabeled"];
  }

  if ([v5 hasLabelingPolicyVersion])
  {
    v19 = [LCFFeatureValue alloc];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "labelingPolicyVersion")}];
    v21 = [(LCFFeatureValue *)v19 initWithIntValue:v20];

    [v6 setValue:v21 forKey:@"_labelingPolicyVersion"];
  }

  v22 = [LCFFeatureValue alloc];
  v23 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "labelingEvidence")}];
  v24 = [(LCFFeatureValue *)v22 initWithIntValue:v23];
  [v6 setValue:v24 forKey:@"_labelingEvidence"];

  v25 = [v5 sharingEventUID];

  if (v25)
  {
    v26 = [LCFFeatureValue alloc];
    v27 = [v5 sharingEventUID];
    v28 = [(LCFFeatureValue *)v26 initWithStringValue:v27];

    [v6 setValue:v28 forKey:@"_sharingEventUID"];
  }

  v29 = [v5 configurationInfo];

  if (v29)
  {
    v30 = [LCFFeatureValue alloc];
    v31 = [v5 configurationInfo];
    v32 = [(LCFFeatureValue *)v30 initWithStringValue:v31];

    [v6 setValue:v32 forKey:@"_configurationInfo"];
  }

  v33 = [[LCFFeatureSet alloc] initWithIdentifier:v37 featureVersion:v36 timestamp:v38 featureValues:v6];

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

+ (id)fromFeatureValueToLabeledData:(id)a3
{
  v3 = a3;
  v4 = [v3 intValue];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CF12F0]);
    v6 = [v3 intValue];
    v7 = v5;
    v8 = v6;
    v9 = 0;
LABEL_5:
    v12 = 0;
LABEL_6:
    v13 = 0;
LABEL_7:
    v14 = [v7 initWithIntValue:v8 doubleValue:v9 stringValue:v12 BOOLValue:v13 timeBucketValue:0 doubleValuedVectorValue:0];

    goto LABEL_8;
  }

  v10 = [v3 doubleValue];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277CF12F0]);
    v6 = [v3 doubleValue];
    v7 = v11;
    v8 = 0;
    v9 = v6;
    goto LABEL_5;
  }

  v16 = [v3 stringValue];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x277CF12F0]);
    v6 = [v3 stringValue];
    v7 = v17;
    v8 = 0;
    v9 = 0;
    v12 = v6;
    goto LABEL_6;
  }

  v18 = [v3 BOOLValue];

  if (v18)
  {
    v19 = objc_alloc(MEMORY[0x277CF12F0]);
    v6 = [v3 BOOLValue];
    v7 = v19;
    v8 = 0;
    v9 = 0;
    v12 = 0;
    v13 = v6;
    goto LABEL_7;
  }

  v20 = [v3 doubleArray];

  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x277CF12F0]);
    v22 = objc_alloc(MEMORY[0x277CF12F8]);
    v23 = [v3 doubleArray];
    v24 = [v22 initWithVectorWithDoubles:v23];
    v14 = [v21 initWithIntValue:0 doubleValue:0 stringValue:0 BOOLValue:0 timeBucketValue:0 doubleValuedVectorValue:v24];
  }

  else
  {
    v14 = [v3 timeBucketValue];

    if (v14)
    {
      v25 = [v3 timeBucketValue];
      v26 = [v25 intValue];

      v14 = [objc_alloc(MEMORY[0x277CF12F0]) initWithIntValue:0 doubleValue:0 stringValue:0 BOOLValue:0 timeBucketValue:v26 doubleValuedVectorValue:0];
    }
  }

LABEL_8:

  return v14;
}

+ (id)fromFeatureSetToLabeledData:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v37 = [v3 itemIdentifier];
  v36 = [v3 featureVersion];
  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v4 = [v3 featureValues];
  v5 = [v4 allKeys];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (!v6)
  {
    v41 = 0;
    v42 = 0;
    v39 = 0;
    v40 = 0;
    v38 = 0;
    goto LABEL_23;
  }

  v7 = v6;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v8 = *v46;
  v9 = @"_isPositiveLabeled";
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v46 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v45 + 1) + 8 * i);
      v12 = BMMLSEVirtualFeatureStoreFeaturefeatureNameFromString();
      if (v12)
      {
        v13 = v12;
        [v3 featureValues];
        v15 = v14 = v9;
        v16 = [v15 objectForKeyedSubscript:v11];
        v17 = [LCFFeatureConverter fromFeatureValueToLabeledData:v16];

        v9 = v14;
        v18 = [objc_alloc(MEMORY[0x277CF12E8]) initWithFeatureName:v13 featureValue:v17 featureItselfVersion:0 featureFreshnessInHours:0 eventVolumeToComputeFeature:0 timeSpentToComputeFeature:0];
        [v44 addObject:v18];
LABEL_18:

        continue;
      }

      if ([v11 isEqualToString:v9])
      {
        v19 = [v3 featureValues];
        v20 = [v19 objectForKeyedSubscript:v9];
        v21 = [v20 BOOLValue];

        v41 = v21;
      }

      if ([v11 isEqualToString:@"_labelingPolicyVersion"])
      {
        v22 = [v3 featureValues];
        v23 = [v22 objectForKeyedSubscript:@"_labelingPolicyVersion"];
        v24 = [v23 intValue];

        v39 = v24;
      }

      if ([v11 isEqualToString:@"_labelingEvidence"])
      {
        v25 = [v3 featureValues];
        v26 = [v25 objectForKeyedSubscript:@"_labelingEvidence"];
        v27 = [v26 intValue];
        v38 = [v27 intValue];
      }

      if ([v11 isEqualToString:@"_sharingEventUID"])
      {
        v28 = [v3 featureValues];
        v29 = [v28 objectForKeyedSubscript:@"_sharingEventUID"];
        v30 = [v29 stringValue];

        v40 = v30;
      }

      if ([v11 isEqualToString:@"_configurationInfo"])
      {
        v17 = [v3 featureValues];
        v18 = [v17 objectForKeyedSubscript:@"_configurationInfo"];
        v31 = [v18 stringValue];

        v42 = v31;
        goto LABEL_18;
      }
    }

    v7 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  }

  while (v7);
LABEL_23:

  LODWORD(v35) = v38;
  v32 = [objc_alloc(MEMORY[0x277CF12E0]) initWithItemIdentifier:v37 featureVersion:v36 featureVector:v44 deviceIdentifier:0 isPositiveLabeled:v41 labelingPolicyVersion:v39 labelingEvidence:v35 sharingEventUID:v40 configurationInfo:v42];

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

@end