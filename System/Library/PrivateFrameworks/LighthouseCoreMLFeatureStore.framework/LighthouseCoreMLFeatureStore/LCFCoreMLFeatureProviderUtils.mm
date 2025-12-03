@interface LCFCoreMLFeatureProviderUtils
+ (id)toMultiArrayTypeBatchProvider:(id)provider srcFeatureNames:(id)names srcLabelName:(id)name destFeatureName:(id)featureName destLabelName:(id)labelName;
+ (id)toMultiArrayTypeFeatureProvider:(id)provider srcFeatureNames:(id)names srcLabelName:(id)name destFeatureName:(id)featureName destLabelName:(id)labelName;
@end

@implementation LCFCoreMLFeatureProviderUtils

+ (id)toMultiArrayTypeFeatureProvider:(id)provider srcFeatureNames:(id)names srcLabelName:(id)name destFeatureName:(id)featureName destLabelName:(id)labelName
{
  v77 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  namesCopy = names;
  nameCopy = name;
  featureNameCopy = featureName;
  labelNameCopy = labelName;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = namesCopy;
  v13 = [namesCopy countByEnumeratingWithState:&v68 objects:v76 count:16];
  if (v13)
  {
    v14 = 0;
    v15 = *v69;
    do
    {
      v16 = 0;
      do
      {
        if (*v69 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = [providerCopy featureValueForName:{*(*(&v68 + 1) + 8 * v16), nameCopy}];
        if ([v17 type] == 1 || objc_msgSend(v17, "type") == 2)
        {
          ++v14;
        }

        else if ([v17 type] == 5)
        {
          multiArrayValue = [v17 multiArrayValue];
          shape = [multiArrayValue shape];
          v20 = [shape objectAtIndexedSubscript:0];
          intValue = [v20 intValue];

          v14 += intValue;
        }

        ++v16;
      }

      while (v13 != v16);
      v22 = [obj countByEnumeratingWithState:&v68 objects:v76 count:16];
      v13 = v22;
    }

    while (v22);
    v23 = 8 * v14;
  }

  else
  {
    v23 = 0;
  }

  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = malloc_type_malloc(v23, 0x100004000313F17uLL);
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v24 = obj;
  v25 = [v24 countByEnumeratingWithState:&v56 objects:v75 count:16];
  if (v25)
  {
    v26 = *v57;
    do
    {
      v27 = 0;
      do
      {
        if (*v57 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = [providerCopy featureValueForName:{*(*(&v56 + 1) + 8 * v27), nameCopy}];
        if ([v28 type] == 1)
        {
          int64Value = [v28 int64Value];
LABEL_25:
          v30 = v65[3];
          v31 = *(v61 + 6);
          *(v61 + 6) = v31 + 1;
          *(v30 + 8 * v31) = int64Value;
          goto LABEL_26;
        }

        if ([v28 type] == 2)
        {
          [v28 doubleValue];
          goto LABEL_25;
        }

        if ([v28 type] == 5)
        {
          multiArrayValue2 = [v28 multiArrayValue];
          v55[0] = MEMORY[0x277D85DD0];
          v55[1] = 3221225472;
          v55[2] = __124__LCFCoreMLFeatureProviderUtils_toMultiArrayTypeFeatureProvider_srcFeatureNames_srcLabelName_destFeatureName_destLabelName___block_invoke;
          v55[3] = &unk_279815E58;
          v55[4] = &v64;
          v55[5] = &v60;
          [multiArrayValue2 getBytesWithHandler:v55];
        }

LABEL_26:

        ++v27;
      }

      while (v25 != v27);
      v33 = [v24 countByEnumeratingWithState:&v56 objects:v75 count:16];
      v25 = v33;
    }

    while (v33);
  }

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v24, "count")}];
  v74 = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];

  v36 = objc_alloc(MEMORY[0x277CBFF48]);
  v37 = v65[3];
  v53 = 0;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __124__LCFCoreMLFeatureProviderUtils_toMultiArrayTypeFeatureProvider_srcFeatureNames_srcLabelName_destFeatureName_destLabelName___block_invoke_53;
  v54[3] = &unk_279815E80;
  v54[4] = &v64;
  v38 = [v36 initWithDataPointer:v37 shape:v35 dataType:65600 strides:&unk_286804870 deallocator:v54 error:&v53];
  v39 = v53;
  v72[0] = featureNameCopy;
  v40 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v38];
  v72[1] = labelNameCopy;
  v73[0] = v40;
  v41 = [providerCopy featureValueForName:nameCopy];
  v73[1] = v41;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:2];

  v43 = [LCFCoreMLFeatureProvider fromMLProvider:providerCopy];
  featureStoreKey = [v43 featureStoreKey];
  timestamp = [v43 timestamp];
  v46 = [[LCFCoreMLFeatureProvider alloc] init:featureStoreKey timestamp:timestamp featureValues:v42];

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);

  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

void *__124__LCFCoreMLFeatureProviderUtils_toMultiArrayTypeFeatureProvider_srcFeatureNames_srcLabelName_destFeatureName_destLabelName___block_invoke(uint64_t a1, const void *a2, size_t a3)
{
  v3 = a3;
  result = memcpy((*(*(*(a1 + 32) + 8) + 24) + 8 * *(*(*(a1 + 40) + 8) + 24)), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) += v3;
  return result;
}

+ (id)toMultiArrayTypeBatchProvider:(id)provider srcFeatureNames:(id)names srcLabelName:(id)name destFeatureName:(id)featureName destLabelName:(id)labelName
{
  providerCopy = provider;
  namesCopy = names;
  nameCopy = name;
  featureNameCopy = featureName;
  labelNameCopy = labelName;
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([providerCopy count] >= 1)
  {
    v17 = 0;
    do
    {
      v18 = [providerCopy featuresAtIndex:v17];
      v19 = [LCFCoreMLFeatureProviderUtils toMultiArrayTypeFeatureProvider:v18 srcFeatureNames:namesCopy srcLabelName:nameCopy destFeatureName:featureNameCopy destLabelName:labelNameCopy];
      [v16 addObject:v19];

      ++v17;
    }

    while ([providerCopy count] > v17);
  }

  v20 = [LCFCoreMLBatchProvider fromMLProvider:providerCopy];
  featureStoreKey = [v20 featureStoreKey];
  v22 = [[LCFCoreMLBatchProvider alloc] init:featureStoreKey featureProviders:v16];

  return v22;
}

@end