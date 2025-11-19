@interface VCPVideoGyroStabilizer
- (VCPVideoGyroStabilizer)initWithMetadata:(id)a3 sourceSize:(CGSize)a4 cropRect:(CGRect)a5 stillImageMetadata:(id)a6 timeRange:(id *)a7;
- (int)convertAnalysisResult;
- (void)storeAnalytics:(CGAffineTransform *)a3 isLivePhoto:(BOOL)a4;
@end

@implementation VCPVideoGyroStabilizer

- (VCPVideoGyroStabilizer)initWithMetadata:(id)a3 sourceSize:(CGSize)a4 cropRect:(CGRect)a5 stillImageMetadata:(id)a6 timeRange:(id *)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a4.height;
  v14 = a4.width;
  v17 = a3;
  v18 = a6;
  v33.receiver = self;
  v33.super_class = VCPVideoGyroStabilizer;
  v19 = [(VCPVideoStabilizer *)&v33 init];
  v20 = v19;
  if (v19)
  {
    [(VCPVideoStabilizer *)v19 setGyroStabilization:1];
    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    analysisDict = v20->_analysisDict;
    v20->_analysisDict = v21;

    v34.width = v14;
    v34.height = v13;
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v34);
    [(NSMutableDictionary *)v20->_analysisDict setObject:DictionaryRepresentation forKeyedSubscript:*MEMORY[0x1E69A8BA8]];

    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v24 = CGRectCreateDictionaryRepresentation(v35);
    [(NSMutableDictionary *)v20->_analysisDict setObject:v24 forKeyedSubscript:*MEMORY[0x1E69A8B98]];

    v20->_cropSize.width = width;
    v20->_cropSize.height = height;
    objc_storeStrong(&v20->_metadata, a3);
    -[VCPVideoStabilizer setIsPathConstraintsStabilization:](v20, "setIsPathConstraintsStabilization:", [v18 count] != 0);
    [(VCPVideoStabilizer *)v20 setStillImageMetadata:v18];
    [(VCPVideoStabilizer *)v20 setCropRect:x, y, width, height];
    [(VCPVideoStabilizer *)v20 setSourceSize:v14, v13];
    v25 = *&a7->var0.var3;
    v32[0] = *&a7->var0.var0;
    v32[1] = v25;
    v32[2] = *&a7->var1.var1;
    [(VCPVideoStabilizer *)v20 setTimeRange:v32];
    if ([(VCPVideoStabilizer *)v20 isPathConstraintsStabilization])
    {
      [(VCPVideoStabilizer *)v20 timeRange];
      if ((BYTE12(v32[0]) & 1) == 0 || ([(VCPVideoStabilizer *)v20 timeRange], (v31 & 1) == 0) || ([(VCPVideoStabilizer *)v20 timeRange], v30) || ([(VCPVideoStabilizer *)v20 timeRange], v26 = v20, v29 < 0))
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = v20;
    }

    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (int)convertAnalysisResult
{
  v120 = *MEMORY[0x1E69E9840];
  v102 = 0;
  v87 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  [(NSMutableDictionary *)self->_analysisDict setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A8B80]];
  [(NSMutableDictionary *)self->_analysisDict setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A8B88]];
  time = **&MEMORY[0x1E6960C68];
  v79 = CMTimeCopyAsDictionary(&time, 0);
  memset(&v101, 0, sizeof(v101));
  v3 = [(VCPVideoStabilizer *)self stillImageMetadata];
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 objectForKeyedSubscript:@"attributes"];
  v6 = [v5 objectForKeyedSubscript:@"MetaPresentationTimeResults"];
  CMTimeMakeFromDictionary(&v101, v6);

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = self->_metadata;
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v97 objects:v119 count:16];
  if (!v7)
  {
    goto LABEL_43;
  }

  v85 = *v98;
LABEL_3:
  v81 = v7;
  v8 = 0;
  while (1)
  {
    if (*v98 != v85)
    {
      objc_enumerationMutation(obj);
    }

    v9 = *(*(&v97 + 1) + 8 * v8);
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = [v9 objectForKeyedSubscript:@"attributes"];
    v12 = [v11 objectForKeyedSubscript:@"MetaPresentationTimeResults"];

    [(VCPVideoStabilizer *)self timeRange];
    if ((time.flags & 1) == 0)
    {
      break;
    }

    [(VCPVideoStabilizer *)self timeRange];
    if ((v95 & 1) == 0)
    {
      break;
    }

    [(VCPVideoStabilizer *)self timeRange];
    if (v93)
    {
      break;
    }

    [(VCPVideoStabilizer *)self timeRange];
    if (v118 < 0)
    {
      break;
    }

    if (!v12)
    {
      break;
    }

    [(VCPVideoStabilizer *)self timeRange];
    CMTimeMake(&v89, 2, 600);
    lhs = time1.start;
    rhs = v89;
    CMTimeSubtract(&v91, &lhs, &rhs);
    CMTimeMakeFromDictionary(&v88, v12);
    lhs = v91;
    rhs = v88;
    if (CMTimeCompare(&lhs, &rhs) <= 0)
    {
      break;
    }

LABEL_27:

    if (v81 == ++v8)
    {
      v7 = [(NSArray *)obj countByEnumeratingWithState:&v97 objects:v119 count:16];
      if (!v7)
      {
        goto LABEL_43;
      }

      goto LABEL_3;
    }
  }

  if ([(VCPVideoStabilizer *)self isPathConstraintsStabilization]|| ([(VCPVideoStabilizer *)self timeRange], (time.flags & 1) == 0) || ([(VCPVideoStabilizer *)self timeRange], (v95 & 1) == 0) || ([(VCPVideoStabilizer *)self timeRange], v93) || ([(VCPVideoStabilizer *)self timeRange], v118 < 0) || !v12)
  {
    if (!v12)
    {
      [v10 setObject:v79 forKeyedSubscript:*MEMORY[0x1E69A8B78]];
      goto LABEL_16;
    }
  }

  else
  {
    [(VCPVideoStabilizer *)self timeRange];
    CMTimeRangeGetEnd(&rhs, &time1);
    CMTimeMakeFromDictionary(&v91, v12);
    time1.start = rhs;
    lhs = v91;
    if (CMTimeCompare(&time1.start, &lhs) < 0)
    {
      goto LABEL_42;
    }
  }

  [v10 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69A8B78]];
LABEL_16:
  v13 = [v9 objectForKeyedSubscript:@"attributes"];
  v14 = [v13 objectForKeyedSubscript:@"MetaHomographyResults"];
  [v10 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69A8B70]];

  v15 = [v9 objectForKeyedSubscript:@"attributes"];
  v16 = [v15 objectForKeyedSubscript:@"MetaMotionBlurResults"];
  v17 = NSPointFromString(v16);

  v18 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69A8B70]];
  LOBYTE(v16) = [v18 count] == 9;

  if ((v16 & 1) == 0)
  {
    goto LABEL_39;
  }

  v19 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69A8B70]];
  if (!v19)
  {
    goto LABEL_39;
  }

  v20 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69A8B78]];
  v21 = v20 == 0;

  if (v21)
  {
    goto LABEL_39;
  }

  if (![(VCPVideoStabilizer *)self isPathConstraintsStabilization])
  {
    goto LABEL_26;
  }

  memset(&v92, 0, sizeof(v92));
  v22 = [v9 objectForKeyedSubscript:@"attributes"];
  v23 = [v22 objectForKeyedSubscript:@"MetaPresentationTimeResults"];
  CMTimeMakeFromDictionary(&v92, v23);

  time = v92;
  time2 = v101;
  if (CMTimeCompare(&time, &time2))
  {
    time = v92;
    time2 = v101;
    if (CMTimeCompare(&time, &time2) < 1 || (time = v92, time2 = v101, CMTimeSubtract(&v117, &time, &time2), CMTimeMake(&time1.start, 2, 600), time = v117, time2 = time1.start, (CMTimeCompare(&time, &time2) & 0x80000000) == 0))
    {
      time = v92;
      time2 = v101;
      if ((CMTimeCompare(&time, &time2) & 0x80000000) == 0 || (time = v101, time2 = v92, CMTimeSubtract(&lhs, &time, &time2), CMTimeMake(&rhs, 2, 600), time = lhs, time2 = rhs, (CMTimeCompare(&time, &time2) & 0x80000000) == 0))
      {
        time = v92;
        time2 = v101;
        if (CMTimeCompare(&time, &time2) < 1)
        {
LABEL_26:
          [v87 addObject:v10];
          v24 = [(VCPVideoStabilizer *)self motionBlurVector];
          v25 = [MEMORY[0x1E696AD98] numberWithDouble:v17.x];
          v105[0] = v25;
          v26 = [MEMORY[0x1E696AD98] numberWithDouble:v17.y];
          v105[1] = v26;
          v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:2];
          [v24 addObject:v27];

          goto LABEL_27;
        }

        v38 = [v87 count];
        if (!v38 || (-[VCPVideoStabilizer motionBlurVector](self, "motionBlurVector"), v39 = objc_claimAutoreleasedReturnValue(), v40 = v38 == [v39 count], v39, !v40))
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LOWORD(time.value) = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Inconsistent number of metadata", &time, 2u);
          }

LABEL_39:

          goto LABEL_40;
        }

        v41 = v38 - 1;
        v86 = [v87 objectAtIndexedSubscript:v38 - 1];
        v114 = @"privEMBVct";
        v42 = [(VCPVideoStabilizer *)self motionBlurVector];
        v43 = [v42 objectAtIndexedSubscript:v41];
        v115 = v43;
        v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];

        v113[0] = v86;
        v113[1] = v10;
        v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:2];
        v44 = *MEMORY[0x1E69A8B88];
        v111[0] = *MEMORY[0x1E69A8B80];
        v111[1] = v44;
        v112[0] = MEMORY[0x1E695E118];
        v112[1] = MEMORY[0x1E695E118];
        v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v112 forKeys:v111 count:2];
        time = v101;
        v45 = CMTimeCopyAsDictionary(&time, 0);
        v110 = v45;
        v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v110 count:1];

        memset(&time, 0, sizeof(time));
        v46 = [v86 objectForKeyedSubscript:*MEMORY[0x1E69A8B78]];
        CMTimeMakeFromDictionary(&time, v46);

        memset(&time2, 0, sizeof(time2));
        v47 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69A8B78]];
        CMTimeMakeFromDictionary(&time2, v47);

        v48 = ICFillHomographyGaps();
        v49 = 0;
        if ([v48 count])
        {
          v50 = [v48 objectAtIndexedSubscript:0];
          v75 = v48;
          [v87 addObject:v50];

          v51 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69A8B78]];
          v52 = NSPointFromString(v51);

          v108 = @"privEMBVct";
          v53 = [MEMORY[0x1E696AD98] numberWithDouble:v52.x];
          v107[0] = v53;
          v54 = [MEMORY[0x1E696AD98] numberWithDouble:v52.y];
          v107[1] = v54;
          v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:2];
          v109 = v55;
          v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1];

          v117 = time;
          time1.start = time2;
          v56 = alInterpolateMetadataForGap();
          v74 = v49;

          v57 = [v56 count];
          v77 = v57 != 0;
          if (v57)
          {
            v58 = [v56 objectAtIndexedSubscript:0];
            v59 = [v58 objectForKeyedSubscript:@"privEMBVct"];
            v60 = [v59 objectAtIndexedSubscript:0];
            [v60 floatValue];
            v62 = v61;
            v63 = [v56 objectAtIndexedSubscript:0];
            v64 = [v63 objectForKeyedSubscript:@"privEMBVct"];
            v65 = [v64 objectAtIndexedSubscript:1];
            [v65 floatValue];
            v67 = v66;

            v68 = [(VCPVideoStabilizer *)self motionBlurVector];
            v69 = [MEMORY[0x1E696AD98] numberWithDouble:v62];
            v106[0] = v69;
            v70 = [MEMORY[0x1E696AD98] numberWithDouble:v67];
            v106[1] = v70;
            v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:2];
            [v68 addObject:v71];
          }

          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v73 = [v74 description];
            LODWORD(v117.value) = 138412290;
            *(&v117.value + 4) = v73;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error interpolating metadata gaps: %@", &v117, 0xCu);
          }

          v49 = v74;
        }

        else
        {
          if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v77 = 0;
            goto LABEL_66;
          }

          v75 = v48;
          v72 = [v49 description];
          LODWORD(v117.value) = 138412290;
          *(&v117.value + 4) = v72;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error interpolating homography gaps: %@", &v117, 0xCu);

          v77 = 0;
        }

        v48 = v75;
LABEL_66:

        if (v77)
        {
          goto LABEL_44;
        }

LABEL_40:
        v28 = -18;
        goto LABEL_47;
      }
    }
  }

  v29 = [(VCPVideoStabilizer *)self stillImageMetadata];
  v30 = [v29 objectAtIndexedSubscript:0];
  v31 = [v30 objectForKeyedSubscript:@"attributes"];
  v32 = [v31 objectForKeyedSubscript:@"MetaPresentationTimeResults"];
  [v10 setObject:v32 forKeyedSubscript:*MEMORY[0x1E69A8B78]];

  [v87 addObject:v10];
  v33 = [(VCPVideoStabilizer *)self motionBlurVector];
  v34 = [MEMORY[0x1E696AD98] numberWithDouble:v17.x];
  v116[0] = v34;
  v35 = [MEMORY[0x1E696AD98] numberWithDouble:v17.y];
  v116[1] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:2];
  [v33 addObject:v36];

LABEL_42:
LABEL_43:

LABEL_44:
  [(VCPVideoStabilizer *)self setAnalysisResultRef:ICSynthesizeAnalysis()];
  if ([(VCPVideoStabilizer *)self analysisResultRef])
  {
    v28 = 0;
  }

  else
  {
    v28 = -18;
  }

LABEL_47:

  return v28;
}

- (void)storeAnalytics:(CGAffineTransform *)a3 isLivePhoto:(BOOL)a4
{
  v4 = a4;
  if ([(VCPVideoStabilizer *)self analysisResultRef])
  {
    v6 = MEMORY[0x1E69A8B48];
    if (!v4)
    {
      v6 = MEMORY[0x1E69A8B50];
    }

    v7 = *v6;
    [(VCPVideoStabilizer *)self analysisResultRef];
    ICStoreAnalyticsViaDodML();
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Gyro analytics stored via dodML", v8, 2u);
    }
  }
}

@end