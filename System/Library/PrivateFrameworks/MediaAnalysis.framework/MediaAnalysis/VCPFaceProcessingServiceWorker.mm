@interface VCPFaceProcessingServiceWorker
+ (id)allPersonsWithAtLeastOneFaceFetchOptionsWithPhotoLibrary:(id)library;
+ (id)workerWithPhotoLibrary:(id)library andContext:(id)context;
- (VCPFaceProcessingServiceWorker)initWithPhotoLibrary:(id)library andContext:(id)context;
- (id)_suggestionsForPersonWithLocalIdentifier:(id)identifier toBeConfirmedPersonSuggestions:(id)suggestions toBeRejectedPersonSuggestions:(id)personSuggestions cancelOrExtendTimeoutBlock:(id)block error:(id *)error;
- (void)faceCandidatesforKeyFaceForPersonsWithLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply;
- (void)personPromoterStatusWithContext:(id)context reply:(id)reply;
- (void)rebuildPersonsWithContext:(id)context reply:(id)reply extendTimeout:(id)timeout cancel:(id)cancel;
- (void)reclusterFacesWithContext:(id)context reply:(id)reply extendTimeout:(id)timeout cancel:(id)cancel;
- (void)requestSuggestedMePersonIdentifierWithContext:(id)context reply:(id)reply;
- (void)resetFaceClusteringStateWithContext:(id)context reply:(id)reply;
- (void)resetPersonPromoterStatusWithReply:(id)reply;
- (void)resetPersonsModelWithReply:(id)reply;
- (void)resetPetsModelWithReply:(id)reply;
- (void)suggestPersonsForPersonWithLocalIdentifier:(id)identifier toBeConfirmedPersonSuggestions:(id)suggestions toBeRejectedPersonSuggestions:(id)personSuggestions context:(id)context cancelOrExtendTimeoutBlock:(id)block reply:(id)reply;
- (void)updateKeyFacesOfPersonsWithLocalIdentifiers:(id)identifiers forceUpdate:(BOOL)update context:(id)context cancelOrExtendTimeoutBlock:(id)block reply:(id)reply;
- (void)validateClusterCacheWithContext:(id)context cancelOrExtendTimeoutBlock:(id)block reply:(id)reply;
@end

@implementation VCPFaceProcessingServiceWorker

- (VCPFaceProcessingServiceWorker)initWithPhotoLibrary:(id)library andContext:(id)context
{
  v24 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = VCPFaceProcessingServiceWorker;
  v9 = [(VCPFaceProcessingServiceWorker *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, library);
    objc_storeStrong(&v10->_context, context);
    v11 = [[VCPPhotosPersistenceDelegate alloc] initWithPhotoLibrary:libraryCopy];
    persistenceDelegate = v10->_persistenceDelegate;
    v10->_persistenceDelegate = v11;

    vcp_visionCacheStorageDirectoryURL = [libraryCopy vcp_visionCacheStorageDirectoryURL];
    v20 = 0;
    v14 = [objc_alloc(MEMORY[0x1E69E0678]) initWithClient:0 path:vcp_visionCacheStorageDirectoryURL error:&v20];
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

+ (id)workerWithPhotoLibrary:(id)library andContext:(id)context
{
  contextCopy = context;
  libraryCopy = library;
  v7 = [objc_alloc(objc_opt_class()) initWithPhotoLibrary:libraryCopy andContext:contextCopy];

  return v7;
}

+ (id)allPersonsWithAtLeastOneFaceFetchOptionsWithPhotoLibrary:(id)library
{
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  [librarySpecificFetchOptions setMinimumUnverifiedFaceCount:1];
  [librarySpecificFetchOptions setMinimumVerifiedFaceCount:1];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F49BEDB8];

  return librarySpecificFetchOptions;
}

- (void)updateKeyFacesOfPersonsWithLocalIdentifiers:(id)identifiers forceUpdate:(BOOL)update context:(id)context cancelOrExtendTimeoutBlock:(id)block reply:(id)reply
{
  updateCopy = update;
  v20 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  blockCopy = block;
  replyCopy = reply;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v19 = identifiersCopy;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "UpdateKeyFaces for: '%@'", buf, 0xCu);
  }

  persistenceDelegate = self->_persistenceDelegate;
  v17 = 0;
  v15 = [(VCPPhotosPersistenceDelegate *)persistenceDelegate updateKeyFacesOfPersonsWithLocalIdentifiers:identifiersCopy forceUpdate:updateCopy cancelOrExtendTimeoutBlock:blockCopy error:&v17];
  v16 = v17;
  replyCopy[2](replyCopy, v15, v16);
}

- (id)_suggestionsForPersonWithLocalIdentifier:(id)identifier toBeConfirmedPersonSuggestions:(id)suggestions toBeRejectedPersonSuggestions:(id)personSuggestions cancelOrExtendTimeoutBlock:(id)block error:(id *)error
{
  v147[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  suggestionsCopy = suggestions;
  personSuggestionsCopy = personSuggestions;
  blockCopy = block;
  if (!(blockCopy[2])())
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
    v145 = identifierCopy;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v145 count:1];
    v121 = v23;
    v26 = [v24 fetchPersonsWithLocalIdentifiers:v25 options:v23];
    firstObject = [v26 firstObject];

    v21 = firstObject;
    if (!firstObject)
    {
      goto LABEL_24;
    }

    if (blockCopy[2](blockCopy))
    {
      if (error)
      {
        v27 = MEMORY[0x1E696ABC0];
        v28 = firstObject;
        v29 = *MEMORY[0x1E696A768];
        v143 = *MEMORY[0x1E696A578];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"_suggestionsForPersonWithLocalIdentifier cancelled"];
        v31 = v30 = personSuggestionsCopy;
        v144 = v31;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
        v32 = suggestionsCopy;
        v34 = v33 = identifierCopy;
        v35 = v29;
        v21 = v28;
        *error = [v27 errorWithDomain:v35 code:-128 userInfo:v34];

        identifierCopy = v33;
        suggestionsCopy = v32;

        personSuggestionsCopy = v30;
      }

LABEL_23:
      firstObject = 0;
LABEL_24:
      v18 = v121;
      goto LABEL_99;
    }

    mdID = [firstObject mdID];

    if (!mdID)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v18 = v121;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          localIdentifier = [firstObject localIdentifier];
          *buf = 138412290;
          v140 = localIdentifier;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PersonSuggestionVU] Person %@ does not have mdID", buf, 0xCu);

          v21 = firstObject;
        }

        firstObject = 0;
        goto LABEL_99;
      }

      goto LABEL_23;
    }

    v117 = personSuggestionsCopy;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __169__VCPFaceProcessingServiceWorker__suggestionsForPersonWithLocalIdentifier_toBeConfirmedPersonSuggestions_toBeRejectedPersonSuggestions_cancelOrExtendTimeoutBlock_error___block_invoke;
    aBlock[3] = &unk_1E834FEE0;
    aBlock[4] = self;
    v118 = dictionary;
    v132 = v118;
    context = blockCopy;
    v133 = context;
    v116 = _Block_copy(aBlock);
    v114 = firstObject;
    mdID2 = [firstObject mdID];
    v134 = 0;
    v39 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\d+?" options:0 error:&v134];
    v40 = v134;
    v41 = v40;
    if (v39)
    {
      *v113 = v40;
      v42 = [v39 firstMatchInString:mdID2 options:0 range:{0, objc_msgSend(mdID2, "length")}];
      v43 = v42;
      if (v42)
      {
        v110 = suggestionsCopy;
        v44 = identifierCopy;
        v45 = [v42 rangeAtIndex:0];
        v47 = [mdID2 substringWithRange:{v45, v46}];
        integerValue = [v47 integerValue];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v140 = integerValue;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADParseEntityIdentifier] Parsing %ld", buf, 0xCu);
        }

        type = [objc_alloc(MEMORY[0x1E69E0688]) initWithValue:integerValue];

        identifierCopy = v44;
        suggestionsCopy = v110;
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
          v140 = mdID2;
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
      localIdentifier2 = [v114 localIdentifier];
      *buf = 138412290;
      v140 = localIdentifier2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PersonSuggestionVU] Retrieving similar entities to %@", buf, 0xCu);
    }

    gallery = self->_gallery;
    v130 = 0;
    v52 = [(VUWGallery *)gallery similarEntitiesTo:type error:&v130 body:v116];
    v112 = v130;
    v53 = MediaAnalysisLogLevel();
    personSuggestionsCopy = v117;
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

      if (blockCopy[2](context))
      {
        v18 = v121;
        if (error)
        {
          v55 = MEMORY[0x1E696ABC0];
          v56 = *MEMORY[0x1E696A768];
          v137 = *MEMORY[0x1E696A578];
          v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_suggestionsForPersonWithLocalIdentifier cancelled"];
          v138 = v57;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
          v58 = suggestionsCopy;
          v60 = v59 = identifierCopy;
          v61 = v56;
          v21 = v114;
          *error = [v55 errorWithDomain:v61 code:-128 userInfo:v60];

          identifierCopy = v59;
          suggestionsCopy = v58;

          personSuggestionsCopy = v117;
        }

        firstObject = 0;
        goto LABEL_97;
      }

      if ([v118 count])
      {
        v108 = identifierCopy;
        v64 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v126 = 0u;
        v127 = 0u;
        v128 = 0u;
        v129 = 0u;
        v65 = suggestionsCopy;
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

        mad_allFacesFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary mad_allFacesFetchOptions];
        v77 = [MEMORY[0x1E69787D0] fetchRejectedFacesForPerson:v114 options:?];
        if ([v77 count])
        {
          v78 = 0;
          do
          {
            v79 = objc_autoreleasePoolPush();
            v80 = [v77 objectAtIndexedSubscript:v78];
            personLocalIdentifier = [v80 personLocalIdentifier];

            if (personLocalIdentifier)
            {
              [v64 addObject:personLocalIdentifier];
            }

            objc_autoreleasePoolPop(v79);
            ++v78;
          }

          while (v78 < [v77 count]);
        }

        v106 = v77;
        firstObject = [MEMORY[0x1E695DF70] array];
        mad_allPersonsFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary mad_allPersonsFetchOptions];
        v83 = [MEMORY[0x1E696AE18] predicateWithFormat:@"verifiedType = %@", &unk_1F49BD870];
        [mad_allPersonsFetchOptions setInternalPredicate:v83];

        v84 = MEMORY[0x1E6978978];
        allKeys = [v118 allKeys];
        v105 = mad_allPersonsFetchOptions;
        v86 = [v84 fetchPersonsWithMdIDs:allKeys options:mad_allPersonsFetchOptions];

        personSuggestionsCopy = v117;
        if ([v86 count])
        {
          v87 = 0;
          v109 = v86;
          v111 = suggestionsCopy;
          do
          {
            contexta = objc_autoreleasePoolPush();
            v88 = [v86 objectAtIndexedSubscript:v87];
            localIdentifier3 = [v88 localIdentifier];
            v90 = [v64 containsObject:localIdentifier3];

            if (v90)
            {
              if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_90;
              }

              localIdentifier4 = [v88 localIdentifier];
              *buf = 138412290;
              v140 = localIdentifier4;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PersonSuggestionVU] Ignoring person %@ from the exclusion list", buf, 0xCu);
            }

            else
            {
              v92 = [MEMORY[0x1E69787D0] fetchKeyFaceForPerson:v88 options:0];
              localIdentifier4 = [v92 firstObject];

              if (localIdentifier4)
              {
                dictionary2 = [MEMORY[0x1E695DF90] dictionary];
                localIdentifier5 = [v88 localIdentifier];
                [dictionary2 setObject:localIdentifier5 forKeyedSubscript:@"personIdentifier"];

                v95 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v88, "faceCount")}];
                [dictionary2 setObject:v95 forKeyedSubscript:@"personFaceCount"];

                [dictionary2 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"confirmed"];
                v96 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(localIdentifier4, "vuObservationID")}];
                [dictionary2 setObject:v96 forKeyedSubscript:@"faceCSN"];

                v91LocalIdentifier = [localIdentifier4 localIdentifier];
                [dictionary2 setObject:v91LocalIdentifier forKeyedSubscript:@"faceIdentifier"];

                mdID3 = [v88 mdID];
                v99 = [v118 objectForKeyedSubscript:mdID3];
                v100 = v99;
                v101 = &unk_1F49BD888;
                if (v99)
                {
                  v101 = v99;
                }

                v102 = v101;

                [dictionary2 setObject:v102 forKeyedSubscript:@"similarityScore"];
                [firstObject addObject:dictionary2];
                if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v140 = dictionary2;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PersonSuggestionVU] Adding suggestion %@", buf, 0xCu);
                }

                v86 = v109;
                suggestionsCopy = v111;
                personSuggestionsCopy = v117;
              }

              else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
              {
                localIdentifier6 = [v88 localIdentifier];
                *buf = 138412290;
                v140 = localIdentifier6;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PersonSuggestionVU] Ignoring person %@ without keyface", buf, 0xCu);
              }
            }

LABEL_90:
            objc_autoreleasePoolPop(contexta);
            ++v87;
          }

          while (v87 < [v86 count]);
        }

        [firstObject sortUsingComparator:&__block_literal_global_48];

        identifierCopy = v108;
        v18 = v121;
        v21 = v114;
LABEL_97:
        v62 = v112;
LABEL_98:

        goto LABEL_99;
      }

      firstObject = MEMORY[0x1E695E0F0];
    }

    else
    {
      if (v53 >= 3)
      {
        v18 = v121;
        v62 = v112;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          localIdentifier7 = [v114 localIdentifier];
          *buf = 138412546;
          v140 = localIdentifier7;
          v141 = 2112;
          v142 = v112;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PersonSuggestionVU] Failed to retrieve similar entities to %@ - %@", buf, 0x16u);

          v21 = v114;
        }

        firstObject = 0;
        goto LABEL_98;
      }

      firstObject = 0;
    }

    v18 = v121;
    goto LABEL_97;
  }

  if (!error)
  {
    firstObject = 0;
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
  *error = firstObject = 0;
LABEL_99:

LABEL_100:

  return firstObject;
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

- (void)suggestPersonsForPersonWithLocalIdentifier:(id)identifier toBeConfirmedPersonSuggestions:(id)suggestions toBeRejectedPersonSuggestions:(id)personSuggestions context:(id)context cancelOrExtendTimeoutBlock:(id)block reply:(id)reply
{
  v45[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  suggestionsCopy = suggestions;
  personSuggestionsCopy = personSuggestions;
  contextCopy = context;
  blockCopy = block;
  replyCopy = reply;
  if (blockCopy && blockCopy[2](blockCopy))
  {
    v20 = MEMORY[0x1E696ABC0];
    v21 = contextCopy;
    v22 = *MEMORY[0x1E696A768];
    v44 = *MEMORY[0x1E696A578];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"suggestPersonsForPersonWithLocalIdentifier cancelled"];
    v45[0] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v25 = v22;
    contextCopy = v21;
    v26 = [v20 errorWithDomain:v25 code:-128 userInfo:v24];
    replyCopy[2](replyCopy, 0, v26);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v39 = identifierCopy;
      v40 = 2112;
      v41 = suggestionsCopy;
      v42 = 2112;
      v43 = personSuggestionsCopy;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Querying suggestions for person %@ (Photos: %@ to-be-confirmed, %@ to-be-rejected suggestions)", buf, 0x20u);
    }

    v35 = 0;
    v24 = [(VCPFaceProcessingServiceWorker *)self _suggestionsForPersonWithLocalIdentifier:identifierCopy toBeConfirmedPersonSuggestions:suggestionsCopy toBeRejectedPersonSuggestions:personSuggestionsCopy cancelOrExtendTimeoutBlock:blockCopy error:&v35];
    v23 = v35;
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v27 = [v24 count];
      *buf = 134218242;
      v39 = v27;
      v40 = 2112;
      v41 = identifierCopy;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Returning %lu suggestions for person %@", buf, 0x16u);
    }

    if (blockCopy && blockCopy[2](blockCopy))
    {
      v33 = MEMORY[0x1E696ABC0];
      v34 = contextCopy;
      v28 = *MEMORY[0x1E696A768];
      v36 = *MEMORY[0x1E696A578];
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"suggestPersonsForPersonWithLocalIdentifier cancelled"];
      v37 = v29;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v31 = [v33 errorWithDomain:v28 code:-128 userInfo:v30];
      replyCopy[2](replyCopy, 0, v31);

      contextCopy = v34;
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

      (replyCopy)[2](replyCopy, v24, v32);
    }
  }
}

- (void)faceCandidatesforKeyFaceForPersonsWithLocalIdentifiers:(id)identifiers context:(id)context reply:(id)reply
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A768];
  v13 = *MEMORY[0x1E696A578];
  v8 = MEMORY[0x1E696AEC0];
  replyCopy = reply;
  v10 = [v8 stringWithFormat:@"Unimplemented method %s", "-[VCPFaceProcessingServiceWorker faceCandidatesforKeyFaceForPersonsWithLocalIdentifiers:context:reply:]", v13];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12 = [v6 errorWithDomain:v7 code:-4 userInfo:v11];
  (*(reply + 2))(replyCopy, 0, v12);
}

- (void)resetPersonsModelWithReply:(id)reply
{
  v20 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  photoLibrary = self->_photoLibrary;
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  [(PHPhotoLibrary *)photoLibrary vcp_setAnalysisPreferencesValue:distantPast forKey:@"FaceIDModelLastGenerationKey"];

  v7 = [(PHPhotoLibrary *)self->_photoLibrary vcp_vipModelFilepathForVIPType:0];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v15 = 0;
  v9 = [defaultManager removeItemAtPath:v7 error:&v15];
  v10 = v15;
  v11 = v10;
  if (v9)
  {
    goto LABEL_2;
  }

  if ([v10 code] == 4)
  {
    domain = [v11 domain];
    v14 = [domain isEqualToString:*MEMORY[0x1E696A250]];

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
  replyCopy[2](replyCopy, v12, v11);
}

- (void)resetPetsModelWithReply:(id)reply
{
  v20 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  photoLibrary = self->_photoLibrary;
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  [(PHPhotoLibrary *)photoLibrary vcp_setAnalysisPreferencesValue:distantPast forKey:@"PetIDModelLastGenerationKey"];

  v7 = 1;
  v8 = [(PHPhotoLibrary *)self->_photoLibrary vcp_vipModelFilepathForVIPType:1];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v15 = 0;
  v10 = [defaultManager removeItemAtPath:v8 error:&v15];
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

  replyCopy[2](replyCopy, v7, v12);
}

- (void)requestSuggestedMePersonIdentifierWithContext:(id)context reply:(id)reply
{
  v17[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
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
    replyCopy[2](replyCopy, 0, v11);

    photoLibrary = self->_photoLibrary;
  }

  vcp_visionCacheStorageDirectoryURL = [(PHPhotoLibrary *)photoLibrary vcp_visionCacheStorageDirectoryURL];
  v15 = 0;
  v13 = [MEMORY[0x1E69C1588] requestSuggestedMePersonIdentifierAtURL:vcp_visionCacheStorageDirectoryURL withError:&v15];
  v14 = v15;
  (replyCopy)[2](replyCopy, v13, v14);
}

- (void)personPromoterStatusWithContext:(id)context reply:(id)reply
{
  v21[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  replyCopy = reply;
  if (!self->_photoLibrary)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A768];
    v20 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"could not obtain access to the photo library"];
    v21[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v12 = [v8 errorWithDomain:v9 code:-50 userInfo:v11];
    replyCopy[2](replyCopy, 0, v12);
  }

  v13 = objc_opt_new();
  v14 = [MEMORY[0x1E69C1588] hasProcessedForLibrary:self->_photoLibrary];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:v14];
  [v13 setObject:v15 forKey:@"status"];

  v16 = [contextCopy objectForKeyedSubscript:@"requestAdvancedStatus"];
  bOOLValue = [v16 BOOLValue];

  if (bOOLValue)
  {
    v18 = [objc_alloc(MEMORY[0x1E69C1588]) initWithPhotoLibrary:self->_photoLibrary andDelegate:self->_persistenceDelegate];
    advancedStatus = [v18 advancedStatus];
    [v13 setObject:advancedStatus forKey:@"advancedStatus"];
  }

  (replyCopy)[2](replyCopy, v13, 0);
}

- (void)validateClusterCacheWithContext:(id)context cancelOrExtendTimeoutBlock:(id)block reply:(id)reply
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A768];
  v13 = *MEMORY[0x1E696A578];
  v8 = MEMORY[0x1E696AEC0];
  replyCopy = reply;
  v10 = [v8 stringWithFormat:@"Unimplemented method %s", "-[VCPFaceProcessingServiceWorker validateClusterCacheWithContext:cancelOrExtendTimeoutBlock:reply:]", v13];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12 = [v6 errorWithDomain:v7 code:-4 userInfo:v11];
  (*(reply + 2))(replyCopy, 0, v12);
}

- (void)resetFaceClusteringStateWithContext:(id)context reply:(id)reply
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A768];
  v12 = *MEMORY[0x1E696A578];
  v7 = MEMORY[0x1E696AEC0];
  replyCopy = reply;
  v9 = [v7 stringWithFormat:@"Unimplemented method %s", "-[VCPFaceProcessingServiceWorker resetFaceClusteringStateWithContext:reply:]", v12];
  v13[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11 = [v5 errorWithDomain:v6 code:-4 userInfo:v10];
  (*(reply + 2))(replyCopy, 0, v11);
}

- (void)reclusterFacesWithContext:(id)context reply:(id)reply extendTimeout:(id)timeout cancel:(id)cancel
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A768];
  v14 = *MEMORY[0x1E696A578];
  v9 = MEMORY[0x1E696AEC0];
  replyCopy = reply;
  v11 = [v9 stringWithFormat:@"Unimplemented method %s", "-[VCPFaceProcessingServiceWorker reclusterFacesWithContext:reply:extendTimeout:cancel:]", v14];
  v15[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v13 = [v7 errorWithDomain:v8 code:-4 userInfo:v12];
  (*(reply + 2))(replyCopy, 0, v13);
}

- (void)rebuildPersonsWithContext:(id)context reply:(id)reply extendTimeout:(id)timeout cancel:(id)cancel
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A768];
  v14 = *MEMORY[0x1E696A578];
  v9 = MEMORY[0x1E696AEC0];
  replyCopy = reply;
  v11 = [v9 stringWithFormat:@"Unimplemented method %s", "-[VCPFaceProcessingServiceWorker rebuildPersonsWithContext:reply:extendTimeout:cancel:]", v14];
  v15[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v13 = [v7 errorWithDomain:v8 code:-4 userInfo:v12];
  (*(reply + 2))(replyCopy, 0, v13);
}

- (void)resetPersonPromoterStatusWithReply:(id)reply
{
  v12[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
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
    replyCopy[2](replyCopy, 0, v10);

    photoLibrary = self->_photoLibrary;
  }

  [MEMORY[0x1E69C1588] setProcessed:0 forLibrary:photoLibrary];
  replyCopy[2](replyCopy, 1, 0);
}

@end