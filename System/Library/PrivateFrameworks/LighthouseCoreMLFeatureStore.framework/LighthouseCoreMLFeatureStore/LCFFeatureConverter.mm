@interface LCFFeatureConverter
+ (id)fromBiomeLabeledDataFeatureValue:(id)value;
+ (id)fromFeatureSetToLabeledData:(id)data;
+ (id)fromFeatureValueToLabeledData:(id)data;
+ (id)fromLabeledDataBiomeFeatureStore:(id)store timestamp:(id)timestamp;
@end

@implementation LCFFeatureConverter

+ (id)fromBiomeLabeledDataFeatureValue:(id)value
{
  valueCopy = value;
  if ([valueCopy hasIntValue])
  {
    v4 = [LCFFeatureValue alloc];
    stringValue2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(valueCopy, "intValue")}];
    v6 = [(LCFFeatureValue *)v4 initWithIntValue:stringValue2];
LABEL_9:
    v12 = v6;
LABEL_10:

    goto LABEL_11;
  }

  if ([valueCopy hasBoolValue])
  {
    v7 = [LCFFeatureValue alloc];
    stringValue2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(valueCopy, "BOOLValue")}];
    v6 = [(LCFFeatureValue *)v7 initWithBoolValue:stringValue2];
    goto LABEL_9;
  }

  if ([valueCopy hasDoubleValue])
  {
    v8 = [LCFFeatureValue alloc];
    v9 = MEMORY[0x277CCABB0];
    [valueCopy doubleValue];
    stringValue2 = [v9 numberWithDouble:?];
    v6 = [(LCFFeatureValue *)v8 initWithDoubleValue:stringValue2];
    goto LABEL_9;
  }

  stringValue = [valueCopy stringValue];

  if (stringValue)
  {
    v11 = [LCFFeatureValue alloc];
    stringValue2 = [valueCopy stringValue];
    v6 = [(LCFFeatureValue *)v11 initWithStringValue:stringValue2];
    goto LABEL_9;
  }

  doubleValuedVectorValue = [valueCopy doubleValuedVectorValue];

  if (doubleValuedVectorValue)
  {
    v15 = [LCFFeatureValue alloc];
    stringValue2 = [valueCopy doubleValuedVectorValue];
    vectorWithDoubles = [stringValue2 vectorWithDoubles];
    v12 = [(LCFFeatureValue *)v15 initWithDoubleArray:vectorWithDoubles];

    goto LABEL_10;
  }

  if ([valueCopy timeBucketValue])
  {
    v17 = [LCFFeatureValue alloc];
    stringValue2 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(valueCopy, "timeBucketValue")}];
    v6 = [(LCFFeatureValue *)v17 initWithTimeBucketValue:stringValue2];
    goto LABEL_9;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

+ (id)fromLabeledDataBiomeFeatureStore:(id)store timestamp:(id)timestamp
{
  v44 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  timestampCopy = timestamp;
  itemIdentifier = [storeCopy itemIdentifier];
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(storeCopy, "featureVersion")}];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  featureVector = [storeCopy featureVector];
  v8 = [featureVector countByEnumeratingWithState:&v39 objects:v43 count:16];
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
          objc_enumerationMutation(featureVector);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        [v12 featureName];
        v13 = BMMLSEVirtualFeatureStoreFeaturefeatureNameAsString();
        featureValue = [v12 featureValue];
        v15 = [LCFFeatureConverter fromBiomeLabeledDataFeatureValue:featureValue];

        [v6 setValue:v15 forKey:v13];
      }

      v9 = [featureVector countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v9);
  }

  if ([storeCopy hasIsPositiveLabeled])
  {
    v16 = [LCFFeatureValue alloc];
    v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(storeCopy, "isPositiveLabeled")}];
    v18 = [(LCFFeatureValue *)v16 initWithBoolValue:v17];

    [v6 setValue:v18 forKey:@"_isPositiveLabeled"];
  }

  if ([storeCopy hasLabelingPolicyVersion])
  {
    v19 = [LCFFeatureValue alloc];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(storeCopy, "labelingPolicyVersion")}];
    v21 = [(LCFFeatureValue *)v19 initWithIntValue:v20];

    [v6 setValue:v21 forKey:@"_labelingPolicyVersion"];
  }

  v22 = [LCFFeatureValue alloc];
  v23 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(storeCopy, "labelingEvidence")}];
  v24 = [(LCFFeatureValue *)v22 initWithIntValue:v23];
  [v6 setValue:v24 forKey:@"_labelingEvidence"];

  sharingEventUID = [storeCopy sharingEventUID];

  if (sharingEventUID)
  {
    v26 = [LCFFeatureValue alloc];
    sharingEventUID2 = [storeCopy sharingEventUID];
    v28 = [(LCFFeatureValue *)v26 initWithStringValue:sharingEventUID2];

    [v6 setValue:v28 forKey:@"_sharingEventUID"];
  }

  configurationInfo = [storeCopy configurationInfo];

  if (configurationInfo)
  {
    v30 = [LCFFeatureValue alloc];
    configurationInfo2 = [storeCopy configurationInfo];
    v32 = [(LCFFeatureValue *)v30 initWithStringValue:configurationInfo2];

    [v6 setValue:v32 forKey:@"_configurationInfo"];
  }

  v33 = [[LCFFeatureSet alloc] initWithIdentifier:itemIdentifier featureVersion:v36 timestamp:timestampCopy featureValues:v6];

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

+ (id)fromFeatureValueToLabeledData:(id)data
{
  dataCopy = data;
  intValue = [dataCopy intValue];

  if (intValue)
  {
    v5 = objc_alloc(MEMORY[0x277CF12F0]);
    intValue2 = [dataCopy intValue];
    v7 = v5;
    v8 = intValue2;
    v9 = 0;
LABEL_5:
    v12 = 0;
LABEL_6:
    v13 = 0;
LABEL_7:
    timeBucketValue = [v7 initWithIntValue:v8 doubleValue:v9 stringValue:v12 BOOLValue:v13 timeBucketValue:0 doubleValuedVectorValue:0];

    goto LABEL_8;
  }

  doubleValue = [dataCopy doubleValue];

  if (doubleValue)
  {
    v11 = objc_alloc(MEMORY[0x277CF12F0]);
    intValue2 = [dataCopy doubleValue];
    v7 = v11;
    v8 = 0;
    v9 = intValue2;
    goto LABEL_5;
  }

  stringValue = [dataCopy stringValue];

  if (stringValue)
  {
    v17 = objc_alloc(MEMORY[0x277CF12F0]);
    intValue2 = [dataCopy stringValue];
    v7 = v17;
    v8 = 0;
    v9 = 0;
    v12 = intValue2;
    goto LABEL_6;
  }

  bOOLValue = [dataCopy BOOLValue];

  if (bOOLValue)
  {
    v19 = objc_alloc(MEMORY[0x277CF12F0]);
    intValue2 = [dataCopy BOOLValue];
    v7 = v19;
    v8 = 0;
    v9 = 0;
    v12 = 0;
    v13 = intValue2;
    goto LABEL_7;
  }

  doubleArray = [dataCopy doubleArray];

  if (doubleArray)
  {
    v21 = objc_alloc(MEMORY[0x277CF12F0]);
    v22 = objc_alloc(MEMORY[0x277CF12F8]);
    doubleArray2 = [dataCopy doubleArray];
    v24 = [v22 initWithVectorWithDoubles:doubleArray2];
    timeBucketValue = [v21 initWithIntValue:0 doubleValue:0 stringValue:0 BOOLValue:0 timeBucketValue:0 doubleValuedVectorValue:v24];
  }

  else
  {
    timeBucketValue = [dataCopy timeBucketValue];

    if (timeBucketValue)
    {
      timeBucketValue2 = [dataCopy timeBucketValue];
      intValue3 = [timeBucketValue2 intValue];

      timeBucketValue = [objc_alloc(MEMORY[0x277CF12F0]) initWithIntValue:0 doubleValue:0 stringValue:0 BOOLValue:0 timeBucketValue:intValue3 doubleValuedVectorValue:0];
    }
  }

LABEL_8:

  return timeBucketValue;
}

+ (id)fromFeatureSetToLabeledData:(id)data
{
  v50 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  itemIdentifier = [dataCopy itemIdentifier];
  featureVersion = [dataCopy featureVersion];
  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  featureValues = [dataCopy featureValues];
  allKeys = [featureValues allKeys];

  obj = allKeys;
  v6 = [allKeys countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (!v6)
  {
    v41 = 0;
    v42 = 0;
    v39 = 0;
    v40 = 0;
    v27IntValue = 0;
    goto LABEL_23;
  }

  v7 = v6;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v27IntValue = 0;
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
        [dataCopy featureValues];
        v15 = v14 = v9;
        v16 = [v15 objectForKeyedSubscript:v11];
        featureValues6 = [LCFFeatureConverter fromFeatureValueToLabeledData:v16];

        v9 = v14;
        v18 = [objc_alloc(MEMORY[0x277CF12E8]) initWithFeatureName:v13 featureValue:featureValues6 featureItselfVersion:0 featureFreshnessInHours:0 eventVolumeToComputeFeature:0 timeSpentToComputeFeature:0];
        [v44 addObject:v18];
LABEL_18:

        continue;
      }

      if ([v11 isEqualToString:v9])
      {
        featureValues2 = [dataCopy featureValues];
        v20 = [featureValues2 objectForKeyedSubscript:v9];
        bOOLValue = [v20 BOOLValue];

        v41 = bOOLValue;
      }

      if ([v11 isEqualToString:@"_labelingPolicyVersion"])
      {
        featureValues3 = [dataCopy featureValues];
        v23 = [featureValues3 objectForKeyedSubscript:@"_labelingPolicyVersion"];
        intValue = [v23 intValue];

        v39 = intValue;
      }

      if ([v11 isEqualToString:@"_labelingEvidence"])
      {
        featureValues4 = [dataCopy featureValues];
        v26 = [featureValues4 objectForKeyedSubscript:@"_labelingEvidence"];
        intValue2 = [v26 intValue];
        v27IntValue = [intValue2 intValue];
      }

      if ([v11 isEqualToString:@"_sharingEventUID"])
      {
        featureValues5 = [dataCopy featureValues];
        v29 = [featureValues5 objectForKeyedSubscript:@"_sharingEventUID"];
        stringValue = [v29 stringValue];

        v40 = stringValue;
      }

      if ([v11 isEqualToString:@"_configurationInfo"])
      {
        featureValues6 = [dataCopy featureValues];
        v18 = [featureValues6 objectForKeyedSubscript:@"_configurationInfo"];
        stringValue2 = [v18 stringValue];

        v42 = stringValue2;
        goto LABEL_18;
      }
    }

    v7 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  }

  while (v7);
LABEL_23:

  LODWORD(v35) = v27IntValue;
  v32 = [objc_alloc(MEMORY[0x277CF12E0]) initWithItemIdentifier:itemIdentifier featureVersion:featureVersion featureVector:v44 deviceIdentifier:0 isPositiveLabeled:v41 labelingPolicyVersion:v39 labelingEvidence:v35 sharingEventUID:v40 configurationInfo:v42];

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

@end