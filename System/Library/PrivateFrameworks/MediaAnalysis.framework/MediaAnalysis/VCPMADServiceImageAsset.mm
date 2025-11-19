@interface VCPMADServiceImageAsset
+ (VCPMADServiceImageAsset)assetWithImageData:(id)a3 uniformTypeIdentifier:(id)a4 identifier:(id)a5 clientBundleID:(id)a6 clientTeamID:(id)a7;
+ (VCPMADServiceImageAsset)assetWithPhotosAsset:(id)a3 clientBundleID:(id)a4 clientTeamID:(id)a5;
+ (VCPMADServiceImageAsset)assetWithPhotosAsset:(id)a3 pixelBuffer:(__CVBuffer *)a4 orientation:(unsigned int)a5 clientBundleID:(id)a6 clientTeamID:(id)a7;
+ (VCPMADServiceImageAsset)assetWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 identifier:(id)a5 clientBundleID:(id)a6 clientTeamID:(id)a7;
+ (VCPMADServiceImageAsset)assetWithURL:(id)a3 identifier:(id)a4 clientBundleID:(id)a5 clientTeamID:(id)a6;
- (CGSize)resolution;
- (VCPMADServiceImageAsset)initWithClientBundleID:(id)a3 clientTeamID:(id)a4;
- (id)vcp_annotationWithTypes:(unint64_t)a3;
- (id)vcp_scenenetAnnotation;
- (id)vcp_textAnnotation;
@end

@implementation VCPMADServiceImageAsset

- (id)vcp_textAnnotation
{
  v2 = [(VCPMADServiceImageAsset *)self documentObservations];
  if (v2)
  {
    v3 = [MEMORY[0x1E69E04A8] textBlockWithDocumentObservations:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)vcp_scenenetAnnotation
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [(VCPMADServiceImageAsset *)self scenenetClassifications];
  if (v2)
  {
    v29 = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v28 = v2;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v31;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v31 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v30 + 1) + 8 * i);
          v9 = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
          v10 = [v9 nodeForExtendedSceneClassId:{objc_msgSend(v8, "extendedSceneIdentifier")}];

          if (v10 && ([v10 name], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
          {
            v12 = objc_alloc(MEMORY[0x1E69E0490]);
            v13 = [v10 name];
            [v8 boundingBox];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            [v8 confidence];
            *&v23 = v22;
            v24 = [v12 initWithLabel:v13 normalizedBoundingBox:v15 confidence:{v17, v19, v21, v23}];
            [v29 addObject:v24];
          }

          else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v8 extendedSceneIdentifier];
            *buf = 134217984;
            v35 = v25;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[SceneNet] Failed to find label for identifier %llu", buf, 0xCu);
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v5);
    }

    v26 = [objc_alloc(MEMORY[0x1E69E0498]) initWithAnnotations:v29 revision:3737841665];
    v2 = v28;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)vcp_annotationWithTypes:(unint64_t)a3
{
  v3 = a3;
  v4 = self;
  v148 = *MEMORY[0x1E69E9840];
  if ((a3 & 3) == 0)
  {
    v6 = 0;
    v125 = 0;
    v120 = 0;
    goto LABEL_79;
  }

  v5 = [(VCPMADServiceImageAsset *)self facesWithDetectionTypes:0];
  if ([v5 count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v126 = [MEMORY[0x1E695DF90] dictionary];
    v7 = [v5 firstObject];
    v8 = [v7 photoLibrary];

    v123 = v6;
    v111 = v5;
    v112 = v8;
    v113 = v3;
    v115 = v4;
    if (v8)
    {
      goto LABEL_4;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v53 = [(VCPMADServiceImageAsset *)v4 identifier];
      *buf = 138412290;
      v143 = v53;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VI][%@] -> face without photoLibrary", buf, 0xCu);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = [(VCPMADServiceImageAsset *)v4 photoLibrary];
      v55 = MediaAnalysisLogLevel();
      v112 = v54;
      if (v54)
      {
        if (v55 >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          v56 = [(VCPMADServiceImageAsset *)v4 identifier];
          *buf = 138412546;
          v143 = v56;
          v144 = 2112;
          v145 = v54;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VI][%@] -> asset's photoLibrary %@", buf, 0x16u);
        }

LABEL_4:
        v9 = VCPSignPostLog();
        v10 = os_signpost_id_generate(v9);

        v11 = VCPSignPostLog();
        v12 = v11;
        type = v10 - 1;
        if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "MADVIFetchVerifiedPeople", "", buf, 2u);
        }

        spid = v10;

        v119 = [v112 mad_allPersonsFetchOptionsWithDetectionTypes:&unk_1F49BEB48 andVerifiedTypes:&unk_1F49BEB60];
        v13 = [MEMORY[0x1E6978978] fetchPersonsWithFaces:v5 options:?];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v14 = [v13 count];
          *buf = 134217984;
          v143 = v14;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VI][Identity] Fetched %lu verified identities", buf, 0xCu);
        }

        if ([v13 count])
        {
          v15 = 0;
          v16 = MEMORY[0x1E69E9C10];
          do
          {
            v17 = objc_autoreleasePoolPush();
            v18 = [v13 objectAtIndexedSubscript:v15];
            v19 = [v18 localIdentifier];
            [v126 setObject:v18 forKeyedSubscript:v19];

            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v20 = [v18 localIdentifier];
              v21 = [v18 verifiedType];
              *buf = 138412546;
              v143 = v20;
              v144 = 2048;
              v145 = v21;
              _os_log_impl(&dword_1C9B70000, v16, OS_LOG_TYPE_DEBUG, "[VI][Identity] -> identitity %@ with verified type %ld", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v17);
            ++v15;
          }

          while (v15 < [v13 count]);
        }

        v22 = VCPSignPostLog();
        v23 = v22;
        if (type < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v22))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v23, OS_SIGNPOST_INTERVAL_END, spid, "MADVIFetchVerifiedPeople", "", buf, 2u);
        }

        v3 = v113;
        if ((v113 & 1) == 0)
        {
LABEL_20:
          v120 = 0;
          if ((v3 & 2) != 0)
          {
LABEL_21:
            v125 = [MEMORY[0x1E695DF70] array];
            v131 = 0u;
            v132 = 0u;
            v133 = 0u;
            v134 = 0u;
            v24 = v5;
            v25 = [v24 countByEnumeratingWithState:&v131 objects:v140 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v132;
              v28 = 0x1E69E0000uLL;
              spida = v24;
              do
              {
                for (i = 0; i != v26; ++i)
                {
                  if (*v132 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v30 = *(*(&v131 + 1) + 8 * i);
                  v31 = objc_autoreleasePoolPush();
                  if ([v30 vcp_hasBody])
                  {
                    [v30 vcp_normalizedBodyBounds];
                    v33 = v32;
                    v35 = v34;
                    v37 = v36;
                    v39 = v38;
                    v40 = objc_alloc(*(v28 + 1168));
                    LODWORD(v41) = 1.0;
                    v42 = [v40 initWithLabel:@"Human" normalizedBoundingBox:v33 confidence:{v35, v37, v39, v41}];
                    [v125 addObject:v42];

                    v43 = [v30 personLocalIdentifier];
                    v44 = [v126 objectForKeyedSubscript:v43];

                    if (v44 && [v44 faceCount])
                    {
                      v45 = v28;
                      v46 = [v44 faceCount];
                      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                      {
                        v47 = [v30 personLocalIdentifier];
                        v48 = [v44 name];
                        *buf = 138412802;
                        v143 = v47;
                        v144 = 2112;
                        v145 = v48;
                        v146 = 2048;
                        v147 = v46;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VI][Identity] Creating VIReducePersonOverTriggerRegionalAnnotation for human (torso) identity %@ (%@) with %ld faces in Photos library", buf, 0x20u);
                      }

                      v49 = objc_alloc(MEMORY[0x1E69E0480]);
                      v50 = [v30 personLocalIdentifier];
                      LODWORD(v51) = 1.0;
                      v52 = [v49 initWithLabel:v50 boundingBox:v46 confidence:v33 faceCount:{v35, v37, v39, v51}];

                      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v143 = v52;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VI][Identity] Created VIReducePersonOverTriggerRegionalAnnotation %@", buf, 0xCu);
                      }

                      v6 = v123;
                      [v123 addObject:v52];

                      v28 = v45;
                      v24 = spida;
                    }
                  }

                  objc_autoreleasePoolPop(v31);
                }

                v26 = [v24 countByEnumeratingWithState:&v131 objects:v140 count:16];
              }

              while (v26);
            }

            v3 = v113;
            v4 = v115;
            v5 = v111;
            goto LABEL_77;
          }

LABEL_76:
          v125 = 0;
LABEL_77:

          goto LABEL_78;
        }

LABEL_57:
        v63 = [MEMORY[0x1E695DF70] array];
        v135 = 0u;
        v136 = 0u;
        v137 = 0u;
        v138 = 0u;
        v64 = v5;
        v65 = [v64 countByEnumeratingWithState:&v135 objects:v141 count:16];
        v120 = v63;
        if (v65)
        {
          v66 = v65;
          v67 = *v136;
          do
          {
            for (j = 0; j != v66; ++j)
            {
              if (*v136 != v67)
              {
                objc_enumerationMutation(v64);
              }

              v69 = *(*(&v135 + 1) + 8 * j);
              v70 = objc_autoreleasePoolPush();
              if ([v69 vcp_hasFace])
              {
                [v69 vcp_normalizedFaceBounds];
                v72 = v71;
                v74 = v73;
                v76 = v75;
                v78 = v77;
                v79 = objc_alloc(MEMORY[0x1E69E0490]);
                LODWORD(v80) = 1.0;
                v81 = [v79 initWithLabel:@"Face" normalizedBoundingBox:v72 confidence:{v74, v76, v78, v80}];
                [v63 addObject:v81];

                v82 = [v69 personLocalIdentifier];
                v83 = [v126 objectForKeyedSubscript:v82];

                if (v83 && [v83 faceCount])
                {
                  v84 = [v83 faceCount];
                  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                  {
                    v85 = [v69 personLocalIdentifier];
                    v86 = [v83 name];
                    *buf = 138412802;
                    v143 = v85;
                    v144 = 2112;
                    v145 = v86;
                    v146 = 2048;
                    v147 = v84;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VI][Identity] Creating VIReducePersonOverTriggerRegionalAnnotation for face identity %@ (%@) with %ld faces in Photos library", buf, 0x20u);
                  }

                  v87 = objc_alloc(MEMORY[0x1E69E0480]);
                  v88 = [v69 personLocalIdentifier];
                  LODWORD(v89) = 1.0;
                  v90 = [v87 initWithLabel:v88 boundingBox:v84 confidence:v72 faceCount:{v74, v76, v78, v89}];

                  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v143 = v90;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VI][Identity] Created VIReducePersonOverTriggerRegionalAnnotation %@", buf, 0xCu);
                  }

                  v6 = v123;
                  [v123 addObject:v90];

                  v63 = v120;
                }
              }

              objc_autoreleasePoolPop(v70);
            }

            v66 = [v64 countByEnumeratingWithState:&v135 objects:v141 count:16];
          }

          while (v66);
        }

        v3 = v113;
        v4 = v115;
        v5 = v111;
        if ((v113 & 2) != 0)
        {
          goto LABEL_21;
        }

        goto LABEL_76;
      }

      if (v55 >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v62 = [(VCPMADServiceImageAsset *)v4 identifier];
        *buf = 138412290;
        v143 = v62;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VI][%@] -> asset without photoLibrary", buf, 0xCu);
      }
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v57 = [(VCPMADServiceImageAsset *)v4 identifier];
      v58 = objc_opt_class();
      v59 = v58;
      v60 = objc_opt_class();
      *buf = 138412802;
      v143 = v57;
      v144 = 2112;
      v145 = v58;
      v146 = 2112;
      v147 = v60;
      v61 = v60;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VI][%@] -> faces from %@ (expected %@)", buf, 0x20u);

      v6 = v123;
    }

    v112 = 0;
    if ((v3 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

  v6 = 0;
  v125 = 0;
  v120 = 0;
LABEL_78:

LABEL_79:
  if ([v6 count])
  {
    v91 = [objc_alloc(MEMORY[0x1E69E0478]) initWithRegionsItems:v6];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v92 = [v6 count];
      *buf = 134218242;
      v143 = v92;
      v144 = 2112;
      v145 = v91;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VI][Identity] Packaged VIReducePersonOverTriggerAnnotation with %lu VIReducePersonOverTriggerRegionalAnnotation - %@", buf, 0x16u);
    }

    if ((v3 & 4) == 0)
    {
LABEL_84:
      v93 = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_85;
      }

LABEL_104:
      v94 = 0;
      if ((v3 & 0x10) != 0)
      {
        goto LABEL_86;
      }

      goto LABEL_105;
    }
  }

  else
  {
    v91 = 0;
    if ((v3 & 4) == 0)
    {
      goto LABEL_84;
    }
  }

  v96 = [(VCPMADServiceImageAsset *)v4 nsfwClassifications];
  if (v96)
  {
    typea = v91;
    v114 = v3;
    v116 = v4;
    v124 = v6;
    v93 = [MEMORY[0x1E695DF70] array];
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v97 = v96;
    v98 = [v97 countByEnumeratingWithState:&v127 objects:v139 count:16];
    if (v98)
    {
      v99 = v98;
      v100 = *v128;
      do
      {
        for (k = 0; k != v99; ++k)
        {
          if (*v128 != v100)
          {
            objc_enumerationMutation(v97);
          }

          v102 = *(*(&v127 + 1) + 8 * k);
          v103 = VCPSpecialLabelFromExtendedSceneClassificationID([v102 extendedSceneIdentifier]);
          if (v103)
          {
            v104 = objc_alloc(MEMORY[0x1E69E0490]);
            [v102 confidence];
            *&v106 = v105;
            v107 = [v104 initWithLabel:v103 normalizedBoundingBox:0.0 confidence:{0.0, 1.0, 1.0, v106}];
            [v93 addObject:v107];
          }

          else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v108 = [v102 extendedSceneIdentifier];
            *buf = 134217984;
            v143 = v108;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[NSFW] Failed to find label for identifier %llu", buf, 0xCu);
          }
        }

        v99 = [v97 countByEnumeratingWithState:&v127 objects:v139 count:16];
      }

      while (v99);
    }

    v6 = v124;
    v3 = v114;
    v4 = v116;
    v91 = typea;
  }

  else
  {
    v93 = 0;
  }

  if ((v3 & 8) == 0)
  {
    goto LABEL_104;
  }

LABEL_85:
  v94 = [(VCPMADServiceImageAsset *)v4 vcp_textAnnotation];
  if ((v3 & 0x10) != 0)
  {
LABEL_86:
    v95 = [(VCPMADServiceImageAsset *)v4 vcp_scenenetAnnotation];
    goto LABEL_106;
  }

LABEL_105:
  v95 = 0;
LABEL_106:
  v109 = [objc_alloc(MEMORY[0x1E69E0448]) initWithReducePersonOverTriggerAnnotation:v91 faceAnnotations:v120 humanAnnotations:v125 nsfwAnnotations:v93 textBlockAnnotation:v94 scenenetAnnotation:v95 barcodeAnnotation:0];

  return v109;
}

- (VCPMADServiceImageAsset)initWithClientBundleID:(id)a3 clientTeamID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = VCPMADServiceImageAsset;
  v9 = [(VCPMADServiceImageAsset *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientBundleID, a3);
    objc_storeStrong(&v10->_clientTeamID, a4);
  }

  return v10;
}

+ (VCPMADServiceImageAsset)assetWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4 identifier:(id)a5 clientBundleID:(id)a6 clientTeamID:(id)a7
{
  v9 = *&a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [[VCPMADServiceImagePixelBufferAsset alloc] initWithPixelBuffer:a3 orientation:v9 andIdentifier:v11 clientBundleID:v12 clientTeamID:v13];

  return v14;
}

+ (VCPMADServiceImageAsset)assetWithURL:(id)a3 identifier:(id)a4 clientBundleID:(id)a5 clientTeamID:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [[VCPMADServiceImageURLAsset alloc] initWithURL:v9 identifier:v10 clientBundleID:v11 clientTeamID:v12];

  return v13;
}

+ (VCPMADServiceImageAsset)assetWithImageData:(id)a3 uniformTypeIdentifier:(id)a4 identifier:(id)a5 clientBundleID:(id)a6 clientTeamID:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [[VCPMADServiceImageDataAsset alloc] initWithImageData:v11 uniformTypeIdentifier:v12 identifier:v13 clientBundleID:v14 clientTeamID:v15];

  return v16;
}

+ (VCPMADServiceImageAsset)assetWithPhotosAsset:(id)a3 clientBundleID:(id)a4 clientTeamID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[VCPMADServiceImagePhotosAsset alloc] initWithPhotosAsset:v7 clientBundleID:v8 clientTeamID:v9];

  return v10;
}

+ (VCPMADServiceImageAsset)assetWithPhotosAsset:(id)a3 pixelBuffer:(__CVBuffer *)a4 orientation:(unsigned int)a5 clientBundleID:(id)a6 clientTeamID:(id)a7
{
  v9 = *&a5;
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v14 = [[VCPMADServiceImagePhotosAsset alloc] initWithPhotosAsset:v11 pixelBuffer:a4 orientation:v9 clientBundleID:v12 clientTeamID:v13];

  return v14;
}

- (CGSize)resolution
{
  width = self->_resolution.width;
  height = self->_resolution.height;
  result.height = height;
  result.width = width;
  return result;
}

@end