@interface MADVideoSafetyClassifier
+ (id)analyzeVideoAssetOnDemandWithURL:(id)a3 localIdentifier:(id)a4 timeRange:(id *)a5 cancelBlock:(id)a6 andProgressHandler:(id)a7;
+ (id)mergeScoresForLabelsA:(id)a3 scoresForLabelsB:(id)a4;
+ (id)safetyScoresForLabels:(id)a3;
- (MADVideoSafetyClassifier)init;
- (id)results;
- (int)analyzeFrame:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 flags:(unint64_t *)a6;
- (int)analyzeFrameWithSampleBuffer:(opaqueCMSampleBuffer *)a3 timestamp:(id *)a4 duration:(id *)a5 andFlags:(unint64_t *)a6;
- (int)configureAndStartVideoAnalyzer;
- (int)finishAnalysisPass:(id *)a3;
- (void)addAnalysisResults;
- (void)configureProcessTimeIntervalFrom:(id *)a3;
@end

@implementation MADVideoSafetyClassifier

+ (id)safetyScoresForLabels:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__MADVideoSafetyClassifier_safetyScoresForLabels___block_invoke;
    v7[3] = &unk_1E834DF68;
    v5 = v4;
    v8 = v5;
    [v3 enumerateKeysAndObjectsUsingBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __50__MADVideoSafetyClassifier_safetyScoresForLabels___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = VCPSpecialLabelToExtendedSceneClassificationID(v5);
  v8 = v7;
  if (v7 && ([v7 unsignedLongLongValue] > 0x7FFFF8F5 && objc_msgSend(v8, "unsignedLongLongValue") < 0x7FFFF900 || objc_msgSend(v8, "unsignedLongLongValue") > 0x7FFFF6FD && objc_msgSend(v8, "unsignedLongLongValue") < 0x7FFFF700))
  {
    v9 = *(a1 + 32);
    v10 = [v8 stringValue];
    [v9 setObject:v6 forKeyedSubscript:v10];
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unsupported observation label in VCPSpecialLabelToExtendedSceneClassificationID %@", &v11, 0xCu);
  }
}

+ (id)mergeScoresForLabelsA:(id)a3 scoresForLabelsB:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [v5 mutableCopy];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __67__MADVideoSafetyClassifier_mergeScoresForLabelsA_scoresForLabelsB___block_invoke;
      v12[3] = &unk_1E834DF68;
      v9 = v8;
      v13 = v9;
      [v7 enumerateKeysAndObjectsUsingBlock:v12];

      goto LABEL_7;
    }

    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  v9 = v10;
LABEL_7:

  return v9;
}

void __67__MADVideoSafetyClassifier_mergeScoresForLabelsA_scoresForLabelsB___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v13];

  if (v6)
  {
    [v5 doubleValue];
    v8 = v7;
    v9 = [*(a1 + 32) objectForKeyedSubscript:v13];
    [v9 doubleValue];
    v11 = v10;
    v12 = v5;
    if (v8 <= v10)
    {
      v12 = [*(a1 + 32) objectForKeyedSubscript:v13];
    }

    [*(a1 + 32) setObject:v12 forKeyedSubscript:v13];
    if (v8 <= v11)
    {
    }
  }

  else
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v13];
  }
}

+ (id)analyzeVideoAssetOnDemandWithURL:(id)a3 localIdentifier:(id)a4 timeRange:(id *)a5 cancelBlock:(id)a6 andProgressHandler:(id)a7
{
  v61 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = [MEMORY[0x1E695DF70] array];
  if ((a5->var0.var2 & 1) != 0 && (a5->var1.var2 & 1) != 0 && !a5->var1.var3 && (a5->var1.var0 & 0x8000000000000000) == 0)
  {
    context = objc_autoreleasePoolPush();
    v43 = objc_alloc_init(MEMORY[0x1E69AE4F0]);
    [v43 setRequiresScoresAndLabels:1];
    [v43 setEnableGoreViolenceDetection:_os_feature_enabled_impl()];
    v18 = [MEMORY[0x1E696AAE8] mainBundle];
    v19 = [v18 bundleIdentifier];
    v20 = [MADServiceVideoAsset assetWithURL:v11 identifier:v12 clientBundleID:v19 clientTeamID:0];

    v42 = v20;
    if (!v20)
    {
      v29 = 0;
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v12;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create MADServiceVideoAsset with %@", &buf, 0xCu);
      }

      goto LABEL_38;
    }

    [v20 setUserSafetyEligible:1];
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = -1;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v57 = 0x3032000000;
    v58 = __Block_byref_object_copy__49;
    v59 = __Block_byref_object_dispose__49;
    v60 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __118__MADVideoSafetyClassifier_analyzeVideoAssetOnDemandWithURL_localIdentifier_timeRange_cancelBlock_andProgressHandler___block_invoke;
    aBlock[3] = &unk_1E8350520;
    aBlock[4] = &v46;
    aBlock[5] = &buf;
    v40 = _Block_copy(aBlock);
    v21 = [(MADServiceVideoProcessingSubtask *)MADServiceVideoSafetyProcessingTask taskWithRequest:v43 forAsset:v20 cancelBlock:v13 progressHandler:v14 andCompletionHandler:v40];
    v22 = v21;
    if (!v21)
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      LOWORD(var0.var0) = 0;
      v27 = MEMORY[0x1E69E9C10];
      v28 = "Failed to create the safety analyze task";
      goto LABEL_27;
    }

    v39 = v21;
    [v21 setEnablePowerLog:0];
    v23 = VCPSignPostLog();
    v24 = os_signpost_id_generate(v23);

    v25 = VCPSignPostLog();
    v26 = v25;
    if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      LOWORD(var0.var0) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v24, "MADServiceVideoSafetyProcessingTask_Run", "", &var0, 2u);
    }

    if ([v39 run])
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v22 = v39;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LOWORD(var0.var0) = 0;
          v27 = MEMORY[0x1E69E9C10];
          v28 = "Failed to run the safety analyze task";
LABEL_27:
          _os_log_impl(&dword_1C9B70000, v27, OS_LOG_TYPE_ERROR, v28, &var0, 2u);
        }

LABEL_37:

        _Block_object_dispose(&buf, 8);
        _Block_object_dispose(&v46, 8);
        v29 = v42;
LABEL_38:

        objc_autoreleasePoolPop(context);
        goto LABEL_7;
      }
    }

    else
    {
      v30 = VCPSignPostLog();
      v31 = v30;
      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
      {
        LOWORD(var0.var0) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v31, OS_SIGNPOST_INTERVAL_END, v24, "MADServiceVideoSafetyProcessingTask_Run", "", &var0, 2u);
      }

      v32 = [objc_opt_class() safetyScoresForLabels:*(*(&buf + 1) + 40)];
      if (v32)
      {
        v33 = v32;
      }

      else
      {
        v33 = MEMORY[0x1E695E0F8];
      }

      v54[0] = @"Sensitivity";
      v34 = [MEMORY[0x1E696AD98] numberWithShort:*(v47 + 12)];
      v54[1] = @"SensitivitySceneResults";
      v55[0] = v34;
      v55[1] = v33;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];

      v52[0] = @"start";
      var0 = a5->var0;
      v35 = CMTimeToNSDictionary(&var0);
      v53[0] = v35;
      v52[1] = @"duration";
      var0 = a5->var1;
      v36 = CMTimeToNSDictionary(&var0);
      v52[2] = @"attributes";
      v53[1] = v36;
      v53[2] = v38;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:3];
      [v15 addObject:v37];
    }

    v22 = v39;
    goto LABEL_37;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid video time range", &buf, 2u);
  }

LABEL_7:
  v50 = @"SafetyResults";
  v51 = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:{1, v38}];

  return v16;
}

void __118__MADVideoSafetyClassifier_analyzeVideoAssetOnDemandWithURL_localIdentifier_timeRange_cancelBlock_andProgressHandler___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    LOWORD(v23) = 0;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "Empty resultPayload";
    goto LABEL_25;
  }

  v5 = [v3 error];
  if (v5)
  {

LABEL_4:
    v6 = [v4 error];

    if (v6)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = [v4 error];
        v23 = 138412290;
        v24 = v7;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid resultPayload with error %@", &v23, 0xCu);
      }

      goto LABEL_26;
    }

    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    LOWORD(v23) = 0;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "No results in resultPayload";
LABEL_25:
    _os_log_impl(&dword_1C9B70000, v8, OS_LOG_TYPE_ERROR, v9, &v23, 2u);
    goto LABEL_26;
  }

  v10 = [v4 results];
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = [v4 results];
  v12 = [v11 count];

  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = [v4 results];
  v14 = [v13 objectAtIndexedSubscript:0];

  v15 = [v14 isSensitiveNudity];
  v16 = [v15 BOOLValue];

  v17 = v16;
  if (_os_feature_enabled_impl())
  {
    v18 = [v14 isSensitiveGoreViolence];
    v19 = [v18 BOOLValue];

    if (v19)
    {
      v17 |= 2uLL;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = v17;
  v20 = [v14 scoresForLabels];
  v21 = *(*(a1 + 40) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  if (v17 && ![*(*(*(a1 + 40) + 8) + 40) count] && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Empty scoresForLabels for sensitive content", &v23, 2u);
  }

LABEL_26:
}

- (MADVideoSafetyClassifier)init
{
  v33[2] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = MADVideoSafetyClassifier;
  v2 = [(MADVideoSafetyClassifier *)&v27 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_20;
  }

  v4 = *(MEMORY[0x1E6960C80] + 16);
  *(v2 + 8) = *MEMORY[0x1E6960C80];
  *(v2 + 3) = v4;
  v5 = MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  *(v2 + 2) = *MEMORY[0x1E6960C70];
  *(v2 + 6) = v6;
  v7 = *(v5 + 16);
  *(v2 + 56) = *v5;
  *(v2 + 9) = v7;
  *(v2 + 20) = 1065353216;
  *(v2 + 52) = -1;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = v3[15];
  v3[15] = v8;

  if (!v3[15])
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADVideoSafetyClassifier] Failed to create _results", buf, 2u);
    }

    goto LABEL_20;
  }

  v3[11] = 1;
  if (_os_feature_enabled_impl())
  {
    v3[11] |= 2uLL;
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  v11 = *MEMORY[0x1E69CA830];
  v32[0] = *MEMORY[0x1E69CA820];
  v32[1] = v11;
  v33[0] = MEMORY[0x1E695E118];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
  v33[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];

  v26 = 0;
  v14 = [objc_alloc(MEMORY[0x1E69CA710]) initWithOptions:v13 error:&v26];
  v15 = v26;
  v16 = v3[16];
  v3[16] = v14;

  if (!v3[16] || v15)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      *buf = 138412546;
      v29 = v20;
      v30 = 2112;
      v31 = v15;
      v21 = v20;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADVideoSafetyClassifier] Failed to create %@: %@", buf, 0x16u);
    }

    goto LABEL_19;
  }

  v17 = [objc_alloc(MEMORY[0x1E69CA790]) initWithMLHandler:v3[16]];
  v18 = v3[17];
  v3[17] = v17;

  if (!v3[17])
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      *buf = 138412290;
      v29 = v22;
      v23 = v22;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADVideoSafetyClassifier] Failed to create %@", buf, 0xCu);
    }

LABEL_19:

LABEL_20:
    v19 = 0;
    goto LABEL_21;
  }

  v19 = v3;
LABEL_21:
  v24 = v19;

  return v24;
}

- (void)configureProcessTimeIntervalFrom:(id *)a3
{
  if (a3->var2)
  {
    v5 = *a3;
    processTimeInterval = CMTimeGetSeconds(&v5) / 30.0;
    if (self->_processTimeInterval >= processTimeInterval)
    {
      processTimeInterval = self->_processTimeInterval;
    }

    self->_processTimeInterval = processTimeInterval;
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5.value) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Invalid videoDuration, processTimeInterval unchanged.", &v5, 2u);
  }
}

- (int)configureAndStartVideoAnalyzer
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E69CA788]) initWithOptions:0 framesPerSync:1 frameLimit:&unk_1F49BDCC0 sensitiveFrameCountThreshold:2 useUniformSampling:1];
  if (v3)
  {
    [(SCMLVideoAnalyzer *)self->_videoAnalyzer startAnalysisWithConfig:v3];
    v4 = 0;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = objc_opt_class();
      v5 = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADVideoSafetyClassifier]: Failed to create %@", &v7, 0xCu);
    }

    v4 = -108;
  }

  return v4;
}

- (void)addAnalysisResults
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (![(NSMutableArray *)self->_results count])
  {
    p_start = &self->_start;
    if (self->_start.flags)
    {
      p_end = &self->_end;
      if (self->_end.flags)
      {
        if (!self->_remainingDetections)
        {
          self->_sensitivity = self->_detectedHarms;
        }

        if (!self->_scoresForLabels)
        {
          self->_scoresForLabels = MEMORY[0x1E695E0F8];
        }

        v16[0] = @"Sensitivity";
        v5 = [MEMORY[0x1E696AD98] numberWithShort:self->_sensitivity];
        v16[1] = @"SensitivitySceneResults";
        v17[0] = v5;
        v17[1] = self->_scoresForLabels;
        v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

        results = self->_results;
        *&time.value = *&p_start->value;
        time.epoch = self->_start.epoch;
        v14[0] = @"start";
        v8 = CMTimeCopyAsDictionary(&time, 0);
        v15[0] = v8;
        v14[1] = @"duration";
        time = *p_end;
        rhs = *p_start;
        CMTimeSubtract(&v11, &time, &rhs);
        time = v11;
        v9 = CMTimeCopyAsDictionary(&time, 0);
        v14[2] = @"attributes";
        v15[1] = v9;
        v15[2] = v6;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
        [(NSMutableArray *)results addObject:v10];
      }
    }
  }
}

- (int)analyzeFrameWithSampleBuffer:(opaqueCMSampleBuffer *)a3 timestamp:(id *)a4 duration:(id *)a5 andFlags:(unint64_t *)a6
{
  v42 = *MEMORY[0x1E69E9840];
  if (a4->var2)
  {
    p_timeLastProcess = &self->_timeLastProcess;
    buf = *a4;
    rhs = self->_timeLastProcess;
    CMTimeSubtract(&time, &buf, &rhs);
    if (CMTimeGetSeconds(&time) < self->_processTimeInterval)
    {
      return 0;
    }

    v11 = *&a4->var0;
    p_timeLastProcess->epoch = a4->var3;
    *&p_timeLastProcess->value = v11;
    if ((self->_start.flags & 1) == 0)
    {
      result = [(MADVideoSafetyClassifier *)self configureAndStartVideoAnalyzer];
      if (result)
      {
        return result;
      }

      v12 = *&a4->var0;
      self->_start.epoch = a4->var3;
      *&self->_start.value = v12;
    }

    var3 = a4->var3;
    *&self->_end.value = *&a4->var0;
    self->_end.epoch = var3;
    if (!self->_remainingDetections)
    {
      return 0;
    }

    v14 = objc_autoreleasePoolPush();
    videoAnalyzer = self->_videoAnalyzer;
    v38 = 0;
    v16 = [(SCMLVideoAnalyzer *)videoAnalyzer addFrameBuffer:a3 error:&v38];
    v17 = v38;
    if (v17)
    {
      v18 = 0;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      v19 = self->_videoAnalyzer;
      v37 = 0;
      v20 = [(SCMLVideoAnalyzer *)v19 analyze:&v37];
      v21 = v37;
      v22 = v21;
      if (v20 && !v21)
      {
        remainingDetections = self->_remainingDetections;
        if (remainingDetections)
        {
          if ([v20 sensitiveExplicit])
          {
            self->_detectedHarms |= 1uLL;
            remainingDetections = self->_remainingDetections ^ 1;
            self->_remainingDetections = remainingDetections;
            v24 = 1;
          }

          else
          {
            v24 = 0;
            remainingDetections = self->_remainingDetections;
          }
        }

        else
        {
          v24 = 0;
        }

        if ((remainingDetections & 2) != 0 && (([v20 sensitiveGore] & 1) != 0 || objc_msgSend(v20, "sensitiveViolence")))
        {
          self->_detectedHarms |= 2uLL;
          self->_remainingDetections ^= 2uLL;
        }

        else if (!v24)
        {
          goto LABEL_38;
        }

        v30 = objc_opt_class();
        scoresForLabels = self->_scoresForLabels;
        v32 = objc_opt_class();
        v33 = [v20 scoresForLabels];
        v34 = [v32 safetyScoresForLabels:v33];
        v35 = [v30 mergeScoresForLabelsA:scoresForLabels scoresForLabelsB:v34];
        v36 = self->_scoresForLabels;
        self->_scoresForLabels = v35;

LABEL_38:
        objc_autoreleasePoolPop(v14);
        return 0;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        LODWORD(buf.value) = 138412546;
        *(&buf.value + 4) = v28;
        LOWORD(buf.flags) = 2112;
        *(&buf.flags + 2) = v22;
        v29 = v28;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to run %@::analyze: %@", &buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }

    else
    {
      v25 = v17;
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        LODWORD(buf.value) = 138412546;
        *(&buf.value + 4) = v26;
        LOWORD(buf.flags) = 2112;
        *(&buf.flags + 2) = v25;
        v27 = v26;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to run %@::addFrameBuffer:error: %@", &buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }

    return -18;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.value) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid frame timestamp", &buf, 2u);
  }

  return -50;
}

- (int)analyzeFrame:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 flags:(unint64_t *)a6
{
  v16 = *a4;
  sampleBufferOut = 0;
  formatDescriptionOut = 0;
  v11 = CMVideoFormatDescriptionCreateForImageBuffer(0, a3, &formatDescriptionOut);
  if (v11)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    LOWORD(sampleTiming.duration.value) = 0;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "[CVPixelBuffer->CMSampleBuffer] Failed to create format description";
    p_sampleTiming = &sampleTiming;
    goto LABEL_9;
  }

  *&sampleTiming.duration.value = *MEMORY[0x1E6960C70];
  sampleTiming.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
  sampleTiming.presentationTimeStamp = v16;
  sampleTiming.decodeTimeStamp = sampleTiming.duration;
  v11 = CMSampleBufferCreateReadyWithImageBuffer(*MEMORY[0x1E695E480], a3, formatDescriptionOut, &sampleTiming, &sampleBufferOut);
  if (!v11)
  {
    CF<__CVBuffer *>::~CF(&formatDescriptionOut);
    *&sampleTiming.duration.value = *&a4->var0;
    sampleTiming.duration.epoch = a4->var3;
    v16 = *a5;
    v11 = [(MADVideoSafetyClassifier *)self analyzeFrameWithSampleBuffer:sampleBufferOut timestamp:&sampleTiming duration:&v16 andFlags:a6];
    goto LABEL_11;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "[CVPixelBuffer->CMSampleBuffer] Failed to create CMSampleBuffer";
    p_sampleTiming = buf;
LABEL_9:
    _os_log_impl(&dword_1C9B70000, v12, OS_LOG_TYPE_ERROR, v13, p_sampleTiming, 2u);
  }

LABEL_10:
  CF<__CVBuffer *>::~CF(&formatDescriptionOut);
LABEL_11:
  CF<__CVBuffer *>::~CF(&sampleBufferOut);
  return v11;
}

- (int)finishAnalysisPass:(id *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if ((a3->var0.var2 & 1) == 0 || (a3->var1.var2 & 1) == 0 || a3->var1.var3 || a3->var1.var0 < 0)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.start.value) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid frame timerange", &buf, 2u);
    }

    return -50;
  }

  else
  {
    v5 = *&a3->var0.var3;
    *&buf.start.value = *&a3->var0.var0;
    *&buf.start.epoch = v5;
    *&buf.duration.timescale = *&a3->var1.var1;
    CMTimeRangeGetEnd(&v23, &buf);
    self->_end = v23;
    if (!self->_remainingDetections || (self->_start.flags & 1) == 0)
    {
      goto LABEL_26;
    }

    videoAnalyzer = self->_videoAnalyzer;
    v22 = 0;
    v7 = [(SCMLVideoAnalyzer *)videoAnalyzer finalizeAnalysis:&v22];
    v8 = v22;
    v9 = v8;
    if (!v7 || v8)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        LODWORD(buf.start.value) = 138412546;
        *(&buf.start.value + 4) = v18;
        LOWORD(buf.start.flags) = 2112;
        *(&buf.start.flags + 2) = v9;
        v19 = v18;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to run %@::finalizeAnalysis: %@", &buf, 0x16u);
      }
    }

    else
    {
      remainingDetections = self->_remainingDetections;
      if (remainingDetections)
      {
        if ([v7 sensitiveExplicit])
        {
          self->_detectedHarms |= 1uLL;
        }

        remainingDetections = self->_remainingDetections ^ 1;
        self->_remainingDetections = remainingDetections;
      }

      if ((remainingDetections & 2) != 0)
      {
        if (([v7 sensitiveGore] & 1) != 0 || objc_msgSend(v7, "sensitiveViolence"))
        {
          self->_detectedHarms |= 2uLL;
        }

        self->_remainingDetections ^= 2uLL;
      }

      v11 = objc_opt_class();
      scoresForLabels = self->_scoresForLabels;
      v13 = objc_opt_class();
      v14 = [v7 scoresForLabels];
      v15 = [v13 safetyScoresForLabels:v14];
      v16 = [v11 mergeScoresForLabelsA:scoresForLabels scoresForLabelsB:v15];
      v17 = self->_scoresForLabels;
      self->_scoresForLabels = v16;

      if (!self->_detectedHarms || [(NSDictionary *)self->_scoresForLabels count])
      {

LABEL_26:
        [(MADVideoSafetyClassifier *)self addAnalysisResults];
        return 0;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        LODWORD(buf.start.value) = 138412290;
        *(&buf.start.value + 4) = v20;
        v21 = v20;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to run %@::finalizeAnalysis: No scoresForLabels results", &buf, 0xCu);
      }
    }

    return -18;
  }
}

- (id)results
{
  v6[1] = *MEMORY[0x1E69E9840];
  results = self->_results;
  v5 = @"SafetyResults";
  v6[0] = results;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end