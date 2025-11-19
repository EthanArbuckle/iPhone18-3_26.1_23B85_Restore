@interface HMIFaceQualityFilterSVM
+ (id)modelPathForResource:(id)a3;
- (BOOL)predict:(id)a3 output:(double *)a4 error:(id *)a5;
- (HMIFaceQualityFilterSVM)initWithModelPath:(id)a3 dataScalerPath:(id)a4 error:(id *)a5;
@end

@implementation HMIFaceQualityFilterSVM

- (HMIFaceQualityFilterSVM)initWithModelPath:(id)a3 dataScalerPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v24.receiver = self;
  v24.super_class = HMIFaceQualityFilterSVM;
  v10 = [(HMIFaceQualityFilterSVM *)&v24 init];
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  v23 = 0;
  v12 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v11 error:&v23];
  v13 = v23;
  mlModel = v10->_mlModel;
  v10->_mlModel = v12;

  if (v10->_mlModel)
  {
    v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];

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

  if (a5)
  {
    v20 = v13;
    *a5 = v13;
  }

  HMIErrorLog(v10, v13);

  v19 = 0;
LABEL_10:

  return v19;
}

- (BOOL)predict:(id)a3 output:(double *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 objectAtIndexedSubscript:2];
  [v9 doubleValue];
  v11 = fabs(v10);

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  [v8 setObject:v12 atIndexedSubscript:2];

  v13 = [v8 objectAtIndexedSubscript:3];
  [v13 doubleValue];
  v15 = v14;

  v16 = 100000.0;
  if (v15 <= 100000.0)
  {
    v16 = v15;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
  [v8 setObject:v17 atIndexedSubscript:3];

  v18 = [HMIFaceQualityFilterModelInput alloc];
  v19 = +[HMIFaceQualityFilterSVM dataScalerInputName];
  v20 = [(HMIFaceQualityFilterModelInput *)v18 initWithInput:v8 inputName:v19];

  v21 = [(HMIFaceQualityFilterSVM *)self scalerModel];
  v52 = 0;
  v22 = [v21 predictionFromFeatures:v20 error:&v52];
  v23 = v52;

  if (!v22 || v23)
  {
    v39 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1019 underlyingError:v23];
    v40 = v39;
    if (a5)
    {
      v41 = v39;
      *a5 = v40;
    }

    HMIErrorLog(self, v40);

    v42 = v23;
    v33 = 0;
    *a5 = v23;
  }

  else
  {
    v48 = a4;
    v24 = +[HMIFaceQualityFilterSVM dataScalerOutputName];
    v25 = [v22 featureValueForName:v24];

    v50 = v25;
    v26 = [v25 multiArrayValue];
    v27 = [HMIFaceQualityFilterModelInput alloc];
    v28 = +[HMIFaceQualityFilterSVM svmInputName];
    v49 = v26;
    v29 = [(HMIFaceQualityFilterModelInput *)v27 initWithInput:v26 inputName:v28];

    v30 = [(HMIFaceQualityFilterSVM *)self mlModel];
    v51 = 0;
    v31 = [v30 predictionFromFeatures:v29 error:&v51];
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
      v36 = [v35 dictionaryValue];

      v37 = [v36 objectForKeyedSubscript:&unk_284074FE8];
      [v37 doubleValue];
      *v48 = v38;
    }

    else
    {
      v43 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1019 underlyingError:v23];
      v44 = v43;
      if (a5)
      {
        v45 = v43;
        *a5 = v44;
      }

      HMIErrorLog(self, v44);

      v46 = v23;
      *a5 = v23;
    }
  }

  return v33;
}

+ (id)modelPathForResource:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 pathForResource:v4 ofType:@"mlmodelc"];

  return v6;
}

@end