@interface HMIFaceQualityFilterSVM
+ (id)modelPathForResource:(id)resource;
- (BOOL)predict:(id)predict output:(double *)output error:(id *)error;
- (HMIFaceQualityFilterSVM)initWithModelPath:(id)path dataScalerPath:(id)scalerPath error:(id *)error;
@end

@implementation HMIFaceQualityFilterSVM

- (HMIFaceQualityFilterSVM)initWithModelPath:(id)path dataScalerPath:(id)scalerPath error:(id *)error
{
  pathCopy = path;
  scalerPathCopy = scalerPath;
  v24.receiver = self;
  v24.super_class = HMIFaceQualityFilterSVM;
  v10 = [(HMIFaceQualityFilterSVM *)&v24 init];
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
  v23 = 0;
  v12 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v11 error:&v23];
  v13 = v23;
  mlModel = v10->_mlModel;
  v10->_mlModel = v12;

  if (v10->_mlModel)
  {
    v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:scalerPathCopy];

    v22 = v13;
    v16 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v15 error:&v22];
    v17 = v22;

    scalerModel = v10->_scalerModel;
    v10->_scalerModel = v16;

    if (v10->_scalerModel)
    {

LABEL_5:
      v19 = v10;
      goto LABEL_10;
    }

    v13 = v17;
    v11 = v15;
  }

  if (error)
  {
    v20 = v13;
    *error = v13;
  }

  HMIErrorLog(v10, v13);

  v19 = 0;
LABEL_10:

  return v19;
}

- (BOOL)predict:(id)predict output:(double *)output error:(id *)error
{
  predictCopy = predict;
  v9 = [predictCopy objectAtIndexedSubscript:2];
  [v9 doubleValue];
  v11 = fabs(v10);

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  [predictCopy setObject:v12 atIndexedSubscript:2];

  v13 = [predictCopy objectAtIndexedSubscript:3];
  [v13 doubleValue];
  v15 = v14;

  v16 = 100000.0;
  if (v15 <= 100000.0)
  {
    v16 = v15;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
  [predictCopy setObject:v17 atIndexedSubscript:3];

  v18 = [HMIFaceQualityFilterModelInput alloc];
  v19 = +[HMIFaceQualityFilterSVM dataScalerInputName];
  v20 = [(HMIFaceQualityFilterModelInput *)v18 initWithInput:predictCopy inputName:v19];

  scalerModel = [(HMIFaceQualityFilterSVM *)self scalerModel];
  v52 = 0;
  v22 = [scalerModel predictionFromFeatures:v20 error:&v52];
  v23 = v52;

  if (!v22 || v23)
  {
    v39 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1019 underlyingError:v23];
    v40 = v39;
    if (error)
    {
      v41 = v39;
      *error = v40;
    }

    HMIErrorLog(self, v40);

    v42 = v23;
    v33 = 0;
    *error = v23;
  }

  else
  {
    outputCopy = output;
    v24 = +[HMIFaceQualityFilterSVM dataScalerOutputName];
    v25 = [v22 featureValueForName:v24];

    v50 = v25;
    multiArrayValue = [v25 multiArrayValue];
    v27 = [HMIFaceQualityFilterModelInput alloc];
    v28 = +[HMIFaceQualityFilterSVM svmInputName];
    v49 = multiArrayValue;
    v29 = [(HMIFaceQualityFilterModelInput *)v27 initWithInput:multiArrayValue inputName:v28];

    mlModel = [(HMIFaceQualityFilterSVM *)self mlModel];
    v51 = 0;
    v31 = [mlModel predictionFromFeatures:v29 error:&v51];
    v23 = v51;

    if (v31)
    {
      v32 = v23 == 0;
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;
    if (v32)
    {
      v34 = +[HMIFaceQualityFilterSVM svmOutputName];
      v35 = [v31 featureValueForName:v34];
      dictionaryValue = [v35 dictionaryValue];

      v37 = [dictionaryValue objectForKeyedSubscript:&unk_284074FE8];
      [v37 doubleValue];
      *outputCopy = v38;
    }

    else
    {
      v43 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1019 underlyingError:v23];
      v44 = v43;
      if (error)
      {
        v45 = v43;
        *error = v44;
      }

      HMIErrorLog(self, v44);

      v46 = v23;
      *error = v23;
    }
  }

  return v33;
}

+ (id)modelPathForResource:(id)resource
{
  v3 = MEMORY[0x277CCA8D8];
  resourceCopy = resource;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 pathForResource:resourceCopy ofType:@"mlmodelc"];

  return v6;
}

@end