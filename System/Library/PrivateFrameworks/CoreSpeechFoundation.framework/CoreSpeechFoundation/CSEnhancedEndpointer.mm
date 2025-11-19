@interface CSEnhancedEndpointer
- (BOOL)_shouldForceEndpoint:(id)a3;
- (CSEnhancedEndpointer)initWithModelFile:(id)a3 defaultThresholdPartial:(float)a4 defaultThresholdRC:(float)a5 relaxedThresholdPartial:(float)a6 relaxedThresholdRC:(float)a7 extraDelayMs:(int)a8 continuityWindowDuration:(int)a9 speechDetectedThreshold:(float)a10;
- (id)_constructFeatureDictionary:(id)a3;
- (void)_extractModelSpecs;
- (void)didEndpointWithFeatures:(id)a3 audioTimestampMs:(double)a4 completion:(id)a5;
- (void)updateDefaultThresholdPartial:(float)a3 defaultThresholdRC:(float)a4 relaxedThresholdPartial:(float)a5 relaxedThresholdRC:(float)a6;
@end

@implementation CSEnhancedEndpointer

- (void)updateDefaultThresholdPartial:(float)a3 defaultThresholdRC:(float)a4 relaxedThresholdPartial:(float)a5 relaxedThresholdRC:(float)a6
{
  self->_defaultThresholdPartial = a3;
  self->_defaultThresholdRC = a4;
  self->_relaxedThresholdPartial = a5;
  self->_relaxedThresholdRC = a6;
}

- (BOOL)_shouldForceEndpoint:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 trailingSilenceDuration] >= 5000)
  {
    v4 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v13 = 136315394;
      v14 = "[CSEnhancedEndpointer _shouldForceEndpoint:]";
      v15 = 2048;
      v16 = COERCE_DOUBLE([v3 trailingSilenceDuration]);
      v6 = "%s Force endpointing based on trailingSilenceDuration: %ld";
LABEL_8:
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, v6, &v13, 0x16u);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  [v3 silencePosteriorNF];
  if (v7 >= 5000.0)
  {
    v9 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v9;
      [v3 silencePosteriorNF];
      v13 = 136315394;
      v14 = "[CSEnhancedEndpointer _shouldForceEndpoint:]";
      v15 = 2048;
      v16 = v10;
      v6 = "%s Force endpointing based on silencePosteriorNF: %f";
      goto LABEL_8;
    }

LABEL_9:
    v8 = 1;
    goto LABEL_10;
  }

  v8 = 0;
LABEL_10:

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)_constructFeatureDictionary:(id)a3
{
  v4 = [(CSEnhancedEndpointerInputVector *)self->_inputVector multiArrayWithContext:a3];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  inputSpecs = self->_inputSpecs;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__CSEnhancedEndpointer__constructFeatureDictionary___block_invoke;
  v12[3] = &unk_1E865C408;
  v7 = v5;
  v13 = v7;
  v14 = v4;
  v8 = v4;
  [(NSDictionary *)inputSpecs enumerateKeysAndObjectsUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __52__CSEnhancedEndpointer__constructFeatureDictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if ([v6 isEqualToString:@"x_1"])
  {
    [*(a1 + 32) setObject:*(a1 + 40) forKey:v6];
  }

  else
  {
    v7 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[CSEnhancedEndpointer _constructFeatureDictionary:]_block_invoke";
      _os_log_error_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_ERROR, "%s Unexpected key in model input specifications", &v9, 0xCu);
    }

    *a4 = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)didEndpointWithFeatures:(id)a3 audioTimestampMs:(double)a4 completion:(id)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __76__CSEnhancedEndpointer_didEndpointWithFeatures_audioTimestampMs_completion___block_invoke;
  v42[3] = &unk_1E865A760;
  v10 = v9;
  v43 = v10;
  v11 = MEMORY[0x1E12BA300](v42);
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = objc_alloc_init(CSEnhancedEndpointerResult);
  if (!v8)
  {
    goto LABEL_4;
  }

  [v37[5] setEndpointerType:{-[CSEnhancedEndpointerInputVector endpointerType](self->_inputVector, "endpointerType")}];
  if (![(CSEnhancedEndpointer *)self _shouldForceEndpoint:v8])
  {
    v12 = [(CSEnhancedEndpointer *)self _constructFeatureDictionary:v8];
    v35 = 0;
    v13 = [objc_alloc(MEMORY[0x1E695FE40]) initWithDictionary:v12 error:&v35];
    v14 = v35;
    if (v14 || !v13)
    {
      v22 = CSLogCategoryEP;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v27 = [v14 localizedDescription];
        *buf = 136315650;
        v45 = "[CSEnhancedEndpointer didEndpointWithFeatures:audioTimestampMs:completion:]";
        v46 = 2114;
        v47 = v27;
        v48 = 2114;
        v49 = v12;
        _os_log_error_impl(&dword_1DDA4B000, v22, OS_LOG_TYPE_ERROR, "%s Unable to create feature dict with error %{public}@ from %{public}@", buf, 0x20u);
      }

      v11[2](v11, v37[5]);
      goto LABEL_35;
    }

    endpointerModel = self->_endpointerModel;
    v34 = 0;
    v16 = [(MLModel *)endpointerModel predictionFromFeatures:v13 error:&v34];
    v14 = v34;
    if (v14 || !v16)
    {
      v23 = CSLogCategoryEP;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v28 = [v14 localizedDescription];
        *buf = 136315650;
        v45 = "[CSEnhancedEndpointer didEndpointWithFeatures:audioTimestampMs:completion:]";
        v46 = 2114;
        v47 = v28;
        v48 = 2114;
        v49 = v13;
        _os_log_error_impl(&dword_1DDA4B000, v23, OS_LOG_TYPE_ERROR, "%s Unable to create get prediction from model with error %{public}@ from %{public}@", buf, 0x20u);
      }

      goto LABEL_33;
    }

    if (self->_delayedTrigger)
    {
      [v37[5] setExtraDelayMs:self->_extraDelayMs];
    }

    delayedTargetTimeDefault = self->_delayedTargetTimeDefault;
    if (delayedTargetTimeDefault > 0.0 && delayedTargetTimeDefault <= a4 && !self->_hasHadDelayedDefaultResult)
    {
      v18 = CSLogCategoryEP;
      if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v45 = "[CSEnhancedEndpointer didEndpointWithFeatures:audioTimestampMs:completion:]";
        _os_log_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_DEFAULT, "%s Reached delayed trigger target time for default endpointer", buf, 0xCu);
      }

      self->_hasHadDelayedDefaultResult = 1;
      [v37[5] setDidDefaultEndpointerFire:1];
    }

    delayedTargetTimeRelaxed = self->_delayedTargetTimeRelaxed;
    if (delayedTargetTimeRelaxed <= 0.0 || delayedTargetTimeRelaxed > a4)
    {
      continuityEndTargetTime = self->_continuityEndTargetTime;
      if (continuityEndTargetTime <= 0.0 || continuityEndTargetTime > a4)
      {
        outputNodes = self->_outputNodes;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __76__CSEnhancedEndpointer_didEndpointWithFeatures_audioTimestampMs_completion___block_invoke_149;
        v29[3] = &unk_1E865A788;
        v31 = self;
        v32 = &v36;
        v30 = v16;
        v33 = a4;
        [(NSArray *)outputNodes enumerateObjectsUsingBlock:v29];
        v11[2](v11, v37[5]);

        goto LABEL_34;
      }

      v20 = CSLogCategoryEP;
      if (!os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *buf = 136315138;
      v45 = "[CSEnhancedEndpointer didEndpointWithFeatures:audioTimestampMs:completion:]";
      v21 = "%s Reached continuity window end time - force endpointing";
    }

    else
    {
      v20 = CSLogCategoryEP;
      if (!os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
      {
LABEL_32:
        [v37[5] setDidRelaxedEndpointerFire:1];
LABEL_33:
        v11[2](v11, v37[5]);
LABEL_34:

LABEL_35:
        goto LABEL_36;
      }

      *buf = 136315138;
      v45 = "[CSEnhancedEndpointer didEndpointWithFeatures:audioTimestampMs:completion:]";
      v21 = "%s Reached delayed trigger target time for relaxed endpointer - force endpointing";
    }

    _os_log_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
    goto LABEL_32;
  }

  [v37[5] setDidDefaultEndpointerFire:1];
  [v37[5] setDidRelaxedEndpointerFire:1];
  [v37[5] setDidForceEndpoint:1];
LABEL_4:
  v11[2](v11, v37[5]);
LABEL_36:
  _Block_object_dispose(&v36, 8);

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t __76__CSEnhancedEndpointer_didEndpointWithFeatures_audioTimestampMs_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __76__CSEnhancedEndpointer_didEndpointWithFeatures_audioTimestampMs_completion___block_invoke_149(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 featureValueForName:v7];
  v9 = [v8 multiArrayValue];

  v10 = [v7 isEqualToString:@"var_127"];
  if (v10)
  {
    v11 = [v9 convert1dMLMultiArrayToNSArray];
    if ([v11 count] != 2)
    {
      v28 = CSLogCategoryEP;
      if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_ERROR))
      {
        *v45 = 136315138;
        *&v45[4] = "[CSEnhancedEndpointer didEndpointWithFeatures:audioTimestampMs:completion:]_block_invoke";
        _os_log_error_impl(&dword_1DDA4B000, v28, OS_LOG_TYPE_ERROR, "%s Model output had unexpected size", v45, 0xCu);
      }

      *a4 = 1;
      goto LABEL_39;
    }

    v12 = [v11 objectAtIndex:0];
    [v12 floatValue];
    v14 = v13;

    v15 = [v11 objectAtIndex:1];
    [v15 floatValue];
    v17 = v16;

    *&v18 = v14;
    [*(*(*(a1 + 48) + 8) + 40) setPartialScore:v18];
    LODWORD(v19) = v17;
    [*(*(*(a1 + 48) + 8) + 40) setRcScore:v19];
    *&v20 = v14;
    LODWORD(v21) = v17;
    if ([*(a1 + 40) _didRelaxedEndpointerFireWithPartialScore:v20 rcScore:v21])
    {
      v24 = *(a1 + 40);
      if (*(v24 + 8) == 1)
      {
        v22 = *(v24 + 72);
        if (v22 < 0.0)
        {
          *(v24 + 72) = *(a1 + 56) + *(v24 + 28);
          v25 = CSLogCategoryEP;
          if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(*(a1 + 40) + 72);
            *v45 = 136315394;
            *&v45[4] = "[CSEnhancedEndpointer didEndpointWithFeatures:audioTimestampMs:completion:]_block_invoke";
            *&v45[12] = 2048;
            *&v45[14] = v26;
            _os_log_impl(&dword_1DDA4B000, v25, OS_LOG_TYPE_DEFAULT, "%s Using delayed trigger logic for relaxed endpointer - target time: %f", v45, 0x16u);
          }
        }
      }

      else
      {
        [*(*(*(a1 + 48) + 8) + 40) setDidRelaxedEndpointerFire:1];
      }
    }

    *&v22 = v14;
    LODWORD(v23) = v17;
    if ([*(a1 + 40) _didDefaultEndpointerFireWithPartialScore:v22 rcScore:v23])
    {
      v30 = *(a1 + 40);
      if (*(v30 + 8) == 1 && (*(v30 + 9) & 1) == 0)
      {
        v29 = *(v30 + 64);
        if (v29 >= 0.0)
        {
          goto LABEL_27;
        }

        *(v30 + 64) = *(a1 + 56) + *(v30 + 28);
        v32 = CSLogCategoryEP;
        if (!os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        v35 = *(*(a1 + 40) + 64);
        *v45 = 136315394;
        *&v45[4] = "[CSEnhancedEndpointer didEndpointWithFeatures:audioTimestampMs:completion:]_block_invoke";
        *&v45[12] = 2048;
        *&v45[14] = v35;
        v34 = "%s Using delayed trigger logic for default endpointer - target time: %f";
      }

      else
      {
        [*(*(*(a1 + 48) + 8) + 40) setDidDefaultEndpointerFire:1];
        v31 = *(a1 + 40);
        v29 = *(v31 + 88);
        if (v29 >= 0.0)
        {
          goto LABEL_27;
        }

        if (*(v31 + 32) < 1)
        {
          goto LABEL_27;
        }

        if ([*(*(*(a1 + 48) + 8) + 40) didRelaxedEndpointerFire])
        {
          goto LABEL_27;
        }

        *(*(a1 + 40) + 88) = *(a1 + 56) + *(*(a1 + 40) + 32);
        v32 = CSLogCategoryEP;
        if (!os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        v33 = *(*(a1 + 40) + 88);
        *v45 = 136315394;
        *&v45[4] = "[CSEnhancedEndpointer didEndpointWithFeatures:audioTimestampMs:completion:]_block_invoke";
        *&v45[12] = 2048;
        *&v45[14] = v33;
        v34 = "%s Entering continuity window - target time for continuity end: %f";
      }

      _os_log_impl(&dword_1DDA4B000, v32, OS_LOG_TYPE_DEFAULT, v34, v45, 0x16u);
    }

LABEL_27:
    *&v29 = v14;
    if ([*(a1 + 40) _didDetectSpeechWithPartialScore:{v29, *v45, *&v45[16], v46}])
    {
      [*(*(*(a1 + 48) + 8) + 40) setSpeechArrivalDetected:1];
      *(*(a1 + 40) + 88) = 0xBFF0000000000000;
    }

    if ([*(*(*(a1 + 48) + 8) + 40) didEndpointerFire])
    {
      v37 = *(a1 + 40);
      if (v14 >= *(v37 + 12) || v14 >= *(v37 + 20))
      {
        *&v36 = v14;
        [*(*(*(a1 + 48) + 8) + 40) setEndpointPosterior:v36];
        v42 = [*(*(*(a1 + 48) + 8) + 40) didRelaxedEndpointerFire];
        v43 = *(a1 + 40);
        v41 = *(*(*(a1 + 48) + 8) + 40);
        if (v42)
        {
          LODWORD(v39) = *(v43 + 20);
        }

        else
        {
          LODWORD(v39) = *(v43 + 12);
        }
      }

      else
      {
        LODWORD(v36) = v17;
        [*(*(*(a1 + 48) + 8) + 40) setEndpointPosterior:v36];
        v38 = [*(*(*(a1 + 48) + 8) + 40) didRelaxedEndpointerFire];
        v40 = *(a1 + 40);
        v41 = *(*(*(a1 + 48) + 8) + 40);
        if (v38)
        {
          LODWORD(v39) = *(v40 + 24);
        }

        else
        {
          LODWORD(v39) = *(v40 + 16);
        }
      }

      [v41 setEndpointerThreshold:v39];
    }

LABEL_39:

    goto LABEL_40;
  }

  v27 = CSLogCategoryEP;
  if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_ERROR))
  {
    *v45 = 136315394;
    *&v45[4] = "[CSEnhancedEndpointer didEndpointWithFeatures:audioTimestampMs:completion:]_block_invoke";
    *&v45[12] = 2112;
    *&v45[14] = @"var_127";
    _os_log_error_impl(&dword_1DDA4B000, v27, OS_LOG_TYPE_ERROR, "%s Model had unexpected output vector name - should be %@", v45, 0x16u);
  }

  *a4 = 1;
LABEL_40:

  v44 = *MEMORY[0x1E69E9840];
}

- (void)_extractModelSpecs
{
  v3 = [(MLModel *)self->_endpointerModel modelDescription];
  v4 = [v3 inputDescriptionsByName];
  inputSpecs = self->_inputSpecs;
  self->_inputSpecs = v4;

  v6 = [(MLModel *)self->_endpointerModel modelDescription];
  v10 = [v6 outputDescriptionsByName];

  v7 = [v10 allKeys];
  v8 = [v7 copy];
  outputNodes = self->_outputNodes;
  self->_outputNodes = v8;
}

- (CSEnhancedEndpointer)initWithModelFile:(id)a3 defaultThresholdPartial:(float)a4 defaultThresholdRC:(float)a5 relaxedThresholdPartial:(float)a6 relaxedThresholdRC:(float)a7 extraDelayMs:(int)a8 continuityWindowDuration:(int)a9 speechDetectedThreshold:(float)a10
{
  v53 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v48.receiver = self;
  v48.super_class = CSEnhancedEndpointer;
  v19 = [(CSEnhancedEndpointer *)&v48 init];
  v20 = v19;
  if (!v19)
  {
    goto LABEL_6;
  }

  v19->_defaultThresholdPartial = a4;
  v19->_defaultThresholdRC = a5;
  v19->_relaxedThresholdPartial = a6;
  v19->_relaxedThresholdRC = a7;
  v19->_extraDelayMs = a8;
  v19->_continuityWindowDuration = a9;
  v19->_speechDetectedThreshold = a10;
  __asm { FMOV            V0.2D, #-1.0 }

  *&v19->_delayedTargetTimeDefault = _Q0;
  v19->_continuityEndTargetTime = -1.0;
  v26 = [MEMORY[0x1E695DFF8] fileURLWithPath:v18];
  v27 = objc_alloc_init(MEMORY[0x1E695FEB8]);
  [v27 setComputeUnits:0];
  v47 = 0;
  v28 = [MEMORY[0x1E695FE98] modelWithContentsOfURL:v26 configuration:v27 error:&v47];
  v29 = v47;
  endpointerModel = v20->_endpointerModel;
  v20->_endpointerModel = v28;

  if (!v20->_endpointerModel)
  {
    v38 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_ERROR))
    {
      v42 = v38;
      v43 = [v29 localizedDescription];
      *buf = 136315394;
      v50 = "[CSEnhancedEndpointer initWithModelFile:defaultThresholdPartial:defaultThresholdRC:relaxedThresholdPartial:relaxedThresholdRC:extraDelayMs:continuityWindowDuration:speechDetectedThreshold:]";
      v51 = 2114;
      v52 = v43;
      _os_log_error_impl(&dword_1DDA4B000, v42, OS_LOG_TYPE_ERROR, "%s Unable to create MLModel with err %{public}@", buf, 0x16u);
    }

    goto LABEL_13;
  }

  [(CSEnhancedEndpointer *)v20 _extractModelSpecs];
  v31 = [(NSDictionary *)v20->_inputSpecs objectForKeyedSubscript:@"x_1"];
  v32 = [v31 multiArrayConstraint];

  v33 = [v32 shape];
  v46 = v29;
  v34 = +[CSEnhancedEndpointerInputVectorFactory inputVectorWithShape:dataType:error:](_TtC20CoreSpeechFoundation38CSEnhancedEndpointerInputVectorFactory, "inputVectorWithShape:dataType:error:", v33, [v32 dataType], &v46);
  v35 = v46;

  inputVector = v20->_inputVector;
  v20->_inputVector = v34;

  if (!v20->_inputVector || v35)
  {
    v39 = CSLogCategoryEP;
    if (os_log_type_enabled(CSLogCategoryEP, OS_LOG_TYPE_ERROR))
    {
      v44 = v39;
      v45 = [v35 localizedDescription];
      *buf = 136315394;
      v50 = "[CSEnhancedEndpointer initWithModelFile:defaultThresholdPartial:defaultThresholdRC:relaxedThresholdPartial:relaxedThresholdRC:extraDelayMs:continuityWindowDuration:speechDetectedThreshold:]";
      v51 = 2112;
      v52 = v45;
      _os_log_error_impl(&dword_1DDA4B000, v44, OS_LOG_TYPE_ERROR, "%s Unable to create input vector. Error: %@", buf, 0x16u);
    }

LABEL_13:
    v37 = 0;
    goto LABEL_14;
  }

LABEL_6:
  v37 = v20;
LABEL_14:

  v40 = *MEMORY[0x1E69E9840];
  return v37;
}

@end