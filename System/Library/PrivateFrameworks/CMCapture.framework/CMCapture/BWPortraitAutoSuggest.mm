@interface BWPortraitAutoSuggest
- (BOOL)perFrameObjectValidity:(unint64_t)validity originalFrameWidth:(unint64_t)width originalFrameHeight:(unint64_t)height frameWidth:(unint64_t)frameWidth frameHeight:(double)frameHeight finalCropRect:(double)rect;
- (BOOL)runAutoSuggestionWithSampleBuffer:(opaqueCMSampleBuffer *)buffer portraitSceneMonitorStatus:(int *)status;
- (BOOL)temporalObjectValidity:(uint64_t)validity;
- (BWPortraitAutoSuggest)initWithTuningParameters:(id)parameters;
- (id)getFilteredDetectedObjects:(void *)objects detectedFacesArray:;
- (uint64_t)_adjustMetadataOfSampleBuffer:(uint64_t)result;
- (uint64_t)_updateFrameRateDependantParams:(uint64_t)result;
- (uint64_t)processSbuf:(unint64_t)sbuf;
- (uint64_t)updateAbsentTrackers:(uint64_t)trackers;
- (uint64_t)updateTrackers:(void *)trackers currentTracker:;
- (unint64_t)_pruneTrackerArrays:(unint64_t)result;
- (void)dealloc;
@end

@implementation BWPortraitAutoSuggest

- (BWPortraitAutoSuggest)initWithTuningParameters:(id)parameters
{
  v26.receiver = self;
  v26.super_class = BWPortraitAutoSuggest;
  v4 = [(BWPortraitAutoSuggest *)&v26 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:{objc_msgSend(parameters, "objectForKeyedSubscript:", @"PortraitAutoSuggest"}];
    *&v4->_doSuggest = 0;
    v4->_validityCounter = 0;
    v4->_invalidityCounter = 0;
    if ([v5 objectForKeyedSubscript:@"ObjectFrameRatio"])
    {
      [objc_msgSend(v5 objectForKeyedSubscript:{@"ObjectFrameRatio", "floatValue"}];
    }

    else
    {
      v6 = 3.0;
    }

    v4->_objectFrameRatio = v6;
    if ([v5 objectForKeyedSubscript:@"MarginInRatioWidth"])
    {
      v7 = [objc_msgSend(v5 objectForKeyedSubscript:{@"MarginInRatioWidth", "intValue"}];
    }

    else
    {
      v7 = 13;
    }

    v4->_marginInRatioWidth = v7;
    if ([v5 objectForKeyedSubscript:@"MarginInRatioHeight"])
    {
      v8 = [objc_msgSend(v5 objectForKeyedSubscript:{@"MarginInRatioHeight", "intValue"}];
    }

    else
    {
      v8 = 13;
    }

    v4->_marginInRatioHeight = v8;
    if ([v5 objectForKeyedSubscript:@"MarginOutRatioWidth"])
    {
      v9 = [objc_msgSend(v5 objectForKeyedSubscript:{@"MarginOutRatioWidth", "intValue"}];
    }

    else
    {
      v9 = 77;
    }

    v4->_marginOutRatioWidth = v9;
    if ([v5 objectForKeyedSubscript:@"MarginOutRatioHeight"])
    {
      v10 = [objc_msgSend(v5 objectForKeyedSubscript:{@"MarginOutRatioHeight", "intValue"}];
    }

    else
    {
      v10 = 77;
    }

    v4->_marginOutRatioHeight = v10;
    if ([v5 objectForKeyedSubscript:@"FadeValidThCst"])
    {
      [objc_msgSend(v5 objectForKeyedSubscript:{@"FadeValidThCst", "floatValue"}];
    }

    else
    {
      v11 = 0.5;
    }

    v4->_fadeValidThCst = v11;
    if ([v5 objectForKeyedSubscript:@"FadeInvalidThCst"])
    {
      [objc_msgSend(v5 objectForKeyedSubscript:{@"FadeInvalidThCst", "floatValue"}];
    }

    else
    {
      v12 = 2.0;
    }

    v4->_fadeInvalidThCst = v12;
    v13 = [v5 objectForKeyedSubscript:@"xObjectCenterStdTh"];
    v14 = 973279855;
    LODWORD(v15) = 973279855;
    if (v13)
    {
      [objc_msgSend(v5 objectForKeyedSubscript:{@"xObjectCenterStdTh", v15), "floatValue"}];
    }

    v4->_xObjectCenterStdTh = *&v15;
    if ([v5 objectForKeyedSubscript:@"yObjectCenterStdTh"])
    {
      [objc_msgSend(v5 objectForKeyedSubscript:{@"yObjectCenterStdTh", "floatValue"}];
      v14 = v16;
    }

    LODWORD(v4->_yObjectCenterStdTh) = v14;
    if ([v5 objectForKeyedSubscript:@"MaxMotionThreshold"])
    {
      v17 = [objc_msgSend(v5 objectForKeyedSubscript:{@"MaxMotionThreshold", "intValue"}];
    }

    else
    {
      v17 = 30;
    }

    v4->_maxMotionThreshold = v17;
    if ([v5 objectForKeyedSubscript:@"MinMotionThreshold"])
    {
      v18 = [objc_msgSend(v5 objectForKeyedSubscript:{@"MinMotionThreshold", "intValue"}];
    }

    else
    {
      v18 = 15;
    }

    v4->_minMotionThreshold = v18;
    if ([v5 objectForKeyedSubscript:@"FadeValidThInvalidityActive"])
    {
      [objc_msgSend(v5 objectForKeyedSubscript:{@"FadeValidThInvalidityActive", "floatValue"}];
    }

    else
    {
      v19 = 0.5;
    }

    v4->_fadeValidThInvalidityActiveSec = v19;
    if ([v5 objectForKeyedSubscript:@"FadeValidThInvalidityBuild"])
    {
      [objc_msgSend(v5 objectForKeyedSubscript:{@"FadeValidThInvalidityBuild", "floatValue"}];
    }

    else
    {
      v20 = 0.0;
    }

    v4->_fadeValidThInvalidityBuildSec = v20;
    if ([v5 objectForKeyedSubscript:@"ValidObjectIntervalTh"])
    {
      [objc_msgSend(v5 objectForKeyedSubscript:{@"ValidObjectIntervalTh", "floatValue"}];
    }

    else
    {
      v21 = 1051372203;
    }

    LODWORD(v4->_validObjectIntervalThSec) = v21;
    if ([v5 objectForKeyedSubscript:@"ObjectCentersLookbackInterval"])
    {
      [objc_msgSend(v5 objectForKeyedSubscript:{@"ObjectCentersLookbackInterval", "floatValue"}];
    }

    else
    {
      v22 = 1042983595;
    }

    LODWORD(v4->_objectCentersLookbackIntervalSec) = v22;
    if ([v5 objectForKeyedSubscript:@"ObjectBoxFrameAreaValidityRatio"])
    {
      v23 = [objc_msgSend(v5 objectForKeyedSubscript:{@"ObjectBoxFrameAreaValidityRatio", "intValue"}];
    }

    else
    {
      v23 = 250;
    }

    v4->_objectBoxFrameAreaValidityRatio = v23;
    if ([v5 objectForKeyedSubscript:@"ObjectBoxFrameAreaValidityRatioWhenOn"])
    {
      v24 = [objc_msgSend(v5 objectForKeyedSubscript:{@"ObjectBoxFrameAreaValidityRatioWhenOn", "intValue"}];
    }

    else
    {
      v24 = 260;
    }

    v4->_objectBoxFrameAreaValidityRatioWhenOn = v24;
    v4->_validObjectCounterOld = 0;
    v4->_trackers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_temporalValidityTh = 1000;
  }

  return v4;
}

- (void)dealloc
{
  self->_trackers = 0;
  v3.receiver = self;
  v3.super_class = BWPortraitAutoSuggest;
  [(BWPortraitAutoSuggest *)&v3 dealloc];
}

- (BOOL)runAutoSuggestionWithSampleBuffer:(opaqueCMSampleBuffer *)buffer portraitSceneMonitorStatus:(int *)status
{
  [(BWPortraitAutoSuggest *)self _updateFrameRateDependantParams:buffer];
  [(BWPortraitAutoSuggest *)self processSbuf:buffer];
  if ((*status | 8) == 9)
  {
    if (self->_shallowDepthOfFieldRenderingEnabled)
    {
      if (self->_lastDoSuggest)
      {
        v7 = 13;
      }

      else
      {
        v7 = 14;
      }

      if (self->_lastDoSuggest)
      {
        v8 = 13;
      }

      else
      {
        v8 = 12;
      }

      if (self->_portTypeIsFFC)
      {
        v9 = v8;
      }

      else
      {
        v9 = v7;
      }
    }

    else if (self->_lastDoSuggest)
    {
      v9 = 11;
    }

    else
    {
      v9 = 12;
    }

    *status = v9;
  }

  [(BWPortraitAutoSuggest *)self _adjustMetadataOfSampleBuffer:buffer];
  return 1;
}

- (uint64_t)_updateFrameRateDependantParams:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = CMGetAttachment(target, *off_1E798A3C8, 0);
    v4 = *off_1E798B210;
    result = [objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798B210), "intValue"}];
    LODWORD(v5) = 12.0;
    if (result >= 13)
    {
      result = [objc_msgSend(v3 objectForKeyedSubscript:{v4, v5), "intValue"}];
      *&v5 = result;
    }

    v6 = vcvtps_u32_f32(*&v5 * *(v2 + 24));
    *(v2 + 28) = v6;
    if (!*(v2 + 84))
    {
      v6 = 0;
    }

    *(v2 + 84) = v6;
    *(v2 + 36) = vcvtps_u32_f32(*&v5 * *(v2 + 32));
    *(v2 + 44) = vcvtps_u32_f32(*&v5 * *(v2 + 40));
    *(v2 + 88) = vrev64_s32(vcvt_u32_f32(vrndp_f32(vmul_n_f32(*(v2 + 48), *&v5))));
    v7 = vcvtps_u32_f32(*&v5 * *(v2 + 96));
    if (v7 <= 2)
    {
      v7 = 2;
    }

    *(v2 + 100) = v7;
  }

  return result;
}

- (uint64_t)processSbuf:(unint64_t)sbuf
{
  if (sbuf)
  {
    v4 = CMGetAttachment(target, *off_1E798A3C8, 0);
    v5 = [v4 objectForKeyedSubscript:*off_1E798B220];
    v6 = [v4 objectForKeyedSubscript:*off_1E798B218];
    rect = *ymmword_1AD055BC0;
    CGRectMakeWithDictionaryRepresentation([v4 objectForKeyedSubscript:*off_1E798A5C8], &rect);
    ImageBuffer = CMSampleBufferGetImageBuffer(target);
    Width = CVPixelBufferGetWidth(ImageBuffer);
    v9 = CMSampleBufferGetImageBuffer(target);
    Height = CVPixelBufferGetHeight(v9);
    size = rect.size;
    array = [MEMORY[0x1E695DF70] array];
    if (v5)
    {
      v136 = 0u;
      v137 = 0u;
      v138 = 0u;
      v139 = 0u;
      obj = [(BWPortraitAutoSuggest *)sbuf getFilteredDetectedObjects:v5 detectedFacesArray:v6];
      v93 = [obj countByEnumeratingWithState:&v136 objects:v135 count:16];
      if (v93)
      {
        v13 = Width;
        v14 = Height;
        v89 = (size.height * Height);
        v91 = (size.width * Width);
        v87 = *v137;
        v15 = 0x1E696A000uLL;
        v81 = Height;
        v83 = Width;
        v79 = array;
        do
        {
          v16 = 0;
          do
          {
            if (*v137 != v87)
            {
              objc_enumerationMutation(obj);
            }

            v95 = v16;
            v17 = *(*(&v136 + 1) + 8 * v16);
            combinedTrackerID = [v17 combinedTrackerID];
            [array addObject:{objc_msgSend(*(v15 + 3480), "numberWithUnsignedLongLong:", combinedTrackerID)}];
            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v19 = *(sbuf + 120);
            OUTLINED_FUNCTION_6_41();
            v20 = [v19 countByEnumeratingWithState:? objects:? count:?];
            if (!v20)
            {
              goto LABEL_18;
            }

            v21 = v20;
            v22 = 0;
            v23 = *v132;
            v24 = -1;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v132 != v23)
                {
                  objc_enumerationMutation(v19);
                }

                v26 = *(*(&v131 + 1) + 8 * i);
                if ([v26 combinedTrackerID] == combinedTrackerID)
                {
                  v24 = [*(sbuf + 120) indexOfObject:v26];
                  v22 = v26;
                }
              }

              OUTLINED_FUNCTION_6_41();
              v21 = [v19 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v21);
            Height = v81;
            Width = v83;
            array = v79;
            if (v24 == -1)
            {
LABEL_18:
              v22 = objc_opt_new();
              [v22 setCombinedTrackerID:combinedTrackerID];
              v24 = -1;
            }

            [v17 rect];
            v28 = v27;
            [v17 rect];
            v30 = v29;
            [v17 rect];
            v32 = v31;
            [v17 rect];
            v34 = v33;
            if (![(BWPortraitAutoSuggest *)sbuf perFrameObjectValidity:v17 originalFrameWidth:Width originalFrameHeight:Height frameWidth:v91 frameHeight:v89 finalCropRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height]|| ![(BWPortraitAutoSuggest *)sbuf temporalObjectValidity:v22])
            {
              v15 = 0x1E696A000uLL;
              if ([v22 validObjectCounter] < 1)
              {
                v38 = 0;
                goto LABEL_27;
              }

              v37 = -1;
              goto LABEL_26;
            }

            validObjectCounter = [v22 validObjectCounter];
            v36 = *(sbuf + 28);
            v15 = 0x1E696A000;
            if (validObjectCounter + 1 < (2 * v36))
            {
              v37 = 1;
LABEL_26:
              v38 = [v22 validObjectCounter] + v37;
              goto LABEL_27;
            }

            v38 = (2 * v36);
LABEL_27:
            v39 = v28 * v13;
            v40 = v30 * v14;
            v41 = v32 * v13;
            v42 = v34 * v14;
            [v22 setValidObjectCounter:v38];
            v130[0] = ((v41 * 0.5) + v39);
            v130[1] = ((v42 * 0.5) + v40);
            centersIn = [v22 centersIn];
            [centersIn addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithBytes:objCType:", v130, "{CGPoint=dd}")}];
            objectAreaIn = [v22 objectAreaIn];
            *&v45 = v41 * v42;
            [objectAreaIn addObject:{objc_msgSend(*(v15 + 3480), "numberWithFloat:", v45)}];
            [v17 rect];
            [v22 setRect:?];
            [(BWPortraitAutoSuggest *)sbuf updateTrackers:v24 currentTracker:v22];
            v16 = v95 + 1;
          }

          while (v95 + 1 != v93);
          v46 = [obj countByEnumeratingWithState:&v136 objects:v135 count:16];
          v93 = v46;
        }

        while (v46);
      }
    }

    v47 = [BWPortraitAutoSuggest updateAbsentTrackers:sbuf];
    v48 = *(sbuf + 120);
    v56 = OUTLINED_FUNCTION_60_1(v47, v49, v50, v51, v52, v53, v54, v55, v77, v79, v81, v83, obj, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, 0);
    if (v56)
    {
      v57 = v56;
      v58 = 0;
      v59 = MEMORY[0];
      do
      {
        for (j = 0; j != v57; ++j)
        {
          if (MEMORY[0] != v59)
          {
            objc_enumerationMutation(v48);
          }

          v61 = *(8 * j);
          validObjectCounter2 = [v61 validObjectCounter];
          if (validObjectCounter2 > v58)
          {
            validObjectCounter2 = [v61 validObjectCounter];
            v58 = validObjectCounter2;
          }
        }

        v57 = OUTLINED_FUNCTION_60_1(validObjectCounter2, v63, v64, v65, v66, v67, v68, v69, v78, v80, v82, v84, obja, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v129);
      }

      while (v57);
      v70 = *(sbuf + 84);
      if (*(sbuf + 16) < v58)
      {
        if (v58 <= v70)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (v58 > v70)
      {
        if (v58 != 2 * *(sbuf + 28))
        {
          v71 = *(sbuf + 12);
LABEL_52:
          *(sbuf + 12) = v71;
          if (v71 <= (*(sbuf + 88) - v70))
          {
            LOBYTE(v73) = *(sbuf + 11);
          }

          else
          {
            *(sbuf + 20) = 0;
            LOBYTE(v73) = 1;
          }

          goto LABEL_55;
        }

LABEL_46:
        v71 = *(sbuf + 12) + 1;
        goto LABEL_52;
      }
    }

    else
    {
      v58 = 0;
    }

LABEL_47:
    v72 = *(sbuf + 20) + 1;
    *(sbuf + 20) = v72;
    if (v72 > *(sbuf + 92))
    {
      LOBYTE(v73) = 0;
      v74 = *(sbuf + 36);
      *(sbuf + 84) = *(sbuf + 28);
      *(sbuf + 88) = v74;
      *(sbuf + 12) = 0;
      *(sbuf + 10) = 0;
LABEL_56:
      *(sbuf + 11) = v73;
      *(sbuf + 16) = v58;
      return 0;
    }

    v73 = *(sbuf + 11);
    if (v73 == 1)
    {
      v75 = *(sbuf + 44);
      *(sbuf + 84) = v75;
      *(sbuf + 88) = v75;
    }

LABEL_55:
    *(sbuf + 10) = v73;
    goto LABEL_56;
  }

  return 0;
}

- (uint64_t)_adjustMetadataOfSampleBuffer:(uint64_t)result
{
  if (result)
  {
    v2 = [CMGetAttachment(target *off_1E798A3C8];
    array = [MEMORY[0x1E695DF70] array];
    v4 = [v2 objectForKeyedSubscript:*off_1E798AC98];
    v5 = *off_1E798ACE8;
    [v4 setObject:array forKeyedSubscript:*off_1E798ACE8];
    array2 = [MEMORY[0x1E695DF70] array];
    v7 = [v2 objectForKeyedSubscript:*off_1E798ACA8];

    return [v7 setObject:array2 forKeyedSubscript:v5];
  }

  return result;
}

- (id)getFilteredDetectedObjects:(void *)objects detectedFacesArray:
{
  obj = objects;
  if (!self)
  {
    return 0;
  }

  memset(&rect, 0, sizeof(rect));
  array = [MEMORY[0x1E695DF70] array];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v52 = OUTLINED_FUNCTION_9_30();
  if (v52)
  {
    v50 = *v84;
    v49 = *off_1E798ACE8;
    v4 = *off_1E798B5C0;
    v5 = *off_1E798ACB8;
    v57 = *off_1E798AC98;
    v56 = *off_1E798ACA8;
    v55 = *off_1E798AC78;
    v54 = *off_1E798B2B8;
    v58 = *off_1E798B1F0;
    v51 = a2;
    do
    {
      v6 = 0;
      do
      {
        if (*v84 != v50)
        {
          objc_enumerationMutation(a2);
        }

        v53 = v6;
        v7 = *(*(&v83 + 1) + 8 * v6);
        v8 = [objc_msgSend(a2 objectForKeyedSubscript:{v7, obj), "objectForKeyedSubscript:", v49}];
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v79 objects:v78 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v80;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v80 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v79 + 1) + 8 * i);
              if ([v13 objectForKeyedSubscript:v4])
              {
                v14 = objc_opt_new();
                if ([v7 compare:v5])
                {
                  if ([v7 compare:v57])
                  {
                    if ([v7 compare:v56])
                    {
                      continue;
                    }

                    v15 = 5;
                  }

                  else
                  {
                    v15 = 3;
                  }

                  v16 = v55;
                }

                else
                {
                  v15 = 1;
                  v16 = v54;
                }

                [v14 setObjectType:v15];
                [v14 setTrackerID:{objc_msgSend(objc_msgSend(v13, "objectForKeyedSubscript:", v16), "intValue")}];
                [v14 setCombinedTrackerID:{objc_msgSend(v14, "trackerID") | (objc_msgSend(v14, "objectType") << 32)}];
                [v14 setConfidenceLevel:{objc_msgSend(objc_msgSend(v13, "objectForKeyedSubscript:", v58), "intValue")}];
                CGRectMakeWithDictionaryRepresentation([v13 objectForKeyedSubscript:v4], &rect);
                [v14 setRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
                [array addObject:v14];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v79 objects:v78 count:16];
          }

          while (v10);
        }

        v6 = v53 + 1;
        a2 = v51;
      }

      while (v53 + 1 != v52);
      v52 = OUTLINED_FUNCTION_9_30();
    }

    while (v52);
  }

  OUTLINED_FUNCTION_6_41();
  v17 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v17)
  {
    v18 = v17;
    v19 = MEMORY[0];
    v20 = *off_1E798B2B8;
    v59 = *off_1E798B1F0;
    v21 = *off_1E798B5C0;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (MEMORY[0] != v19)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(8 * j);
        v24 = [objc_msgSend(v23 objectForKeyedSubscript:{v20, obj), "intValue"}];
        v25 = v24;
        v33 = OUTLINED_FUNCTION_8_31(v24, v26, v27, v28, v29, v30, v31, v32, obja, v49, v50, v51, v52, v53, v54, v55, v56, v57, v59, array, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, 0);
        if (v33)
        {
          v34 = v33;
          v35 = MEMORY[0];
LABEL_32:
          v36 = 0;
          while (1)
          {
            if (MEMORY[0] != v35)
            {
              objc_enumerationMutation(array);
            }

            trackerID = [*(8 * v36) trackerID];
            if (trackerID == v25)
            {
              break;
            }

            if (v34 == ++v36)
            {
              v34 = OUTLINED_FUNCTION_8_31(trackerID, v38, v39, v40, v41, v42, v43, v44, obj, v49, v50, v51, v52, v53, v54, v55, v56, v57, v59, array, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
              if (v34)
              {
                goto LABEL_32;
              }

              goto LABEL_38;
            }
          }
        }

        else
        {
LABEL_38:
          v45 = objc_opt_new();
          [v45 setObjectType:1];
          [v45 setTrackerID:{objc_msgSend(objc_msgSend(v23, "objectForKeyedSubscript:", v20), "intValue")}];
          [v45 setCombinedTrackerID:{objc_msgSend(v45, "trackerID") | (objc_msgSend(v45, "objectType") << 32)}];
          [v45 setConfidenceLevel:{objc_msgSend(objc_msgSend(v23, "objectForKeyedSubscript:", v59), "intValue")}];
          CGRectMakeWithDictionaryRepresentation([v23 objectForKeyedSubscript:v21], &rect);
          [v45 setRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
          [array addObject:v45];
        }
      }

      OUTLINED_FUNCTION_6_41();
      v18 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v18);
  }

  return array;
}

- (BOOL)perFrameObjectValidity:(unint64_t)validity originalFrameWidth:(unint64_t)width originalFrameHeight:(unint64_t)height frameWidth:(unint64_t)frameWidth frameHeight:(double)frameHeight finalCropRect:(double)rect
{
  if (result)
  {
    v17 = result;
    [a2 rect];
    validityCopy = validity;
    v20 = (v18 - frameHeight) * validity;
    [a2 rect];
    v22 = v21;
    [a2 rect];
    v24 = v23;
    [a2 rect];
    v26 = v25;
    [a2 rect];
    v28 = v27;
    [a2 rect];
    result = 0;
    if (v20 >= 0.0)
    {
      v50 = v20;
      widthCopy = width;
      v31 = (v26 - rect) * width;
      if (v31 >= 0.0)
      {
        v32 = (v22 + v24 - frameHeight) * validityCopy;
        if (a9 * validityCopy < v32)
        {
          return 0;
        }

        v33 = (v28 + v29 - rect) * widthCopy;
        if (a10 * widthCopy < v33)
        {
          return 0;
        }

        [a2 rect];
        v35 = v34;
        [a2 rect];
        v37 = v36 * widthCopy;
        v38 = frameWidth / *(v17 + 72);
        v39 = 60;
        if (*(v17 + 11))
        {
          v39 = 64;
        }

        v40 = 68;
        if (*(v17 + 11))
        {
          v40 = 76;
        }

        v41 = height / *(v17 + v40);
        if (v50 <= v41 || v31 <= v38)
        {
          v44 = 0;
        }

        else
        {
          v43 = (frameWidth - v38);
          v44 = v32 < (height - v41);
          if (v33 >= v43)
          {
            v44 = 0;
          }
        }

        v45 = *(v17 + 56);
        if ((frameWidth / v45) <= v37)
        {
          if ((*(v17 + 9) & 1) == 0)
          {
            return [a2 objectType] == 1 || objc_msgSend(a2, "objectType") == 3 || objc_msgSend(a2, "objectType") == 5;
          }
        }

        else
        {
          v46 = v35 * validityCopy;
          v47 = (v46 * v37) >= ((frameWidth * height) / *(v17 + v39));
          v48 = height / v45;
          v49 = v47 && v44;
          if (*(v17 + 9))
          {
            result = 0;
            if (v48 <= v46 || ((v49 ^ 1) & 1) != 0)
            {
              return result;
            }

            return [a2 objectType] == 1 || objc_msgSend(a2, "objectType") == 3 || objc_msgSend(a2, "objectType") == 5;
          }

          if ((v48 <= v46) | v49 & 1)
          {
            return [a2 objectType] == 1 || objc_msgSend(a2, "objectType") == 3 || objc_msgSend(a2, "objectType") == 5;
          }
        }

        return 0;
      }
    }
  }

  return result;
}

- (BOOL)temporalObjectValidity:(uint64_t)validity
{
  if (!validity)
  {
    return 0;
  }

  [a2 centersIn];
  v4 = [OUTLINED_FUNCTION_8() arrayWithArray:?];
  if (*(validity + 100) < 2u)
  {
    return 1;
  }

  v5 = v4;
  if ([v4 count] < *(validity + 100))
  {
    [objc_msgSend(a2 "centerVx")];
    [objc_msgSend(a2 "centerVy")];
    [objc_msgSend(a2 "centerDx")];
    [objc_msgSend(a2 "centerDy")];
    return 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  if ([v5 count])
  {
    v9 = 0;
    do
    {
      v57 = 0.0;
      [objc_msgSend(v5 objectAtIndex:{v9, 0), "getValue:", &v56}];
      [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", v56)}];
      [MEMORY[0x1E696AD98] numberWithDouble:v57];
      [OUTLINED_FUNCTION_8() addObject:?];
      ++v9;
    }

    while ([v5 count] > v9);
  }

  v10 = stdDeviation(array);
  v11 = stdDeviation(array2);
  centerVx = [a2 centerVx];
  *&v13 = v10;
  [centerVx addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v13)}];
  centerVy = [a2 centerVy];
  *&v15 = v11;
  [centerVy addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v15)}];
  [objc_msgSend(array objectAtIndex:{objc_msgSend(array, "count") - 1), "floatValue"}];
  v17 = v16;
  [objc_msgSend(array objectAtIndex:{objc_msgSend(array, "count") - 2), "floatValue"}];
  v19 = vabds_f32(v17, v18);
  [objc_msgSend(array2 objectAtIndex:{objc_msgSend(array2, "count") - 1), "floatValue"}];
  v21 = v20;
  [objc_msgSend(array2 objectAtIndex:{objc_msgSend(array2, "count") - 2), "floatValue"}];
  v23 = vabds_f32(v21, v22);
  [a2 centerDx];
  *&v24 = v19;
  [MEMORY[0x1E696AD98] numberWithFloat:v24];
  [OUTLINED_FUNCTION_8() addObject:?];
  [a2 centerDy];
  *&v25 = v23;
  [MEMORY[0x1E696AD98] numberWithFloat:v25];
  [OUTLINED_FUNCTION_8() addObject:?];
  v26 = *(validity + 108);
  v27 = *(validity + 104);
  v28 = *(validity + 112);
  [objc_msgSend(objc_msgSend(a2 "objectAreaIn")];
  if ((v28 * v29) <= v27)
  {
    v31 = *(validity + 112);
    [objc_msgSend(objc_msgSend(a2 "objectAreaIn")];
    v30 = v31 * v32;
  }

  else
  {
    v30 = *(validity + 104);
  }

  if (v30 < v26)
  {
    v33 = *(validity + 108);
LABEL_15:
    v37 = v33;
    goto LABEL_17;
  }

  v34 = *(validity + 104);
  v35 = *(validity + 112);
  [objc_msgSend(objc_msgSend(a2 "objectAreaIn")];
  if ((v35 * v36) > v34)
  {
    v33 = *(validity + 104);
    goto LABEL_15;
  }

  v38 = *(validity + 112);
  [objc_msgSend(objc_msgSend(a2 "objectAreaIn")];
  v37 = v38 * v39;
LABEL_17:
  v40 = *(validity + 108);
  v41 = *(validity + 104);
  v42 = *(validity + 116);
  [objc_msgSend(objc_msgSend(a2 "objectAreaIn")];
  if ((v42 * v43) <= v41)
  {
    v45 = *(validity + 116);
    [objc_msgSend(objc_msgSend(a2 "objectAreaIn")];
    v44 = v45 * v46;
  }

  else
  {
    v44 = *(validity + 104);
  }

  if (v44 >= v40)
  {
    v48 = *(validity + 104);
    v49 = *(validity + 116);
    [objc_msgSend(objc_msgSend(a2 "objectAreaIn")];
    if ((v49 * v50) <= v48)
    {
      v52 = *(validity + 116);
      [objc_msgSend(objc_msgSend(a2 "objectAreaIn")];
      v51 = v52 * v53;
      return v11 <= v51 && v10 <= v37;
    }

    v47 = *(validity + 104);
  }

  else
  {
    v47 = *(validity + 108);
  }

  v51 = v47;
  return v11 <= v51 && v10 <= v37;
}

- (uint64_t)updateTrackers:(void *)trackers currentTracker:
{
  if (self)
  {
    [(BWPortraitAutoSuggest *)self _pruneTrackerArrays:trackers];
    v6 = *(self + 120);
    if (a2 == -1)
    {
      [v6 addObject:trackers];
    }

    else
    {
      [v6 setObject:trackers atIndexedSubscript:a2];
    }
  }

  return 0;
}

- (uint64_t)updateAbsentTrackers:(uint64_t)trackers
{
  if (trackers)
  {
    v1 = [*(trackers + 120) count];
    if (v1 - 1 >= 0)
    {
      v2 = v1;
      do
      {
        --v2;
        [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_3_54(), "objectAtIndexedSubscript:"), "combinedTrackerID")}];
        if (([OUTLINED_FUNCTION_17() containsObject:?] & 1) == 0)
        {
          if ([objc_msgSend(OUTLINED_FUNCTION_3_54() "objectAtIndexedSubscript:"validObjectCounter"")] < 2)
          {
            v3 = 0;
          }

          else
          {
            v3 = [objc_msgSend(OUTLINED_FUNCTION_3_54() "objectAtIndexedSubscript:"validObjectCounter"")] - 1;
          }

          [objc_msgSend(OUTLINED_FUNCTION_3_54() "objectAtIndexedSubscript:{"setValidObjectCounter:", v3}")];
          if (![objc_msgSend(OUTLINED_FUNCTION_3_54() "objectAtIndexedSubscript:"validObjectCounter"")])
          {
            [OUTLINED_FUNCTION_3_54() removeObjectAtIndex:?];
          }
        }
      }

      while (v2 > 0);
    }
  }

  return 0;
}

- (unint64_t)_pruneTrackerArrays:(unint64_t)result
{
  if (result)
  {
    v3 = result;
    if ([objc_msgSend(a2 "objectAreaIn")] > *(result + 100))
    {
      [OUTLINED_FUNCTION_5_47() objectAreaIn];
      v4 = [objc_msgSend(OUTLINED_FUNCTION_4_47() "objectAreaIn")];
      OUTLINED_FUNCTION_1_64(v4);
      [OUTLINED_FUNCTION_8() arrayWithArray:?];
      [OUTLINED_FUNCTION_17() setObjectAreaIn:?];
    }

    if ([objc_msgSend(a2 "centersIn")] > *(v3 + 100))
    {
      [OUTLINED_FUNCTION_5_47() centersIn];
      v5 = [objc_msgSend(OUTLINED_FUNCTION_4_47() "centersIn")];
      OUTLINED_FUNCTION_1_64(v5);
      [OUTLINED_FUNCTION_8() arrayWithArray:?];
      [OUTLINED_FUNCTION_17() setCentersIn:?];
    }

    result = [objc_msgSend(a2 "centerVx")];
    if (result > *(v3 + 100))
    {
      [OUTLINED_FUNCTION_5_47() centerVx];
      v6 = [objc_msgSend(OUTLINED_FUNCTION_4_47() "centerVx")];
      OUTLINED_FUNCTION_1_64(v6);
      [OUTLINED_FUNCTION_8() arrayWithArray:?];
      [OUTLINED_FUNCTION_17() setCenterVx:?];
      [OUTLINED_FUNCTION_5_47() centerVy];
      v7 = [objc_msgSend(OUTLINED_FUNCTION_4_47() "centerVy")];
      OUTLINED_FUNCTION_1_64(v7);
      [OUTLINED_FUNCTION_8() arrayWithArray:?];
      [OUTLINED_FUNCTION_17() setCenterVy:?];
      [OUTLINED_FUNCTION_5_47() centerDx];
      v8 = [objc_msgSend(OUTLINED_FUNCTION_4_47() "centerDx")];
      OUTLINED_FUNCTION_1_64(v8);
      [OUTLINED_FUNCTION_8() arrayWithArray:?];
      [OUTLINED_FUNCTION_17() setCenterDx:?];
      [OUTLINED_FUNCTION_5_47() centerDy];
      v9 = [objc_msgSend(OUTLINED_FUNCTION_4_47() "centerDy")];
      OUTLINED_FUNCTION_1_64(v9);
      [OUTLINED_FUNCTION_8() arrayWithArray:?];
      v10 = OUTLINED_FUNCTION_17();

      return [v10 setCenterDy:?];
    }
  }

  return result;
}

@end