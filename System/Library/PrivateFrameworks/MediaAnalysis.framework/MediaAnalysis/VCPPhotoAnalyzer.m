@interface VCPPhotoAnalyzer
+ (BOOL)canAnalyzeUndegraded:(id)a3 withResources:(id)a4;
+ (id)analyzerWithVCPAsset:(id)a3 forAnalysisTypes:(unint64_t)a4;
+ (id)resourceForAsset:(id)a3 withResources:(id)a4;
- (VCPPhotoAnalyzer)initWithPHAsset:(id)a3 existingAnalysis:(id)a4 analysisTypes:(unint64_t)a5 downloadedData:(id)a6;
- (VCPPhotoAnalyzer)initWithVCPAsset:(id)a3 withExistingAnalysis:(id)a4 forAnalysisTypes:(unint64_t)a5;
- (id).cxx_construct;
- (id)analyzeAsset:(id)a3 withOptions:(id)a4;
- (id)existingAnalysisForMovieAnalyzer;
- (int)analyzeImage:(unint64_t *)a3 performedAnalyses:(unint64_t *)a4 cancel:(id)a5;
- (int)checkFaceDominant;
- (int)downscaleImage:(__CVBuffer *)a3 scaledImage:(__CVBuffer *)a4 majorDimension:(int)a5;
- (int)runBlock:(id)a3 queue:(id)a4;
- (void)_reportPetsAnalysisWithResults:(id)a3;
- (void)processExistingAnalyses:(id)a3;
@end

@implementation VCPPhotoAnalyzer

+ (id)resourceForAsset:(id)a3 withResources:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 vcp_localPhotoResourcesSorted:{objc_msgSend(v5, "hasAdjustments")}];

  if ([v7 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v7;
    v9 = 0;
    v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          if ([v13 vcp_fileSize] <= 0x800000 && objc_msgSend(v13, "vcp_isDecodable"))
          {
            [v13 vcp_size];
            if (v14 < v15)
            {
              v16 = v15;
            }

            else
            {
              v16 = v14;
            }

            v17 = v13;
            if (v16 > 1536.0)
            {

              goto LABEL_19;
            }

            v9 = v17;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v9 = v9;
    v17 = v9;
LABEL_19:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (BOOL)canAnalyzeUndegraded:(id)a3 withResources:(id)a4
{
  v5 = a3;
  v6 = [VCPPhotoAnalyzer resourceForAsset:v5 withResources:a4];
  [v6 vcp_size];
  if (v7 < v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v9 >= 1536.0)
  {
    v12 = 1;
  }

  else
  {
    [v5 vcp_originalSize];
    if (v10 < v11)
    {
      v10 = v11;
    }

    v12 = v9 >= v10;
  }

  return v12;
}

- (VCPPhotoAnalyzer)initWithVCPAsset:(id)a3 withExistingAnalysis:(id)a4 forAnalysisTypes:(unint64_t)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = MEMORY[0x1E696AEC0];
  v12 = [v9 localIdentifier];
  v13 = [v11 stringWithFormat:@"[%@][PhotoAnalyzer]", v12];

  v38.receiver = self;
  v38.super_class = VCPPhotoAnalyzer;
  v14 = [(VCPPhotoAnalyzer *)&v38 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_24;
  }

  v16 = [v9 modificationDate];
  v17 = v16 == 0;

  if (!v17)
  {
    *(v14 + 60) = 0;
    *(v14 + 17) = 0;
    *(v14 + 18) = 0;
    *(v14 + 16) = 1;
    *(v14 + 1) = a5;
    v18 = [MEMORY[0x1E695DF90] dictionary];
    v19 = *(v14 + 2);
    *(v14 + 2) = v18;

    objc_storeStrong(v14 + 6, a3);
    __asm { FMOV            V0.2S, #1.0 }

    *(v14 + 7) = -_D0;
    v25 = *(v14 + 1);
    v26 = v25 & 0xFFFCBE36FFFFFFFFLL;
    if ((v25 & 0xFFFCBE36FFFFFFFFLL) != 0)
    {
      v25 |= 0x80200uLL;
    }

    if (v26 | v25 & 0x2000000000)
    {
      *(v14 + 1) = v25 | ((v25 & 0x2000000000uLL) >> 20);
    }

    [v14 processExistingAnalyses:v10];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v27 = MediaAnalysisTypeShortDescription(*(v14 + 1));
      *buf = 138412546;
      v40 = v13;
      v41 = 2112;
      v42 = v27;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Initial to process (%@)", buf, 0x16u);
    }

    v28 = [*(v14 + 6) isLivePhoto];
    v29 = *(v14 + 1);
    if (!v28)
    {
      goto LABEL_16;
    }

    v30 = v29 & 0x4000AF47FCA400D0;
    *(v14 + 3) = v29 & 0x4000AF47FCA400D0;
    v14[65] = (v29 & 0x40000000) != 0;
    if ((v29 & 0x80) != 0)
    {
      v30 |= 8uLL;
      *(v14 + 3) = v30;
      v29 |= 0x200uLL;
      *(v14 + 1) = v29;
      if ((v30 & 0x40000) == 0)
      {
LABEL_13:
        if ((v30 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_30;
      }
    }

    else if ((v29 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    v29 |= 0x200uLL;
    *(v14 + 1) = v29;
    if ((v30 & 0x80000000) == 0)
    {
LABEL_14:
      if ((v29 & 0x100000) == 0)
      {
LABEL_16:
        if ((v29 & 0x2000000000200) != 0)
        {
          *(v14 + 1) = (v29 >> 6) & 8 | (v29 >> 1) & 0x1000000000000 | v29;
        }

        [*(v14 + 2) vcp_setVersion:75];
        v31 = *(v14 + 2);
        v32 = [(VCPAsset *)v15->_asset modificationDate];
        [v31 vcp_setDateModified:v32];

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v33 = MediaAnalysisTypeShortDescription(v15->_requestedAnalyses);
          v34 = MediaAnalysisTypeShortDescription(v15->_irisAnalyses);
          *buf = 138412802;
          v40 = v13;
          v41 = 2112;
          v42 = v33;
          v43 = 2112;
          v44 = v34;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Initialized to process (%@), iris (%@)", buf, 0x20u);
        }

        goto LABEL_24;
      }

LABEL_15:
      v29 |= 0x20008uLL;
      *(v14 + 1) = v29;
      goto LABEL_16;
    }

LABEL_30:
    *(v14 + 3) = v30 | 0x88;
    if ((v29 & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (!*(v14 + 17))
  {
    *(v14 + 136) = xmmword_1C9F638E0;
  }

  *(v14 + 16) = 3;
  v35 = *(v14 + 2);
  *(v14 + 2) = 0;

LABEL_24:
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v36 = [(NSMutableDictionary *)v15->_analysis vcp_analysisDescriptionWithResultDetails:1];
    *buf = 138412546;
    v40 = v13;
    v41 = 2112;
    v42 = v36;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Initialized analysis %@", buf, 0x16u);
  }

  return v15;
}

+ (id)analyzerWithVCPAsset:(id)a3 forAnalysisTypes:(unint64_t)a4
{
  v5 = a3;
  v6 = [objc_alloc(objc_opt_class()) initWithVCPAsset:v5 withExistingAnalysis:0 forAnalysisTypes:a4];

  return v6;
}

- (VCPPhotoAnalyzer)initWithPHAsset:(id)a3 existingAnalysis:(id)a4 analysisTypes:(unint64_t)a5 downloadedData:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = [VCPPhotosAsset assetWithPHAsset:v11 downloadedData:a6];
  v14 = MediaAnalysisStripOutdatedAnalysis(v11, v12);
  v15 = [(VCPPhotoAnalyzer *)self initWithVCPAsset:v13 withExistingAnalysis:v14 forAnalysisTypes:a5];

  if (v15)
  {
    objc_storeStrong(&v15->_phAsset, a3);
    if ((v15->_requestedAnalyses & 0x200) != 0)
    {
      if ([v11 vcp_needSceneProcessing])
      {
        v15->_preAnalysisSharpnessScore = -1.0;
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v11 localIdentifier];
          *buf = 138412290;
          v37 = v16;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  [%@] missing Pre Analysis result", buf, 0xCu);
        }
      }

      else
      {
        v17 = [v11 mediaAnalysisProperties];

        if (v17)
        {
          v18 = [v11 mediaAnalysisProperties];
          [v18 blurrinessScore];
          v15->_preAnalysisSharpnessScore = v19;
        }

        else
        {
          v15->_preAnalysisSharpnessScore = -1.0;
        }
      }
    }

    requestedAnalyses = v15->_requestedAnalyses;
    if (((requestedAnalyses & 0xC) == 4 || (requestedAnalyses & 8) != 0 && [MEMORY[0x1E6978628] vcp_usePHFace]) && (objc_msgSend(v11, "vcp_needsFaceProcessing") & 1) == 0)
    {
      v35 = 0;
      v21 = [v11 vcp_queryPHFaces:&v15->_phFaceFlags results:&v35];
      v22 = v35;
      analysis = v22;
      if (v21)
      {
        if (!v15->_errorCode)
        {
          *&v15->_errorCode = xmmword_1C9F638F0;
        }

        v15->_status = 3;
        analysis = v15->_analysis;
        v15->_analysis = 0;
      }

      else
      {
        if (v22 && [(NSMutableDictionary *)v22 count])
        {
          v24 = [(NSMutableDictionary *)analysis objectForKey:@"FaceQualityFlag"];
          v25 = [v24 intValue];

          if ((v15->_requestedAnalyses & 0x40000) != 0 && ((v26 = [(VCPAsset *)v15->_asset isLivePhoto], !v25) ? (v27 = v26) : (v27 = 0), v27))
          {
            phFaceResults = v15->_phFaceResults;
            v15->_phFaceResults = 0;
          }

          else
          {
            v30 = MEMORY[0x1E695DF20];
            phFaceResults = [(NSMutableDictionary *)analysis objectForKeyedSubscript:@"FaceResults"];
            v31 = [(NSMutableDictionary *)analysis objectForKeyedSubscript:@"ShotTypeResults"];
            v32 = [v30 dictionaryWithObjectsAndKeys:{phFaceResults, @"FaceResults", v31, @"ShotTypeResults", 0}];
            v33 = v15->_phFaceResults;
            v15->_phFaceResults = v32;
          }
        }

        else
        {
          v29 = [MEMORY[0x1E695DF20] dictionary];
          phFaceResults = v15->_phFaceResults;
          v15->_phFaceResults = v29;
        }
      }
    }
  }

  return v15;
}

- (void)processExistingAnalyses:(id)a3
{
  v12 = a3;
  if (v12)
  {
    v4 = [v12 objectForKey:@"performedAnalysisTypes"];

    if (v4)
    {
      v5 = [v12 vcp_types];
      v6 = self->_requestedAnalyses & v5;
      if ([(VCPAsset *)self->_asset isMovie])
      {
        if ((self->_requestedAnalyses & 0x2000000000000) != 0)
        {
          v7 = [v12 vcp_results];
          v8 = [v7 objectForKeyedSubscript:@"MiCaImageCaptionResults"];

          if (!v8)
          {
            v5 &= 0xFFFCFFFFFFFFFFFFLL;
            v6 &= 0xFFFCFFFFFFFFFFFFLL;
          }
        }
      }

      analysis = self->_analysis;
      self->_requestedAnalyses &= ~v6;
      v10 = [v12 vcp_results];
      [(NSMutableDictionary *)analysis vcp_addEntriesFromResults:v10];

      [(NSMutableDictionary *)self->_analysis vcp_addTypes:v5];
      v11 = self->_analysis;
      [v12 vcp_quality];
      [(NSMutableDictionary *)v11 vcp_setQuality:?];
    }
  }
}

- (id)existingAnalysisForMovieAnalyzer
{
  v12[4] = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_analysis vcp_types];
  v4 = [(NSMutableDictionary *)self->_analysis vcp_results];
  v5 = [v4 mutableCopy];

  [v5 removeObjectForKey:@"FaceResults"];
  [v5 removeObjectForKey:@"FacePrintResults"];
  [v5 removeObjectForKey:@"FeatureVectorResults"];
  [v5 removeObjectForKey:@"SceneprintResults"];
  [v5 removeObjectForKey:@"SaliencyResults"];
  [v5 removeObjectForKey:@"HumanPoseResults"];
  if (v5)
  {
    v11[0] = @"version";
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[NSMutableDictionary vcp_version](self->_analysis, "vcp_version")}];
    v12[0] = v6;
    v11[1] = @"dateModified";
    v7 = [(NSMutableDictionary *)self->_analysis vcp_dateModified];
    v12[1] = v7;
    v11[2] = @"performedAnalysisTypes";
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v3 & 0xFFFFFFFFFFBFE7F3];
    v11[3] = @"metadataRanges";
    v12[2] = v8;
    v12[3] = v5;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int)downscaleImage:(__CVBuffer *)a3 scaledImage:(__CVBuffer *)a4 majorDimension:(int)a5
{
  *a4 = 0;
  if (a3)
  {
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    if (Width <= Height)
    {
      v11 = Height;
    }

    else
    {
      v11 = Width;
    }

    if (v11 <= a5)
    {
      v14 = CFRetain(a3);
      v13 = 0;
      *a4 = v14;
    }

    else
    {
      Scaler::Scale(&self->_scaler, a3, a4, (Width * a5 / v11) & 0xFFFFFFFE, (Height * a5 / v11) & 0xFFFFFFFE, 875704422);
      v13 = v12;
      if (v12)
      {
        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F63900;
        }

        if (*a4)
        {
          CFRelease(*a4);
          *a4 = 0;
        }
      }
    }
  }

  else
  {
    if (!self->_errorCode)
    {
      *&self->_errorCode = xmmword_1C9F63910;
    }

    return -50;
  }

  return v13;
}

- (int)checkFaceDominant
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = [(NSMutableDictionary *)self->_analysis vcp_flags];
  phFaceResults = self->_phFaceResults;
  if (!phFaceResults)
  {
    v5 = [(VCPAsset *)self->_asset exif];
    if (v5)
    {
      v6 = [[VCPExifAnalyzer alloc] initWithProperties:v5 forAnalysisTypes:4];
      v7 = v6;
      if (!v6)
      {
        v10 = 0;
        v8 = -108;
        if (self->_errorCode)
        {
          goto LABEL_12;
        }

        v11 = 481;
LABEL_11:
        self->_errorCode = 9;
        self->_errorLine = v11;
LABEL_12:

        v4 = 0;
LABEL_26:

        goto LABEL_27;
      }

      v21 = 0;
      v8 = [(VCPExifAnalyzer *)v6 analyzeAsset:&v22 results:&v21];
      v9 = v21;
      v10 = v9;
      if (v8)
      {
        if (self->_errorCode)
        {
          goto LABEL_12;
        }

        v11 = 482;
        goto LABEL_11;
      }

      v4 = [v9 objectForKeyedSubscript:@"FaceResults"];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_15;
  }

  v4 = [(NSDictionary *)phFaceResults objectForKeyedSubscript:@"FaceResults"];
LABEL_15:
  if (![v4 count])
  {
    v8 = 0;
    goto LABEL_29;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v12 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v12)
  {
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v5);
        }

        v15 = [*(*(&v17 + 1) + 8 * i) objectForKeyedSubscript:{@"attributes", v17}];
        v10 = [v15 objectForKeyedSubscript:@"faceBounds"];

        v25 = NSRectFromString(v10);
        if (v25.size.height * v25.size.width > 0.200000003)
        {
          v8 = 0;
          self->_faceDominated = 1;
          v4 = v5;
          goto LABEL_26;
        }
      }

      v12 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
  v4 = v5;
LABEL_27:

LABEL_29:
  return v8;
}

- (void)_reportPetsAnalysisWithResults:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26 = [v4 objectForKeyedSubscript:@"PetsResults"];
  v27 = [v4 objectForKeyedSubscript:@"PetsFaceResults"];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  v7 = *(MEMORY[0x1E695F050] + 16);
  v8 = *(MEMORY[0x1E695F050] + 24);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v26;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v10)
  {
    v11 = *v29;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v28 + 1) + 8 * i) objectForKeyedSubscript:@"attributes"];
        v15 = [v14 objectForKeyedSubscript:@"petsBounds"];

        v36 = NSRectFromString(v15);
        v38.origin.x = v36.origin.x;
        v38.origin.y = v36.origin.y;
        width = v36.size.width;
        height = v36.size.height;
        v36.origin.x = x;
        v36.origin.y = y;
        v36.size.width = v7;
        v36.size.height = v8;
        v38.size.width = width;
        v38.size.height = height;
        v37 = CGRectUnion(v36, v38);
        x = v37.origin.x;
        y = v37.origin.y;
        v7 = v37.size.width;
        v8 = v37.size.height;
        if (width * height > v12)
        {
          v12 = width * height;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 0.0;
  }

  v18 = +[VCPMADCoreAnalyticsManager sharedManager];
  v32[0] = @"AssetType";
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VCPAsset mediaType](self->_asset, "mediaType")}];
  v33[0] = v19;
  v32[1] = @"SceneType";
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSDictionary count](self->_phFaceResults, "count") != 0}];
  v33[1] = v20;
  v33[2] = &unk_1F49BE4D0;
  v32[2] = @"ResourceType";
  v32[3] = @"NumberOfPetsDetected";
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
  v33[3] = v21;
  v32[4] = @"AggregatedBoundingBoxSizeRatio";
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:v7 * v8];
  v33[4] = v22;
  v32[5] = @"LargestBoundingBoxSizeRatio";
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  v33[5] = v23;
  v32[6] = @"NumberOfPetFacesDetected";
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v27, "count")}];
  v33[6] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:7];
  [v18 sendEvent:@"com.apple.mediaanalysisd.analysis.pets" withAnalytics:v25];
}

- (int)runBlock:(id)a3 queue:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __35__VCPPhotoAnalyzer_runBlock_queue___block_invoke;
    v9[3] = &unk_1E83519A8;
    v11 = &v12;
    v10 = v5;
    dispatch_sync(v6, v9);
    v7 = *(v13 + 6);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = v5[2](v5);
  }

  return v7;
}

uint64_t __35__VCPPhotoAnalyzer_runBlock_queue___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)analyzeImage:(unint64_t *)a3 performedAnalyses:(unint64_t *)a4 cancel:(id)a5
{
  v169 = a5;
  v7 = VCPSignPostLog();
  v8 = os_signpost_id_generate(v7);

  v9 = VCPSignPostLog();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VCPPhotoAnalyzer_Image", "", buf, 2u);
  }

  *buf = 0;
  v229 = buf;
  v230 = 0x3812000000;
  v231 = __Block_byref_object_copy__70;
  v232 = __Block_byref_object_dispose__70;
  v233 = &unk_1CA01F5A2;
  v234 = 0;
  v227[0] = MEMORY[0x1E69E9820];
  v227[1] = 3221225472;
  v227[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke;
  v227[3] = &unk_1E83519D0;
  v227[4] = self;
  v227[5] = buf;
  v11 = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueDecode];
  v12 = [(VCPPhotoAnalyzer *)self runBlock:v227 queue:v11];

  if (!v12)
  {
    v226 = 0;
    v12 = [(VCPPhotoAnalyzer *)self downscaleImage:*(v229 + 6) scaledImage:&v226 majorDimension:576];
    if (v12)
    {
      if (!self->_errorCode)
      {
        *&self->_errorCode = xmmword_1C9F63930;
      }

      goto LABEL_204;
    }

    if (v169 && (v169[2]() & 1) != 0)
    {
      v12 = -128;
LABEL_204:
      CF<__CVBuffer *>::~CF(&v226);
      goto LABEL_205;
    }

    requestedAnalyses = self->_requestedAnalyses;
    if ((requestedAnalyses & 8) == 0)
    {
      context = 0;
      if ((requestedAnalyses & 0x100) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_42;
    }

    v14 = [(VCPAsset *)self->_asset isPano];
    v15 = (v229 + 48);
    if (!v14)
    {
      v15 = &v226;
    }

    v16 = *v15;
    *v220 = 0;
    v221 = v220;
    v222 = 0x3032000000;
    v223 = __Block_byref_object_copy__689;
    v224 = __Block_byref_object_dispose__690;
    v225 = 0;
    if ([MEMORY[0x1E6978628] vcp_usePHFace] && self->_phFaceResults)
    {
      if (([MEMORY[0x1E6978628] vcp_usePHFaceExpression] & 1) == 0)
      {
        v17 = [(NSDictionary *)self->_phFaceResults objectForKeyedSubscript:@"FaceResults"];
        v18 = v17;
        if (v17 && [v17 count])
        {
          v211[0] = MEMORY[0x1E69E9820];
          v211[1] = 3221225472;
          v211[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_694;
          v211[3] = &unk_1E8351A20;
          v211[4] = self;
          v213 = v16;
          v214 = a3;
          v212 = v169;
          v19 = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueFace];
          v20 = [(VCPPhotoAnalyzer *)self runBlock:v211 queue:v19];

          if (v20)
          {
            context = v20;
            if (!self->_errorCode)
            {
              *&self->_errorCode = xmmword_1C9F63940;
            }

LABEL_32:
            v23 = 0;
            goto LABEL_40;
          }
        }

        if (self->_phFaceResults)
        {
          *a4 |= 0xCuLL;
        }
      }

      context = 0;
    }

    else
    {
      v215[0] = MEMORY[0x1E69E9820];
      v215[1] = 3221225472;
      v215[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_691;
      v215[3] = &unk_1E83519F8;
      v219 = a3;
      v218 = v16;
      v217 = v220;
      v216 = v169;
      v215[4] = self;
      v21 = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueFace];
      v22 = [(VCPPhotoAnalyzer *)self runBlock:v215 queue:v21];

      if (v22)
      {
        context = v22;
        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F63950;
        }

        goto LABEL_32;
      }

      context = 0;
      *a4 |= 0xCuLL;
    }

    v23 = 1;
LABEL_40:
    _Block_object_dispose(v220, 8);

    if (!v23)
    {
LABEL_79:
      v12 = context;
      goto LABEL_204;
    }

    requestedAnalyses = self->_requestedAnalyses;
    if ((requestedAnalyses & 0x100) == 0)
    {
LABEL_15:
      if ((requestedAnalyses & 0x200) == 0)
      {
        goto LABEL_58;
      }

LABEL_53:
      v206[0] = MEMORY[0x1E69E9820];
      v206[1] = 3221225472;
      v206[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_699;
      v206[3] = &unk_1E8351A48;
      v206[4] = self;
      v208 = buf;
      v209 = a3;
      v207 = v169;
      v33 = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueBlur];
      v12 = [(VCPPhotoAnalyzer *)self runBlock:v206 queue:v33];

      if (v12)
      {
        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F63970;
        }

        v34 = v207;
        goto LABEL_203;
      }

      *a4 |= 0x200uLL;
LABEL_58:
      if (+[VCPPhotoAnalyzer isLivePhotoKeyFrameEnabled]&& (self->_requestedAnalyses & 0x40000) != 0 && [(VCPAsset *)self->_asset isLivePhoto])
      {
        v35 = VCPSignPostLog();
        v36 = os_signpost_id_generate(v35);

        v37 = VCPSignPostLog();
        v38 = v37;
        spida = a4;
        if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
        {
          *v220 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v38, OS_SIGNPOST_INTERVAL_BEGIN, v36, "VCPPhotoAnalyzer_Image_VCPLowResImageBlurAnalyzer", "", v220, 2u);
        }

        v39 = [[VCPImageBlurAnalyzer alloc] initWithFaceResults:0 sdof:[(VCPAsset *)self->_asset isSDOF]];
        v205 = 0;
        v12 = [(VCPImageBlurAnalyzer *)v39 analyzePixelBuffer:v226 flags:a3 results:&v205 cancel:v169];
        v40 = v205;
        if (v12)
        {
          if (!self->_errorCode)
          {
            *&self->_errorCode = xmmword_1C9F63980;
          }

LABEL_92:
          goto LABEL_204;
        }

        [(VCPImageBlurAnalyzer *)v39 textureScore];
        self->_imageBlurTextureScore = v41;
        analysis = self->_analysis;
        v43 = [v40 objectForKeyedSubscript:@"BlurResults"];
        [(NSMutableDictionary *)analysis vcp_setResult:v43 forKey:@"KeyFrameBlurResults"];

        v44 = VCPSignPostLog();
        v45 = v44;
        if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
        {
          *v220 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v45, OS_SIGNPOST_INTERVAL_END, v36, "VCPPhotoAnalyzer_Image_VCPLowResImageBlurAnalyzer", "", v220, 2u);
        }

        a4 = spida;
      }

      if ((self->_requestedAnalyses & 0x80000) != 0)
      {
        v202[0] = MEMORY[0x1E69E9820];
        v202[1] = 3321888768;
        v202[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_703;
        v202[3] = &unk_1F496AA58;
        v204[0] = v226;
        if (v226)
        {
          CFRetain(v226);
        }

        v204[1] = a3;
        v203 = v169;
        v202[4] = self;
        v46 = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueExposure];
        v47 = [(VCPPhotoAnalyzer *)self runBlock:v202 queue:v46];

        if (v47)
        {
          context = v47;
          if (!self->_errorCode)
          {
            *&self->_errorCode = xmmword_1C9F63990;
            context = v47;
          }
        }

        CF<__CVBuffer *>::~CF(v204);
        if (v47)
        {
          goto LABEL_79;
        }

        *a4 |= 0x80000uLL;
      }

      if ((self->_irisAnalyses & 0x80) != 0)
      {
        v48 = VCPSignPostLog();
        v49 = os_signpost_id_generate(v48);

        v50 = VCPSignPostLog();
        v51 = v50;
        v52 = v49 - 1;
        if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
        {
          *v220 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v51, OS_SIGNPOST_INTERVAL_BEGIN, v49, "VCPPhotoAnalyzer_Image_VCPImageLivePhotoBlurAnalyzer", "", v220, 2u);
        }

        spidb = v49;
        v53 = a4;

        v54 = [(NSMutableDictionary *)self->_analysis vcp_results];
        v55 = [v54 objectForKeyedSubscript:@"IrisObjectsResults"];
        v56 = [v55 count];

        if (v56)
        {
          v57 = [(NSMutableDictionary *)self->_analysis vcp_results];
          v58 = [v57 objectForKeyedSubscript:@"IrisObjectsResults"];
          v59 = [v58 objectAtIndexedSubscript:0];

          v60 = [v59 objectForKeyedSubscript:@"attributes"];
          v40 = [v60 objectForKeyedSubscript:@"objectBounds"];
        }

        else
        {
          v40 = 0;
        }

        v61 = [[VCPImageLivePhotoBlurAnalyzer alloc] initWithMovingObjectsResults:v40];
        v62 = *(v229 + 6);
        v201 = 0;
        v12 = [(VCPImageLivePhotoBlurAnalyzer *)v61 analyzePixelBuffer:v62 flags:a3 results:&v201 cancel:v169];
        v63 = v201;
        if (v12)
        {
          if (!self->_errorCode)
          {
            *&self->_errorCode = xmmword_1C9F639A0;
          }

          goto LABEL_92;
        }

        [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v63];
        v64 = VCPSignPostLog();
        v65 = v64;
        if (v52 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
        {
          *v220 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v65, OS_SIGNPOST_INTERVAL_END, spidb, "VCPPhotoAnalyzer_Image_VCPImageLivePhotoBlurAnalyzer", "", v220, 2u);
        }

        a4 = v53;
      }

      if ((self->_requestedAnalyses & 0x2000) != 0)
      {
        v66 = VCPSignPostLog();
        v67 = os_signpost_id_generate(v66);

        v68 = VCPSignPostLog();
        v69 = v68;
        spidc = a4;
        if (v67 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v68))
        {
          *v220 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v69, OS_SIGNPOST_INTERVAL_BEGIN, v67, "VCPPhotoAnalyzer_Image_VCPImageCompositionAnalyzer", "", v220, 2u);
        }

        v28 = objc_alloc_init(VCPImageCompositionAnalyzer);
        v70 = *(v229 + 6);
        v200 = 0;
        v12 = [(VCPImageCompositionAnalyzer *)v28 analyzePixelBuffer:v70 flags:a3 results:&v200 cancel:v169];
        v29 = v200;
        if (v12)
        {
          if (self->_errorCode)
          {
            goto LABEL_103;
          }

          v30 = xmmword_1C9F639B0;
          goto LABEL_48;
        }

        [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v29];
        *spidc |= 0x2000uLL;
        v71 = VCPSignPostLog();
        v72 = v71;
        if (v67 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
        {
          *v220 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v72, OS_SIGNPOST_INTERVAL_END, v67, "VCPPhotoAnalyzer_Image_VCPImageCompositionAnalyzer", "", v220, 2u);
        }

        a4 = spidc;
      }

      *v220 = 0;
      v221 = v220;
      v222 = 0x3032000000;
      v223 = __Block_byref_object_copy__689;
      v224 = __Block_byref_object_dispose__690;
      v225 = 0;
      v73 = +[VCPVideoCNNAnalyzer isMUBackboneEnabled];
      v74 = self->_requestedAnalyses;
      if ((v73 & BYTE6(v74) & 1) == 1)
      {
        v75 = [(VCPAsset *)self->_asset isPano];
        v76 = (v229 + 48);
        if (!v75)
        {
          v76 = &v226;
        }

        v77 = *v76;
        v195[0] = MEMORY[0x1E69E9820];
        v195[1] = 3221225472;
        v195[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_711;
        v195[3] = &unk_1E8351A70;
        v195[4] = self;
        v198 = v77;
        v199 = a3;
        v196 = v169;
        v197 = v220;
        v78 = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueBackbone];
        v12 = [(VCPPhotoAnalyzer *)self runBlock:v195 queue:v78];

        if (v12)
        {
          if (!self->_errorCode)
          {
            *&self->_errorCode = xmmword_1C9F639C0;
          }

          v79 = v196;
LABEL_143:

LABEL_202:
          _Block_object_dispose(v220, 8);
          v34 = v225;
LABEL_203:

          goto LABEL_204;
        }

        *a4 |= 0x1000000000000uLL;
        v74 = self->_requestedAnalyses;
      }

      if ((v74 & 0x2000000000000) != 0)
      {
        if (*(v221 + 5) && (+[VCPVideoTransformerBackbone revision](VCPVideoTransformerBackbone, "revision") == 5 || +[VCPVideoTransformerBackbone revision]== 6))
        {
          v192[0] = MEMORY[0x1E69E9820];
          v192[1] = 3221225472;
          v192[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_715;
          v192[3] = &unk_1E8351A98;
          v194 = v220;
          v192[4] = self;
          v193 = v169;
          v80 = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueCaption];
          v12 = [(VCPPhotoAnalyzer *)self runBlock:v192 queue:v80];

          if (v12)
          {
            if (!self->_errorCode)
            {
              *&self->_errorCode = xmmword_1C9F639D0;
            }

            v79 = v193;
            goto LABEL_143;
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v81 = MEMORY[0x1E69E9C10];
            v82 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              *v191 = 0;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Image embedding not available. Compute image caption w/o re-using image embedding", v191, 2u);
            }
          }

          v187[0] = MEMORY[0x1E69E9820];
          v187[1] = 3321888768;
          v187[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_718;
          v187[3] = &unk_1F496AA90;
          v187[4] = self;
          v189 = buf;
          v190 = v226;
          if (v226)
          {
            CFRetain(v226);
          }

          v188 = v169;
          v83 = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueBackbone];
          v84 = [(VCPPhotoAnalyzer *)self runBlock:v187 queue:v83];

          if (v84)
          {
            context = v84;
            if (!self->_errorCode)
            {
              *&self->_errorCode = xmmword_1C9F639E0;
              context = v84;
            }
          }

          CF<__CVBuffer *>::~CF(&v190);
          v12 = context;
          if (v84)
          {
            goto LABEL_202;
          }
        }

        *a4 |= 0x2000000000000uLL;
        v74 = self->_requestedAnalyses;
      }

      if ((v74 & 0x100000000) != 0)
      {
        v184[0] = MEMORY[0x1E69E9820];
        v184[1] = 3221225472;
        v184[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_719;
        v184[3] = &unk_1E8351A98;
        v186 = buf;
        v184[4] = self;
        v185 = v169;
        v85 = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueCaption];
        v12 = [(VCPPhotoAnalyzer *)self runBlock:v184 queue:v85];

        if (v12)
        {
          if (!self->_errorCode)
          {
            *&self->_errorCode = xmmword_1C9F639F0;
          }

          v79 = v185;
          goto LABEL_143;
        }

        *a4 |= 0x100000000uLL;
      }

      v86 = v229;
      v87 = *(v229 + 6);
      if (v87)
      {
        CFRelease(v87);
        *(v86 + 6) = 0;
      }

      v88 = self->_requestedAnalyses;
      if ((v88 & 0x800) != 0)
      {
        v182[0] = MEMORY[0x1E69E9820];
        v182[1] = 3321888768;
        v182[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_721;
        v182[3] = &unk_1F496AAC8;
        v183 = v226;
        if (v226)
        {
          CFRetain(v226);
        }

        v182[4] = self;
        v89 = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueDescriptor];
        v90 = [(VCPPhotoAnalyzer *)self runBlock:v182 queue:v89];

        if (v90)
        {
          context = v90;
          if (!self->_errorCode)
          {
            *&self->_errorCode = xmmword_1C9F63A00;
            context = v90;
          }
        }

        CF<__CVBuffer *>::~CF(&v183);
        if (v90)
        {
          v12 = context;
          goto LABEL_202;
        }

        *a4 |= 0x800uLL;
        v88 = self->_requestedAnalyses;
      }

      if ((v88 & 0x1000) == 0)
      {
        if ((v88 & 0x20000) == 0)
        {
          goto LABEL_158;
        }

LABEL_182:
        v112 = VCPSignPostLog();
        v113 = a4;
        v114 = os_signpost_id_generate(v112);

        v115 = VCPSignPostLog();
        v116 = v115;
        v117 = v114 - 1;
        if (v114 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v115))
        {
          *v191 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v116, OS_SIGNPOST_INTERVAL_BEGIN, v114, "VCPPhotoAnalyzer_Image_VCPImagePetsAnalyzer", "", v191, 2u);
        }

        v118 = [[VCPImagePetsAnalyzer alloc] initWithMaxNumRegions:5];
        v96 = v118;
        if (v118)
        {
          spidf = v114;
          v180 = 0;
          v12 = [(VCPImagePetsAnalyzer *)v118 analyzePixelBuffer:v226 flags:a3 results:&v180 cancel:v169];
          v100 = v180;
          if (!v12)
          {
            [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v100];
            *v113 |= 0x20000uLL;
            v119 = VCPSignPostLog();
            v120 = v119;
            if (v117 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v119))
            {
              *v191 = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v120, OS_SIGNPOST_INTERVAL_END, spidf, "VCPPhotoAnalyzer_Image_VCPImagePetsAnalyzer", "", v191, 2u);
            }

            [(VCPPhotoAnalyzer *)self _reportPetsAnalysisWithResults:v100];
            v88 = self->_requestedAnalyses;
            a4 = v113;
            if ((v88 & 0x2000000000) == 0)
            {
              goto LABEL_211;
            }

            goto LABEL_159;
          }

          if (self->_errorCode)
          {
            goto LABEL_201;
          }

          v101 = 851;
        }

        else
        {
          v100 = 0;
          v12 = -108;
          if (self->_errorCode)
          {
            goto LABEL_201;
          }

          v101 = 846;
        }

        v109 = 28;
LABEL_200:
        self->_errorCode = v109;
        self->_errorLine = v101;
        goto LABEL_201;
      }

      v102 = VCPSignPostLog();
      v103 = a4;
      v104 = os_signpost_id_generate(v102);

      v105 = VCPSignPostLog();
      v106 = v105;
      v107 = v104 - 1;
      if (v104 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v105))
      {
        *v191 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v106, OS_SIGNPOST_INTERVAL_BEGIN, v104, "VCPPhotoAnalyzer_Image_VCPImageSaliencyAnalyzer", "", v191, 2u);
      }

      v108 = [VCPImageSaliencyAnalyzer analyzerWith:3 prune:1];
      v96 = v108;
      if (v108)
      {
        spide = v104;
        v181 = 0;
        v12 = [(VCPImagePetsKeypointsAnalyzer *)v108 analyzePixelBuffer:v226 flags:a3 results:&v181 cancel:v169];
        v100 = v181;
        if (!v12)
        {
          [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v100];
          *v103 |= 0x1000uLL;
          v110 = VCPSignPostLog();
          v111 = v110;
          if (v107 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v110))
          {
            *v191 = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v111, OS_SIGNPOST_INTERVAL_END, spide, "VCPPhotoAnalyzer_Image_VCPImageSaliencyAnalyzer", "", v191, 2u);
          }

          v88 = self->_requestedAnalyses;
          a4 = v103;
          if ((v88 & 0x20000) == 0)
          {
LABEL_158:
            if ((v88 & 0x2000000000) == 0)
            {
              goto LABEL_211;
            }

LABEL_159:
            if (+[VCPCNNEspressoContext supportGPU]|| DeviceHasANE())
            {
              v91 = VCPSignPostLog();
              v92 = os_signpost_id_generate(v91);

              v93 = VCPSignPostLog();
              v94 = v93;
              v95 = v92 - 1;
              if (v92 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v93))
              {
                *v191 = 0;
                _os_signpost_emit_with_name_impl(&dword_1C9B70000, v94, OS_SIGNPOST_INTERVAL_BEGIN, v92, "VCPPhotoAnalyzer_Image_VCPImagePetKeypointsAnalyzer", "", v191, 2u);
              }

              v96 = [[VCPImagePetsKeypointsAnalyzer alloc] initWithMaxNumRegions:5 forceCPU:0 sharedModel:1];
              if (!v96)
              {
                v100 = 0;
                v12 = -108;
                if (!self->_errorCode)
                {
                  v101 = 870;
                  goto LABEL_199;
                }

LABEL_201:

                goto LABEL_202;
              }

              spidd = a4;
              v97 = v226;
              v98 = [(NSMutableDictionary *)self->_analysis objectForKeyedSubscript:@"metadataRanges"];
              v99 = [v98 objectForKeyedSubscript:@"PetsResults"];
              v156 = v92;
              v179 = 0;
              v12 = [(VCPImagePetsKeypointsAnalyzer *)v96 analyzePixelBuffer:v97 flags:a3 petsDetections:v99 results:&v179 cancel:v169];
              v100 = v179;

              if (v12)
              {
                if (!self->_errorCode)
                {
                  v101 = 876;
LABEL_199:
                  v109 = 29;
                  goto LABEL_200;
                }

                goto LABEL_201;
              }

              [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v100];
              v122 = VCPSignPostLog();
              v123 = v122;
              if (v95 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v122))
              {
                *v191 = 0;
                _os_signpost_emit_with_name_impl(&dword_1C9B70000, v123, OS_SIGNPOST_INTERVAL_END, v156, "VCPPhotoAnalyzer_Image_VCPImagePetKeypointsAnalyzer", "", v191, 2u);
              }

              a4 = spidd;
            }

            *a4 |= 0x2000000000uLL;
            v88 = self->_requestedAnalyses;
LABEL_211:
            if ((v88 & 0x400000) != 0)
            {
              if (+[VCPCNNEspressoContext supportGPU]|| DeviceHasANE())
              {
                v176[0] = MEMORY[0x1E69E9820];
                v176[1] = 3321888768;
                v176[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_732;
                v176[3] = &unk_1F496AA58;
                v178[0] = v226;
                if (v226)
                {
                  CFRetain(v226);
                }

                v178[1] = a3;
                v176[4] = self;
                v177 = v169;
                v124 = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueHumanPose];
                v125 = [(VCPPhotoAnalyzer *)self runBlock:v176 queue:v124];

                if (v125)
                {
                  context = v125;
                  if (!self->_errorCode)
                  {
                    *&self->_errorCode = xmmword_1C9F63A10;
                    context = v125;
                  }
                }

                CF<__CVBuffer *>::~CF(v178);
                v12 = context;
                if (v125)
                {
                  goto LABEL_202;
                }
              }

              *a4 |= 0x400000uLL;
            }

            v12 = context;
            phAsset = self->_phAsset;
            if (phAsset && (self->_requestedAnalyses & 0x40000000) != 0)
            {
              if (![(PHAsset *)phAsset vcp_isLivePhoto]|| (*(a4 + 3) & 0x40) != 0)
              {
                spidg = a4;
                contexta = objc_autoreleasePoolPush();
                v129 = VCPSignPostLog();
                v130 = os_signpost_id_generate(v129);

                v131 = VCPSignPostLog();
                v132 = v131;
                v157 = v130;
                v133 = v130 - 1;
                if (v130 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v131))
                {
                  *v191 = 0;
                  _os_signpost_emit_with_name_impl(&dword_1C9B70000, v132, OS_SIGNPOST_INTERVAL_BEGIN, v130, "VCPPhotoAnalyzer_Image_VCPImageHumanActionAnalyzer", "", v191, 2u);
                }

                v134 = [(VCPAsset *)self->_asset faces];
                if (![v134 count])
                {
                  goto LABEL_240;
                }

                v171[0] = MEMORY[0x1E69E9820];
                v171[1] = 3321888768;
                v171[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_735;
                v171[3] = &unk_1F496AB00;
                v172 = v134;
                v173 = self;
                v175[0] = v226;
                if (v226)
                {
                  CFRetain(v226);
                }

                v175[1] = a3;
                v174 = v169;
                v135 = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueHumanAction];
                v136 = [(VCPPhotoAnalyzer *)self runBlock:v171 queue:v135];

                if (v136)
                {
                  v12 = v136;
                  if (!self->_errorCode)
                  {
                    *&self->_errorCode = xmmword_1C9F63A20;
                    v12 = v136;
                  }
                }

                CF<__CVBuffer *>::~CF(v175);
                if (v136)
                {
                  v137 = 0;
                }

                else
                {
LABEL_240:
                  v138 = VCPSignPostLog();
                  v139 = v138;
                  if (v133 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v138))
                  {
                    *v191 = 0;
                    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v139, OS_SIGNPOST_INTERVAL_END, v157, "VCPPhotoAnalyzer_Image_VCPImageHumanActionAnalyzer", "", v191, 2u);
                  }

                  v137 = 1;
                }

                objc_autoreleasePoolPop(contexta);
                a4 = spidg;
                if (!v137)
                {
                  goto LABEL_202;
                }

                *spidg |= 0x40000000uLL;
              }

              else if (MediaAnalysisLogLevel() >= 6)
              {
                v127 = MEMORY[0x1E69E9C10];
                v128 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(v127, OS_LOG_TYPE_INFO))
                {
                  *v191 = 0;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Human action on Live Photo requires paired movie, skip analyzing still", v191, 2u);
                }
              }
            }

            if ((self->_requestedAnalyses & 0x2000000) == 0)
            {
              goto LABEL_247;
            }

            v142 = VCPSignPostLog();
            v143 = os_signpost_id_generate(v142);

            v144 = VCPSignPostLog();
            v145 = v144;
            if (v143 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v144))
            {
              *v191 = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v145, OS_SIGNPOST_INTERVAL_BEGIN, v143, "VCPPhotoAnalyzer_Image_VCPImageHandsAnalyzer", "", v191, 2u);
            }

            LODWORD(v155) = 2;
            HIDWORD(v153) = CVPixelBufferGetWidth(v226);
            LODWORD(v154) = CVPixelBufferGetHeight(v226);
            LOBYTE(v153) = 1;
            v146 = [[VCPImageHandsAnalyzer alloc] initWithKeypointsOption:5 forceCPU:0 sharedModel:1 enableHandDetection:1 enableANSTHandDetection:0 enableRejectHandsNearBoundaries:0 enableHandObject:v153 sourceWidth:v154 sourceHeight:@"hand_keypoint_detector_lite.espresso.net" modelName:v155 revision:0 options:?];
            v147 = v146;
            if (v146)
            {
              v148 = a4;
              v170 = 0;
              v12 = [(VCPImageHandsAnalyzer *)v146 analyzePixelBuffer:v226 flags:a3 results:&v170 cancel:v169];
              v149 = v170;
              if (!v12)
              {
                [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v149];
                *v148 |= 0x2000000uLL;
                v151 = VCPSignPostLog();
                v152 = v151;
                if (v143 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v151))
                {
                  *v191 = 0;
                  _os_signpost_emit_with_name_impl(&dword_1C9B70000, v152, OS_SIGNPOST_INTERVAL_END, v143, "VCPPhotoAnalyzer_Image_VCPImageHandsAnalyzer", "", v191, 2u);
                }

LABEL_247:
                v140 = VCPSignPostLog();
                v141 = v140;
                if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v140))
                {
                  *v191 = 0;
                  _os_signpost_emit_with_name_impl(&dword_1C9B70000, v141, OS_SIGNPOST_INTERVAL_END, v8, "VCPPhotoAnalyzer_Image", "", v191, 2u);
                }

                v12 = 0;
                goto LABEL_202;
              }

              if (!self->_errorCode)
              {
                v150 = 965;
LABEL_260:
                self->_errorCode = 21;
                self->_errorLine = v150;
              }
            }

            else
            {
              v149 = 0;
              v12 = -108;
              if (!self->_errorCode)
              {
                v150 = 960;
                goto LABEL_260;
              }
            }

            goto LABEL_202;
          }

          goto LABEL_182;
        }

        if (self->_errorCode)
        {
          goto LABEL_201;
        }

        v101 = 835;
      }

      else
      {
        v100 = 0;
        v12 = -108;
        if (self->_errorCode)
        {
          goto LABEL_201;
        }

        v101 = 830;
      }

      v109 = 31;
      goto LABEL_200;
    }

LABEL_42:
    v24 = VCPSignPostLog();
    v25 = os_signpost_id_generate(v24);

    v26 = VCPSignPostLog();
    v27 = v26;
    spid = a4;
    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *v220 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "VCPPhotoAnalyzer_Image_VCPImageJunkAnalyzer", "", v220, 2u);
    }

    v28 = objc_alloc_init(VCPJunkAnalyzer);
    v210 = 0;
    v12 = [(VCPImageCompositionAnalyzer *)v28 analyzePixelBuffer:v226 flags:a3 results:&v210 cancel:v169];
    v29 = v210;
    if (v12)
    {
      if (self->_errorCode)
      {
LABEL_103:

        goto LABEL_204;
      }

      v30 = xmmword_1C9F63960;
LABEL_48:
      *&self->_errorCode = v30;
      goto LABEL_103;
    }

    [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v29];
    *spid |= 0x100uLL;
    v31 = VCPSignPostLog();
    v32 = v31;
    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      *v220 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_END, v25, "VCPPhotoAnalyzer_Image_VCPImageJunkAnalyzer", "", v220, 2u);
    }

    a4 = spid;
    if ((self->_requestedAnalyses & 0x200) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_53;
  }

  if (!self->_errorCode)
  {
    *&self->_errorCode = xmmword_1C9F63920;
  }

LABEL_205:
  _Block_object_dispose(buf, 8);
  CF<__CVBuffer *>::~CF(&v234);

  return v12;
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 48) imageWithPreferredDimension:1536];
  CF<__CVBuffer *>::operator=((*(*(a1 + 40) + 8) + 48), &v3);
  CF<__CVBuffer *>::~CF(&v3);
  if (*(*(*(a1 + 40) + 8) + 48))
  {
    return 0;
  }

  else
  {
    return 4294967278;
  }
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_691(void *a1)
{
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPPhotoAnalyzer_Image_VCPImageFaceDetector", "", buf, 2u);
  }

  v6 = +[VCPImageFaceDetector faceDetector];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[5];
  v10 = *(a1[6] + 8);
  obj = *(v10 + 40);
  v11 = [v6 analyzePixelBuffer:v7 flags:v8 results:&obj cancel:v9];
  objc_storeStrong((v10 + 40), obj);
  if (!v11)
  {
    [*(a1[4] + 16) vcp_addEntriesFromResults:*(*(a1[6] + 8) + 40)];
    v12 = VCPSignPostLog();
    v13 = v12;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_END, v3, "VCPPhotoAnalyzer_Image_VCPImageFaceDetector", "", v15, 2u);
    }
  }

  return v11;
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_694(void *a1)
{
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPPhotoAnalyzer_Image_VCPImageFaceExpressionAnalyzer", "", buf, 2u);
  }

  v6 = [[VCPImageFaceExpressionAnalyzer alloc] initWithFaceResults:*(a1[4] + 32)];
  v7 = a1[6];
  v8 = a1[7];
  v16 = 0;
  v9 = [(VCPImageFaceExpressionAnalyzer *)v6 analyzePixelBuffer:v7 flags:v8 results:&v16 cancel:a1[5]];
  v10 = v16;
  if (!v9)
  {
    v11 = [*(a1[4] + 32) objectForKeyedSubscript:@"ShotTypeResults"];
    if (v11)
    {
      [*(a1[4] + 16) vcp_setResult:v11 forKey:@"ShotTypeResults"];
    }

    [*(a1[4] + 16) vcp_addEntriesFromResults:v10];
    v12 = VCPSignPostLog();
    v13 = v12;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_END, v3, "VCPPhotoAnalyzer_Image_VCPImageFaceExpressionAnalyzer", "", v15, 2u);
    }
  }

  return v9;
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_699(void *a1)
{
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPPhotoAnalyzer_Image_VCPImageBlurAnalyzer", "", buf, 2u);
  }

  v6 = [VCPImageBlurAnalyzer alloc];
  v7 = [*(a1[4] + 16) vcp_results];
  v8 = -[VCPImageBlurAnalyzer initWithFaceResults:sdof:](v6, "initWithFaceResults:sdof:", v7, [*(a1[4] + 48) isSDOF]);

  v9 = [*(a1[4] + 16) vcp_results];
  v10 = [v9 objectForKeyedSubscript:@"MetaStabilizationResults"];

  v11 = [*(a1[4] + 16) vcp_results];
  v12 = [v11 objectForKeyedSubscript:@"MetaItemPTSResultsKey"];
  v13 = [v10 objectForKeyedSubscript:@"MetaStabilizationFrameResults"];
  [*(a1[4] + 48) originalPhotoOffsetSeconds];
  v15 = v14;
  [*(a1[4] + 48) exposureTimeSeconds];
  LODWORD(v17) = v16;
  LODWORD(v18) = v15;
  [(VCPImageBlurAnalyzer *)v8 setGyroSharpnessParam:v12 homographyResults:v13 livePhotoStillDisplayTime:v18 imageExposureTime:v17];

  v19 = a1[7];
  v20 = *(*(a1[6] + 8) + 48);
  v21 = a1[5];
  LODWORD(v22) = *(a1[4] + 60);
  v29 = 0;
  v23 = [(VCPImageBlurAnalyzer *)v8 analyzePixelBuffer:v20 flags:v19 withPreAnalysisScore:&v29 results:v21 cancel:v22];
  v24 = v29;
  if (!v23)
  {
    [*(a1[4] + 16) vcp_addEntriesFromResults:v24];
    v25 = VCPSignPostLog();
    v26 = v25;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *v28 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v26, OS_SIGNPOST_INTERVAL_END, v3, "VCPPhotoAnalyzer_Image_VCPImageBlurAnalyzer", "", v28, 2u);
    }
  }

  return v23;
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_703(void *a1)
{
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPPhotoAnalyzer_Image_VCPImageExposureAnalyzer", "", buf, 2u);
  }

  v6 = objc_alloc_init(VCPImageExposureAnalyzer);
  v7 = a1[6];
  v8 = a1[7];
  v15 = 0;
  v9 = [(VCPImageExposureAnalyzer *)v6 analyzePixelBuffer:v7 flags:v8 results:&v15 cancel:a1[5]];
  v10 = v15;
  if (!v9)
  {
    [*(a1[4] + 16) vcp_addEntriesFromResults:v10];
    v11 = VCPSignPostLog();
    v12 = v11;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_END, v3, "VCPPhotoAnalyzer_Image_VCPImageExposureAnalyzer", "", v14, 2u);
    }
  }

  return v9;
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_711(void *a1)
{
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPPhotoAnalyzer_Image_VCPImageBackboneAnalyzer", "", buf, 2u);
  }

  v6 = [[VCPImageBackboneAnalyzer alloc] initWithRequestedAnalyses:*(a1[4] + 8) andRevision:0 useSharedModel:1];
  v7 = v6;
  if (v6)
  {
    v8 = a1[7];
    v9 = a1[8];
    v19 = 0;
    v10 = [(VCPImageBackboneAnalyzer *)v6 analyzePixelBuffer:v8 flags:v9 results:&v19 cancel:a1[5]];
    v11 = v19;
    if (!v10)
    {
      [*(a1[4] + 16) vcp_appendResults:v11];
      v12 = [(VCPImageBackboneAnalyzer *)v7 spatialEmbedding];
      v13 = *(a1[6] + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v15 = VCPSignPostLog();
      v16 = v15;
      if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        *v18 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_END, v3, "VCPPhotoAnalyzer_Image_VCPImageBackboneAnalyzer", "", v18, 2u);
      }

      v10 = 0;
    }
  }

  else
  {
    v11 = 0;
    v10 = 4294967188;
  }

  return v10;
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_715(void *a1)
{
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPCSUImageCaptionAnalyzer", "", buf, 2u);
  }

  v6 = [[VCPImageCaptionAnalyzer alloc] initWithCaptionModelType:3 captionSafetyType:0 useSharedModel:1];
  v7 = v6;
  if (v6)
  {
    v8 = a1[5];
    v9 = *(*(a1[6] + 8) + 40);
    v16 = 0;
    v10 = [(VCPImageCaptionAnalyzer *)v6 analyzeEmbedding:v9 flags:0 results:&v16 cancel:v8];
    v11 = v16;
    if (!v10)
    {
      [*(a1[4] + 16) vcp_addEntriesFromResults:v11];
      v12 = VCPSignPostLog();
      v13 = v12;
      if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        *v15 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_END, v3, "VCPCSUImageCaptionAnalyzer", "", v15, 2u);
      }

      v10 = 0;
    }
  }

  else
  {
    v11 = 0;
    v10 = 4294967278;
  }

  return v10;
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_718(void *a1)
{
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPCSUImageCaptionAnalyzer", "", buf, 2u);
  }

  if ([*(a1[4] + 48) isPano])
  {
    v6 = (*(a1[6] + 8) + 48);
  }

  else
  {
    v6 = a1 + 7;
  }

  v7 = *v6;
  v8 = [[VCPImageCaptionAnalyzer alloc] initWithCaptionModelType:3 captionSafetyType:0 useSharedModel:1];
  v9 = v8;
  if (v8)
  {
    v16 = 0;
    v10 = [(VCPImageCaptionAnalyzer *)v8 analyzePixelBuffer:v7 flags:0 results:&v16 cancel:a1[5]];
    v11 = v16;
    if (!v10)
    {
      [*(a1[4] + 16) vcp_addEntriesFromResults:v11];
      v12 = VCPSignPostLog();
      v13 = v12;
      if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        *v15 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_END, v3, "VCPCSUImageCaptionAnalyzer", "", v15, 2u);
      }

      v10 = 0;
    }
  }

  else
  {
    v11 = 0;
    v10 = 4294967278;
  }

  return v10;
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_719(void *a1)
{
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPPhotoAnalyzer_Image_VCPImageCaptionAnalyzer", "", buf, 2u);
  }

  v6 = [[VCPImageCaptionAnalyzer alloc] initWithCaptionModelType:1 captionSafetyType:0 useSharedModel:1];
  v7 = v6;
  if (v6)
  {
    v8 = a1[5];
    v9 = *(*(a1[6] + 8) + 48);
    v16 = 0;
    v10 = [(VCPImageCaptionAnalyzer *)v6 analyzePixelBuffer:v9 flags:0 results:&v16 cancel:v8];
    v11 = v16;
    if (!v10)
    {
      [*(a1[4] + 16) vcp_addEntriesFromResults:v11];
      v12 = VCPSignPostLog();
      v13 = v12;
      if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        *v15 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_END, v3, "VCPPhotoAnalyzer_Image_VCPImageCaptionAnalyzer", "", v15, 2u);
      }

      v10 = 0;
    }
  }

  else
  {
    v11 = 0;
    v10 = 4294967278;
  }

  return v10;
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_721(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPPhotoAnalyzer_Image_VCPImageDescriptor", "", v17, 2u);
  }

  v6 = [VCPImageDescriptor descriptorWithImage:*(a1 + 40)];
  v7 = VCPSignPostLog();
  v8 = v7;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_END, v3, "VCPPhotoAnalyzer_Image_VCPImageDescriptor", "", v17, 2u);
  }

  if (v6)
  {
    v9 = [v6 serialize];
    v10 = v9;
    if (v9)
    {
      v11 = *(*(a1 + 32) + 16);
      v19 = v9;
      v20 = @"attributes";
      v18 = @"featureVector";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v21 = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v22[0] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      [v11 vcp_setResult:v14 forKey:@"FeatureVectorResults"];

      v15 = 0;
    }

    else
    {
      v15 = 4294967188;
    }
  }

  else
  {
    v15 = 4294967188;
  }

  return v15;
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_732(uint64_t a1)
{
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPPhotoAnalyzer_Image_VCPImageHumanPoseAnalyzer", "", buf, 2u);
  }

  Width = CVPixelBufferGetWidth(*(a1 + 48));
  v7 = Width / CVPixelBufferGetHeight(*(a1 + 48));
  v8 = [VCPImageHumanPoseAnalyzer alloc];
  v9 = +[VCPImageHumanPoseAnalyzer saveKeypoints];
  *&v10 = v7;
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  v12 = [(VCPImageHumanPoseAnalyzer *)v8 initWithKeypointsOption:v9 aspectRatio:v11 lightweight:0 forceCPU:0 sharedModel:1 flushModel:0];

  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v21 = 0;
  v15 = [(VCPImageHumanPoseAnalyzer *)v12 analyzePixelBuffer:v13 flags:v14 results:&v21 cancel:*(a1 + 40)];
  v16 = v21;
  if (!v15)
  {
    [*(*(a1 + 32) + 16) vcp_addEntriesFromResults:v16];
    v17 = VCPSignPostLog();
    v18 = v17;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *v20 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v18, OS_SIGNPOST_INTERVAL_END, v3, "VCPPhotoAnalyzer_Image_VCPImageHumanPoseAnalyzer", "", v20, 2u);
    }
  }

  return v15;
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_735(void *a1)
{
  v2 = [VCPImageHumanActionAnalyzer alloc];
  v3 = a1[4];
  v4 = [*(a1[5] + 16) vcp_results];
  v5 = [v4 objectForKeyedSubscript:@"HumanActionClassificationResults"];
  v6 = [(VCPImageHumanActionAnalyzer *)v2 initWithPHFaces:v3 existingResults:v5];

  if (v6)
  {
    v7 = a1[7];
    v8 = a1[8];
    v12 = 0;
    v9 = [(VCPImageHumanActionAnalyzer *)v6 analyzePixelBuffer:v7 flags:v8 results:&v12 cancel:a1[6]];
    v10 = v12;
    if (!v9)
    {
      [*(a1[5] + 16) vcp_addEntriesFromResults:v10];
      v9 = 0;
    }
  }

  else
  {
    v10 = 0;
    v9 = 4294967188;
  }

  return v9;
}

- (id)analyzeAsset:(id)a3 withOptions:(id)a4
{
  v221[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_status != 1)
  {
    goto LABEL_216;
  }

  v8 = VCPSignPostLog();
  v9 = os_signpost_id_generate(v8);

  v10 = VCPSignPostLog();
  v11 = v10;
  spid = v9;
  v207 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VCPPhotoAnalyzer", "", buf, 2u);
  }

  v216 = 0;
  v12 = [(NSMutableDictionary *)self->_analysis vcp_flags];
  v214 = 0;
  v215 = v12;
  if ((self->_requestedAnalyses & 8) != 0 && [MEMORY[0x1E6978628] vcp_usePHFace] && objc_msgSend(MEMORY[0x1E6978628], "vcp_usePHFaceExpression") && self->_phFaceResults)
  {
    [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:?];
    v215 |= self->_phFaceFlags;
    v216 |= 0xCuLL;
  }

  if (self->_requirePHFaceAnalysis && (phAsset = self->_phAsset) != 0 && ![(PHAsset *)phAsset vcp_quickFaceClassificationDone])
  {
    v20 = objc_autoreleasePoolPush();
    v21 = VCPSignPostLog();
    v22 = os_signpost_id_generate(v21);

    v23 = VCPSignPostLog();
    v24 = v23;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "VCPPhotoAnalyzer_VCPPhotosQuickFaceDetection", "", buf, 2u);
    }

    v25 = [VCPPhotosQuickFaceDetectionManager alloc];
    v26 = [(PHAsset *)self->_phAsset photoLibrary];
    v27 = [(VCPPhotosQuickFaceDetectionManager *)v25 initWithPhotoLibrary:v26];

    if (v27)
    {
      v205 = [(VCPPhotosQuickFaceDetectionManager *)v27 processAsset:self->_phAsset];
      if (v205)
      {
        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F63A30;
        }

        v28 = 6;
      }

      else
      {
        v29 = VCPSignPostLog();
        v30 = v29;
        if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v30, OS_SIGNPOST_INTERVAL_END, v22, "VCPPhotoAnalyzer_VCPPhotosQuickFaceDetection", "", buf, 2u);
        }

        v205 = 0;
        v28 = 0;
      }
    }

    else
    {
      if (!self->_errorCode)
      {
        *&self->_errorCode = xmmword_1C9F63A40;
      }

      v28 = 6;
      v205 = -18;
    }

    objc_autoreleasePoolPop(v20);
    if (v28)
    {
LABEL_205:
      v17 = v205;
      if (!v205)
      {
        goto LABEL_209;
      }

      goto LABEL_206;
    }
  }

  else
  {
    v205 = 0;
  }

  if ((self->_requestedAnalyses & 0xC) == 4)
  {
    if (self->_phFaceResults)
    {
      [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:?];
      v215 |= self->_phFaceFlags;
      v216 |= 4uLL;
      goto LABEL_45;
    }

    v14 = [(VCPAsset *)self->_asset exif];
    if (v14)
    {
      v15 = [[VCPExifAnalyzer alloc] initWithProperties:v14 forAnalysisTypes:self->_requestedAnalyses];
      v16 = v15;
      if (!v15)
      {
        v18 = 0;
        v17 = -108;
        if (!self->_errorCode)
        {
          v19 = 1016;
          goto LABEL_35;
        }

LABEL_36:

        goto LABEL_206;
      }

      v213 = 0;
      v17 = [(VCPExifAnalyzer *)v15 analyzeAsset:&v215 results:&v213];
      v18 = v213;
      if (v17)
      {
        if (!self->_errorCode)
        {
          v19 = 1017;
LABEL_35:
          self->_errorCode = 9;
          self->_errorLine = v19;
          goto LABEL_36;
        }

        goto LABEL_36;
      }

      [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v18];
      v216 |= 4uLL;
    }
  }

LABEL_45:
  if (self->_irisAnalyses)
  {
    if ([(VCPAsset *)self->_asset isMovieResourceLocalAvailable]|| [(VCPPhotoAnalyzer *)self allowStreaming])
    {
      asset = self->_asset;
      v32 = [(VCPPhotoAnalyzer *)self existingAnalysisForMovieAnalyzer];
      v33 = [VCPMovieAnalyzer analyzerWithVCPAsset:asset withExistingAnalysis:v32 forAnalysisTypes:self->_irisAnalyses withOptions:v7];

      v17 = [(VCPPhotoAnalyzer *)self checkFaceDominant];
      if (v17)
      {
        if (self->_errorCode)
        {
LABEL_67:

          goto LABEL_206;
        }

        v34 = 1030;
LABEL_51:
        self->_errorCode = 49;
        self->_errorLine = v34;
        goto LABEL_67;
      }

      [v33 setFaceDominated:self->_faceDominated];
      [v33 setAllowStreaming:[(VCPPhotoAnalyzer *)self allowStreaming]];
      [v33 setRequiresOnDemandDownload:[(VCPPhotoAnalyzer *)self requiresOnDemandDownload]];
      if (!v33)
      {
        v17 = -18;
        if (self->_errorCode)
        {
          goto LABEL_67;
        }

        v34 = 1034;
        goto LABEL_51;
      }

      v35 = VCPSignPostLog();
      v36 = os_signpost_id_generate(v35);

      v37 = VCPSignPostLog();
      v38 = v37;
      if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v38, OS_SIGNPOST_INTERVAL_BEGIN, v36, "VCPPhotoAnalyzer_VCPMovieAnalyzer", "", buf, 2u);
      }

      v39 = [v33 analyzeAsset:v6 streamed:0];
      v40 = VCPSignPostLog();
      v41 = v40;
      if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v41, OS_SIGNPOST_INTERVAL_END, v36, "VCPPhotoAnalyzer_VCPMovieAnalyzer", "", buf, 2u);
      }

      if ([v33 status]== 4)
      {
        v17 = -128;
        if (!self->_errorCode)
        {
          v42 = 1038;
LABEL_106:
          self->_errorLine = v42;
          goto LABEL_107;
        }

        goto LABEL_107;
      }

      if ([v33 status]!= 2)
      {
        if (!self->_errorCode)
        {
          self->_errorCode = [v33 errorCode];
          v42 = [v33 errorLine];
          v17 = -18;
          goto LABEL_106;
        }

        v17 = -18;
LABEL_107:

        goto LABEL_206;
      }

      v44 = [v39 vcp_flags];
      v215 |= v44 & 0x20000000;
      v45 = [v39 vcp_types];
      v46 = objc_alloc(MEMORY[0x1E695DF90]);
      v47 = [v39 vcp_results];
      v203 = [v46 initWithDictionary:v47];

      if (!v203)
      {
        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F63A50;
        }

        goto LABEL_166;
      }

      [v203 removeObjectForKey:@"FaceResults"];
      [v203 removeObjectForKey:@"FacePrintResults"];
      [v203 removeObjectForKey:@"FeatureVectorResults"];
      [v203 removeObjectForKey:@"SceneprintResults"];
      [v203 removeObjectForKey:@"SaliencyResults"];
      [v203 removeObjectForKey:@"HumanPoseResults"];
      [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v203];
      v216 |= v45 & 0xFFFFFFFFFFBFE7F3;
      v48 = [v33 privateResults];
      v49 = [v48 objectForKeyedSubscript:@"MetaFocusResults"];
      v50 = v49 == 0;

      if (!v50)
      {
        analysis = self->_analysis;
        v52 = [v33 privateResults];
        v53 = [v52 objectForKeyedSubscript:@"MetaFocusResults"];
        [(NSMutableDictionary *)analysis vcp_setResult:v53 forKey:@"MetaFocusResults"];
      }

      v54 = [v33 privateResults];
      v55 = [v54 objectForKeyedSubscript:@"MetaMotionResults"];
      v56 = v55 == 0;

      if (!v56)
      {
        v57 = self->_analysis;
        v58 = [v33 privateResults];
        v59 = [v58 objectForKeyedSubscript:@"MetaMotionResults"];
        [(NSMutableDictionary *)v57 vcp_setResult:v59 forKey:@"MetaMotionResults"];
      }

      v60 = [v33 privateResults];
      v61 = [v60 objectForKeyedSubscript:@"MetaItemPTSResultsKey"];
      v62 = v61 == 0;

      if (!v62)
      {
        v63 = self->_analysis;
        v64 = [v33 privateResults];
        v65 = [v64 objectForKeyedSubscript:@"MetaItemPTSResultsKey"];
        [(NSMutableDictionary *)v63 vcp_setResult:v65 forKey:@"MetaItemPTSResultsKey"];
      }

      v66 = [v33 privateResults];
      v67 = [v66 objectForKeyedSubscript:@"MetaStabilizationResults"];
      v68 = v67 == 0;

      if (!v68)
      {
        v69 = self->_analysis;
        v70 = [v33 privateResults];
        v71 = [v70 objectForKeyedSubscript:@"MetaStabilizationResults"];
        [(NSMutableDictionary *)v69 vcp_setResult:v71 forKey:@"MetaStabilizationResults"];
      }

      goto LABEL_79;
    }

    if (self->_irisAnalyses && MediaAnalysisLogLevel() >= 6)
    {
      v33 = MEMORY[0x1E69E9C10];
      v43 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, v33, OS_LOG_TYPE_INFO, "Live Photo w/o local movie resource and streaming not allowed, skip paired movie analysis", buf, 2u);
      }

LABEL_79:
    }
  }

  if ((self->_requestedAnalyses & 0x32821424A3B08 & (~v216 | 0x3280140000000)) != 0 || (self->_irisAnalyses & 0x40080) != 0)
  {
    v17 = [(VCPPhotoAnalyzer *)self analyzeImage:&v215 performedAnalyses:&v216 cancel:v6];
    if (v17)
    {
      if (!self->_errorCode)
      {
        *&self->_errorCode = xmmword_1C9F63A60;
      }

      goto LABEL_206;
    }

    [(NSMutableDictionary *)self->_analysis vcp_removeResultForKey:@"IrisObjectsResults"];
    [(NSMutableDictionary *)self->_analysis vcp_removeResultForKey:@"MetaItemPTSResultsKey"];
    [(NSMutableDictionary *)self->_analysis vcp_removeResultForKey:@"MetaStabilizationResults"];
  }

  [(NSMutableDictionary *)self->_analysis vcp_quality];
  if (v72 == -1.0)
  {
    v73 = objc_alloc_init(VCPImageQualityAnalyzer);
    v74 = [(NSMutableDictionary *)self->_analysis vcp_results];
    [(VCPAsset *)self->_asset photoOffsetSeconds];
    v75 = [(VCPImageQualityAnalyzer *)v73 analyzeImageQuality:v74 irisPhotoOffsetSec:v6 cancel:?]== 0;

    if (v75)
    {
      v76 = self->_analysis;
      [(VCPImageQualityAnalyzer *)v73 qualityScore];
      [(NSMutableDictionary *)v76 vcp_setQuality:v77];
    }
  }

  if ((self->_requestedAnalyses & 0x100000) != 0 && [(VCPAsset *)self->_asset isLivePhoto])
  {
    v78 = [(VCPAsset *)self->_asset originalMovie];
    v79 = v78 == 0;

    if (v79)
    {
      if (MediaAnalysisLogLevel() < 4)
      {
        goto LABEL_116;
      }

      v86 = MEMORY[0x1E69E9C10];
      v90 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, v86, OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] PhotoAnalyzer - Original movie is not available, skip effects analysis", buf, 2u);
      }
    }

    else
    {
      v80 = VCPSignPostLog();
      v81 = os_signpost_id_generate(v80);

      v82 = VCPSignPostLog();
      v83 = v82;
      if (v81 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v82))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v83, OS_SIGNPOST_INTERVAL_BEGIN, v81, "VCPPhotoAnalyzer_VCPEffectsAnalyzer", "", buf, 2u);
      }

      v84 = [VCPEffectsAnalyzer alloc];
      v85 = [(NSMutableDictionary *)self->_analysis vcp_results];
      v86 = [(VCPEffectsAnalyzer *)v84 initWithAnalysisResults:v85];

      if (!v86)
      {
        goto LABEL_166;
      }

      v87 = self->_asset;
      v212 = 0;
      v17 = [v86 analyzeAsset:v87 onDemand:0 cancel:v6 statsFlags:&v214 results:&v212];
      v88 = v212;
      v89 = v88;
      if (v17)
      {

        goto LABEL_206;
      }

      [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v88];
      v216 |= 0x100000uLL;
      v91 = VCPSignPostLog();
      v92 = v91;
      if (v81 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v91))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v92, OS_SIGNPOST_INTERVAL_END, v81, "VCPPhotoAnalyzer_VCPEffectsAnalyzer", "", buf, 2u);
      }
    }
  }

LABEL_116:
  requestedAnalyses = self->_requestedAnalyses;
  if ((requestedAnalyses & 0x800000000) != 0)
  {
    v101 = VCPSignPostLog();
    v102 = os_signpost_id_generate(v101);

    v103 = VCPSignPostLog();
    v104 = v103;
    if (v102 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v103))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v104, OS_SIGNPOST_INTERVAL_BEGIN, v102, "VCPPhotoAnalyzer_VCPParallaxAnalyzer", "", buf, 2u);
    }

    v105 = [VCPParallaxAnalyzer alloc];
    v106 = [(NSMutableDictionary *)self->_analysis vcp_results];
    v107 = [(VCPParallaxAnalyzer *)v105 initWithOptions:v7 andExistingResults:v106];

    if (!v107)
    {
      if (self->_errorCode)
      {
        goto LABEL_166;
      }

      v111 = xmmword_1C9F63A80;
      goto LABEL_165;
    }

    v108 = self->_phAsset;
    v211 = 0;
    v17 = [(VCPParallaxAnalyzer *)v107 analyzeAsset:v108 cancel:v6 results:&v211];
    v109 = v211;
    v110 = v109;
    if (v17)
    {
      if (!self->_errorCode)
      {
        *&self->_errorCode = xmmword_1C9F63A70;
      }

      goto LABEL_206;
    }

    [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v109];
    v216 |= 0x800000000uLL;
    v112 = VCPSignPostLog();
    v113 = v112;
    if (v102 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v112))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v113, OS_SIGNPOST_INTERVAL_END, v102, "VCPPhotoAnalyzer_VCPParallaxAnalyzer", "", buf, 2u);
    }

    requestedAnalyses = self->_requestedAnalyses;
    if ((requestedAnalyses & 0x8000000000) == 0)
    {
      goto LABEL_118;
    }
  }

  else if ((requestedAnalyses & 0x8000000000) == 0)
  {
LABEL_118:
    if ((requestedAnalyses & 0x400000000000) == 0)
    {
      goto LABEL_119;
    }

LABEL_155:
    v126 = VCPSignPostLog();
    v127 = os_signpost_id_generate(v126);

    v128 = VCPSignPostLog();
    v129 = v128;
    if (v127 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v128))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v129, OS_SIGNPOST_INTERVAL_BEGIN, v127, "VCPPhotoAnalyzer_VCPWatchFaceAnalyzer", "", buf, 2u);
    }

    v130 = [[VCPWatchFaceAnalyzer alloc] initWithOptions:v7];
    v131 = v130;
    if (v130)
    {
      v132 = self->_phAsset;
      v209 = 0;
      v17 = [(VCPWatchFaceAnalyzer *)v130 analyzeAsset:v132 cancel:v6 results:&v209];
      v133 = v209;
      v134 = v133;
      if (v17)
      {
        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F63AB0;
        }

        goto LABEL_206;
      }

      [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v133];
      v216 |= 0x400000000000uLL;
      v136 = VCPSignPostLog();
      v137 = v136;
      if (v127 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v136))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v137, OS_SIGNPOST_INTERVAL_END, v127, "VCPPhotoAnalyzer_VCPWatchFaceAnalyzer", "", buf, 2u);
      }

      if ((self->_requestedAnalyses & 0x1000000000) != 0)
      {
        goto LABEL_120;
      }

      goto LABEL_176;
    }

    if (self->_errorCode)
    {
      goto LABEL_166;
    }

    v111 = xmmword_1C9F63AC0;
LABEL_165:
    *&self->_errorCode = v111;
    goto LABEL_166;
  }

  v114 = VCPSignPostLog();
  v115 = os_signpost_id_generate(v114);

  v116 = VCPSignPostLog();
  v117 = v116;
  if (v115 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v116))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v117, OS_SIGNPOST_INTERVAL_BEGIN, v115, "VCPPhotoAnalyzer_VCPParallaxExport", "", buf, 2u);
  }

  v118 = [VCPParallaxAnalyzer alloc];
  v119 = [(NSMutableDictionary *)self->_analysis vcp_results];
  v120 = [(VCPParallaxAnalyzer *)v118 initWithOptions:v7 andExistingResults:v119];

  if (!v120)
  {
    if (self->_errorCode)
    {
      goto LABEL_166;
    }

    v111 = xmmword_1C9F63AA0;
    goto LABEL_165;
  }

  v121 = self->_phAsset;
  v210 = 0;
  v17 = [(VCPParallaxAnalyzer *)v120 exportWallpaperForAsset:v121 withOptions:v7 cancel:v6 results:&v210];
  v122 = v210;
  v123 = v122;
  if (v17)
  {
    if (!self->_errorCode)
    {
      *&self->_errorCode = xmmword_1C9F63A90;
    }

    goto LABEL_206;
  }

  [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v122];
  v216 |= 0x8000000000uLL;
  v124 = VCPSignPostLog();
  v125 = v124;
  if (v115 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v124))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v125, OS_SIGNPOST_INTERVAL_END, v115, "VCPPhotoAnalyzer_VCPParallaxExport", "", buf, 2u);
  }

  requestedAnalyses = self->_requestedAnalyses;
  if ((requestedAnalyses & 0x400000000000) != 0)
  {
    goto LABEL_155;
  }

LABEL_119:
  if ((requestedAnalyses & 0x1000000000) != 0)
  {
LABEL_120:
    v94 = VCPSignPostLog();
    v204 = os_signpost_id_generate(v94);

    v95 = VCPSignPostLog();
    v96 = v95;
    if (v204 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v95))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v96, OS_SIGNPOST_INTERVAL_BEGIN, v204, "VCPPhotoAnalyzer_VCPFaceQualityAnalysis", "", buf, 2u);
    }

    v97 = [(PHAsset *)self->_phAsset photoLibrary];
    v98 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:v97];

    v99 = [[VCPFaceAnalyzer alloc] initWithContext:v98];
    v208 = 0;
    v17 = [(VCPFaceAnalyzer *)v99 analyzeFaceQuality:&v208 withAsset:self->_phAsset andCancelBlock:v6];
    v100 = v208;
    if (v17)
    {
      if (!self->_errorCode)
      {
        *&self->_errorCode = xmmword_1C9F63AD0;
      }

      goto LABEL_206;
    }

    [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v100];
    v216 |= 0x1000000000uLL;
    v138 = VCPSignPostLog();
    v139 = v138;
    if (v204 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v138))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v139, OS_SIGNPOST_INTERVAL_END, v204, "VCPPhotoAnalyzer_VCPFaceQualityAnalysis", "", buf, 2u);
    }
  }

LABEL_176:
  if (!+[VCPPhotoAnalyzer isLivePhotoKeyFrameEnabled]|| (self->_requestedAnalyses & 0x40000) == 0 || ![(VCPAsset *)self->_asset isLivePhoto])
  {
    v155 = [(NSMutableDictionary *)self->_analysis vcp_results];
    v156 = [v155 objectForKeyedSubscript:?];
    v157 = v156 == 0;

    if (!v157)
    {
      v158 = [(NSMutableDictionary *)self->_analysis vcp_results];
      v159 = [v158 objectForKeyedSubscript:@"FaceResults"];
      v160 = [v159 mutableCopy];

      for (i = 0; [v160 count] > i; ++i)
      {
        v162 = [v160 objectAtIndexedSubscript:i];
        v163 = [v162 mutableCopy];

        v164 = [v163 objectForKeyedSubscript:@"attributes"];
        v165 = [v164 mutableCopy];

        [v165 removeObjectForKey:@"faceQuality"];
        [v163 setObject:v165 forKey:@"attributes"];
        [v160 setObject:v163 atIndexedSubscript:i];
      }

      [(NSMutableDictionary *)self->_analysis vcp_setResult:v160 forKey:@"FaceResults"];
    }

    v166 = [(NSMutableDictionary *)self->_analysis vcp_results];
    v167 = [v166 objectForKeyedSubscript:@"ExposureResults"];
    v168 = v167 == 0;

    if (v168)
    {
      goto LABEL_193;
    }

    v169 = [(NSMutableDictionary *)self->_analysis vcp_results];
    v170 = [v169 objectForKeyedSubscript:@"ExposureResults"];
    v171 = [v170 objectAtIndexedSubscript:0];
    v144 = [v171 mutableCopy];

    [(VCPLivePhotoKeyFrameAnalyzer *)v144 removeObjectForKey:@"attributes"];
    v172 = self->_analysis;
    v221[0] = v144;
    v173 = [MEMORY[0x1E695DEC8] arrayWithObjects:v221 count:1];
    [(NSMutableDictionary *)v172 vcp_setResult:v173 forKey:@"ExposureResults"];
LABEL_192:

LABEL_193:
    v174 = [(NSMutableDictionary *)self->_analysis vcp_results];
    v175 = [v174 objectForKeyedSubscript:@"MetaFocusResults"];
    v176 = v175 == 0;

    if (!v176)
    {
      [(NSMutableDictionary *)self->_analysis vcp_removeResultForKey:@"MetaFocusResults"];
    }

    v177 = [(NSMutableDictionary *)self->_analysis vcp_results];
    v178 = [v177 objectForKeyedSubscript:@"MetaMotionResults"];
    v179 = v178 == 0;

    if (!v179)
    {
      [(NSMutableDictionary *)self->_analysis vcp_removeResultForKey:@"MetaMotionResults"];
    }

    v180 = [(NSMutableDictionary *)self->_analysis vcp_results];
    v181 = [v180 objectForKeyedSubscript:@"CameraMotionResults"];
    v182 = v181 == 0;

    if (!v182)
    {
      v183 = [(NSMutableDictionary *)self->_analysis vcp_results];
      v184 = [v183 objectForKeyedSubscript:@"CameraMotionResults"];
      v185 = [v184 mutableCopy];

      for (j = 0; [v185 count] > j; ++j)
      {
        v187 = [v185 objectAtIndexedSubscript:j];
        v188 = [v187 mutableCopy];

        [v188 removeObjectForKey:@"quality"];
        [v185 setObject:v188 atIndexedSubscript:j];
      }

      [(NSMutableDictionary *)self->_analysis vcp_setResult:v185 forKey:@"CameraMotionResults"];
    }

    v189 = self->_analysis;
    v190 = [MEMORY[0x1E695DF00] date];
    [(NSMutableDictionary *)v189 setObject:v190 forKey:@"dateAnalyzed"];

    [(NSMutableDictionary *)self->_analysis vcp_addTypes:v216];
    [(NSMutableDictionary *)self->_analysis vcp_addFlags:v215];
    v191 = [(VCPAsset *)self->_asset isLivePhoto];
    v192 = 1;
    if (v191)
    {
      v192 = 2;
    }

    v214 |= v192;
    [(NSMutableDictionary *)self->_analysis vcp_addStatsFlags:?];
    self->_status = 2;
    goto LABEL_205;
  }

  v140 = VCPSignPostLog();
  v141 = os_signpost_id_generate(v140);

  v142 = VCPSignPostLog();
  v143 = v142;
  if (v141 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v142))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v143, OS_SIGNPOST_INTERVAL_BEGIN, v141, "VCPPhotoAnalyzer_VCPLivePhotoKeyFrameAnalyzer", "", buf, 2u);
  }

  v144 = [[VCPLivePhotoKeyFrameAnalyzer alloc] initWithWidth:[(VCPAsset *)self->_asset pixelWidth] height:[(VCPAsset *)self->_asset pixelHeight]];
  if (v144)
  {
    v145 = self->_analysis;
    [(VCPAsset *)self->_asset photoOffsetSeconds];
    v147 = v146;
    [(VCPAsset *)self->_asset originalPhotoOffsetSeconds];
    v149 = v148;
    imageBlurTextureScore = self->_imageBlurTextureScore;
    v151 = [(VCPAsset *)self->_asset hadFlash];
    LODWORD(v152) = v147;
    LODWORD(v153) = v149;
    *&v154 = imageBlurTextureScore;
    v17 = [(VCPLivePhotoKeyFrameAnalyzer *)v144 analyzeLivePhotoKeyFrame:v145 irisPhotoOffsetSec:v151 originalIrisPhotoOffsetSec:v6 photoTextureScore:v152 hadFlash:v153 cancel:v154];
    if (v17)
    {

LABEL_206:
      v135 = 3;
      if (v17 == -128)
      {
        v135 = 4;
      }

      goto LABEL_208;
    }

    [(NSMutableDictionary *)self->_analysis vcp_removeResultForKey:@"KeyFrameBlurResults"];
    v202 = VCPSignPostLog();
    v173 = v202;
    if (v141 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v202))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v173, OS_SIGNPOST_INTERVAL_END, v141, "VCPPhotoAnalyzer_VCPLivePhotoKeyFrameAnalyzer", "", buf, 2u);
    }

    goto LABEL_192;
  }

LABEL_166:
  v135 = 3;
LABEL_208:
  self->_status = v135;
  v193 = self->_analysis;
  self->_analysis = 0;

LABEL_209:
  v194 = VCPSignPostLog();
  v195 = v194;
  if (v207 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v194))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v195, OS_SIGNPOST_INTERVAL_END, spid, "VCPPhotoAnalyzer", "", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v196 = MEMORY[0x1E69E9C10];
    v197 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v196, OS_LOG_TYPE_DEBUG))
    {
      v198 = [(VCPAsset *)self->_asset localIdentifier];
      v199 = [(NSMutableDictionary *)self->_analysis vcp_analysisDescriptionWithResultDetails:1];
      *buf = 138412546;
      v218 = v198;
      v219 = 2112;
      v220 = v199;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][PhotoAnalyzer] After analyzing %@", buf, 0x16u);
    }
  }

LABEL_216:
  v200 = self->_analysis;

  return v200;
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 24) = 0;
  return self;
}

@end