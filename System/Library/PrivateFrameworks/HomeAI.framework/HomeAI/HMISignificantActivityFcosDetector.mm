@interface HMISignificantActivityFcosDetector
+ (HMIMLModel)sharedModel;
+ (id)defaultAssetPath;
+ (id)defaultNMSConfiguration;
- (BOOL)_runNeuralNetworkOnPixelBuffer:(__CVBuffer *)buffer offsetsZero:(id)zero offsetsOne:(id)one scores:(id)scores yaws:(id)yaws rolls:(id)rolls error:(id *)error;
- (BOOL)predict:(__CVBuffer *)predict detectedObjects:(id)objects error:(id *)error;
- (CGSize)inputDimensions;
- (HMISignificantActivityFcosDetector)initWithConfidenceThresholds:(id)thresholds nmsConfiguration:(id)configuration error:(id *)error;
- (void)_postProcessOffsetsZero:(id)zero offsetsOne:(id)one scores:(id)scores yaws:(id)yaws rolls:(id)rolls outputPredictions:(id)predictions;
@end

@implementation HMISignificantActivityFcosDetector

- (HMISignificantActivityFcosDetector)initWithConfidenceThresholds:(id)thresholds nmsConfiguration:(id)configuration error:(id *)error
{
  v35[16] = *MEMORY[0x277D85DE8];
  thresholdsCopy = thresholds;
  configurationCopy = configuration;
  v34.receiver = self;
  v34.super_class = HMISignificantActivityFcosDetector;
  v9 = [(HMISignificantActivityFcosDetector *)&v34 init];
  if (v9)
  {
    if ([thresholdsCopy count])
    {
      v10 = 0;
      v11 = v9;
      do
      {
        v12 = [thresholdsCopy objectAtIndexedSubscript:v10];
        [v12 floatValue];
        *(v11 + 2) = v13;

        ++v10;
        v11 += 4;
      }

      while ([thresholdsCopy count] > v10);
    }

    objc_storeStrong(v9 + 21, configuration);
    *(v9 + 11) = kHMISignificantActivityFcosInputSize;
    v14 = *(v9 + 15);
    *(v9 + 15) = @"image_Placeholder";

    v15 = *(v9 + 16);
    *(v9 + 16) = &unk_284075468;

    v16 = *(v9 + 17);
    *(v9 + 17) = &unk_284075480;

    v17 = *(v9 + 18);
    *(v9 + 18) = &unk_284075498;

    v18 = *(v9 + 19);
    *(v9 + 19) = &unk_2840754B0;

    v19 = *(v9 + 20);
    *(v9 + 20) = &unk_2840754C8;

    [v9 inputDimensions];
    v35[0] = *&v21.f64[0];
    *&v35[1] = v20;
    v21.f64[1] = v20;
    v22 = 2;
    __asm
    {
      FMOV            V1.2D, #-1.0
      FMOV            V2.2D, #0.5
      FMOV            V3.2S, #1.0
    }

    v30 = v21;
    do
    {
      v30 = vcvtq_f64_f32(vadd_f32(vrndm_f32(vcvt_f32_f64(vmulq_f64(vaddq_f64(v30, _Q1), _Q2))), _D3));
      *&v35[v22] = v30;
      v22 += 2;
    }

    while (v22 != 16);
    v31 = (v9 + 40);
    for (i = 3; i != 8; ++i)
    {
      *v31++ = vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(v21, *&v35[2 * i]))), v21)));
    }
  }

  return v9;
}

+ (HMIMLModel)sharedModel
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMISignificantActivityFcosDetector_sharedModel__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedModel_onceToken != -1)
  {
    dispatch_once(&sharedModel_onceToken, block);
  }

  v2 = sharedModel_model;

  return v2;
}

void __49__HMISignificantActivityFcosDetector_sharedModel__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v5;
    _os_log_impl(&dword_22D12F000, v4, OS_LOG_TYPE_INFO, "%{public}@Initializing shared model", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = +[HMISignificantActivityFcosDetector defaultAssetPath];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
    v8 = [[HMIMLModel alloc] initWithModelURL:v7];
    v9 = sharedModel_model;
    sharedModel_model = v8;

    if (!sharedModel_model)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v12;
        _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to load model!", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_ERROR, "%{public}@Model is not bundled into framework. Default model is stored in Git LFS. Make sure Git LFS is installed in your local system.", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (BOOL)predict:(__CVBuffer *)predict detectedObjects:(id)objects error:(id *)error
{
  objectsCopy = objects;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  v16 = [[HMISignpost alloc] initWithName:@"SignificantActivityFcosDetector"];
  v14 = [(HMISignificantActivityFcosDetector *)self _runNeuralNetworkOnPixelBuffer:predict offsetsZero:v9 offsetsOne:v10 scores:v11 yaws:v12 rolls:v13 error:error];
  if (v14)
  {
    [(HMISignificantActivityFcosDetector *)self _postProcessOffsetsZero:v9 offsetsOne:v10 scores:v11 yaws:v12 rolls:v13 outputPredictions:objectsCopy];
  }

  __HMISignpostScopeLeave(&v16);

  return v14;
}

- (BOOL)_runNeuralNetworkOnPixelBuffer:(__CVBuffer *)buffer offsetsZero:(id)zero offsetsOne:(id)one scores:(id)scores yaws:(id)yaws rolls:(id)rolls error:(id *)error
{
  errorCopy2 = error;
  zeroCopy = zero;
  oneCopy = one;
  scoresCopy = scores;
  yawsCopy = yaws;
  rollsCopy = rolls;
  v19 = +[HMIPreference sharedInstance];
  LODWORD(yaws) = [v19 BOOLPreferenceForKey:@"showROI" defaultValue:0];

  if (yaws)
  {
    v20 = [HMIVideoFrame alloc];
    v87 = *MEMORY[0x277CC08F0];
    v88 = *(MEMORY[0x277CC08F0] + 16);
    v21 = [(HMIVideoFrame *)v20 initWithPixelBuffer:buffer presentationTimeStamp:&v87];
    [(HMIVideoFrame *)v21 printWithScale:1.0];
  }

  v22 = [HMIVisionUtilities transferPixelBuffer:buffer pixelFormat:1111970369 options:0 error:error];
  v23 = [HMIInputFeatureProvider alloc];
  selfCopy2 = self;
  inputFeatureValueName = [(HMISignificantActivityFcosDetector *)self inputFeatureValueName];
  v26 = [(HMIInputFeatureProvider *)v23 initWithPixelBuffer:v22 inputName:inputFeatureValueName];

  CVPixelBufferRelease(v22);
  v27 = +[HMISignificantActivityFcosDetector sharedModel];
  v86 = 0;
  v28 = [v27 predictionFromFeatures:v26 error:&v86];
  v29 = v86;

  if (!v28 || v29)
  {
    v58 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1019 underlyingError:v29];
    v59 = v58;
    if (error)
    {
      v60 = v58;
      *error = v59;
    }

    HMIErrorLog(self, v59);
  }

  else
  {
    v78 = 0;
    v79 = v26;
    v80 = rollsCopy;
    v83 = v28;
    while (1)
    {
      v30 = scoresCopy;
      v31 = oneCopy;
      v32 = zeroCopy;
      v33 = [(HMISignificantActivityFcosDetector *)selfCopy2 offsetsZeroFeatureValueNames:v78];
      v34 = [v33 objectAtIndexedSubscript:v29];
      v35 = [v28 featureValueForName:v34];

      if (!v35 || [v35 type] != 5)
      {
        v61 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1020 description:@"CoreML output nil or not of type MLFeatureTypeMultiArray"];
        v62 = v61;
        if (errorCopy2)
        {
          v63 = v61;
          *errorCopy2 = v62;
        }

        HMIErrorLog(selfCopy2, v62);

        v29 = v78;
        v26 = v79;
        v59 = v35;
        zeroCopy = v32;
        oneCopy = v31;
LABEL_27:
        scoresCopy = v30;
LABEL_31:
        rollsCopy = v80;
        goto LABEL_39;
      }

      v82 = v35;
      multiArrayValue = [v35 multiArrayValue];
      zeroCopy = v32;
      [v32 addObject:multiArrayValue];

      offsetsOneFeatureValueNames = [(HMISignificantActivityFcosDetector *)selfCopy2 offsetsOneFeatureValueNames];
      v38 = [offsetsOneFeatureValueNames objectAtIndexedSubscript:v29];
      v39 = [v28 featureValueForName:v38];

      if (!v39 || [v39 type] != 5)
      {
        v64 = v39;
        v65 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1020 description:@"CoreML output nil or not of type MLFeatureTypeMultiArray"];
        v66 = v65;
        oneCopy = v31;
        if (errorCopy2)
        {
          v67 = v65;
          *errorCopy2 = v66;
        }

        HMIErrorLog(selfCopy2, v66);

        v29 = v78;
        v26 = v79;
        v59 = v82;
        goto LABEL_27;
      }

      v81 = v39;
      multiArrayValue2 = [v39 multiArrayValue];
      oneCopy = v31;
      [v31 addObject:multiArrayValue2];

      scoresFeatureValueNames = [(HMISignificantActivityFcosDetector *)selfCopy2 scoresFeatureValueNames];
      v42 = [scoresFeatureValueNames objectAtIndexedSubscript:v29];
      v43 = [v28 featureValueForName:v42];

      if (!v43 || [v43 type] != 5)
      {
        v68 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1020 description:@"CoreML output nil or not of type MLFeatureTypeMultiArray"];
        v69 = v68;
        scoresCopy = v30;
        if (error)
        {
          v70 = v68;
          *error = v69;
        }

        HMIErrorLog(selfCopy2, v69);

        v29 = v78;
        v26 = v79;
        v59 = v82;
        goto LABEL_31;
      }

      multiArrayValue3 = [v43 multiArrayValue];
      scoresCopy = v30;
      [v30 addObject:multiArrayValue3];

      yawsFeatureValueNames = [(HMISignificantActivityFcosDetector *)selfCopy2 yawsFeatureValueNames];
      v46 = [yawsFeatureValueNames objectAtIndexedSubscript:v29];
      v47 = [v28 featureValueForName:v46];

      if (!v47 || [v47 type] != 5)
      {
        break;
      }

      v48 = selfCopy2;
      v49 = scoresCopy;
      v50 = oneCopy;
      v51 = zeroCopy;
      multiArrayValue4 = [v47 multiArrayValue];
      [yawsCopy addObject:multiArrayValue4];

      rollsFeatureValueNames = [(HMISignificantActivityFcosDetector *)v48 rollsFeatureValueNames];
      v54 = [rollsFeatureValueNames objectAtIndexedSubscript:v29];
      v55 = [v83 featureValueForName:v54];

      if (!v55 || [v55 type] != 5)
      {
        v74 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1020 description:@"CoreML output nil or not of type MLFeatureTypeMultiArray"];
        v75 = v74;
        rollsCopy = v80;
        if (error)
        {
          v76 = v74;
          *error = v75;
        }

        HMIErrorLog(self, v75);

        zeroCopy = v51;
        oneCopy = v50;
        scoresCopy = v49;
        goto LABEL_38;
      }

      multiArrayValue5 = [v55 multiArrayValue];
      rollsCopy = v80;
      [v80 addObject:multiArrayValue5];

      ++v29;
      zeroCopy = v51;
      oneCopy = v50;
      scoresCopy = v49;
      v28 = v83;
      selfCopy2 = self;
      errorCopy2 = error;
      if (v29 == 5)
      {
        v57 = 1;
        v29 = v78;
        v26 = v79;
        goto LABEL_40;
      }
    }

    v71 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1020 description:@"CoreML output nil or not of type MLFeatureTypeMultiArray"];
    v72 = v71;
    if (error)
    {
      v73 = v71;
      *error = v72;
    }

    HMIErrorLog(selfCopy2, v72);

    rollsCopy = v80;
LABEL_38:
    v29 = v78;
    v26 = v79;
    v59 = v82;
    v28 = v83;
  }

LABEL_39:

  v57 = 0;
LABEL_40:

  return v57;
}

- (void)_postProcessOffsetsZero:(id)zero offsetsOne:(id)one scores:(id)scores yaws:(id)yaws rolls:(id)rolls outputPredictions:(id)predictions
{
  v109 = *MEMORY[0x277D85DE8];
  zeroCopy = zero;
  oneCopy = one;
  scoresCopy = scores;
  yawsCopy = yaws;
  rollsCopy = rolls;
  predictionsCopy = predictions;
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0;
  do
  {
    v14 = [zeroCopy objectAtIndexedSubscript:v13];
    v15 = [oneCopy objectAtIndexedSubscript:v13];
    v16 = [scoresCopy objectAtIndexedSubscript:v13];
    v17 = [yawsCopy objectAtIndexedSubscript:v13];
    v90 = v13;
    v18 = [rollsCopy objectAtIndexedSubscript:v13];
    shape = [v14 shape];
    v20 = [shape objectAtIndexedSubscript:3];
    unsignedLongValue = [v20 unsignedLongValue];

    shape2 = [v14 shape];
    v22 = [shape2 objectAtIndexedSubscript:2];
    unsignedLongValue2 = [v22 unsignedLongValue];

    strides = [v14 strides];
    v24 = [strides objectAtIndexedSubscript:1];
    unsignedLongValue3 = [v24 unsignedLongValue];

    strides2 = [v14 strides];
    v26 = [strides2 objectAtIndexedSubscript:3];
    unsignedLongValue4 = [v26 unsignedLongValue];

    strides3 = [v16 strides];
    v28 = [strides3 objectAtIndexedSubscript:3];
    unsignedLongValue5 = [v28 unsignedLongValue];

    strides4 = [v18 strides];
    v31 = [strides4 objectAtIndexedSubscript:3];
    unsignedLongValue6 = [v31 unsignedLongValue];

    dataPointer = [v14 dataPointer];
    v89 = v15;
    dataPointer2 = [v15 dataPointer];
    dataPointer3 = [v16 dataPointer];
    v88 = v17;
    dataPointer4 = [v17 dataPointer];
    v87 = v18;
    dataPointer5 = [v18 dataPointer];
    if (unsignedLongValue2)
    {
      v36 = dataPointer5;
      v37 = 0;
      v94 = unsignedLongValue5;
      v101 = (self + 16 * v90);
      do
      {
        v93 = v37;
        if (unsignedLongValue)
        {
          v38 = 0;
          v39 = v37 + 0.5;
          do
          {
            v98 = v38;
            v99 = dataPointer3;
            v40 = v38 + 0.5;
            for (i = 1; i != 7; ++i)
            {
              v42 = self->_confidenceThresholds[i];
              if (v42 >= 0.0)
              {
                v43 = *dataPointer3;
                if (*dataPointer3 >= v42)
                {
                  v44 = v40 * v101[5];
                  v45 = v39 * v101[6];
                  if (i == 5)
                  {
                    v46 = dataPointer2;
                  }

                  else
                  {
                    v46 = dataPointer;
                  }

                  v47 = expf(*v46);
                  v48 = expf(v46[unsignedLongValue3]);
                  v49 = expf(v46[2 * unsignedLongValue3]);
                  v50 = (v44 - v48);
                  v51 = (v48 + expf(v46[3 * unsignedLongValue3]));
                  v52 = [HMIObjectDetection alloc];
                  LODWORD(v53) = *dataPointer4;
                  v54 = [MEMORY[0x277CCABB0] numberWithFloat:v53];
                  LODWORD(v55) = *v36;
                  v56 = [MEMORY[0x277CCABB0] numberWithFloat:v55];
                  v57 = [(HMIObjectDetection *)v52 initWithLabelIndex:i confidence:v54 unclampedBoundingBox:v56 yaw:v43 roll:v50, (v45 - v47), v51, (v47 + v49)];

                  [array addObject:v57];
                }
              }

              dataPointer3 += unsignedLongValue3;
            }

            dataPointer3 = &v99[v94];
            dataPointer += 4 * unsignedLongValue4;
            dataPointer2 += 4 * unsignedLongValue4;
            dataPointer4 += unsignedLongValue6;
            v38 = v98 + 1;
            v36 += unsignedLongValue6;
          }

          while (v98 + 1 != unsignedLongValue);
        }

        v37 = v93 + 1;
      }

      while (v93 + 1 != unsignedLongValue2);
    }

    v13 = v90 + 1;
  }

  while (v90 != 4);
  array2 = [MEMORY[0x277CBEB18] array];
  nmsConfiguration = [(HMISignificantActivityFcosDetector *)self nmsConfiguration];
  [HMIObjectDetectionUtils nmsMultiClass:array output:array2 nmsConfiguration:nmsConfiguration];

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v60 = array2;
  v61 = [v60 countByEnumeratingWithState:&v104 objects:v108 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v105;
    do
    {
      for (j = 0; j != v62; ++j)
      {
        if (*v105 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = *(*(&v104 + 1) + 8 * j);
        [v65 boundingBox];
        v112.origin.x = v66;
        v112.origin.y = v67;
        v112.size.width = v68;
        v112.size.height = v69;
        v110.origin.x = 0.0;
        v110.origin.y = 0.0;
        v110.size.width = 1.0;
        v110.size.height = 1.0;
        v111 = CGRectIntersection(v110, v112);
        x = v111.origin.x;
        y = v111.origin.y;
        width = v111.size.width;
        height = v111.size.height;
        if (!CGRectIsEmpty(v111))
        {
          v74 = [HMIObjectDetection alloc];
          labelIndex = [v65 labelIndex];
          [v65 confidence];
          v77 = v76;
          v78 = [v65 yaw];
          roll = [v65 roll];
          height = [(HMIObjectDetection *)v74 initWithLabelIndex:labelIndex confidence:v78 boundingBox:roll yaw:v77 roll:x, y, width, height];

          [predictionsCopy addObject:height];
        }
      }

      v62 = [v60 countByEnumeratingWithState:&v104 objects:v108 count:16];
    }

    while (v62);
  }
}

+ (id)defaultNMSConfiguration
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [HMINMSConfiguration alloc];
  v6[0] = &unk_284074FA0;
  v6[1] = &unk_284074FB8;
  v7[0] = &unk_2840757C8;
  v7[1] = &unk_2840757D8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = [(HMINMSConfiguration *)v2 initWithThresholdWithLabels:v3 metricWithLabels:MEMORY[0x277CBEC10] thresholdDefault:&unk_2840757E8 metricDefault:&unk_284074FD0];

  return v4;
}

+ (id)defaultAssetPath
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"SignificantActivityFcos" ofType:@"mlmodelc"];

  return v3;
}

- (CGSize)inputDimensions
{
  objc_copyStruct(v4, &self->_inputDimensions, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end