@interface VCPFaceAnalyzer
- (VCPFaceAnalyzer)initWithContext:(id)a3;
- (id)_existingFacesFromAsset:(id)a3;
- (id)_processForwardCompatibleFaces:(id)a3 withExistingFaces:(id)a4 orientedWidth:(unint64_t)a5 orientedHeight:(unint64_t)a6 session:(id)a7;
- (int)_createBlurRequests:(id *)a3 andExposureRequests:(id *)a4 forFaceObservations:(id)a5;
- (int)_loadImageRequestHandler:(id *)a3 orientation:(unsigned int *)a4 bufferWidth:(int *)a5 bufferHeight:(int *)a6 withResource:(id)a7 resourceURL:(id)a8 andAsset:(id)a9;
- (int)_performAnalysis:(id *)a3 withRequestHandler:(id)a4 quickMode:(BOOL)a5 sourceWidth:(unint64_t)a6 sourceHeight:(unint64_t)a7;
- (int)_refineAnalysis:(id *)a3 requestHandler:(id)a4 forAsset:(id)a5 resource:(id)a6 isBestResource:(BOOL)a7 orientedWidth:(unint64_t)a8 orientedHeight:(unint64_t)a9;
- (int)analyzeAsset:(id)a3 withResource:(id)a4 resourceURL:(id)a5 isBestResource:(BOOL)a6 quickMode:(BOOL)a7 results:(id *)a8;
- (int)analyzeFaceQuality:(id *)a3 withAsset:(id)a4 andCancelBlock:(id)a5;
- (int)quickAnalyzeAsset:(id)a3 results:(id *)a4;
- (int)quickAnalyzeCVPixelBuffer:(__CVBuffer *)a3 results:(id *)a4;
- (int)updateMissingFaceprintForFaces:(id)a3 withAsset:(id)a4;
- (void)_checkAnalysisRequests:(id)a3 forTooSmallFaceObservations:(id)a4 withAnalysisResults:(id)a5;
@end

@implementation VCPFaceAnalyzer

- (VCPFaceAnalyzer)initWithContext:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VCPFaceAnalyzer;
  v5 = [(VCPFaceAnalyzer *)&v13 init];
  if (v5)
  {
    v5->_processingVersion = [v4 processingVersion];
    v6 = [VCPFaceMerger alloc];
    [v4 faceMergeFaceprintDistanceThreshold];
    v8 = [(VCPFaceMerger *)v6 initWithThreshold:v7];
    faceMerger = v5->_faceMerger;
    v5->_faceMerger = v8;

    v10 = [VCPObjectPool objectPoolWithAllocator:&__block_literal_global_50];
    sessionPool = v5->_sessionPool;
    v5->_sessionPool = v10;

    v5->_errorCode = 0;
    v5->_errorLine = 0;
  }

  return v5;
}

id __35__VCPFaceAnalyzer_initWithContext___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E6984688]);

  return v0;
}

- (int)_createBlurRequests:(id *)a3 andExposureRequests:(id *)a4 forFaceObservations:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = *v30;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        [*(*(&v29 + 1) + 8 * i) boundingBox];
        v37.origin.x = 0.0;
        v37.origin.y = 0.0;
        v37.size.width = 1.0;
        v37.size.height = 1.0;
        v36 = CGRectIntersection(v35, v37);
        x = v36.origin.x;
        y = v36.origin.y;
        width = v36.size.width;
        height = v36.size.height;
        v28 = 0;
        v16 = [VCPFaceUtils configureVNRequest:&v28 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
        v17 = v28;
        v18 = v17;
        if (v16)
        {
          goto LABEL_12;
        }

        [v17 setBlurDeterminationMethod:1];
        [v18 setMaximumIntermediateSideLength:128];
        [v18 setRegionOfInterest:{x, y, width, height}];
        [v7 addObject:v18];
        v27 = 0;
        v16 = [VCPFaceUtils configureVNRequest:&v27 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
        v19 = v27;
        v20 = v19;
        if (v16)
        {

LABEL_12:
          goto LABEL_13;
        }

        [v19 setRegionOfInterest:{x, y, width, height}];
        [v8 addObject:v20];
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v21 = v7;
  *a3 = v7;
  v22 = v8;
  v16 = 0;
  *a4 = v8;
LABEL_13:

  return v16;
}

- (void)_checkAnalysisRequests:(id)a3 forTooSmallFaceObservations:(id)a4 withAnalysisResults:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v17 = a5;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = *v20;
    v11 = *MEMORY[0x1E69849E8];
    v12 = *MEMORY[0x1E69849F0];
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [*(*(&v19 + 1) + 8 * v13) warnings];
        v15 = [v14 objectForKeyedSubscript:v11];
        if ([v15 BOOLValue])
        {
          [v17 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ImageTooSmall"];
        }

        v16 = [v14 objectForKeyedSubscript:v12];
        if (v16)
        {
          [v8 addObjectsFromArray:v16];
        }

        ++v13;
      }

      while (v9 != v13);
      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }
}

- (int)_performAnalysis:(id *)a3 withRequestHandler:(id)a4 quickMode:(BOOL)a5 sourceWidth:(unint64_t)a6 sourceHeight:(unint64_t)a7
{
  v197 = *MEMORY[0x1E69E9840];
  v160 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v188 = 0;
  v9 = [VCPFaceUtils configureVNRequest:&v188 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
  v162 = v188;
  if (!v9)
  {
    if (self->_processingVersion == 11)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v11 = v8;
        v12 = MEMORY[0x1E69E9C10];
        v13 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer] Set precicion recall threshold to 0.96", buf, 2u);
        }

        v8 = v11;
      }

      LODWORD(v10) = 1064682127;
      [v162 setPrecisionRecallThreshold:v10];
    }

    [v8 addObject:v162];
    if (a5)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v187 = 0;
      v9 = [VCPFaceUtils configureVNRequest:&v187 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
      v29 = v187;
      v159 = v29;
      if (v9)
      {
        v157 = 0;
        v158 = 0;
        goto LABEL_159;
      }

      [v8 addObject:v29];
      v186 = 0;
      v9 = [VCPFaceUtils configureVNRequest:&v186 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
      v31 = v186;
      v158 = v31;
      if (v9)
      {
        v157 = 0;
        goto LABEL_159;
      }

      [v8 addObject:v31];
      v185 = 0;
      v9 = [VCPFaceUtils configureVNRequest:&v185 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
      v32 = v185;
      v14 = v32;
      if (v9)
      {
        v157 = v32;
        goto LABEL_159;
      }

      v15 = v158;
      v16 = v159;
      [v8 addObject:v32];
    }

    v157 = v14;
    v158 = v15;
    v159 = v16;
    v152 = v8;
    v17 = VCPSignPostLog();
    v18 = os_signpost_id_generate(v17);

    v19 = VCPSignPostLog();
    v20 = v19;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "VCPFaceAnalyzerImageRequestHandlerPerformDetectionRequests", "", buf, 2u);
    }

    v184 = 0;
    v21 = [v160 performRequests:v152 error:&v184];
    type = COERCE_DOUBLE(v184);
    v22 = VCPSignPostLog();
    v23 = v22;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v23, OS_SIGNPOST_INTERVAL_END, v18, "VCPFaceAnalyzerImageRequestHandlerPerformDetectionRequests", "", buf, 2u);
    }

    if ((v21 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [*&type description];
        v30 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412290;
        v191 = v30;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] Failed to perform detector requests - %@", buf, 0xCu);
      }

      v9 = -18;
      goto LABEL_158;
    }

    v149 = [MEMORY[0x1E695DF90] dictionary];
    v24 = [v162 results];
    if (![v24 count])
    {
      v25 = [v159 results];
      if (![v25 count])
      {
        v26 = [v158 results];
        if (![v26 count])
        {
          v58 = [v14 results];
          v59 = [v58 count] == 0;

          if (v59)
          {
            v60 = v149;
            v9 = 0;
            *a3 = v149;
LABEL_157:

LABEL_158:
            v8 = v152;
            goto LABEL_159;
          }

LABEL_24:
          v150 = [MEMORY[0x1E695DF70] array];
          v27 = [v162 results];
          v28 = [v27 count] == 0;

          if (v28)
          {
            v151 = 0;
          }

          else
          {
            v183 = 0;
            v9 = [VCPFaceUtils configureVNRequest:&v183 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
            v151 = v183;
            if (v9)
            {
              v148 = 0;
LABEL_54:
              v144 = 0;
              v145 = 0;
              v143 = 0;
              v146 = 0;
              v147 = 0;
LABEL_156:

              goto LABEL_157;
            }

            if ([objc_opt_class() _faceprintFastMode])
            {
              [v151 setDetectionLevel:2];
            }

            v33 = [v162 results];
            [v151 setInputFaceObservations:v33];

            [v150 addObject:v151];
          }

          if (a5)
          {
            v147 = 0;
            v148 = 0;
            v144 = 0;
            v145 = 0;
            v143 = 0;
            v146 = 0;
            goto LABEL_43;
          }

          v42 = [v162 results];
          v43 = [v42 count] == 0;

          if (v43)
          {
            v45 = 0;
            v46 = 0;
            v47 = 0;
            v48 = 0;
          }

          else
          {
            v182 = 0;
            v9 = [VCPFaceUtils configureVNRequest:&v182 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
            v148 = v182;
            if (v9)
            {
              goto LABEL_54;
            }

            v57 = [v162 results];
            [v148 setInputFaceObservations:v57];

            [v150 addObject:v148];
            v181 = 0;
            v9 = [VCPFaceUtils configureVNRequest:&v181 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
            v147 = v181;
            if (v9)
            {
              v144 = 0;
              v145 = 0;
              v143 = 0;
              v146 = 0;
              goto LABEL_156;
            }

            v92 = [v162 results];
            [v147 setInputFaceObservations:v92];

            [v150 addObject:v147];
            v180 = 0;
            v9 = [VCPFaceUtils configureVNRequest:&v180 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
            v146 = v180;
            if (v9)
            {
              v144 = 0;
              v145 = 0;
              goto LABEL_162;
            }

            v131 = [v162 results];
            [v146 setInputFaceObservations:v131];

            [v150 addObject:v146];
            v179 = 0;
            v9 = [VCPFaceUtils configureVNRequest:&v179 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
            v144 = v179;
            if (v9)
            {
              v145 = 0;
              goto LABEL_162;
            }

            v132 = [v162 results];
            [v144 setInputFaceObservations:v132];

            v46 = v144;
            v47 = v146;
            v48 = v147;
            v45 = v148;
            [v150 addObject:v144];
          }

          v49 = [v159 results];
          v147 = v48;
          v148 = v45;
          v144 = v46;
          v146 = v47;
          v50 = [v49 count] == 0;

          if (v50)
          {
            v52 = 0;
          }

          else
          {
            v178 = 0;
            v9 = [VCPFaceUtils configureVNRequest:&v178 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
            v145 = v178;
            if (v9)
            {
LABEL_162:
              v143 = 0;
              goto LABEL_156;
            }

            v51 = [v159 results];
            [v145 setInputDetectedObjectObservations:v51];

            v52 = v145;
            [v150 addObject:v145];
          }

          v145 = v52;
          v61 = [MEMORY[0x1E695DF70] array];
          v62 = [v157 results];
          v63 = [v62 count] == 0;

          if (!v63)
          {
            v64 = [v157 results];
            [v61 addObjectsFromArray:v64];
          }

          v65 = [v158 results];
          v66 = [v65 count] == 0;

          if (!v66)
          {
            v67 = [v158 results];
            [v61 addObjectsFromArray:v67];
          }

          if ([v61 count])
          {
            v177 = 0;
            v9 = [VCPFaceUtils configureVNRequest:&v177 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
            v68 = v177;
            if (v9)
            {
              v143 = v68;

              goto LABEL_156;
            }

            v91 = v68;
            [v68 setInputDetectedObjectObservations:v61];
            [v150 addObject:v91];
          }

          else
          {
            v91 = 0;
          }

          v143 = v91;

LABEL_43:
          v34 = VCPSignPostLog();
          v35 = os_signpost_id_generate(v34);

          v36 = VCPSignPostLog();
          v37 = v36;
          if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v37, OS_SIGNPOST_INTERVAL_BEGIN, v35, "VCPFaceAnalyzerImageRequestHandlerPerformAdditionalRequests", "", buf, 2u);
          }

          v176 = type;
          v38 = [v160 performRequests:v150 error:&v176];
          v141 = COERCE_DOUBLE(*&v176);

          v39 = VCPSignPostLog();
          v40 = v39;
          if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v40, OS_SIGNPOST_INTERVAL_END, v35, "VCPFaceAnalyzerImageRequestHandlerPerformAdditionalRequests", "", buf, 2u);
          }

          if ((v38 & 1) == 0)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              [*&v141 description];
              v44 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 138412290;
              v191 = v44;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] Failed to perform additional requests - %@", buf, 0xCu);
            }

            v9 = -18;
            goto LABEL_155;
          }

          v137 = [MEMORY[0x1E695DF70] array];
          [v137 addObjectsFromArray:v152];
          [v137 addObjectsFromArray:v150];
          v138 = [MEMORY[0x1E695DFA8] set];
          [VCPFaceAnalyzer _checkAnalysisRequests:"_checkAnalysisRequests:forTooSmallFaceObservations:withAnalysisResults:" forTooSmallFaceObservations:v137 withAnalysisResults:?];
          if (a5)
          {
            v41 = 0;
            v140 = 0;
          }

          else
          {
            v53 = VCPSignPostLog();
            spid = os_signpost_id_generate(v53);

            v54 = VCPSignPostLog();
            v55 = v54;
            if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v55, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPFaceAnalyzerBlurExposureAnalysis", "", buf, 2u);
            }

            v174 = 0;
            v175 = 0;
            v56 = [v162 results];
            v9 = [(VCPFaceAnalyzer *)self _createBlurRequests:&v175 andExposureRequests:&v174 forFaceObservations:v56];
            v139 = v175;
            v136 = v174;

            if (v9)
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] Failed to create blur/exposure request", buf, 2u);
              }

              v41 = v136;
              goto LABEL_154;
            }

            v173 = v141;
            v69 = [v160 performRequests:v139 error:&v173];
            v70 = COERCE_DOUBLE(*&v173);

            v142 = v70;
            if (v69)
            {
              [(VCPFaceAnalyzer *)self _checkAnalysisRequests:v139 forTooSmallFaceObservations:v138 withAnalysisResults:v149];
              v71 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v139, "count")}];
              v171 = 0u;
              v172 = 0u;
              v169 = 0u;
              v170 = 0u;
              v72 = v139;
              v73 = [v72 countByEnumeratingWithState:&v169 objects:v196 count:16];
              if (v73)
              {
                v74 = *v170;
                v75 = MEMORY[0x1E69E9C10];
                do
                {
                  for (i = 0; i != v73; ++i)
                  {
                    if (*v170 != v74)
                    {
                      objc_enumerationMutation(v72);
                    }

                    v77 = [*(*(&v169 + 1) + 8 * i) results];
                    v78 = [v77 firstObject];

                    if (v78)
                    {
                      v79 = [v78 blurScore];
                      [v79 floatValue];
                      if (v80 < 1.0)
                      {
                        v81 = v80;
                      }

                      else
                      {
                        v81 = 1.0;
                      }

                      if (v80 <= 0.0)
                      {
                        v82 = 0.0;
                      }

                      else
                      {
                        v82 = v81;
                      }

                      v83 = [v78 blurScore];
                      [v83 floatValue];
                      v85 = v82 != v84;

                      if (v85 && MediaAnalysisLogLevel() >= 4)
                      {
                        v87 = v75;
                        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                        {
                          v88 = [v78 blurScore];
                          [v88 floatValue];
                          *buf = 134218496;
                          v191 = v89;
                          v192 = 2048;
                          v193 = 0;
                          v194 = 2048;
                          v195 = 0x3FF0000000000000;
                          _os_log_impl(&dword_1C9B70000, v75, OS_LOG_TYPE_DEFAULT, "[FaceAnalyzer] Blur score %f out of bound [%f, %f]", buf, 0x20u);
                        }
                      }

                      *&v86 = v82;
                      v90 = [MEMORY[0x1E696AD98] numberWithFloat:v86];
                      [v71 addObject:v90];
                    }

                    else
                    {
                      [v71 addObject:&unk_1F49BB158];
                    }
                  }

                  v73 = [v72 countByEnumeratingWithState:&v169 objects:v196 count:16];
                }

                while (v73);
              }

              v140 = v71;
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v191 = v70;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] Failed to perform blur requests - %@", buf, 0xCu);
              }

              v140 = 0;
            }

            v168 = v142;
            v93 = [v160 performRequests:v136 error:&v168];
            v134 = COERCE_DOUBLE(*&v168);

            if (v93)
            {
              [(VCPFaceAnalyzer *)self _checkAnalysisRequests:v136 forTooSmallFaceObservations:v138 withAnalysisResults:v149];
              v94 = [v136 count];
              v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v94];
              v166 = 0u;
              v167 = 0u;
              v164 = 0u;
              v165 = 0u;
              v95 = v136;
              v96 = [v95 countByEnumeratingWithState:&v164 objects:v189 count:16];
              if (v96)
              {
                v97 = *v165;
                v98 = MEMORY[0x1E69E9C10];
                do
                {
                  for (j = 0; j != v96; ++j)
                  {
                    if (*v165 != v97)
                    {
                      objc_enumerationMutation(v95);
                    }

                    v100 = [*(*(&v164 + 1) + 8 * j) results];
                    v101 = [v100 firstObject];

                    if (v101)
                    {
                      v102 = [v101 exposureScore];
                      [v102 floatValue];
                      if (v103 < 1.0)
                      {
                        v104 = v103;
                      }

                      else
                      {
                        v104 = 1.0;
                      }

                      if (v103 <= 0.0)
                      {
                        v105 = 0.0;
                      }

                      else
                      {
                        v105 = v104;
                      }

                      v106 = [v101 exposureScore];
                      [v106 floatValue];
                      v108 = v105 != v107;

                      if (v108 && MediaAnalysisLogLevel() >= 4)
                      {
                        v110 = v98;
                        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                        {
                          v111 = [v101 exposureScore];
                          [v111 floatValue];
                          *buf = 134218496;
                          v191 = v112;
                          v192 = 2048;
                          v193 = 0;
                          v194 = 2048;
                          v195 = 0x3FF0000000000000;
                          _os_log_impl(&dword_1C9B70000, v98, OS_LOG_TYPE_DEFAULT, "[FaceAnalyzer] Exposure score %f out of bound [%f, %f]", buf, 0x20u);
                        }
                      }

                      *&v109 = v105;
                      v113 = [MEMORY[0x1E696AD98] numberWithFloat:v109];
                      [v41 addObject:v113];
                    }

                    else
                    {
                      [v41 addObject:&unk_1F49BB168];
                    }
                  }

                  v96 = [v95 countByEnumeratingWithState:&v164 objects:v189 count:16];
                }

                while (v96);
              }
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v191 = v134;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] Failed to perform exposure requests - %@", buf, 0xCu);
              }

              v41 = 0;
            }

            v114 = VCPSignPostLog();
            v115 = v114;
            if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v114))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v115, OS_SIGNPOST_INTERVAL_END, spid, "VCPFaceAnalyzerBlurExposureAnalysis", "", buf, 2u);
            }

            v141 = v134;
          }

          v116 = VCPSignPostLog();
          v117 = os_signpost_id_generate(v116);

          v118 = VCPSignPostLog();
          v119 = v118;
          if (v117 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v118))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v119, OS_SIGNPOST_INTERVAL_BEGIN, v117, "VCPFaceAnalyzerVCPFaceCreation", "", buf, 2u);
          }

          v120 = [v162 results];
          v121 = [v159 results];
          v122 = [v158 results];
          v123 = [v157 results];
          processingVersion = self->_processingVersion;
          v163 = 0;
          LODWORD(v133) = processingVersion;
          v125 = [VCPPhotosFace facesFromFaceObservations:v120 humanObservations:v121 animalHeadObservations:v122 animalBodyObservations:v123 sourceWidth:a6 sourceHeight:a7 visionRequests:v137 blurScorePerFace:v140 exposureScorePerFace:v41 tooSmallFaceObservations:v138 processingVersion:v133 animalResults:&v163];
          v126 = v163;
          [v149 setObject:v125 forKeyedSubscript:@"FaceResults"];

          [v149 setObject:v126 forKeyedSubscript:@"VNAnimalObservationResults"];
          v127 = VCPSignPostLog();
          v128 = v127;
          if (v117 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v127))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v128, OS_SIGNPOST_INTERVAL_END, v117, "VCPFaceAnalyzerVCPFaceCreation", "", buf, 2u);
          }

          v129 = v149;
          *a3 = v149;

          v9 = 0;
          v139 = v140;
LABEL_154:

LABEL_155:
          type = v141;
          goto LABEL_156;
        }
      }
    }

    goto LABEL_24;
  }

  v157 = 0;
  v158 = 0;
  v159 = 0;
LABEL_159:

  return v9;
}

- (id)_existingFacesFromAsset:(id)a3
{
  v62[3] = *MEMORY[0x1E69E9840];
  v41 = a3;
  v3 = [v41 photoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

  v39 = v4;
  [v4 setIncludeNonvisibleFaces:1];
  [v4 setIncludeTorsoAndFaceDetectionData:1];
  [v4 setIncludedDetectionTypes:&unk_1F49BEE18];
  v5 = *MEMORY[0x1E6978D70];
  v62[0] = *MEMORY[0x1E6978D80];
  v62[1] = v5;
  v62[2] = *MEMORY[0x1E6978D68];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:3];
  [v4 setFetchPropertySets:v6];

  v38 = [MEMORY[0x1E69787D0] fetchFacesInAsset:v41 options:v4];
  v7 = [MEMORY[0x1E695DF70] array];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v38;
  v8 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v8)
  {
    v9 = *v52;
    v10 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v52 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v51 + 1) + 8 * i);
        v13 = [VCPPhotosFace faceFromPHFace:v12 copyOption:1];
        if (v7)
        {
          [v7 addObject:v13];
        }

        else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v41 localIdentifier];
          v15 = [v12 localIdentifier];
          *buf = 138412546;
          v58 = v14;
          v59 = 2112;
          v60 = v15;
          _os_log_impl(&dword_1C9B70000, v10, OS_LOG_TYPE_DEFAULT, "[VCPFaceAnalyzer][%@] Failed to create VCPPhotosFace from PHFace %@", buf, 0x16u);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v8);
  }

  v16 = [v7 valueForKey:@"personLocalIdentifier"];
  v37 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_378];
  v40 = [v16 filteredArrayUsingPredicate:?];

  v17 = [MEMORY[0x1E695DF70] array];
  if ([v40 count])
  {
    v18 = [v41 photoLibrary];
    v19 = [v18 librarySpecificFetchOptions];

    v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(verifiedType = %d) OR (verifiedType = %d)", 1, 2];
    [v19 setPredicate:v20];

    [v19 setMinimumVerifiedFaceCount:1];
    [v39 setIncludedDetectionTypes:&unk_1F49BEE30];
    [MEMORY[0x1E6978978] fetchPersonsWithLocalIdentifiers:v40 options:v19];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v21 = v48 = 0u;
    v22 = [v21 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v22)
    {
      v23 = *v48;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v48 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = [*(*(&v47 + 1) + 8 * j) localIdentifier];
          [v17 addObject:v25];
        }

        v22 = [v21 countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v22);
    }
  }

  v26 = [MEMORY[0x1E695DF90] dictionary];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v27 = v7;
  v28 = [v27 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v28)
  {
    v29 = *v44;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v44 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v43 + 1) + 8 * k);
        v32 = [v31 personLocalIdentifier];
        if (v32 && (![v17 containsObject:v32] || objc_msgSend(v31, "nameSource") == 6))
        {
          [v31 setPersonLocalIdentifier:0];
        }

        v33 = [v31 localIdentifier];
        v34 = v33 == 0;

        if (!v34)
        {
          v35 = [v31 localIdentifier];
          [v26 setObject:v31 forKeyedSubscript:v35];
        }
      }

      v28 = [v27 countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v28);
  }

  return v26;
}

uint64_t __43__VCPFaceAnalyzer__existingFacesFromAsset___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E695DFB0] null];
  v4 = [v2 isEqual:v3];

  return v4 ^ 1u;
}

- (id)_processForwardCompatibleFaces:(id)a3 withExistingFaces:(id)a4 orientedWidth:(unint64_t)a5 orientedHeight:(unint64_t)a6 session:(id)a7
{
  v112 = *MEMORY[0x1E69E9840];
  v76 = a3;
  v84 = a4;
  v77 = a7;
  if (_os_feature_enabled_impl())
  {
    [v76 objectForKeyedSubscript:@"FacesToPersist"];
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    obj = v98 = 0u;
    v9 = [obj countByEnumeratingWithState:&v97 objects:v111 count:16];
    if (!v9)
    {
      goto LABEL_77;
    }

    v86 = *v98;
    while (1)
    {
      v10 = 0;
      v87 = v9;
      do
      {
        if (*v98 != v86)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v97 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = MEMORY[0x1E696AEC0];
        v14 = [v11 localIdentifier];
        v15 = [v13 stringWithFormat:@"[FaceAnalyzer][FC][%@]", v14];

        v16 = [v11 localIdentifier];
        LODWORD(v14) = v16 == 0;

        if (v14)
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            [v11 gist];
            v44 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412546;
            v102 = v15;
            v103 = 2112;
            v104 = v44;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Skipping new face %@", buf, 0x16u);
          }
        }

        else
        {
          if ([v11 detectionType] == 1)
          {
            v17 = [v11 localIdentifier];
            v88 = [v84 objectForKeyedSubscript:v17];

            v18 = [v88 imageprintWrapper];
            if (![v18 type])
            {
              v19 = [v88 imageprintWrapper];
              if ([v19 version] == 11)
              {
                v20 = [v88 imageprintWrapper];
                v21 = [v20 data];
                v22 = v21 == 0;

                if (!v22)
                {
                  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                  {
                    [v11 gist];
                    v23 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    *buf = 138412546;
                    v102 = v15;
                    v103 = 2112;
                    v104 = v23;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Processing forward-compabitle face %@", buf, 0x16u);
                  }

                  v24 = [v88 imageprintWrapper];
                  v25 = [v24 data];
                  v96 = 0;
                  v81 = [VCPVNImageprintWrapper generateVNImageprintWithType:0 archiveData:v25 andError:&v96];
                  v26 = v96;

                  v27 = [v11 imageprintWrapper];
                  v28 = [v27 data];
                  v95 = v26;
                  v83 = [VCPVNImageprintWrapper generateVNImageprintWithType:0 archiveData:v28 andError:&v95];
                  v29 = COERCE_DOUBLE(v95);

                  v30 = [v83 faceprint];
                  v31 = [v81 faceprint];
                  if (!v31 || ([v83 faceprint], v32 = objc_claimAutoreleasedReturnValue(), v33 = v32 == 0, v32, v31, v33))
                  {
                    v80 = v30;
                    v82 = v29;
                    goto LABEL_42;
                  }

                  v34 = VCPSignPostLog();
                  spid = os_signpost_id_generate(v34);

                  v35 = VCPSignPostLog();
                  v36 = v35;
                  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v36, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MADUpgradeFaceprint", "", buf, 2u);
                  }

                  v94 = 0.0;
                  v37 = [v81 faceprint];
                  v38 = [v83 faceprint];
                  v92 = v29;
                  v93 = v30;
                  v39 = VNUpgradeFaceprint();
                  v80 = v93;

                  v82 = COERCE_DOUBLE(*&v92);
                  if (v39)
                  {
                    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                    {
                      v40 = v94;
                      [v80 confidence];
                      *buf = 138412802;
                      v102 = v15;
                      v103 = 2048;
                      v104 = v40;
                      v105 = 2048;
                      v106 = v41;
                      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ FC faceprint sigma %.3f and confidence: %.3f", buf, 0x20u);
                    }

                    v42 = VCPSignPostLog();
                    v43 = v42;
                    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v43, OS_SIGNPOST_INTERVAL_END, spid, "MADUpgradeFaceprint", "", buf, 2u);
                    }

LABEL_42:
                    v54 = [v83 torsoprint];
                    v55 = [v81 torsoprint];
                    if (!v55 || ([v83 torsoprint], v56 = objc_claimAutoreleasedReturnValue(), v57 = v56 == 0, v56, v55, v57))
                    {
                      v64 = v54;
                      v65 = v82;
                      goto LABEL_56;
                    }

                    v58 = VCPSignPostLog();
                    spida = os_signpost_id_generate(v58);

                    v59 = VCPSignPostLog();
                    v60 = v59;
                    if (spida - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v60, OS_SIGNPOST_INTERVAL_BEGIN, spida, "MADUpgradeTorsoprint", "", buf, 2u);
                    }

                    v94 = 0.0;
                    v61 = [v81 torsoprint];
                    v62 = [v83 torsoprint];
                    v90 = v82;
                    v91 = v54;
                    v63 = VNUpgradeTorsoprint();
                    v64 = v91;

                    v65 = COERCE_DOUBLE(*&v90);
                    if (v63)
                    {
                      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                      {
                        v66 = v94;
                        [v64 confidence];
                        *buf = 138412802;
                        v102 = v15;
                        v103 = 2048;
                        v104 = v66;
                        v105 = 2048;
                        v106 = v67;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ FC torsoprint sigma %.3f and confidence: %.3f", buf, 0x20u);
                      }

                      v68 = VCPSignPostLog();
                      v69 = v68;
                      if (spida - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v68))
                      {
                        *buf = 0;
                        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v69, OS_SIGNPOST_INTERVAL_END, spida, "MADUpgradeTorsoprint", "", buf, 2u);
                      }

LABEL_56:
                      v70 = [objc_alloc(MEMORY[0x1E6984520]) initWithFaceprint:v80 torsoprint:v64];
                      v89 = v65;
                      v71 = [v70 serializeStateAndReturnError:&v89];
                      v72 = COERCE_DOUBLE(*&v89);

                      if (v71)
                      {
                        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                        {
                          [v11 gist];
                          v73 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                          *buf = 138412546;
                          v102 = v15;
                          v103 = 2112;
                          v104 = v73;
                          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Wrapping forward-compatible faceprint for face %@", buf, 0x16u);
                        }

                        v74 = [VCPVNImageprintWrapper wrapperWithImageprintType:0 version:14 andData:v71];
                        [v11 setImageprintWrapper:v74];

                        [v11 setVuObservationID:0];
                        [v11 setAlgorithmVersion:14];
                      }

                      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v102 = v15;
                        v103 = 2112;
                        v104 = v72;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Unable to serialize forward-compatible faceTorsoprint - %@; ignore", buf, 0x16u);
                      }

                      v65 = v72;
                    }

                    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v102 = v15;
                      v103 = 2112;
                      v104 = v65;
                      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to upgrade torsoprint - %@; skipping", buf, 0x16u);
                    }

                    v82 = v65;
                  }

                  else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v102 = v15;
                    v103 = 2112;
                    v104 = v82;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to upgrade faceprint - %@; skipping", buf, 0x16u);
                  }

LABEL_67:
                  goto LABEL_68;
                }

LABEL_36:
                if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  [v11 gist];
                  v46 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                  v47 = [v88 imageprintWrapper];
                  *&v48 = COERCE_DOUBLE([v47 type]);
                  v49 = [v88 imageprintWrapper];
                  v50 = [v49 version];
                  v51 = [v88 imageprintWrapper];
                  v52 = [v51 data];
                  *buf = 138413314;
                  v53 = &stru_1F496CB30;
                  if (!v52)
                  {
                    v53 = @"missing faceprint";
                  }

                  v102 = v15;
                  v103 = 2112;
                  v104 = v46;
                  v105 = 2048;
                  v106 = *&v48;
                  v107 = 1024;
                  v108 = v50;
                  v109 = 2112;
                  v110 = v53;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Skipping data incomplete face %@ %lu %d %@", buf, 0x30u);
                }

                goto LABEL_67;
              }
            }

            goto LABEL_36;
          }

          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            [v11 gist];
            v45 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412546;
            v102 = v15;
            v103 = 2112;
            v104 = v45;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Skipping non-human face %@", buf, 0x16u);
          }
        }

LABEL_68:

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v87 != v10);
      v9 = [obj countByEnumeratingWithState:&v97 objects:v111 count:16];
      if (!v9)
      {
LABEL_77:

        goto LABEL_81;
      }
    }
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer][FC] Feature is disabled; skip", buf, 2u);
  }

LABEL_81:

  return v76;
}

- (int)_refineAnalysis:(id *)a3 requestHandler:(id)a4 forAsset:(id)a5 resource:(id)a6 isBestResource:(BOOL)a7 orientedWidth:(unint64_t)a8 orientedHeight:(unint64_t)a9
{
  v71 = a7;
  v104 = *MEMORY[0x1E69E9840];
  v74 = a4;
  v77 = a5;
  v72 = a6;
  v12 = VCPSignPostLog();
  v13 = os_signpost_id_generate(v12);

  v14 = VCPSignPostLog();
  v15 = v14;
  spid = v13;
  v70 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VCPFaceAnalyzerVerifyAndMergeFaces", "", buf, 2u);
  }

  v79 = [*a3 mutableCopy];
  [v79 removeObjectForKey:@"FaceResults"];
  v75 = [*a3 objectForKeyedSubscript:@"FaceResults"];
  v73 = [(VCPFaceAnalyzer *)self _existingFacesFromAsset:v77];
  if ([v73 count])
  {
    v68 = [(VCPFaceAnalyzer *)self _existingFacesFromAsset:v77];
    faceMerger = self->_faceMerger;
    v17 = [v73 allValues];
    v18 = -[VCPFaceMerger mergeExistingFaces:andDetectedFaces:withRequestHandler:orientedWidth:orientedHeight:assetWidth:assetHeight:](faceMerger, "mergeExistingFaces:andDetectedFaces:withRequestHandler:orientedWidth:orientedHeight:assetWidth:assetHeight:", v17, v75, v74, a8, a9, [v77 pixelWidth], objc_msgSend(v77, "pixelHeight"));

    if ((_os_feature_enabled_impl() & 1) == 0 && [v72 type] == 102 && !v71)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v88 = a8;
        v89 = 2048;
        v90 = a9;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer][FC] Start processing resource %lu x %lu", buf, 0x16u);
      }

      v19 = [v74 session];
      v66 = [(VCPFaceAnalyzer *)self _processForwardCompatibleFaces:v18 withExistingFaces:v68 orientedWidth:a8 orientedHeight:a9 session:v19];

      v20 = [v79 objectForKeyedSubscript:?];
      v65 = [v20 BOOLValue];

      [v79 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"ImageTooSmall"];
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v21 = [v77 localIdentifier];
        v22 = v21;
        v23 = @"NO";
        if (v65)
        {
          v23 = @"YES";
        }

        *buf = 138412546;
        v88 = v21;
        v89 = 2112;
        v90 = v23;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer][FC][SmallFace][asset-%@] Vision image-too-small decision: %@", buf, 0x16u);
      }

      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      obj = [v66 objectForKeyedSubscript:@"FacesToPersist"];
      v24 = [obj countByEnumeratingWithState:&v81 objects:v103 count:16];
      if (v24)
      {
        v25 = *v82;
        if (a8 >= a9)
        {
          v26 = a9;
        }

        else
        {
          v26 = a8;
        }

        v27 = v26;
        v28 = MEMORY[0x1E69E9C10];
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v82 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v81 + 1) + 8 * i);
            v31 = MEMORY[0x1E696AEC0];
            v32 = [v30 localIdentifier];
            v33 = [v30 detectionType];
            v34 = @"Pet";
            if (v33 == 1)
            {
              v34 = @"Human";
            }

            v35 = [v31 stringWithFormat:@"[FaceAnalyzer][FC][SmallFace][%@][%@]", v32, v34];

            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v36 = [v30 imageprintWrapper];
              v37 = [v36 version];
              *buf = 138412546;
              v88 = v35;
              v89 = 1024;
              LODWORD(v90) = v37;
              _os_log_impl(&dword_1C9B70000, v28, OS_LOG_TYPE_DEBUG, "%@ Face faceprint version %d", buf, 0x12u);
            }

            [v30 size];
            v39 = v38;
            [v30 bodyWidth];
            v41 = v40;
            [v30 bodyHeight];
            if (v41 >= v42)
            {
              v41 = v42;
            }

            v43 = [objc_opt_class() _smallFaceWarningThreshold];
            v44 = v39 * v27;
            v45 = v41 * v27;
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              [v30 size];
              v47 = v46;
              [v30 bodyWidth];
              v49 = v48;
              [v30 bodyHeight];
              *buf = 138414082;
              v88 = v35;
              v89 = 2048;
              v90 = v47;
              v91 = 1024;
              v92 = v44;
              v93 = 1024;
              v94 = v43;
              v95 = 2048;
              v96 = v49;
              v97 = 2048;
              v98 = v50;
              v99 = 1024;
              v100 = v45;
              v101 = 1024;
              v102 = v43;
              _os_log_impl(&dword_1C9B70000, v28, OS_LOG_TYPE_DEBUG, "%@ face-%.3f|%dpx(%dpx), torso-%.3fx%.3f|%dpx(%dpx)", buf, 0x42u);
            }

            v51 = v43;
            v52 = v44 != 0.0 && v44 < v51;
            if (v52 || (v45 != 0.0 ? (v53 = v45 < v51) : (v53 = 0), v53))
            {
              [v79 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ImageTooSmall"];
              [v30 setAlgorithmVersion:14];
            }
          }

          v24 = [obj countByEnumeratingWithState:&v81 objects:v103 count:16];
        }

        while (v24);
      }

      v54 = [v79 objectForKeyedSubscript:@"ImageTooSmall"];
      v55 = [v54 BOOLValue];

      if (v55)
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v56 = [v77 localIdentifier];
          *buf = 138412290;
          v88 = v56;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer][FC][SmallFace][asset-%@] Resource size is too small", buf, 0xCu);
        }
      }

      else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v57 = [v77 localIdentifier];
        *buf = 138412290;
        v88 = v57;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer][FC][SmallFace][asset-%@] Resource size is good", buf, 0xCu);
      }

      v58 = [v79 objectForKeyedSubscript:@"ImageTooSmall"];
      v59 = [v58 BOOLValue];

      if (v65 != v59 && MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v60 = [v77 localIdentifier];
        *buf = 138412290;
        v88 = v60;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer][FC][SmallFace][asset-%@] Invert decision", buf, 0xCu);
      }

      v18 = v66;
    }

    if (v18)
    {
      [v79 setObject:v18 forKeyedSubscript:@"FaceResults"];
    }
  }

  else if (v75)
  {
    v85 = @"FacesToPersist";
    v86 = v75;
    v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
    [v79 setObject:? forKeyedSubscript:?];
  }

  v61 = VCPSignPostLog();
  v62 = v61;
  if (v70 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v62, OS_SIGNPOST_INTERVAL_END, spid, "VCPFaceAnalyzerVerifyAndMergeFaces", "", buf, 2u);
  }

  if (v71)
  {
    [v79 removeObjectForKey:@"ImageTooSmall"];
  }

  v63 = v79;
  *a3 = v79;

  return 0;
}

- (int)_loadImageRequestHandler:(id *)a3 orientation:(unsigned int *)a4 bufferWidth:(int *)a5 bufferHeight:(int *)a6 withResource:(id)a7 resourceURL:(id)a8 andAsset:(id)a9
{
  v61 = *MEMORY[0x1E69E9840];
  v48 = a7;
  v49 = a8;
  v50 = a9;
  *a3 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  v15 = VCPSignPostLog();
  v16 = os_signpost_id_generate(v15);

  v17 = VCPSignPostLog();
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "VCPFaceProcessingFastPathDecodeAsset", "", buf, 2u);
  }

  if (![objc_opt_class() _downsampleBeforeFaceProcessing] || (objc_msgSend(v50, "vcp_isPano") & 1) != 0)
  {
    v19 = 0;
    goto LABEL_13;
  }

  v38 = [v48 pixelWidth];
  v39 = [v48 pixelHeight];
  v40 = v39;
  if (v38 && v39)
  {
    goto LABEL_49;
  }

  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    spida = [v50 localIdentifier];
    v41 = [v48 type];
    *buf = 138413058;
    v54 = spida;
    v55 = 1024;
    v56 = v41;
    v57 = 1024;
    v58 = v38;
    v59 = 1024;
    v60 = v40;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[FaceAnalyzer][%@] Resource (%d) has invalid dimensions (%dx%d); falling back to asset", buf, 0x1Eu);
  }

  v38 = [v50 pixelWidth];
  v42 = [v50 pixelHeight];
  v40 = v42;
  if (v38)
  {
    if (v42)
    {
LABEL_49:
      v19 = [v50 vcp_targetMajorDimensionForImageWithWidth:v38 height:v40 andMinPreferredMinorDimension:1210];
LABEL_13:
      v52 = 0;
      v20 = +[VCPImageManager sharedImageManager];
      pixelBuffer = [v20 pixelBufferWithFormat:875704422 andMaxDimension:v19 fromImageURL:v49 flushCache:0 orientation:&v52];

      v21 = VCPSignPostLog();
      v22 = v21;
      if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v22, OS_SIGNPOST_INTERVAL_END, v16, "VCPFaceProcessingFastPathDecodeAsset", "", buf, 2u);
      }

      if (pixelBuffer)
      {
        if (v52 - 9 > 0xFFFFFFF7)
        {
          v26 = VCPSignPostLog();
          spid = os_signpost_id_generate(v26);

          v27 = VCPSignPostLog();
          v28 = v27;
          if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPFaceAnalyzerLoadImageRequestHandler", "", buf, 2u);
          }

          v29 = objc_alloc(MEMORY[0x1E69845B8]);
          v30 = v52;
          v31 = [(VCPObjectPool *)self->_sessionPool getObject];
          v32 = [v31 object];
          *a3 = [v29 initWithCVPixelBuffer:pixelBuffer orientation:v30 options:MEMORY[0x1E695E0F8] session:v32];

          v33 = VCPSignPostLog();
          v34 = v33;
          if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v34, OS_SIGNPOST_INTERVAL_END, spid, "VCPFaceAnalyzerLoadImageRequestHandler", "", buf, 2u);
          }

          if (*a3)
          {
            Width = CVPixelBufferGetWidth(pixelBuffer);
            Height = CVPixelBufferGetHeight(pixelBuffer);
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              v37 = [v50 localIdentifier];
              *buf = 138413058;
              v54 = v37;
              v55 = 1024;
              v56 = Width;
              v57 = 1024;
              v58 = Height;
              v59 = 1024;
              v60 = v52;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer][%@] Loaded local resource (%dx%d orientation:%d)", buf, 0x1Eu);
            }

            if (a4)
            {
              *a4 = v52;
            }

            if (a5)
            {
              *a5 = Width;
            }

            v24 = 0;
            if (a6)
            {
              *a6 = Height;
            }
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v43 = [v50 localIdentifier];
              *buf = 138412290;
              v54 = v43;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][%@] Failed to create VNImageRequestHandler", buf, 0xCu);
            }

            v24 = -18;
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v23 = [v50 localIdentifier];
            *buf = 138412546;
            v54 = v23;
            v55 = 1024;
            v56 = v52;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][%@] Failed to decode orientation (%d)", buf, 0x12u);
          }

          v24 = -50;
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v25 = [v50 localIdentifier];
          *buf = 138412290;
          v54 = v25;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][%@] Failed to decode image", buf, 0xCu);
        }

        v24 = -23802;
      }

      CF<__CVBuffer *>::~CF(&pixelBuffer);
      goto LABEL_55;
    }
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v45 = [v50 localIdentifier];
    *buf = 138412802;
    v54 = v45;
    v55 = 1024;
    v56 = v38;
    v57 = 1024;
    v58 = v40;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][%@] Invalid dimensions (%dx%d)", buf, 0x18u);
  }

  v24 = -23802;
LABEL_55:

  return v24;
}

- (int)analyzeAsset:(id)a3 withResource:(id)a4 resourceURL:(id)a5 isBestResource:(BOOL)a6 quickMode:(BOOL)a7 results:(id *)a8
{
  v9 = a7;
  v10 = a6;
  v56 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  *a8 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v16 = [(VCPFaceAnalyzer *)self _loadImageRequestHandler:&v45 orientation:&v47 + 4 bufferWidth:&v47 bufferHeight:&v46 withResource:v15 resourceURL:a5 andAsset:v14];
  v17 = v45;
  if (v16)
  {
    if (!self->_errorCode)
    {
      v18 = xmmword_1C9F62C20;
LABEL_30:
      *&self->_errorCode = v18;
    }
  }

  else
  {
    v19 = VCPSignPostLog();
    v20 = os_signpost_id_generate(v19);

    v21 = VCPSignPostLog();
    v22 = v21;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "VCPFaceAnalyzerPerformAnalysis", "", buf, 2u);
    }

    v16 = -[VCPFaceAnalyzer _performAnalysis:withRequestHandler:quickMode:sourceWidth:sourceHeight:](self, "_performAnalysis:withRequestHandler:quickMode:sourceWidth:sourceHeight:", a8, v17, v9, [v14 pixelWidth], objc_msgSend(v14, "pixelHeight"));
    if (v16)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = [v14 localIdentifier];
        *buf = 138412290;
        v49 = v23;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][%@] Failed to analyze resource", buf, 0xCu);
      }

      if (!self->_errorCode)
      {
        v18 = xmmword_1C9F62C30;
        goto LABEL_30;
      }
    }

    else
    {
      v24 = VCPSignPostLog();
      v25 = v24;
      if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_END, v20, "VCPFaceAnalyzerPerformAnalysis", "", buf, 2u);
      }

      v26 = VCPSignPostLog();
      v27 = os_signpost_id_generate(v26);

      v28 = VCPSignPostLog();
      v29 = v28;
      if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v27, "VCPFaceAnalyzerRefineAnalysis", "", buf, 2u);
      }

      v30 = [*a8 objectForKeyedSubscript:@"FaceResults"];
      v44 = [v30 count];

      v31 = v46;
      if (HIDWORD(v47) <= 4)
      {
        v32 = v47;
      }

      else
      {
        v32 = v46;
      }

      if (HIDWORD(v47) > 4)
      {
        v31 = v47;
      }

      v16 = [(VCPFaceAnalyzer *)self _refineAnalysis:a8 requestHandler:v17 forAsset:v14 resource:v15 isBestResource:v10 orientedWidth:v32 orientedHeight:v31];
      if (v16)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v33 = [v14 localIdentifier];
          *buf = 138412290;
          v49 = v33;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][%@] Failed to refine analysis", buf, 0xCu);
        }

        if (!self->_errorCode)
        {
          v18 = xmmword_1C9F62C40;
          goto LABEL_30;
        }
      }

      else
      {
        v35 = VCPSignPostLog();
        v36 = v35;
        if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v36, OS_SIGNPOST_INTERVAL_END, v27, "VCPFaceAnalyzerRefineAnalysis", "", buf, 2u);
        }

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v37 = [v14 localIdentifier];
          v38 = [*a8 objectForKeyedSubscript:@"FaceResults"];
          v39 = [v38 objectForKeyedSubscript:@"FacesToPersist"];
          v40 = [v39 count];
          v41 = [*a8 objectForKeyedSubscript:@"FaceResults"];
          v42 = [v41 objectForKeyedSubscript:@"FacesToDelete"];
          v43 = [v42 count];
          *buf = 138413058;
          v49 = v37;
          v50 = 2048;
          v51 = v44;
          v52 = 2048;
          v53 = v40;
          v54 = 2048;
          v55 = v43;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer][%@] Face refine completed: detected %lu | persist: %lu | delete: %lu", buf, 0x2Au);
        }

        v16 = 0;
      }
    }
  }

  return v16;
}

- (int)quickAnalyzeAsset:(id)a3 results:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [VCPFaceUtils preferredResourcesForFaceProcessingWithAsset:v6];
  v8 = [VCPFaceUtils resourceForFaceProcessing:v7 allowStreaming:0];
  v9 = [v8 privateFileURL];
  if (v8 && ([MEMORY[0x1E696AC08] defaultManager], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "path"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "fileExistsAtPath:", v11), v11, v10, (v12 & 1) != 0))
  {
    v13 = [(VCPFaceAnalyzer *)self analyzeAsset:v6 withResource:v8 resourceURL:v9 isBestResource:[VCPFaceUtils isBestResourceForFaceProcessing:v7 fromResources:?], 1, a4];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = [v6 localIdentifier];
      v16 = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][%@] Missing local resource %@", &v16, 0x16u);
    }

    v13 = -18;
  }

  return v13;
}

- (int)quickAnalyzeCVPixelBuffer:(__CVBuffer *)a3 results:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = VCPSignPostLog();
  v8 = os_signpost_id_generate(v7);

  v9 = VCPSignPostLog();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v27[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VCPFaceAnalyzerLoadImageRequestHandlerPixelBuffer", "", v27, 2u);
  }

  v11 = objc_alloc(MEMORY[0x1E69845B8]);
  v12 = [(VCPObjectPool *)self->_sessionPool getObject];
  v13 = [v12 object];
  v14 = [v11 initWithCVPixelBuffer:a3 options:MEMORY[0x1E695E0F8] session:v13];

  v15 = VCPSignPostLog();
  v16 = v15;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(v27[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_END, v8, "VCPFaceAnalyzerLoadImageRequestHandlerPixelBuffer", "", v27, 2u);
  }

  if (v14)
  {
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v27[0] = 67109376;
      v27[1] = Width;
      v28 = 1024;
      v29 = Height;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer][PixelBuffer] Loaded pixelBuffer(%d x %d)", v27, 0xEu);
    }

    v19 = VCPSignPostLog();
    v20 = os_signpost_id_generate(v19);

    v21 = VCPSignPostLog();
    v22 = v21;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      LOWORD(v27[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "VCPFaceAnalyzerPerformAnalysisPixelBuffer", "", v27, 2u);
    }

    v23 = [(VCPFaceAnalyzer *)self _performAnalysis:a4 withRequestHandler:v14 quickMode:1 sourceWidth:Width sourceHeight:Height];
    if (v23)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v27[0]) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][PixelBuffer] Failed to analyze resource", v27, 2u);
      }
    }

    else
    {
      v24 = VCPSignPostLog();
      v25 = v24;
      if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        LOWORD(v27[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_END, v20, "VCPFaceAnalyzerPerformAnalysisPixelBuffer", "", v27, 2u);
      }

      v23 = 0;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27[0]) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][PixelBuffer] Failed to create VNImageRequestHandler", v27, 2u);
    }

    v23 = -18;
  }

  return v23;
}

- (int)updateMissingFaceprintForFaces:(id)a3 withAsset:(id)a4
{
  v135 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v92 = a4;
  v93 = v6;
  if ([v6 count])
  {
    v7 = objc_opt_class();
    v8 = VCPMAGetRevisionForVisionModel(v7, self->_processingVersion);
    v91 = self;
    v100 = [MEMORY[0x1E695DF90] dictionary];
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v113 objects:v134 count:16];
    if (v10)
    {
      v11 = *v114;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v114 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v113 + 1) + 8 * i);
          v14 = [v13 imageprintWrapper];
          v15 = v14 == 0;

          if (v15)
          {
            [v13 centerX];
            v17 = v16;
            [v13 centerY];
            v19 = v18;
            [v13 size];
            +[VCPFaceUtils faceRectFromNormalizedCenterX:normalizedCenterY:normalizedSize:sourceWidth:sourceHeight:](VCPFaceUtils, "faceRectFromNormalizedCenterX:normalizedCenterY:normalizedSize:sourceWidth:sourceHeight:", v17, v19, v20, [v13 sourceWidth], objc_msgSend(v13, "sourceHeight"));
            v22 = v21;
            v24 = v23;
            v26 = v25;
            v28 = v27;
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              [v13 centerX];
              v30 = v29;
              [v13 centerY];
              v32 = v31;
              [v13 size];
              *buf = 134219520;
              v121 = v30;
              v122 = 2048;
              v123 = v32;
              v124 = 2048;
              v125 = v33;
              v126 = 2048;
              v127 = v22;
              v128 = 2048;
              v129 = v24;
              v130 = 2048;
              v131 = v26;
              v132 = 2048;
              v133 = v28;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer] face (center-x:%.2f, center-y:%.2f, size:%.2f) -> boundingBox (x:%.2f, y:%.2f, width:%.2f, height:%.2f)", buf, 0x48u);
            }

            v34 = [MEMORY[0x1E6984518] observationWithRequestRevision:v8 boundingBox:{v22, v24, v26, v28}];
            if (v34)
            {
              v35 = [v13 localIdentifier];
              [v100 setObject:v34 forKeyedSubscript:v35];
            }

            else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              [v13 gist];
              v36 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 138412290;
              v121 = v36;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[FaceAnalyzer] Failed to generate VNFaceObservation from face %@", buf, 0xCu);
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v113 objects:v134 count:16];
      }

      while (v10);
    }

    if (![v100 count])
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer] All faces contain valid faceprint", buf, 2u);
      }

      v41 = 0;
      goto LABEL_98;
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v37 = COERCE_DOUBLE([v100 count]);
      *buf = 134217984;
      v121 = v37;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FaceAnalyzer] Updating %lu faces with missing faceprint", buf, 0xCu);
    }

    v89 = [VCPFaceUtils resourceForFaceProcessingWithAsset:v92 allowStreaming:0];
    v90 = [v89 privateFileURL];
    if (!v89 || ([MEMORY[0x1E696AC08] defaultManager], v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v90, "path"), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v38, "fileExistsAtPath:", v39), v39, v38, (v40 & 1) == 0))
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [v92 localIdentifier];
        v42 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412546;
        v121 = v42;
        v122 = 2112;
        v123 = v89;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][%@] Missing local resource %@", buf, 0x16u);
      }

      v41 = -18;
      goto LABEL_97;
    }

    v112 = 0;
    v41 = [(VCPFaceAnalyzer *)v91 _loadImageRequestHandler:&v112 orientation:0 bufferWidth:0 bufferHeight:0 withResource:v89 resourceURL:v90 andAsset:v92];
    v88 = v112;
    if (v41)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] Failed to create VNImageRequestHandler for face quality analysis", buf, 2u);
      }

      goto LABEL_96;
    }

    v85 = mach_absolute_time();
    v43 = VCPSignPostLog();
    spid = os_signpost_id_generate(v43);

    v44 = VCPSignPostLog();
    v45 = v44;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v45, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPFaceAnalyzerFillMissingFaceprint", "", buf, 2u);
    }

    v46 = objc_alloc_init(MEMORY[0x1E6984478]);
    v111 = v46;
    v41 = [VCPFaceUtils configureVNRequest:&v111 withClass:objc_opt_class() andProcessingVersion:v91->_processingVersion];
    v87 = v111;

    if (v41)
    {
LABEL_95:

LABEL_96:
LABEL_97:

LABEL_98:
      goto LABEL_99;
    }

    v47 = [v100 allValues];
    [v87 setInputFaceObservations:v47];

    v119 = v87;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v119 count:1];
    v110 = 0;
    v49 = [v88 performRequests:v48 error:&v110];
    v84 = v110;

    if (v49)
    {
      v95 = [v87 results];
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      obj = v9;
      v50 = [obj countByEnumeratingWithState:&v106 objects:v118 count:16];
      if (v50)
      {
        v96 = *v107;
        do
        {
          v97 = v50;
          for (j = 0; j != v97; ++j)
          {
            if (*v107 != v96)
            {
              objc_enumerationMutation(obj);
            }

            type = *(*(&v106 + 1) + 8 * j);
            context = objc_autoreleasePoolPush();
            v52 = [type localIdentifier];
            v53 = [v100 objectForKeyedSubscript:v52];

            if (v53)
            {
              v104 = 0u;
              v105 = 0u;
              v102 = 0u;
              v103 = 0u;
              v54 = v95;
              v55 = [v54 countByEnumeratingWithState:&v102 objects:v117 count:16];
              if (v55)
              {
                v56 = *v103;
                while (2)
                {
                  for (k = 0; k != v55; ++k)
                  {
                    if (*v103 != v56)
                    {
                      objc_enumerationMutation(v54);
                    }

                    v58 = *(*(&v102 + 1) + 8 * k);
                    v59 = [v53 uuid];
                    v60 = [v58 uuid];
                    v61 = [v59 isEqual:v60];

                    if (v61)
                    {
                      v63 = [v58 faceprint];
                      v64 = v63;
                      if (v63)
                      {
                        [v63 confidence];
                        if (v65 >= 0.2)
                        {
                          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                          {
                            [v64 confidence];
                            v71 = v70;
                            v72 = [v58 description];
                            [v58 faceJunkinessIndex];
                            *buf = 134218498;
                            v121 = v71;
                            v122 = 2112;
                            v123 = v72;
                            v124 = 2048;
                            v125 = v73;
                            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer] Accepting faceprint with confidence: %.3f %@ - junkinessIndex: %.3f", buf, 0x20u);
                          }

                          v74 = [objc_alloc(MEMORY[0x1E6984520]) initWithFaceprint:v64 torsoprint:0];
                          v101 = 0;
                          v75 = [v74 serializeStateAndReturnError:&v101];
                          v76 = COERCE_DOUBLE(v101);
                          if (v75)
                          {
                            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                            {
                              [type gist];
                              v77 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                              *buf = 138412290;
                              v121 = v77;
                              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FaceAnalyzer] Update faceprint for face %@", buf, 0xCu);
                            }

                            v78 = [VCPVNImageprintWrapper wrapperWithImageprintType:0 version:v91->_processingVersion andData:v75];
                            [type setImageprintWrapper:v78];

                            [type setVuObservationID:0];
                          }

                          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412290;
                            v121 = v76;
                            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] Unable to serialize faceTorsoprint - %@", buf, 0xCu);
                          }
                        }

                        else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                        {
                          [v64 confidence];
                          v67 = v66;
                          [v58 description];
                          v68 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                          [v58 faceJunkinessIndex];
                          *buf = 134218754;
                          v121 = v67;
                          v122 = 2048;
                          v123 = 0x3FC99999A0000000;
                          v124 = 2112;
                          v125 = v68;
                          v126 = 2048;
                          v127 = v69;
                          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FaceAnalyzer] faceprint.confidence is too low (%.3f < %.3f) %@ - junkinessIndex: %.3f", buf, 0x2Au);
                        }
                      }

                      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v121 = *&v58;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] No valid faceprint from observation %@", buf, 0xCu);
                      }

                      goto LABEL_81;
                    }
                  }

                  v55 = [v54 countByEnumeratingWithState:&v102 objects:v117 count:16];
                  if (v55)
                  {
                    continue;
                  }

                  break;
                }
              }

              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                [type gist];
                v62 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                *buf = 138412290;
                v121 = v62;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[FaceAnalyzer] Failed to get faceprint for face %@", buf, 0xCu);
              }
            }

LABEL_81:

            objc_autoreleasePoolPop(context);
          }

          v50 = [obj countByEnumeratingWithState:&v106 objects:v118 count:16];
        }

        while (v50);
      }

      v79 = VCPSignPostLog();
      v80 = v79;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v79))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v80, OS_SIGNPOST_INTERVAL_END, spid, "VCPFaceAnalyzerFillMissingFaceprint", "", buf, 2u);
      }

      if (v85)
      {
        mach_absolute_time();
        VCPPerformance_LogMeasurement();
      }

      v41 = 0;
    }

    else
    {
      v81 = v84;
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v41 = -18;
        goto LABEL_94;
      }

      [v84 description];
      v82 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v121 = v82;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] Faceprint VNImageRequestHandler::performRequests: %@", buf, 0xCu);

      v41 = -18;
    }

    v81 = v84;
LABEL_94:

    goto LABEL_95;
  }

  v41 = 0;
LABEL_99:

  return v41;
}

- (int)analyzeFaceQuality:(id *)a3 withAsset:(id)a4 andCancelBlock:(id)a5
{
  v127[2] = *MEMORY[0x1E69E9840];
  v95 = a4;
  v92 = a5;
  v6 = objc_opt_class();
  v7 = VCPMAGetRevisionForVisionModel(v6, self->_processingVersion);
  v8 = objc_opt_class();
  if (VCPMAVNRequestSupportRevision(v8, v7) & 1) != 0 && (v88 = VCPMAGetRevisionForMediaAnalysisType(0x1000000000), v9 = objc_opt_class(), (VCPMAVNRequestSupportRevision(v9, v88)))
  {
    if ([v95 vcp_quickFaceClassificationDone])
    {
      v10 = [v95 photoLibrary];
      v86 = [v10 librarySpecificFetchOptions];

      v11 = *MEMORY[0x1E6978D70];
      v127[0] = *MEMORY[0x1E6978D80];
      v127[1] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:2];
      [v86 setFetchPropertySets:v12];

      v96 = [MEMORY[0x1E69787D0] fetchFacesInAsset:v95 options:v86];
      if ([v96 count])
      {
        v91 = [MEMORY[0x1E695DF90] dictionary];
        v13 = 0;
        v14 = MEMORY[0x1E69E9C10];
        while (v13 < [v96 count])
        {
          v15 = [v96 objectAtIndexedSubscript:v13];
          [v15 centerX];
          v17 = v16;
          [v15 centerY];
          v19 = v18;
          [v15 size];
          +[VCPFaceUtils faceRectFromNormalizedCenterX:normalizedCenterY:normalizedSize:sourceWidth:sourceHeight:](VCPFaceUtils, "faceRectFromNormalizedCenterX:normalizedCenterY:normalizedSize:sourceWidth:sourceHeight:", v17, v19, v20, [v15 sourceWidth], objc_msgSend(v15, "sourceHeight"));
          v22 = v21;
          v24 = v23;
          v26 = v25;
          v28 = v27;
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            [v15 centerX];
            v30 = v29;
            [v15 centerY];
            v32 = v31;
            [v15 size];
            *buf = 134219520;
            v112 = v30;
            v113 = 2048;
            v114 = v32;
            v115 = 2048;
            v116 = v33;
            v117 = 2048;
            v118 = v22;
            v119 = 2048;
            v120 = v24;
            v121 = 2048;
            v122 = v26;
            v123 = 2048;
            v124 = v28;
            _os_log_impl(&dword_1C9B70000, v14, OS_LOG_TYPE_DEBUG, "[FaceAnalyzer] face (center-x:%.2f, center-y:%.2f, size:%.2f) -> boundingBox (x:%.2f, y:%.2f, width:%.2f, height:%.2f)", buf, 0x48u);
          }

          v34 = [MEMORY[0x1E6984518] observationWithRequestRevision:v7 boundingBox:{v22, v24, v26, v28}];
          if (v34)
          {
            v35 = [v15 localIdentifier];
            [v91 setObject:v34 forKeyedSubscript:v35];
          }

          ++v13;
        }

        if ([v91 count])
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            v39 = [v91 count];
            *buf = 134217984;
            v112 = v39;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FaceAnalyzer] Analyzing %lu face observations for face quality", buf, 0xCu);
          }

          v85 = [VCPFaceUtils resourceForFaceProcessingWithAsset:v95 allowStreaming:0];
          v87 = [v85 privateFileURL];
          if (v85 && ([MEMORY[0x1E696AC08] defaultManager], v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v87, "path"), v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v40, "fileExistsAtPath:", v41), v41, v40, (v42 & 1) != 0))
          {
            v103 = 0;
            v36 = [(VCPFaceAnalyzer *)self _loadImageRequestHandler:&v103 orientation:0 bufferWidth:0 bufferHeight:0 withResource:v85 resourceURL:v87 andAsset:v95];
            v43 = v103;
            if (v36)
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] Failed to create VNImageRequestHandler for face quality analysis", buf, 2u);
              }
            }

            else if (v92 && (v92[2]() & 1) != 0)
            {
              v36 = -128;
            }

            else
            {
              v82 = v43;
              v79 = mach_absolute_time();
              v48 = VCPSignPostLog();
              spid = os_signpost_id_generate(v48);

              v49 = VCPSignPostLog();
              v50 = v49;
              if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_1C9B70000, v50, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPFaceAnalyzerFaceQuality", "", buf, 2u);
              }

              v51 = objc_alloc_init(MEMORY[0x1E69844B0]);
              v102 = 0;
              v81 = v51;
              v52 = [v51 setRevision:v88 error:&v102];
              v53 = v102;
              if (v52)
              {
                [v51 setMetalContextPriority:1];
                [v51 setPreferBackgroundProcessing:1];
                if (DeviceHasANE())
                {
                  v54 = [MEMORY[0x1E6984608] defaultANEDevice];
                  [v51 setProcessingDevice:v54];
                }

                v55 = [v91 allValues];
                [v51 setInputFaceObservations:v55];

                v108 = v51;
                v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
                v101 = v53;
                v57 = [v82 performRequests:v56 error:&v101];
                v78 = v101;

                if (v57)
                {
                  v83 = [MEMORY[0x1E695DF90] dictionary];
                  v84 = [v81 results];
                  for (i = 0; i < [v96 count]; ++i)
                  {
                    v58 = objc_autoreleasePoolPush();
                    v89 = [v96 objectAtIndexedSubscript:i];
                    v59 = [v89 localIdentifier];
                    v60 = [v91 objectForKeyedSubscript:v59];

                    if (v60)
                    {
                      v99 = 0u;
                      v100 = 0u;
                      v97 = 0u;
                      v98 = 0u;
                      v61 = v84;
                      v62 = [v61 countByEnumeratingWithState:&v97 objects:v107 count:16];
                      if (v62)
                      {
                        v63 = *v98;
                        while (2)
                        {
                          for (j = 0; j != v62; ++j)
                          {
                            if (*v98 != v63)
                            {
                              objc_enumerationMutation(v61);
                            }

                            v65 = *(*(&v97 + 1) + 8 * j);
                            v66 = [v60 uuid];
                            v67 = [v65 uuid];
                            v68 = [v66 isEqual:v67];

                            if (v68)
                            {
                              v69 = [v65 faceCaptureQuality];
                              v70 = v69 == 0;

                              if (v70)
                              {
                                if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                                {
                                  v73 = [v95 localIdentifier];
                                  v74 = [v89 localIdentifier];
                                  *buf = 138412546;
                                  v112 = v73;
                                  v113 = 2112;
                                  v114 = v74;
                                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][%@][%@] No valid Face Quality score; skipping", buf, 0x16u);
                                }
                              }

                              else
                              {
                                v71 = [v65 faceCaptureQuality];
                                v72 = [v89 localIdentifier];
                                [v83 setObject:v71 forKeyedSubscript:v72];
                              }

                              goto LABEL_68;
                            }
                          }

                          v62 = [v61 countByEnumeratingWithState:&v97 objects:v107 count:16];
                          if (v62)
                          {
                            continue;
                          }

                          break;
                        }
                      }

LABEL_68:
                    }

                    objc_autoreleasePoolPop(v58);
                  }

                  v75 = VCPSignPostLog();
                  v76 = v75;
                  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v76, OS_SIGNPOST_INTERVAL_END, spid, "VCPFaceAnalyzerFaceQuality", "", buf, 2u);
                  }

                  if (v79)
                  {
                    mach_absolute_time();
                    VCPPerformance_LogMeasurement();
                  }

                  v104 = v83;
                  v105 = @"FaceQualityResults";
                  v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
                  v106 = v77;
                  *a3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];

                  v36 = 0;
                  v53 = v78;
                  v51 = v81;
                }

                else
                {
                  v51 = v81;
                  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v112 = v78;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] Failed to perform Face Quality request - %@", buf, 0xCu);
                  }

                  v36 = -18;
                  v53 = v78;
                }
              }

              else
              {
                if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  v112 = v88;
                  v113 = 2112;
                  v114 = v53;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] Failed to set Face Quality revision (%lu) - %@", buf, 0x16u);
                }

                v36 = -18;
              }

              v43 = v82;
            }
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v45 = [v95 localIdentifier];
              *buf = 138412546;
              v112 = v45;
              v113 = 2112;
              v114 = v85;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][%@] Missing local resource %@", buf, 0x16u);
            }

            v36 = -18;
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            v46 = [v95 localIdentifier];
            v47 = [v96 count];
            *buf = 138412546;
            v112 = v46;
            v113 = 2048;
            v114 = v47;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FaceAnalyzer][%@] No valid face observations from %lu faces; skip face quality analysis", buf, 0x16u);
          }

          v109 = @"FaceQualityResults";
          v110 = MEMORY[0x1E695E0F0];
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
          *a3 = v36 = 0;
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          v44 = [v95 localIdentifier];
          *buf = 138412290;
          v112 = v44;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FaceAnalyzer][%@] No face detected; skip face quality analysis", buf, 0xCu);
        }

        v125 = @"FaceQualityResults";
        v126 = MEMORY[0x1E695E0F0];
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
        *a3 = v36 = 0;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v38 = [v95 localIdentifier];
        *buf = 138412290;
        v112 = v38;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FaceAnalyzer][%@] No face detected; skip face quality analysis", buf, 0xCu);
      }

      v36 = 0;
    }
  }

  else
  {
    v36 = -50;
  }

  return v36;
}

@end