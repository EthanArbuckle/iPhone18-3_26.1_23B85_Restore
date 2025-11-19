@interface VCPFaceProcessingServiceWorker
+ (id)allPersonsWithAtLeastOneFaceFetchOptionsWithPhotoLibrary:(id)a3;
+ (id)workerWithPhotoLibrary:(id)a3 andContext:(id)a4;
- (VCPFaceProcessingServiceWorker)initWithPhotoLibrary:(id)a3 andContext:(id)a4;
- (id)_suggestionsForPersonWithLocalIdentifier:(id)a3 toBeConfirmedPersonSuggestions:(id)a4 toBeRejectedPersonSuggestions:(id)a5 cancelOrExtendTimeoutBlock:(id)a6 error:(id *)a7;
- (void)faceCandidatesforKeyFaceForPersonsWithLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5;
- (void)personPromoterStatusWithContext:(id)a3 reply:(id)a4;
- (void)rebuildPersonsWithContext:(id)a3 reply:(id)a4 extendTimeout:(id)a5 cancel:(id)a6;
- (void)reclusterFacesWithContext:(id)a3 reply:(id)a4 extendTimeout:(id)a5 cancel:(id)a6;
- (void)requestSuggestedMePersonIdentifierWithContext:(id)a3 reply:(id)a4;
- (void)resetFaceClusteringStateWithContext:(id)a3 reply:(id)a4;
- (void)resetPersonPromoterStatusWithReply:(id)a3;
- (void)resetPersonsModelWithReply:(id)a3;
- (void)resetPetsModelWithReply:(id)a3;
- (void)suggestPersonsForPersonWithLocalIdentifier:(id)a3 toBeConfirmedPersonSuggestions:(id)a4 toBeRejectedPersonSuggestions:(id)a5 context:(id)a6 cancelOrExtendTimeoutBlock:(id)a7 reply:(id)a8;
- (void)updateKeyFacesOfPersonsWithLocalIdentifiers:(id)a3 forceUpdate:(BOOL)a4 context:(id)a5 cancelOrExtendTimeoutBlock:(id)a6 reply:(id)a7;
- (void)validateClusterCacheWithContext:(id)a3 cancelOrExtendTimeoutBlock:(id)a4 reply:(id)a5;
@end

@implementation VCPFaceProcessingServiceWorker

- (VCPFaceProcessingServiceWorker)initWithPhotoLibrary:(id)a3 andContext:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = VCPFaceProcessingServiceWorker;
  v9 = [(VCPFaceProcessingServiceWorker *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, a3);
    objc_storeStrong(&v10->_context, a4);
    v11 = [[VCPPhotosPersistenceDelegate alloc] initWithPhotoLibrary:v7];
    persistenceDelegate = v10->_persistenceDelegate;
    v10->_persistenceDelegate = v11;

    v13 = [v7 vcp_visionCacheStorageDirectoryURL];
    v20 = 0;
    v14 = [objc_alloc(MEMORY[0x1E69E0678]) initWithClient:0 path:v13 error:&v20];
    v15 = v20;
    gallery = v10->_gallery;
    v10->_gallery = v14;

    v17 = v10;
    if (!v10->_gallery)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = v15;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPFaceProcessingServiceWorker] Failed to create VUWGallery - %@", buf, 0xCu);
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  return v18;
}

+ (id)workerWithPhotoLibrary:(id)a3 andContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:v6 andContext:v5];

  return v7;
}

+ (id)allPersonsWithAtLeastOneFaceFetchOptionsWithPhotoLibrary:(id)a3
{
  v3 = [a3 librarySpecificFetchOptions];
  [v3 setMinimumUnverifiedFaceCount:1];
  [v3 setMinimumVerifiedFaceCount:1];
  [v3 setIncludedDetectionTypes:&unk_1F49BEDB8];

  return v3;
}

- (void)updateKeyFacesOfPersonsWithLocalIdentifiers:(id)a3 forceUpdate:(BOOL)a4 context:(id)a5 cancelOrExtendTimeoutBlock:(id)a6 reply:(id)a7
{
  v9 = a4;
  v20 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  v13 = a7;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v19 = v11;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "UpdateKeyFaces for: '%@'", buf, 0xCu);
  }

  persistenceDelegate = self->_persistenceDelegate;
  v17 = 0;
  v15 = [(VCPPhotosPersistenceDelegate *)persistenceDelegate updateKeyFacesOfPersonsWithLocalIdentifiers:v11 forceUpdate:v9 cancelOrExtendTimeoutBlock:v12 error:&v17];
  v16 = v17;
  v13[2](v13, v15, v16);
}

- (id)_suggestionsForPersonWithLocalIdentifier:(id)a3 toBeConfirmedPersonSuggestions:(id)a4 toBeRejectedPersonSuggestions:(id)a5 cancelOrExtendTimeoutBlock:(id)a6 error:(id *)a7
{
  v147[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!(v15[2])())
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "suggestions first phase query start", buf, 2u);
    }

    v23 = [objc_opt_class() allPersonsWithAtLeastOneFaceFetchOptionsWithPhotoLibrary:self->_photoLibrary];
    [v23 setMinimumUnverifiedFaceCount:1];
    [v23 setMinimumVerifiedFaceCount:1];
    v24 = MEMORY[0x1E6978978];
    v145 = v12;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v145 count:1];
    v121 = v23;
    v26 = [v24 fetchPersonsWithLocalIdentifiers:v25 options:v23];
    v22 = [v26 firstObject];

    v21 = v22;
    if (!v22)
    {
      goto LABEL_24;
    }

    if (v15[2](v15))
    {
      if (a7)
      {
        v27 = MEMORY[0x1E696ABC0];
        v28 = v22;
        v29 = *MEMORY[0x1E696A768];
        v143 = *MEMORY[0x1E696A578];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"_suggestionsForPersonWithLocalIdentifier cancelled"];
        v31 = v30 = v14;
        v144 = v31;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
        v32 = v13;
        v34 = v33 = v12;
        v35 = v29;
        v21 = v28;
        *a7 = [v27 errorWithDomain:v35 code:-128 userInfo:v34];

        v12 = v33;
        v13 = v32;

        v14 = v30;
      }

LABEL_23:
      v22 = 0;
LABEL_24:
      v18 = v121;
      goto LABEL_99;
    }

    v36 = [v22 mdID];

    if (!v36)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v18 = v121;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v49 = [v22 localIdentifier];
          *buf = 138412290;
          v140 = v49;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PersonSuggestionVU] Person %@ does not have mdID", buf, 0xCu);

          v21 = v22;
        }

        v22 = 0;
        goto LABEL_99;
      }

      goto LABEL_23;
    }

    v117 = v14;
    v37 = [MEMORY[0x1E695DF90] dictionary];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __169__VCPFaceProcessingServiceWorker__suggestionsForPersonWithLocalIdentifier_toBeConfirmedPersonSuggestions_toBeRejectedPersonSuggestions_cancelOrExtendTimeoutBlock_error___block_invoke;
    aBlock[3] = &unk_1E834FEE0;
    aBlock[4] = self;
    v118 = v37;
    v132 = v118;
    context = v15;
    v133 = context;
    v116 = _Block_copy(aBlock);
    v114 = v22;
    v38 = [v22 mdID];
    v134 = 0;
    v39 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\d+?" options:0 error:&v134];
    v40 = v134;
    v41 = v40;
    if (v39)
    {
      *v113 = v40;
      v42 = [v39 firstMatchInString:v38 options:0 range:{0, objc_msgSend(v38, "length")}];
      v43 = v42;
      if (v42)
      {
        v110 = v13;
        v44 = v12;
        v45 = [v42 rangeAtIndex:0];
        v47 = [v38 substringWithRange:{v45, v46}];
        v48 = [v47 integerValue];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v140 = v48;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADParseEntityIdentifier] Parsing %ld", buf, 0xCu);
        }

        type = [objc_alloc(MEMORY[0x1E69E0688]) initWithValue:v48];

        v12 = v44;
        v13 = v110;
      }

      else if (MediaAnalysisLogLevel() < 3)
      {
        type = 0;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v140 = v38;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADParseEntityIdentifier] No valid EntityIdentifier - %@", buf, 0xCu);
        }

        type = 0;
      }

      v41 = *v113;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          type = 0;
          goto LABEL_34;
        }

        *buf = 138412290;
        v140 = v41;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADParseEntityIdentifier] Failed to construct regular expression - %@", buf, 0xCu);
      }

      type = 0;
    }

LABEL_34:

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v50 = [v114 localIdentifier];
      *buf = 138412290;
      v140 = v50;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PersonSuggestionVU] Retrieving similar entities to %@", buf, 0xCu);
    }

    gallery = self->_gallery;
    v130 = 0;
    v52 = [(VUWGallery *)gallery similarEntitiesTo:type error:&v130 body:v116];
    v112 = v130;
    v53 = MediaAnalysisLogLevel();
    v14 = v117;
    v21 = v114;
    if (v52)
    {
      if (v53 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v54 = [v118 count];
        *buf = 134217984;
        v140 = v54;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PersonSuggestionVU] Retrieved %lu similar entitiy(ies)", buf, 0xCu);
      }

      if (v15[2](context))
      {
        v18 = v121;
        if (a7)
        {
          v55 = MEMORY[0x1E696ABC0];
          v56 = *MEMORY[0x1E696A768];
          v137 = *MEMORY[0x1E696A578];
          v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_suggestionsForPersonWithLocalIdentifier cancelled"];
          v138 = v57;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
          v58 = v13;
          v60 = v59 = v12;
          v61 = v56;
          v21 = v114;
          *a7 = [v55 errorWithDomain:v61 code:-128 userInfo:v60];

          v12 = v59;
          v13 = v58;

          v14 = v117;
        }

        v22 = 0;
        goto LABEL_97;
      }

      if ([v118 count])
      {
        v108 = v12;
        v64 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v126 = 0u;
        v127 = 0u;
        v128 = 0u;
        v129 = 0u;
        v65 = v13;
        v66 = [v65 countByEnumeratingWithState:&v126 objects:v136 count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v127;
          do
          {
            for (i = 0; i != v67; ++i)
            {
              if (*v127 != v68)
              {
                objc_enumerationMutation(v65);
              }

              v70 = [*(*(&v126 + 1) + 8 * i) objectForKeyedSubscript:@"personIdentifier"];
              if (v70)
              {
                [v64 addObject:v70];
              }
            }

            v67 = [v65 countByEnumeratingWithState:&v126 objects:v136 count:16];
          }

          while (v67);
        }

        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v71 = v117;
        v72 = [v71 countByEnumeratingWithState:&v122 objects:v135 count:16];
        if (v72)
        {
          v73 = v72;
          v74 = *v123;
          do
          {
            for (j = 0; j != v73; ++j)
            {
              if (*v123 != v74)
              {
                objc_enumerationMutation(v71);
              }

              v76 = [*(*(&v122 + 1) + 8 * j) objectForKeyedSubscript:@"personIdentifier"];
              if (v76)
              {
                [v64 addObject:v76];
              }
            }

            v73 = [v71 countByEnumeratingWithState:&v122 objects:v135 count:16];
          }

          while (v73);
        }

        v107 = [(PHPhotoLibrary *)self->_photoLibrary mad_allFacesFetchOptions];
        v77 = [MEMORY[0x1E69787D0] fetchRejectedFacesForPerson:v114 options:?];
        if ([v77 count])
        {
          v78 = 0;
          do
          {
            v79 = objc_autoreleasePoolPush();
            v80 = [v77 objectAtIndexedSubscript:v78];
            v81 = [v80 personLocalIdentifier];

            if (v81)
            {
              [v64 addObject:v81];
            }

            objc_autoreleasePoolPop(v79);
            ++v78;
          }

          while (v78 < [v77 count]);
        }

        v106 = v77;
        v22 = [MEMORY[0x1E695DF70] array];
        v82 = [(PHPhotoLibrary *)self->_photoLibrary mad_allPersonsFetchOptions];
        v83 = [MEMORY[0x1E696AE18] predicateWithFormat:@"verifiedType = %@", &unk_1F49BD870];
        [v82 setInternalPredicate:v83];

        v84 = MEMORY[0x1E6978978];
        v85 = [v118 allKeys];
        v105 = v82;
        v86 = [v84 fetchPersonsWithMdIDs:v85 options:v82];

        v14 = v117;
        if ([v86 count])
        {
          v87 = 0;
          v109 = v86;
          v111 = v13;
          do
          {
            contexta = objc_autoreleasePoolPush();
            v88 = [v86 objectAtIndexedSubscript:v87];
            v89 = [v88 localIdentifier];
            v90 = [v64 containsObject:v89];

            if (v90)
            {
              if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_90;
              }

              v91 = [v88 localIdentifier];
              *buf = 138412290;
              v140 = v91;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PersonSuggestionVU] Ignoring person %@ from the exclusion list", buf, 0xCu);
            }

            else
            {
              v92 = [MEMORY[0x1E69787D0] fetchKeyFaceForPerson:v88 options:0];
              v91 = [v92 firstObject];

              if (v91)
              {
                v93 = [MEMORY[0x1E695DF90] dictionary];
                v94 = [v88 localIdentifier];
                [v93 setObject:v94 forKeyedSubscript:@"personIdentifier"];

                v95 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v88, "faceCount")}];
                [v93 setObject:v95 forKeyedSubscript:@"personFaceCount"];

                [v93 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"confirmed"];
                v96 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v91, "vuObservationID")}];
                [v93 setObject:v96 forKeyedSubscript:@"faceCSN"];

                v97 = [v91 localIdentifier];
                [v93 setObject:v97 forKeyedSubscript:@"faceIdentifier"];

                v98 = [v88 mdID];
                v99 = [v118 objectForKeyedSubscript:v98];
                v100 = v99;
                v101 = &unk_1F49BD888;
                if (v99)
                {
                  v101 = v99;
                }

                v102 = v101;

                [v93 setObject:v102 forKeyedSubscript:@"similarityScore"];
                [v22 addObject:v93];
                if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v140 = v93;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PersonSuggestionVU] Adding suggestion %@", buf, 0xCu);
                }

                v86 = v109;
                v13 = v111;
                v14 = v117;
              }

              else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
              {
                v103 = [v88 localIdentifier];
                *buf = 138412290;
                v140 = v103;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PersonSuggestionVU] Ignoring person %@ without keyface", buf, 0xCu);
              }
            }

LABEL_90:
            objc_autoreleasePoolPop(contexta);
            ++v87;
          }

          while (v87 < [v86 count]);
        }

        [v22 sortUsingComparator:&__block_literal_global_48];

        v12 = v108;
        v18 = v121;
        v21 = v114;
LABEL_97:
        v62 = v112;
LABEL_98:

        goto LABEL_99;
      }

      v22 = MEMORY[0x1E695E0F0];
    }

    else
    {
      if (v53 >= 3)
      {
        v18 = v121;
        v62 = v112;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v63 = [v114 localIdentifier];
          *buf = 138412546;
          v140 = v63;
          v141 = 2112;
          v142 = v112;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PersonSuggestionVU] Failed to retrieve similar entities to %@ - %@", buf, 0x16u);

          v21 = v114;
        }

        v22 = 0;
        goto LABEL_98;
      }

      v22 = 0;
    }

    v18 = v121;
    goto LABEL_97;
  }

  if (!a7)
  {
    v22 = 0;
    goto LABEL_100;
  }

  v16 = MEMORY[0x1E696ABC0];
  v17 = *MEMORY[0x1E696A768];
  v146 = *MEMORY[0x1E696A578];
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_suggestionsForPersonWithLocalIdentifier cancelled"];
  v147[0] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v147 forKeys:&v146 count:1];
  v20 = v17;
  v21 = v19;
  [v16 errorWithDomain:v20 code:-128 userInfo:v19];
  *a7 = v22 = 0;
LABEL_99:

LABEL_100:

  return v22;
}

uint64_t __169__VCPFaceProcessingServiceWorker__suggestionsForPersonWithLocalIdentifier_toBeConfirmedPersonSuggestions_toBeRejectedPersonSuggestions_cancelOrExtendTimeoutBlock_error___block_invoke(uint64_t a1, void *a2, float a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  [objc_opt_class() _similarityScoreThreshold];
  v7 = v6;
  v8 = MediaAnalysisLogLevel();
  if (v7 <= a3)
  {
    if (v8 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v17 = v5;
      v18 = 2048;
      v19 = a3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PersonSuggestionVU] Receiving person md:%@ (similarityScore: %.3f)", buf, 0x16u);
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"md:%ld", objc_msgSend(v5, "value")];
    *&v11 = a3;
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
    [*(a1 + 40) setObject:v12 forKeyedSubscript:v10];
  }

  else if (v8 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() _similarityScoreThreshold];
    *buf = 138412802;
    v17 = v5;
    v18 = 2048;
    v19 = a3;
    v20 = 2048;
    v21 = v9;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PersonSuggestionVU] Ignoring person md:%@ (similarityScore: %.3f < %.3f)", buf, 0x20u);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    v14 = (*(v13 + 16))() ^ 1;
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

uint64_t __169__VCPFaceProcessingServiceWorker__suggestionsForPersonWithLocalIdentifier_toBeConfirmedPersonSuggestions_toBeRejectedPersonSuggestions_cancelOrExtendTimeoutBlock_error___block_invoke_436(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"personFaceCount"];
  v6 = [v5 integerValue];

  v7 = [v4 objectForKeyedSubscript:@"personFaceCount"];

  v8 = [v7 integerValue];
  if (v6 > v8)
  {
    return -1;
  }

  else
  {
    return v6 < v8;
  }
}

- (void)suggestPersonsForPersonWithLocalIdentifier:(id)a3 toBeConfirmedPersonSuggestions:(id)a4 toBeRejectedPersonSuggestions:(id)a5 context:(id)a6 cancelOrExtendTimeoutBlock:(id)a7 reply:(id)a8
{
  v45[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v18 && v18[2](v18))
  {
    v20 = MEMORY[0x1E696ABC0];
    v21 = v17;
    v22 = *MEMORY[0x1E696A768];
    v44 = *MEMORY[0x1E696A578];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"suggestPersonsForPersonWithLocalIdentifier cancelled"];
    v45[0] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v25 = v22;
    v17 = v21;
    v26 = [v20 errorWithDomain:v25 code:-128 userInfo:v24];
    v19[2](v19, 0, v26);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v39 = v14;
      v40 = 2112;
      v41 = v15;
      v42 = 2112;
      v43 = v16;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Querying suggestions for person %@ (Photos: %@ to-be-confirmed, %@ to-be-rejected suggestions)", buf, 0x20u);
    }

    v35 = 0;
    v24 = [(VCPFaceProcessingServiceWorker *)self _suggestionsForPersonWithLocalIdentifier:v14 toBeConfirmedPersonSuggestions:v15 toBeRejectedPersonSuggestions:v16 cancelOrExtendTimeoutBlock:v18 error:&v35];
    v23 = v35;
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v27 = [v24 count];
      *buf = 134218242;
      v39 = v27;
      v40 = 2112;
      v41 = v14;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Returning %lu suggestions for person %@", buf, 0x16u);
    }

    if (v18 && v18[2](v18))
    {
      v33 = MEMORY[0x1E696ABC0];
      v34 = v17;
      v28 = *MEMORY[0x1E696A768];
      v36 = *MEMORY[0x1E696A578];
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"suggestPersonsForPersonWithLocalIdentifier cancelled"];
      v37 = v29;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v31 = [v33 errorWithDomain:v28 code:-128 userInfo:v30];
      v19[2](v19, 0, v31);

      v17 = v34;
    }

    else
    {
      if (v24)
      {
        v32 = 0;
      }

      else
      {
        v32 = v23;
      }

      (v19)[2](v19, v24, v32);
    }
  }
}

- (void)faceCandidatesforKeyFaceForPersonsWithLocalIdentifiers:(id)a3 context:(id)a4 reply:(id)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A768];
  v13 = *MEMORY[0x1E696A578];
  v8 = MEMORY[0x1E696AEC0];
  v9 = a5;
  v10 = [v8 stringWithFormat:@"Unimplemented method %s", "-[VCPFaceProcessingServiceWorker faceCandidatesforKeyFaceForPersonsWithLocalIdentifiers:context:reply:]", v13];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12 = [v6 errorWithDomain:v7 code:-4 userInfo:v11];
  (*(a5 + 2))(v9, 0, v12);
}

- (void)resetPersonsModelWithReply:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  photoLibrary = self->_photoLibrary;
  v6 = [MEMORY[0x1E695DF00] distantPast];
  [(PHPhotoLibrary *)photoLibrary vcp_setAnalysisPreferencesValue:v6 forKey:@"FaceIDModelLastGenerationKey"];

  v7 = [(PHPhotoLibrary *)self->_photoLibrary vcp_vipModelFilepathForVIPType:0];
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v15 = 0;
  v9 = [v8 removeItemAtPath:v7 error:&v15];
  v10 = v15;
  v11 = v10;
  if (v9)
  {
    goto LABEL_2;
  }

  if ([v10 code] == 4)
  {
    v13 = [v11 domain];
    v14 = [v13 isEqualToString:*MEMORY[0x1E696A250]];

    if (v14)
    {

      v11 = 0;
LABEL_2:
      v12 = 1;
      goto LABEL_10;
    }
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Persons Model: Failed to remove model at %@ - %@", buf, 0x16u);
  }

  v12 = 0;
LABEL_10:
  v4[2](v4, v12, v11);
}

- (void)resetPetsModelWithReply:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  photoLibrary = self->_photoLibrary;
  v6 = [MEMORY[0x1E695DF00] distantPast];
  [(PHPhotoLibrary *)photoLibrary vcp_setAnalysisPreferencesValue:v6 forKey:@"PetIDModelLastGenerationKey"];

  v7 = 1;
  v8 = [(PHPhotoLibrary *)self->_photoLibrary vcp_vipModelFilepathForVIPType:1];
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v15 = 0;
  v10 = [v9 removeItemAtPath:v8 error:&v15];
  v11 = v15;
  v12 = v11;
  if ((v10 & 1) == 0)
  {
    if ([v11 code] == 4 && (objc_msgSend(v12, "domain"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", *MEMORY[0x1E696A250]), v13, v14))
    {

      v12 = 0;
      v7 = 1;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = v8;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Pets Model: Failed to remove model at %@ - %@", buf, 0x16u);
      }

      v7 = 0;
    }
  }

  v4[2](v4, v7, v12);
}

- (void)requestSuggestedMePersonIdentifierWithContext:(id)a3 reply:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  photoLibrary = self->_photoLibrary;
  if (!photoLibrary)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A768];
    v16 = *MEMORY[0x1E696A578];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"could not obtain access to the photo library"];
    v17[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = [v7 errorWithDomain:v8 code:-50 userInfo:v10];
    v5[2](v5, 0, v11);

    photoLibrary = self->_photoLibrary;
  }

  v12 = [(PHPhotoLibrary *)photoLibrary vcp_visionCacheStorageDirectoryURL];
  v15 = 0;
  v13 = [MEMORY[0x1E69C1588] requestSuggestedMePersonIdentifierAtURL:v12 withError:&v15];
  v14 = v15;
  (v5)[2](v5, v13, v14);
}

- (void)personPromoterStatusWithContext:(id)a3 reply:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!self->_photoLibrary)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A768];
    v20 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"could not obtain access to the photo library"];
    v21[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v12 = [v8 errorWithDomain:v9 code:-50 userInfo:v11];
    v7[2](v7, 0, v12);
  }

  v13 = objc_opt_new();
  v14 = [MEMORY[0x1E69C1588] hasProcessedForLibrary:self->_photoLibrary];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:v14];
  [v13 setObject:v15 forKey:@"status"];

  v16 = [v6 objectForKeyedSubscript:@"requestAdvancedStatus"];
  v17 = [v16 BOOLValue];

  if (v17)
  {
    v18 = [objc_alloc(MEMORY[0x1E69C1588]) initWithPhotoLibrary:self->_photoLibrary andDelegate:self->_persistenceDelegate];
    v19 = [v18 advancedStatus];
    [v13 setObject:v19 forKey:@"advancedStatus"];
  }

  (v7)[2](v7, v13, 0);
}

- (void)validateClusterCacheWithContext:(id)a3 cancelOrExtendTimeoutBlock:(id)a4 reply:(id)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A768];
  v13 = *MEMORY[0x1E696A578];
  v8 = MEMORY[0x1E696AEC0];
  v9 = a5;
  v10 = [v8 stringWithFormat:@"Unimplemented method %s", "-[VCPFaceProcessingServiceWorker validateClusterCacheWithContext:cancelOrExtendTimeoutBlock:reply:]", v13];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12 = [v6 errorWithDomain:v7 code:-4 userInfo:v11];
  (*(a5 + 2))(v9, 0, v12);
}

- (void)resetFaceClusteringStateWithContext:(id)a3 reply:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A768];
  v12 = *MEMORY[0x1E696A578];
  v7 = MEMORY[0x1E696AEC0];
  v8 = a4;
  v9 = [v7 stringWithFormat:@"Unimplemented method %s", "-[VCPFaceProcessingServiceWorker resetFaceClusteringStateWithContext:reply:]", v12];
  v13[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11 = [v5 errorWithDomain:v6 code:-4 userInfo:v10];
  (*(a4 + 2))(v8, 0, v11);
}

- (void)reclusterFacesWithContext:(id)a3 reply:(id)a4 extendTimeout:(id)a5 cancel:(id)a6
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A768];
  v14 = *MEMORY[0x1E696A578];
  v9 = MEMORY[0x1E696AEC0];
  v10 = a4;
  v11 = [v9 stringWithFormat:@"Unimplemented method %s", "-[VCPFaceProcessingServiceWorker reclusterFacesWithContext:reply:extendTimeout:cancel:]", v14];
  v15[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v13 = [v7 errorWithDomain:v8 code:-4 userInfo:v12];
  (*(a4 + 2))(v10, 0, v13);
}

- (void)rebuildPersonsWithContext:(id)a3 reply:(id)a4 extendTimeout:(id)a5 cancel:(id)a6
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A768];
  v14 = *MEMORY[0x1E696A578];
  v9 = MEMORY[0x1E696AEC0];
  v10 = a4;
  v11 = [v9 stringWithFormat:@"Unimplemented method %s", "-[VCPFaceProcessingServiceWorker rebuildPersonsWithContext:reply:extendTimeout:cancel:]", v14];
  v15[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v13 = [v7 errorWithDomain:v8 code:-4 userInfo:v12];
  (*(a4 + 2))(v10, 0, v13);
}

- (void)resetPersonPromoterStatusWithReply:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  photoLibrary = self->_photoLibrary;
  if (!photoLibrary)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A768];
    v11 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"could not obtain access to the photo library"];
    v12[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v10 = [v6 errorWithDomain:v7 code:-50 userInfo:v9];
    v4[2](v4, 0, v10);

    photoLibrary = self->_photoLibrary;
  }

  [MEMORY[0x1E69C1588] setProcessed:0 forLibrary:photoLibrary];
  v4[2](v4, 1, 0);
}

@end