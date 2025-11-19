@interface VCPMovieAnalyzer
+ (BOOL)canAnalyzeUndegraded:(id)a3 withResources:(id)a4;
+ (BOOL)enableAudioVideoFusion;
+ (float)getMaximumHighlightInSec;
+ (id)analyzerWithVCPAsset:(id)a3 withExistingAnalysis:(id)a4 forAnalysisTypes:(unint64_t)a5 withOptions:(id)a6;
+ (void)getMaximumHighlightInSec;
- (VCPMovieAnalyzer)initWithPHAsset:(id)a3 existingAnalysis:(id)a4 analysisTypes:(unint64_t)a5 downloadedData:(id)a6;
- (VCPMovieAnalyzer)initWithPHAsset:(id)a3 withPausedAnalysis:(id)a4 forAnalysisTypes:(unint64_t)a5;
- (VCPMovieAnalyzer)initWithVCPAsset:(id)a3 withExistingAnalysis:(id)a4 forAnalysisTypes:(unint64_t)a5 withOptions:(id)a6;
- (id)analyzeAsset:(id)a3 streamed:(BOOL *)a4;
- (id)createDecoderForTrack:(id)a3 timerange:(id *)a4 forAnalysisTypes:(unint64_t)a5 decodedFrameRate:(float *)a6;
- (id)createVideoAnalyzerWithOrientation:(int)a3 preferredTransform:(CGAffineTransform *)a4 embeddings:(id)a5;
- (id)processExistingAnalysisForTimeRange:(id *)a3 analysisTypes:(unint64_t *)a4;
- (int)_waitForAsyncAudioResults;
- (int)analyzeVideoSegment:(id)a3 timerange:(id *)a4 forAnalysisTypes:(unint64_t)a5 cancel:(id)a6;
- (int)analyzeVideoTrack:(id)a3 start:(id *)a4 forAnalysisTypes:(unint64_t)a5 cancel:(id)a6;
- (int)generateAndPersistVideoThumbnailResources:(id)a3 forPHAsset:(id)a4 withResults:(id)a5 cancelBlock:(id)a6;
- (int)generateKeyFrameResource:(id)a3;
- (int)performMetadataAnalysisOnAsset:(id)a3 withCancelBlock:(id)a4;
- (int)postProcessAnimalResults:(id)a3;
- (int)postProcessAutoPlayable:(id)a3;
- (void)loadPropertiesForAsset:(id)a3;
@end

@implementation VCPMovieAnalyzer

+ (BOOL)canAnalyzeUndegraded:(id)a3 withResources:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 vcp_isVideoSlowmo])
  {
    v7 = [v6 vcp_hasLocalSlowmo:{objc_msgSend(v5, "vcp_hasAdjustments")}];
  }

  else
  {
    v7 = [v6 vcp_hasLocalMovie:{objc_msgSend(v5, "hasAdjustments")}];
  }

  v8 = v7;

  return v8;
}

+ (float)getMaximumHighlightInSec
{
  if ((atomic_load_explicit(&qword_1ED942830, memory_order_acquire) & 1) == 0)
  {
    +[VCPMovieAnalyzer getMaximumHighlightInSec];
  }

  return *&_MergedGlobals_2;
}

+ (BOOL)enableAudioVideoFusion
{
  if (_os_feature_enabled_impl())
  {
    v2 = 7;
  }

  else
  {
    v2 = 5;
  }

  {
    v4 = v2;
    {
      +[VCPMovieAnalyzer enableAudioVideoFusion]::enable = [VCPAudioVideoEmbeddingFuser supportFusionForVersion:v4];
    }
  }

  return +[VCPMovieAnalyzer enableAudioVideoFusion]::enable;
}

- (VCPMovieAnalyzer)initWithVCPAsset:(id)a3 withExistingAnalysis:(id)a4 forAnalysisTypes:(unint64_t)a5 withOptions:(id)a6
{
  v58 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v53.receiver = self;
  v53.super_class = VCPMovieAnalyzer;
  v14 = [(VCPMovieAnalyzer *)&v53 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_47;
  }

  v16 = [v11 modificationDate];
  v17 = v16 == 0;

  if (!v17)
  {
    *(v14 + 129) = 0;
    v14[131] = 1;
    [objc_opt_class() getMaximumHighlightInSec];
    *(v14 + 33) = v18;
    *(v14 + 18) = 0;
    *(v14 + 19) = 0;
    *(v14 + 17) = 1;
    *(v14 + 1) = a5;
    objc_storeStrong(v14 + 4, a3);
    v19 = [MEMORY[0x1E695DF90] dictionary];
    v20 = *(v14 + 2);
    *(v14 + 2) = v19;

    v21 = [MEMORY[0x1E695DF90] dictionary];
    v22 = *(v14 + 3);
    *(v14 + 3) = v21;

    v14[56] = 0;
    if (SocType() < 247)
    {
      v23 = 0;
    }

    else
    {
      v23 = [v11 isLivePhoto] ^ 1;
    }

    v14[40] = v23;
    objc_storeStrong(v14 + 9, a6);
    if (+[VCPMovieAnalyzer shouldProcessAudioAsync])
    {
      *(v14 + 26) = 0;
      v25 = [MEMORY[0x1E695DF90] dictionary];
      v26 = *(v14 + 14);
      *(v14 + 14) = v25;

      *(v14 + 15) = 0;
      v27 = dispatch_queue_create("com.apple.mediaanalysisd.audioanalysis", 0);
      v28 = *(v14 + 11);
      *(v14 + 11) = v27;

      v29 = dispatch_group_create();
      v30 = *(v14 + 12);
      *(v14 + 12) = v29;

      v14[128] = 0;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v31 = [*(v14 + 4) localIdentifier];
      v32 = MediaAnalysisTypeShortDescription(*(v14 + 1));
      *buf = 138412546;
      v55 = v31;
      v56 = 2112;
      v57 = v32;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][MovieAnalyzer] Initialize to process (%@)", buf, 0x16u);
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v33 = [*(v14 + 4) localIdentifier];
      v34 = [v12 vcp_analysisDescriptionWithResultDetails:1];
      *buf = 138412546;
      v55 = v33;
      v56 = 2112;
      v57 = v34;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][MovieAnalyzer] Initializing with existing analysis %@", buf, 0x16u);
    }

    if (v12)
    {
      v35 = [v12 vcp_version];
      v36 = 75;
      if (v35 == 75)
      {
        v37 = v12;
        v38 = *(v14 + 6);
        *(v14 + 6) = v37;
        v36 = v35;
        goto LABEL_22;
      }
    }

    else
    {
      v36 = 75;
    }

    v38 = *(v14 + 6);
    *(v14 + 6) = 0;
LABEL_22:

    [*(v14 + 2) vcp_setVersion:v36];
    v39 = *(v14 + 2);
    v40 = [v11 modificationDate];
    [v39 vcp_setDateModified:v40];

    [*(v14 + 2) vcp_setStatsFlags:0];
    v41 = *(v14 + 1);
    if ((v41 & 0x8000000000000) != 0)
    {
      *(v14 + 1) = v41 | 0x40064008;
      v42 = +[VCPVideoCNNAnalyzer isMUBackboneEnabled];
      v41 = *(v14 + 1);
      if (v42)
      {
        v41 |= 0x80000000000uLL;
        *(v14 + 1) = v41;
      }
    }

    if ((v41 & 0x40000) != 0)
    {
      v41 |= 0x40142089CuLL;
      *(v14 + 1) = v41;
    }

    if ((v41 & 0x80000000000) != 0)
    {
      v43 = [objc_opt_class() enableAudioVideoFusion];
      v41 = *(v14 + 1);
      if (v43)
      {
        v41 |= 0x800000000000uLL;
        *(v14 + 1) = v41;
      }
    }

    if ((v41 & 0x200000000000) != 0)
    {
      v44 = [v11 isLivePhoto];
      v45 = 0x40000000;
      if (!v44)
      {
        v45 = 0x80000000000;
      }

      v41 = *(v14 + 1) | v45;
      *(v14 + 1) = v41;
    }

    if ((v41 & 0x8000) != 0 && v14[40] == 1)
    {
      v41 |= 0x4088uLL;
      *(v14 + 1) = v41;
    }

    v46 = (v41 >> 7) & 0x80 | (v41 >> 20) & 0x20000 | v41;
    if ((v41 & 0x2000004000) != 0)
    {
      *(v14 + 1) = v46;
    }

    v47 = (v41 >> 7) & 0x80 | (v41 >> 20) & 0x20000 | v41;
    if ((v46 & 0x80) != 0)
    {
      v47 = v46 | 0x1018;
      *(v14 + 1) = v46 | 0x1018;
      if (v14[40] == 1)
      {
        v47 = v46 | 0x5018;
        *(v14 + 1) = v46 | 0x5018;
      }
    }

    if ((v47 & 0x4000004000) != 0)
    {
      *(v14 + 1) = (v47 << 28) & 0x40000000000 | (((v47 >> 38) & 1) << 40) | v47;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v48 = [*(v14 + 4) localIdentifier];
      v49 = MediaAnalysisTypeShortDescription(*(v14 + 1));
      *buf = 138412546;
      v55 = v48;
      v56 = 2112;
      v57 = v49;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][MovieAnalyzer] Initialized to process (%@)", buf, 0x16u);
    }

    goto LABEL_47;
  }

  if (!*(v14 + 18))
  {
    *(v14 + 9) = xmmword_1C9F62E20;
  }

  *(v14 + 17) = 3;
  v24 = *(v14 + 2);
  *(v14 + 2) = 0;

LABEL_47:
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v50 = [(VCPAsset *)v15->_asset localIdentifier];
    v51 = [(NSMutableDictionary *)v15->_analysis vcp_analysisDescriptionWithResultDetails:1];
    *buf = 138412546;
    v55 = v50;
    v56 = 2112;
    v57 = v51;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][MovieAnalyzer] Initialized analysis %@", buf, 0x16u);
  }

  return v15;
}

+ (id)analyzerWithVCPAsset:(id)a3 withExistingAnalysis:(id)a4 forAnalysisTypes:(unint64_t)a5 withOptions:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [objc_alloc(objc_opt_class()) initWithVCPAsset:v9 withExistingAnalysis:v10 forAnalysisTypes:a5 withOptions:v11];

  return v12;
}

- (VCPMovieAnalyzer)initWithPHAsset:(id)a3 withPausedAnalysis:(id)a4 forAnalysisTypes:(unint64_t)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  objc_storeStrong(&self->_phAsset, a3);
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v11 = [(VCPAsset *)self->_asset localIdentifier];
    v12 = [v10 vcp_analysisDescriptionWithResultDetails:1];
    v28 = 138412546;
    v29 = v11;
    v30 = 2112;
    v31 = v12;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][MovieAnalyzer][Pause] Initializing with paused analysis %@", &v28, 0x16u);
  }

  if (!v10)
  {
    goto LABEL_14;
  }

  if ([v10 vcp_version] != 75 || (objc_msgSend(v10, "vcp_dateModified"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "vcp_modificationDate"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToDate:", v14), v14, v13, (v15 & 1) == 0))
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v9 localIdentifier];
      v28 = 138412290;
      v29 = v25;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  [%@] Existing analysis outdated; dropping", &v28, 0xCu);
    }

LABEL_14:
    v26 = [VCPPhotosAsset assetWithPHAsset:v9];
    v17 = [(VCPMovieAnalyzer *)self initWithVCPAsset:v26 withExistingAnalysis:0 forAnalysisTypes:a5 withOptions:0];

    goto LABEL_15;
  }

  v16 = [VCPPhotosAsset assetWithPHAsset:v9];
  v17 = [(VCPMovieAnalyzer *)self initWithVCPAsset:v16 withExistingAnalysis:0 forAnalysisTypes:a5 withOptions:0];

  if (v17)
  {
    v18 = [v10 vcp_types];
    analysis = v17->_analysis;
    v17->_requestedAnalyses &= ~v18;
    -[NSMutableDictionary vcp_setTypes:](analysis, "vcp_setTypes:", [v10 vcp_types]);
    -[NSMutableDictionary vcp_setFlags:](v17->_analysis, "vcp_setFlags:", [v10 vcp_flags]);
    -[NSMutableDictionary vcp_setStatsFlags:](v17->_analysis, "vcp_setStatsFlags:", [v10 vcp_statsFlags]);
    v20 = v17->_analysis;
    v21 = [v10 vcp_results];
    [(NSMutableDictionary *)v20 vcp_addEntriesFromResults:v21];

    v22 = v17->_analysis;
    [v10 vcp_syncPoint];
    [(NSMutableDictionary *)v22 vcp_setSyncPoint:&v28];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v23 = [(VCPAsset *)v17->_asset localIdentifier];
      v24 = [(NSMutableDictionary *)v17->_analysis vcp_analysisDescriptionWithResultDetails:1];
      v28 = 138412546;
      v29 = v23;
      v30 = 2112;
      v31 = v24;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][MovieAnalyzer][Pause] Initialized analysis %@", &v28, 0x16u);
    }
  }

LABEL_15:

  return v17;
}

- (VCPMovieAnalyzer)initWithPHAsset:(id)a3 existingAnalysis:(id)a4 analysisTypes:(unint64_t)a5 downloadedData:(id)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  objc_storeStrong(&self->_phAsset, a3);
  if (!v12)
  {
LABEL_7:
    v21 = [VCPPhotosAsset assetWithPHAsset:v11 downloadedData:v13];
    v19 = [(VCPMovieAnalyzer *)self initWithVCPAsset:v21 withExistingAnalysis:0 forAnalysisTypes:a5 withOptions:0];

    goto LABEL_8;
  }

  v14 = [v12 vcp_dateModified];
  v15 = [v11 vcp_modificationDate];
  v16 = [v14 isEqualToDate:v15];

  if ((v16 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v11 localIdentifier];
      v23 = 138412290;
      v24 = v20;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  [%@] Existing analysis outdated; dropping", &v23, 0xCu);
    }

    goto LABEL_7;
  }

  v17 = [VCPPhotosAsset assetWithPHAsset:v11 downloadedData:v13];
  v18 = MediaAnalysisStripOutdatedAnalysis(v11, v12);
  v19 = [(VCPMovieAnalyzer *)self initWithVCPAsset:v17 withExistingAnalysis:v18 forAnalysisTypes:a5 withOptions:0];

LABEL_8:
  return v19;
}

- (void)loadPropertiesForAsset:(id)a3
{
  v18[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E69875D0];
  v17[0] = *MEMORY[0x1E69875A0];
  v17[1] = v4;
  v18[0] = &unk_1F49BEED8;
  v18[1] = &unk_1F49BEEF0;
  v17[2] = *MEMORY[0x1E6987608];
  v18[2] = &unk_1F49BEF08;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v6 = dispatch_group_create();
  v7 = dispatch_group_create();
  dispatch_group_enter(v6);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__VCPMovieAnalyzer_loadPropertiesForAsset___block_invoke;
  v12[3] = &unk_1E834D048;
  v13 = v5;
  v8 = v3;
  v14 = v8;
  v15 = v7;
  v16 = v6;
  v9 = v6;
  v10 = v7;
  v11 = v5;
  [v8 loadValuesAsynchronouslyForKeys:&unk_1F49BEF20 completionHandler:v12];
  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
}

void __43__VCPMovieAnalyzer_loadPropertiesForAsset___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__VCPMovieAnalyzer_loadPropertiesForAsset___block_invoke_2;
  v3[3] = &unk_1E834C610;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
  dispatch_group_leave(*(a1 + 56));
}

void __43__VCPMovieAnalyzer_loadPropertiesForAsset___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [*(a1 + 32) tracksWithMediaType:a2];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        dispatch_group_enter(*(a1 + 40));
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __43__VCPMovieAnalyzer_loadPropertiesForAsset___block_invoke_3;
        v11[3] = &unk_1E834BDC0;
        v12 = *(a1 + 40);
        [v10 loadValuesAsynchronouslyForKeys:v5 completionHandler:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (id)processExistingAnalysisForTimeRange:(id *)a3 analysisTypes:(unint64_t *)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v29 = [MEMORY[0x1E695DF90] dictionary];
  existingAnalysis = self->_existingAnalysis;
  if (existingAnalysis)
  {
    v6 = [(NSDictionary *)existingAnalysis objectForKey:@"performedAnalysisTypes"];

    if (v6)
    {
      *a4 = self->_requestedAnalyses & [(NSDictionary *)self->_existingAnalysis vcp_types];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v7 = [(NSDictionary *)self->_existingAnalysis vcp_results];
      v8 = [v7 allKeys];

      obj = v8;
      v9 = [v8 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v9)
      {
        v30 = *v47;
        v10 = MEMORY[0x1E6960CC0];
        do
        {
          v11 = 0;
          v31 = v9;
          do
          {
            if (*v47 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v46 + 1) + 8 * v11);
            v13 = [MEMORY[0x1E695DF70] array];
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v14 = [(NSDictionary *)self->_existingAnalysis vcp_results];
            v15 = [v14 objectForKeyedSubscript:v12];

            v33 = v12;
            v16 = [v15 countByEnumeratingWithState:&v42 objects:v50 count:16];
            if (v16)
            {
              v17 = *v43;
              do
              {
                v18 = 0;
                do
                {
                  if (*v43 != v17)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v19 = *(*(&v42 + 1) + 8 * v18);
                  memset(&v41, 0, sizeof(v41));
                  CMTimeRangeMakeFromDictionary(&v41, v19);
                  if ((v41.start.flags & 1) == 0 || (v41.duration.flags & 1) == 0 || v41.duration.epoch || v41.duration.value < 0 || (range = v41, v20 = *&a3->var0.var3, *&otherRange.start.value = *&a3->var0.var0, *&otherRange.start.epoch = v20, *&otherRange.duration.timescale = *&a3->var1.var1, CMTimeRangeGetIntersection(&v40, &range, &otherRange), (v40.start.flags & 1) == 0) || (range = v41, v21 = *&a3->var0.var3, *&otherRange.start.value = *&a3->var0.var0, *&otherRange.start.epoch = v21, *&otherRange.duration.timescale = *&a3->var1.var1, CMTimeRangeGetIntersection(&v37, &range, &otherRange), (v37.duration.flags & 1) == 0) || (range = v41, v22 = *&a3->var0.var3, *&otherRange.start.value = *&a3->var0.var0, *&otherRange.start.epoch = v22, *&otherRange.duration.timescale = *&a3->var1.var1, CMTimeRangeGetIntersection(&v36, &range, &otherRange), v36.duration.epoch) || (range = v41, v23 = *&a3->var0.var3, *&otherRange.start.value = *&a3->var0.var0, *&otherRange.start.epoch = v23, *&otherRange.duration.timescale = *&a3->var1.var1, CMTimeRangeGetIntersection(&v35, &range, &otherRange), v35.duration.value < 0) || (range = v41, v24 = *&a3->var0.var3, *&otherRange.start.value = *&a3->var0.var0, *&otherRange.start.epoch = v24, *&otherRange.duration.timescale = *&a3->var1.var1, CMTimeRangeGetIntersection(&v34, &range, &otherRange), range.start = v34.duration, *&otherRange.start.value = *v10, otherRange.start.epoch = *(v10 + 16), CMTimeCompare(&range.start, &otherRange.start)))
                  {
                    [v13 addObject:v19];
                  }

                  ++v18;
                }

                while (v16 != v18);
                v25 = [v15 countByEnumeratingWithState:&v42 objects:v50 count:16];
                v16 = v25;
              }

              while (v25);
            }

            if ([v13 count])
            {
              [v29 setObject:v13 forKey:v33];
            }

            else
            {
              *a4 &= ~MediaAnalysisResultsKeyToAnalysisType(v33);
            }

            ++v11;
          }

          while (v11 != v31);
          v8 = obj;
          v9 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
        }

        while (v9);
      }
    }
  }

  return v29;
}

- (int)performMetadataAnalysisOnAsset:(id)a3 withCancelBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = VCPSignPostLog();
  v9 = os_signpost_id_generate(v8);

  v10 = VCPSignPostLog();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VCPMovieAnalyzer_Metadata", "", buf, 2u);
  }

  requestedAnalyses = self->_requestedAnalyses;
  v13 = [(NSMutableDictionary *)self->_analysis vcp_types];
  v14 = requestedAnalyses & 0x40 | (4 * ((requestedAnalyses & 0xC) == 4));
  if ((requestedAnalyses & 0x880) != 0)
  {
    v14 |= 0x80uLL;
  }

  v15 = (v14 | requestedAnalyses & 0x4000014030000200) & ~v13;
  if (v15)
  {
    v16 = VCPSignPostLog();
    v17 = os_signpost_id_generate(v16);

    v18 = VCPSignPostLog();
    v19 = v18;
    v20 = v17 - 1;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "VCPMovieAnalyzer_Metadata_VCPLightVideoAnalyzer", "", buf, 2u);
    }

    v21 = [[VCPLightVideoAnalyzer alloc] initWithAVAsset:v6 forAnalysisTypes:v15];
    [(VCPAsset *)self->_asset photoOffsetSeconds];
    [(VCPLightVideoAnalyzer *)v21 setPhotoOffset:?];
    if (v21)
    {
      spid = v17;
      *buf = 0;
      v22 = [(VCPLightVideoAnalyzer *)v21 analyzeAsset:v7 flags:buf];
      if (v22)
      {
        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F62E30;
        }
      }

      else
      {
        v32 = v7;
        v33 = v6;
        analysis = self->_analysis;
        v24 = [(VCPLightVideoAnalyzer *)v21 publicResults];
        [(NSMutableDictionary *)analysis vcp_addEntriesFromResults:v24];

        [(NSMutableDictionary *)self->_analysis vcp_addFlags:*buf];
        [(NSMutableDictionary *)self->_analysis vcp_addTypes:v15 & 0xBFFFFEFFCFFFFDFFLL];
        privateResults = self->_privateResults;
        v26 = [(VCPLightVideoAnalyzer *)v21 privateResults];
        [(NSMutableDictionary *)privateResults addEntriesFromDictionary:v26];

        v7 = v32;
        v6 = v33;
        v27 = VCPSignPostLog();
        v28 = v27;
        if (v20 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
        {
          *v35 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_END, spid, "VCPMovieAnalyzer_Metadata_VCPLightVideoAnalyzer", "", v35, 2u);
        }

        v29 = VCPSignPostLog();
        v30 = v29;
        if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
        {
          *v35 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v30, OS_SIGNPOST_INTERVAL_END, v9, "VCPMovieAnalyzer_Metadata", "", v35, 2u);
        }
      }
    }

    else
    {
      if (!self->_errorCode)
      {
        *&self->_errorCode = xmmword_1C9F62E40;
      }

      v22 = -108;
    }
  }

  else
  {
    v22 = 0;
    if (!self->_errorCode)
    {
      *&self->_errorCode = xmmword_1C9F62E50;
    }
  }

  return v22;
}

- (id)createDecoderForTrack:(id)a3 timerange:(id *)a4 forAnalysisTypes:(unint64_t)a5 decodedFrameRate:(float *)a6
{
  v26[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = v10;
  if ((a5 & 0x4024000000) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:875704422];
    v26[0] = v12;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:875704438];
    v26[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];

    v24 = *MEMORY[0x1E6966130];
    v25 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v11 nominalFrameRate];
    *a6 = v16;
    v17 = [[VCPVideoTrackStandardDecoder alloc] initWithTrack:v11 timerange:a4 withSettings:v15 applyTransform:0];

    goto LABEL_9;
  }

  [v10 nominalFrameRate];
  time.epoch = 0;
  *&time.value = kSampleInterval;
  if (1.25 / CMTimeGetSeconds(&time) >= v18)
  {
    [v11 nominalFrameRate];
    *a6 = v21;
    if ([(VCPAsset *)self->_asset isSlowmo])
    {
      v17 = 0;
      goto LABEL_9;
    }

    v20 = [[VCPVideoTrackStandardDecoder alloc] initWithTrack:v11 timerange:a4];
  }

  else
  {
    time.epoch = 0;
    *&time.value = kSampleInterval;
    v19 = 1.0 / CMTimeGetSeconds(&time);
    *a6 = v19;
    v20 = [[VCPVideoTrackSubsamplingDecoder alloc] initWithTrack:v11 timerange:a4 atInterval:&kSampleInterval];
  }

  v17 = v20;
LABEL_9:

  return v17;
}

- (id)createVideoAnalyzerWithOrientation:(int)a3 preferredTransform:(CGAffineTransform *)a4 embeddings:(id)a5
{
  v6 = *&a3;
  v8 = a5;
  v9 = [(NSMutableDictionary *)self->_privateResults objectForKey:@"OrientationResults"];
  v10 = [VCPFullVideoAnalyzer alloc];
  v11 = *&a4->c;
  v26[0] = *&a4->a;
  v26[1] = v11;
  v26[2] = *&a4->tx;
  privateResults = self->_privateResults;
  v13 = [(VCPAsset *)self->_asset isTimelapse];
  v14 = [(VCPAsset *)self->_asset isLivePhoto];
  [(VCPAsset *)self->_asset photoOffsetSeconds];
  v16 = v15;
  [(VCPAsset *)self->_asset exposureTimeSeconds];
  v18 = v17;
  [(VCPAsset *)self->_asset slowmoRate];
  LODWORD(v20) = v19;
  BYTE1(v25) = self->_faceDominated;
  LOBYTE(v25) = v14;
  LODWORD(v21) = v16;
  LODWORD(v22) = v18;
  v23 = [(VCPFullVideoAnalyzer *)v10 initWithVideoOrientation:v6 preferredTransform:v26 metaOrientation:v9 privateResults:privateResults embeddings:v8 isTimelapse:v13 isIris:v21 irisPhotoOffsetSec:v22 irisPhotoExposureSec:v20 slowMoRate:v25 faceDominated:?];

  return v23;
}

- (int)_waitForAsyncAudioResults
{
  result = +[VCPMovieAnalyzer shouldProcessAudioAsync];
  if (result)
  {
    dispatch_group_wait(self->_audioGroup, 0xFFFFFFFFFFFFFFFFLL);
    if (self->_asyncAudioTypes)
    {
      if (!self->_asyncAdded)
      {
        [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:self->_asyncAudioAnalysis];
        [(NSMutableDictionary *)self->_analysis vcp_addTypes:self->_asyncAudioTypes];
        self->_asyncAdded = 1;
      }
    }

    return self->_asyncAudioStatus;
  }

  return result;
}

- (int)analyzeVideoSegment:(id)a3 timerange:(id *)a4 forAnalysisTypes:(unint64_t)a5 cancel:(id)a6
{
  v556 = *MEMORY[0x1E69E9840];
  v485 = a3;
  v475 = a6;
  v8 = VCPSignPostLog();
  v9 = os_signpost_id_generate(v8);

  v10 = VCPSignPostLog();
  v11 = v10;
  v460 = v9 - 1;
  spid = v9;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VCPMovieAnalyzer_AnalyzeVideoSegment", "", buf, 2u);
  }

  v544 = 0;
  v12 = *&a4->var0.var3;
  *buf = *&a4->var0.var0;
  *&buf[16] = v12;
  *&buf[32] = *&a4->var1.var1;
  v13 = [(VCPMovieAnalyzer *)self processExistingAnalysisForTimeRange:buf analysisTypes:&v544];
  v14 = v544;
  v484 = v13;
  v15 = +[VCPAudioAnalyzer supportedAnalysisTypes];
  v16 = +[VCPAudioAnalyzer supportedAnalysisTypes];
  v17 = +[VCPAudioAnalyzer supportedAnalysisTypes];
  v18 = [(NSDictionary *)self->_existingAnalysis vcp_types];
  v19 = v14 & ~v15;
  v490 = a5 & ~(v16 | v19);
  v463 = v17 & a5;
  v458 = +[VCPAudioAnalyzer supportedAnalysisTypes]& v18;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v20 = MEMORY[0x1E69E9C10];
    v21 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      if (self->_phAsset)
      {
        [(PHAsset *)self->_phAsset localIdentifier];
      }

      else
      {
        [(VCPAsset *)self->_asset mainFileURL];
      }
      v22 = ;
      v23 = MediaAnalysisTypeShortDescription(v490);
      v24 = MediaAnalysisTypeShortDescription(v19);
      v25 = MediaAnalysisTypeShortDescription(v463);
      v26 = MediaAnalysisTypeShortDescription(v458);
      *buf = 138413314;
      *&buf[4] = v22;
      *&buf[12] = 2112;
      *&buf[14] = v23;
      *&buf[22] = 2112;
      *&buf[24] = v24;
      *&buf[32] = 2112;
      *&buf[34] = v25;
      *&buf[42] = 2112;
      *&buf[44] = v26;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MovieAnalyzer][%@] Video segment requested video types: %@, existing video types: %@, requested audio types: %@, existing audio types: %@", buf, 0x34u);
    }
  }

  [(NSMutableDictionary *)self->_analysis vcp_addTypes:v544];
  v468 = objc_autoreleasePoolPush();
  v469 = objc_autoreleasePoolPush();
  v27 = [VCPVideoEmbeddings alloc];
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[VCPVideoTransformerBackbone embeddingVersion](VCPVideoTransformerBackbone, "embeddingVersion")}];
  v479 = [(VCPVideoEmbeddings *)v27 initWithEmbeddingType:2 version:v28];

  v543 = 0;
  if ((v490 & 0x20000000) == 0)
  {
    v29 = 0;
    v478 = 0;
    goto LABEL_13;
  }

  v31 = [(NSMutableDictionary *)self->_privateResults objectForKeyedSubscript:@"MetaInterpolatedFrameKey"];
  if ([v31 count])
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Video has already been FRC processed", buf, 2u);
    }

    p_errorCode = &self->_errorCode;
    context = -18;
    if (self->_errorCode)
    {
      goto LABEL_20;
    }

    v46 = 717;
LABEL_34:
    v44 = 0;
    *p_errorCode = 45;
    goto LABEL_35;
  }

  v41 = [VCPVideoInterpolator alloc];
  privateResults = self->_privateResults;
  v43 = [(VCPAsset *)self->_asset localIdentifier];
  v478 = [(VCPVideoInterpolator *)v41 initWithTimestamps:privateResults andIdentifier:v43 andTrack:v485];

  v44 = v478;
  if (!v478)
  {
    p_errorCode = &self->_errorCode;
    context = -108;
    if (self->_errorCode)
    {
LABEL_20:
      v478 = 0;
LABEL_36:

      v29 = 0;
      v473 = 0;
      v474 = 0;
      v47 = 0;
      v470 = 0;
      v471 = 0;
      v48 = 0;
      v472 = 0;
      v476 = 0;
      v477 = 0;
      v49 = 0;
      v489 = 0;
      v488 = 0;
      obj = 0;
      v482 = 0;
      v483 = 0;
      v481 = 0;
      v464 = 0;
LABEL_41:
      v50 = 10;
      goto LABEL_338;
    }

    v46 = 721;
    goto LABEL_34;
  }

  if (self->_requestedAnalyses == 0x20000000)
  {
    v45 = [(VCPVideoInterpolator *)v478 processAborted];
    v44 = v478;
    if (v45)
    {
      context = 0;
      if (self->_errorCode)
      {
        goto LABEL_36;
      }

      v46 = 723;
LABEL_35:
      v478 = v44;
      self->_errorLine = v46;
      goto LABEL_36;
    }
  }

  [(VCPVideoInterpolator *)v44 adjustedTimeRange];
  v29 = [(VCPMovieAnalyzer *)self createDecoderForTrack:v485 timerange:buf forAnalysisTypes:v490 decodedFrameRate:&v543];

LABEL_13:
  v30 = v485;
  if ((v490 & 0x8000000000000) != 0)
  {
    v33 = [(NSMutableDictionary *)self->_analysis vcp_results];
    v34 = [v33 objectForKeyedSubscript:@"VideoThumbnailResults"];

    v471 = [[VCPVideoThumbnailAnalyzer alloc] initWithExistingThumbnails:v34];
    v30 = v485;
  }

  else
  {
    v471 = 0;
  }

  if ((v490 & 0x4000000000) == 0)
  {
    if (v29)
    {
      v474 = 0;
      goto LABEL_48;
    }

    v474 = 0;
    goto LABEL_46;
  }

  v35 = [(NSMutableDictionary *)self->_analysis objectForKeyedSubscript:@"metadataRanges"];
  v36 = [v35 objectForKeyedSubscript:@"VideoStabilizationResults"];
  v37 = [v36 objectAtIndexedSubscript:0];
  v38 = [v37 objectForKeyedSubscript:@"attributes"];
  v39 = [v38 objectForKeyedSubscript:@"stabilizationRecipe"];

  v40 = [[VCPSettlingEffectAnalyzer alloc] initWithTimestamps:self->_privateResults andTrack:v485 andRecipe:v39 withOptions:self->_options];
  if (!v40)
  {
    if (!self->_errorCode)
    {
      *&self->_errorCode = xmmword_1C9F62E60;
    }

    v473 = 0;
    v474 = 0;
    v47 = 0;
    v470 = 0;
    v48 = 0;
    v472 = 0;
    v476 = 0;
    v477 = 0;
    v49 = 0;
    v489 = 0;
    v488 = 0;
    obj = 0;
    v482 = 0;
    v483 = 0;
    v481 = 0;
    v464 = 0;
    context = -108;
    goto LABEL_41;
  }

  v474 = v40;

  if (v29)
  {
    v30 = v485;
    goto LABEL_48;
  }

  v30 = v485;
  if (![(VCPSettlingEffectAnalyzer *)v474 processAborted])
  {
    [(VCPSettlingEffectAnalyzer *)v474 adjustedTimeRange];
    goto LABEL_47;
  }

LABEL_46:
  v51 = *&a4->var0.var3;
  *buf = *&a4->var0.var0;
  *&buf[16] = v51;
  *&buf[32] = *&a4->var1.var1;
LABEL_47:
  v29 = [(VCPMovieAnalyzer *)self createDecoderForTrack:v30 timerange:buf forAnalysisTypes:v490 decodedFrameRate:&v543];
LABEL_48:
  v462 = v29;
  if ((v490 & 0x880) != 0)
  {
    v52 = [v30 vcp_orientation];
    if (v30)
    {
      [v30 preferredTransform];
    }

    else
    {
      memset(buf, 0, 48);
    }

    v483 = [(VCPMovieAnalyzer *)self createVideoAnalyzerWithOrientation:v52 preferredTransform:buf embeddings:v479];
    if (!v483)
    {
      v67 = self;
      if (self->_errorCode)
      {
        v472 = 0;
        v473 = 0;
        v47 = 0;
        v470 = 0;
        v48 = 0;
        v476 = 0;
        v49 = 0;
        v489 = 0;
        v488 = 0;
        obj = 0;
        v482 = 0;
        v483 = 0;
        goto LABEL_153;
      }

      v472 = 0;
      v473 = 0;
      v47 = 0;
      v470 = 0;
      v48 = 0;
      v476 = 0;
      v477 = 0;
      v49 = 0;
      v489 = 0;
      v488 = 0;
      obj = 0;
      v482 = 0;
      v483 = 0;
      v481 = 0;
      v464 = 0;
      v81 = xmmword_1C9F62E70;
LABEL_250:
      *&v67->_errorCode = v81;
      context = -108;
      v50 = 10;
      goto LABEL_337;
    }
  }

  else
  {
    v483 = 0;
  }

  if ((v490 & 8) != 0)
  {
    v53 = [(NSMutableDictionary *)self->_analysis vcp_results];
    v54 = [v53 objectForKeyedSubscript:@"FacePrintResults"];

    v55 = *(MEMORY[0x1E695EFD0] + 16);
    *buf = *MEMORY[0x1E695EFD0];
    *&buf[16] = v55;
    *&buf[32] = *(MEMORY[0x1E695EFD0] + 32);
    v482 = [VCPVideoFaceDetector faceDetectorWithTransform:buf withExistingFaceprints:v54 tracking:[(VCPAsset *)self->_asset isLivePhoto]^ 1 faceDominated:self->_faceDominated cancel:v475];
    if (!v482)
    {
      if (!self->_errorCode)
      {
        *&self->_errorCode = xmmword_1C9F62E80;
      }

      v472 = 0;
      v473 = 0;
      v47 = 0;
      v470 = 0;
      v48 = 0;
      v476 = 0;
      v49 = 0;
      v489 = 0;
      v488 = 0;
      obj = 0;
      v482 = 0;
      goto LABEL_153;
    }
  }

  else
  {
    v482 = 0;
  }

  if ((v490 & 0x8000) != 0 && SocType() >= 247 && ![(VCPAsset *)self->_asset isLivePhoto])
  {
    obj = objc_alloc_init(VCPVideoActivityAnalyzer);
    if (!obj)
    {
      v67 = self;
      if (self->_errorCode)
      {
        v472 = 0;
        v473 = 0;
        v47 = 0;
        v470 = 0;
        v48 = 0;
        v476 = 0;
        v49 = 0;
        v489 = 0;
        v488 = 0;
        obj = 0;
        goto LABEL_153;
      }

      v472 = 0;
      v473 = 0;
      v47 = 0;
      v470 = 0;
      v48 = 0;
      v476 = 0;
      v477 = 0;
      v49 = 0;
      v489 = 0;
      v488 = 0;
      obj = 0;
      v481 = 0;
      v464 = 0;
      v81 = xmmword_1C9F62E90;
      goto LABEL_250;
    }
  }

  else
  {
    obj = 0;
  }

  if ((v490 & 0x4000) != 0)
  {
    v488 = objc_alloc_init(VCPVideoSceneClassifier);
    if (!v488)
    {
      v67 = self;
      if (self->_errorCode)
      {
        v472 = 0;
        v473 = 0;
        v47 = 0;
        v470 = 0;
        v48 = 0;
        v476 = 0;
        v49 = 0;
        v489 = 0;
        v488 = 0;
        goto LABEL_153;
      }

      v472 = 0;
      v473 = 0;
      v47 = 0;
      v470 = 0;
      v48 = 0;
      v476 = 0;
      v477 = 0;
      v49 = 0;
      v489 = 0;
      v488 = 0;
      v481 = 0;
      v464 = 0;
      v81 = xmmword_1C9F62EA0;
      goto LABEL_250;
    }
  }

  else
  {
    v488 = 0;
  }

  if ((v490 & 0x1000) != 0)
  {
    v56 = [VCPVideoSaliencyAnalyzer alloc];
    v57 = *(MEMORY[0x1E695EFD0] + 16);
    *buf = *MEMORY[0x1E695EFD0];
    *&buf[16] = v57;
    *&buf[32] = *(MEMORY[0x1E695EFD0] + 32);
    v489 = [(VCPVideoSaliencyAnalyzer *)v56 initWithTransform:buf];
    if (!v489)
    {
      v67 = self;
      if (self->_errorCode)
      {
        v472 = 0;
        v473 = 0;
        v47 = 0;
        v470 = 0;
        v48 = 0;
        v476 = 0;
        v49 = 0;
        v489 = 0;
        goto LABEL_153;
      }

      v472 = 0;
      v473 = 0;
      v47 = 0;
      v470 = 0;
      v48 = 0;
      v476 = 0;
      v477 = 0;
      v49 = 0;
      v489 = 0;
      v481 = 0;
      v464 = 0;
      v81 = xmmword_1C9F62EB0;
      goto LABEL_250;
    }
  }

  else
  {
    v489 = 0;
  }

  if ((v490 & 0x20000) != 0 && DeviceHasANE())
  {
    v58 = [VCPVideoPetsAnalyzer alloc];
    v59 = MEMORY[0x1E695EFD0];
    v60 = *(MEMORY[0x1E695EFD0] + 16);
    *buf = *MEMORY[0x1E695EFD0];
    *&buf[16] = v60;
    *&buf[32] = *(MEMORY[0x1E695EFD0] + 32);
    v49 = [(VCPVideoPetsAnalyzer *)v58 initWithTransform:buf];
    if (v49)
    {
      v61 = [(NSMutableDictionary *)self->_analysis vcp_results];
      v62 = [v61 objectForKeyedSubscript:@"AnimalPrintResults"];

      v63 = [VCPVideoAnimalDetector alloc];
      v64 = v59[1];
      *buf = *v59;
      *&buf[16] = v64;
      *&buf[32] = v59[2];
      v476 = [(VCPVideoAnimalDetector *)v63 initWithTransform:buf withExistingAnimalprints:v62];
      if (v476)
      {

        v455 = v49;
        goto LABEL_74;
      }

      if (!self->_errorCode)
      {
        *&self->_errorCode = xmmword_1C9F62EC0;
      }

      v472 = 0;
      v473 = 0;
      v47 = 0;
      v470 = 0;
      v48 = 0;
      v476 = 0;
LABEL_153:
      v477 = 0;
      v481 = 0;
      v464 = 0;
      context = -108;
      v50 = 10;
      goto LABEL_337;
    }

    v67 = self;
    if (self->_errorCode)
    {
      v472 = 0;
      v473 = 0;
      v47 = 0;
      v470 = 0;
      v48 = 0;
      v476 = 0;
      v49 = 0;
      goto LABEL_153;
    }

    v472 = 0;
    v473 = 0;
    v47 = 0;
    v470 = 0;
    v48 = 0;
    v476 = 0;
    v477 = 0;
    v49 = 0;
    v481 = 0;
    v464 = 0;
    v81 = xmmword_1C9F62ED0;
    goto LABEL_250;
  }

  v476 = 0;
  v455 = 0;
LABEL_74:
  if ((v490 & 0x2000000000) != 0 && DeviceHasANE())
  {
    v473 = [[VCPVideoPetsActionAnalyzer alloc] initWithTimeOfInterest:0];
    if (!v473)
    {
      v65 = self;
      if (self->_errorCode)
      {
        v473 = 0;
LABEL_133:
        v47 = 0;
        v470 = 0;
        v48 = 0;
        v472 = 0;
LABEL_138:
        v477 = 0;
        v481 = 0;
        v464 = 0;
        context = -108;
        v50 = 10;
        goto LABEL_336;
      }

      v472 = 0;
      v473 = 0;
      v47 = 0;
      v470 = 0;
      v48 = 0;
      v477 = 0;
      v481 = 0;
      v464 = 0;
      v108 = xmmword_1C9F62EE0;
LABEL_248:
      *&v65->_errorCode = v108;
      context = -108;
      v50 = 10;
      v49 = v455;
      goto LABEL_337;
    }
  }

  else
  {
    v473 = 0;
  }

  if ((v490 & 0x40000) != 0)
  {
    v68 = self->_privateResults;
    if (!v68 || (-[NSMutableDictionary objectForKeyedSubscript:](v68, "objectForKeyedSubscript:", @"MetaLensSwitchResults"), v69 = objc_claimAutoreleasedReturnValue(), v70 = [v69 count] == 0, v69, v68 = self->_privateResults, v70))
    {
      v74 = 0;
    }

    else
    {
      v71 = [(NSMutableDictionary *)v68 objectForKeyedSubscript:@"MetaLensSwitchResults"];
      v72 = [v71 objectAtIndexedSubscript:0];
      v73 = [v72 objectForKeyedSubscript:@"quality"];
      v74 = [v73 BOOLValue];

      v68 = self->_privateResults;
    }

    v75 = [(NSMutableDictionary *)v68 objectForKeyedSubscript:@"MetaLensSwitchResults"];
    v76 = [v75 objectAtIndexedSubscript:0];
    v77 = [v76 objectForKeyedSubscript:@"ZoomChangeScore"];
    v78 = [v77 BOOLValue];

    v79 = [VCPMovieCurationAnalyzer alloc];
    v80 = [(NSMutableDictionary *)self->_analysis vcp_types];
    if (v485)
    {
      [v485 preferredTransform];
    }

    else
    {
      memset(buf, 0, 48);
    }

    v82 = *&a4->var0.var3;
    *time = *&a4->var0.var0;
    *&time[16] = v82;
    v542 = *&a4->var1.var1;
    v83 = [(VCPAsset *)self->_asset isLivePhoto];
    [(VCPAsset *)self->_asset photoOffsetSeconds];
    v85 = v84;
    v86 = [(VCPAsset *)self->_asset hadFlash];
    v87 = [v484 objectForKeyedSubscript:@"KeyFrameResults"];
    v88 = [(VCPAsset *)self->_asset isTimelapse];
    asset = self->_asset;
    if (asset)
    {
      [(VCPAsset *)asset slomoRange];
    }

    else
    {
      memset(v540, 0, sizeof(v540));
    }

    v90 = [v485 asset];
    LOBYTE(v424) = v88;
    LOBYTE(v423) = v78;
    LODWORD(v91) = v85;
    v92 = [(VCPMovieCurationAnalyzer *)v79 initWithAnalysisTypes:v80 | v490 transform:buf timeRange:time isLivePhoto:v83 photoOffset:v86 hadFlash:v74 hadZoom:v91 settlingHadZoom:v423 keyFrameResults:v87 isTimelapse:v424 preferredTimeRange:v540 asset:v90];

    if (!v92)
    {
      v65 = self;
      if (self->_errorCode)
      {
        goto LABEL_133;
      }

      v47 = 0;
      v470 = 0;
      v48 = 0;
      v472 = 0;
      v477 = 0;
      v481 = 0;
      v464 = 0;
      v108 = xmmword_1C9F62EF0;
      goto LABEL_248;
    }

    *&v93 = self->_maxHighlightDuration;
    v66 = v92;
    [(VCPMovieCurationAnalyzer *)v92 setMaxHighlightDuration:v93];
  }

  else
  {
    v66 = 0;
  }

  v472 = v66;
  if ((v490 & 0x4000000) != 0)
  {
    v94 = [VCPVideoStabilizer videoStabilizerforAnalysisType:0x4000000 withMetadata:0 sourceSize:*MEMORY[0x1E695F060] cropRect:*(MEMORY[0x1E695F060] + 8), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    if (!v94)
    {
      v65 = self;
      if (self->_errorCode)
      {
        v47 = 0;
        v470 = 0;
        v48 = 0;
        goto LABEL_138;
      }

      v47 = 0;
      v470 = 0;
      v48 = 0;
      v477 = 0;
      v481 = 0;
      v464 = 0;
      v108 = xmmword_1C9F62F00;
      goto LABEL_248;
    }
  }

  else
  {
    v94 = 0;
  }

  v470 = v94;
  if (+[VCPMovieAnalyzer getEnableMovieHumanAction])
  {
    HasANE = 1;
  }

  else
  {
    HasANE = DeviceHasANE();
  }

  if ((v490 & 0x80040040000) == 0)
  {
    goto LABEL_122;
  }

  if ([(VCPAsset *)self->_asset isLivePhoto])
  {
    v96 = [(VCPAsset *)self->_asset faces];
    v97 = MEMORY[0x1E696AD98];
    [(VCPAsset *)self->_asset photoOffsetSeconds];
    [v97 numberWithFloat:?];
    v98 = 0;
    HasANE = 1;
    v457 = v456 = v96;
    goto LABEL_123;
  }

  if ((v490 & 0x40000000) == 0 || ![(VCPAsset *)self->_asset isMovie]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (phAsset = self->_phAsset) == 0 || [(PHAsset *)phAsset vcp_quickFaceClassificationDone])
  {
LABEL_122:
    v456 = 0;
    v457 = 0;
    v98 = 0;
    goto LABEL_123;
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v169 = MEMORY[0x1E69E9C10];
    v170 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Movie analyzer perform VCPPhotosQuickFaceDetection", buf, 2u);
    }
  }

  v171 = objc_autoreleasePoolPush();
  v172 = VCPSignPostLog();
  v173 = os_signpost_id_generate(v172);

  v174 = VCPSignPostLog();
  v175 = v174;
  if (v173 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v174))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v175, OS_SIGNPOST_INTERVAL_BEGIN, v173, "VCPMovieAnalyzer_Video_VCPPhotosQuickFaceDetection", "", buf, 2u);
  }

  v176 = [VCPPhotosQuickFaceDetectionManager alloc];
  v177 = [(PHAsset *)self->_phAsset photoLibrary];
  v178 = [(VCPPhotosQuickFaceDetectionManager *)v176 initWithPhotoLibrary:v177];

  if (v178)
  {
    context = [(VCPPhotosQuickFaceDetectionManager *)v178 processAsset:self->_phAsset];
    if (!context)
    {
      v327 = VCPSignPostLog();
      v328 = v327;
      if (v173 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v327))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v328, OS_SIGNPOST_INTERVAL_END, v173, "VCPMovieAnalyzer_Video_VCPPhotosQuickFaceDetection", "", buf, 2u);
      }

      v50 = 0;
      context = 0;
      v179 = 1;
      goto LABEL_490;
    }

    v179 = 0;
    if (!self->_errorCode)
    {
      *&self->_errorCode = xmmword_1C9F62F10;
    }
  }

  else
  {
    v179 = 0;
    if (!self->_errorCode)
    {
      *&self->_errorCode = xmmword_1C9F62F20;
    }

    context = -18;
  }

  v50 = 10;
LABEL_490:

  objc_autoreleasePoolPop(v171);
  if ((v179 & 1) == 0)
  {
    v456 = 0;
    v454 = 0;
    v47 = 0;
    v48 = 0;
    v477 = 0;
    v481 = 0;
    v464 = 0;

    goto LABEL_335;
  }

  v456 = 0;
  v457 = 0;
  v98 = context;
LABEL_123:
  if ((v490 & 0x40400000) != 0 && +[VCPCNNEspressoContext supportGPU]&& !self->_faceDominated)
  {
    v100 = [[VCPVideoHumanActionAnalyzer alloc] initWithTimeOfInterest:v457 phFaces:v456];
    if (!v100)
    {
      v107 = self;
      if (!self->_errorCode)
      {
        v454 = 0;
        v47 = 0;
        v48 = 0;
        v477 = 0;
        v481 = 0;
        v464 = 0;
        v157 = xmmword_1C9F62F30;
        goto LABEL_274;
      }

      v454 = 0;
      v47 = 0;
      v48 = 0;
      goto LABEL_240;
    }
  }

  else
  {
    v100 = 0;
  }

  if ((v490 & 0x200000000000) != 0)
  {
    v101 = [VCPVideoCaptionAnalyzer alloc];
    v102 = v543;
    if (v485)
    {
      [v485 timeRange];
    }

    else
    {
      HIDWORD(v103) = 0;
      memset(buf, 0, 48);
    }

    LODWORD(v103) = v102;
    v47 = [(VCPVideoCaptionAnalyzer *)v101 initWithModelType:2 frameRate:buf timeRange:v103];
    if (v47)
    {
      goto LABEL_157;
    }

    v107 = self;
    if (!self->_errorCode)
    {
      v48 = v100;
      v454 = 0;
      v47 = 0;
      v477 = 0;
      v481 = 0;
      v464 = 0;
      v157 = xmmword_1C9F62F40;
      goto LABEL_274;
    }

    v48 = v100;
    goto LABEL_239;
  }

  if ((v490 & 0x100000000) == 0)
  {
    v47 = 0;
    goto LABEL_157;
  }

  v104 = [VCPVideoCaptionAnalyzer alloc];
  v105 = v543;
  if (v485)
  {
    [v485 timeRange];
  }

  else
  {
    HIDWORD(v106) = 0;
    memset(buf, 0, 48);
  }

  LODWORD(v106) = v105;
  v47 = [(VCPVideoCaptionAnalyzer *)v104 initWithModelType:1 frameRate:buf timeRange:v106];
  if (!v47)
  {
    v48 = v100;
    v107 = self;
    if (!self->_errorCode)
    {
      v454 = 0;
      v47 = 0;
      v477 = 0;
      v481 = 0;
      v464 = 0;
      v157 = xmmword_1C9F62F50;
      goto LABEL_274;
    }

LABEL_239:
    v454 = 0;
    v47 = 0;
LABEL_240:
    v477 = 0;
    v481 = 0;
    goto LABEL_241;
  }

LABEL_157:
  v109 = v490 & 0x80000000000;
  if (((v490 & 0x240040000) == 0 || (HasANE & 1) == 0) && !v109)
  {
    v110 = 0;
    goto LABEL_164;
  }

  v111 = [VCPVideoCNNAnalyzer alloc];
  v112 = v543;
  v113 = [(VCPAsset *)self->_asset isLivePhoto];
  if (v485)
  {
    [v485 timeRange];
  }

  else
  {
    memset(buf, 0, 48);
  }

  [(VCPAsset *)self->_asset photoOffsetSeconds];
  LODWORD(v115) = v114;
  LODWORD(v116) = v112;
  v110 = [(VCPVideoCNNAnalyzer *)v111 initWithTimeOfInteret:v457 frameRate:v113 isLivePhoto:v456 phFaces:buf timeRange:v479 withEmbeddings:v490 requestedAnalyses:v116 photoOffset:v115];
  if (!v110)
  {
    v48 = v100;
    v107 = self;
    if (!self->_errorCode)
    {
      v454 = 0;
      v477 = 0;
      v481 = 0;
      v464 = 0;
      v157 = xmmword_1C9F62F60;
      goto LABEL_274;
    }

    v454 = 0;
    goto LABEL_240;
  }

LABEL_164:
  v481 = v110;
  v477 = 0;
  if ([objc_opt_class() enableAudioVideoFusion] && ((v458 | v463) & 0x800000000000) != 0 && ((v490 | v19) & 0x80000000000) != 0 && v463 & 0x800000000000 | v109)
  {
    v117 = _os_feature_enabled_impl();
    v118 = [VCPAudioVideoEmbeddingFuser alloc];
    v119 = v117 ? 7 : 5;
    v477 = [(VCPAudioVideoEmbeddingFuser *)v118 initWithEmbeddingVersion:v119];
    if (!v477)
    {
      v48 = v100;
      v107 = self;
      if (!self->_errorCode)
      {
        v454 = 0;
        v477 = 0;
        v464 = 0;
        v157 = xmmword_1C9F62F70;
        goto LABEL_274;
      }

      v454 = 0;
      v477 = 0;
LABEL_241:
      v464 = 0;
      context = -108;
      v50 = 10;
      goto LABEL_334;
    }
  }

  if ((v490 & 0x40000000000) != 0)
  {
    v121 = objc_alloc_init(MADVideoSafetyClassifier);
    v120 = v121;
    if (v121)
    {
      *buf = *&a4->var1.var0;
      *&buf[16] = a4->var1.var3;
      [(MADVideoSafetyClassifier *)v121 configureProcessTimeIntervalFrom:buf];
      v439 = v100;
      goto LABEL_176;
    }

    v48 = v100;
    v107 = self;
    if (self->_errorCode)
    {
      v454 = 0;
      v464 = 0;
LABEL_275:
      context = -108;
      v50 = 10;
      goto LABEL_334;
    }

    v454 = 0;
    v464 = 0;
    v157 = xmmword_1C9F62F80;
LABEL_274:
    *&v107->_errorCode = v157;
    goto LABEL_275;
  }

  v439 = v100;
  v120 = 0;
LABEL_176:
  if (v488)
  {
    supportConditionalAnalysis = self->_supportConditionalAnalysis;
  }

  else
  {
    supportConditionalAnalysis = 0;
  }

  v438 = v120;
  v445 = v98;
  if (v110)
  {
    v123 = [VCPVideoCNNHighlightTimeRangePredictor alloc];
    v124 = [(VCPVideoCNNAnalyzer *)v110 highlightEnabled];
    v125 = [(VCPVideoCNNAnalyzer *)v110 postInference];
    [(VCPVideoCNNAnalyzer *)v110 minProcessingInterval];
    v127 = v126;
    [(VCPVideoCNNAnalyzer *)v110 timeStart];
    LODWORD(v128) = v127;
    v129 = [(VCPVideoCNNHighlightTimeRangePredictor *)v123 initWithHightlightEnabled:v124 postInference:v125 minProcessingInterval:buf startTime:v128];
  }

  else
  {
    v129 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke;
  aBlock[3] = &unk_1E8350360;
  v130 = v475;
  v539 = v130;
  aBlock[4] = self;
  v131 = v478;
  v529 = v131;
  v436 = v482;
  v530 = v436;
  v432 = v488;
  v531 = v432;
  v429 = v489;
  v532 = v429;
  v437 = v129;
  v533 = v437;
  v446 = v439;
  v534 = v446;
  v444 = v47;
  v535 = v444;
  v428 = v455;
  v536 = v428;
  v426 = v476;
  v537 = v426;
  v427 = v473;
  v538 = v427;
  v453 = _Block_copy(aBlock);
  v524[0] = MEMORY[0x1E69E9820];
  v524[1] = 3221225472;
  v524[2] = __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_707;
  v524[3] = &unk_1E8350388;
  v132 = v130;
  v526 = v132;
  v524[4] = self;
  v458 = v483;
  v525 = v458;
  v527 = supportConditionalAnalysis;
  v452 = _Block_copy(v524);
  v514[0] = MEMORY[0x1E69E9820];
  v514[1] = 3221225472;
  v514[2] = __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_714;
  v514[3] = &unk_1E83503B0;
  v133 = v132;
  v523 = v133;
  v441 = v131;
  v515 = v441;
  v516 = self;
  v430 = obj;
  v517 = v430;
  v425 = v472;
  v518 = v425;
  v440 = v110;
  v519 = v440;
  v443 = v470;
  v520 = v443;
  v442 = v474;
  v521 = v442;
  v454 = v438;
  v522 = v454;
  v451 = _Block_copy(v514);
  if (v443)
  {
    v511[0] = MEMORY[0x1E69E9820];
    v511[1] = 3221225472;
    v511[2] = __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_727;
    v511[3] = &unk_1E83503D8;
    v513 = v133;
    v511[4] = self;
    v512 = v443;
    v447 = _Block_copy(v511);
  }

  else
  {
    v447 = 0;
  }

  if (v442)
  {
    v508[0] = MEMORY[0x1E69E9820];
    v508[1] = 3221225472;
    v508[2] = __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_732;
    v508[3] = &unk_1E83503D8;
    v510 = v133;
    v508[4] = self;
    v509 = v442;
    v448 = _Block_copy(v508);
  }

  else
  {
    v448 = 0;
  }

  if (v454)
  {
    v505[0] = MEMORY[0x1E69E9820];
    v505[1] = 3221225472;
    v505[2] = __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_737;
    v505[3] = &unk_1E83503D8;
    v507 = v133;
    v505[4] = self;
    v506 = v454;
    v449 = _Block_copy(v505);
  }

  else
  {
    v449 = 0;
  }

  if (v441)
  {
    v502[0] = MEMORY[0x1E69E9820];
    v502[1] = 3221225472;
    v502[2] = __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_742;
    v502[3] = &unk_1E83503D8;
    v504 = v133;
    v502[4] = self;
    v503 = v441;
    v450 = _Block_copy(v502);
  }

  else
  {
    v450 = 0;
  }

  contexta = objc_autoreleasePoolPush();
  if ((v490 & 0x2C636446D888) == 0)
  {
    v50 = 0;
    v464 = 0;
    goto LABEL_297;
  }

  v134 = VCPSignPostLog();
  v434 = os_signpost_id_generate(v134);

  v135 = VCPSignPostLog();
  v136 = v135;
  if (v434 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v135))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v136, OS_SIGNPOST_INTERVAL_BEGIN, v434, "VCPMovieAnalyzer_AnalyzeVideoSegment_FrameProcessing", "", buf, 2u);
  }

  if (DeviceHasANE() && (_os_feature_enabled_impl() & 1) != 0)
  {
    v137 = MEMORY[0x1E695DF70];
    v138 = _Block_copy(v453);
    v554[0] = v138;
    v139 = _Block_copy(v452);
    v554[1] = v139;
    v140 = _Block_copy(v451);
    v554[2] = v140;
    v141 = [MEMORY[0x1E695DEC8] arrayWithObjects:v554 count:3];
    v142 = [v137 arrayWithArray:v141];

    if (+[VCPVideoAnalysisPipelineManager shouldUseGraphProcessing])
    {
      if (v447)
      {
        v143 = _Block_copy(v447);
        [v142 addObject:v143];
      }

      if (v448)
      {
        v144 = _Block_copy(v448);
        [v142 addObject:v144];
      }

      if (v449)
      {
        v145 = _Block_copy(v449);
        [v142 addObject:v145];
      }

      if (v450)
      {
        v146 = _Block_copy(v450);
        [v142 addObject:v146];
      }
    }

    v147 = [[VCPVideoAnalysisPipelineManager alloc] initWithVideoAnalysisBlocks:v142 videoDecoder:v462 maxBufferedFrames:20 cancelBlock:v133];
    v148 = [(VCPVideoAnalysisPipelineManager *)v147 run];
    if (v148)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v149 = MEMORY[0x1E69E9C10];
        v150 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
        {
          v151 = objc_opt_class();
          *buf = 138412290;
          *&buf[4] = v151;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed on running VCPVideoAnalysisPipelineManager, bail out.", buf, 0xCu);
        }
      }

      if (!self->_errorCode)
      {
        *&self->_errorCode = xmmword_1C9F62F90;
      }

      v464 = 0;
      v50 = 10;
      v445 = v148;
    }

    else
    {
      v464 = [(VCPVideoAnalysisPipelineManager *)v147 flags];
LABEL_277:

      v168 = VCPSignPostLog();
      v142 = v168;
      if (v434 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v168))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v142, OS_SIGNPOST_INTERVAL_END, v434, "VCPMovieAnalyzer_AnalyzeVideoSegment_FrameProcessing", "", buf, 2u);
      }

      v50 = 0;
    }

    goto LABEL_296;
  }

  v147 = 0;
  v142 = 0;
  v464 = 0;
  while (1)
  {
    v152 = [v462 copyNextSampleBuffer];
    v153 = v147;

    v142 = v153;
    if (v152)
    {
      v154 = [[VCPVideoAnalysisPipelineFrameResource alloc] initWithSampleBuffer:v152];

      v147 = v154;
    }

    else
    {
      v147 = 0;
      v154 = v153;
    }

    if (v153 | v147)
    {
      v155 = 0;
    }

    else
    {
      v155 = 100;
    }

    if (!v153)
    {
      goto LABEL_229;
    }

    v156 = (*(v453 + 2))(v453, v153, [(VCPVideoAnalysisPipelineManager *)v147 frameSampleBuffer]);
    if (v156)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v158 = MEMORY[0x1E69E9C10];
        v159 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
        {
          v160 = objc_opt_class();
          *buf = 138412290;
          *&buf[4] = v160;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed on executing pipelineBlock0, bail out.", buf, 0xCu);
        }
      }

      if (self->_errorCode)
      {
        goto LABEL_294;
      }

      v161 = 1433;
      goto LABEL_293;
    }

    v156 = (*(v452 + 2))(v452, v142, [(VCPVideoAnalysisPipelineManager *)v147 frameSampleBuffer]);
    if (v156)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v162 = MEMORY[0x1E69E9C10];
        v163 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
        {
          v164 = objc_opt_class();
          *buf = 138412290;
          *&buf[4] = v164;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed on executing pipelineBlock1, bail out.", buf, 0xCu);
        }
      }

      if (self->_errorCode)
      {
        goto LABEL_294;
      }

      v161 = 1435;
LABEL_293:
      self->_errorCode = 45;
      self->_errorLine = v161;
      goto LABEL_294;
    }

    v156 = (*(v451 + 2))(v451, v142, [(VCPVideoAnalysisPipelineManager *)v147 frameSampleBuffer]);
    if (v156)
    {
      break;
    }

    v155 = 0;
    v464 |= [v142 frameFlags];
LABEL_229:
    if (v155)
    {
      if ([v462 status] == 2)
      {
        goto LABEL_277;
      }

      v156 = -19;
      if (self->_errorCode)
      {
        v445 = -19;
        goto LABEL_295;
      }

      v161 = 1441;
      goto LABEL_293;
    }
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v165 = MEMORY[0x1E69E9C10];
    v166 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
    {
      v167 = objc_opt_class();
      *buf = 138412290;
      *&buf[4] = v167;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed on executing pipelineBlock2, bail out.", buf, 0xCu);
    }
  }

  if (!self->_errorCode)
  {
    v161 = 1437;
    goto LABEL_293;
  }

LABEL_294:
  v445 = v156;
LABEL_295:

  v50 = 10;
LABEL_296:

LABEL_297:
  objc_autoreleasePoolPop(contexta);
  if (v50)
  {
    context = v445;
    goto LABEL_333;
  }

  v180 = VCPSignPostLog();
  v435 = os_signpost_id_generate(v180);

  v181 = VCPSignPostLog();
  v182 = v181;
  if (v435 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v181))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v182, OS_SIGNPOST_INTERVAL_BEGIN, v435, "VCPMovieAnalyzer_AnalyzeVideoSegment_PostProcessing", "", buf, 2u);
  }

  if (!v436)
  {
LABEL_313:
    if (v458)
    {
      v193 = VCPSignPostLog();
      v194 = os_signpost_id_generate(v193);

      v195 = VCPSignPostLog();
      v196 = v195;
      if (v194 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v195))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v196, OS_SIGNPOST_INTERVAL_BEGIN, v194, "VCPMovieAnalyzer_Video_VCPFullVideoAnalyzer", "", buf, 2u);
      }

      v197 = *&a4->var0.var3;
      *buf = *&a4->var0.var0;
      *&buf[16] = v197;
      *&buf[32] = *&a4->var1.var1;
      context = [v458 finishAnalysisPass:buf];
      if (context)
      {
        v188 = self;
        if (self->_errorCode)
        {
          goto LABEL_332;
        }

        v189 = xmmword_1C9F62FB0;
LABEL_331:
        *&v188->_errorCode = v189;
        goto LABEL_332;
      }

      v198 = [v458 results];
      [v484 addEntriesFromDictionary:v198];

      v199 = self->_privateResults;
      v200 = [v458 privateResults];
      [(NSMutableDictionary *)v199 addEntriesFromDictionary:v200];

      v201 = VCPSignPostLog();
      v202 = v201;
      if (v194 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v201))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v202, OS_SIGNPOST_INTERVAL_END, v194, "VCPMovieAnalyzer_Video_VCPFullVideoAnalyzer", "", buf, 2u);
      }
    }

    if (v488)
    {
      v203 = VCPSignPostLog();
      v204 = os_signpost_id_generate(v203);

      v205 = VCPSignPostLog();
      v206 = v205;
      if (v204 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v205))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v206, OS_SIGNPOST_INTERVAL_BEGIN, v204, "VCPMovieAnalyzer_Video_VCPVideoSceneClassifier", "", buf, 2u);
      }

      v207 = [v484 objectForKeyedSubscript:@"SceneResults"];
      [(VCPVideoSceneClassifier *)v432 setSceneResults:v207];

      v208 = [v484 objectForKeyedSubscript:@"QualityResults"];
      [(VCPVideoSceneClassifier *)v432 setQualityResults:v208];

      v209 = *&a4->var0.var3;
      *buf = *&a4->var0.var0;
      *&buf[16] = v209;
      *&buf[32] = *&a4->var1.var1;
      context = [(VCPVideoSceneClassifier *)v432 finishAnalysisPass:buf];
      if (context)
      {
        v188 = self;
        if (self->_errorCode)
        {
          goto LABEL_332;
        }

        v189 = xmmword_1C9F62FC0;
        goto LABEL_331;
      }

      v292 = [(VCPVideoSceneClassifier *)v432 results];
      [v484 addEntriesFromDictionary:v292];

      v293 = VCPSignPostLog();
      v294 = v293;
      if (v204 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v293))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v294, OS_SIGNPOST_INTERVAL_END, v204, "VCPMovieAnalyzer_Video_VCPVideoSceneClassifier", "", buf, 2u);
      }
    }

    if (v430)
    {
      v295 = VCPSignPostLog();
      v296 = os_signpost_id_generate(v295);

      v297 = VCPSignPostLog();
      v298 = v297;
      if (v296 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v297))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v298, OS_SIGNPOST_INTERVAL_BEGIN, v296, "VCPMovieAnalyzer_Video_VCPVideoActivityAnalyzer", "", buf, 2u);
      }

      v299 = [(VCPAsset *)self->_asset isSlowmo];
      v300 = self->_asset;
      if (v299)
      {
        [(VCPAsset *)v300 slowmoRate];
      }

      else
      {
        [(VCPAsset *)v300 timelapseRate];
      }

      v302 = v301;
      v303 = [v484 objectForKeyedSubscript:@"QualityResults"];
      v304 = [v484 objectForKeyedSubscript:@"InterestingnessResults"];
      v305 = [v484 objectForKeyedSubscript:@"ObstructionResults"];
      v306 = [v484 objectForKeyedSubscript:@"ClassificationResults"];
      v307 = [v484 objectForKeyedSubscript:@"FineSubjectMotionResults"];
      v308 = [v484 objectForKeyedSubscript:@"FaceResults"];
      [v458 getSceneSwichFrequency];
      [(VCPVideoActivityAnalyzer *)v430 preProcessQualityResults:v303 interestingnessResults:v304 obstructionResults:v305 classificationResults:v306 fineActionResults:v307 faceResults:v308 sceneSwitchFrequency:?];

      v309 = *&a4->var0.var3;
      *buf = *&a4->var0.var0;
      *&buf[16] = v309;
      *&buf[32] = *&a4->var1.var1;
      LODWORD(v458) = [(VCPVideoActivityAnalyzer *)v430 finishAnalysisPass:buf fpsRate:COERCE_DOUBLE(__PAIR64__(*&buf[36], v302))];
      if (v458)
      {
        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F62FD0;
        }

        v50 = 1;
LABEL_446:
        context = v445;
        goto LABEL_333;
      }

      v310 = [(VCPVideoActivityAnalyzer *)v430 results];
      [v484 addEntriesFromDictionary:v310];

      v311 = VCPSignPostLog();
      v312 = v311;
      if (v296 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v311))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v312, OS_SIGNPOST_INTERVAL_END, v296, "VCPMovieAnalyzer_Video_VCPVideoActivityAnalyzer", "", buf, 2u);
      }
    }

    if (v429)
    {
      v313 = VCPSignPostLog();
      v314 = os_signpost_id_generate(v313);

      v315 = VCPSignPostLog();
      v316 = v315;
      if (v314 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v315))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v316, OS_SIGNPOST_INTERVAL_BEGIN, v314, "VCPMovieAnalyzer_Video_VCPVideoSaliencyAnalyzer", "", buf, 2u);
      }

      v317 = *&a4->var0.var3;
      *buf = *&a4->var0.var0;
      *&buf[16] = v317;
      *&buf[32] = *&a4->var1.var1;
      context = [(VCPVideoSaliencyAnalyzer *)v429 finishAnalysisPass:buf];
      if (context)
      {
        if (!self->_errorCode)
        {
          LODWORD(v458) = 0;
          v318 = xmmword_1C9F62FE0;
LABEL_612:
          *&self->_errorCode = v318;
          goto LABEL_613;
        }

        goto LABEL_602;
      }

      v319 = [(VCPVideoSaliencyAnalyzer *)v429 results];
      [v484 addEntriesFromDictionary:v319];

      v320 = VCPSignPostLog();
      v321 = v320;
      if (v314 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v320))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v321, OS_SIGNPOST_INTERVAL_END, v314, "VCPMovieAnalyzer_Video_VCPVideoSaliencyAnalyzer", "", buf, 2u);
      }
    }

    if (v446)
    {
      v322 = VCPSignPostLog();
      v323 = os_signpost_id_generate(v322);

      v324 = VCPSignPostLog();
      v325 = v324;
      if (v323 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v324))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v325, OS_SIGNPOST_INTERVAL_BEGIN, v323, "VCPMovieAnalyzer_Video_VCPVideoHumanActionAnalyzer", "", buf, 2u);
      }

      v326 = *&a4->var0.var3;
      *buf = *&a4->var0.var0;
      *&buf[16] = v326;
      *&buf[32] = *&a4->var1.var1;
      context = [(VCPVideoHumanActionAnalyzer *)v446 finishAnalysisPass:buf];
      if (context)
      {
        if (!self->_errorCode)
        {
          LODWORD(v458) = 0;
          v318 = xmmword_1C9F62FF0;
          goto LABEL_612;
        }

LABEL_602:
        LODWORD(v458) = 0;
LABEL_613:
        v50 = 10;
        goto LABEL_333;
      }

      v329 = [(VCPVideoHumanActionAnalyzer *)v446 results];
      [v484 addEntriesFromDictionary:v329];

      v330 = self->_privateResults;
      v331 = [(VCPVideoHumanActionAnalyzer *)v446 privateResults];
      [(NSMutableDictionary *)v330 addEntriesFromDictionary:v331];

      v332 = VCPSignPostLog();
      v333 = v332;
      if (v323 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v332))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v333, OS_SIGNPOST_INTERVAL_END, v323, "VCPMovieAnalyzer_Video_VCPVideoHumanActionAnalyzer", "", buf, 2u);
      }
    }

    if (v444)
    {
      v334 = VCPSignPostLog();
      v335 = os_signpost_id_generate(v334);

      v336 = VCPSignPostLog();
      v337 = v336;
      if (v335 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v336))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v337, OS_SIGNPOST_INTERVAL_BEGIN, v335, "VCPMovieAnalyzer_Video_videoCaptionAnalyzer", "", buf, 2u);
      }

      v338 = *&a4->var0.var3;
      *buf = *&a4->var0.var0;
      *&buf[16] = v338;
      *&buf[32] = *&a4->var1.var1;
      context = [(VCPVideoCaptionAnalyzer *)v444 finishAnalysisPass:buf];
      if (context)
      {
        if (!self->_errorCode)
        {
          LODWORD(v458) = 0;
          v318 = xmmword_1C9F63000;
          goto LABEL_612;
        }

        goto LABEL_602;
      }

      v339 = [(VCPVideoCaptionAnalyzer *)v444 results];
      [v484 addEntriesFromDictionary:v339];

      v340 = VCPSignPostLog();
      v341 = v340;
      if (v335 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v340))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v341, OS_SIGNPOST_INTERVAL_END, v335, "VCPMovieAnalyzer_Video_videoCaptionAnalyzer", "", buf, 2u);
      }
    }

    if (v428)
    {
      v342 = VCPSignPostLog();
      v343 = os_signpost_id_generate(v342);

      v344 = VCPSignPostLog();
      v345 = v344;
      if (v343 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v344))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v345, OS_SIGNPOST_INTERVAL_BEGIN, v343, "VCPMovieAnalyzer_Video_VCPVideoPetsAnalyzer", "", buf, 2u);
      }

      v346 = *&a4->var0.var3;
      *buf = *&a4->var0.var0;
      *&buf[16] = v346;
      *&buf[32] = *&a4->var1.var1;
      context = [(VCPVideoPetsAnalyzer *)v428 finishAnalysisPass:buf];
      if (context)
      {
        if (!self->_errorCode)
        {
          LODWORD(v458) = 0;
          v318 = xmmword_1C9F63010;
          goto LABEL_612;
        }

        goto LABEL_602;
      }

      v347 = [(VCPVideoPetsAnalyzer *)v428 results];
      [v484 addEntriesFromDictionary:v347];

      v348 = VCPSignPostLog();
      v349 = v348;
      if (v343 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v348))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v349, OS_SIGNPOST_INTERVAL_END, v343, "VCPMovieAnalyzer_Video_VCPVideoPetsAnalyzer", "", buf, 2u);
      }
    }

    if (v427)
    {
      v350 = VCPSignPostLog();
      v351 = os_signpost_id_generate(v350);

      v352 = VCPSignPostLog();
      v353 = v352;
      if (v351 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v352))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v353, OS_SIGNPOST_INTERVAL_BEGIN, v351, "VCPMovieAnalyzer_Video_VCPVideoPetActionAnalyzer", "", buf, 2u);
      }

      v354 = *&a4->var0.var3;
      *buf = *&a4->var0.var0;
      *&buf[16] = v354;
      *&buf[32] = *&a4->var1.var1;
      context = [(VCPVideoPetsActionAnalyzer *)v427 finishAnalysisPass:buf];
      if (context)
      {
        if (!self->_errorCode)
        {
          LODWORD(v458) = 0;
          v318 = xmmword_1C9F63020;
          goto LABEL_612;
        }

        goto LABEL_602;
      }

      v355 = [(VCPVideoPetsActionAnalyzer *)v427 results];
      [v484 addEntriesFromDictionary:v355];

      v356 = VCPSignPostLog();
      v357 = v356;
      if (v351 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v356))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v357, OS_SIGNPOST_INTERVAL_END, v351, "VCPMovieAnalyzer_Video_VCPVideoPetActionAnalyzer", "", buf, 2u);
      }
    }

    if (v426)
    {
      v358 = VCPSignPostLog();
      v359 = os_signpost_id_generate(v358);

      v360 = VCPSignPostLog();
      v361 = v360;
      if (v359 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v360))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v361, OS_SIGNPOST_INTERVAL_BEGIN, v359, "VCPMovieAnalyzer_Video_VCPVideoAnimalAnalyzer", "", buf, 2u);
      }

      v362 = *&a4->var0.var3;
      *buf = *&a4->var0.var0;
      *&buf[16] = v362;
      *&buf[32] = *&a4->var1.var1;
      context = [(VCPVideoAnimalDetector *)v426 finishAnalysisPass:buf];
      if (context)
      {
        if (!self->_errorCode)
        {
          LODWORD(v458) = 0;
          v318 = xmmword_1C9F63030;
          goto LABEL_612;
        }

        goto LABEL_602;
      }

      v363 = [(VCPVideoAnimalDetector *)v426 results];
      [v484 addEntriesFromDictionary:v363];

      v364 = VCPSignPostLog();
      v365 = v364;
      if (v359 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v364))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v365, OS_SIGNPOST_INTERVAL_END, v359, "VCPMovieAnalyzer_Video_VCPVideoAnimalAnalyzer", "", buf, 2u);
      }
    }

    if (v425)
    {
      context = [(VCPMovieAnalyzer *)self _waitForAsyncAudioResults];
      if (context)
      {
        if (!self->_errorCode)
        {
          LODWORD(v458) = 0;
          v318 = xmmword_1C9F63040;
          goto LABEL_612;
        }

        goto LABEL_602;
      }

      v366 = VCPSignPostLog();
      v367 = os_signpost_id_generate(v366);

      v368 = VCPSignPostLog();
      v369 = v368;
      if (v367 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v368))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v369, OS_SIGNPOST_INTERVAL_BEGIN, v367, "VCPMovieAnalyzer_Video_VCPMovieCurationAnalyzer", "", buf, 2u);
      }

      [v485 naturalSize];
      contextb = v370;
      v459 = v371;
      if (v485)
      {
        [v485 preferredTransform];
        v372 = *&buf[16];
        v433 = *buf;
      }

      else
      {
        v372 = 0uLL;
        v433 = 0u;
      }

      v431 = v372;
      v373 = [(NSMutableDictionary *)self->_analysis vcp_results];
      v374 = [(NSMutableDictionary *)self->_analysis vcp_types];
      v375 = [(VCPVideoCNNAnalyzer *)v440 privateResults];
      v376 = [v436 faceRanges];
      [(VCPMovieCurationAnalyzer *)v425 loadVideoAnalysisResults:v484 audioAnalysisResults:v373 resultTypes:v374 videoCNNResults:v375 andFaceRanges:v376 frameSize:vabsq_f64(vmlaq_n_f64(vmulq_n_f64(v431, v459), v433, contextb))];

      context = [(VCPMovieCurationAnalyzer *)v425 generateMovieCurations];
      if (context)
      {
        if (!self->_errorCode)
        {
          LODWORD(v458) = 0;
          v318 = xmmword_1C9F63050;
          goto LABEL_612;
        }

        goto LABEL_602;
      }

      v377 = [(VCPMovieCurationAnalyzer *)v425 results];
      [v484 addEntriesFromDictionary:v377];

      v378 = VCPSignPostLog();
      v379 = v378;
      if (v367 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v378))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v379, OS_SIGNPOST_INTERVAL_END, v367, "VCPMovieAnalyzer_Video_VCPMovieCurationAnalyzer", "", buf, 2u);
      }
    }

    if (v443)
    {
      v380 = VCPSignPostLog();
      v381 = os_signpost_id_generate(v380);

      v382 = VCPSignPostLog();
      v383 = v382;
      if (v381 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v382))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v383, OS_SIGNPOST_INTERVAL_BEGIN, v381, "VCPMovieAnalyzer_Video_VCPVideoStabilizer", "", buf, 2u);
      }

      context = [v443 convertAnalysisResult];
      if (context)
      {
        if (!self->_errorCode)
        {
          LODWORD(v458) = 0;
          v318 = xmmword_1C9F63060;
          goto LABEL_612;
        }

        goto LABEL_602;
      }

      v384 = *&a4->var0.var3;
      *buf = *&a4->var0.var0;
      *&buf[16] = v384;
      *&buf[32] = *&a4->var1.var1;
      context = [v443 finishAnalysisPass:buf];
      if (context)
      {
        if (!self->_errorCode)
        {
          LODWORD(v458) = 0;
          v318 = xmmword_1C9F63070;
          goto LABEL_612;
        }

        goto LABEL_602;
      }

      v385 = [v443 results];
      [v484 addEntriesFromDictionary:v385];

      v386 = VCPSignPostLog();
      v387 = v386;
      if (v381 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v386))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v387, OS_SIGNPOST_INTERVAL_END, v381, "VCPMovieAnalyzer_Video_VCPVideoStabilizer", "", buf, 2u);
      }
    }

    if (v441 && ![(VCPVideoInterpolator *)v441 processAborted])
    {
      v388 = VCPSignPostLog();
      v389 = os_signpost_id_generate(v388);

      v390 = VCPSignPostLog();
      v391 = v390;
      if (v389 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v390))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v391, OS_SIGNPOST_INTERVAL_BEGIN, v389, "VCPMovieAnalyzer_Video_VCPVideoInterpolator", "", buf, 2u);
      }

      v392 = *&a4->var0.var3;
      *buf = *&a4->var0.var0;
      *&buf[16] = v392;
      *&buf[32] = *&a4->var1.var1;
      context = [(VCPVideoInterpolator *)v441 finishAnalysisPass:buf];
      if (context)
      {
        if (!self->_errorCode)
        {
          LODWORD(v458) = 0;
          v318 = xmmword_1C9F63080;
          goto LABEL_612;
        }

        goto LABEL_602;
      }

      v393 = [(VCPVideoInterpolator *)v441 results];
      [v484 addEntriesFromDictionary:v393];

      v394 = VCPSignPostLog();
      v395 = v394;
      if (v389 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v394))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v395, OS_SIGNPOST_INTERVAL_END, v389, "VCPMovieAnalyzer_Video_VCPVideoInterpolator", "", buf, 2u);
      }
    }

    if (v442)
    {
      v396 = VCPSignPostLog();
      v397 = os_signpost_id_generate(v396);

      v398 = VCPSignPostLog();
      v399 = v398;
      if (v397 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v398))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v399, OS_SIGNPOST_INTERVAL_BEGIN, v397, "VCPMovieAnalyzer_Video_VCPSettlingEffectAnalyzer", "", buf, 2u);
      }

      if (![(VCPSettlingEffectAnalyzer *)v442 processAborted])
      {
        [v485 vcp_fullFrameSize];
        v401 = v400;
        v403 = v402;
        v501 = 0;
        *time = 0;
        v404 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"LivePhotoKeyFrameTimestamp"];
        v405 = v404 == 0;

        if (v405)
        {
          if (v401 >= v403)
          {
            v409 = v401;
          }

          else
          {
            v409 = v403;
          }

          *buf = [(VCPAsset *)self->_asset imageWithPreferredDimension:v409 orientation:&v501];
          CF<__CVBuffer *>::operator=(time, buf);
          CF<__CVBuffer *>::~CF(buf);
        }

        else
        {
          v406 = [v485 asset];
          v407 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"LivePhotoKeyFrameTimestamp"];
          CMTimeMakeFromDictionary(buf, v407);
          if (v401 >= v403)
          {
            v408 = v401;
          }

          else
          {
            v408 = v403;
          }

          *&v540[0] = [v406 vcp_frameAtTimeStamp:buf withMaxDimension:v408];
          CF<__CVBuffer *>::operator=(time, v540);
          CF<__CVBuffer *>::~CF(v540);
        }

        [(VCPSettlingEffectAnalyzer *)v442 adjustedTimeRange];
        context = [(VCPSettlingEffectAnalyzer *)v442 finishAnalysisPass:buf withStillImageBuffer:*time];
        if (context)
        {
          if (!self->_errorCode)
          {
            *&self->_errorCode = xmmword_1C9F63090;
          }

          CF<__CVBuffer *>::~CF(time);
          goto LABEL_602;
        }

        CF<__CVBuffer *>::~CF(time);
      }

      v410 = [(VCPSettlingEffectAnalyzer *)v442 results];
      [v484 addEntriesFromDictionary:v410];

      v411 = VCPSignPostLog();
      v412 = v411;
      if (v397 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v411))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v412, OS_SIGNPOST_INTERVAL_END, v397, "VCPMovieAnalyzer_Video_VCPSettlingEffectAnalyzer", "", buf, 2u);
      }
    }

    if (v454)
    {
      v413 = VCPSignPostLog();
      v414 = os_signpost_id_generate(v413);

      v415 = VCPSignPostLog();
      v416 = v415;
      if (v414 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v415))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v416, OS_SIGNPOST_INTERVAL_BEGIN, v414, "VCPMovieAnalyzer_Video_MADVideoSafetyClassifier", "", buf, 2u);
      }

      v417 = *&a4->var0.var3;
      *buf = *&a4->var0.var0;
      *&buf[16] = v417;
      *&buf[32] = *&a4->var1.var1;
      context = [(MADVideoSafetyClassifier *)v454 finishAnalysisPass:buf];
      if (context)
      {
        if (!self->_errorCode)
        {
          LODWORD(v458) = 0;
          v318 = xmmword_1C9F630A0;
          goto LABEL_612;
        }

        goto LABEL_602;
      }

      v418 = [(MADVideoSafetyClassifier *)v454 results];
      [v484 addEntriesFromDictionary:v418];

      v419 = VCPSignPostLog();
      v420 = v419;
      if (v414 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v419))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v420, OS_SIGNPOST_INTERVAL_END, v414, "VCPMovieAnalyzer_Video_MADVideoSafetyClassifier", "", buf, 2u);
      }
    }

    v421 = VCPSignPostLog();
    v422 = v421;
    if (v435 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v421))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v422, OS_SIGNPOST_INTERVAL_END, v435, "VCPMovieAnalyzer_AnalyzeVideoSegment_PostProcessing", "", buf, 2u);
    }

    v50 = 0;
    LODWORD(v458) = 0;
    goto LABEL_446;
  }

  v183 = VCPSignPostLog();
  v184 = os_signpost_id_generate(v183);

  v185 = VCPSignPostLog();
  v186 = v185;
  if (v184 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v185))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v186, OS_SIGNPOST_INTERVAL_BEGIN, v184, "VCPMovieAnalyzer_Video_VCPVideoFaceDetector", "", buf, 2u);
  }

  v187 = *&a4->var0.var3;
  *buf = *&a4->var0.var0;
  *&buf[16] = v187;
  *&buf[32] = *&a4->var1.var1;
  context = [v436 finishAnalysisPass:buf];
  if (!context)
  {
    v190 = [v436 results];
    [v484 addEntriesFromDictionary:v190];

    v191 = VCPSignPostLog();
    v192 = v191;
    if (v184 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v191))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v192, OS_SIGNPOST_INTERVAL_END, v184, "VCPMovieAnalyzer_Video_VCPVideoFaceDetector", "", buf, 2u);
    }

    goto LABEL_313;
  }

  v188 = self;
  if (!self->_errorCode)
  {
    v189 = xmmword_1C9F62FA0;
    goto LABEL_331;
  }

LABEL_332:
  v50 = 10;
LABEL_333:

  v47 = v444;
  v48 = v446;
  v481 = v440;
LABEL_334:

LABEL_335:
LABEL_336:
  v49 = v455;
LABEL_337:
  v29 = v462;
LABEL_338:

  objc_autoreleasePoolPop(v469);
  if (v50)
  {
LABEL_339:
    v210 = context;
    goto LABEL_393;
  }

  if (!v481)
  {
    goto LABEL_363;
  }

  v210 = [(VCPMovieAnalyzer *)self _waitForAsyncAudioResults];
  if (!v210)
  {
    v213 = VCPSignPostLog();
    v214 = os_signpost_id_generate(v213);

    v215 = VCPSignPostLog();
    v216 = v215;
    if (v214 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v215))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v216, OS_SIGNPOST_INTERVAL_BEGIN, v214, "VCPMovieAnalyzer_AnalyzeVideoSegment_PostProcessing", "", buf, 2u);
    }

    v217 = VCPSignPostLog();
    v218 = os_signpost_id_generate(v217);

    v219 = VCPSignPostLog();
    v220 = v219;
    if (v218 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v219))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v220, OS_SIGNPOST_INTERVAL_BEGIN, v218, "VCPMovieAnalyzer_Video_VCPVideoCNNAnalyzer", "", buf, 2u);
    }

    v221 = [(NSMutableDictionary *)self->_analysis vcp_results];
    v222 = [v221 objectForKeyedSubscript:@"VoiceResults"];
    v210 = [(VCPVideoCNNAnalyzer *)v481 loadAnalysisResults:v484 audioResults:v222];

    if (v210)
    {
      v211 = self;
      if (self->_errorCode)
      {
        goto LABEL_392;
      }

      v212 = xmmword_1C9F630C0;
LABEL_391:
      *&v211->_errorCode = v212;
      goto LABEL_392;
    }

    v223 = *&a4->var0.var3;
    *buf = *&a4->var0.var0;
    *&buf[16] = v223;
    *&buf[32] = *&a4->var1.var1;
    v210 = [(VCPVideoCNNAnalyzer *)v481 finishAnalysisPass:buf];
    if (v210)
    {
      v211 = self;
      if (self->_errorCode)
      {
        goto LABEL_392;
      }

      v212 = xmmword_1C9F630D0;
      goto LABEL_391;
    }

    v224 = [(VCPVideoCNNAnalyzer *)v481 results];
    [v484 addEntriesFromDictionary:v224];

    v225 = self->_privateResults;
    v226 = [(VCPVideoCNNAnalyzer *)v481 privateResults];
    [(NSMutableDictionary *)v225 addEntriesFromDictionary:v226];

    v227 = VCPSignPostLog();
    v228 = v227;
    if (v218 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v227))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v228, OS_SIGNPOST_INTERVAL_END, v218, "VCPMovieAnalyzer_Video_VCPVideoCNNAnalyzer", "", buf, 2u);
    }

    v229 = VCPSignPostLog();
    v230 = v229;
    if (v214 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v229))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v230, OS_SIGNPOST_INTERVAL_END, v214, "VCPMovieAnalyzer_AnalyzeVideoSegment_PostProcessing", "", buf, 2u);
    }

LABEL_363:
    if (([(VCPAsset *)self->_asset isLivePhoto]& (v490 >> 45) & 1) != 1)
    {
      goto LABEL_387;
    }

    v231 = [(VCPVideoCNNAnalyzer *)v481 results];
    v232 = [v231 objectForKeyedSubscript:@"HumanActionClassificationResults"];
    v233 = v232 == 0;

    v235 = 0.0;
    if (!v233)
    {
      v499 = 0u;
      v500 = 0u;
      v497 = 0u;
      v498 = 0u;
      v236 = [(VCPVideoCNNAnalyzer *)v481 results];
      obja = [v236 objectForKeyedSubscript:@"HumanActionClassificationResults"];

      v237 = [obja countByEnumeratingWithState:&v497 objects:v553 count:16];
      if (v237)
      {
        v491 = *v498;
        do
        {
          for (i = 0; i != v237; ++i)
          {
            if (*v498 != v491)
            {
              objc_enumerationMutation(obja);
            }

            v239 = [*(*(&v497 + 1) + 8 * i) objectForKeyedSubscript:@"attributes"];
            v240 = [v239 objectForKeyedSubscript:@"humanActions"];

            v241 = [v240 allKeys];
            v495 = 0u;
            v496 = 0u;
            v493 = 0u;
            v494 = 0u;
            v242 = v241;
            v243 = [v242 countByEnumeratingWithState:&v493 objects:v552 count:16];
            if (v243)
            {
              v244 = *v494;
              do
              {
                for (j = 0; j != v243; ++j)
                {
                  if (*v494 != v244)
                  {
                    objc_enumerationMutation(v242);
                  }

                  v246 = *(*(&v493 + 1) + 8 * j);
                  if ([v246 intValue])
                  {
                    v247 = [v240 objectForKeyedSubscript:v246];
                    [v247 floatValue];
                    v249 = v248 > v235;

                    if (v249)
                    {
                      v250 = [v240 objectForKeyedSubscript:v246];
                      [v250 floatValue];
                      v235 = v251;
                    }
                  }
                }

                v243 = [v242 countByEnumeratingWithState:&v493 objects:v552 count:16];
              }

              while (v243);
            }
          }

          v237 = [obja countByEnumeratingWithState:&v497 objects:v553 count:16];
        }

        while (v237);

        if (v235 > 0.1)
        {
          v252 = 1;
LABEL_386:
          v550 = @"VideoCaptionPreferenceResults";
          v547 = @"attributes";
          v545[0] = @"videoCaptionPreferenceScore";
          *&v234 = v235;
          v253 = [MEMORY[0x1E696AD98] numberWithFloat:v234];
          v546[0] = v253;
          v545[1] = @"videoCaptionPreference";
          v254 = [MEMORY[0x1E696AD98] numberWithBool:v252];
          v546[1] = v254;
          v255 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v546 forKeys:v545 count:2];
          v548 = v255;
          v256 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v548 forKeys:&v547 count:1];
          v549 = v256;
          v257 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v549 count:1];
          v551 = v257;
          v258 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v551 forKeys:&v550 count:1];

          [v484 addEntriesFromDictionary:v258];
LABEL_387:
          if (v477)
          {
            v210 = [(VCPMovieAnalyzer *)self _waitForAsyncAudioResults];
            if (v210)
            {
              v211 = self;
              if (self->_errorCode)
              {
                goto LABEL_392;
              }

              v212 = xmmword_1C9F630E0;
              goto LABEL_391;
            }

            v263 = VCPSignPostLog();
            v264 = os_signpost_id_generate(v263);

            v265 = VCPSignPostLog();
            v266 = v265;
            if (v264 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v265))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v266, OS_SIGNPOST_INTERVAL_BEGIN, v264, "VCPMovieAnalyzer_Video_VCPAudioVideoEmbeddingFuser", "", buf, 2u);
            }

            v267 = [(NSMutableDictionary *)self->_analysis vcp_results];
            v268 = [v267 objectForKeyedSubscript:@"AudioEmbeddingResults"];
            v269 = [v484 objectForKeyedSubscript:@"VideoEmbeddingResults"];
            v270 = [(VCPAudioVideoEmbeddingFuser *)v477 loadAudioEmbeddingResults:v268 andVideoEmbeddingResults:v269];

            if (v270)
            {
              if (!self->_errorCode)
              {
                *&self->_errorCode = xmmword_1C9F630F0;
              }

              v50 = 1;
              v210 = context;
              LODWORD(v458) = v270;
              goto LABEL_393;
            }

            v271 = [(VCPAudioVideoEmbeddingFuser *)v477 fuse:v475];
            if (v271)
            {
              if (!self->_errorCode)
              {
                *&self->_errorCode = xmmword_1C9F63100;
              }

              v50 = 1;
              v210 = context;
              LODWORD(v458) = v271;
              goto LABEL_393;
            }

            v272 = [(VCPAudioVideoEmbeddingFuser *)v477 results];
            [v484 addEntriesFromDictionary:v272];

            v273 = VCPSignPostLog();
            v274 = v273;
            if (v264 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v273))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v274, OS_SIGNPOST_INTERVAL_END, v264, "VCPMovieAnalyzer_Video_VCPAudioVideoEmbeddingFuser", "", buf, 2u);
            }
          }

          if (v471)
          {
            v275 = VCPSignPostLog();
            v276 = os_signpost_id_generate(v275);

            v277 = VCPSignPostLog();
            v278 = v277;
            if (v276 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v277))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v278, OS_SIGNPOST_INTERVAL_BEGIN, v276, "VCPMovieAnalyzer_Video_VCPVideoThumbnailAnalyzer", "", buf, 2u);
            }

            v279 = +[VCPMovieAnalyzer MaxNumThumbnailsPerVideo];
            *buf = *&a4->var1.var0;
            *&buf[16] = a4->var1.var3;
            Seconds = CMTimeGetSeconds(buf);
            if (v485)
            {
              [v485 timeRange];
            }

            else
            {
              memset(buf, 0, 48);
            }

            *time = *&buf[24];
            *&time[16] = *&buf[40];
            v281 = CMTimeGetSeconds(time);
            v282 = [(NSMutableDictionary *)self->_analysis vcp_results];
            v283 = [v282 objectForKeyedSubscript:@"VideoThumbnailResults"];

            v284 = [v283 count];
            v285 = vcvtpd_s64_f64(Seconds / v281 * v279);
            if (v279 - v284 >= v285)
            {
              v286 = v285;
            }

            else
            {
              v286 = (v279 - v284);
            }

            v287 = self->_privateResults;
            v288 = *&a4->var0.var3;
            *buf = *&a4->var0.var0;
            *&buf[16] = v288;
            *&buf[32] = *&a4->var1.var1;
            v289 = [(VCPVideoThumbnailAnalyzer *)v471 addThumbnailToResults:v484 withPrivateResults:v287 videoRange:buf assetMaxNumThumbnails:v286];

            v290 = VCPSignPostLog();
            v291 = v290;
            if (v276 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v290))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v291, OS_SIGNPOST_INTERVAL_END, v276, "VCPMovieAnalyzer_Video_VCPVideoThumbnailAnalyzer", "", buf, 2u);
            }

            v50 = 0;
            v484 = v289;
          }

          else
          {
            v50 = 0;
          }

          goto LABEL_339;
        }
      }

      else
      {
      }
    }

    v252 = 0;
    goto LABEL_386;
  }

  v211 = self;
  if (!self->_errorCode)
  {
    v212 = xmmword_1C9F630B0;
    goto LABEL_391;
  }

LABEL_392:
  v50 = 10;
LABEL_393:

  objc_autoreleasePoolPop(v468);
  v259 = v458;
  if (v50 == 10)
  {
LABEL_399:
    v259 = v210;
  }

  else if (!v50)
  {
    [(VCPMovieAnalyzer *)self postProcessAutoPlayable:v484];
    [(VCPMovieAnalyzer *)self postProcessAnimalResults:v484];
    [(NSMutableDictionary *)self->_analysis vcp_addFlags:v464];
    [(NSMutableDictionary *)self->_analysis vcp_appendResults:v484];
    v260 = VCPSignPostLog();
    v261 = v260;
    if (v460 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v260))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v261, OS_SIGNPOST_INTERVAL_END, spid, "VCPMovieAnalyzer_AnalyzeVideoSegment", "", buf, 2u);
    }

    goto LABEL_399;
  }

  return v259;
}

uint64_t __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke(uint64_t a1, void *a2)
{
  v111 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = VCPSignPostLog();
  v5 = os_signpost_id_generate(v4);

  v6 = VCPSignPostLog();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(buf.start.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock0", "", &buf, 2u);
  }

  v105 = 0;
  if ((*(*(a1 + 120) + 16))())
  {
    v8 = 4294967168;
    goto LABEL_112;
  }

  if (!v3)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.start.value) = 138412290;
      *(&buf.start.value + 4) = @"[pipelineBlock0]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid currFrameResource.", &buf, 0xCu);
    }

    v23 = *(a1 + 32);
    v19 = a1 + 32;
    v22 = v23;
    if (*(v23 + 144))
    {
      goto LABEL_25;
    }

    *(v22 + 144) = 45;
    v8 = 4294967278;
    v21 = 949;
    goto LABEL_111;
  }

  v9 = [v3 frameSampleBuffer];
  v10 = v9;
  if (!v9)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.start.value) = 138412290;
      *(&buf.start.value + 4) = @"[pipelineBlock0]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid frameSampleBuffer.", &buf, 0xCu);
    }

    v25 = *(a1 + 32);
    v19 = a1 + 32;
    v24 = v25;
    if (*(v25 + 144))
    {
LABEL_25:
      v8 = 4294967278;
      goto LABEL_112;
    }

    *(v24 + 144) = 45;
    v8 = 4294967278;
    v21 = 951;
LABEL_111:
    *(*v19 + 152) = v21;
    goto LABEL_112;
  }

  CMSampleBufferGetPresentationTimeStamp(&buf.start, v9);
  v108 = *&buf.start.value;
  epoch = buf.start.epoch;
  CMSampleBufferGetDuration(&buf.start, v10);
  v106 = *&buf.start.value;
  v107 = buf.start.epoch;
  ImageBuffer = CMSampleBufferGetImageBuffer(v10);
  v105 = [v3 frameFlags];
  if (*(a1 + 40) || (v8 = CVPixelBufferFillExtendedPixels(ImageBuffer), !v8))
  {
    if (*(a1 + 48))
    {
      v12 = VCPSignPostLog();
      v13 = os_signpost_id_generate(v12);

      v14 = VCPSignPostLog();
      v15 = v14;
      if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VCPMovieAnalyzer_Video_VCPVideoFaceDetector", "", &buf, 2u);
      }

      v16 = *(a1 + 48);
      *&buf.start.value = v108;
      buf.start.epoch = epoch;
      v17 = [v3 frameStats];
      v8 = [v16 analyzeFrame:ImageBuffer timestamp:&buf duration:v104 frameStats:v17 flags:&v105];

      if (v8)
      {
        v20 = *(a1 + 32);
        v19 = a1 + 32;
        v18 = v20;
        if (*(v20 + 144))
        {
          goto LABEL_112;
        }

        *(v18 + 144) = 45;
        v21 = 970;
        goto LABEL_111;
      }

      v27 = VCPSignPostLog();
      v28 = v27;
      if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_END, v13, "VCPMovieAnalyzer_Video_VCPVideoFaceDetector", "", &buf, 2u);
      }
    }

    if (*(a1 + 56))
    {
      v29 = VCPSignPostLog();
      v30 = os_signpost_id_generate(v29);

      v31 = VCPSignPostLog();
      v32 = v31;
      if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "VCPMovieAnalyzer_Video_VCPVideoSceneClassifier", "", &buf, 2u);
      }

      v33 = *(a1 + 56);
      *&buf.start.value = v108;
      buf.start.epoch = epoch;
      *v104 = v106;
      *&v104[16] = v107;
      v8 = [v33 analyzeFrame:ImageBuffer withTimestamp:&buf andDuration:v104 flags:&v105];
      if (v8)
      {
        v35 = *(a1 + 32);
        v19 = a1 + 32;
        v34 = v35;
        if (*(v35 + 144))
        {
          goto LABEL_112;
        }

        *(v34 + 144) = 45;
        v21 = 980;
        goto LABEL_111;
      }

      v36 = [*(a1 + 56) frameScenes];
      [v3 setSceneAnalysisResults:v36];

      v37 = VCPSignPostLog();
      v38 = v37;
      if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v38, OS_SIGNPOST_INTERVAL_END, v30, "VCPMovieAnalyzer_Video_VCPVideoSceneClassifier", "", &buf, 2u);
      }
    }

    if (*(a1 + 64))
    {
      v39 = VCPSignPostLog();
      v40 = os_signpost_id_generate(v39);

      v41 = VCPSignPostLog();
      v42 = v41;
      if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v42, OS_SIGNPOST_INTERVAL_BEGIN, v40, "VCPMovieAnalyzer_Video_VCPVideoSaliencyAnalyzer", "", &buf, 2u);
      }

      v43 = *(a1 + 64);
      *&buf.start.value = v108;
      buf.start.epoch = epoch;
      *v104 = v106;
      *&v104[16] = v107;
      v8 = [v43 analyzeFrame:ImageBuffer withTimestamp:&buf andDuration:v104 flags:&v105];
      if (v8)
      {
        v45 = *(a1 + 32);
        v19 = a1 + 32;
        v44 = v45;
        if (*(v45 + 144))
        {
          goto LABEL_112;
        }

        *(v44 + 144) = 79;
        v21 = 991;
        goto LABEL_111;
      }

      v46 = VCPSignPostLog();
      v47 = v46;
      if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v47, OS_SIGNPOST_INTERVAL_END, v40, "VCPMovieAnalyzer_Video_VCPVideoSaliencyAnalyzer", "", &buf, 2u);
      }
    }

    v48 = *(a1 + 72);
    if (v48)
    {
      *&buf.start.value = v108;
      buf.start.epoch = epoch;
      [v48 timeRangeAtTime:&buf];
      buf = *&v104[56];
      [v3 setPredictedTimeRange:&buf];
      v49 = *(a1 + 72);
      *&buf.start.value = v108;
      buf.start.epoch = epoch;
      [v49 updateForTime:&buf];
    }

    if (*(a1 + 80))
    {
      v50 = VCPSignPostLog();
      v51 = os_signpost_id_generate(v50);

      v52 = VCPSignPostLog();
      v53 = v52;
      if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v53, OS_SIGNPOST_INTERVAL_BEGIN, v51, "VCPMovieAnalyzer_Video_VCPVideoHumanActionAnalyzer", "", &buf, 2u);
      }

      v54 = *(a1 + 80);
      *&buf.start.value = v108;
      buf.start.epoch = epoch;
      v55 = [v3 frameStats];
      v8 = [v54 analyzeFrame:ImageBuffer timestamp:&buf duration:v104 frameStats:v55 flags:&v105];

      if (v8)
      {
        v57 = *(a1 + 32);
        v19 = a1 + 32;
        v56 = v57;
        if (*(v57 + 144))
        {
          goto LABEL_112;
        }

        *(v56 + 144) = 68;
        v21 = 1007;
        goto LABEL_111;
      }

      [v3 predictedTimeRange];
      v58 = *(MEMORY[0x1E6960C98] + 16);
      *v104 = *MEMORY[0x1E6960C98];
      *&v104[16] = v58;
      *&v104[32] = *(MEMORY[0x1E6960C98] + 32);
      if (!CMTimeRangeEqual(&buf, v104))
      {
        v59 = *(a1 + 80);
        [v3 predictedTimeRange];
        v60 = [v59 clipResults:&buf];
        [v3 setActionAnalysisResults:v60];
      }

      v61 = VCPSignPostLog();
      v62 = v61;
      if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v62, OS_SIGNPOST_INTERVAL_END, v51, "VCPMovieAnalyzer_Video_VCPVideoHumanActionAnalyzer", "", &buf, 2u);
      }
    }

    if (*(a1 + 88))
    {
      v63 = VCPSignPostLog();
      v64 = os_signpost_id_generate(v63);

      v65 = VCPSignPostLog();
      v66 = v65;
      if (v64 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v66, OS_SIGNPOST_INTERVAL_BEGIN, v64, "VCPMovieAnalyzer_Video_VCPVideoCaptionAnalyzer", "", &buf, 2u);
      }

      v67 = *(a1 + 88);
      *&buf.start.value = v108;
      buf.start.epoch = epoch;
      *v104 = v106;
      *&v104[16] = v107;
      v8 = [v67 analyzeFrame:ImageBuffer withTimestamp:&buf andDuration:v104 flags:&v105];
      if (v8)
      {
        v69 = *(a1 + 32);
        v19 = a1 + 32;
        v68 = v69;
        if (*(v69 + 144))
        {
          goto LABEL_112;
        }

        *(v68 + 144) = 63;
        v21 = 1021;
        goto LABEL_111;
      }

      v70 = VCPSignPostLog();
      v71 = v70;
      if (v64 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v70))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v71, OS_SIGNPOST_INTERVAL_END, v64, "VCPMovieAnalyzer_Video_VCPVideoCaptionAnalyzer", "", &buf, 2u);
      }
    }

    if (*(a1 + 96))
    {
      v72 = VCPSignPostLog();
      v73 = os_signpost_id_generate(v72);

      v74 = VCPSignPostLog();
      v75 = v74;
      if (v73 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v74))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v75, OS_SIGNPOST_INTERVAL_BEGIN, v73, "VCPMovieAnalyzer_Video_VCPVideoPetsAnalyzer", "", &buf, 2u);
      }

      v76 = *(a1 + 96);
      *&buf.start.value = v108;
      buf.start.epoch = epoch;
      v77 = [v3 frameStats];
      v8 = [v76 analyzeFrame:ImageBuffer withTimestamp:&buf andDuration:v104 flags:&v105 frameStats:v77];

      if (v8)
      {
        v79 = *(a1 + 32);
        v19 = a1 + 32;
        v78 = v79;
        if (*(v79 + 144))
        {
          goto LABEL_112;
        }

        *(v78 + 144) = 78;
        v21 = 1033;
        goto LABEL_111;
      }

      v80 = VCPSignPostLog();
      v81 = v80;
      if (v73 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v80))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v81, OS_SIGNPOST_INTERVAL_END, v73, "VCPMovieAnalyzer_Video_VCPVideoPetsAnalyzer", "", &buf, 2u);
      }
    }

    if (*(a1 + 104))
    {
      v82 = VCPSignPostLog();
      v83 = os_signpost_id_generate(v82);

      v84 = VCPSignPostLog();
      v85 = v84;
      if (v83 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v84))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v85, OS_SIGNPOST_INTERVAL_BEGIN, v83, "VCPMovieAnalyzer_Video_VCPVideoAnimalAnalyzer", "", &buf, 2u);
      }

      v86 = *(a1 + 104);
      *&buf.start.value = v108;
      buf.start.epoch = epoch;
      *v104 = v106;
      *&v104[16] = v107;
      v8 = [v86 analyzeFrame:ImageBuffer withTimestamp:&buf andDuration:v104 flags:&v105];
      if (v8)
      {
        v88 = *(a1 + 32);
        v19 = a1 + 32;
        v87 = v88;
        if (*(v88 + 144))
        {
          goto LABEL_112;
        }

        *(v87 + 144) = 78;
        v21 = 1044;
        goto LABEL_111;
      }

      v89 = VCPSignPostLog();
      v90 = v89;
      if (v83 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v89))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v90, OS_SIGNPOST_INTERVAL_END, v83, "VCPMovieAnalyzer_Video_VCPVideoAnimalAnalyzer", "", &buf, 2u);
      }
    }

    if (*(a1 + 112))
    {
      v91 = VCPSignPostLog();
      v92 = os_signpost_id_generate(v91);

      v93 = VCPSignPostLog();
      v94 = v93;
      if (v92 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v93))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v94, OS_SIGNPOST_INTERVAL_BEGIN, v92, "VCPMovieAnalyzer_Video_VCPVideoPetActionAnalyzer", "", &buf, 2u);
      }

      v95 = *(a1 + 112);
      *&buf.start.value = v108;
      buf.start.epoch = epoch;
      v96 = [v3 frameStats];
      v8 = [v95 analyzeFrame:ImageBuffer timestamp:&buf duration:v104 frameStats:v96 flags:&v105];

      if (v8)
      {
        v98 = *(a1 + 32);
        v19 = a1 + 32;
        v97 = v98;
        if (*(v98 + 144))
        {
          goto LABEL_112;
        }

        *(v97 + 144) = 77;
        v21 = 1056;
        goto LABEL_111;
      }

      v102 = VCPSignPostLog();
      v103 = v102;
      if (v92 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v102))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v103, OS_SIGNPOST_INTERVAL_END, v92, "VCPMovieAnalyzer_Video_VCPVideoPetActionAnalyzer", "", &buf, 2u);
      }
    }

    [v3 setFrameFlags:v105];
    v8 = 0;
LABEL_112:
    v99 = VCPSignPostLog();
    v100 = v99;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v99))
    {
      LOWORD(buf.start.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v100, OS_SIGNPOST_INTERVAL_END, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock0", "", &buf, 2u);
    }

    goto LABEL_116;
  }

  v26 = *(a1 + 32);
  if (!*(v26 + 144))
  {
    *(v26 + 144) = 45;
    *(*(a1 + 32) + 152) = 960;
  }

LABEL_116:

  return v8;
}

uint64_t __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_707(uint64_t a1, void *a2, opaqueCMSampleBuffer *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = VCPSignPostLog();
  v7 = os_signpost_id_generate(v6);

  v8 = VCPSignPostLog();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(buf.start.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock1", "", &buf, 2u);
  }

  v46 = 0;
  if (((*(*(a1 + 48) + 16))() & 1) == 0)
  {
    if (v5)
    {
      v11 = [v5 frameSampleBuffer];
      v12 = v11;
      if (v11)
      {
        CMSampleBufferGetPresentationTimeStamp(&buf.start, v11);
        v49 = *&buf.start.value;
        epoch = buf.start.epoch;
        CMSampleBufferGetDuration(&buf.start, v12);
        v47 = *&buf.start.value;
        v48 = buf.start.epoch;
        ImageBuffer = CMSampleBufferGetImageBuffer(v12);
        v14 = [v5 frameFlags];
        v46 = v14;
        if (*(a1 + 40))
        {
          v15 = (a1 + 32);
          if ([*(*(a1 + 32) + 32) isSlowmo])
          {
            if (a3)
            {
              v16 = CMSampleBufferGetImageBuffer(a3);
            }

            else
            {
              v16 = 0;
            }

            [*(a1 + 40) setNextCaptureFrame:v16];
          }

          if (*(a1 + 56) == 1)
          {
            v23 = *(a1 + 40);
            v24 = [v5 sceneAnalysisResults];
            [v23 prepareVideoAnalysisByScenes:v24];
          }

          if ((*(*v15 + 56) & 1) == 0 && [*(*v15 + 32) isLivePhoto])
          {
            v25 = *v15;
            if ((*(*v15 + 57) & 1) == 0)
            {
              v26 = *(a1 + 40);
              v27 = [*(v25 + 32) scenes];
              [v26 prepareLivePhotoAnalysisByScenes:v27];

              v25 = *v15;
            }

            v28 = *(a1 + 40);
            v29 = [*(v25 + 32) scenes];
            [v28 prepareVideoAnalysisByScenes:v29];

            *(*v15 + 56) = 1;
          }

          v30 = [VCPSaliencyRegion salientRegionsFromPixelBuffer:ImageBuffer];
          [VCPSaliencyRegion attachSalientRegions:v30 toPixelBuffer:ImageBuffer];

          v31 = VCPSignPostLog();
          v32 = os_signpost_id_generate(v31);

          v33 = VCPSignPostLog();
          v34 = v33;
          if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
          {
            LOWORD(buf.start.value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v34, OS_SIGNPOST_INTERVAL_BEGIN, v32, "VCPMovieAnalyzer_Video_VCPFullVideoAnalyzer", "", &buf, 2u);
          }

          v35 = *(a1 + 40);
          *&buf.start.value = v49;
          buf.start.epoch = epoch;
          v36 = [v5 frameStats];
          v10 = [v35 analyzeFrame:ImageBuffer timestamp:&buf duration:&v45 frameStats:v36 flags:&v46 cancel:*(a1 + 48)];

          if (v10)
          {
            if (*(*v15 + 144))
            {
              goto LABEL_47;
            }

            *(*v15 + 144) = 62;
            v20 = 1114;
LABEL_39:
            *(*v15 + 152) = v20;
            goto LABEL_47;
          }

          [v5 predictedTimeRange];
          v37 = *(MEMORY[0x1E6960C98] + 16);
          *&v45.start.value = *MEMORY[0x1E6960C98];
          *&v45.start.epoch = v37;
          *&v45.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
          if (!CMTimeRangeEqual(&buf, &v45))
          {
            v38 = *(a1 + 40);
            [v5 predictedTimeRange];
            v39 = [v38 clipResults:&buf];
            [v5 setFullAnalysisResults:v39];
          }

          v40 = VCPSignPostLog();
          v41 = v40;
          if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
          {
            LOWORD(buf.start.value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v41, OS_SIGNPOST_INTERVAL_END, v32, "VCPMovieAnalyzer_Video_VCPFullVideoAnalyzer", "", &buf, 2u);
          }

          v14 = v46;
        }

        [v5 setFrameFlags:v14];
        v10 = 0;
        goto LABEL_47;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.start.value) = 138412290;
        *(&buf.start.value + 4) = @"[pipelineBlock1]";
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid frameSampleBuffer.", &buf, 0xCu);
      }

      v22 = *(a1 + 32);
      v18 = (a1 + 32);
      v21 = v22;
      if (*(v22 + 144))
      {
LABEL_21:
        v10 = 4294967278;
        goto LABEL_47;
      }

      *(v21 + 144) = 45;
      v10 = 4294967278;
      v20 = 1080;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.start.value) = 138412290;
        *(&buf.start.value + 4) = @"[pipelineBlock1]";
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid currFrameResource.", &buf, 0xCu);
      }

      v19 = *(a1 + 32);
      v18 = (a1 + 32);
      v17 = v19;
      if (*(v19 + 144))
      {
        goto LABEL_21;
      }

      *(v17 + 144) = 45;
      v10 = 4294967278;
      v20 = 1078;
    }

    v15 = v18;
    goto LABEL_39;
  }

  v10 = 4294967168;
LABEL_47:
  v42 = VCPSignPostLog();
  v43 = v42;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
  {
    LOWORD(buf.start.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v43, OS_SIGNPOST_INTERVAL_END, v7, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock1", "", &buf, 2u);
  }

  return v10;
}

uint64_t __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_714(uint64_t a1, void *a2)
{
  v98 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = VCPSignPostLog();
  v5 = os_signpost_id_generate(v4);

  v6 = VCPSignPostLog();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(buf[0].value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock2", "", buf, 2u);
  }

  v94 = 0;
  if ((*(*(a1 + 96) + 16))())
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      [v8 setCancelled:1];
    }
  }

  if (((*(*(a1 + 96) + 16))() & 1) == 0)
  {
    if (v3)
    {
      v10 = [v3 frameSampleBuffer];
      v11 = v10;
      if (v10)
      {
        CMSampleBufferGetPresentationTimeStamp(buf, v10);
        v96 = buf[0];
        CMSampleBufferGetDuration(buf, v11);
        v95 = buf[0];
        ImageBuffer = CMSampleBufferGetImageBuffer(v11);
        v94 = [v3 frameFlags];
        if (*(a1 + 48))
        {
          v12 = VCPSignPostLog();
          v13 = os_signpost_id_generate(v12);

          v14 = VCPSignPostLog();
          v15 = v14;
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VCPMovieAnalyzer_Video_VCPVideoActivityAnalyzer", "", buf, 2u);
          }

          v16 = *(a1 + 48);
          buf[0] = v96;
          v93 = v95;
          v17 = [v3 frameStats];
          v9 = [v16 analyzeFrame:ImageBuffer timestamp:buf duration:&v93 frameStats:v17 flags:&v94];

          if (v9)
          {
            v20 = *(a1 + 40);
            v19 = (a1 + 40);
            v18 = v20;
            if (*(v20 + 144))
            {
              goto LABEL_42;
            }

            *(v18 + 144) = 61;
            v21 = 1160;
            goto LABEL_40;
          }

          v26 = VCPSignPostLog();
          v27 = v26;
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_END, v13, "VCPMovieAnalyzer_Video_VCPVideoActivityAnalyzer", "", buf, 2u);
          }
        }

        if (*(a1 + 56))
        {
          v28 = VCPSignPostLog();
          v29 = os_signpost_id_generate(v28);

          v30 = VCPSignPostLog();
          v31 = v30;
          if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v29, "VCPMovieAnalyzer_Video_VCPMovieCurationAnalyzer", "", buf, 2u);
          }

          v32 = *(a1 + 56);
          buf[0] = v96;
          v93 = v95;
          v33 = [v3 frameStats];
          v34 = (a1 + 40);
          [*(*(a1 + 40) + 32) photoOffsetSeconds];
          v9 = [v32 analyzeKeyFrame:ImageBuffer timestamp:buf duration:&v93 frameStats:v33 flags:&v94 photoOffset:?];

          if (v9)
          {
            if (*(*v34 + 144))
            {
              goto LABEL_42;
            }

            *(*v34 + 144) = 46;
            v21 = 1174;
LABEL_41:
            *(*v34 + 152) = v21;
            goto LABEL_42;
          }

          v38 = VCPSignPostLog();
          v39 = v38;
          if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v39, OS_SIGNPOST_INTERVAL_END, v29, "VCPMovieAnalyzer_Video_VCPMovieCurationAnalyzer", "", buf, 2u);
          }
        }

        if (*(a1 + 64))
        {
          v40 = VCPSignPostLog();
          v41 = os_signpost_id_generate(v40);

          v42 = VCPSignPostLog();
          v43 = v42;
          if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v43, OS_SIGNPOST_INTERVAL_BEGIN, v41, "VCPMovieAnalyzer_Video_VCPVideoCNNAnalyzer", "", buf, 2u);
          }

          v44 = *(a1 + 64);
          v45 = [v3 fullAnalysisResults];
          v46 = [v3 actionAnalysisResults];
          [v3 predictedTimeRange];
          v93 = v96;
          v9 = [v44 loadFullAnalysisResults:v45 actionAnalysisResults:v46 predictedTimeRange:buf timestamp:&v93];

          if (v9)
          {
            v48 = *(a1 + 40);
            v19 = (a1 + 40);
            v47 = v48;
            if (*(v48 + 144))
            {
              goto LABEL_42;
            }

            *(v47 + 144) = 64;
            v21 = 1185;
            goto LABEL_40;
          }

          v49 = *(a1 + 64);
          buf[0] = v96;
          v93 = v95;
          v9 = [v49 analyzeFrame:ImageBuffer withTimestamp:buf andDuration:&v93 flags:&v94];
          if (v9)
          {
            v51 = *(a1 + 40);
            v19 = (a1 + 40);
            v50 = v51;
            if (*(v51 + 144))
            {
              goto LABEL_42;
            }

            *(v50 + 144) = 64;
            v21 = 1191;
            goto LABEL_40;
          }

          v52 = VCPSignPostLog();
          v53 = v52;
          if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v53, OS_SIGNPOST_INTERVAL_END, v41, "VCPMovieAnalyzer_Video_VCPVideoCNNAnalyzer", "", buf, 2u);
          }
        }

        if (+[VCPVideoAnalysisPipelineManager shouldUseGraphProcessing])
        {
LABEL_65:
          [v3 setFrameFlags:v94];
          v9 = 0;
          goto LABEL_42;
        }

        if (*(a1 + 72))
        {
          v54 = VCPSignPostLog();
          v55 = os_signpost_id_generate(v54);

          v56 = VCPSignPostLog();
          v57 = v56;
          if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v57, OS_SIGNPOST_INTERVAL_BEGIN, v55, "VCPMovieAnalyzer_Video_VCPVideoStabilizerPixel", "", buf, 2u);
          }

          v58 = *(a1 + 72);
          buf[0] = v96;
          v93 = v95;
          v9 = [v58 analyzeFrame:ImageBuffer withTimestamp:buf andDuration:&v93 flags:&v94];
          if (v9)
          {
            v60 = *(a1 + 40);
            v19 = (a1 + 40);
            v59 = v60;
            if (*(v60 + 144))
            {
              goto LABEL_42;
            }

            *(v59 + 144) = 45;
            v21 = 1205;
            goto LABEL_40;
          }

          v61 = VCPSignPostLog();
          v62 = v61;
          if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v62, OS_SIGNPOST_INTERVAL_END, v55, "VCPMovieAnalyzer_Video_VCPVideoStabilizerPixel", "", buf, 2u);
          }
        }

        v63 = *(a1 + 32);
        if (v63 && ([v63 processAborted] & 1) == 0)
        {
          v64 = VCPSignPostLog();
          v65 = os_signpost_id_generate(v64);

          v66 = VCPSignPostLog();
          v67 = v66;
          if (v65 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v67, OS_SIGNPOST_INTERVAL_BEGIN, v65, "VCPMovieAnalyzer_Video_VCPVideoInterpolator", "", buf, 2u);
          }

          v68 = *(a1 + 32);
          buf[0] = v96;
          v93 = v95;
          v9 = [v68 analyzeFrame:ImageBuffer withTimestamp:buf andDuration:&v93 flags:&v94];
          v34 = (a1 + 40);
          v69 = *(a1 + 40);
          if (v9)
          {
            if (*(v69 + 144))
            {
              goto LABEL_42;
            }

            *(v69 + 144) = 45;
            v21 = 1217;
            goto LABEL_41;
          }

          if (*(v69 + 8) == 0x20000000 && [*(a1 + 32) processAborted])
          {
            if (*(*v34 + 144))
            {
              goto LABEL_65;
            }

            *(*v34 + 144) = 45;
            v70 = *v34;
            v71 = 1219;
LABEL_105:
            *(v70 + 152) = v71;
            goto LABEL_65;
          }

          v72 = VCPSignPostLog();
          v73 = v72;
          if (v65 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v73, OS_SIGNPOST_INTERVAL_END, v65, "VCPMovieAnalyzer_Video_VCPVideoInterpolator", "", buf, 2u);
          }
        }

        v74 = *(a1 + 80);
        if (v74 && ([v74 processAborted] & 1) == 0)
        {
          v75 = VCPSignPostLog();
          v76 = os_signpost_id_generate(v75);

          v77 = VCPSignPostLog();
          v78 = v77;
          if (v76 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v77))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v78, OS_SIGNPOST_INTERVAL_BEGIN, v76, "VCPMovieAnalyzer_Video_VCPSettlingEffectAnalyzer", "", buf, 2u);
          }

          v79 = *(a1 + 80);
          buf[0] = v96;
          v93 = v95;
          v9 = [v79 analyzeFrame:ImageBuffer withTimestamp:buf andDuration:&v93 flags:&v94];
          v34 = (a1 + 40);
          v80 = *(a1 + 40);
          if (v9)
          {
            if (*(v80 + 144))
            {
              goto LABEL_42;
            }

            *(v80 + 144) = 51;
            v21 = 1231;
            goto LABEL_41;
          }

          if (*(v80 + 8) == 0x4000000000 && [*(a1 + 80) processAborted])
          {
            if (*(*v34 + 144))
            {
              goto LABEL_65;
            }

            *(*v34 + 144) = 51;
            v70 = *v34;
            v71 = 1233;
            goto LABEL_105;
          }

          v81 = VCPSignPostLog();
          v82 = v81;
          if (v76 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v81))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v82, OS_SIGNPOST_INTERVAL_END, v76, "VCPMovieAnalyzer_Video_VCPSettlingEffectAnalyzer", "", buf, 2u);
          }
        }

        if (!*(a1 + 88))
        {
          goto LABEL_65;
        }

        v83 = VCPSignPostLog();
        v84 = os_signpost_id_generate(v83);

        v85 = VCPSignPostLog();
        v86 = v85;
        if (v84 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v85))
        {
          LOWORD(buf[0].value) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v86, OS_SIGNPOST_INTERVAL_BEGIN, v84, "VCPMovieAnalyzer_Video_MADVideoSafetyClassifier", "", buf, 2u);
        }

        v87 = *(a1 + 88);
        buf[0] = v96;
        v93 = v95;
        v9 = [v87 analyzeFrameWithSampleBuffer:v11 timestamp:buf duration:&v93 andFlags:&v94];
        if (!v9)
        {
          v90 = VCPSignPostLog();
          v91 = v90;
          if (v84 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v90))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v91, OS_SIGNPOST_INTERVAL_END, v84, "VCPMovieAnalyzer_Video_MADVideoSafetyClassifier", "", buf, 2u);
          }

          goto LABEL_65;
        }

        v89 = *(a1 + 40);
        v19 = (a1 + 40);
        v88 = v89;
        if (*(v89 + 144))
        {
          goto LABEL_42;
        }

        *(v88 + 144) = 45;
        v21 = 1244;
LABEL_40:
        v34 = v19;
        goto LABEL_41;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0].value) = 138412290;
        *(&buf[0].value + 4) = @"[pipelineBlock2]";
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid frameSampleBuffer.", buf, 0xCu);
      }

      v25 = *(a1 + 40);
      v19 = (a1 + 40);
      v24 = v25;
      if (!*(v25 + 144))
      {
        *(v24 + 144) = 45;
        v9 = 4294967278;
        v21 = 1146;
        goto LABEL_40;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0].value) = 138412290;
        *(&buf[0].value + 4) = @"[pipelineBlock2]";
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid currFrameResource.", buf, 0xCu);
      }

      v23 = *(a1 + 40);
      v19 = (a1 + 40);
      v22 = v23;
      if (!*(v23 + 144))
      {
        *(v22 + 144) = 45;
        v9 = 4294967278;
        v21 = 1144;
        goto LABEL_40;
      }
    }

    v9 = 4294967278;
    goto LABEL_42;
  }

  v9 = 4294967168;
LABEL_42:
  v35 = VCPSignPostLog();
  v36 = v35;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    LOWORD(buf[0].value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v36, OS_SIGNPOST_INTERVAL_END, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock2", "", buf, 2u);
  }

  return v9;
}

uint64_t __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_727(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = VCPSignPostLog();
  v5 = os_signpost_id_generate(v4);

  v6 = VCPSignPostLog();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(buf.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock3", "", &buf, 2u);
  }

  v29 = 0;
  v8 = VCPSignPostLog();
  v9 = os_signpost_id_generate(v8);

  v10 = VCPSignPostLog();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v32.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VCPMovieAnalyzer_Video_VCPVideoStabilizerPixel", "", &v32, 2u);
  }

  if ((*(a1[6] + 16))())
  {
    v12 = 4294967168;
    goto LABEL_29;
  }

  if (v3)
  {
    v13 = [v3 frameSampleBuffer];
    v14 = v13;
    if (v13)
    {
      CMSampleBufferGetPresentationTimeStamp(&v32, v13);
      buf = v32;
      CMSampleBufferGetDuration(&v32, v14);
      v30 = v32;
      ImageBuffer = CMSampleBufferGetImageBuffer(v14);
      v29 = [v3 frameFlags];
      v16 = a1[5];
      v32 = buf;
      v28 = v30;
      v12 = [v16 analyzeFrame:ImageBuffer withTimestamp:&v32 andDuration:&v28 flags:&v29];
      if (v12)
      {
        v18 = a1[4];
        v17 = a1 + 4;
        v19 = (v18 + 144);
        if (*(v18 + 144))
        {
          goto LABEL_29;
        }

        v20 = 1284;
LABEL_24:
        *v19 = 45;
        *(*v17 + 152) = v20;
        goto LABEL_29;
      }

      v23 = VCPSignPostLog();
      v24 = v23;
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        LOWORD(v32.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_END, v9, "VCPMovieAnalyzer_Video_VCPVideoStabilizerPixel", "", &v32, 2u);
      }

      [v3 setFrameFlags:v29];
      v12 = 0;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v32.value) = 138412290;
        *(&v32.value + 4) = @"[pipelineBlock3]";
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid frameSampleBuffer.", &v32, 0xCu);
      }

      v22 = a1[4];
      v17 = a1 + 4;
      v19 = (v22 + 144);
      v12 = 4294967278;
      if (!*(v22 + 144))
      {
        v20 = 1273;
        goto LABEL_24;
      }
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v32.value) = 138412290;
      *(&v32.value + 4) = @"[pipelineBlock3]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid currFrameResource.", &v32, 0xCu);
    }

    v21 = a1[4];
    v17 = a1 + 4;
    v19 = (v21 + 144);
    v12 = 4294967278;
    if (!*(v21 + 144))
    {
      v20 = 1271;
      goto LABEL_24;
    }
  }

LABEL_29:
  v25 = VCPSignPostLog();
  v26 = v25;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    LOWORD(v32.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v26, OS_SIGNPOST_INTERVAL_END, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock3", "", &v32, 2u);
  }

  return v12;
}

uint64_t __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_732(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = VCPSignPostLog();
  v5 = os_signpost_id_generate(v4);

  v6 = VCPSignPostLog();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(buf.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock4", "", &buf, 2u);
  }

  v31 = 0;
  if (((*(*(a1 + 48) + 16))() & 1) == 0)
  {
    if (v3)
    {
      v9 = [v3 frameSampleBuffer];
      v10 = v9;
      if (v9)
      {
        CMSampleBufferGetPresentationTimeStamp(&v34, v9);
        buf = v34;
        CMSampleBufferGetDuration(&v34, v10);
        v32 = v34;
        ImageBuffer = CMSampleBufferGetImageBuffer(v10);
        v31 = [v3 frameFlags];
        if (([*(a1 + 40) processAborted] & 1) == 0)
        {
          v12 = VCPSignPostLog();
          v13 = os_signpost_id_generate(v12);

          v14 = VCPSignPostLog();
          v15 = v14;
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
          {
            LOWORD(v34.value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VCPMovieAnalyzer_Video_VCPSettlingEffectAnalyzer", "", &v34, 2u);
          }

          v16 = *(a1 + 40);
          v34 = buf;
          v30 = v32;
          v8 = [v16 analyzeFrame:ImageBuffer withTimestamp:&v34 andDuration:&v30 flags:&v31];
          v18 = a1 + 32;
          v17 = *(a1 + 32);
          if (v8)
          {
            if (*(v17 + 144))
            {
              goto LABEL_37;
            }

            *(v17 + 144) = 51;
            v19 = 1323;
LABEL_27:
            *(*v18 + 152) = v19;
            goto LABEL_37;
          }

          if (*(v17 + 8) == 0x4000000000 && [*(a1 + 40) processAborted])
          {
            if (!*(*v18 + 144))
            {
              *(*v18 + 144) = 51;
              *(*v18 + 152) = 1325;
            }
          }

          else
          {
            v25 = VCPSignPostLog();
            v26 = v25;
            if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
            {
              LOWORD(v34.value) = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v26, OS_SIGNPOST_INTERVAL_END, v13, "VCPMovieAnalyzer_Video_VCPSettlingEffectAnalyzer", "", &v34, 2u);
            }
          }
        }

        [v3 setFrameFlags:v31];
        v8 = 0;
        goto LABEL_37;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v34.value) = 138412290;
        *(&v34.value + 4) = @"[pipelineBlock4]";
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid frameSampleBuffer.", &v34, 0xCu);
      }

      v24 = *(a1 + 32);
      v21 = a1 + 32;
      v23 = v24;
      if (*(v24 + 144))
      {
LABEL_24:
        v8 = 4294967278;
        goto LABEL_37;
      }

      *(v23 + 144) = 45;
      v8 = 4294967278;
      v19 = 1310;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v34.value) = 138412290;
        *(&v34.value + 4) = @"[pipelineBlock4]";
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid currFrameResource.", &v34, 0xCu);
      }

      v22 = *(a1 + 32);
      v21 = a1 + 32;
      v20 = v22;
      if (*(v22 + 144))
      {
        goto LABEL_24;
      }

      *(v20 + 144) = 45;
      v8 = 4294967278;
      v19 = 1308;
    }

    v18 = v21;
    goto LABEL_27;
  }

  v8 = 4294967168;
LABEL_37:
  v27 = VCPSignPostLog();
  v28 = v27;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    LOWORD(v34.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_END, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock4", "", &v34, 2u);
  }

  return v8;
}

uint64_t __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_737(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = VCPSignPostLog();
  v5 = os_signpost_id_generate(v4);

  v6 = VCPSignPostLog();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(buf.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock5", "", &buf, 2u);
  }

  v28 = 0;
  v8 = VCPSignPostLog();
  v9 = os_signpost_id_generate(v8);

  v10 = VCPSignPostLog();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v31.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VCPMovieAnalyzer_Video_MADVideoSafetyClassifier", "", &v31, 2u);
  }

  if ((*(a1[6] + 16))())
  {
    v12 = 4294967168;
    goto LABEL_29;
  }

  if (v3)
  {
    v13 = [v3 frameSampleBuffer];
    v14 = v13;
    if (v13)
    {
      CMSampleBufferGetPresentationTimeStamp(&v31, v13);
      buf = v31;
      CMSampleBufferGetDuration(&v31, v14);
      v29 = v31;
      CMSampleBufferGetImageBuffer(v14);
      v28 = [v3 frameFlags];
      v15 = a1[5];
      v31 = buf;
      v27 = v29;
      v12 = [v15 analyzeFrameWithSampleBuffer:v14 timestamp:&v31 duration:&v27 andFlags:&v28];
      if (v12)
      {
        v17 = a1[4];
        v16 = a1 + 4;
        v18 = (v17 + 144);
        if (*(v17 + 144))
        {
          goto LABEL_29;
        }

        v19 = 1364;
LABEL_24:
        *v18 = 45;
        *(*v16 + 152) = v19;
        goto LABEL_29;
      }

      v22 = VCPSignPostLog();
      v23 = v22;
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        LOWORD(v31.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v23, OS_SIGNPOST_INTERVAL_END, v9, "VCPMovieAnalyzer_Video_MADVideoSafetyClassifier", "", &v31, 2u);
      }

      [v3 setFrameFlags:v28];
      v12 = 0;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(v31.value) = 138412290;
        *(&v31.value + 4) = @"[pipelineBlock5]";
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid frameSampleBuffer.", &v31, 0xCu);
      }

      v21 = a1[4];
      v16 = a1 + 4;
      v18 = (v21 + 144);
      v12 = 4294967278;
      if (!*(v21 + 144))
      {
        v19 = 1353;
        goto LABEL_24;
      }
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v31.value) = 138412290;
      *(&v31.value + 4) = @"[pipelineBlock5]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid currFrameResource.", &v31, 0xCu);
    }

    v20 = a1[4];
    v16 = a1 + 4;
    v18 = (v20 + 144);
    v12 = 4294967278;
    if (!*(v20 + 144))
    {
      v19 = 1351;
      goto LABEL_24;
    }
  }

LABEL_29:
  v24 = VCPSignPostLog();
  v25 = v24;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    LOWORD(v31.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_END, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock5", "", &v31, 2u);
  }

  return v12;
}

uint64_t __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_742(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = VCPSignPostLog();
  v5 = os_signpost_id_generate(v4);

  v6 = VCPSignPostLog();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(buf.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock6", "", &buf, 2u);
  }

  v31 = 0;
  if ((*(*(a1 + 48) + 16))())
  {
    v8 = 4294967168;
    goto LABEL_36;
  }

  if (v3)
  {
    v9 = [v3 frameSampleBuffer];
    v10 = v9;
    if (v9)
    {
      CMSampleBufferGetPresentationTimeStamp(&v34, v9);
      buf = v34;
      CMSampleBufferGetDuration(&v34, v10);
      v32 = v34;
      ImageBuffer = CMSampleBufferGetImageBuffer(v10);
      v31 = [v3 frameFlags];
      if (([*(a1 + 40) processAborted] & 1) == 0)
      {
        v12 = VCPSignPostLog();
        v13 = os_signpost_id_generate(v12);

        v14 = VCPSignPostLog();
        v15 = v14;
        if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
        {
          LOWORD(v34.value) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VCPMovieAnalyzer_Video_VCPVideoInterpolator", "", &v34, 2u);
        }

        v16 = *(a1 + 40);
        v34 = buf;
        v30 = v32;
        v8 = [v16 analyzeFrame:ImageBuffer withTimestamp:&v34 andDuration:&v30 flags:&v31];
        v18 = a1 + 32;
        v17 = *(a1 + 32);
        if (v8)
        {
          v20 = *(v17 + 144);
          v19 = (v17 + 144);
          if (v20)
          {
            goto LABEL_36;
          }

          v21 = 1404;
LABEL_26:
          *v19 = 45;
          *(*v18 + 152) = v21;
          goto LABEL_36;
        }

        if (*(v17 + 8) == 0x20000000 && [*(a1 + 40) processAborted])
        {
          if (!*(*v18 + 144))
          {
            *(*v18 + 144) = 45;
            *(*v18 + 152) = 1406;
          }
        }

        else
        {
          v25 = VCPSignPostLog();
          v26 = v25;
          if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
          {
            LOWORD(v34.value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v26, OS_SIGNPOST_INTERVAL_END, v13, "VCPMovieAnalyzer_Video_VCPVideoInterpolator", "", &v34, 2u);
          }
        }
      }

      [v3 setFrameFlags:v31];
      v8 = 0;
      goto LABEL_36;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v34.value) = 138412290;
      *(&v34.value + 4) = @"[pipelineBlock6]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid frameSampleBuffer.", &v34, 0xCu);
    }

    v24 = *(a1 + 32);
    v22 = a1 + 32;
    v19 = (v24 + 144);
    v8 = 4294967278;
    if (!*(v24 + 144))
    {
      v21 = 1391;
      goto LABEL_25;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(v34.value) = 138412290;
      *(&v34.value + 4) = @"[pipelineBlock6]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid currFrameResource.", &v34, 0xCu);
    }

    v23 = *(a1 + 32);
    v22 = a1 + 32;
    v19 = (v23 + 144);
    v8 = 4294967278;
    if (!*(v23 + 144))
    {
      v21 = 1389;
LABEL_25:
      v18 = v22;
      goto LABEL_26;
    }
  }

LABEL_36:
  v27 = VCPSignPostLog();
  v28 = v27;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    LOWORD(v34.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_END, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock6", "", &v34, 2u);
  }

  return v8;
}

- (int)postProcessAnimalResults:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v52 = a3;
  v3 = [v52 objectForKeyedSubscript:?];
  if (v3)
  {
    v4 = [v52 objectForKeyedSubscript:@"AnimalPrintResults"];
    v5 = [v4 count];

    if (v5 >= 6)
    {
      [MEMORY[0x1E695DF90] dictionary];
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v57 = v70 = 0u;
      v6 = [v52 objectForKeyedSubscript:?];
      obj = v6;
      v7 = [v6 countByEnumeratingWithState:&v69 objects:v75 count:16];
      if (v7)
      {
        v8 = *v70;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v70 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = [*(*(&v69 + 1) + 8 * i) objectForKeyedSubscript:@"attributes"];
            v11 = v10;
            if (v10)
            {
              v12 = [v10 objectForKeyedSubscript:@"faceBounds"];
              v77 = NSRectFromString(v12);
              width = v77.size.width;
              height = v77.size.height;

              v15 = [v11 objectForKeyedSubscript:@"animalId"];
              v16 = [v15 integerValue];

              v17 = [v57 allKeys];
              v18 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
              v19 = [v17 containsObject:v18];

              v20 = MEMORY[0x1E696AD98];
              if (v19)
              {
                v21 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
                v22 = [v57 objectForKeyedSubscript:v21];
                [v22 floatValue];
                v24 = width * height;
                if (*&v23 < v24)
                {
                  *&v23 = width * height;
                }

                v25 = [v20 numberWithFloat:v23];
                v26 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
                [v57 setObject:v25 forKeyedSubscript:v26];
              }

              else
              {
                v21 = [MEMORY[0x1E696AD98] numberWithDouble:width * height];
                v22 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
                [v57 setObject:v21 forKeyedSubscript:v22];
              }
            }
          }

          v6 = obj;
          v7 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
        }

        while (v7);
      }

      v27 = [v57 allKeys];
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __45__VCPMovieAnalyzer_postProcessAnimalResults___block_invoke;
      v67[3] = &unk_1E8350400;
      v49 = v57;
      v50 = v27;
      v68 = v49;
      v51 = [v27 sortedArrayUsingComparator:v67];
      if ([v51 count] > 5)
      {
        v56 = [v51 subarrayWithRange:{0, 5}];
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Animal post processing - unexpected animalPrint vs animalDetection results", buf, 2u);
        }

        v56 = v51;
      }

      obja = [MEMORY[0x1E695DF70] array];
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v28 = [v52 objectForKeyedSubscript:@"AnimalPrintResults"];
      v29 = [v28 countByEnumeratingWithState:&v62 objects:v74 count:16];
      if (v29)
      {
        v30 = *v63;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v63 != v30)
            {
              objc_enumerationMutation(v28);
            }

            v32 = *(*(&v62 + 1) + 8 * j);
            v33 = [v32 objectForKeyedSubscript:@"attributes"];
            v34 = v33;
            if (v33)
            {
              v35 = [v33 objectForKeyedSubscript:@"animalId"];
              v36 = [v35 integerValue];

              v37 = [MEMORY[0x1E696AD98] numberWithInteger:v36];
              LODWORD(v35) = [v56 containsObject:v37];

              if (v35)
              {
                [obja addObject:v32];
              }
            }
          }

          v29 = [v28 countByEnumeratingWithState:&v62 objects:v74 count:16];
        }

        while (v29);
      }

      [v52 setObject:obja forKeyedSubscript:@"AnimalPrintResults"];
      v53 = [MEMORY[0x1E695DF70] array];
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v38 = [v52 objectForKeyedSubscript:@"AnimalResults"];
      v39 = [v38 countByEnumeratingWithState:&v58 objects:v73 count:16];
      if (v39)
      {
        v40 = *v59;
        do
        {
          for (k = 0; k != v39; ++k)
          {
            if (*v59 != v40)
            {
              objc_enumerationMutation(v38);
            }

            v42 = *(*(&v58 + 1) + 8 * k);
            v43 = [v42 objectForKeyedSubscript:@"attributes"];
            v44 = v43;
            if (v43)
            {
              v45 = [v43 objectForKeyedSubscript:@"animalId"];
              v46 = [v45 integerValue];

              v47 = [MEMORY[0x1E696AD98] numberWithInteger:v46];
              LODWORD(v46) = [v56 containsObject:v47];

              if (v46)
              {
                [v53 addObject:v42];
              }
            }
          }

          v39 = [v38 countByEnumeratingWithState:&v58 objects:v73 count:16];
        }

        while (v39);
      }

      [v52 setObject:v53 forKeyedSubscript:@"AnimalResults"];
    }
  }

  return 0;
}

uint64_t __45__VCPMovieAnalyzer_postProcessAnimalResults___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  [v6 floatValue];
  v8 = v7;

  v9 = [*(a1 + 32) objectForKeyedSubscript:v5];
  [v9 floatValue];
  v11 = v10;

  if (v8 >= v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = -1;
  }

  if (v8 > v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  return v13;
}

- (int)postProcessAutoPlayable:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"MovieSummaryResults"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"MovieSummaryResults"];
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 mutableCopy];

    v8 = [v7 objectForKeyedSubscript:@"flags"];
    if (([v8 intValue] & 0x80000) != 0)
    {
      v9 = [v7 objectForKeyedSubscript:@"quality"];
      [v9 floatValue];
      v11 = v10;

      if (v11 <= 0.5)
      {
        v12 = MEMORY[0x1E696AD98];
        v13 = [v7 objectForKeyedSubscript:@"flags"];
        v14 = [v12 numberWithUnsignedLongLong:{(objc_msgSend(v13, "intValue") & 0xFFF7FFFF)}];
        [v7 setObject:v14 forKeyedSubscript:@"flags"];

        v25[0] = v7;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
        [v3 setObject:v15 forKeyedSubscript:@"MovieSummaryResults"];
      }
    }

    else
    {
    }

    if (!+[VCPMovieAnalyzer isHeuristicStickerScoreEnabled])
    {
      v16 = [v3 objectForKeyedSubscript:@"AnimatedStickerResults"];
      v17 = v16 == 0;

      if (!v17)
      {
        v18 = [v3 objectForKeyedSubscript:@"AnimatedStickerResults"];
        v19 = [v18 objectAtIndexedSubscript:0];
        v20 = [v19 mutableCopy];

        v21 = [v7 objectForKeyedSubscript:@"quality"];
        [v20 setObject:v21 forKeyedSubscript:@"quality"];

        v24 = v20;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
        [v3 setObject:v22 forKeyedSubscript:@"AnimatedStickerResults"];
      }
    }
  }

  return 0;
}

- (int)analyzeVideoTrack:(id)a3 start:(id *)a4 forAnalysisTypes:(unint64_t)a5 cancel:(id)a6
{
  v60 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  v46 = v10;
  if (v9)
  {
    [v9 timeRange];
  }

  else
  {
    memset(range, 0, 48);
  }

  *time = *&a4->var0;
  *&time[16] = a4->var3;
  if (!CMTimeRangeContainsTime(range, time))
  {
    if (!self->_errorCode)
    {
      *&self->_errorCode = xmmword_1C9F63120;
    }

    v13 = -50;
    goto LABEL_65;
  }

  v44 = self;
  {
    CMTimeMake([VCPMovieAnalyzer analyzeVideoTrack:start:forAnalysisTypes:cancel:]::kMaxSegmentDuration, 300, 1);
  }

  memset(&time[48], 0, 24);
  if (v9)
  {
    [v9 vcp_endTime];
    p_maxAnalysisLength = &self->_maxAnalysisLength;
    maxAnalysisLength = self->_maxAnalysisLength;
    if (maxAnalysisLength <= 0.0)
    {
      goto LABEL_16;
    }

    [v9 vcp_endTime];
  }

  else
  {
    p_maxAnalysisLength = &self->_maxAnalysisLength;
    maxAnalysisLength = self->_maxAnalysisLength;
    if (maxAnalysisLength <= 0.0)
    {
      goto LABEL_16;
    }

    memset(range, 0, 24);
  }

  if (CMTimeGetSeconds(range) > maxAnalysisLength)
  {
    CMTimeMakeWithSeconds(range, *p_maxAnalysisLength, 600);
    *&time[48] = *range;
  }

LABEL_16:
  v48 = [(NSMutableDictionary *)self->_privateResults objectForKeyedSubscript:@"MetaSegmentResults"];
  if (v9)
  {
    [v9 timeRange];
  }

  else
  {
    memset(range, 0, 48);
  }

  *time = *&range[24];
  *&time[16] = *&range[40];
  time2[0] = *[VCPMovieAnalyzer analyzeVideoTrack:start:forAnalysisTypes:cancel:]::kMaxSegmentDuration;
  if (CMTimeCompare(time, time2) < 1 && [v48 count] < 2)
  {
    v41 = 0;
    v49 = a5;
  }

  else
  {
    v49 = a5 & 0xFFFFFBFFFFFFFFFFLL;
    v41 = 1;
  }

  memset(time, 0, 48);
  if ([v48 count] < 2)
  {
    v15 = *(MEMORY[0x1E6960C98] + 16);
    *time = *MEMORY[0x1E6960C98];
    *&time[16] = v15;
    *&time[32] = *(MEMORY[0x1E6960C98] + 32);
  }

  else
  {
    v14 = [v48 objectAtIndexedSubscript:0];
    CMTimeRangeMakeFromDictionary(time, v14);
  }

  v43 = 0;
  while (1)
  {
    *range = *&a4->var0;
    *&range[16] = a4->var3;
    time2[0] = *&time[48];
    if ((CMTimeCompare(range, time2) & 0x80000000) == 0)
    {
      break;
    }

    memset(&time2[1], 0, sizeof(CMTime));
    time2[0] = *a4;
    *range = *&time[48];
    *&rhs.start.value = *&a4->var0;
    rhs.start.epoch = a4->var3;
    CMTimeSubtract(&v51.start, range, &rhs.start);
    *range = *&v51.start.value;
    *&range[16] = v51.start.epoch;
    *&rhs.start.value = *[VCPMovieAnalyzer analyzeVideoTrack:start:forAnalysisTypes:cancel:]::kMaxSegmentDuration;
    rhs.start.epoch = *&[VCPMovieAnalyzer analyzeVideoTrack:start:forAnalysisTypes:cancel:]::kMaxSegmentDuration[16];
    v16 = CMTimeCompare(range, &rhs.start);
    v17 = &v51;
    if (v16 >= 0)
    {
      v17 = [VCPMovieAnalyzer analyzeVideoTrack:start:forAnalysisTypes:cancel:]::kMaxSegmentDuration;
    }

    time2[1] = v17->start;
    if ((time[12] & 1) != 0 && (time[36] & 1) != 0 && !*&time[40] && (*&time[24] & 0x8000000000000000) == 0)
    {
      *&rhs.start.value = *&time2[0].value;
      *&rhs.start.epoch = *&time2[0].epoch;
      *&rhs.duration.timescale = *&time2[1].timescale;
      v51 = *time;
      CMTimeRangeGetIntersection(range, &rhs, &v51);
      *&time2[0].value = *range;
      *&time2[0].epoch = *&range[16];
      *&time2[1].timescale = *&range[32];
      CMTimeRangeGetEnd(&v51.start, range);
      *range = *time;
      CMTimeRangeGetEnd(&v50, range);
      *range = *&v51.start.value;
      *&range[16] = v51.start.epoch;
      rhs.start = v50;
      if (!CMTimeCompare(range, &rhs.start))
      {
        if ([v48 count] > ++v43)
        {
          v19 = [v48 objectAtIndexedSubscript:?];
          CMTimeRangeMakeFromDictionary(range, v19);
          *time = *range;
        }

        else
        {
          v20 = *(MEMORY[0x1E6960C98] + 16);
          *time = *MEMORY[0x1E6960C98];
          *&time[16] = v20;
          *&time[32] = *(MEMORY[0x1E6960C98] + 32);
        }
      }
    }

    memset(&v50, 0, sizeof(v50));
    *range = *&time2[0].value;
    *&range[16] = *&time2[0].epoch;
    *&range[32] = *&time2[1].timescale;
    CMTimeRangeGetEnd(&v50, range);
    if (MediaAnalysisLogLevel() >= 7)
    {
      v21 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        phAsset = self->_phAsset;
        if (phAsset)
        {
          v24 = [(PHAsset *)self->_phAsset localIdentifier];
          v47 = v24;
        }

        else
        {
          v24 = [(VCPAsset *)self->_asset mainFileURL];
          v45 = v24;
        }

        v25 = v9;
        v26 = [v9 trackID];
        value = time2[0].value;
        timescale = time2[0].timescale;
        rhs.start = time2[0];
        Seconds = CMTimeGetSeconds(&rhs.start);
        v30 = v50.value;
        v31 = v50.timescale;
        rhs.start = v50;
        v32 = CMTimeGetSeconds(&rhs.start);
        *range = 138414082;
        *&range[4] = v24;
        *&range[12] = 1024;
        *&range[14] = v26;
        *&range[18] = 2048;
        *&range[20] = value;
        *&range[28] = 1024;
        *&range[30] = timescale;
        *&range[34] = 2048;
        *&range[36] = Seconds;
        *&range[44] = 2048;
        *&range[46] = v30;
        v56 = 1024;
        v57 = v31;
        v58 = 2048;
        v59 = v32;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MovieAnalyzer][%@] Analyzing Video Segment - Track ID: %d Start: %lld/%d (%0.3fs) End: %lld/%d (%0.3fs)", range, 0x46u);
        v33 = v47;
        if (!phAsset)
        {
          v33 = v45;
        }

        v10 = v46;
        self = v44;
        v9 = v25;
      }
    }

    if (v10 && (v10[2](v10) & 1) != 0)
    {
      v13 = -128;
      goto LABEL_64;
    }

    v13 = [(VCPMovieAnalyzer *)self analyzeVideoSegment:v9 timerange:time2 forAnalysisTypes:v49 cancel:v10];
    if (v13)
    {
      if (!self->_errorCode)
      {
        *&self->_errorCode = xmmword_1C9F63110;
      }

      goto LABEL_64;
    }

    *&rhs.start.value = *&a4->var0;
    rhs.start.epoch = a4->var3;
    v51.start = time2[1];
    CMTimeAdd(range, &rhs.start, &v51.start);
    *&a4->var0 = *range;
    v34 = *&range[16];
    a4->var3 = *&range[16];
    analysis = self->_analysis;
    *range = *&a4->var0;
    *&range[16] = v34;
    [(NSMutableDictionary *)analysis vcp_setSyncPoint:range];
  }

  v36 = v41 ^ 1;
  if ((a5 & 0x40000000000) == 0)
  {
    v36 = 1;
  }

  if ((v36 & 1) == 0)
  {
    v37 = [(VCPAsset *)self->_asset mainFileURL];
    v38 = [(VCPAsset *)self->_asset localIdentifier];
    if (v9)
    {
      [v9 timeRange];
    }

    else
    {
      memset(range, 0, 48);
    }

    v39 = [MADVideoSafetyClassifier analyzeVideoAssetOnDemandWithURL:v37 localIdentifier:v38 timeRange:range cancelBlock:v10 andProgressHandler:0];

    [(NSMutableDictionary *)self->_analysis vcp_appendResults:v39];
  }

  if (([objc_opt_class() persistAudioEmbedding] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_analysis vcp_removeResultForKey:@"AudioEmbeddingResults"];
  }

  v13 = 0;
LABEL_64:

LABEL_65:
  return v13;
}

- (id)analyzeAsset:(id)a3 streamed:(BOOL *)a4
{
  v225[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  if (self->_status != 1)
  {
    goto LABEL_166;
  }

  v8 = VCPSignPostLog();
  v9 = os_signpost_id_generate(v8);

  v10 = VCPSignPostLog();
  v11 = v10;
  spid = v9;
  v182 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf.start.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VCPMovieAnalyzer", "", &buf, 2u);
  }

  requestedAnalyses = self->_requestedAnalyses;
  v13 = +[VCPAudioAnalyzer supportedAnalysisTypes];
  if (v7 && (v7[2](v7) & 1) != 0)
  {
LABEL_154:
    self->_status = 4;
    p_analysis = &self->_analysis;
    analysis = self->_analysis;
    if (analysis)
    {
      [(NSMutableDictionary *)analysis vcp_syncPoint];
      if (buf.start.flags)
      {
        goto LABEL_159;
      }
    }

    goto LABEL_158;
  }

  v180 = objc_autoreleasePoolPush();
  v14 = [(VCPAsset *)self->_asset movie];
  if (!v14)
  {
    if (![(VCPMovieAnalyzer *)self allowStreaming])
    {
      goto LABEL_28;
    }

    v21 = VCPSignPostLog();
    v22 = os_signpost_id_generate(v21);

    v23 = VCPSignPostLog();
    v24 = v23;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      LOWORD(buf.start.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "VCPMovieAnalyzer_ResourceDownload", "", &buf, 2u);
    }

    [(NSMutableDictionary *)self->_analysis vcp_addFlags:0x20000000];
    if (a4)
    {
      *a4 = 1;
    }

    v14 = [(VCPAsset *)self->_asset streamedMovie:[(VCPMovieAnalyzer *)self requiresOnDemandDownload]];
    if (v14)
    {
      [(VCPMovieAnalyzer *)self loadPropertiesForAsset:v14];
    }

    v25 = VCPSignPostLog();
    audioGroup = v25;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      LOWORD(buf.start.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, audioGroup, OS_SIGNPOST_INTERVAL_END, v22, "VCPMovieAnalyzer_ResourceDownload", "", &buf, 2u);
    }

    if (!v14)
    {
LABEL_28:
      v14 = 0;
      if (!self->_errorCode)
      {
        *&self->_errorCode = xmmword_1C9F631B0;
      }

      goto LABEL_41;
    }
  }

  if (![(VCPAsset *)self->_asset isMovie]|| ([(VCPAsset *)self->_asset duration], v15 >= 1.0))
  {
    if (![v14 vcp_isMontage])
    {
      if ([(VCPAsset *)self->_asset isMovie])
      {
        [(VCPAsset *)self->_asset duration];
        if (v26 < 3.0)
        {
          v27 = self->_requestedAnalyses;
          if ((v27 & 0x8000000000000) != 0)
          {
            self->_requestedAnalyses = v27 & 0xFFF7FFFFFFFFFFFFLL;
            [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x8000000000000];
          }
        }
      }

      v28 = v13 & requestedAnalyses;
      if ((v13 & requestedAnalyses) == 0)
      {
        v31 = 0;
        goto LABEL_66;
      }

      context = objc_autoreleasePoolPush();
      if (MediaAnalysisLogLevel() >= 6)
      {
        v29 = MEMORY[0x1E69E9C10];
        v30 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          if (self->_phAsset)
          {
            [(PHAsset *)self->_phAsset localIdentifier];
          }

          else
          {
            [(VCPAsset *)self->_asset mainFileURL];
          }
          v32 = ;
          v33 = MediaAnalysisTypeShortDescription(v28);
          LODWORD(buf.start.value) = 138412546;
          *(&buf.start.value + 4) = v32;
          LOWORD(buf.start.flags) = 2112;
          *(&buf.start.flags + 2) = v33;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MovieAnalyzer][%@] Analyzing audio types %@", &buf, 0x16u);
        }
      }

      v34 = VCPSignPostLog();
      v35 = os_signpost_id_generate(v34);

      v36 = VCPSignPostLog();
      audioGroup = v36;
      if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, audioGroup, OS_SIGNPOST_INTERVAL_BEGIN, v35, "VCPMovieAnalyzer_Audio", "", &buf, 2u);
      }

      v37 = [[VCPAudioAnalyzer alloc] initWithAnalysisTypes:v28 forStreaming:0 andResultHandler:0];
      if (!v37)
      {
        v39 = 0;
        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F63140;
        }

        v20 = 4;
        v18 = -18;
        goto LABEL_64;
      }

      if (+[VCPMovieAnalyzer shouldProcessAudioAsync])
      {
        audioQueue = self->_audioQueue;
        audioGroup = self->_audioGroup;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __42__VCPMovieAnalyzer_analyzeAsset_streamed___block_invoke;
        block[3] = &unk_1E8350428;
        block[4] = self;
        v187 = v37;
        v188 = v14;
        v189 = v7;
        v190 = v28;
        v191 = v35;
        v192 = 0;
        dispatch_group_async(audioGroup, audioQueue, block);
      }

      else
      {
        v185 = 0;
        v18 = [(VCPAudioAnalyzer *)v37 analyzeAsset:v14 cancel:v7 results:&v185];
        v40 = v185;
        audioGroup = v40;
        if (v18)
        {
          if (!self->_errorCode)
          {
            *&self->_errorCode = xmmword_1C9F63130;
          }

          v39 = 0;
          v20 = 4;
          goto LABEL_64;
        }

        [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v40];
        [(NSMutableDictionary *)self->_analysis vcp_addTypes:v28];
        v41 = VCPSignPostLog();
        v42 = v41;
        if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
        {
          LOWORD(buf.start.value) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v42, OS_SIGNPOST_INTERVAL_END, v35, "VCPMovieAnalyzer_Audio", "", &buf, 2u);
        }
      }

      v18 = 0;
      v20 = 0;
      v39 = 1;
LABEL_64:

      objc_autoreleasePoolPop(context);
      if ((v39 & 1) == 0)
      {
LABEL_127:
        v19 = 1;
        goto LABEL_128;
      }

      v31 = v18;
LABEL_66:
      v18 = [(VCPMovieAnalyzer *)self performMetadataAnalysisOnAsset:v14 withCancelBlock:v7];
      if (v18)
      {
        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F63150;
        }

        goto LABEL_126;
      }

      v43 = self->_requestedAnalyses;
      v174 = v31;
      if ((v43 & 0x4000010010000000) == 0)
      {
LABEL_178:
        if ((v43 & 0x82C636446D888) == 0)
        {
          v19 = 1;
          goto LABEL_192;
        }

        v116 = VCPSignPostLog();
        v117 = os_signpost_id_generate(v116);

        v118 = VCPSignPostLog();
        audioGroup = v118;
        if (v117 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v118))
        {
          LOWORD(buf.start.value) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, audioGroup, OS_SIGNPOST_INTERVAL_BEGIN, v117, "VCPMovieAnalyzer_Video", "", &buf, 2u);
        }

        v119 = [v14 vcp_firstEnabledTrackWithMediaType:*MEMORY[0x1E6987608]];
        v120 = v119;
        if (v119)
        {
          [v119 naturalSize];
          v123 = *&v122;
          v124 = v121;
          if (v122 >= 1.0 && v121 >= 1.0)
          {
            [v120 nominalFrameRate];
            v19 = v125 < 25.0;
            memset(&start, 0, sizeof(start));
            v126 = self->_analysis;
            if (v126)
            {
              [(NSMutableDictionary *)v126 vcp_syncPoint];
            }

            buf.start = start;
            *&time2.start.value = *MEMORY[0x1E6960C70];
            time2.start.epoch = *(MEMORY[0x1E6960C70] + 16);
            if (CMTimeCompare(&buf.start, &time2.start))
            {
              [v120 timeRange];
              time2.start = start;
              if (!CMTimeRangeContainsTime(&buf, &time2.start))
              {
                v18 = -18;
                if (!self->_errorCode)
                {
                  v127 = 2090;
LABEL_224:
                  self->_errorCode = 45;
                  self->_errorLine = v127;
                  goto LABEL_225;
                }

                goto LABEL_225;
              }
            }

            else
            {
              [v120 vcp_startTime];
              start = buf.start;
            }

            v137 = self->_requestedAnalyses;
            if ((v137 & 0x4024000000) != 0)
            {
              buf.start = start;
              v18 = [(VCPMovieAnalyzer *)self analyzeVideoTrack:v120 start:&buf forAnalysisTypes:v137 & 0x4024000000 cancel:v7];
              if (v18)
              {
                if (!self->_errorCode)
                {
                  v127 = 2103;
                  goto LABEL_224;
                }

LABEL_225:

LABEL_226:
                v20 = 4;
                goto LABEL_128;
              }

              v137 = self->_requestedAnalyses;
            }

            if ((v137 & 0x82C234046D888) != 0)
            {
              buf.start = start;
              v18 = [(VCPMovieAnalyzer *)self analyzeVideoTrack:v120 start:&buf forAnalysisTypes:v137 & 0xFFFFFFBFDBFFFFFFLL cancel:v7];
              if (v18)
              {
                if (!self->_errorCode)
                {
                  v127 = 2110;
                  goto LABEL_224;
                }

                goto LABEL_225;
              }

              v137 = self->_requestedAnalyses;
            }

            if ((v137 & 8) != 0)
            {
              [(NSMutableDictionary *)self->_analysis vcp_addTypes:12];
              v137 = self->_requestedAnalyses;
            }

            if ((v137 & 0x880) != 0)
            {
              [(NSMutableDictionary *)self->_analysis vcp_addTypes:192];
              [(NSMutableDictionary *)self->_analysis vcp_addTypes:2048];
              v137 = self->_requestedAnalyses;
            }

            if ((v137 & 0x40000) != 0)
            {
              [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x40000];
              if (![(VCPAsset *)self->_asset isLivePhoto])
              {
                v18 = [(VCPMovieAnalyzer *)self generateKeyFrameResource:v14];
                if (v18)
                {
                  if (self->_errorCode)
                  {
                    goto LABEL_225;
                  }

                  v127 = 2127;
                  goto LABEL_224;
                }
              }
            }

            v140 = self->_requestedAnalyses;
            if ((v140 & 0x8000000000000) != 0 && !self->_onDemand)
            {
              v150 = VCPSignPostLog();
              contextb = os_signpost_id_generate(v150);

              v151 = VCPSignPostLog();
              audioGroup = v151;
              if ((contextb - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v151))
              {
                LOWORD(buf.start.value) = 0;
                _os_signpost_emit_with_name_impl(&dword_1C9B70000, audioGroup, OS_SIGNPOST_INTERVAL_BEGIN, contextb, "VCPMovieAnalyzer_GenerateAndPersistVideoThumbnailResources", "", &buf, 2u);
              }

              phAsset = self->_phAsset;
              if (!phAsset)
              {
                v18 = -18;
                if (self->_errorCode)
                {
                  goto LABEL_225;
                }

                v127 = 2133;
                goto LABEL_224;
              }

              v176 = [(NSMutableDictionary *)self->_analysis vcp_results];
              audioGroup = [v176 objectForKeyedSubscript:@"VideoThumbnailResults"];
              v18 = [(VCPMovieAnalyzer *)self generateAndPersistVideoThumbnailResources:v14 forPHAsset:phAsset withResults:audioGroup cancelBlock:v7];

              if (v18)
              {
                if (self->_errorCode)
                {
                  goto LABEL_225;
                }

                v127 = 2137;
                goto LABEL_224;
              }

              v163 = VCPSignPostLog();
              v164 = v163;
              if ((contextb - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v163))
              {
                LOWORD(buf.start.value) = 0;
                _os_signpost_emit_with_name_impl(&dword_1C9B70000, v164, OS_SIGNPOST_INTERVAL_END, contextb, "VCPMovieAnalyzer_GenerateAndPersistVideoThumbnailResources", "", &buf, 2u);
              }

              v140 = self->_requestedAnalyses;
            }

            [(NSMutableDictionary *)self->_analysis vcp_addTypes:v140 & 0x82C617542D000];
            v141 = VCPSignPostLog();
            audioGroup = v141;
            if (v117 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v141))
            {
              LOWORD(buf.start.value) = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, audioGroup, OS_SIGNPOST_INTERVAL_END, v117, "VCPMovieAnalyzer_Video", "", &buf, 2u);
            }

            v31 = v174;
LABEL_192:
            v18 = [(VCPMovieAnalyzer *)self _waitForAsyncAudioResults];
            if (!v18)
            {
              v20 = 0;
              v18 = v31;
              goto LABEL_128;
            }

            if (!self->_errorCode)
            {
              *&self->_errorCode = xmmword_1C9F631A0;
            }

            goto LABEL_226;
          }

          if (MediaAnalysisLogLevel() >= 3)
          {
            v135 = MEMORY[0x1E69E9C10];
            v136 = MEMORY[0x1E69E9C10];
            audioGroup = 16;
            if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf.start.value) = 134218240;
              *(&buf.start.value + 4) = v123;
              LOWORD(buf.start.flags) = 2048;
              *(&buf.start.flags + 2) = v124;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "    Video track has invalid dimensions (%.f,%.f)", &buf, 0x16u);
            }
          }

          if (self->_errorCode)
          {
LABEL_208:

LABEL_41:
            v20 = 4;
            v19 = 1;
            v18 = -18;
            goto LABEL_128;
          }

          v134 = 2083;
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v128 = MEMORY[0x1E69E9C10];
            v129 = MEMORY[0x1E69E9C10];
            audioGroup = 16;
            if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
            {
              v130 = [(VCPAsset *)self->_asset localIdentifier];
              v131 = [v14 tracks];
              v132 = [v131 count];
              v133 = [v14 tracks];
              LODWORD(buf.start.value) = 138412802;
              *(&buf.start.value + 4) = v130;
              LOWORD(buf.start.flags) = 2048;
              *(&buf.start.flags + 2) = v132;
              HIWORD(buf.start.epoch) = 2112;
              buf.duration.value = v133;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  [%@] Asset does not have valid video track; all %lu tracks: %@", &buf, 0x20u);
            }
          }

          if (self->_errorCode)
          {
            goto LABEL_208;
          }

          v134 = 2078;
        }

        self->_errorCode = 45;
        self->_errorLine = v134;
        goto LABEL_208;
      }

      v44 = VCPSignPostLog();
      v175 = os_signpost_id_generate(v44);

      v45 = VCPSignPostLog();
      audioGroup = v45;
      if (v175 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, audioGroup, OS_SIGNPOST_INTERVAL_BEGIN, v175, "VCPMovieAnalyzer_Stabilization", "", &buf, 2u);
      }

      contexta = [(NSMutableDictionary *)self->_privateResults objectForKeyedSubscript:@"MetaStabilizationResults"];
      if ((self->_requestedAnalyses & 0x10000000000) != 0)
      {
        audioGroup = @"LivePhotoKeyFrameTimestamp";
        v48 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"LivePhotoKeyFrameTimestamp"];
        v49 = v48 == 0;

        if (v49)
        {
          v47 = [(NSMutableDictionary *)self->_privateResults objectForKeyedSubscript:@"MetaStillImageHomographyResults"];
        }

        else
        {
          v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v224 = @"attributes";
          v223[0] = &unk_1F49BEF38;
          v222[0] = @"MetaStillImagePerspectiveTransformResults";
          v222[1] = @"MetaPresentationTimeResults";
          v51 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"LivePhotoKeyFrameTimestamp"];
          v223[1] = v51;
          audioGroup = [MEMORY[0x1E695DF20] dictionaryWithObjects:v223 forKeys:v222 count:2];
          v225[0] = audioGroup;
          v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v225 forKeys:&v224 count:1];
          [v50 addObject:v52];

          v47 = v50;
        }

        if (![v47 count])
        {
          goto LABEL_93;
        }

        v46 = [contexta count];
      }

      else
      {
        v46 = [contexta count];
        v47 = 0;
      }

      if (v46)
      {
        v53 = [v14 vcp_firstEnabledTrackWithMediaType:*MEMORY[0x1E6987608]];
        if (v53)
        {
          audioGroup = @"LivePhotoKeyFrameTimestamp";
          v54 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"LivePhotoKeyFrameTimestamp"];
          if (v54)
          {
            [v53 timeRange];
            CMTimeRangeGetEnd(&start, &buf);
            audioGroup = [(NSDictionary *)self->_options objectForKeyedSubscript:@"LivePhotoKeyFrameTimestamp"];
            CMTimeMakeFromDictionary(&v183, audioGroup);
            buf.start = start;
            time2.start = v183;
            v55 = CMTimeCompare(&buf.start, &time2.start);

            if (v55 < 0)
            {
              v219 = @"PathConstraintsStabilizationResults";
              v216 = @"attributes";
              v214 = @"settlingEffectStatus";
              v212 = @"settlingEffectLivePhotoKeyFrameTimeOutOfBoundFailure";
              v213 = MEMORY[0x1E695E118];
              v215 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v213 forKeys:&v212 count:1];
              v172 = v215;
              v110 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v215 forKeys:&v214 count:1];
              v217 = v110;
              v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v217 forKeys:&v216 count:1];
              v218 = v111;
              v112 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v218 count:1];
              v220 = v112;
              v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v220 forKeys:&v219 count:1];

              [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v113];
              [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x10000000000];
              v114 = self->_requestedAnalyses;
              if ((v114 & 0x4000000000) != 0)
              {
                self->_requestedAnalyses = v114 & 0xFFFFFFBFFFFFFFFFLL;
              }

              [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x4000000000];

              goto LABEL_173;
            }
          }

          [v53 vcp_fullFrameSize];
          v58 = v57;
          v59 = v56;
          if (v57 >= 1.0 && v56 >= 1.0)
          {
            [v53 vcp_cleanApertureRect];
            x = v227.origin.x;
            y = v227.origin.y;
            width = v227.size.width;
            height = v227.size.height;
            if (CGRectIsEmpty(v227))
            {
              if (MediaAnalysisLogLevel() >= 3)
              {
                v64 = MEMORY[0x1E69E9C10];
                v65 = MEMORY[0x1E69E9C10];
                audioGroup = 16;
                if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(buf.start.value) = 0;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "    Video track has invalid clean aperture rect", &buf, 2u);
                }
              }

              if (self->_errorCode)
              {
                goto LABEL_124;
              }

              v66 = xmmword_1C9F63170;
              goto LABEL_123;
            }

            audioGroup = [contexta objectForKeyedSubscript:@"MetaHomographyDimensionResults"];
            v138 = NSSizeFromString(audioGroup);

            if (v138.width == *MEMORY[0x1E695F060] && v138.height == *(MEMORY[0x1E695F060] + 8))
            {
              if (self->_errorCode)
              {
                goto LABEL_124;
              }

              v66 = xmmword_1C9F63160;
              goto LABEL_123;
            }

            memset(&buf, 0, sizeof(buf));
            if ((self->_requestedAnalyses & 0x10000000000) != 0)
            {
              [VCPSettlingEffectAnalyzer getSettlingEffectTimeRange:v53 withOptions:self->_options];
              if ((self->_requestedAnalyses & 0x10000000000) != 0 && ((buf.start.flags & 1) == 0 || (buf.duration.flags & 1) == 0 || buf.duration.epoch || buf.duration.value < 0))
              {
                if (MediaAnalysisLogLevel() >= 7)
                {
                  v153 = MEMORY[0x1E69E9C10];
                  v154 = MEMORY[0x1E69E9C10];
                  if (os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
                  {
                    v155 = [(VCPAsset *)self->_asset localIdentifier];
                    LODWORD(time2.start.value) = 138412290;
                    *(&time2.start.value + 4) = v155;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "  [%@] Asset has invalid time range for path constraint stabilization", &time2, 0xCu);
                  }
                }

                v210 = @"PathConstraintsStabilizationResults";
                v207 = @"attributes";
                v205 = @"settlingEffectStatus";
                v203 = @"settlingEffectInvalidTimeRange";
                v204 = MEMORY[0x1E695E118];
                v156 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v204 forKeys:&v203 count:1];
                v206 = v156;
                v157 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v206 forKeys:&v205 count:1];
                v208 = v157;
                v158 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v208 forKeys:&v207 count:1];
                v209 = v158;
                v159 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v209 count:1];
                v211 = v159;
                v148 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v211 forKeys:&v210 count:1];

                [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v148];
                [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x10000000000];
                v160 = self->_requestedAnalyses;
                if ((v160 & 0x4000000000) != 0)
                {
                  self->_requestedAnalyses = v160 & 0xFFFFFFBFFFFFFFFFLL;
                }

                [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x4000000000];
LABEL_294:

                goto LABEL_173;
              }
            }

            else
            {
              v139 = *(MEMORY[0x1E6960C98] + 16);
              *&buf.start.value = *MEMORY[0x1E6960C98];
              *&buf.start.epoch = v139;
              *&buf.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
            }

            v142 = VCPSignPostLog();
            v173 = os_signpost_id_generate(v142);

            v143 = VCPSignPostLog();
            v144 = v143;
            v171 = v173 - 1;
            if (v173 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v143))
            {
              LOWORD(time2.start.value) = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v144, OS_SIGNPOST_INTERVAL_BEGIN, v173, "VCPMovieAnalyzer_Stabilization_VCPVideoStabilizerGyro", "", &time2, 2u);
            }

            v145 = [VCPVideoGyroStabilizer alloc];
            audioGroup = [contexta objectForKeyedSubscript:@"MetaStabilizationFrameResults"];
            v146 = v138.width / v58;
            v147 = v138.height / v59;
            time2 = buf;
            v148 = [(VCPVideoGyroStabilizer *)v145 initWithMetadata:audioGroup sourceSize:v47 cropRect:&time2 stillImageMetadata:v138.width timeRange:v138.height, x * v146, y * v147, width * v146, height * v147];

            if (!v148)
            {
              v18 = -108;
              if (!self->_errorCode)
              {
                v149 = 2017;
                goto LABEL_262;
              }

LABEL_263:

              goto LABEL_125;
            }

            v18 = [(VCPVideoGyroStabilizer *)v148 convertAnalysisResult];
            if (v18)
            {
              if (!self->_errorCode)
              {
                v149 = 2018;
LABEL_262:
                self->_errorCode = 45;
                self->_errorLine = v149;
                goto LABEL_263;
              }

              goto LABEL_263;
            }

            if ((self->_requestedAnalyses & 0x4000000000000000) != 0)
            {
              [v53 preferredTransform];
              [(VCPVideoGyroStabilizer *)v148 storeAnalytics:&time2 isLivePhoto:[(VCPAsset *)self->_asset isLivePhoto]];
            }

            [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x4000000000000000, v171];
            v161 = self->_requestedAnalyses;
            if ((v161 & 0x10000000) != 0)
            {
              self->_requestedAnalyses = v161 & 0xFFFFFFFFFBFFFFFFLL;
              v162 = *(MEMORY[0x1E6960CA8] + 16);
              *&time2.start.value = *MEMORY[0x1E6960CA8];
              *&time2.start.epoch = v162;
              *&time2.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
              v18 = [(VCPVideoStabilizer *)v148 finishAnalysisPass:&time2];
              if (v18)
              {
                if (self->_errorCode)
                {
                  goto LABEL_263;
                }

                v149 = 2025;
                goto LABEL_262;
              }

              v165 = self->_analysis;
              audioGroup = [(VCPVideoStabilizer *)v148 results];
              [(NSMutableDictionary *)v165 vcp_addEntriesFromResults:audioGroup];

              [(NSMutableDictionary *)self->_analysis vcp_addTypes:335544320];
              v161 = self->_requestedAnalyses;
            }

            if ((v161 & 0x10000000000) != 0)
            {
              v168 = *(MEMORY[0x1E6960CA8] + 16);
              *&time2.start.value = *MEMORY[0x1E6960CA8];
              *&time2.start.epoch = v168;
              *&time2.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
              v18 = [(VCPVideoStabilizer *)v148 finishAnalysisPass:&time2];
              if (v18)
              {
                if (self->_errorCode)
                {
                  goto LABEL_263;
                }

                v149 = 2030;
                goto LABEL_262;
              }

              v169 = self->_analysis;
              v170 = [(VCPVideoStabilizer *)v148 results];
              [(NSMutableDictionary *)v169 vcp_addEntriesFromResults:v170];

              [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x10000000000];
              if ((self->_requestedAnalyses & 0x4000000000) != 0)
              {
                if ([(VCPVideoStabilizer *)v148 stabilizationFaild])
                {
                  self->_requestedAnalyses &= ~0x4000000000uLL;
                }

                [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x4000000000];
              }
            }

            v166 = VCPSignPostLog();
            v167 = v166;
            if (v171 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v166))
            {
              LOWORD(time2.start.value) = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v167, OS_SIGNPOST_INTERVAL_END, v173, "VCPMovieAnalyzer_Stabilization_VCPVideoStabilizerGyro", "", &time2, 2u);
            }

            goto LABEL_294;
          }

          if (MediaAnalysisLogLevel() >= 3)
          {
            v82 = MEMORY[0x1E69E9C10];
            v83 = MEMORY[0x1E69E9C10];
            audioGroup = 16;
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf.start.value) = 134218240;
              *(&buf.start.value + 4) = v58;
              LOWORD(buf.start.flags) = 2048;
              *(&buf.start.flags + 2) = v59;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "    Video track has invalid full frame dimensions (%.f,%.f)", &buf, 0x16u);
            }
          }

          if (self->_errorCode)
          {
            goto LABEL_124;
          }

          v66 = xmmword_1C9F63180;
        }

        else
        {
          if (self->_errorCode)
          {
LABEL_124:
            v18 = -18;
LABEL_125:

LABEL_126:
            v20 = 4;
            goto LABEL_127;
          }

          v66 = xmmword_1C9F63190;
        }

LABEL_123:
        *&self->_errorCode = v66;
        goto LABEL_124;
      }

LABEL_93:
      v67 = self->_requestedAnalyses;
      if ((v67 & 0x4000000000000000) != 0)
      {
        [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x4000000000000000];
        v67 = self->_requestedAnalyses;
      }

      if ((v67 & 0x10000000) != 0)
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v68 = MEMORY[0x1E69E9C10];
          v69 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
          {
            v70 = [(VCPAsset *)self->_asset localIdentifier];
            LODWORD(buf.start.value) = 138412290;
            *(&buf.start.value + 4) = v70;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "  [%@] Asset doesn't have gyro metadata", &buf, 0xCu);
          }
        }

        [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x10000000];
        v67 = self->_requestedAnalyses;
      }

      if ((v67 & 0x10000000000) == 0)
      {
        goto LABEL_174;
      }

      if (![contexta count] && MediaAnalysisLogLevel() >= 7)
      {
        v71 = MEMORY[0x1E69E9C10];
        v72 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
        {
          v73 = [(VCPAsset *)self->_asset localIdentifier];
          LODWORD(buf.start.value) = 138412290;
          *(&buf.start.value + 4) = v73;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "  [%@] Asset doesn't have gyro metadata", &buf, 0xCu);
        }
      }

      if (![v47 count] && MediaAnalysisLogLevel() >= 7)
      {
        v74 = MEMORY[0x1E69E9C10];
        v75 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          v76 = [(VCPAsset *)self->_asset localIdentifier];
          LODWORD(buf.start.value) = 138412290;
          *(&buf.start.value + 4) = v76;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "  [%@] Asset doesn't have still image metadata", &buf, 0xCu);
        }
      }

      v200 = @"PathConstraintsStabilizationResults";
      v197 = @"attributes";
      v195 = @"settlingEffectStatus";
      v193 = @"settlingEffectMissingMetadata";
      v194 = MEMORY[0x1E695E118];
      v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v194 forKeys:&v193 count:1];
      v196 = v77;
      v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v196 forKeys:&v195 count:1];
      v198 = v78;
      v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v198 forKeys:&v197 count:1];
      v199 = v79;
      v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v199 count:1];
      v201 = v80;
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v201 forKeys:&v200 count:1];

      [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v53];
      [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x10000000000];
      v81 = self->_requestedAnalyses;
      if ((v81 & 0x4000000000) != 0)
      {
        self->_requestedAnalyses = v81 & 0xFFFFFFBFFFFFFFFFLL;
      }

      [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x4000000000];
LABEL_173:

LABEL_174:
      v115 = VCPSignPostLog();
      audioGroup = v115;
      if (v175 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v115))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, audioGroup, OS_SIGNPOST_INTERVAL_END, v175, "VCPMovieAnalyzer_Stabilization", "", &buf, 2u);
      }

      v43 = self->_requestedAnalyses;
      v31 = v174;
      goto LABEL_178;
    }
  }

  v16 = self->_analysis;
  v17 = [MEMORY[0x1E695DF00] date];
  [(NSMutableDictionary *)v16 vcp_setDateAnalyzed:v17];

  [(NSMutableDictionary *)self->_analysis vcp_setFlags:0];
  [(NSMutableDictionary *)self->_analysis vcp_setQuality:0.0];
  [(NSMutableDictionary *)self->_analysis vcp_setStatsFlags:4];
  [(NSMutableDictionary *)self->_analysis vcp_setTypes:0x7FFFFFFFFFFFFFFFLL];
  self->_status = 2;
  if ((self->_requestedAnalyses & 0x20000000) != 0)
  {
    +[VCPVideoInterpolator sendPreGatedAnalytics];
  }

  audioGroup = self->_analysis;
  v18 = 0;
  v19 = 1;
  v20 = 1;
LABEL_128:

  objc_autoreleasePoolPop(v180);
  if (v20 == 4)
  {
    goto LABEL_152;
  }

  if (v20)
  {
    goto LABEL_167;
  }

  [(NSMutableDictionary *)self->_analysis vcp_removeSyncPoint];
  v84 = self->_analysis;
  v85 = [MEMORY[0x1E695DF00] date];
  [(NSMutableDictionary *)v84 vcp_setDateAnalyzed:v85];

  v86 = [(NSMutableDictionary *)self->_analysis vcp_results];
  v87 = [v86 objectForKey:@"QualityResults"];
  v88 = [v87 count] == 0;

  if (!v88)
  {
    v89 = objc_alloc_init(VCPVideoGlobalAnalyzer);
    v90 = [(VCPAsset *)self->_asset isSlowmo];
    asset = self->_asset;
    if (v90)
    {
      [(VCPAsset *)asset slowmoRate];
    }

    else
    {
      [(VCPAsset *)asset timelapseRate];
    }

    [(VCPVideoGlobalAnalyzer *)v89 analyzeOverallQuality:self->_analysis withFpsRate:v171];
    v93 = v92;
    if (v93 != -1.0)
    {
      [(NSMutableDictionary *)self->_analysis vcp_setQuality:v93, -1.0];
    }

    if ((self->_requestedAnalyses & 0x80000000) != 0)
    {
      if ([(VCPAsset *)self->_asset isLivePhoto]&& ![(VCPAsset *)self->_asset hadFlash])
      {
        v94 = [(NSMutableDictionary *)self->_analysis objectForKey:@"metadataRanges"];
        [(VCPVideoGlobalAnalyzer *)v89 generateLivePhotoRecommendationForResults:v94 andPrivateResults:self->_privateResults usingFaceAction:v19];
      }

      [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x80000000];
    }
  }

  if (([(NSMutableDictionary *)self->_analysis vcp_types]& 0x80) != 0)
  {
    v95 = [(NSMutableDictionary *)self->_analysis vcp_results];
    v96 = v95 == 0;

    if (!v96)
    {
      v97 = objc_alloc_init(VCPVideoGlobalAnalyzer);
      v98 = [(NSMutableDictionary *)self->_analysis vcp_results];
      v99 = [(VCPVideoGlobalAnalyzer *)v97 setActivityLevel:v98];

      if (v99)
      {
        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F631C0;
        }

        v18 = v99;
        goto LABEL_152;
      }
    }
  }

  if ([(VCPAsset *)self->_asset isMovie])
  {
    [(NSMutableDictionary *)self->_analysis vcp_addStatsFlags:4];
  }

  self->_status = 2;
LABEL_152:
  if (!v18)
  {
    goto LABEL_159;
  }

  if (v18 == -128)
  {
    goto LABEL_154;
  }

  self->_status = 3;
  p_analysis = &self->_analysis;
LABEL_158:
  v102 = *p_analysis;
  *p_analysis = 0;

LABEL_159:
  v103 = VCPSignPostLog();
  v104 = v103;
  if (v182 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v103))
  {
    LOWORD(buf.start.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v104, OS_SIGNPOST_INTERVAL_END, spid, "VCPMovieAnalyzer", "", &buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v105 = MEMORY[0x1E69E9C10];
    v106 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
    {
      v107 = [(VCPAsset *)self->_asset localIdentifier];
      v108 = [(NSMutableDictionary *)self->_analysis vcp_analysisDescriptionWithResultDetails:1];
      LODWORD(buf.start.value) = 138412546;
      *(&buf.start.value + 4) = v107;
      LOWORD(buf.start.flags) = 2112;
      *(&buf.start.flags + 2) = v108;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][MovieAnalyzer] After analyzing %@", &buf, 0x16u);
    }
  }

LABEL_166:
  audioGroup = self->_analysis;
LABEL_167:

  return audioGroup;
}

void __42__VCPMovieAnalyzer_analyzeAsset_streamed___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v15 = 0;
  v5 = [v2 analyzeAsset:v3 cancel:v4 results:&v15];
  v6 = v15;
  v7 = v6;
  *(a1[4] + 104) = v5;
  if (!*(a1[4] + 104))
  {
    v8 = [v6 mutableCopy];
    v9 = a1[4];
    v10 = *(v9 + 112);
    *(v9 + 112) = v8;

    *(a1[4] + 120) = a1[8];
  }

  v11 = VCPSignPostLog();
  v12 = v11;
  v13 = a1[9];
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_END, v13, "VCPMovieAnalyzer_Audio", "", v14, 2u);
  }

  if (a1[10])
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }
}

- (int)generateKeyFrameResource:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_analysis vcp_results];
  v6 = [v5 objectForKeyedSubscript:@"MovieSummaryResults"];

  if (![v6 count])
  {
    goto LABEL_6;
  }

  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [v7 objectForKeyedSubscript:@"attributes"];

  if (![v8 count])
  {
    if (!self->_errorCode)
    {
      v18 = xmmword_1C9F631F0;
LABEL_11:
      *&self->_errorCode = v18;
    }

LABEL_15:

    v17 = -18;
    goto LABEL_16;
  }

  v9 = [MEMORY[0x1E6987E68] assetImageGeneratorWithAsset:v4];
  v10 = v9;
  if (!v9)
  {
    if (!self->_errorCode)
    {
      v18 = xmmword_1C9F631E0;
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  [v9 setAppliesPreferredTrackTransform:1];
  [v10 setMaximumSize:{576, 576}];
  v11 = MEMORY[0x1E6960CC0];
  v21 = **&MEMORY[0x1E6960CC0];
  [v10 setRequestedTimeToleranceAfter:&v21];
  v21 = *v11;
  [v10 setRequestedTimeToleranceBefore:&v21];
  memset(&v21, 0, sizeof(v21));
  v12 = [v6 objectAtIndexedSubscript:0];
  v13 = [v12 objectForKeyedSubscript:@"start"];
  CMTimeMakeFromDictionary(&v21, v13);

  v20 = v21;
  v14 = [v10 copyCGImageAtTime:&v20 actualTime:0 error:0];
  if (!v14)
  {
    if (!self->_errorCode)
    {
      *&self->_errorCode = xmmword_1C9F631D0;
    }

    goto LABEL_15;
  }

  analysis = self->_analysis;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v14, 0}];
  [(NSMutableDictionary *)analysis vcp_appendResult:v16 forKey:@"KeyFrameResourceResults"];

LABEL_6:
  v17 = 0;
LABEL_16:

  return v17;
}

- (int)generateAndPersistVideoThumbnailResources:(id)a3 forPHAsset:(id)a4 withResults:(id)a5 cancelBlock:(id)a6
{
  v66 = *MEMORY[0x1E69E9840];
  v50 = a3;
  v10 = a4;
  v11 = a5;
  v56 = a6;
  v57 = v11;
  v51 = v10;
  if (!v11)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v19 = [v10 localIdentifier];
      *buf = 138412290;
      *&buf[4] = v19;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MovieAnalyzer][%@] No video thumbnail results exist, skip generating resources", buf, 0xCu);
    }

    v55 = 0;
    goto LABEL_60;
  }

  v12 = [(VCPAsset *)self->_asset pixelWidth];
  v13 = [(VCPAsset *)self->_asset pixelHeight];
  v14 = [(VCPAsset *)self->_asset pixelWidth];
  v15 = [(VCPAsset *)self->_asset pixelHeight];
  v16 = v12 / v13;
  if (v14 <= v15)
  {
    v18 = 360.0;
    v17 = 360.0 / v16;
  }

  else
  {
    v17 = 360.0;
    v18 = v16 * 360.0;
  }

  v20 = [MEMORY[0x1E6987E68] assetImageGeneratorWithAsset:v50];
  v53 = v20;
  if (!v20)
  {
    if (!self->_errorCode)
    {
      *&self->_errorCode = xmmword_1C9F63240;
    }

    v55 = -18;
    goto LABEL_59;
  }

  [v20 setAppliesPreferredTrackTransform:1];
  [v53 setMaximumSize:{v18, v17}];
  CMTimeMake(&v64, 30, 600);
  *buf = v64;
  [v53 setRequestedTimeToleranceAfter:buf];
  CMTimeMake(&v63, 30, 600);
  *buf = v63;
  [v53 setRequestedTimeToleranceBefore:buf];
  v54 = self;
  v52 = [MEMORY[0x1E695DF90] dictionary];
  v21 = 0;
  *(&v22 + 1) = 2269;
  *&v22 = 138412802;
  v47 = v22;
  while (v21 < [v57 count])
  {
    v23 = objc_autoreleasePoolPush();
    if (!v56 || (v56[2]() & 1) == 0)
    {
      v25 = [v57 objectAtIndexedSubscript:v21];
      v26 = [v25 objectForKeyedSubscript:@"attributes"];
      v27 = [v26 objectForKeyedSubscript:@"thumbnailID"];

      if (v27)
      {
        memset(&v62, 0, sizeof(v62));
        v28 = [v25 objectForKeyedSubscript:@"start"];
        CMTimeMakeFromDictionary(&v62, v28);

        if ((v62.flags & 1) == 0)
        {
          v29 = v54;
          if (!v54->_errorCode)
          {
            v24 = 0;
            v30 = xmmword_1C9F63220;
            goto LABEL_49;
          }

LABEL_38:
          v24 = 0;
LABEL_50:
          v55 = -18;
LABEL_51:

          goto LABEL_52;
        }

        *buf = v62;
        v31 = [v53 copyCGImageAtTime:buf actualTime:0 error:0];
        if (v31)
        {
          [v52 setObject:v31 forKeyedSubscript:v27];

          if ([v52 count] != 5 && v21 != objc_msgSend(v57, "count") - 1)
          {
            goto LABEL_46;
          }

          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            v32 = [v51 localIdentifier];
            v33 = [v52 count];
            *buf = 138412546;
            *&buf[4] = v32;
            *&buf[12] = 1024;
            *&buf[14] = v33;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MovieAnalyzer][%@] Persisting %d thumbnail resources to Photos", buf, 0x12u);
          }

          v49 = mach_absolute_time();
          v34 = VCPSignPostLog();
          v35 = os_signpost_id_generate(v34);

          v36 = VCPSignPostLog();
          v37 = v36;
          if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v37, OS_SIGNPOST_INTERVAL_BEGIN, v35, "VCPMovieAnalyzer_PersistVideoThumbnailResources", "", buf, 2u);
          }

          v38 = [v51 photoLibrary];
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __97__VCPMovieAnalyzer_generateAndPersistVideoThumbnailResources_forPHAsset_withResults_cancelBlock___block_invoke;
          v59[3] = &unk_1E834D238;
          v39 = v51;
          v60 = v39;
          v40 = v52;
          v61 = v40;
          v58 = 0;
          v41 = [v38 performChangesAndWait:v59 error:&v58];
          v48 = v58;

          v42 = VCPSignPostLog();
          v43 = v42;
          if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v43, OS_SIGNPOST_INTERVAL_END, v35, "VCPMovieAnalyzer_PersistVideoThumbnailResources", "", buf, 2u);
          }

          if (v49)
          {
            mach_absolute_time();
            VCPPerformance_LogMeasurement();
          }

          if (v41)
          {
            [v40 removeAllObjects];
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v44 = [v39 localIdentifier];
              v45 = [v40 count];
              *buf = v47;
              *&buf[4] = v44;
              *&buf[12] = 1024;
              *&buf[14] = v45;
              *&buf[18] = 2112;
              *&buf[20] = v48;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MovieAnalyzer][%@] Failed to persist %d thumbnail resources: %@", buf, 0x1Cu);
            }

            if (!v54->_errorCode)
            {
              *&v54->_errorCode = xmmword_1C9F63200;
            }

            v55 = -18;
          }

          if ((v41 & 1) == 0)
          {
            v24 = 0;
          }

          else
          {
LABEL_46:
            v24 = 1;
          }

          goto LABEL_51;
        }

        v29 = v54;
        if (v54->_errorCode)
        {
          goto LABEL_38;
        }

        v24 = 0;
        v30 = xmmword_1C9F63210;
      }

      else
      {
        v29 = v54;
        if (v54->_errorCode)
        {
          goto LABEL_38;
        }

        v24 = 0;
        v30 = xmmword_1C9F63230;
      }

LABEL_49:
      *&v29->_errorCode = v30;
      goto LABEL_50;
    }

    v24 = 0;
    v55 = -128;
LABEL_52:
    objc_autoreleasePoolPop(v23);
    ++v21;
    if ((v24 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  v55 = 0;
LABEL_58:

LABEL_59:
LABEL_60:

  return v55;
}

void __97__VCPMovieAnalyzer_generateAndPersistVideoThumbnailResources_forPHAsset_withResults_cancelBlock___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6978640] changeRequestForAsset:*(a1 + 32)];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [*(a1 + 40) objectForKeyedSubscript:{v7, v10}];

        [v2 setContextualVideoThumbnailImage:v9 withIdentifier:v7];
        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

+ (void)getMaximumHighlightInSec
{
  if (__cxa_guard_acquire(&qword_1ED942830))
  {
    _MergedGlobals_2 = 1092616192;

    __cxa_guard_release(&qword_1ED942830);
  }
}

@end