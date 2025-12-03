@interface VCPHandGestureClassifier
- (VCPHandGestureClassifier)initWithMinHandSize:(float)size options:(id)options;
- (int)processLeftHand:(id)hand rightHand:(id)rightHand results:(id)results resultsFlip:(id)flip faceRects:(id)rects faceYaws:(id)yaws;
- (int)processPerson:(int)person withObservations:(id)observations andFaceRects:(id)rects faceYaws:(id)yaws;
- (void)setHandGestureForHand:(id)hand withResult:(id)result andMapping:(id)mapping;
- (void)setRotationInDegrees:(int)degrees;
@end

@implementation VCPHandGestureClassifier

- (VCPHandGestureClassifier)initWithMinHandSize:(float)size options:(id)options
{
  v34 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v31.receiver = self;
  v31.super_class = VCPHandGestureClassifier;
  v7 = [(VCPHandGestureClassifier *)&v31 init];
  if (!v7)
  {
    v19 = 0;
    goto LABEL_14;
  }

  v8 = objc_alloc_init(VCPCoreMLFeatureProviderGestureVideo);
  featureProvider = v7->_featureProvider;
  v7->_featureProvider = v8;

  v10 = @"hand_gesture_dynamic_two_hand_5fps";
  v11 = [[VCPCoreMLRequest alloc] initWithModelName:v10];
  gestureCoreMLRequest = v7->_gestureCoreMLRequest;
  v7->_gestureCoreMLRequest = v11;

  v13 = objc_alloc_init(VCPHandGestureMitigator);
  mitigator = v7->_mitigator;
  v7->_mitigator = v13;

  if (v7->_gestureCoreMLRequest && v7->_featureProvider && (v16 = v7->_mitigator) != 0)
  {
    *&v15 = size;
    [(VCPHandGestureMitigator *)v16 setMinHandSize:v15];
    v17 = [optionsCopy objectForKeyedSubscript:@"MLAneQoS"];
    v18 = v17 == 0;

    v19 = v7;
    if (!v18)
    {
      v20 = [optionsCopy objectForKeyedSubscript:@"MLAneQoS"];
      v21 = v20;
      if (v20 == *MEMORY[0x1E695FD98])
      {
      }

      else
      {
        v22 = [optionsCopy objectForKeyedSubscript:@"MLAneQoS"];
        v23 = v22 == *MEMORY[0x1E695FDA0];

        if (!v23)
        {
          v19 = v7;
          if (MediaAnalysisLogLevel() < 4)
          {
            goto LABEL_12;
          }

          v19 = v7;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }

          v24 = [optionsCopy objectForKeyedSubscript:@"MLAneQoS"];
          *buf = 138412290;
          v33 = v24;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Gesture classifier - invalid input CoreML aneExecutionPriority %@", buf, 0xCu);

          goto LABEL_19;
        }
      }

      defaultOptions = [MEMORY[0x1E695FF08] defaultOptions];
      MLOptions = v7->_MLOptions;
      v7->_MLOptions = defaultOptions;

      v29 = [optionsCopy objectForKeyedSubscript:@"MLAneQoS"];
      [(MLPredictionOptions *)v7->_MLOptions setAneExecutionPriority:v29];

      v19 = v7;
      if (MediaAnalysisLogLevel() < 7)
      {
        goto LABEL_12;
      }

      v19 = v7;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_12;
      }

      v30 = [optionsCopy objectForKeyedSubscript:@"MLAneQoS"];
      *buf = 138412290;
      v33 = v30;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Gesture classifier - CoreML aneExecutionPriority is set to %@", buf, 0xCu);

LABEL_19:
      v19 = v7;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_12:

LABEL_14:
  v25 = v19;

  return v25;
}

- (void)setRotationInDegrees:(int)degrees
{
  v3 = *&degrees;
  [(VCPCoreMLFeatureProviderGestureVideo *)self->_featureProvider setRotationInDegrees:?];
  mitigator = self->_mitigator;

  [(VCPHandGestureMitigator *)mitigator setRotationInDegrees:v3];
}

- (void)setHandGestureForHand:(id)hand withResult:(id)result andMapping:(id)mapping
{
  v28 = *MEMORY[0x1E69E9840];
  handCopy = hand;
  resultCopy = result;
  mappingCopy = mapping;
  v10 = mappingCopy;
  if (handCopy && resultCopy)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = mappingCopy;
    intValue = 0;
    v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = *v24;
      v15 = 0.0;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          v18 = [resultCopy objectForKeyedSubscript:{v17, v23}];
          [v18 floatValue];
          v20 = v19;

          if (v20 > v15)
          {
            v21 = [v11 objectForKeyedSubscript:v17];
            intValue = [v21 intValue];

            v15 = v20;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    else
    {
      v15 = 0.0;
    }

    if ([handCopy gestureType])
    {
      if ([handCopy gestureType] != intValue)
      {
        goto LABEL_22;
      }

      [handCopy gestureConfidence];
      if (v15 <= *&v22)
      {
        goto LABEL_22;
      }
    }

    else if (v15 <= 0.5)
    {
      v15 = 1.0;
      [handCopy setGestureType:0];
    }

    else
    {
      [handCopy setGestureType:intValue];
    }

    *&v22 = v15;
    [handCopy setGestureConfidence:{v22, v23}];
  }

LABEL_22:
}

- (int)processLeftHand:(id)hand rightHand:(id)rightHand results:(id)results resultsFlip:(id)flip faceRects:(id)rects faceYaws:(id)yaws
{
  handCopy = hand;
  rightHandCopy = rightHand;
  resultsCopy = results;
  flipCopy = flip;
  rectsCopy = rects;
  yawsCopy = yaws;
  if (handCopy | rightHandCopy)
  {
    if (resultsCopy | flipCopy)
    {
      if (handCopy)
      {
        if (resultsCopy)
        {
          [(VCPHandGestureClassifier *)self setHandGestureForHand:handCopy withResult:resultsCopy andMapping:&unk_1F49BF298];
        }

        if (flipCopy)
        {
          [(VCPHandGestureClassifier *)self setHandGestureForHand:handCopy withResult:flipCopy andMapping:&unk_1F49BF2C0];
        }
      }

      if (rightHandCopy)
      {
        if (resultsCopy)
        {
          [(VCPHandGestureClassifier *)self setHandGestureForHand:rightHandCopy withResult:resultsCopy andMapping:&unk_1F49BF2C0];
        }

        if (flipCopy)
        {
          [(VCPHandGestureClassifier *)self setHandGestureForHand:rightHandCopy withResult:flipCopy andMapping:&unk_1F49BF298];
        }
      }

      v20 = [(VCPHandGestureMitigator *)self->_mitigator mitigate:handCopy rightHand:rightHandCopy featureProvider:self->_featureProvider faceRects:rectsCopy faceYaws:yawsCopy];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v22 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "processLeftHand : missing results", v22, 2u);
      }

      v20 = -50;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (int)processPerson:(int)person withObservations:(id)observations andFaceRects:(id)rects faceYaws:(id)yaws
{
  v8 = *&person;
  v76 = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  rectsCopy = rects;
  yawsCopy = yaws;
  [(VCPCoreMLFeatureProviderGestureVideo *)self->_featureProvider setCurrentGroupID:v8];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v11 = observationsCopy;
  v12 = 0;
  v13 = 0;
  v14 = [v11 countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (v14)
  {
    v15 = *v70;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v70 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v69 + 1) + 8 * i);
        if ([(VCPHandObservation *)v17 chirality]== -1)
        {
          if (!v13 || (v20 = handArea(v13), v20 < handArea(v17)))
          {
            v21 = v17;

            v13 = v21;
            [(VCPHandObservation *)v21 setGestureType:0];
          }
        }

        else if ([(VCPHandObservation *)v17 chirality]== 1)
        {
          if (!v12 || (v18 = handArea(v12), v18 < handArea(v17)))
          {
            v19 = v17;

            v12 = v19;
            [(VCPHandObservation *)v19 setGestureType:0];
          }
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v69 objects:v75 count:16];
    }

    while (v14);
  }

  [(VCPCoreMLFeatureProviderGestureVideo *)self->_featureProvider addLeftHand:v13 andRightHand:v12];
  if ([(VCPCoreMLFeatureProviderGestureVideo *)self->_featureProvider ready]&& v13 | v12)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v74) = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPHandGestureVideoRequest : classify group %d", buf, 8u);
    }

    v22 = VCPSignPostLog();
    spid = os_signpost_id_generate(v22);

    v23 = VCPSignPostLog();
    v24 = v23;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPHandGestureVideoRequest_classifier", "", buf, 2u);
    }

    [(VCPCoreMLFeatureProviderGestureVideo *)self->_featureProvider setScaleUpSmallHandGroup:1];
    if (!v12)
    {
      [objc_opt_class() enableFlip];
      if (v32 != 0.0)
      {
        dictionaryValue2 = 0;
        v34 = 0;
LABEL_34:
        [objc_opt_class() enableFlip];
        dictionaryValue = 0;
        if (v13 && v39 != 0.0)
        {
          [(VCPCoreMLFeatureProviderGestureVideo *)self->_featureProvider setLrFlip:1];
          gestureCoreMLRequest = self->_gestureCoreMLRequest;
          v60 = dictionaryValue2;
          if (self->_MLOptions)
          {
            model = [(VCPCoreMLRequest *)gestureCoreMLRequest model];
            featureProvider = self->_featureProvider;
            MLOptions = self->_MLOptions;
            v45 = &v66;
            v66 = v34;
            v46 = [model predictionFromFeatures:featureProvider options:MLOptions error:&v66];
          }

          else
          {
            model = [(VCPCoreMLRequest *)gestureCoreMLRequest model];
            v50 = self->_featureProvider;
            v65 = v34;
            v45 = &v65;
            v46 = [model predictionFromFeatures:v50 error:&v65];
          }

          v51 = v46;
          v61 = *v45;

          dictionaryValue2 = v60;
          if (v51)
          {
            v52 = [v51 featureValueForName:@"classLabel_probs"];
            v53 = v52;
            if (v52)
            {
              dictionaryValue = [v52 dictionaryValue];

LABEL_51:
              v54 = VCPSignPostLog();
              v55 = v54;
              if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_1C9B70000, v55, OS_SIGNPOST_INTERVAL_END, spid, "VCPHandGestureVideoRequest_classifier", "", buf, 2u);
              }

              v31 = [(VCPHandGestureClassifier *)self processLeftHand:v13 rightHand:v12 results:dictionaryValue2 resultsFlip:dictionaryValue faceRects:rectsCopy faceYaws:yawsCopy];
              goto LABEL_63;
            }

            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to get probs", buf, 2u);
            }
          }

          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v56 = [v61 description];
            v57 = v56;
            uTF8String = [v56 UTF8String];
            *buf = 136315138;
            v74 = uTF8String;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to get output feature %s", buf, 0xCu);
          }

          dictionaryValue = 0;
          v31 = -18;
LABEL_63:

          v34 = v61;
          goto LABEL_64;
        }

        v61 = v34;
        goto LABEL_51;
      }
    }

    [(VCPCoreMLFeatureProviderGestureVideo *)self->_featureProvider setLrFlip:0];
    v25 = self->_gestureCoreMLRequest;
    if (self->_MLOptions)
    {
      model2 = [(VCPCoreMLRequest *)v25 model];
      v27 = self->_featureProvider;
      v28 = self->_MLOptions;
      v29 = &v68;
      v68 = 0;
      v30 = [model2 predictionFromFeatures:v27 options:v28 error:&v68];
    }

    else
    {
      model2 = [(VCPCoreMLRequest *)v25 model];
      v35 = self->_featureProvider;
      v67 = 0;
      v29 = &v67;
      v30 = [model2 predictionFromFeatures:v35 error:&v67];
    }

    v36 = v30;
    v34 = *v29;

    if (v36)
    {
      v37 = [v36 featureValueForName:@"classLabel_probs"];
      v38 = v37;
      if (v37)
      {
        dictionaryValue2 = [v37 dictionaryValue];

        goto LABEL_34;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to get probs", buf, 2u);
      }
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v47 = [v34 description];
      v48 = v47;
      uTF8String2 = [v47 UTF8String];
      *buf = 136315138;
      v74 = uTF8String2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to get output feature %s", buf, 0xCu);
    }

    v31 = -18;
LABEL_64:

    goto LABEL_65;
  }

  v31 = 0;
LABEL_65:

  return v31;
}

@end