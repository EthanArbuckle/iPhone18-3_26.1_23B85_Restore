@interface VCPPhotosPersistenceDelegate
+ (id)allPersonsWithAtLeastOneFaceFetchOptionsWithPhotoLibrary:(id)library;
+ (id)visibleFacesFetchOptionsWithPhotoLibrary:(id)library;
- (BOOL)updateKeyFacesOfPersonsWithLocalIdentifiers:(id)identifiers forceUpdate:(BOOL)update cancelOrExtendTimeoutBlock:(id)block error:(id *)error;
- (VCPPhotosPersistenceDelegate)initWithPhotoLibrary:(id)library;
- (double)_keyFacePortraitFactorCoefficient;
- (double)_keyFaceSunglassesFactorCoefficient;
- (double)_keyFaceWeightingFactorCoefficient;
- (id)bestRepresentativeFaceForPerson:(id)person qualityMeasureByFace:(id)face candidateFaces:(id)faces cancelOrExtendTimeoutBlock:(id)block;
- (id)densityClusteringForObjects:(id)objects maximumDistance:(double)distance minimumNumberOfObjects:(unint64_t)ofObjects withDistanceBlock:(id)block;
- (id)keyFaceForPerson:(id)person qualityMeasureByFace:(id)face updateBlock:(id)block;
- (id)performSocialGroupsIdentifiersWithPersonClusterManager:(id)manager forPersons:(id)persons overTheYearsComputation:(BOOL)computation updateBlock:(id)block;
@end

@implementation VCPPhotosPersistenceDelegate

- (VCPPhotosPersistenceDelegate)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v8.receiver = self;
  v8.super_class = VCPPhotosPersistenceDelegate;
  v5 = [(VCPPhotosPersistenceDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_photoLibrary, libraryCopy);
  }

  return v6;
}

+ (id)allPersonsWithAtLeastOneFaceFetchOptionsWithPhotoLibrary:(id)library
{
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  [librarySpecificFetchOptions setMinimumUnverifiedFaceCount:1];
  [librarySpecificFetchOptions setMinimumVerifiedFaceCount:1];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F49BEB90];

  return librarySpecificFetchOptions;
}

+ (id)visibleFacesFetchOptionsWithPhotoLibrary:(id)library
{
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeNonvisibleFaces:0];
  [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:0];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F49BEBA8];

  return librarySpecificFetchOptions;
}

- (BOOL)updateKeyFacesOfPersonsWithLocalIdentifiers:(id)identifiers forceUpdate:(BOOL)update cancelOrExtendTimeoutBlock:(id)block error:(id *)error
{
  v76[1] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  blockCopy = block;
  v10 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);
  v47 = [v10 allPersonsWithAtLeastOneFaceFetchOptionsWithPhotoLibrary:WeakRetained];

  if (!update)
  {
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"keyFace == nil"];
    [v47 setInternalPredicate:v12];
  }

  if ([identifiersCopy count])
  {
    [MEMORY[0x1E6978978] fetchPersonsWithLocalIdentifiers:identifiersCopy options:v47];
  }

  else
  {
    [MEMORY[0x1E6978978] fetchPersonsWithOptions:v47];
  }
  v46 = ;
  fetchedObjects = [v46 fetchedObjects];
  if ([identifiersCopy count] && !objc_msgSend(fetchedObjects, "count"))
  {
    v30 = MEMORY[0x1E696ABC0];
    v75 = *MEMORY[0x1E696A578];
    identifiersCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"[UpdateKeyFaces] Failed to find persons %@", identifiersCopy];
    v76[0] = identifiersCopy;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:&v75 count:1];
    strongToStrongObjectsMapTable = [v30 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v32];

    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v72 = "[VCPPhotosPersistenceDelegate updateKeyFacesOfPersonsWithLocalIdentifiers:forceUpdate:cancelOrExtendTimeoutBlock:error:]";
      v73 = 2112;
      v74 = strongToStrongObjectsMapTable;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
    }

    if (error)
    {
      v33 = strongToStrongObjectsMapTable;
      v28 = 0;
      *error = strongToStrongObjectsMapTable;
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_49;
  }

  if (!update)
  {
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __121__VCPPhotosPersistenceDelegate_updateKeyFacesOfPersonsWithLocalIdentifiers_forceUpdate_cancelOrExtendTimeoutBlock_error___block_invoke;
    v65[3] = &unk_1E834E590;
    v65[4] = self;
    v13 = [MEMORY[0x1E696AE18] predicateWithBlock:v65];
    v14 = [fetchedObjects filteredArrayUsingPredicate:v13];

    if (![v14 count])
    {
      v28 = 1;
      goto LABEL_50;
    }

    fetchedObjects = v14;
  }

  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = fetchedObjects;
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
      if (blockCopy && blockCopy[2](blockCopy))
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
        v21 = [(VCPPhotosPersistenceDelegate *)self bestRepresentativeFaceForPerson:v18 qualityMeasureByFace:strongToStrongObjectsMapTable candidateFaces:0 cancelOrExtendTimeoutBlock:blockCopy];
        if (v21)
        {
          [strongToStrongObjectsMapTable2 setObject:v21 forKey:v18];
        }

        else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          localIdentifier = [v18 localIdentifier];
          verifiedType = [v18 verifiedType];
          *buf = 138412546;
          v72 = localIdentifier;
          v73 = 2048;
          v74 = verifiedType;
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
      if (error)
      {
        v27 = v54;
        v28 = 0;
        v29 = v54;
        *error = v54;
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
  v58 = strongToStrongObjectsMapTable2;
  v60 = blockCopy;
  v59 = strongToStrongObjectsMapTable;
  v34 = _Block_copy(aBlock);
  v35 = objc_autoreleasePoolPush();
  v36 = objc_loadWeakRetained(&self->_photoLibrary);
  v56 = 0;
  v28 = [v36 performCancellableChangesAndWait:v34 error:&v56];
  v37 = v56;

  objc_autoreleasePoolPop(v35);
  if ((v28 & 1) == 0)
  {
    domain = [v37 domain];
    if ([domain isEqualToString:*MEMORY[0x1E6978F48]])
    {
      v39 = [v37 code] == 3072;

      if (!v39)
      {
        goto LABEL_42;
      }

      v40 = MEMORY[0x1E696ABC0];
      v66 = *MEMORY[0x1E696A578];
      domain = [MEMORY[0x1E696AEC0] stringWithFormat:@"[UpdateKeyFaces] Operation canceled"];
      v67 = domain;
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

    if (error)
    {
      v43 = v37;
      *error = v37;
    }
  }

  v29 = 0;
LABEL_48:

  fetchedObjects = obj;
LABEL_49:

  v14 = fetchedObjects;
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
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults persistentDomainForName:@"com.apple.mediaanalysis"];

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
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults persistentDomainForName:@"com.apple.mediaanalysis"];

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
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults persistentDomainForName:@"com.apple.mediaanalysis"];

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

- (id)bestRepresentativeFaceForPerson:(id)person qualityMeasureByFace:(id)face candidateFaces:(id)faces cancelOrExtendTimeoutBlock:(id)block
{
  v327[1] = *MEMORY[0x1E69E9840];
  personCopy = person;
  faceCopy = face;
  facesCopy = faces;
  blockCopy = block;
  if (blockCopy && (blockCopy[2]() & 1) != 0)
  {
    firstObject5 = 0;
    goto LABEL_272;
  }

  [(VCPPhotosPersistenceDelegate *)self _keyFaceWeightingFactorCoefficient];
  v246 = v10;
  [(VCPPhotosPersistenceDelegate *)self _keyFaceSunglassesFactorCoefficient];
  v241 = v11;
  [(VCPPhotosPersistenceDelegate *)self _keyFacePortraitFactorCoefficient];
  v242 = v12;
  selfCopy = self;
  detectionType = [personCopy detectionType];
  v14 = MEMORY[0x1E696AEC0];
  v261 = detectionType;
  if (detectionType == 1)
  {
    v15 = @"Human";
  }

  else
  {
    v15 = @"Pet";
  }

  localIdentifier = [personCopy localIdentifier];
  mdID = [personCopy mdID];
  v18 = [v14 stringWithFormat:@"[UpdateKeyFacesVU][%@][%@][%@]", v15, localIdentifier, mdID];

  mdID2 = [personCopy mdID];
  v20 = [mdID2 substringFromIndex:3];

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
      [personCopy mdID];
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
  localIdentifier2 = [personCopy localIdentifier];
  v264 = [v26 stringWithFormat:@"[UpdateKeyFacesVU][%@][%@][%ld]", v15, localIdentifier2, *&v251];

  WeakRetained = objc_loadWeakRetained(&selfCopy->_photoLibrary);
  v252 = [MADVUGalleryReader sharedGalleryWithPhotoLibrary:WeakRetained];

  v29 = selfCopy;
  if (!v252 && MediaAnalysisLogLevel() >= 4)
  {
    v30 = MEMORY[0x1E69E9C10];
    v31 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to initialize VU Gallery Reader. Will fallback to use top quality faces from photos DB", buf, 2u);
    }

    v29 = selfCopy;
  }

  v32 = objc_loadWeakRetained(&v29->_photoLibrary);
  mad_allFacesFetchOptions = [v32 mad_allFacesFetchOptions];

  [mad_allFacesFetchOptions setIncludeNonvisibleFaces:0];
  [mad_allFacesFetchOptions setIncludeTorsoAndFaceDetectionData:0];
  v263 = [mad_allFacesFetchOptions copy];
  v33 = *MEMORY[0x1E6978D80];
  v327[0] = *MEMORY[0x1E6978D80];
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v327 count:1];
  [v263 setFetchPropertySets:v34];

  v270 = [MEMORY[0x1E695DFA8] set];
  v35 = objc_loadWeakRetained(&selfCopy->_photoLibrary);
  v240 = [v35 mad_allPersonsFetchOptionsWithDetectionTypes:0 andVerifiedTypes:&unk_1F49BEBC0];

  v276 = [MEMORY[0x1E6978978] fetchPersonsWithOptions:v240];
  v36 = 0;
  v37 = MEMORY[0x1E69E9C10];
  while (v36 < [v276 count])
  {
    v38 = objc_autoreleasePoolPush();
    v39 = [v276 objectAtIndexedSubscript:v36];
    localIdentifier3 = [personCopy localIdentifier];
    localIdentifier4 = [v39 localIdentifier];
    if ([localIdentifier3 isEqualToString:localIdentifier4])
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
      localIdentifier3 = [v43 firstObject];

      if (localIdentifier3)
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          [localIdentifier3 localIdentifier];
          v44 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          localIdentifier5 = [v39 localIdentifier];
          *buf = 138412802;
          v296 = v264;
          v297 = 2112;
          v298 = v44;
          v299 = 2112;
          v300 = *&localIdentifier5;
          _os_log_impl(&dword_1C9B70000, v37, OS_LOG_TYPE_DEBUG, "%@ keyFace %@ is picked by user for %@", buf, 0x20u);
        }

        v40LocalIdentifier = [localIdentifier3 localIdentifier];
        [v270 addObject:v40LocalIdentifier];
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

  v245 = [mad_allFacesFetchOptions copy];
  v326 = v33;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v326 count:1];
  [v245 setFetchPropertySets:v48];

  v238 = [MEMORY[0x1E69787D0] fetchFacesForPerson:personCopy options:v245];
  if ([v238 count] == 1)
  {
    firstObject = [v238 firstObject];
    localIdentifier6 = [firstObject localIdentifier];
    v51 = [v270 containsObject:localIdentifier6];

    if (v51)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [firstObject localIdentifier];
        v52 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412546;
        v296 = v264;
        v297 = 2112;
        v298 = v52;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Face %@ is already picked by user as keyFace of another person", buf, 0x16u);
      }

      firstObject5 = 0;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        [firstObject localIdentifier];
        v231 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412546;
        v296 = v264;
        v297 = 2112;
        v298 = v231;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Person only has 1 face %@ - return that face as key face", buf, 0x16u);
      }

      firstObject5 = firstObject;
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
    if (blockCopy && (blockCopy[2]() & 1) != 0)
    {
      firstObject5 = 0;
      v56 = 1;
      goto LABEL_261;
    }

    if (v253)
    {
      v57 = [objc_alloc(MEMORY[0x1E69E0688]) initWithValue:*&v251];
      v269 = [v252 queryKeyObservationsFor:v57 limit:200 offset:200 * v269];

      v59 = v269;
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
        firstObject2 = [v271 firstObject];
        allValues = [firstObject2 allValues];
        firstObject3 = [allValues firstObject];
        [firstObject3 doubleValue];
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
    if (blockCopy && (blockCopy[2]() & 1) != 0)
    {
      firstObject5 = 0;
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
      v274 = [MEMORY[0x1E69787D0] fetchFacesWithVuObservationIDs:v62 options:mad_allFacesFetchOptions];
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

      v62 = [mad_allFacesFetchOptions copy];
      v72 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"quality" ascending:0];
      v325 = v72;
      v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v325 count:1];
      [v62 setSortDescriptors:v73];

      [v62 setFetchLimit:200];
      v274 = [MEMORY[0x1E69787D0] fetchFacesForPerson:personCopy options:v62];
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
        firstObject4 = [v274 firstObject];
        [firstObject4 localIdentifier];
        v77 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412546;
        v296 = v264;
        v297 = 2112;
        v298 = v77;
        _os_log_impl(&dword_1C9B70000, v75, OS_LOG_TYPE_INFO, "%@ Returning sole key face %@", buf, 0x16u);
      }

      firstObject5 = [v274 firstObject];
      v56 = 1;
      goto LABEL_259;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v80 = objc_loadWeakRetained(&selfCopy->_photoLibrary);
    librarySpecificFetchOptions = [v80 librarySpecificFetchOptions];

    v324[0] = v237;
    v324[1] = v236;
    v324[2] = v235;
    v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:v324 count:3];
    [librarySpecificFetchOptions setFetchPropertySets:v81];

    v82 = MEMORY[0x1E6978628];
    fetchedObjects = [v274 fetchedObjects];
    v281 = [v82 fetchAssetsForFaces:fetchedObjects options:librarySpecificFetchOptions];

    for (i = 0; i < [v281 count]; ++i)
    {
      context = objc_autoreleasePoolPush();
      v84 = [v281 objectAtIndexedSubscript:i];
      v85 = [MEMORY[0x1E69787D0] fetchFacesInAsset:v84 options:mad_allFacesFetchOptions];
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
            localIdentifier7 = [v90 localIdentifier];
            v92 = [dictionary2 objectForKeyedSubscript:localIdentifier7];
            v93 = v92 == 0;

            if (v93)
            {
              v94 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v86, "count")}];
              localIdentifier8 = [v90 localIdentifier];
              [dictionary2 setObject:v94 forKeyedSubscript:localIdentifier8];
            }

            localIdentifier9 = [v90 localIdentifier];
            v97 = [dictionary objectForKeyedSubscript:localIdentifier9];
            v98 = v97 == 0;

            if (v98)
            {
              localIdentifier10 = [v90 localIdentifier];
              [dictionary setObject:v84 forKeyedSubscript:localIdentifier10];
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
        if (blockCopy && (blockCopy[2]() & 1) != 0)
        {
          firstObject5 = 0;
          v56 = 1;
          goto LABEL_193;
        }

        v101 = [v274 objectAtIndexedSubscript:v283];
        localIdentifier11 = [v101 localIdentifier];
        v103 = [v270 containsObject:localIdentifier11];

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
          sourceWidth = [v101 sourceWidth];
          sourceHeight = [v101 sourceHeight];
          [v101 centerX];
          v115 = v114;
          [v101 centerY];
          if ([v109 getCropRectForPortraitImage:v284 size:v111 imgWidth:sourceWidth imgHeight:sourceHeight centerX:v115 centerY:v116])
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

          localIdentifier12 = [v101 localIdentifier];
          v120 = [dictionary2 objectForKeyedSubscript:localIdentifier12];
          integerValue = [v120 integerValue];

          if (integerValue)
          {
            v122 = 1.0;
            if (integerValue == 2)
            {
              v122 = 0.5;
            }

            if (integerValue <= 2)
            {
              v123 = v122;
            }

            else
            {
              v123 = 0.25;
            }

            localIdentifier13 = [v101 localIdentifier];
            v125 = [dictionary objectForKeyedSubscript:localIdentifier13];

            if (v125)
            {
              mediaSubtypes = [v125 mediaSubtypes];
              creationDate = [v125 creationDate];
              if (creationDate)
              {
                creationDate2 = [v125 creationDate];
                contexta = creationDate2;
              }

              else
              {
                creationDate2 = [v125 curationProperties];
                contexta = [creationDate2 addedDate];
              }

              v192 = *&mediaSubtypes & 0x80004;

              if ((*&mediaSubtypes & 0x80004) != 0)
              {
                distantPast = [MEMORY[0x1E695DF00] distantPast];
              }

              else
              {
                distantPast = contexta;
              }

              contextc = distantPast;
              [distantPast timeIntervalSinceNow];
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
                  mediaSubtypes2 = [v125 mediaSubtypes];
                  mediaSubtypes3 = [v125 mediaSubtypes];
                  v207 = @"Yes";
                  if ((mediaSubtypes2 & 4) != 0)
                  {
                    v208 = @"Yes";
                  }

                  else
                  {
                    v208 = @"No";
                  }

                  *buf = 138414850;
                  if ((mediaSubtypes3 & 0x80000) == 0)
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
              if (faceCopy)
              {
                [faceCopy setObject:v223 forKey:v101];
              }

              if (facesCopy)
              {
                v321[0] = @"localIdentifier";
                photosFaceRepresentationLocalIdentifier = [v101 photosFaceRepresentationLocalIdentifier];
                v322[0] = photosFaceRepresentationLocalIdentifier;
                v322[1] = v223;
                v321[1] = @"qualityMeasure";
                v321[2] = @"quality";
                v225 = [MEMORY[0x1E696AD98] numberWithDouble:v200];
                v322[2] = v225;
                v226 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v322 forKeys:v321 count:3];

                [facesCopy addObject:v226];
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

        localIdentifier14 = [v101 localIdentifier];
        v133 = [dictionary2 objectForKeyedSubscript:localIdentifier14];
        v255 = v131;
        integerValue2 = [v133 integerValue];

        v135 = 1.0;
        if (integerValue2 > 2)
        {
          v135 = 0.25;
        }

        if (integerValue2 == 2)
        {
          v135 = 0.5;
        }

        v248 = v135;
        localIdentifier15 = [v101 localIdentifier];
        v137 = [dictionary objectForKeyedSubscript:localIdentifier15];

        if (v137)
        {
          mediaSubtypes4 = [v137 mediaSubtypes];
          creationDate3 = [v137 creationDate];
          if (creationDate3)
          {
            creationDate4 = [v137 creationDate];
            addedDate = creationDate4;
          }

          else
          {
            creationDate4 = [v137 curationProperties];
            addedDate = [creationDate4 addedDate];
          }

          if ((*&mediaSubtypes4 & 0x80004) != 0)
          {
            distantPast2 = [MEMORY[0x1E695DF00] distantPast];

            v143 = distantPast2;
          }

          else
          {
            v143 = addedDate;
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

          sourceHeight2 = [v101 sourceHeight];
          sourceWidth2 = [v101 sourceWidth];
          if (sourceHeight2 < sourceWidth2)
          {
            sourceWidth2 = sourceHeight2;
          }

          v148 = VCPPFResolutionQuality(sourceWidth2);
          [v101 size];
          *&v149 = v149;
          v150 = VCPPFFaceAreaQuality(*&v149);
          mediaAnalysisProperties = [v137 mediaAnalysisProperties];
          [mediaAnalysisProperties wallpaperScore];
          v153 = v152;

          mediaAnalysisProperties2 = [v137 mediaAnalysisProperties];
          v155 = 1.0;
          if ([mediaAnalysisProperties2 probableRotationDirection] >= 2)
          {
            mediaAnalysisProperties3 = [v137 mediaAnalysisProperties];
            [mediaAnalysisProperties3 probableRotationDirectionConfidence];
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
          sourceWidth3 = [v101 sourceWidth];
          sourceHeight3 = [v101 sourceHeight];
          [v101 centerX];
          v164 = v163;
          [v101 centerY];
          v166 = [v158 getCropRectForPortraitImage:v284 size:v160 imgWidth:sourceWidth3 imgHeight:sourceHeight3 centerX:v164 centerY:v165];
          v167 = 1.0;
          if ((v166 & 1) == 0)
          {
            [(VCPPhotosPersistenceDelegate *)selfCopy _keyFacePortraitFactorCoefficient];
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
              mediaSubtypes5 = [v137 mediaSubtypes];
              mediaSubtypes6 = [v137 mediaSubtypes];
              v178 = @"Yes";
              if ((mediaSubtypes5 & 4) != 0)
              {
                v179 = @"Yes";
              }

              else
              {
                v179 = @"No";
              }

              *buf = 138415362;
              if ((mediaSubtypes6 & 0x80000) == 0)
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
          if (faceCopy)
          {
            [faceCopy setObject:v187 forKey:v101];
          }

          if (facesCopy)
          {
            v293[0] = @"localIdentifier";
            photosFaceRepresentationLocalIdentifier2 = [v101 photosFaceRepresentationLocalIdentifier];
            v294[0] = photosFaceRepresentationLocalIdentifier2;
            v294[1] = v187;
            v293[1] = @"qualityMeasure";
            v293[2] = @"quality";
            v189 = [MEMORY[0x1E696AD98] numberWithDouble:v255];
            v294[2] = v189;
            v190 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v294 forKeys:v293 count:3];

            [facesCopy addObject:v190];
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

    firstObject5 = v230;
  }

LABEL_271:

LABEL_272:

  return firstObject5;
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

- (id)keyFaceForPerson:(id)person qualityMeasureByFace:(id)face updateBlock:(id)block
{
  blockCopy = block;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__VCPPhotosPersistenceDelegate_keyFaceForPerson_qualityMeasureByFace_updateBlock___block_invoke;
  v12[3] = &unk_1E834C9F0;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = [(VCPPhotosPersistenceDelegate *)self bestRepresentativeFaceForPerson:person qualityMeasureByFace:face candidateFaces:0 cancelOrExtendTimeoutBlock:v12];

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

- (id)performSocialGroupsIdentifiersWithPersonClusterManager:(id)manager forPersons:(id)persons overTheYearsComputation:(BOOL)computation updateBlock:(id)block
{
  computationCopy = computation;
  managerCopy = manager;
  personsCopy = persons;
  blockCopy = block;
  if (computationCopy)
  {
    [getPGPNGraphHelperClass() socialGroupsOverTheYearsWithPersonClusterManager:managerCopy forPersons:personsCopy updateBlock:blockCopy];
  }

  else
  {
    [getPGPNGraphHelperClass() multiLevelSocialGroupsWithPersonClusterManager:managerCopy forPersons:personsCopy updateBlock:blockCopy];
  }
  v12 = ;

  return v12;
}

- (id)densityClusteringForObjects:(id)objects maximumDistance:(double)distance minimumNumberOfObjects:(unint64_t)ofObjects withDistanceBlock:(id)block
{
  objectsCopy = objects;
  blockCopy = block;
  v11 = [getPGPNGraphHelperClass() densityClusteringForObjects:objectsCopy maximumDistance:ofObjects minimumNumberOfObjects:blockCopy withDistanceBlock:distance];

  return v11;
}

@end