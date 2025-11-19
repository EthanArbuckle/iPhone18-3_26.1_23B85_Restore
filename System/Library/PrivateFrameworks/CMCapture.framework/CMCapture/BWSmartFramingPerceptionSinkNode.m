@interface BWSmartFramingPerceptionSinkNode
- (BOOL)hasNonLiveConfigurationChanges;
- (BWSmartFramingPerceptionSinkNode)initWithSinkID:(id)a3 captureDevice:(id)a4 inferenceScheduler:(id)a5;
- (id)inputInferenceVideoFormatForAttachedMediaKey:(id)a3;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)a3;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWSmartFramingPerceptionSinkNode

- (BWSmartFramingPerceptionSinkNode)initWithSinkID:(id)a3 captureDevice:(id)a4 inferenceScheduler:(id)a5
{
  if (!a3)
  {
    [BWSmartFramingPerceptionSinkNode initWithSinkID:captureDevice:inferenceScheduler:];
LABEL_11:

    return 0;
  }

  if (!a4)
  {
    [BWSmartFramingPerceptionSinkNode initWithSinkID:captureDevice:inferenceScheduler:];
    goto LABEL_11;
  }

  v15.receiver = self;
  v15.super_class = BWSmartFramingPerceptionSinkNode;
  v8 = [(BWSinkNode *)&v15 initWithSinkID:?];
  if (v8)
  {
    v9 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v8];
    [(BWNodeInput *)v9 setFormatRequirements:+[BWVideoFormatRequirements formatRequirements]];
    [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v9 primaryMediaConfiguration] setRetainedBufferCount:1];
    [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v9 primaryMediaConfiguration] setIndefinitelyHeldBufferCount:1];
    [v8 addInput:v9];
    *(v8 + 26) = a4;
    *(v8 + 31) = FigDispatchQueueCreateWithPriority();
    *(v8 + 60) = 2;
    *(v8 + 61) = 4;
    CMTimeMakeWithSeconds(&v14, 0.1, 1000000000);
    v10 = *&v14.value;
    *(v8 + 276) = v14.epoch;
    *(v8 + 260) = v10;
    v8[256] = 1;
    v11 = MEMORY[0x1E6960CC0];
    *(v8 + 284) = *MEMORY[0x1E6960CC0];
    *(v8 + 300) = *(v11 + 16);
    *(v8 + 77) = 0;
    if (a5)
    {
      v12 = a5;
    }

    else
    {
      v12 = objc_alloc_init(BWInferenceScheduler);
    }

    *(v8 + 27) = v12;
    [v8 setSupportsLiveReconfiguration:1];
    *(v8 + 39) = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v8;
}

- (void)dealloc
{
  faceGroupIDsForInference = self->_faceGroupIDsForInference;
  if (faceGroupIDsForInference)
  {
    CFRelease(faceGroupIDsForInference);
    self->_faceGroupIDsForInference = 0;
  }

  v4.receiver = self;
  v4.super_class = BWSmartFramingPerceptionSinkNode;
  [(BWSinkNode *)&v4 dealloc];
}

- (BOOL)hasNonLiveConfigurationChanges
{
  v4.receiver = self;
  v4.super_class = BWSmartFramingPerceptionSinkNode;
  v2 = [(BWNode *)&v4 hasNonLiveConfigurationChanges];
  if (v2)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Live reconfiguring BWSmartFramingPerceptionSinkNode with changing formats is not supported", 0}]);
  }

  return v2;
}

- (void)didReachEndOfDataForInput:(id)a3
{
  [(BWSmartFramingPerceptionSinkNode *)self _waitForInferenceToComplete];
  faceGroupIDsForInference = self->_faceGroupIDsForInference;
  if (faceGroupIDsForInference)
  {
    CFRelease(faceGroupIDsForInference);
    self->_faceGroupIDsForInference = 0;
  }

  v6.receiver = self;
  v6.super_class = BWSmartFramingPerceptionSinkNode;
  [(BWSinkNode *)&v6 didReachEndOfDataForInput:a3];
}

- (id)inputInferenceVideoFormatForAttachedMediaKey:(id)a3
{
  if (![a3 isEqualToString:@"PrimaryFormat"])
  {
    return 0;
  }

  v4 = [(BWVideoFormatRequirements *)[BWInferenceVideoFormatRequirements alloc] initWithPixelBufferAttributes:[(BWVideoFormat *)[(BWNodeInput *)self->super.super._input videoFormat] pixelBufferAttributes]];
  [(BWInferenceVideoFormatRequirements *)v4 setIncludesInvalidContent:1];
  v6 = v4;
  return +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1]);
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3 = objc_alloc_init(BWInferenceProcessingConfiguration);
  self->_inferenceProcessingConfiguration = v3;
  if (v3 && (-[BWInferenceProcessingConfiguration setScalingStrategy:](v3, "setScalingStrategy:", 4), -[BWInferenceProcessingConfiguration setScalingAppliesCropOnInputResolution:](self->_inferenceProcessingConfiguration, "setScalingAppliesCropOnInputResolution:", 1), v4 = [BWInferenceEngine alloc], v5 = -[BWInferenceEngine initWithScheduler:priority:processingConfiguration:name:](v4, "initWithScheduler:priority:processingConfiguration:name:", self->_inferenceScheduler, 6, self->_inferenceProcessingConfiguration, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-Inference", -[BWNode name](self, "name"), BWInferenceTypeDescription(121)]), (self->_inferenceEngine = v5) != 0) && (v6 = -[BWInferenceConfiguration initWithInferenceType:]([BWCamGazeInferenceConfiguration alloc], "initWithInferenceType:", 121), -[BWInferenceConfiguration setPriority:](v6, "setPriority:", 6), -[BWCamGazeInferenceConfiguration setMaximumNumberOfFaces:](v6, "setMaximumNumberOfFaces:", self->_maxFaceCountForInference), -[BWInferenceConfiguration setPriority:](v6, "setPriority:", 6), v6))
  {
    if (![(BWInferenceEngine *)self->_inferenceEngine addInferenceOfType:121 version:BWInferenceVersionMake(self->_camGazeInferenceMajorVersion configuration:0, 0) & 0xFFFFFFFFFFFFLL, v6]&& ![(BWInferenceEngine *)self->_inferenceEngine prepareForInputVideoFormat:[(BWNodeInput *)self->super.super._input videoFormat] attachedMediaKey:@"PrimaryFormat"])
    {
      inferenceEngine = self->_inferenceEngine;

      [(BWInferenceEngine *)inferenceEngine prepareForInferenceWithFormatProvider:self];
    }
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v5 = a3;
  if ([(BWFigVideoCaptureDevice *)self->_captureDevice smartFramingIsMonitoringScene:a3])
  {
    if (![(BWFigVideoCaptureDevice *)self->_captureDevice dockedTrackingActive])
    {
      memset(&v148, 0, sizeof(v148));
      CMSampleBufferGetPresentationTimeStamp(&v148, v5);
      memset(&v147, 0, sizeof(v147));
      lhs = v148;
      rhs = *(&self->_inferenceSkipInterval.epoch + 4);
      CMTimeSubtract(&v147, &lhs, &rhs);
      if (self->_faceGroupIDsForInference)
      {
        lhs = v147;
        rhs = *(&self->_previousInferenceComplete + 4);
        if (CMTimeCompare(&lhs, &rhs) >= 1)
        {
          os_unfair_lock_lock(&self->_lastInferenceFramePTS.epoch + 1);
          previousInferenceComplete = self->_previousInferenceComplete;
          os_unfair_lock_unlock(&self->_lastInferenceFramePTS.epoch + 1);
          if (previousInferenceComplete)
          {
            os_unfair_lock_lock(&self->_lastInferenceFramePTS.epoch + 1);
            self->_previousInferenceComplete = 0;
            os_unfair_lock_unlock(&self->_lastInferenceFramePTS.epoch + 1);
            *(&self->_inferenceSkipInterval.epoch + 4) = v148;
            lhs.value = 0;
            CopyIncludingMetadata = BWCMSampleBufferCreateCopyIncludingMetadata(self->_faceGroupIDsForInference, &lhs);
            if (CopyIncludingMetadata)
            {
              v85 = v4;
              LODWORD(v82) = CopyIncludingMetadata;
              FigDebugAssert3();
            }

            else
            {
              v9 = [objc_msgSend(CMGetAttachment(v5 *off_1E798A5A8];
              v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v141 = 0u;
              v142 = 0u;
              v143 = 0u;
              v144 = 0u;
              v18 = OUTLINED_FUNCTION_3_87(v10, v11, v12, v13, v14, v15, v16, v17, v82, v85, v88, v5, block, v96, v97, v98, v99, value, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, *(&v117 + 1), v118, *(&v118 + 1), v119, *(&v119 + 1), v120, *(&v120 + 1), v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139);
              if (v18)
              {
                v19 = v18;
                v20 = *v142;
                v21 = *off_1E798AC70;
                do
                {
                  for (i = 0; i != v19; ++i)
                  {
                    if (*v142 != v20)
                    {
                      objc_enumerationMutation(v9);
                    }

                    v23 = [*(*(&v141 + 1) + 8 * i) objectForKeyedSubscript:v21];
                    if (([*&self->_inferenceLock._os_unfair_lock_opaque containsObject:v23] & 1) == 0)
                    {
                      [*&self->_inferenceLock._os_unfair_lock_opaque insertObject:v23 atIndex:0];
                    }

                    v24 = [v10 addObject:v23];
                  }

                  v19 = OUTLINED_FUNCTION_3_87(v24, v25, v26, v27, v28, v29, v30, v31, v83, v86, v89, v92, block, v96, v97, v98, v99, value, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, *(&v117 + 1), v118, *(&v118 + 1), v119, *(&v119 + 1), v120, *(&v120 + 1), v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, *(&v137 + 1), v138, *(&v138 + 1), v139);
                }

                while (v19);
              }

              v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v137 = 0u;
              v138 = 0u;
              v139 = 0u;
              v140 = 0u;
              v33 = *&self->_inferenceLock._os_unfair_lock_opaque;
              v41 = OUTLINED_FUNCTION_1_109(v32, v34, v35, v36, v37, v38, v39, v40, v83, v86, v89, v92, block, v96, v97, v98, v99, value, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, *(&v117 + 1), v118, *(&v118 + 1), v119, *(&v119 + 1), v120, *(&v120 + 1), v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, 0);
              if (v41)
              {
                v42 = v41;
                v43 = *v138;
                do
                {
                  for (j = 0; j != v42; ++j)
                  {
                    if (*v138 != v43)
                    {
                      objc_enumerationMutation(v33);
                    }

                    v45 = *(*(&v137 + 1) + 8 * j);
                    v46 = [v10 containsObject:v45];
                    if ((v46 & 1) == 0)
                    {
                      v46 = [v32 addObject:v45];
                    }
                  }

                  v42 = OUTLINED_FUNCTION_1_109(v46, v47, v48, v49, v50, v51, v52, v53, v84, v87, v90, v93, block, v96, v97, v98, v99, value, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, *(&v117 + 1), v118, *(&v118 + 1), v119, *(&v119 + 1), v120, *(&v120 + 1), v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);
                }

                while (v42);
              }

              [*&self->_inferenceLock._os_unfair_lock_opaque removeObjectsInArray:v32];

              v54 = [*&self->_inferenceLock._os_unfair_lock_opaque count];
              maxFaceCountForInference = self->_maxFaceCountForInference;
              if (maxFaceCountForInference >= v54)
              {
                maxFaceCountForInference = v54;
              }

              v56 = maxFaceCountForInference;
              v57 = [*&self->_inferenceLock._os_unfair_lock_opaque subarrayWithRange:{0, maxFaceCountForInference}];
              [*&self->_inferenceLock._os_unfair_lock_opaque removeObjectsInRange:{0, v56}];
              [*&self->_inferenceLock._os_unfair_lock_opaque addObjectsFromArray:v57];
              v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v117 = 0u;
              v118 = 0u;
              v119 = 0u;
              v120 = 0u;
              v66 = OUTLINED_FUNCTION_60_1(v58, v59, v60, v61, v62, v63, v64, v65, v84, v87, v90, v93, block, v96, v97, v98, v99, value, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, 0);
              if (v66)
              {
                v67 = v66;
                v68 = *v118;
                v69 = *off_1E798AC70;
                do
                {
                  for (k = 0; k != v67; ++k)
                  {
                    if (*v118 != v68)
                    {
                      objc_enumerationMutation(v9);
                    }

                    v71 = *(*(&v117 + 1) + 8 * k);
                    v72 = [v57 containsObject:{objc_msgSend(v71, "objectForKeyedSubscript:", v69)}];
                    if (v72)
                    {
                      v72 = [v58 addObject:v71];
                    }
                  }

                  v67 = OUTLINED_FUNCTION_60_1(v72, v73, v74, v75, v76, v77, v78, v79, v82, v85, v91, v94, block, v96, v97, v98, v99, value, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117);
                }

                while (v67);
              }

              CMSetAttachment(lhs.value, *off_1E798A5A0, v58, 1u);
              block = MEMORY[0x1E69E9820];
              v96 = 3221225472;
              v97 = __64__BWSmartFramingPerceptionSinkNode_renderSampleBuffer_forInput___block_invoke;
              v98 = &unk_1E7990178;
              v99 = self;
              value = lhs.value;
              dispatch_async(self->_inferenceQueue, &block);

              v5 = v94;
            }
          }
        }
      }
    }
  }

  faceGroupIDsForInference = self->_faceGroupIDsForInference;
  if (faceGroupIDsForInference)
  {
    CFRelease(faceGroupIDsForInference);
  }

  if (v5)
  {
    v81 = CFRetain(v5);
  }

  else
  {
    v81 = 0;
  }

  self->_faceGroupIDsForInference = v81;
  [(BWNodeOutput *)self->super.super._output emitSampleBuffer:v5, v82, v85];
}

void __64__BWSmartFramingPerceptionSinkNode_renderSampleBuffer_forInput___block_invoke(uint64_t a1)
{
  v1 = a1;
  if (![*(*(a1 + 32) + 224) performInferencesOnSampleBuffer:*(a1 + 40) attachingResultsToSampleBuffer:*(a1 + 40)])
  {
    v2 = CMGetAttachment(*(v1 + 40), @"CamGazeRawProbabilitiesArray", 0);
    if (v2)
    {
      v3 = v2;
      v4 = [MEMORY[0x1E695DF90] dictionary];
      v12 = OUTLINED_FUNCTION_1_2(v4, v5, v6, v7, v8, v9, v10, v11, v27, v1, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, 0);
      if (v12)
      {
        v13 = v12;
        v14 = MEMORY[0];
        v15 = *off_1E798AC70;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (MEMORY[0] != v14)
            {
              objc_enumerationMutation(v3);
            }

            v17 = *(8 * i);
            v18 = [v17 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
            if ((v18 & 1) == 0)
            {
              v18 = [v17 objectForKeyedSubscript:v15];
              if (v18)
              {
                v18 = [v4 setObject:objc_msgSend(v17 forKeyedSubscript:{"objectForKeyedSubscript:", 0x1F219EED0), objc_msgSend(objc_msgSend(v17, "objectForKeyedSubscript:", v15), "stringValue")}];
              }
            }
          }

          v13 = OUTLINED_FUNCTION_1_2(v18, v19, v20, v21, v22, v23, v24, v25, v28, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v62);
        }

        while (v13);
      }

      v1 = v29;
      [*(*(v29 + 32) + 208) updateSmartFramingCamGazeProbabilities:v4];
    }
  }

  v26 = *(v1 + 40);
  if (v26)
  {
    CFRelease(v26);
  }

  os_unfair_lock_lock((*(v1 + 32) + 308));
  *(*(v1 + 32) + 256) = 1;
  os_unfair_lock_unlock((*(v1 + 32) + 308));
}

@end