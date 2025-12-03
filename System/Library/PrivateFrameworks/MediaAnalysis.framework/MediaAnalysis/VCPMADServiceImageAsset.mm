@interface VCPMADServiceImageAsset
+ (VCPMADServiceImageAsset)assetWithImageData:(id)data uniformTypeIdentifier:(id)identifier identifier:(id)a5 clientBundleID:(id)d clientTeamID:(id)iD;
+ (VCPMADServiceImageAsset)assetWithPhotosAsset:(id)asset clientBundleID:(id)d clientTeamID:(id)iD;
+ (VCPMADServiceImageAsset)assetWithPhotosAsset:(id)asset pixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation clientBundleID:(id)d clientTeamID:(id)iD;
+ (VCPMADServiceImageAsset)assetWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation identifier:(id)identifier clientBundleID:(id)d clientTeamID:(id)iD;
+ (VCPMADServiceImageAsset)assetWithURL:(id)l identifier:(id)identifier clientBundleID:(id)d clientTeamID:(id)iD;
- (CGSize)resolution;
- (VCPMADServiceImageAsset)initWithClientBundleID:(id)d clientTeamID:(id)iD;
- (id)vcp_annotationWithTypes:(unint64_t)types;
- (id)vcp_scenenetAnnotation;
- (id)vcp_textAnnotation;
@end

@implementation VCPMADServiceImageAsset

- (id)vcp_textAnnotation
{
  documentObservations = [(VCPMADServiceImageAsset *)self documentObservations];
  if (documentObservations)
  {
    v3 = [MEMORY[0x1E69E04A8] textBlockWithDocumentObservations:documentObservations];
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
  scenenetClassifications = [(VCPMADServiceImageAsset *)self scenenetClassifications];
  if (scenenetClassifications)
  {
    array = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v28 = scenenetClassifications;
    v3 = scenenetClassifications;
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
          vcp_sharedTaxonomy = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
          v10 = [vcp_sharedTaxonomy nodeForExtendedSceneClassId:{objc_msgSend(v8, "extendedSceneIdentifier")}];

          if (v10 && ([v10 name], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
          {
            v12 = objc_alloc(MEMORY[0x1E69E0490]);
            name = [v10 name];
            [v8 boundingBox];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            [v8 confidence];
            *&v23 = v22;
            v24 = [v12 initWithLabel:name normalizedBoundingBox:v15 confidence:{v17, v19, v21, v23}];
            [array addObject:v24];
          }

          else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            extendedSceneIdentifier = [v8 extendedSceneIdentifier];
            *buf = 134217984;
            v35 = extendedSceneIdentifier;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[SceneNet] Failed to find label for identifier %llu", buf, 0xCu);
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v5);
    }

    v26 = [objc_alloc(MEMORY[0x1E69E0498]) initWithAnnotations:array revision:3737841665];
    scenenetClassifications = v28;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)vcp_annotationWithTypes:(unint64_t)types
{
  typesCopy = types;
  selfCopy = self;
  v148 = *MEMORY[0x1E69E9840];
  if ((types & 3) == 0)
  {
    array = 0;
    array2 = 0;
    v120 = 0;
    goto LABEL_79;
  }

  v5 = [(VCPMADServiceImageAsset *)self facesWithDetectionTypes:0];
  if ([v5 count])
  {
    array = [MEMORY[0x1E695DF70] array];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    firstObject = [v5 firstObject];
    photoLibrary = [firstObject photoLibrary];

    v123 = array;
    v111 = v5;
    v112 = photoLibrary;
    v113 = typesCopy;
    v115 = selfCopy;
    if (photoLibrary)
    {
      goto LABEL_4;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      identifier = [(VCPMADServiceImageAsset *)selfCopy identifier];
      *buf = 138412290;
      v143 = identifier;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VI][%@] -> face without photoLibrary", buf, 0xCu);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      photoLibrary2 = [(VCPMADServiceImageAsset *)selfCopy photoLibrary];
      v55 = MediaAnalysisLogLevel();
      v112 = photoLibrary2;
      if (photoLibrary2)
      {
        if (v55 >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          identifier2 = [(VCPMADServiceImageAsset *)selfCopy identifier];
          *buf = 138412546;
          v143 = identifier2;
          v144 = 2112;
          v145 = photoLibrary2;
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
            localIdentifier = [v18 localIdentifier];
            [dictionary setObject:v18 forKeyedSubscript:localIdentifier];

            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              localIdentifier2 = [v18 localIdentifier];
              verifiedType = [v18 verifiedType];
              *buf = 138412546;
              v143 = localIdentifier2;
              v144 = 2048;
              v145 = verifiedType;
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

        typesCopy = v113;
        if ((v113 & 1) == 0)
        {
LABEL_20:
          v120 = 0;
          if ((typesCopy & 2) != 0)
          {
LABEL_21:
            array2 = [MEMORY[0x1E695DF70] array];
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
                    [array2 addObject:v42];

                    personLocalIdentifier = [v30 personLocalIdentifier];
                    v44 = [dictionary objectForKeyedSubscript:personLocalIdentifier];

                    if (v44 && [v44 faceCount])
                    {
                      v45 = v28;
                      faceCount = [v44 faceCount];
                      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                      {
                        personLocalIdentifier2 = [v30 personLocalIdentifier];
                        name = [v44 name];
                        *buf = 138412802;
                        v143 = personLocalIdentifier2;
                        v144 = 2112;
                        v145 = name;
                        v146 = 2048;
                        v147 = faceCount;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VI][Identity] Creating VIReducePersonOverTriggerRegionalAnnotation for human (torso) identity %@ (%@) with %ld faces in Photos library", buf, 0x20u);
                      }

                      v49 = objc_alloc(MEMORY[0x1E69E0480]);
                      personLocalIdentifier3 = [v30 personLocalIdentifier];
                      LODWORD(v51) = 1.0;
                      v52 = [v49 initWithLabel:personLocalIdentifier3 boundingBox:faceCount confidence:v33 faceCount:{v35, v37, v39, v51}];

                      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v143 = v52;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VI][Identity] Created VIReducePersonOverTriggerRegionalAnnotation %@", buf, 0xCu);
                      }

                      array = v123;
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

            typesCopy = v113;
            selfCopy = v115;
            v5 = v111;
            goto LABEL_77;
          }

LABEL_76:
          array2 = 0;
LABEL_77:

          goto LABEL_78;
        }

LABEL_57:
        array3 = [MEMORY[0x1E695DF70] array];
        v135 = 0u;
        v136 = 0u;
        v137 = 0u;
        v138 = 0u;
        v64 = v5;
        v65 = [v64 countByEnumeratingWithState:&v135 objects:v141 count:16];
        v120 = array3;
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
                [array3 addObject:v81];

                personLocalIdentifier4 = [v69 personLocalIdentifier];
                v83 = [dictionary objectForKeyedSubscript:personLocalIdentifier4];

                if (v83 && [v83 faceCount])
                {
                  faceCount2 = [v83 faceCount];
                  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                  {
                    personLocalIdentifier5 = [v69 personLocalIdentifier];
                    name2 = [v83 name];
                    *buf = 138412802;
                    v143 = personLocalIdentifier5;
                    v144 = 2112;
                    v145 = name2;
                    v146 = 2048;
                    v147 = faceCount2;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VI][Identity] Creating VIReducePersonOverTriggerRegionalAnnotation for face identity %@ (%@) with %ld faces in Photos library", buf, 0x20u);
                  }

                  v87 = objc_alloc(MEMORY[0x1E69E0480]);
                  personLocalIdentifier6 = [v69 personLocalIdentifier];
                  LODWORD(v89) = 1.0;
                  v90 = [v87 initWithLabel:personLocalIdentifier6 boundingBox:faceCount2 confidence:v72 faceCount:{v74, v76, v78, v89}];

                  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v143 = v90;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VI][Identity] Created VIReducePersonOverTriggerRegionalAnnotation %@", buf, 0xCu);
                  }

                  array = v123;
                  [v123 addObject:v90];

                  array3 = v120;
                }
              }

              objc_autoreleasePoolPop(v70);
            }

            v66 = [v64 countByEnumeratingWithState:&v135 objects:v141 count:16];
          }

          while (v66);
        }

        typesCopy = v113;
        selfCopy = v115;
        v5 = v111;
        if ((v113 & 2) != 0)
        {
          goto LABEL_21;
        }

        goto LABEL_76;
      }

      if (v55 >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        identifier3 = [(VCPMADServiceImageAsset *)selfCopy identifier];
        *buf = 138412290;
        v143 = identifier3;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VI][%@] -> asset without photoLibrary", buf, 0xCu);
      }
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      identifier4 = [(VCPMADServiceImageAsset *)selfCopy identifier];
      v58 = objc_opt_class();
      v59 = v58;
      v60 = objc_opt_class();
      *buf = 138412802;
      v143 = identifier4;
      v144 = 2112;
      v145 = v58;
      v146 = 2112;
      v147 = v60;
      v61 = v60;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VI][%@] -> faces from %@ (expected %@)", buf, 0x20u);

      array = v123;
    }

    v112 = 0;
    if ((typesCopy & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

  array = 0;
  array2 = 0;
  v120 = 0;
LABEL_78:

LABEL_79:
  if ([array count])
  {
    v91 = [objc_alloc(MEMORY[0x1E69E0478]) initWithRegionsItems:array];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v92 = [array count];
      *buf = 134218242;
      v143 = v92;
      v144 = 2112;
      v145 = v91;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VI][Identity] Packaged VIReducePersonOverTriggerAnnotation with %lu VIReducePersonOverTriggerRegionalAnnotation - %@", buf, 0x16u);
    }

    if ((typesCopy & 4) == 0)
    {
LABEL_84:
      array4 = 0;
      if ((typesCopy & 8) != 0)
      {
        goto LABEL_85;
      }

LABEL_104:
      vcp_textAnnotation = 0;
      if ((typesCopy & 0x10) != 0)
      {
        goto LABEL_86;
      }

      goto LABEL_105;
    }
  }

  else
  {
    v91 = 0;
    if ((typesCopy & 4) == 0)
    {
      goto LABEL_84;
    }
  }

  nsfwClassifications = [(VCPMADServiceImageAsset *)selfCopy nsfwClassifications];
  if (nsfwClassifications)
  {
    typea = v91;
    v114 = typesCopy;
    v116 = selfCopy;
    v124 = array;
    array4 = [MEMORY[0x1E695DF70] array];
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v97 = nsfwClassifications;
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
            [array4 addObject:v107];
          }

          else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            extendedSceneIdentifier = [v102 extendedSceneIdentifier];
            *buf = 134217984;
            v143 = extendedSceneIdentifier;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[NSFW] Failed to find label for identifier %llu", buf, 0xCu);
          }
        }

        v99 = [v97 countByEnumeratingWithState:&v127 objects:v139 count:16];
      }

      while (v99);
    }

    array = v124;
    typesCopy = v114;
    selfCopy = v116;
    v91 = typea;
  }

  else
  {
    array4 = 0;
  }

  if ((typesCopy & 8) == 0)
  {
    goto LABEL_104;
  }

LABEL_85:
  vcp_textAnnotation = [(VCPMADServiceImageAsset *)selfCopy vcp_textAnnotation];
  if ((typesCopy & 0x10) != 0)
  {
LABEL_86:
    vcp_scenenetAnnotation = [(VCPMADServiceImageAsset *)selfCopy vcp_scenenetAnnotation];
    goto LABEL_106;
  }

LABEL_105:
  vcp_scenenetAnnotation = 0;
LABEL_106:
  v109 = [objc_alloc(MEMORY[0x1E69E0448]) initWithReducePersonOverTriggerAnnotation:v91 faceAnnotations:v120 humanAnnotations:array2 nsfwAnnotations:array4 textBlockAnnotation:vcp_textAnnotation scenenetAnnotation:vcp_scenenetAnnotation barcodeAnnotation:0];

  return v109;
}

- (VCPMADServiceImageAsset)initWithClientBundleID:(id)d clientTeamID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = VCPMADServiceImageAsset;
  v9 = [(VCPMADServiceImageAsset *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientBundleID, d);
    objc_storeStrong(&v10->_clientTeamID, iD);
  }

  return v10;
}

+ (VCPMADServiceImageAsset)assetWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation identifier:(id)identifier clientBundleID:(id)d clientTeamID:(id)iD
{
  v9 = *&orientation;
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  v14 = [[VCPMADServiceImagePixelBufferAsset alloc] initWithPixelBuffer:buffer orientation:v9 andIdentifier:identifierCopy clientBundleID:dCopy clientTeamID:iDCopy];

  return v14;
}

+ (VCPMADServiceImageAsset)assetWithURL:(id)l identifier:(id)identifier clientBundleID:(id)d clientTeamID:(id)iD
{
  lCopy = l;
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  v13 = [[VCPMADServiceImageURLAsset alloc] initWithURL:lCopy identifier:identifierCopy clientBundleID:dCopy clientTeamID:iDCopy];

  return v13;
}

+ (VCPMADServiceImageAsset)assetWithImageData:(id)data uniformTypeIdentifier:(id)identifier identifier:(id)a5 clientBundleID:(id)d clientTeamID:(id)iD
{
  dataCopy = data;
  identifierCopy = identifier;
  v13 = a5;
  dCopy = d;
  iDCopy = iD;
  v16 = [[VCPMADServiceImageDataAsset alloc] initWithImageData:dataCopy uniformTypeIdentifier:identifierCopy identifier:v13 clientBundleID:dCopy clientTeamID:iDCopy];

  return v16;
}

+ (VCPMADServiceImageAsset)assetWithPhotosAsset:(id)asset clientBundleID:(id)d clientTeamID:(id)iD
{
  assetCopy = asset;
  dCopy = d;
  iDCopy = iD;
  v10 = [[VCPMADServiceImagePhotosAsset alloc] initWithPhotosAsset:assetCopy clientBundleID:dCopy clientTeamID:iDCopy];

  return v10;
}

+ (VCPMADServiceImageAsset)assetWithPhotosAsset:(id)asset pixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation clientBundleID:(id)d clientTeamID:(id)iD
{
  v9 = *&orientation;
  assetCopy = asset;
  dCopy = d;
  iDCopy = iD;
  v14 = [[VCPMADServiceImagePhotosAsset alloc] initWithPhotosAsset:assetCopy pixelBuffer:buffer orientation:v9 clientBundleID:dCopy clientTeamID:iDCopy];

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