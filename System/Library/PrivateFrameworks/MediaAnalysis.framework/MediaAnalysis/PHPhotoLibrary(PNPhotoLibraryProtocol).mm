@interface PHPhotoLibrary(PNPhotoLibraryProtocol)
+ (id)_defaultAssetPropertySets;
+ (id)_defaultFacePropertySets;
+ (id)_phFaceSortDescriptors;
+ (id)_phPeopleSortDescriptors;
- (double)_progressFromWorkerStatesDictionary:()PNPhotoLibraryProtocol;
- (id)_defaultAssetFetchOptions;
- (id)_defaultFetchOptions;
- (id)pn_fetchAssetsForFaceGroup:()PNPhotoLibraryProtocol;
- (id)pn_fetchAssetsForFaceLocalIdentifiers:()PNPhotoLibraryProtocol;
- (id)pn_fetchAssetsForPerson:()PNPhotoLibraryProtocol;
- (id)pn_fetchAssetsInMoment:()PNPhotoLibraryProtocol;
- (id)pn_fetchAssetsWithLocalIdentifiers:()PNPhotoLibraryProtocol;
- (id)pn_fetchCandidatePersonsForPerson:()PNPhotoLibraryProtocol;
- (id)pn_fetchFaceGroups;
- (id)pn_fetchFaceGroupsForPerson:()PNPhotoLibraryProtocol;
- (id)pn_fetchFacesForFaceGroup:()PNPhotoLibraryProtocol;
- (id)pn_fetchFacesForPerson:()PNPhotoLibraryProtocol;
- (id)pn_fetchFacesForPerson:()PNPhotoLibraryProtocol inMoment:;
- (id)pn_fetchFacesForPersonLocalIdentifiers:()PNPhotoLibraryProtocol inMoment:;
- (id)pn_fetchFacesGroupedByAssetLocalIdentifierForAssets:()PNPhotoLibraryProtocol;
- (id)pn_fetchFacesWithLocalIdentifiers:()PNPhotoLibraryProtocol;
- (id)pn_fetchInvalidAssetIdentifiersForCommonComparison;
- (id)pn_fetchInvalidCandidatePersonsForPerson:()PNPhotoLibraryProtocol;
- (id)pn_fetchMoments;
- (id)pn_fetchMomentsForAssetsWithLocalIdentifiers:()PNPhotoLibraryProtocol;
- (id)pn_fetchMomentsWithLocalIdentifiers:()PNPhotoLibraryProtocol;
- (id)pn_fetchPersonsGroupedByAssetLocalIdentifierForAssets:()PNPhotoLibraryProtocol;
- (id)pn_fetchPersonsInMoment:()PNPhotoLibraryProtocol;
- (id)pn_fetchPersonsWithLocalIdentifiers:()PNPhotoLibraryProtocol;
- (id)pn_fetchPersonsWithType:()PNPhotoLibraryProtocol;
- (id)pn_lastAssetDate;
- (id)pn_persistentStorageDirectoryURL;
- (uint64_t)pn_numberOfFacesWithFaceprints;
@end

@implementation PHPhotoLibrary(PNPhotoLibraryProtocol)

+ (id)_phFaceSortDescriptors
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v3[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];

  return v1;
}

+ (id)_phPeopleSortDescriptors
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v3[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];

  return v1;
}

+ (id)_defaultAssetPropertySets
{
  v3[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6978CD8];
  v3[0] = *MEMORY[0x1E6978C10];
  v3[1] = v0;
  v3[2] = *MEMORY[0x1E6978CA0];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];

  return v1;
}

+ (id)_defaultFacePropertySets
{
  v3[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6978D70];
  v3[0] = *MEMORY[0x1E6978D80];
  v3[1] = v0;
  v3[2] = *MEMORY[0x1E6978D68];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];

  return v1;
}

- (id)_defaultFetchOptions
{
  v2 = objc_opt_new();
  [v2 setWantsIncrementalChangeDetails:0];
  [v2 setPhotoLibrary:a1];

  return v2;
}

- (id)_defaultAssetFetchOptions
{
  v1 = [a1 _defaultFetchOptions];
  v2 = [objc_opt_class() _defaultAssetPropertySets];
  [v1 setFetchPropertySets:v2];

  return v1;
}

- (id)pn_persistentStorageDirectoryURL
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 processName];

  if (![v3 isEqualToString:@"mediaanalysisd"])
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v16 = 0;
    v6 = [v5 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v16];
    v7 = v16;
    if (v7)
    {
      v8 = v7;
      v4 = 0;
LABEL_8:
      v9 = MEMORY[0x1E695DFF8];
      v10 = NSTemporaryDirectory();
      v11 = [v9 fileURLWithPath:v10];

      v4 = v11;
      goto LABEL_9;
    }

    v4 = [v6 URLByAppendingPathComponent:v3];
    buf[0] = 0;
    v13 = [v4 path];
    v14 = [v5 fileExistsAtPath:v13 isDirectory:buf];

    if (v14)
    {
      if ((buf[0] & 1) == 0)
      {

        v4 = 0;
        v8 = 0;
        goto LABEL_8;
      }

      v8 = 0;
    }

    else
    {
      v15 = 0;
      [v5 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:&v15];
      v8 = v15;
    }

    if (v4 && !v8)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v17 = 0;
  v4 = [a1 urlForApplicationDataFolderIdentifier:2 error:&v17];
  v5 = v17;
  if (!v4 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [a1 photoLibraryURL];
    *buf = 138412546;
    v19 = v6;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid VisionCache directory for %@ - %@", buf, 0x16u);
LABEL_9:
  }

  return v4;
}

- (id)pn_fetchPersonsWithLocalIdentifiers:()PNPhotoLibraryProtocol
{
  v4 = a3;
  v5 = [a1 _defaultFetchOptions];
  [v5 setMinimumVerifiedFaceCount:1];
  [v5 setMinimumUnverifiedFaceCount:1];
  v6 = [MEMORY[0x1E69789B0] _phPeopleSortDescriptors];
  [v5 setSortDescriptors:v6];

  [v5 setIncludeTorsoOnlyPerson:1];
  v7 = [MEMORY[0x1E6978978] fetchPersonsWithLocalIdentifiers:v4 options:v5];

  return v7;
}

- (id)pn_fetchPersonsWithType:()PNPhotoLibraryProtocol
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = [a1 _defaultFetchOptions];
  v6 = [MEMORY[0x1E69789B0] _phPeopleSortDescriptors];
  [v5 setSortDescriptors:v6];

  [v5 setIncludeTorsoOnlyPerson:1];
  v7 = 0;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      [v5 setPersonContext:0];
    }

    else
    {
      if (a3 != 4)
      {
        goto LABEL_11;
      }

      [v5 setMinimumVerifiedFaceCount:1];
      [v5 setMinimumUnverifiedFaceCount:1];
    }

LABEL_10:
    v7 = [MEMORY[0x1E6978978] fetchPersonsWithOptions:v5];
    goto LABEL_11;
  }

  switch(a3)
  {
    case 1:
      v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"verifiedType = %@ OR verifiedType = %@", &unk_1F49BB7B8, &unk_1F49BB7D0];
      [v5 setPredicate:v17];

      goto LABEL_10;
    case 2:
      [v5 setMinimumVerifiedFaceCount:2];
      [v5 setMinimumUnverifiedFaceCount:2];
      v8 = [MEMORY[0x1E6978978] fetchPersonsWithOptions:v5];
      v9 = objc_opt_new();
      v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
      v21[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      [v9 setSortDescriptors:v11];

      [v9 setPhotoLibrary:a1];
      v12 = [v8 fetchedObjects];
      v13 = MEMORY[0x1E696AE18];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __66__PHPhotoLibrary_PNPhotoLibraryProtocol__pn_fetchPersonsWithType___block_invoke;
      v19[3] = &unk_1E834C0A0;
      v20 = v9;
      v14 = v9;
      v15 = [v13 predicateWithBlock:v19];
      v16 = [v12 filteredArrayUsingPredicate:v15];

      goto LABEL_12;
    case 0:
      abort();
  }

LABEL_11:
  v8 = v7;
  v16 = v8;
LABEL_12:

  return v16;
}

- (id)pn_fetchPersonsInMoment:()PNPhotoLibraryProtocol
{
  v4 = a3;
  v5 = [a1 _defaultFetchOptions];
  [v5 setMinimumVerifiedFaceCount:1];
  [v5 setMinimumUnverifiedFaceCount:1];
  v6 = [MEMORY[0x1E69789B0] _phPeopleSortDescriptors];
  [v5 setSortDescriptors:v6];

  [v5 setIncludeTorsoOnlyPerson:1];
  v7 = [MEMORY[0x1E6978978] fetchPersonsForAssetCollection:v4 options:v5];

  return v7;
}

- (id)pn_fetchCandidatePersonsForPerson:()PNPhotoLibraryProtocol
{
  v4 = a3;
  v5 = [a1 _defaultFetchOptions];
  v6 = [MEMORY[0x1E69789B0] _phPeopleSortDescriptors];
  [v5 setSortDescriptors:v6];

  [v5 setIncludeTorsoOnlyPerson:1];
  v7 = [MEMORY[0x1E6978978] fetchMergeCandidatePersonsForPerson:v4 options:v5];

  return v7;
}

- (id)pn_fetchInvalidCandidatePersonsForPerson:()PNPhotoLibraryProtocol
{
  v4 = a3;
  v5 = [a1 _defaultFetchOptions];
  v6 = [MEMORY[0x1E69789B0] _phPeopleSortDescriptors];
  [v5 setSortDescriptors:v6];

  [v5 setIncludeTorsoOnlyPerson:1];
  v7 = [MEMORY[0x1E6978978] fetchInvalidMergeCandidatePersonsForPerson:v4 options:v5];

  return v7;
}

- (id)pn_fetchPersonsGroupedByAssetLocalIdentifierForAssets:()PNPhotoLibraryProtocol
{
  v4 = a3;
  v5 = [a1 _defaultFetchOptions];
  [v5 setMinimumVerifiedFaceCount:1];
  [v5 setMinimumUnverifiedFaceCount:1];
  v6 = [MEMORY[0x1E69789B0] _phPeopleSortDescriptors];
  [v5 setSortDescriptors:v6];

  [v5 setIncludeTorsoOnlyPerson:1];
  v7 = [MEMORY[0x1E6978978] fetchPersonsGroupedByAssetLocalIdentifierForAssets:v4 options:v5];

  return v7;
}

- (uint64_t)pn_numberOfFacesWithFaceprints
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = [a1 _defaultFetchOptions];
  [v1 setIncludeOnlyFacesWithFaceprints:1];
  v6[0] = *MEMORY[0x1E6978D80];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [v1 setFetchPropertySets:v2];

  [v1 setShouldPrefetchCount:1];
  [v1 setIncludeTorsoAndFaceDetectionData:1];
  if ([MEMORY[0x1E69789B0] mad_clusterVideoFaces])
  {
    [v1 setIncludeMediaAnalysisProcessingRangeTypes:3];
  }

  v3 = [MEMORY[0x1E69787D0] fetchFacesWithOptions:v1];
  v4 = [v3 count];

  return v4;
}

- (id)pn_fetchFacesWithLocalIdentifiers:()PNPhotoLibraryProtocol
{
  v4 = a3;
  v5 = [a1 _defaultFetchOptions];
  v6 = [objc_opt_class() _defaultFacePropertySets];
  [v5 setFetchPropertySets:v6];

  v7 = [MEMORY[0x1E69789B0] _phFaceSortDescriptors];
  [v5 setSortDescriptors:v7];

  [v5 setIncludeTorsoAndFaceDetectionData:1];
  if ([MEMORY[0x1E69789B0] mad_clusterVideoFaces])
  {
    [v5 setIncludeMediaAnalysisProcessingRangeTypes:3];
  }

  v8 = [MEMORY[0x1E69787D0] fetchFacesWithLocalIdentifiers:v4 options:v5];

  return v8;
}

- (id)pn_fetchFacesForPerson:()PNPhotoLibraryProtocol
{
  v4 = a3;
  v5 = [a1 _defaultFetchOptions];
  [v5 setIncludeOnlyFacesWithFaceprints:1];
  v6 = [objc_opt_class() _defaultFacePropertySets];
  [v5 setFetchPropertySets:v6];

  v7 = [MEMORY[0x1E69789B0] _phFaceSortDescriptors];
  [v5 setSortDescriptors:v7];

  [v5 setIncludeTorsoAndFaceDetectionData:1];
  if ([MEMORY[0x1E69789B0] mad_clusterVideoFaces])
  {
    [v5 setIncludeMediaAnalysisProcessingRangeTypes:3];
  }

  v8 = [MEMORY[0x1E69787D0] fetchFacesForPerson:v4 options:v5];

  return v8;
}

- (id)pn_fetchFacesForPerson:()PNPhotoLibraryProtocol inMoment:
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 localIdentifier];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [a1 pn_fetchFacesForPersonLocalIdentifiers:v8 inMoment:v6];

  return v9;
}

- (id)pn_fetchFacesForPersonLocalIdentifiers:()PNPhotoLibraryProtocol inMoment:
{
  v1 = [a1 fetchFacesForMediaProcessingWithPersonLocalIdentifiers:? inMoment:?];
  if ([v1 count])
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

- (id)pn_fetchFacesForFaceGroup:()PNPhotoLibraryProtocol
{
  v4 = a3;
  v5 = [a1 _defaultFetchOptions];
  v6 = [objc_opt_class() _defaultFacePropertySets];
  [v5 setFetchPropertySets:v6];

  v7 = [MEMORY[0x1E69789B0] _phFaceSortDescriptors];
  [v5 setSortDescriptors:v7];

  [v5 setIncludeTorsoAndFaceDetectionData:1];
  if ([MEMORY[0x1E69789B0] mad_clusterVideoFaces])
  {
    [v5 setIncludeMediaAnalysisProcessingRangeTypes:3];
  }

  v8 = [MEMORY[0x1E69787D0] fetchFacesInFaceGroup:v4 options:v5];

  return v8;
}

- (id)pn_fetchFacesGroupedByAssetLocalIdentifierForAssets:()PNPhotoLibraryProtocol
{
  v4 = a3;
  v5 = [a1 _defaultFetchOptions];
  v6 = [objc_opt_class() _defaultFacePropertySets];
  [v5 setFetchPropertySets:v6];

  v7 = [MEMORY[0x1E69789B0] _phFaceSortDescriptors];
  [v5 setSortDescriptors:v7];

  [v5 setIncludeTorsoAndFaceDetectionData:1];
  if ([MEMORY[0x1E69789B0] mad_clusterVideoFaces])
  {
    [v5 setIncludeMediaAnalysisProcessingRangeTypes:3];
  }

  v8 = [MEMORY[0x1E69787D0] fetchFacesGroupedByAssetLocalIdentifierForAssets:v4 options:v5];

  return v8;
}

- (id)pn_fetchMoments
{
  v1 = [a1 _defaultFetchOptions];
  v2 = [MEMORY[0x1E69C1578] momentSortDescriptors];
  [v1 setSortDescriptors:v2];

  v3 = [MEMORY[0x1E6978658] fetchMomentsWithOptions:v1];

  return v3;
}

- (id)pn_fetchMomentsWithLocalIdentifiers:()PNPhotoLibraryProtocol
{
  v4 = a3;
  v5 = [a1 _defaultFetchOptions];
  v6 = [MEMORY[0x1E69C1578] momentSortDescriptors];
  [v5 setSortDescriptors:v6];

  v7 = [MEMORY[0x1E6978658] fetchAssetCollectionsWithLocalIdentifiers:v4 options:v5];

  return v7;
}

- (id)pn_fetchMomentsForAssetsWithLocalIdentifiers:()PNPhotoLibraryProtocol
{
  v4 = a3;
  v5 = [a1 _defaultFetchOptions];
  v6 = [MEMORY[0x1E69C1578] momentSortDescriptors];
  [v5 setSortDescriptors:v6];

  v7 = [MEMORY[0x1E6978658] fetchMomentsForAssetsWithLocalIdentifiers:v4 options:v5];

  return v7;
}

- (id)pn_fetchAssetsWithLocalIdentifiers:()PNPhotoLibraryProtocol
{
  v4 = a3;
  v5 = [a1 _defaultAssetFetchOptions];
  v6 = [MEMORY[0x1E6978628] fetchAssetsWithLocalIdentifiers:v4 options:v5];

  return v6;
}

- (id)pn_fetchAssetsInMoment:()PNPhotoLibraryProtocol
{
  v4 = a3;
  v5 = [a1 _defaultAssetFetchOptions];
  v6 = [MEMORY[0x1E6978628] fetchAssetsInAssetCollection:v4 options:v5];

  return v6;
}

- (id)pn_fetchAssetsForPerson:()PNPhotoLibraryProtocol
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 _defaultAssetFetchOptions];
  v6 = MEMORY[0x1E6978628];
  v10[0] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [v6 fetchAssetsForPersons:v7 options:v5];

  return v8;
}

- (id)pn_fetchAssetsForFaceGroup:()PNPhotoLibraryProtocol
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 _defaultAssetFetchOptions];
  v6 = MEMORY[0x1E6978628];
  v10[0] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [v6 fetchAssetsForFaceGroups:v7 options:v5];

  return v8;
}

- (id)pn_fetchFaceGroups
{
  v1 = [a1 _defaultFetchOptions];
  v2 = [MEMORY[0x1E6978810] fetchFaceGroupsWithOptions:v1];

  return v2;
}

- (id)pn_fetchFaceGroupsForPerson:()PNPhotoLibraryProtocol
{
  v4 = a3;
  v5 = [a1 _defaultFetchOptions];
  v6 = [MEMORY[0x1E6978810] fetchFaceGroupsForPerson:v4 options:v5];

  return v6;
}

- (double)_progressFromWorkerStatesDictionary:()PNPhotoLibraryProtocol
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"total-allowed"];
  v5 = [v4 unsignedIntegerValue];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (([v12 isEqualToString:{@"total-allowed", v17}] & 1) == 0)
        {
          v13 = [v6 objectForKeyedSubscript:v12];
          v9 += [v13 unsignedIntegerValue];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
    v14 = v9;
  }

  else
  {
    v14 = 0.0;
  }

  if (v5)
  {
    if (v14 / v5 <= 1.0)
    {
      v15 = v14 / v5;
    }

    else
    {
      v15 = 1.0;
    }
  }

  else
  {
    v15 = -1.0;
  }

  return v15;
}

- (id)pn_fetchInvalidAssetIdentifiersForCommonComparison
{
  v32[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = [a1 _defaultFetchOptions];
  v32[0] = *MEMORY[0x1E6978C70];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  [v3 setFetchPropertySets:v4];

  v21 = [MEMORY[0x1E6978658] fetchAssetCollectionsWithType:2 subtype:211 options:v3];
  v20 = [v21 firstObject];
  v5 = [MEMORY[0x1E6978628] fetchAssetsInAssetCollection:? options:?];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v26 + 1) + 8 * i) localIdentifier];
        [v2 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v11 = [MEMORY[0x1E6978658] fetchAssetCollectionsWithType:2 subtype:201 options:v3];
  v12 = [v11 firstObject];
  v13 = [MEMORY[0x1E6978628] fetchAssetsInAssetCollection:v12 options:v3];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v22 + 1) + 8 * j) localIdentifier];
        [v2 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }

  return v2;
}

- (id)pn_lastAssetDate
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = [a1 _defaultFetchOptions];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v1 setSortDescriptors:v3];

  [v1 setFetchLimit:1];
  [v1 setIncludeAssetSourceTypes:5];
  v4 = [MEMORY[0x1E6978628] fetchAssetsWithOptions:v1];
  v5 = [v4 firstObject];
  v6 = [v5 creationDate];

  return v6;
}

- (id)pn_fetchAssetsForFaceLocalIdentifiers:()PNPhotoLibraryProtocol
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x1E6978950] uuidFromLocalIdentifier:*(*(&v16 + 1) + 8 * i)];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = [a1 _defaultAssetFetchOptions];
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY detectedFaces.uuid IN %@", v5];
  [v12 setInternalPredicate:v13];

  v14 = [MEMORY[0x1E6978628] fetchAssetsWithOptions:v12];

  return v14;
}

@end