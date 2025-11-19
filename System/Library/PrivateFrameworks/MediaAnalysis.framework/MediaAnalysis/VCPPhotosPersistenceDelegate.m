@interface VCPPhotosPersistenceDelegate
+ (id)allPersonsWithAtLeastOneFaceFetchOptionsWithPhotoLibrary:(id)a3;
+ (id)visibleFacesFetchOptionsWithPhotoLibrary:(id)a3;
- (BOOL)updateKeyFacesOfPersonsWithLocalIdentifiers:(id)a3 forceUpdate:(BOOL)a4 cancelOrExtendTimeoutBlock:(id)a5 error:(id *)a6;
- (VCPPhotosPersistenceDelegate)initWithPhotoLibrary:(id)a3;
- (double)_keyFacePortraitFactorCoefficient;
- (double)_keyFaceSunglassesFactorCoefficient;
- (double)_keyFaceWeightingFactorCoefficient;
- (id)bestRepresentativeFaceForPerson:(id)a3 qualityMeasureByFace:(id)a4 candidateFaces:(id)a5 cancelOrExtendTimeoutBlock:(id)a6;
- (id)densityClusteringForObjects:(id)a3 maximumDistance:(double)a4 minimumNumberOfObjects:(unint64_t)a5 withDistanceBlock:(id)a6;
- (id)keyFaceForPerson:(id)a3 qualityMeasureByFace:(id)a4 updateBlock:(id)a5;
- (id)performSocialGroupsIdentifiersWithPersonClusterManager:(id)a3 forPersons:(id)a4 overTheYearsComputation:(BOOL)a5 updateBlock:(id)a6;
@end

@implementation VCPPhotosPersistenceDelegate

- (VCPPhotosPersistenceDelegate)initWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VCPPhotosPersistenceDelegate;
  v5 = [(VCPPhotosPersistenceDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_photoLibrary, v4);
  }

  return v6;
}

+ (id)allPersonsWithAtLeastOneFaceFetchOptionsWithPhotoLibrary:(id)a3
{
  v3 = [a3 librarySpecificFetchOptions];
  [v3 setMinimumUnverifiedFaceCount:1];
  [v3 setMinimumVerifiedFaceCount:1];
  [v3 setIncludedDetectionTypes:&unk_1F49BEB90];

  return v3;
}

+ (id)visibleFacesFetchOptionsWithPhotoLibrary:(id)a3
{
  v3 = [a3 librarySpecificFetchOptions];
  [v3 setIncludeNonvisibleFaces:0];
  [v3 setIncludeTorsoAndFaceDetectionData:0];
  [v3 setIncludedDetectionTypes:&unk_1F49BEBA8];

  return v3;
}

- (BOOL)updateKeyFacesOfPersonsWithLocalIdentifiers:(id)a3 forceUpdate:(BOOL)a4 cancelOrExtendTimeoutBlock:(id)a5 error:(id *)a6
{
  v76[1] = *MEMORY[0x1E69E9840];
  v51 = a3;
  v9 = a5;
  v10 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);
  v47 = [v10 allPersonsWithAtLeastOneFaceFetchOptionsWithPhotoLibrary:WeakRetained];

  if (!a4)
  {
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"keyFace == nil"];
    [v47 setInternalPredicate:v12];
  }

  if ([v51 count])
  {
    [MEMORY[0x1E6978978] fetchPersonsWithLocalIdentifiers:v51 options:v47];
  }

  else
  {
    [MEMORY[0x1E6978978] fetchPersonsWithOptions:v47];
  }
  v46 = ;
  v50 = [v46 fetchedObjects];
  if ([v51 count] && !objc_msgSend(v50, "count"))
  {
    v30 = MEMORY[0x1E696ABC0];
    v75 = *MEMORY[0x1E696A578];
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[UpdateKeyFaces] Failed to find persons %@", v51];
    v76[0] = v31;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:&v75 count:1];
    v55 = [v30 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v32];

    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v72 = "[VCPPhotosPersistenceDelegate updateKeyFacesOfPersonsWithLocalIdentifiers:forceUpdate:cancelOrExtendTimeoutBlock:error:]";
      v73 = 2112;
      v74 = v55;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
    }

    if (a6)
    {
      v33 = v55;
      v28 = 0;
      *a6 = v55;
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_49;
  }

  if (!a4)
  {
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __121__VCPPhotosPersistenceDelegate_updateKeyFacesOfPersonsWithLocalIdentifiers_forceUpdate_cancelOrExtendTimeoutBlock_error___block_invoke;
    v65[3] = &unk_1E834E590;
    v65[4] = self;
    v13 = [MEMORY[0x1E696AE18] predicateWithBlock:v65];
    v14 = [v50 filteredArrayUsingPredicate:v13];

    if (![v14 count])
    {
      v28 = 1;
      goto LABEL_50;
    }

    v50 = v14;
  }

  v55 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v52 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v50;
  v15 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
  if (v15)
  {
    v54 = 0;
    v16 = *v62;
    v48 = *MEMORY[0x1E696A768];
    v49 = *MEMORY[0x1E696A578];
LABEL_13:
    v17 = 0;
    while (1)
    {
      if (*v62 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v61 + 1) + 8 * v17);
      v19 = objc_autoreleasePoolPush();
      if (v9 && v9[2](v9))
      {
        v20 = MEMORY[0x1E696ABC0];
        v68 = v49;
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[UpdateKeyFaces] Operation canceled"];
        v69 = v21;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        v23 = [v20 errorWithDomain:v48 code:-128 userInfo:v22];

        v24 = 0;
        v54 = v23;
      }

      else
      {
        v21 = [(VCPPhotosPersistenceDelegate *)self bestRepresentativeFaceForPerson:v18 qualityMeasureByFace:v55 candidateFaces:0 cancelOrExtendTimeoutBlock:v9];
        if (v21)
        {
          [v52 setObject:v21 forKey:v18];
        }

        else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v25 = [v18 localIdentifier];
          v26 = [v18 verifiedType];
          *buf = 138412546;
          v72 = v25;
          v73 = 2048;
          v74 = v26;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[UpdateKeyFaces] Failed to find a representing face for Person %@ (verified type %ld)", buf, 0x16u);
        }

        v24 = 1;
      }

      objc_autoreleasePoolPop(v19);
      if (!v24)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
        if (v15)
        {
          goto LABEL_13;
        }

        break;
      }
    }

    if (v54)
    {
      if (a6)
      {
        v27 = v54;
        v28 = 0;
        v29 = v54;
        *a6 = v54;
      }

      else
      {
        v28 = 0;
        v29 = v54;
      }

      goto LABEL_48;
    }
  }

  else
  {
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __121__VCPPhotosPersistenceDelegate_updateKeyFacesOfPersonsWithLocalIdentifiers_forceUpdate_cancelOrExtendTimeoutBlock_error___block_invoke_450;
  aBlock[3] = &unk_1E834E5B8;
  v58 = v52;
  v60 = v9;
  v59 = v55;
  v34 = _Block_copy(aBlock);
  v35 = objc_autoreleasePoolPush();
  v36 = objc_loadWeakRetained(&self->_photoLibrary);
  v56 = 0;
  v28 = [v36 performCancellableChangesAndWait:v34 error:&v56];
  v37 = v56;

  objc_autoreleasePoolPop(v35);
  if ((v28 & 1) == 0)
  {
    v38 = [v37 domain];
    if ([v38 isEqualToString:*MEMORY[0x1E6978F48]])
    {
      v39 = [v37 code] == 3072;

      if (!v39)
      {
        goto LABEL_42;
      }

      v40 = MEMORY[0x1E696ABC0];
      v66 = *MEMORY[0x1E696A578];
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[UpdateKeyFaces] Operation canceled"];
      v67 = v38;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      v42 = [v40 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v41];

      v37 = v42;
    }

LABEL_42:
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v72 = v37;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[UpdateKeyFaces] Failed to persist key face - %@", buf, 0xCu);
    }

    if (a6)
    {
      v43 = v37;
      *a6 = v37;
    }
  }

  v29 = 0;
LABEL_48:

  v50 = obj;
LABEL_49:

  v14 = v50;
LABEL_50:

  return v28;
}

BOOL __121__VCPPhotosPersistenceDelegate_updateKeyFacesOfPersonsWithLocalIdentifiers_forceUpdate_cancelOrExtendTimeoutBlock_error___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v6 = [v4 visibleFacesFetchOptionsWithPhotoLibrary:WeakRetained];

  [v6 setWantsIncrementalChangeDetails:0];
  [v6 setFetchLimit:1];
  v14[0] = *MEMORY[0x1E6978D80];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v6 setFetchPropertySets:v7];

  [v6 setShouldPrefetchCount:1];
  v8 = [MEMORY[0x1E69787D0] fetchKeyFaceForPerson:v3 options:v6];
  v9 = [v8 count];

  if (v9 && MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v10 = [v3 localIdentifier];
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[UpdateKeyFaces] Person %@ already has a keyface; skipping", &v12, 0xCu);
  }

  return v9 == 0;
}

void __121__VCPPhotosPersistenceDelegate_updateKeyFacesOfPersonsWithLocalIdentifiers_forceUpdate_cancelOrExtendTimeoutBlock_error___block_invoke_450(uint64_t a1, _BYTE *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = [*(a1 + 32) keyEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v36 count:16];
  if (v4)
  {
    v20 = *v26;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v25 + 1) + 8 * i);
        v7 = *(a1 + 48);
        if (v7 && ((*(v7 + 16))() & 1) != 0)
        {
          *a2 = 1;
          goto LABEL_22;
        }

        v8 = [*(a1 + 32) objectForKey:v6];
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          v9 = [v6 localIdentifier];
          v10 = [v6 verifiedType];
          v11 = [v8 localIdentifier];
          *buf = 138412802;
          v31 = v9;
          v32 = 2048;
          v33 = v10;
          v34 = 2112;
          v35 = v11;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[UpdateKeyFaces] Updating Person %@ (verified type %ld) with key face %@", buf, 0x20u);
        }

        v12 = [MEMORY[0x1E6978988] changeRequestForPerson:v6];
        [v12 setKeyFace:v8 forCluster:0];
      }

      v4 = [v3 countByEnumeratingWithState:&v25 objects:v36 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [*(a1 + 40) keyEnumerator];
  v13 = [v3 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = *v22;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v3);
        }

        v16 = *(*(&v21 + 1) + 8 * j);
        v17 = [MEMORY[0x1E69787E0] changeRequestForFace:v16];
        v18 = [*(a1 + 40) objectForKey:v16];
        [v17 setQualityMeasure:{objc_msgSend(v18, "integerValue")}];
      }

      v13 = [v3 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v13);
  }

LABEL_22:
}

- (double)_keyFaceWeightingFactorCoefficient
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 persistentDomainForName:@"com.apple.mediaanalysis"];

  v4 = [v3 objectForKey:@"KeyFaceCoefficient"];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v7 = v6;
    if (MediaAnalysisLogLevel() >= 5)
    {
      v8 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v5;
        v9 = MEMORY[0x1E69E9C10];
        v10 = "[UpdateKeyFaces] Overwriting key face coefficient - %@";
LABEL_8:
        _os_log_impl(&dword_1C9B70000, v9, v8, v10, &v12, 0xCu);
      }
    }
  }

  else
  {
    v7 = 0.8;
    if (MediaAnalysisLogLevel() >= 7)
    {
      v8 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v12 = 134217984;
        v13 = 0x3FE999999999999ALL;
        v9 = MEMORY[0x1E69E9C10];
        v10 = "[UpdateKeyFaces] Default key face coefficient - %.2f";
        goto LABEL_8;
      }
    }
  }

  return v7;
}

- (double)_keyFaceSunglassesFactorCoefficient
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 persistentDomainForName:@"com.apple.mediaanalysis"];

  v4 = [v3 objectForKey:@"KeyFaceSunglassesCoefficient"];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v7 = v6;
    if (MediaAnalysisLogLevel() >= 5)
    {
      v8 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v5;
        v9 = MEMORY[0x1E69E9C10];
        v10 = "[UpdateKeyFaces] Overwriting key face sunglasses coefficient - %@";
LABEL_8:
        _os_log_impl(&dword_1C9B70000, v9, v8, v10, &v12, 0xCu);
      }
    }
  }

  else
  {
    v7 = 0.1;
    if (MediaAnalysisLogLevel() >= 7)
    {
      v8 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v12 = 134217984;
        v13 = 0x3FB999999999999ALL;
        v9 = MEMORY[0x1E69E9C10];
        v10 = "[UpdateKeyFaces] Default key face sunglasses coefficient - %.2f";
        goto LABEL_8;
      }
    }
  }

  return v7;
}

- (double)_keyFacePortraitFactorCoefficient
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 persistentDomainForName:@"com.apple.mediaanalysis"];

  v4 = [v3 objectForKey:@"KeyFacePortraitCoefficient"];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v7 = v6;
    if (MediaAnalysisLogLevel() >= 5)
    {
      v8 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v5;
        v9 = MEMORY[0x1E69E9C10];
        v10 = "[UpdateKeyFaces] Overwriting key face portrait coefficient - %@";
LABEL_8:
        _os_log_impl(&dword_1C9B70000, v9, v8, v10, &v12, 0xCu);
      }
    }
  }

  else
  {
    v7 = 0.1;
    if (MediaAnalysisLogLevel() >= 7)
    {
      v8 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v12 = 134217984;
        v13 = 0x3FB999999999999ALL;
        v9 = MEMORY[0x1E69E9C10];
        v10 = "[UpdateKeyFaces] Default key face portrait coefficient - %.2f";
        goto LABEL_8;
      }
    }
  }

  return v7;
}

- (id)bestRepresentativeFaceForPerson:(id)a3 qualityMeasureByFace:(id)a4 candidateFaces:(id)a5 cancelOrExtendTimeoutBlock:(id)a6
{
  v327[1] = *MEMORY[0x1E69E9840];
  v272 = a3;
  v249 = a4;
  v256 = a5;
  v275 = a6;
  if (v275 && (v275[2]() & 1) != 0)
  {
    v267 = 0;
    goto LABEL_272;
  }

  [(VCPPhotosPersistenceDelegate *)self _keyFaceWeightingFactorCoefficient];
  v246 = v10;
  [(VCPPhotosPersistenceDelegate *)self _keyFaceSunglassesFactorCoefficient];
  v241 = v11;
  [(VCPPhotosPersistenceDelegate *)self _keyFacePortraitFactorCoefficient];
  v242 = v12;
  v254 = self;
  v13 = [v272 detectionType];
  v14 = MEMORY[0x1E696AEC0];
  v261 = v13;
  if (v13 == 1)
  {
    v15 = @"Human";
  }

  else
  {
    v15 = @"Pet";
  }

  v16 = [v272 localIdentifier];
  v17 = [v272 mdID];
  v18 = [v14 stringWithFormat:@"[UpdateKeyFacesVU][%@][%@][%@]", v15, v16, v17];

  v19 = [v272 mdID];
  v20 = [v19 substringFromIndex:3];

  v233 = v20;
  if (v20)
  {
    v251 = COERCE_DOUBLE([v20 integerValue]);
    if (MediaAnalysisLogLevel() < 6)
    {
      goto LABEL_17;
    }

    v21 = MEMORY[0x1E69E9C10];
    v22 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v296 = v18;
      v297 = 2048;
      v298 = v251;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Querying key observations with mdID %ld", buf, 0x16u);
    }

    goto LABEL_15;
  }

  if (MediaAnalysisLogLevel() >= 4)
  {
    v23 = MEMORY[0x1E69E9C10];
    v24 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      [v272 mdID];
      v25 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412546;
      v296 = v18;
      v297 = 2112;
      v298 = v25;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Person does not have valid mdID - %@", buf, 0x16u);
    }

    v251 = 0.0;
LABEL_15:

    goto LABEL_17;
  }

  v251 = 0.0;
LABEL_17:
  v26 = MEMORY[0x1E696AEC0];
  v27 = [v272 localIdentifier];
  v264 = [v26 stringWithFormat:@"[UpdateKeyFacesVU][%@][%@][%ld]", v15, v27, *&v251];

  WeakRetained = objc_loadWeakRetained(&v254->_photoLibrary);
  v252 = [MADVUGalleryReader sharedGalleryWithPhotoLibrary:WeakRetained];

  v29 = v254;
  if (!v252 && MediaAnalysisLogLevel() >= 4)
  {
    v30 = MEMORY[0x1E69E9C10];
    v31 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to initialize VU Gallery Reader. Will fallback to use top quality faces from photos DB", buf, 2u);
    }

    v29 = v254;
  }

  v32 = objc_loadWeakRetained(&v29->_photoLibrary);
  v273 = [v32 mad_allFacesFetchOptions];

  [v273 setIncludeNonvisibleFaces:0];
  [v273 setIncludeTorsoAndFaceDetectionData:0];
  v263 = [v273 copy];
  v33 = *MEMORY[0x1E6978D80];
  v327[0] = *MEMORY[0x1E6978D80];
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v327 count:1];
  [v263 setFetchPropertySets:v34];

  v270 = [MEMORY[0x1E695DFA8] set];
  v35 = objc_loadWeakRetained(&v254->_photoLibrary);
  v240 = [v35 mad_allPersonsFetchOptionsWithDetectionTypes:0 andVerifiedTypes:&unk_1F49BEBC0];

  v276 = [MEMORY[0x1E6978978] fetchPersonsWithOptions:v240];
  v36 = 0;
  v37 = MEMORY[0x1E69E9C10];
  while (v36 < [v276 count])
  {
    v38 = objc_autoreleasePoolPush();
    v39 = [v276 objectAtIndexedSubscript:v36];
    v40 = [v272 localIdentifier];
    v41 = [v39 localIdentifier];
    if ([v40 isEqualToString:v41])
    {
    }

    else
    {
      v42 = [v39 keyFacePickSource] == 1;

      if (!v42)
      {
        goto LABEL_36;
      }

      v43 = [MEMORY[0x1E69787D0] fetchKeyFaceForPerson:v39 options:v263];
      v40 = [v43 firstObject];

      if (v40)
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          [v40 localIdentifier];
          v44 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v45 = [v39 localIdentifier];
          *buf = 138412802;
          v296 = v264;
          v297 = 2112;
          v298 = v44;
          v299 = 2112;
          v300 = *&v45;
          _os_log_impl(&dword_1C9B70000, v37, OS_LOG_TYPE_DEBUG, "%@ keyFace %@ is picked by user for %@", buf, 0x20u);
        }

        v46 = [v40 localIdentifier];
        [v270 addObject:v46];
      }

      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [v39 localIdentifier];
        v47 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412546;
        v296 = v264;
        v297 = 2112;
        v298 = v47;
        _os_log_impl(&dword_1C9B70000, v37, OS_LOG_TYPE_ERROR, "%@ keyFace picked by user for %@, but NO keyface fetched!", buf, 0x16u);
      }
    }

LABEL_36:
    objc_autoreleasePoolPop(v38);
    ++v36;
  }

  v245 = [v273 copy];
  v326 = v33;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v326 count:1];
  [v245 setFetchPropertySets:v48];

  v238 = [MEMORY[0x1E69787D0] fetchFacesForPerson:v272 options:v245];
  if ([v238 count] == 1)
  {
    v49 = [v238 firstObject];
    v50 = [v49 localIdentifier];
    v51 = [v270 containsObject:v50];

    if (v51)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [v49 localIdentifier];
        v52 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412546;
        v296 = v264;
        v297 = 2112;
        v298 = v52;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Face %@ is already picked by user as keyFace of another person", buf, 0x16u);
      }

      v267 = 0;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        [v49 localIdentifier];
        v231 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412546;
        v296 = v264;
        v297 = 2112;
        v298 = v231;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Person only has 1 face %@ - return that face as key face", buf, 0x16u);
      }

      v267 = v49;
    }

    v262 = 0;
    v244 = 0;
    v260 = 0;
    goto LABEL_271;
  }

  v262 = 0;
  v244 = 0;
  v260 = 0;
  v269 = 0;
  v54 = v251 != 0.0 && v252 != 0;
  v253 = v54;
  v237 = *MEMORY[0x1E6978C40];
  v236 = *MEMORY[0x1E6978C28];
  v235 = *MEMORY[0x1E6978C98];
  v243 = 1.0 - v246;
  v266 = 0.0;
  v239 = 0.6;
  v234 = 0.0;
  v247 = 0.0;
  while (2)
  {
    v268 = objc_autoreleasePoolPush();
    v55 = MEMORY[0x1E69E9C10];
    if (v275 && (v275[2]() & 1) != 0)
    {
      v267 = 0;
      v56 = 1;
      goto LABEL_261;
    }

    if (v253)
    {
      v57 = [objc_alloc(MEMORY[0x1E69E0688]) initWithValue:*&v251];
      v58 = [v252 queryKeyObservationsFor:v57 limit:200 offset:200 * v269];

      v59 = v58;
    }

    else
    {
      v59 = 0;
    }

    v271 = v59;
    if (![v59 count])
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v63 = v55;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v296 = v264;
          _os_log_impl(&dword_1C9B70000, v55, OS_LOG_TYPE_INFO, "%@ End of key observations from VU", buf, 0xCu);
        }
      }

      if (v269 > 0)
      {
        v56 = 20;
        goto LABEL_260;
      }
    }

    if (!v269)
    {
      if ([v271 count])
      {
        v64 = [v271 firstObject];
        v65 = [v64 allValues];
        v66 = [v65 firstObject];
        [v66 doubleValue];
        v68 = v67;

        v69 = MediaAnalysisLogLevel();
        v55 = MEMORY[0x1E69E9C10];
        v239 = v68 * 0.85;
        if (v69 >= 6)
        {
          v70 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v296 = v264;
            v297 = 2048;
            v298 = v68 * 0.85;
            _os_log_impl(&dword_1C9B70000, v55, OS_LOG_TYPE_INFO, "%@ Setting preferred density quality threshold %.2f", buf, 0x16u);
          }
        }
      }
    }

    ++v269;
    if (v275 && (v275[2]() & 1) != 0)
    {
      v267 = 0;
      v56 = 1;
      goto LABEL_260;
    }

    v265 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v271, "count")}];
    if ([v271 count])
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v60 = v55;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v296 = v264;
          _os_log_impl(&dword_1C9B70000, v55, OS_LOG_TYPE_DEBUG, "%@ Fetching key observations from Photos DB ...", buf, 0xCu);
        }
      }

      v61 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v271, "count")}];
      v289[0] = MEMORY[0x1E69E9820];
      v289[1] = 3221225472;
      v289[2] = __127__VCPPhotosPersistenceDelegate_bestRepresentativeFaceForPerson_qualityMeasureByFace_candidateFaces_cancelOrExtendTimeoutBlock___block_invoke;
      v289[3] = &unk_1E834E5E0;
      v290 = v264;
      v62 = v61;
      v291 = v62;
      v292 = v265;
      [v271 enumerateObjectsUsingBlock:v289];
      v274 = [MEMORY[0x1E69787D0] fetchFacesWithVuObservationIDs:v62 options:v273];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v71 = v55;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v296 = v264;
          _os_log_impl(&dword_1C9B70000, v55, OS_LOG_TYPE_DEBUG, "%@ Fetching top quality faces from Photos DB ...", buf, 0xCu);
        }
      }

      v62 = [v273 copy];
      v72 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"quality" ascending:0];
      v325 = v72;
      v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v325 count:1];
      [v62 setSortDescriptors:v73];

      [v62 setFetchLimit:200];
      v274 = [MEMORY[0x1E69787D0] fetchFacesForPerson:v272 options:v62];
    }

    v74 = [v274 count];
    v75 = MEMORY[0x1E69E9C10];
    if (!v74)
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v296 = v264;
        _os_log_impl(&dword_1C9B70000, v75, OS_LOG_TYPE_INFO, "%@ No visible face from the batch", buf, 0xCu);
      }

      v56 = 19;
      goto LABEL_259;
    }

    if ([v271 count] <= 1 && objc_msgSend(v274, "count") == 1)
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        v76 = [v274 firstObject];
        [v76 localIdentifier];
        v77 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412546;
        v296 = v264;
        v297 = 2112;
        v298 = v77;
        _os_log_impl(&dword_1C9B70000, v75, OS_LOG_TYPE_INFO, "%@ Returning sole key face %@", buf, 0x16u);
      }

      v267 = [v274 firstObject];
      v56 = 1;
      goto LABEL_259;
    }

    v78 = [MEMORY[0x1E695DF90] dictionary];
    v79 = [MEMORY[0x1E695DF90] dictionary];
    v80 = objc_loadWeakRetained(&v254->_photoLibrary);
    v250 = [v80 librarySpecificFetchOptions];

    v324[0] = v237;
    v324[1] = v236;
    v324[2] = v235;
    v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:v324 count:3];
    [v250 setFetchPropertySets:v81];

    v82 = MEMORY[0x1E6978628];
    v83 = [v274 fetchedObjects];
    v281 = [v82 fetchAssetsForFaces:v83 options:v250];

    for (i = 0; i < [v281 count]; ++i)
    {
      context = objc_autoreleasePoolPush();
      v84 = [v281 objectAtIndexedSubscript:i];
      v85 = [MEMORY[0x1E69787D0] fetchFacesInAsset:v84 options:v273];
      v287 = 0u;
      v288 = 0u;
      v285 = 0u;
      v286 = 0u;
      v86 = v85;
      v87 = [v86 countByEnumeratingWithState:&v285 objects:v323 count:16];
      if (v87)
      {
        v88 = *v286;
        do
        {
          for (j = 0; j != v87; ++j)
          {
            if (*v286 != v88)
            {
              objc_enumerationMutation(v86);
            }

            v90 = *(*(&v285 + 1) + 8 * j);
            v91 = [v90 localIdentifier];
            v92 = [v79 objectForKeyedSubscript:v91];
            v93 = v92 == 0;

            if (v93)
            {
              v94 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v86, "count")}];
              v95 = [v90 localIdentifier];
              [v79 setObject:v94 forKeyedSubscript:v95];
            }

            v96 = [v90 localIdentifier];
            v97 = [v78 objectForKeyedSubscript:v96];
            v98 = v97 == 0;

            if (v98)
            {
              v99 = [v90 localIdentifier];
              [v78 setObject:v84 forKeyedSubscript:v99];
            }
          }

          v87 = [v86 countByEnumeratingWithState:&v285 objects:v323 count:16];
        }

        while (v87);
      }

      objc_autoreleasePoolPop(context);
    }

    v283 = 0;
    while (2)
    {
      if (v283 < [v274 count])
      {
        v100 = objc_autoreleasePoolPush();
        if (v275 && (v275[2]() & 1) != 0)
        {
          v267 = 0;
          v56 = 1;
          goto LABEL_193;
        }

        v101 = [v274 objectAtIndexedSubscript:v283];
        v102 = [v101 localIdentifier];
        v103 = [v270 containsObject:v102];

        if (v103)
        {
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            [v101 localIdentifier];
            v104 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412546;
            v296 = v264;
            v297 = 2112;
            v298 = v104;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Skip user picked keyFace %@", buf, 0x16u);
          }

LABEL_191:
          v56 = 40;
LABEL_192:

LABEL_193:
          objc_autoreleasePoolPop(v100);
          if (v56 != 40 && v56)
          {
            goto LABEL_258;
          }

          ++v283;
          continue;
        }

        [v101 quality];
        if (v105 > v266)
        {
          [v101 quality];
          v266 = v106;
          v107 = v101;

          v262 = v107;
        }

        if (v261 == 1)
        {
          [v101 roll];
          if (fabs(v108) > 0.785398163)
          {
            goto LABEL_191;
          }

          v109 = MEMORY[0x1E69C07E0];
          [v101 size];
          v111 = v110;
          v112 = [v101 sourceWidth];
          v113 = [v101 sourceHeight];
          [v101 centerX];
          v115 = v114;
          [v101 centerY];
          if ([v109 getCropRectForPortraitImage:v284 size:v111 imgWidth:v112 imgHeight:v113 centerX:v115 centerY:v116])
          {
            v117 = 1.0;
          }

          else
          {
            v117 = v242;
          }

          if ([v101 glassesType] == 2)
          {
            v118 = v241;
          }

          else
          {
            v118 = 1.0;
          }

          v119 = [v101 localIdentifier];
          v120 = [v79 objectForKeyedSubscript:v119];
          v121 = [v120 integerValue];

          if (v121)
          {
            v122 = 1.0;
            if (v121 == 2)
            {
              v122 = 0.5;
            }

            if (v121 <= 2)
            {
              v123 = v122;
            }

            else
            {
              v123 = 0.25;
            }

            v124 = [v101 localIdentifier];
            v125 = [v78 objectForKeyedSubscript:v124];

            if (v125)
            {
              v126 = [v125 mediaSubtypes];
              v127 = [v125 creationDate];
              if (v127)
              {
                v128 = [v125 creationDate];
                contexta = v128;
              }

              else
              {
                v128 = [v125 curationProperties];
                contexta = [v128 addedDate];
              }

              v192 = *&v126 & 0x80004;

              if ((*&v126 & 0x80004) != 0)
              {
                v193 = [MEMORY[0x1E695DF00] distantPast];
              }

              else
              {
                v193 = contexta;
              }

              contextc = v193;
              [v193 timeIntervalSinceNow];
              v195 = fmax(v194 / 31557600.0 * 0.05 + 1.0, 0.2);
              if (v195 <= 1.0)
              {
                v196 = v195;
              }

              else
              {
                v196 = 1.0;
              }

              v197 = 1.0;
              if ([v101 poseType] != 1)
              {
                if ([v101 poseType])
                {
                  v197 = 0.1;
                }

                else
                {
                  v197 = 0.5;
                }
              }

              v198 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v101, "vuObservationID")}];
              v259 = [v265 objectForKeyedSubscript:v198];

              if (v259)
              {
                [v259 doubleValue];
              }

              else
              {
                [v101 quality];
              }

              v200 = v199;
              v201 = v243 * (v117 * v118 * v123 * v196 * v197) + v246 * v199;
              if (MediaAnalysisLogLevel() >= 7)
              {
                v202 = MEMORY[0x1E69E9C10];
                v203 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(v202, OS_LOG_TYPE_DEBUG))
                {
                  [v101 localIdentifier];
                  v204 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                  v205 = [v125 mediaSubtypes];
                  v206 = [v125 mediaSubtypes];
                  v207 = @"Yes";
                  if ((v205 & 4) != 0)
                  {
                    v208 = @"Yes";
                  }

                  else
                  {
                    v208 = @"No";
                  }

                  *buf = 138414850;
                  if ((v206 & 0x80000) == 0)
                  {
                    v207 = @"No";
                  }

                  v296 = v264;
                  v297 = 2112;
                  v298 = v204;
                  v299 = 2048;
                  v300 = v201;
                  v301 = 2048;
                  v302 = v200;
                  v303 = 2048;
                  v304 = v117;
                  v305 = 2048;
                  v306 = v118;
                  v307 = 2048;
                  v308 = v123;
                  v309 = 2048;
                  v310 = v196;
                  v311 = 2048;
                  v312 = v197;
                  v313 = 2112;
                  v314 = *&v208;
                  v315 = 2112;
                  v316 = *&v207;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Face %@ score: %.3f (vu-%.3f, a-%.3f, b-%.3f, c-%.3f, d-%.3f, e-%.3f,ScreenShot-%@, ScreenRecording-%@)", buf, 0x70u);
                }
              }

              if (v117 == 1.0 && v197 == 1.0 && v123 == 1.0 && v118 == 1.0 && !v192 && v200 > v239)
              {
                if (v201 > v247 || v201 == v247 && ([v101 quality], v210 = v209, objc_msgSend(v260, "quality"), v210 > v211))
                {
                  if (MediaAnalysisLogLevel() >= 7)
                  {
                    v212 = MEMORY[0x1E69E9C10];
                    v213 = MEMORY[0x1E69E9C10];
                    if (os_log_type_enabled(v212, OS_LOG_TYPE_DEBUG))
                    {
                      [v101 localIdentifier];
                      v214 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                      *buf = 138412546;
                      v296 = v264;
                      v297 = 2112;
                      v298 = v214;
                      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Find a better preferred key face candidate %@", buf, 0x16u);
                    }
                  }

                  v215 = v101;

                  v260 = v215;
                  v247 = v201;
                }
              }

              if (v201 > v234 || v201 == v234 && ([v101 quality], v217 = v216, objc_msgSend(v244, "quality"), v217 > v218))
              {
                if (MediaAnalysisLogLevel() >= 7)
                {
                  v219 = MEMORY[0x1E69E9C10];
                  v220 = MEMORY[0x1E69E9C10];
                  if (os_log_type_enabled(v219, OS_LOG_TYPE_DEBUG))
                  {
                    [v101 localIdentifier];
                    v221 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    *buf = 138412546;
                    v296 = v264;
                    v297 = 2112;
                    v298 = v221;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Find a better key face candidate %@", buf, 0x16u);
                  }
                }

                v222 = v101;

                v244 = v222;
                v234 = v201;
              }

              v223 = [MEMORY[0x1E696AD98] numberWithInteger:(v201 * 1000.0)];
              if (v249)
              {
                [v249 setObject:v223 forKey:v101];
              }

              if (v256)
              {
                v321[0] = @"localIdentifier";
                v224 = [v101 photosFaceRepresentationLocalIdentifier];
                v322[0] = v224;
                v322[1] = v223;
                v321[1] = @"qualityMeasure";
                v321[2] = @"quality";
                v225 = [MEMORY[0x1E696AD98] numberWithDouble:v200];
                v322[2] = v225;
                v226 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v322 forKeys:v321 count:3];

                [v256 addObject:v226];
              }

LABEL_246:
              v56 = 0;
              goto LABEL_192;
            }

            if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_191;
            }
          }

          else if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_191;
          }

          [v101 localIdentifier];
          v191 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412546;
          v296 = v264;
          v297 = 2112;
          v298 = v191;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ No asset found for face %@; skipping", buf, 0x16u);

          goto LABEL_191;
        }

        v129 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v101, "vuObservationID")}];
        contextb = [v265 objectForKeyedSubscript:v129];

        if (contextb)
        {
          [contextb doubleValue];
          v131 = v130;
          if (v130 < 0.8)
          {
            goto LABEL_134;
          }
        }

        else
        {
          v131 = 1.0;
        }

        v132 = [v101 localIdentifier];
        v133 = [v79 objectForKeyedSubscript:v132];
        v255 = v131;
        v134 = [v133 integerValue];

        v135 = 1.0;
        if (v134 > 2)
        {
          v135 = 0.25;
        }

        if (v134 == 2)
        {
          v135 = 0.5;
        }

        v248 = v135;
        v136 = [v101 localIdentifier];
        v137 = [v78 objectForKeyedSubscript:v136];

        if (v137)
        {
          v138 = [v137 mediaSubtypes];
          v139 = [v137 creationDate];
          if (v139)
          {
            v140 = [v137 creationDate];
            v257 = v140;
          }

          else
          {
            v140 = [v137 curationProperties];
            v257 = [v140 addedDate];
          }

          if ((*&v138 & 0x80004) != 0)
          {
            v142 = [MEMORY[0x1E695DF00] distantPast];

            v143 = v142;
          }

          else
          {
            v143 = v257;
          }

          v258 = v143;
          [v143 timeIntervalSinceNow];
          if (v144 >= 0.0)
          {
            v145 = v144;
          }

          else
          {
            v145 = -v144;
          }

          v146 = [v101 sourceHeight];
          v147 = [v101 sourceWidth];
          if (v146 < v147)
          {
            v147 = v146;
          }

          v148 = VCPPFResolutionQuality(v147);
          [v101 size];
          *&v149 = v149;
          v150 = VCPPFFaceAreaQuality(*&v149);
          v151 = [v137 mediaAnalysisProperties];
          [v151 wallpaperScore];
          v153 = v152;

          v154 = [v137 mediaAnalysisProperties];
          v155 = 1.0;
          if ([v154 probableRotationDirection] >= 2)
          {
            v156 = [v137 mediaAnalysisProperties];
            [v156 probableRotationDirectionConfidence];
            if (v157 < 0.1)
            {
              v155 = 1.0;
            }

            else
            {
              v155 = 0.1;
            }
          }

          v158 = MEMORY[0x1E69C07E0];
          [v101 size];
          v160 = v159;
          v161 = [v101 sourceWidth];
          v162 = [v101 sourceHeight];
          [v101 centerX];
          v164 = v163;
          [v101 centerY];
          v166 = [v158 getCropRectForPortraitImage:v284 size:v160 imgWidth:v161 imgHeight:v162 centerX:v164 centerY:v165];
          v167 = 1.0;
          if ((v166 & 1) == 0)
          {
            [(VCPPhotosPersistenceDelegate *)v254 _keyFacePortraitFactorCoefficient];
            v167 = v168;
          }

          v169 = fmax(v145 / 31557600.0 * -0.05 + 1.0, 0.8);
          v170 = v148;
          v171 = v150;
          v172 = v243 * (v248 * v169 * v170 * v150 * v153 * v155 * v167) + v246 * v255;
          if (MediaAnalysisLogLevel() >= 7)
          {
            v173 = MEMORY[0x1E69E9C10];
            v174 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(v173, OS_LOG_TYPE_DEBUG))
            {
              [v101 localIdentifier];
              v175 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v176 = [v137 mediaSubtypes];
              v177 = [v137 mediaSubtypes];
              v178 = @"Yes";
              if ((v176 & 4) != 0)
              {
                v179 = @"Yes";
              }

              else
              {
                v179 = @"No";
              }

              *buf = 138415362;
              if ((v177 & 0x80000) == 0)
              {
                v178 = @"No";
              }

              v296 = v264;
              v297 = 2112;
              v298 = v175;
              v299 = 2048;
              v300 = v172;
              v301 = 2048;
              v302 = v255;
              v303 = 2048;
              v304 = v248;
              v305 = 2048;
              v306 = v169;
              v307 = 2048;
              v308 = v170;
              v309 = 2048;
              v310 = v171;
              v311 = 2048;
              v312 = v153;
              v313 = 2048;
              v314 = v155;
              v315 = 2048;
              v316 = v167;
              v317 = 2112;
              v318 = v179;
              v319 = 2112;
              v320 = v178;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Face %@ score: %.3f (vu-%.3f, a-%.3f, b-%.3f, c-%.3f, d-%.3f, e-%.3f, f-%.3f, g-%.3f, ScreenShot-%@, ScreenRecording-%@)", buf, 0x84u);
            }
          }

          if (v172 > v247 || v172 == v247 && ([v101 quality], v181 = v180, objc_msgSend(v260, "quality"), v181 > v182))
          {
            if (MediaAnalysisLogLevel() >= 7)
            {
              v183 = MEMORY[0x1E69E9C10];
              v184 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(v183, OS_LOG_TYPE_DEBUG))
              {
                [v101 localIdentifier];
                v185 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                *buf = 138412546;
                v296 = v264;
                v297 = 2112;
                v298 = v185;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Find a better key face candidate %@", buf, 0x16u);
              }
            }

            v186 = v101;

            v260 = v186;
            v247 = v172;
          }

          v187 = [MEMORY[0x1E696AD98] numberWithInteger:(v172 * 1000.0)];
          if (v249)
          {
            [v249 setObject:v187 forKey:v101];
          }

          if (v256)
          {
            v293[0] = @"localIdentifier";
            v188 = [v101 photosFaceRepresentationLocalIdentifier];
            v294[0] = v188;
            v294[1] = v187;
            v293[1] = @"qualityMeasure";
            v293[2] = @"quality";
            v189 = [MEMORY[0x1E696AD98] numberWithDouble:v255];
            v294[2] = v189;
            v190 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v294 forKeys:v293 count:3];

            [v256 addObject:v190];
          }

          goto LABEL_246;
        }

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [v101 localIdentifier];
          v141 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412546;
          v296 = v264;
          v297 = 2112;
          v298 = v141;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ No asset found for pet face %@; skipping", buf, 0x16u);
        }

LABEL_134:

        goto LABEL_191;
      }

      break;
    }

    if (v260)
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v227 = MEMORY[0x1E69E9C10];
        v228 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v227, OS_LOG_TYPE_INFO))
        {
          [v260 localIdentifier];
          v229 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412546;
          v296 = v264;
          v297 = 2112;
          v298 = v229;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Returning preferred key face %@", buf, 0x16u);
        }
      }

      v56 = 20;
    }

    else
    {
      v260 = 0;
      v56 = 0;
    }

LABEL_258:

LABEL_259:
LABEL_260:

LABEL_261:
    objc_autoreleasePoolPop(v268);
    if (!v56 || v56 == 19)
    {
      continue;
    }

    break;
  }

  if (v56 == 20)
  {
    if (v260)
    {
      v230 = v260;
      v260 = v230;
    }

    else if (v244)
    {
      v230 = v244;
      v260 = 0;
      v244 = v230;
    }

    else
    {
      v230 = v262;
      v244 = 0;
      v260 = 0;
      v262 = v230;
    }

    v267 = v230;
  }

LABEL_271:

LABEL_272:

  return v267;
}

void __127__VCPPhotosPersistenceDelegate_bestRepresentativeFaceForPerson_qualityMeasureByFace_candidateFaces_cancelOrExtendTimeoutBlock___block_invoke(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = a1[4];
    v5 = [v3 allKeys];
    v6 = [v5 firstObject];
    v7 = [v6 value];
    v8 = [v3 allValues];
    v9 = [v8 firstObject];
    [v9 floatValue];
    v23 = 138412802;
    v24 = v4;
    v25 = 2048;
    v26 = v7;
    v27 = 2048;
    v28 = v10;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Receiving key observation %ld with score %.3f", &v23, 0x20u);
  }

  v11 = a1[5];
  v12 = MEMORY[0x1E696AD98];
  v13 = [v3 allKeys];
  v14 = [v13 firstObject];
  v15 = [v12 numberWithInteger:{objc_msgSend(v14, "value")}];
  [v11 addObject:v15];

  v16 = [v3 allValues];
  v17 = [v16 firstObject];
  v18 = a1[6];
  v19 = MEMORY[0x1E696AD98];
  v20 = [v3 allKeys];
  v21 = [v20 firstObject];
  v22 = [v19 numberWithInteger:{objc_msgSend(v21, "value")}];
  [v18 setObject:v17 forKeyedSubscript:v22];
}

- (id)keyFaceForPerson:(id)a3 qualityMeasureByFace:(id)a4 updateBlock:(id)a5
{
  v8 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__VCPPhotosPersistenceDelegate_keyFaceForPerson_qualityMeasureByFace_updateBlock___block_invoke;
  v12[3] = &unk_1E834C9F0;
  v13 = v8;
  v9 = v8;
  v10 = [(VCPPhotosPersistenceDelegate *)self bestRepresentativeFaceForPerson:a3 qualityMeasureByFace:a4 candidateFaces:0 cancelOrExtendTimeoutBlock:v12];

  return v10;
}

uint64_t __82__VCPPhotosPersistenceDelegate_keyFaceForPerson_qualityMeasureByFace_updateBlock___block_invoke(uint64_t a1)
{
  v4 = 0;
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))(v1, &v4, -1.0);
    v2 = v4;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (id)performSocialGroupsIdentifiersWithPersonClusterManager:(id)a3 forPersons:(id)a4 overTheYearsComputation:(BOOL)a5 updateBlock:(id)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (v7)
  {
    [getPGPNGraphHelperClass() socialGroupsOverTheYearsWithPersonClusterManager:v9 forPersons:v10 updateBlock:v11];
  }

  else
  {
    [getPGPNGraphHelperClass() multiLevelSocialGroupsWithPersonClusterManager:v9 forPersons:v10 updateBlock:v11];
  }
  v12 = ;

  return v12;
}

- (id)densityClusteringForObjects:(id)a3 maximumDistance:(double)a4 minimumNumberOfObjects:(unint64_t)a5 withDistanceBlock:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = [getPGPNGraphHelperClass() densityClusteringForObjects:v9 maximumDistance:a5 minimumNumberOfObjects:v10 withDistanceBlock:a4];

  return v11;
}

@end