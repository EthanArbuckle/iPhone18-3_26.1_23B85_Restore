@interface FigObjectDetectionMetadataGenerator
- (CGRect)regionOfInterest;
- (FigObjectDetectionMetadataGenerator)init;
- (id)getCurrentDetectedObjectsAndPTS:(id *)a3;
- (id)getDetectedObjectsForPixelBuffer:(__CVBuffer *)a3 pts:(id *)a4;
- (void)_compareFaceDetections:currentFaceDetections:time:;
- (void)_compareHumanBodyDetections:currentHumanDetections:time:;
- (void)_detectObjectsWithPixelBufferInOut:(uint64_t)a3 time:(char)a4 faceDetectionEnabled:(char)a5 humanBodyDetectionEnabled:;
- (void)_processFaceObservations:time:;
- (void)_processHumanObservations:time:;
- (void)dealloc;
- (void)prepareForVideoFormat:(opaqueCMFormatDescription *)a3;
- (void)processPixelBuffer:(__CVBuffer *)a3 pts:(id *)a4;
- (void)processSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)unprepare;
@end

@implementation FigObjectDetectionMetadataGenerator

- (FigObjectDetectionMetadataGenerator)init
{
  v7.receiver = self;
  v7.super_class = FigObjectDetectionMetadataGenerator;
  v2 = [(FigObjectDetectionMetadataGenerator *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    global_queue = dispatch_get_global_queue(21, 0);
    v3->_detectObjectQueue = dispatch_queue_create_with_target_V2("FigObjectDetectionMetadataGenerator.DetectObject", v4, global_queue);
    v3->_prepared = 0;
    v3->_objectDetectionHostTime = 0;
    *&v3->_objectDetectionInterval = 0x3F99999A00000019;
    v3->_previousDetectionsThreshold = 500;
    v3->_objectDetectionIsRunning = 0;
    v3->_objectMetadataDictionary = 0;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_prepared)
  {
    [(VNSession *)self->_vnSession releaseCachedResources];

    self->_vnSession = 0;
    self->_objectTrackingMatcher = 0;
  }

  self->_detectObjectQueue = 0;
  self->_objectMetadataDictionary = 0;

  self->_figFaceObservations = 0;
  self->_figHumanBodyObservations = 0;
  v3.receiver = self;
  v3.super_class = FigObjectDetectionMetadataGenerator;
  [(FigObjectDetectionMetadataGenerator *)&v3 dealloc];
}

- (CGRect)regionOfInterest
{
  x = self->_regionOfInterest.origin.x;
  y = self->_regionOfInterest.origin.y;
  width = self->_regionOfInterest.size.width;
  height = self->_regionOfInterest.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)prepareForVideoFormat:(opaqueCMFormatDescription *)a3
{
  if (!self->_prepared)
  {
    v4 = [FigWeakReference weakReferenceToObject:self];
    detectObjectQueue = self->_detectObjectQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__FigObjectDetectionMetadataGenerator_prepareForVideoFormat___block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = v4;
    dispatch_sync(detectObjectQueue, block);
    self->_prepared = 1;
  }
}

void *__61__FigObjectDetectionMetadataGenerator_prepareForVideoFormat___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) referencedObject];
  if (result)
  {
    v2 = result;
    if (!result[21])
    {
      result = objc_alloc_init(getVNSessionClass());
      v2[21] = result;
    }

    if (!v2[26])
    {
      result = [objc_alloc(getFTBipartiteMatcherClass()) initWithInitialSize:10];
      v2[26] = result;
    }

    if (!v2[22])
    {
      result = objc_alloc_init(MEMORY[0x1E695DF70]);
      v2[22] = result;
    }

    if (!v2[23])
    {
      result = objc_alloc_init(MEMORY[0x1E695DF70]);
      v2[23] = result;
    }

    v2[24] = 0;
    v2[25] = 0;
  }

  return result;
}

- (void)processSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  if (self->_prepared)
  {
    v12[5] = v3;
    v12[6] = v4;
    os_unfair_lock_lock(&self->_lock);
    v7 = self->_maxHumanFaces | self->_maxHumanBodies;
    os_unfair_lock_unlock(&self->_lock);
    if (v7)
    {
      v12[0] = CMSampleBufferGetImageBuffer(a3);
      memset(&v11, 0, sizeof(v11));
      CMSampleBufferGetPresentationTimeStamp(&v11, a3);
      v8 = *off_1E798A3C8;
      v9 = CMGetAttachment(a3, *off_1E798A3C8, 0);
      if (!v9)
      {
        v9 = [MEMORY[0x1E695DF90] dictionary];
        CMSetAttachment(a3, v8, v9, 1u);
      }

      v10 = v11;
      [v9 setObject:-[FigObjectDetectionMetadataGenerator getDetectedObjectsForPixelBuffer:pts:](self forKeyedSubscript:{"getDetectedObjectsForPixelBuffer:pts:", v12, &v10), *off_1E798B220}];
    }
  }
}

- (void)unprepare
{
  if (self->_prepared)
  {
    block[7] = v2;
    block[8] = v3;
    v5 = [FigWeakReference weakReferenceToObject:self];
    detectObjectQueue = self->_detectObjectQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__FigObjectDetectionMetadataGenerator_unprepare__block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = v5;
    dispatch_sync(detectObjectQueue, block);
    self->_prepared = 0;
  }
}

void __48__FigObjectDetectionMetadataGenerator_unprepare__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) referencedObject];
  if (v1)
  {
    v2 = v1;
    os_unfair_lock_lock(v1 + 21);

    *&v2[32]._os_unfair_lock_opaque = 0;
    *&v2[44]._os_unfair_lock_opaque = 0;

    *&v2[46]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(v2 + 21);
    *&v2[26]._os_unfair_lock_opaque = 0;
    [*&v2[42]._os_unfair_lock_opaque releaseCachedResources];

    *&v2[42]._os_unfair_lock_opaque = 0;
    *&v2[52]._os_unfair_lock_opaque = 0;
  }
}

void __126__FigObjectDetectionMetadataGenerator__detectObjectsWithPixelBufferInOut_time_faceDetectionEnabled_humanBodyDetectionEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) referencedObject];
  if (v2)
  {
    v3 = v2;
    v57 = 0;
    v4 = mach_absolute_time();
    v46 = [MEMORY[0x1E695DF70] array];
    v5 = [MEMORY[0x1E695DF70] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v6 = *(v3 + 176);
    v7 = [v6 countByEnumeratingWithState:&v53 objects:v52 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v54;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v54 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v53 + 1) + 8 * i);
          v12 = [v11 lastUpdatedTime];
          v16 = FODMGTimeInMilliseconds(v4 - v12, v13, v14, v15);
          LODWORD(v17) = *(v3 + 120);
          if (v16 > v17)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v53 objects:v52 count:16];
      }

      while (v8);
    }

    [*(v3 + 176) removeObjectsInArray:v5];
    v18 = [MEMORY[0x1E695DF70] array];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v19 = *(v3 + 184);
    v20 = [v19 countByEnumeratingWithState:&v48 objects:v47 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v49;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v49 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v48 + 1) + 8 * j);
          v25 = [v24 lastUpdatedTime];
          v29 = FODMGTimeInMilliseconds(v4 - v25, v26, v27, v28);
          LODWORD(v30) = *(v3 + 120);
          if (v29 > v30)
          {
            [v18 addObject:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v48 objects:v47 count:16];
      }

      while (v21);
    }

    [*(v3 + 184) removeObjectsInArray:v18];
    if (*(a1 + 72) == 1)
    {
      v31 = objc_alloc_init(getVNDetectFaceRectanglesRequestClass());
      [v31 setRevision:3737841670 error:0];
      v32 = v46;
      [v46 addObject:v31];
    }

    else
    {
      v31 = 0;
      v32 = v46;
    }

    if (*(a1 + 73) == 1)
    {
      v33 = objc_alloc_init(getVNDetectHumanRectanglesRequestClass());
      [v32 addObject:v33];
    }

    else
    {
      v33 = 0;
    }

    [objc_msgSend(objc_alloc(getVNImageRequestHandlerClass()) initWithCVPixelBuffer:*(a1 + 40) orientation:1 options:MEMORY[0x1E695E0F8] session:{*(v3 + 168)), "performRequests:error:", v32, &v57}];
    if ((*(a1 + 72) & 1) != 0 || *(a1 + 73) == 1)
    {
      v34 = [v31 results];
      v35 = [v33 results];
      if (*(a1 + 72) == 1 && [v34 count])
      {
        [FigObjectDetectionMetadataGenerator _compareFaceDetections:currentFaceDetections:time:];
        v39 = v38;

        *(v3 + 176) = v39;
        [FigObjectDetectionMetadataGenerator _processFaceObservations:time:];
        v41 = v40;
        v36 = [MEMORY[0x1E695DF90] dictionary];
        [v36 setObject:v41 forKeyedSubscript:*off_1E798ACB8];
      }

      else
      {
        v36 = 0;
      }

      if (*(a1 + 73) == 1 && [v35 count])
      {
        [FigObjectDetectionMetadataGenerator _compareHumanBodyDetections:currentHumanDetections:time:];
        v43 = v42;

        *(v3 + 184) = v43;
        [FigObjectDetectionMetadataGenerator _processHumanObservations:time:];
        v45 = v44;
        if (!v36)
        {
          v36 = [MEMORY[0x1E695DF90] dictionary];
        }

        [v36 setObject:v45 forKeyedSubscript:*off_1E798ACB0];
      }

      os_unfair_lock_lock((v3 + 84));

      *(v3 + 128) = v36;
      v37 = *(a1 + 64);
      *(v3 + 136) = *(a1 + 48);
      *(v3 + 152) = v37;
      os_unfair_lock_unlock((v3 + 84));
    }

    mach_absolute_time();
    CFRelease(*(a1 + 40));
    *(v3 + 124) = 0;
  }
}

- (void)processPixelBuffer:(__CVBuffer *)a3 pts:(id *)a4
{
  if (a3 && self->_prepared && (a4->var2 & 1) != 0)
  {
    maxHumanFaces = self->_maxHumanFaces;
    maxHumanBodies = self->_maxHumanBodies;
    if (maxHumanFaces | maxHumanBodies)
    {
      v9 = v4;
      v10 = v5;
      v8 = *a4;
      [(FigObjectDetectionMetadataGenerator *)self _detectObjectsWithPixelBufferInOut:a3 time:&v8 faceDetectionEnabled:maxHumanFaces != 0 humanBodyDetectionEnabled:maxHumanBodies != 0];
    }
  }
}

- (void)_detectObjectsWithPixelBufferInOut:(uint64_t)a3 time:(char)a4 faceDetectionEnabled:(char)a5 humanBodyDetectionEnabled:
{
  if (a1)
  {
    OUTLINED_FUNCTION_11_46();
    v10 = mach_absolute_time();
    if ((*(v5 + 124) & 1) == 0)
    {
      v14 = *(v5 + 104);
      v15 = FODMGTimeInMilliseconds(v10 - v14, v11, v12, v13);
      LODWORD(v16) = *(v5 + 112);
      v18 = v15 <= v16 && v14 != 0;
      if (v7)
      {
        if (!v18)
        {
          CFRetain(v7);
          *(v5 + 124) = 1;
          v19 = [FigWeakReference weakReferenceToObject:v5];
          v20 = *(v5 + 88);
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __126__FigObjectDetectionMetadataGenerator__detectObjectsWithPixelBufferInOut_time_faceDetectionEnabled_humanBodyDetectionEnabled___block_invoke;
          v21[3] = &unk_1E799B950;
          v24 = a4;
          v25 = a5;
          v21[4] = v19;
          v21[5] = v7;
          v22 = *v6;
          v23 = *(v6 + 2);
          dispatch_async(v20, v21);
          *(v5 + 104) = mach_absolute_time();
        }
      }
    }
  }
}

- (id)getCurrentDetectedObjectsAndPTS:(id *)a3
{
  if (self->_prepared && (self->_maxHumanFaces || self->_maxHumanBodies))
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:self->_objectMetadataDictionary copyItems:1];
    if (a3)
    {
      v6 = *&self->_objectMetadataDictionaryPTS.value;
      a3->var3 = self->_objectMetadataDictionaryPTS.epoch;
      *&a3->var0 = v6;
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getDetectedObjectsForPixelBuffer:(__CVBuffer *)a3 pts:(id *)a4
{
  if (a3)
  {
    v5 = *a3;
    v7 = *a4;
    [(FigObjectDetectionMetadataGenerator *)self processPixelBuffer:v5 pts:&v7];
  }

  return [(FigObjectDetectionMetadataGenerator *)self getCurrentDetectedObjectsAndPTS:0, a4];
}

- (void)_processFaceObservations:time:
{
  OUTLINED_FUNCTION_6_4();
  obj = v5;
  if (v6)
  {
    [MEMORY[0x1E695DF90] dictionary];
    OUTLINED_FUNCTION_15_36();
    if (v7)
    {
      OUTLINED_FUNCTION_8_53();
      v8 = FigNanosecondsToHostTime();
    }

    else
    {
      v8 = 0;
    }

    [v0 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", v8), *off_1E798B780}];
    v93 = [MEMORY[0x1E695DF70] array];
    v9 = [v0 setObject:? forKeyedSubscript:?];
    v17 = OUTLINED_FUNCTION_20_24(v9, v10, v11, v12, v13, v14, v15, v16, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, obj, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v132, v134, v135, v137, v138, v140, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, 0);
    if (v17)
    {
      v18 = v17;
      v76 = v0;
      v19 = MEMORY[0];
      v90 = *off_1E798B5C0;
      v92 = *off_1E798B2B8;
      v86 = *off_1E798B168;
      v88 = *off_1E798B1F0;
      v82 = *off_1E798B158;
      v84 = *off_1E798B160;
      v78 = 0.3;
      do
      {
        v20 = 0;
        v80 = v18;
        do
        {
          if (MEMORY[0] != v19)
          {
            objc_enumerationMutation(obja);
          }

          v21 = *(8 * v20);
          v22 = [objc_msgSend(v21 "faceTrackingRequest")];
          if ((v22 & 1) == 0)
          {
            [v94 addObject:{objc_msgSend(MEMORY[0x1E695DF90], "dictionary")}];
            [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v21, "faceID")}];
            [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
            v30 = [objc_msgSend(v21 "faceTrackingRequest")];
            if (v30)
            {
              v31 = v30;
              v32 = v19;
              [objc_msgSend(v30 "firstObject")];
              OUTLINED_FUNCTION_1_113();
              v130 = 0u;
              v133 = 0u;
              v136 = 0u;
              v139 = 0u;
              v41 = OUTLINED_FUNCTION_22_24(v33, v34, v35, v36, v37, v38, v39, v40, v74, v76, *&v78, v80, v82, v84, v86, v88, v90, v92, v94, obja, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, 0);
              if (v41)
              {
                v42 = v41;
                v43 = 0;
                v44 = MEMORY[0];
                v45 = 0.0;
                do
                {
                  for (i = 0; i != v42; ++i)
                  {
                    if (MEMORY[0] != v44)
                    {
                      objc_enumerationMutation(v31);
                    }

                    v47 = *(8 * i);
                    v48 = [v47 confidence];
                    if (v56 > v45)
                    {
                      [v47 confidence];
                      v45 = v57;
                      [v47 boundingBox];
                      OUTLINED_FUNCTION_1_113();
                      v43 = v47;
                    }
                  }

                  v42 = OUTLINED_FUNCTION_22_24(v48, v49, v50, v51, v52, v53, v54, v55, v74, v76, *&v78, v80, v82, v84, v86, v88, v90, v92, v94, obja, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130);
                }

                while (v42);
              }

              else
              {
                v43 = 0;
                v45 = 0.0;
              }

              v58 = [v21 faceTrackingRequest];
              if (v45 <= v78)
              {
                [v58 setLastFrame:1];
              }

              else
              {
                [v58 setInputObservation:v43];
              }

              v19 = v32;
              v18 = v80;
            }

            else
            {
              [objc_msgSend(v21 "faceObservation")];
              OUTLINED_FUNCTION_1_113();
              [objc_msgSend(v21 "faceObservation")];
            }

            v174.origin.y = 1.0 - (v3 + v4);
            v174.origin.x = v1;
            v174.size.width = v2;
            v174.size.height = v3;
            DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v174);
            CFAutorelease(DictionaryRepresentation);
            [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
            *&v60 = OUTLINED_FUNCTION_17_31();
            [MEMORY[0x1E696AD98] numberWithInt:v60];
            [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
            [objc_msgSend(objc_msgSend(v21 "faceObservation")];
            v62 = OUTLINED_FUNCTION_7_64(v61);
            v63 = v62;
            v64 = -v62;
            if (v62 > -360)
            {
              if (v63 > 0)
              {
                v64 = 360 - v63;
              }
            }

            else
            {
              v64 %= 0x168u;
            }

            *&v62 = v64;
            [MEMORY[0x1E696AD98] numberWithFloat:v62];
            [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
            [objc_msgSend(objc_msgSend(v21 "faceObservation")];
            v66 = OUTLINED_FUNCTION_7_64(v65) + -180.0;
            v67 = v66;
            if (v66 < 360)
            {
              v68 = v67 + (v67 < 0 ? 0x168 : 0);
            }

            else
            {
              v68 = v67 % 0x168u;
            }

            *&v66 = v68;
            [MEMORY[0x1E696AD98] numberWithFloat:v66];
            [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
            [objc_msgSend(objc_msgSend(v21 "faceObservation")];
            v70 = OUTLINED_FUNCTION_7_64(v69);
            v71 = v70;
            v72 = -v70;
            if (v70 > -360)
            {
              if (v71 > 0)
              {
                v72 = 360 - v71;
              }
            }

            else
            {
              v72 %= 0x168u;
            }

            *&v70 = v72;
            [MEMORY[0x1E696AD98] numberWithFloat:v70];
            v22 = [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
          }

          ++v20;
        }

        while (v20 != v18);
        v18 = OUTLINED_FUNCTION_20_24(v22, v23, v24, v25, v26, v27, v28, v29, v74, v76, *&v78, v80, v82, v84, v86, v88, v90, v92, v94, obja, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, *(&v130 + 1), v133, *(&v133 + 1), v136, *(&v136 + 1), v139, *(&v139 + 1), v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v173);
      }

      while (v18);
    }
  }

  OUTLINED_FUNCTION_5_5();
}

- (void)_processHumanObservations:time:
{
  OUTLINED_FUNCTION_6_4();
  obj = v5;
  if (v6)
  {
    [MEMORY[0x1E695DF90] dictionary];
    OUTLINED_FUNCTION_15_36();
    if (v7)
    {
      OUTLINED_FUNCTION_8_53();
      v8 = FigNanosecondsToHostTime();
    }

    else
    {
      v8 = 0;
    }

    [v0 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", v8), *off_1E798B780}];
    v73 = [MEMORY[0x1E695DF70] array];
    v9 = [v0 setObject:? forKeyedSubscript:?];
    v17 = OUTLINED_FUNCTION_21_29(v9, v10, v11, v12, v13, v14, v15, v16, v61, v63, v65, v67, v69, v71, v73, obj, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v112, v114, v115, v117, v118, v120, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, 0);
    if (v17)
    {
      v18 = v17;
      v64 = v0;
      v19 = MEMORY[0];
      v72 = *off_1E798AC78;
      v68 = *off_1E798B1F0;
      v70 = *off_1E798B5C0;
      v66 = MEMORY[0];
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (MEMORY[0] != v19)
          {
            objc_enumerationMutation(obja);
          }

          v21 = *(8 * i);
          v22 = [objc_msgSend(v21 "humanTrackingRequest")];
          if ((v22 & 1) == 0)
          {
            v30 = [MEMORY[0x1E695DF90] dictionary];
            [v74 addObject:v30];
            [v30 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(v21, "humanBodyID")), v72}];
            v31 = [objc_msgSend(v21 "humanTrackingRequest")];
            if (v31)
            {
              v32 = v31;
              [objc_msgSend(v31 "firstObject")];
              OUTLINED_FUNCTION_1_113();
              v110 = 0u;
              v113 = 0u;
              v116 = 0u;
              v119 = 0u;
              v41 = OUTLINED_FUNCTION_23_23(v33, v34, v35, v36, v37, v38, v39, v40, v62, v64, v66, v68, v70, v72, v74, obja, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, 0);
              if (v41)
              {
                v42 = v41;
                v43 = 0;
                v44 = MEMORY[0];
                v45 = 0.0;
                do
                {
                  for (j = 0; j != v42; ++j)
                  {
                    if (MEMORY[0] != v44)
                    {
                      objc_enumerationMutation(v32);
                    }

                    v47 = *(8 * j);
                    v48 = [v47 confidence];
                    if (v56 > v45)
                    {
                      [v47 confidence];
                      v45 = v57;
                      [v47 boundingBox];
                      OUTLINED_FUNCTION_1_113();
                      v43 = v47;
                    }
                  }

                  v42 = OUTLINED_FUNCTION_23_23(v48, v49, v50, v51, v52, v53, v54, v55, v62, v64, v66, v68, v70, v72, v74, obja, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110);
                }

                while (v42);
              }

              else
              {
                v43 = 0;
                v45 = 0.0;
              }

              v58 = [v21 humanTrackingRequest];
              if (v45 <= 0.3)
              {
                [v58 setLastFrame:1];
              }

              else
              {
                [v58 setInputObservation:v43];
              }

              v19 = v66;
            }

            else
            {
              [objc_msgSend(v21 "humanObservation")];
              OUTLINED_FUNCTION_1_113();
              [objc_msgSend(v21 "humanObservation")];
            }

            v154.origin.y = 1.0 - (v3 + v4);
            v154.origin.x = v1;
            v154.size.width = v2;
            v154.size.height = v3;
            DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v154);
            [v30 setObject:CFAutorelease(DictionaryRepresentation) forKeyedSubscript:v70];
            *&v60 = OUTLINED_FUNCTION_17_31();
            v22 = [v30 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v60), v68}];
          }
        }

        v18 = OUTLINED_FUNCTION_21_29(v22, v23, v24, v25, v26, v27, v28, v29, v62, v64, v66, v68, v70, v72, v74, obja, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, *(&v110 + 1), v113, *(&v113 + 1), v116, *(&v116 + 1), v119, *(&v119 + 1), v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v153);
      }

      while (v18);
    }
  }

  OUTLINED_FUNCTION_5_5();
}

- (void)_compareHumanBodyDetections:currentHumanDetections:time:
{
  OUTLINED_FUNCTION_6_4();
  v26 = v5;
  if (v6)
  {
    OUTLINED_FUNCTION_11_46();
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [v1 count];
    v9 = [v0 count];
    if (v9)
    {
      OUTLINED_FUNCTION_6_73(v9, v10, v11, v12, v13, v14, v15, v16, v25);
      do
      {
        if (v8)
        {
          do
          {
            [objc_msgSend(objc_msgSend(v1 objectAtIndexedSubscript:{0), "humanObservation"), "boundingBox"}];
            [OUTLINED_FUNCTION_14_37() boundingBox];
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_48();
            v28 = CGRectIntersection(v27, v35);
            CGRectStandardize(v28);
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_48();
            v30 = CGRectUnion(v29, v36);
            CGRectStandardize(v30);
            v31.origin.x = OUTLINED_FUNCTION_3_0();
            CGRectGetMidX(v31);
            v32.origin.x = OUTLINED_FUNCTION_3_0();
            CGRectGetMidY(v32);
            v33.origin.x = OUTLINED_FUNCTION_3();
            CGRectGetMidX(v33);
            v34.origin.x = OUTLINED_FUNCTION_3();
            MidY = CGRectGetMidY(v34);
            v18 = OUTLINED_FUNCTION_12_43(MidY);
            OUTLINED_FUNCTION_10_47(v18);
          }

          while (!v19);
        }

        ++v4;
      }

      while (v4 != v2);
      v20 = OUTLINED_FUNCTION_13_36();
      [v20 count];
      do
      {
        v21 = [objc_msgSend(v20 objectAtIndexedSubscript:{0), "integerValue"}];
        if (v21 == -1 || v21 < v8)
        {
          if (v21 == -1 || *(v3 + 4 * v21) > *(v4 + 116))
          {
            v23 = -[FigHumanBodyObservation initWithHumanObservation:humanBodyID:time:]([FigHumanBodyObservation alloc], "initWithHumanObservation:humanBodyID:time:", [v0 objectAtIndexedSubscript:0], (*(v4 + 200))++, v26);
          }

          else
          {
            [objc_msgSend(v1 objectAtIndexedSubscript:{v21), "humanBodyID"}];
            v24 = [FigHumanBodyObservation alloc];
            OUTLINED_FUNCTION_19_30();
            v23 = [OUTLINED_FUNCTION_16_37() initWithHumanObservation:? humanBodyID:? time:?];
          }

          [v7 addObject:v23];
        }

        OUTLINED_FUNCTION_18_29();
      }

      while (!v19);
    }
  }

  OUTLINED_FUNCTION_5_5();
}

- (void)_compareFaceDetections:currentFaceDetections:time:
{
  OUTLINED_FUNCTION_6_4();
  v26 = v5;
  if (v6)
  {
    OUTLINED_FUNCTION_11_46();
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [v1 count];
    v9 = [v0 count];
    if (v9)
    {
      OUTLINED_FUNCTION_6_73(v9, v10, v11, v12, v13, v14, v15, v16, v25);
      do
      {
        if (v8)
        {
          do
          {
            [objc_msgSend(objc_msgSend(v1 objectAtIndexedSubscript:{0), "faceObservation"), "boundingBox"}];
            [OUTLINED_FUNCTION_14_37() boundingBox];
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_48();
            v28 = CGRectIntersection(v27, v35);
            CGRectStandardize(v28);
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_48();
            v30 = CGRectUnion(v29, v36);
            CGRectStandardize(v30);
            v31.origin.x = OUTLINED_FUNCTION_3_0();
            CGRectGetMidX(v31);
            v32.origin.x = OUTLINED_FUNCTION_3_0();
            CGRectGetMidY(v32);
            v33.origin.x = OUTLINED_FUNCTION_3();
            CGRectGetMidX(v33);
            v34.origin.x = OUTLINED_FUNCTION_3();
            MidY = CGRectGetMidY(v34);
            v18 = OUTLINED_FUNCTION_12_43(MidY);
            OUTLINED_FUNCTION_10_47(v18);
          }

          while (!v19);
        }

        ++v4;
      }

      while (v4 != v2);
      v20 = OUTLINED_FUNCTION_13_36();
      [v20 count];
      do
      {
        v21 = [objc_msgSend(v20 objectAtIndexedSubscript:{0), "integerValue"}];
        if (v21 == -1 || v21 < v8)
        {
          if (v21 == -1 || *(v3 + 4 * v21) > *(v4 + 116))
          {
            v23 = -[FigFaceObservation initWithFaceObservation:faceID:time:]([FigFaceObservation alloc], "initWithFaceObservation:faceID:time:", [v0 objectAtIndexedSubscript:0], (*(v4 + 192))++, v26);
          }

          else
          {
            [objc_msgSend(v1 objectAtIndexedSubscript:{v21), "faceID"}];
            v24 = [FigFaceObservation alloc];
            OUTLINED_FUNCTION_19_30();
            v23 = [OUTLINED_FUNCTION_16_37() initWithFaceObservation:? faceID:? time:?];
          }

          [v7 addObject:v23];
        }

        OUTLINED_FUNCTION_18_29();
      }

      while (!v19);
    }
  }

  OUTLINED_FUNCTION_5_5();
}

@end