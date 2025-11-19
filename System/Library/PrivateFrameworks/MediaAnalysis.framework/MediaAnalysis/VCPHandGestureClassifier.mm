@interface VCPHandGestureClassifier
- (VCPHandGestureClassifier)initWithMinHandSize:(float)a3 options:(id)a4;
- (int)processLeftHand:(id)a3 rightHand:(id)a4 results:(id)a5 resultsFlip:(id)a6 faceRects:(id)a7 faceYaws:(id)a8;
- (int)processPerson:(int)a3 withObservations:(id)a4 andFaceRects:(id)a5 faceYaws:(id)a6;
- (void)setHandGestureForHand:(id)a3 withResult:(id)a4 andMapping:(id)a5;
- (void)setRotationInDegrees:(int)a3;
@end

@implementation VCPHandGestureClassifier

- (VCPHandGestureClassifier)initWithMinHandSize:(float)a3 options:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a4;
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
    *&v15 = a3;
    [(VCPHandGestureMitigator *)v16 setMinHandSize:v15];
    v17 = [v6 objectForKeyedSubscript:@"MLAneQoS"];
    v18 = v17 == 0;

    v19 = v7;
    if (!v18)
    {
      v20 = [v6 objectForKeyedSubscript:@"MLAneQoS"];
      v21 = v20;
      if (v20 == *MEMORY[0x1E695FD98])
      {
      }

      else
      {
        v22 = [v6 objectForKeyedSubscript:@"MLAneQoS"];
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

          v24 = [v6 objectForKeyedSubscript:@"MLAneQoS"];
          *buf = 138412290;
          v33 = v24;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Gesture classifier - invalid input CoreML aneExecutionPriority %@", buf, 0xCu);

          goto LABEL_19;
        }
      }

      v27 = [MEMORY[0x1E695FF08] defaultOptions];
      MLOptions = v7->_MLOptions;
      v7->_MLOptions = v27;

      v29 = [v6 objectForKeyedSubscript:@"MLAneQoS"];
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

      v30 = [v6 objectForKeyedSubscript:@"MLAneQoS"];
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

- (void)setRotationInDegrees:(int)a3
{
  v3 = *&a3;
  [(VCPCoreMLFeatureProviderGestureVideo *)self->_featureProvider setRotationInDegrees:?];
  mitigator = self->_mitigator;

  [(VCPHandGestureMitigator *)mitigator setRotationInDegrees:v3];
}

- (void)setHandGestureForHand:(id)a3 withResult:(id)a4 andMapping:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7 && v8)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v9;
    v12 = 0;
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
          v18 = [v8 objectForKeyedSubscript:{v17, v23}];
          [v18 floatValue];
          v20 = v19;

          if (v20 > v15)
          {
            v21 = [v11 objectForKeyedSubscript:v17];
            v12 = [v21 intValue];

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

    if ([v7 gestureType])
    {
      if ([v7 gestureType] != v12)
      {
        goto LABEL_22;
      }

      [v7 gestureConfidence];
      if (v15 <= *&v22)
      {
        goto LABEL_22;
      }
    }

    else if (v15 <= 0.5)
    {
      v15 = 1.0;
      [v7 setGestureType:0];
    }

    else
    {
      [v7 setGestureType:v12];
    }

    *&v22 = v15;
    [v7 setGestureConfidence:{v22, v23}];
  }

LABEL_22:
}

- (int)processLeftHand:(id)a3 rightHand:(id)a4 results:(id)a5 resultsFlip:(id)a6 faceRects:(id)a7 faceYaws:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v14 | v15)
  {
    if (v16 | v17)
    {
      if (v14)
      {
        if (v16)
        {
          [(VCPHandGestureClassifier *)self setHandGestureForHand:v14 withResult:v16 andMapping:&unk_1F49BF298];
        }

        if (v17)
        {
          [(VCPHandGestureClassifier *)self setHandGestureForHand:v14 withResult:v17 andMapping:&unk_1F49BF2C0];
        }
      }

      if (v15)
      {
        if (v16)
        {
          [(VCPHandGestureClassifier *)self setHandGestureForHand:v15 withResult:v16 andMapping:&unk_1F49BF2C0];
        }

        if (v17)
        {
          [(VCPHandGestureClassifier *)self setHandGestureForHand:v15 withResult:v17 andMapping:&unk_1F49BF298];
        }
      }

      v20 = [(VCPHandGestureMitigator *)self->_mitigator mitigate:v14 rightHand:v15 featureProvider:self->_featureProvider faceRects:v18 faceYaws:v19];
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

- (int)processPerson:(int)a3 withObservations:(id)a4 andFaceRects:(id)a5 faceYaws:(id)a6
{
  v8 = *&a3;
  v76 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v63 = a5;
  v64 = a6;
  [(VCPCoreMLFeatureProviderGestureVideo *)self->_featureProvider setCurrentGroupID:v8];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v11 = v10;
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
        v33 = 0;
        v34 = 0;
LABEL_34:
        [objc_opt_class() enableFlip];
        v40 = 0;
        if (v13 && v39 != 0.0)
        {
          [(VCPCoreMLFeatureProviderGestureVideo *)self->_featureProvider setLrFlip:1];
          gestureCoreMLRequest = self->_gestureCoreMLRequest;
          v60 = v33;
          if (self->_MLOptions)
          {
            v42 = [(VCPCoreMLRequest *)gestureCoreMLRequest model];
            featureProvider = self->_featureProvider;
            MLOptions = self->_MLOptions;
            v45 = &v66;
            v66 = v34;
            v46 = [v42 predictionFromFeatures:featureProvider options:MLOptions error:&v66];
          }

          else
          {
            v42 = [(VCPCoreMLRequest *)gestureCoreMLRequest model];
            v50 = self->_featureProvider;
            v65 = v34;
            v45 = &v65;
            v46 = [v42 predictionFromFeatures:v50 error:&v65];
          }

          v51 = v46;
          v61 = *v45;

          v33 = v60;
          if (v51)
          {
            v52 = [v51 featureValueForName:@"classLabel_probs"];
            v53 = v52;
            if (v52)
            {
              v40 = [v52 dictionaryValue];

LABEL_51:
              v54 = VCPSignPostLog();
              v55 = v54;
              if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_1C9B70000, v55, OS_SIGNPOST_INTERVAL_END, spid, "VCPHandGestureVideoRequest_classifier", "", buf, 2u);
              }

              v31 = [(VCPHandGestureClassifier *)self processLeftHand:v13 rightHand:v12 results:v33 resultsFlip:v40 faceRects:v63 faceYaws:v64];
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
            v58 = [v56 UTF8String];
            *buf = 136315138;
            v74 = v58;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to get output feature %s", buf, 0xCu);
          }

          v40 = 0;
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
      v26 = [(VCPCoreMLRequest *)v25 model];
      v27 = self->_featureProvider;
      v28 = self->_MLOptions;
      v29 = &v68;
      v68 = 0;
      v30 = [v26 predictionFromFeatures:v27 options:v28 error:&v68];
    }

    else
    {
      v26 = [(VCPCoreMLRequest *)v25 model];
      v35 = self->_featureProvider;
      v67 = 0;
      v29 = &v67;
      v30 = [v26 predictionFromFeatures:v35 error:&v67];
    }

    v36 = v30;
    v34 = *v29;

    if (v36)
    {
      v37 = [v36 featureValueForName:@"classLabel_probs"];
      v38 = v37;
      if (v37)
      {
        v33 = [v37 dictionaryValue];

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
      v49 = [v47 UTF8String];
      *buf = 136315138;
      v74 = v49;
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