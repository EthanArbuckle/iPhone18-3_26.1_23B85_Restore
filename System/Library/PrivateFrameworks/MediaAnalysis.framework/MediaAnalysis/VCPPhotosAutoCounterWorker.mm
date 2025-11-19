@interface VCPPhotosAutoCounterWorker
+ (id)workerWithPhotoLibrary:(id)a3;
- (BOOL)optInStatus:(id)a3 error:(id *)a4;
- (BOOL)optInUserPickedPerson:(id)a3 error:(id *)a4 extendTimeoutBlock:(id)a5 cancelBlock:(id)a6;
- (VCPPhotosAutoCounterWorker)initWithPhotoLibrary:(id)a3;
- (double)_overlapRatioOf:(CGRect)a3 with:(CGRect)a4;
- (id)_anonymizedName:(id)a3;
- (id)_fetchPeopleHomePersons;
- (id)_groundTruthURL;
- (int)_loadGroundTruth:(id *)a3 error:(id *)a4;
- (int)_loadGroundTruthURL:(id)a3 toGroundTruth:(id *)a4 error:(id *)a5;
- (int)_measureClusterWithClusterStateURL:(id)a3 groundTruthFaceCountPerPerson:(id)a4 groundTruthPersonInformation:(id)a5 groundTruthFaceToPerson:(id)a6 groundTruthAssetToFaces:(id)a7 measures:(id *)a8 extendTimeoutBlock:(id)a9 cancelBlock:(id)a10;
- (int)_measurePNPersonClusters:(id)a3 groundTruthFaceCountPerPerson:(id)a4 groundTruthPersonInformation:(id)a5 groundTruthFaceToPerson:(id)a6 groundTruthAssetToFaces:(id)a7 measures:(id *)a8 extendTimeoutBlock:(id)a9 cancelBlock:(id)a10;
- (int)_parseGroundTruthWithURL:(id)a3 faceCountPerPerson:(id *)a4 personInformation:(id *)a5 faceToPerson:(id *)a6 assetToFaces:(id *)a7 extendTimeoutBlock:(id)a8 cancelBlock:(id)a9;
- (int)_parseSIMLGroundTruthWithURL:(id)a3 faceCountPerPerson:(id *)a4 personInformation:(id *)a5 faceToPerson:(id *)a6 assetToFaces:(id *)a7 extendTimeoutBlock:(id)a8 cancelBlock:(id)a9;
- (int)_processFetchedVURawCluster:(id)a3 forPersonLocalIdentifier:(id)a4 facesPerAsset:(id)a5 assetInformation:(id)a6 extendTimeoutBlock:(id)a7 cancelBlock:(id)a8;
- (int)_reportCoreAnalyticsWithVisionClusterMeasure:(id)a3 personClusterMeasure:(id)a4 personClusters:(id)a5 andGroundTruthInformation:(id)a6;
- (int)calculateAndReportClusterAccuracyWithVisionClusterURL:(id)a3 andPersonClusters:(id)a4 results:(id *)a5 extendTimeoutBlock:(id)a6 cancelBlock:(id)a7;
- (int)calculateAndReportClusterAccuracyWithVisionClusterURL:(id)a3 andPersonClusters:(id)a4 withGroundtruth:(id)a5 results:(id *)a6 extendTimeoutBlock:(id)a7 cancelBlock:(id)a8;
- (int)exportVUGalleryClusterStates:(id *)a3 error:(id *)a4 extendTimeoutBlock:(id)a5 cancelBlock:(id)a6;
- (int)validateClusterAccuracyWithSIMLGroundtruth:(id)a3 results:(id *)a4 extendTimeoutBlock:(id)a5 cancelBlock:(id)a6;
- (unint64_t)optInPersonCount;
- (void)_exportAssetsToFacesDetails:(id)a3;
- (void)_fetchPersonWithIdentifier:(id)a3 facesPerAsset:(id)a4 assetInformation:(id)a5 extendTimeoutBlock:(id)a6 cancelBlock:(id)a7;
@end

@implementation VCPPhotosAutoCounterWorker

- (VCPPhotosAutoCounterWorker)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = VCPPhotosAutoCounterWorker;
  v6 = [(VCPPhotosAutoCounterWorker *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
    v8 = [VCPFaceProcessingVersionManager sharedManagerForPhotoLibrary:v5];
    v7->_processingVersion = [v8 currentProcessingVersion];

    v7->_personClusterVersion = *MEMORY[0x1E69C15E8];
    v9 = objc_opt_class();
    v7->_detectionVersion = VCPMAGetRevisionForVisionModel(v9, v7->_processingVersion);
    v10 = objc_opt_class();
    v7->_recognitionVersion = VCPMAGetRevisionForVisionModel(v10, v7->_processingVersion);
    v7->_madVersion = 1;
    v7->_clusterDumpFaceFetched = 0;
    v11 = [(PHPhotoLibrary *)v7->_photoLibrary vcp_visionCacheStorageDirectoryURL];
    v16 = 0;
    v12 = [objc_alloc(MEMORY[0x1E69E0678]) initWithClient:0 path:v11 error:&v16];
    v13 = v16;
    gallery = v7->_gallery;
    v7->_gallery = v12;

    v7->_vuVersion = [(VUWGallery *)v7->_gallery version];
  }

  return v7;
}

+ (id)workerWithPhotoLibrary:(id)a3
{
  v3 = a3;
  if (VCPMAIsAppleInternal())
  {
    v4 = [[VCPPhotosAutoCounterWorker alloc] initWithPhotoLibrary:v3];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[AutoCounter] feature not supported on this OS variant", v6, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (id)_groundTruthURL
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__VCPPhotosAutoCounterWorker__groundTruthURL__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  if ([VCPPhotosAutoCounterWorker _groundTruthURL]::groundTruthURLToken != -1)
  {
    dispatch_once(&[VCPPhotosAutoCounterWorker _groundTruthURL]::groundTruthURLToken, block);
  }

  return [VCPPhotosAutoCounterWorker _groundTruthURL]::groundTruthURL;
}

void __45__VCPPhotosAutoCounterWorker__groundTruthURL__block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AutoCounterGroundTruth.plist"];
  v2 = [*(*(a1 + 32) + 8) vcp_visionCacheStorageDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:v5];
  v4 = [VCPPhotosAutoCounterWorker _groundTruthURL]::groundTruthURL;
  [VCPPhotosAutoCounterWorker _groundTruthURL]::groundTruthURL = v3;
}

- (int)_loadGroundTruthURL:(id)a3 toGroundTruth:(id *)a4 error:(id *)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (v8)
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v8 path];
    v11 = [v9 fileExistsAtPath:v10];

    if (v11)
    {
      LODWORD(a5) = 0;
      *a4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfURL:v8];
    }

    else
    {
      *a4 = MEMORY[0x1E695E0F8];
      v15 = self;
      objc_sync_enter(v15);
      v16 = [*a4 writeToURL:v8 error:a5];
      objc_sync_exit(v15);

      if (v16)
      {
        LODWORD(a5) = 0;
      }

      else
      {
        LODWORD(a5) = -20;
      }
    }
  }

  else if (a5)
  {
    v12 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[AutoCounter] Cannot load ground truth file URL"];
    v19[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *a5 = [v12 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v14];

    LODWORD(a5) = 0;
  }

  return a5;
}

- (int)_loadGroundTruth:(id *)a3 error:(id *)a4
{
  v7 = [(VCPPhotosAutoCounterWorker *)self _groundTruthURL];
  LODWORD(a4) = [(VCPPhotosAutoCounterWorker *)self _loadGroundTruthURL:v7 toGroundTruth:a3 error:a4];

  return a4;
}

- (unint64_t)optInPersonCount
{
  v7 = 0;
  v2 = [(VCPPhotosAutoCounterWorker *)self _loadGroundTruth:&v7 error:0];
  v3 = v7;
  v4 = v3;
  if (v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 count];
  }

  return v5;
}

- (id)_fetchPeopleHomePersons
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [v2 setPersonContext:1];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"faceCount" ascending:0];
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  [v2 setSortDescriptors:v5];

  v6 = [MEMORY[0x1E6978978] fetchPersonsWithOptions:v2];

  return v6;
}

- (id)_anonymizedName:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 dataUsingEncoding:1 allowLossyConversion:1];
    CC_SHA1([v4 bytes], objc_msgSend(v4, "length"), md);
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:20];
    v6 = [v5 base64EncodedStringWithOptions:0];
  }

  else
  {
    v6 = @"no_name";
  }

  return v6;
}

- (void)_fetchPersonWithIdentifier:(id)a3 facesPerAsset:(id)a4 assetInformation:(id)a5 extendTimeoutBlock:(id)a6 cancelBlock:(id)a7
{
  v24[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v18 = MEMORY[0x1E6978978];
  v24[0] = v12;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v20 = [v18 fetchPersonsWithLocalIdentifiers:v19 options:v17];

  if ([v20 count])
  {
    v21 = [(VUWGallery *)self->_gallery clustersFor:1];
    [(VCPPhotosAutoCounterWorker *)self _processFetchedVURawCluster:v21 forPersonLocalIdentifier:v12 facesPerAsset:v13 assetInformation:v14 extendTimeoutBlock:v15 cancelBlock:v16];
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v12;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[AutoCounter] Failed to fetch person %@", &v22, 0xCu);
  }
}

- (BOOL)optInStatus:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = 0;
  LODWORD(a4) = [(VCPPhotosAutoCounterWorker *)self _loadGroundTruth:&v13 error:a4];
  v7 = v13;
  v8 = v7;
  if (a4)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[AutoCounter] Fail to load groundtruth file", v12, 2u);
    }

    LOBYTE(v9) = 1;
  }

  else
  {
    v10 = [v7 objectForKeyedSubscript:v6];
    v9 = v10 != 0;
  }

  return v9;
}

- (BOOL)optInUserPickedPerson:(id)a3 error:(id *)a4 extendTimeoutBlock:(id)a5 cancelBlock:(id)a6
{
  v65[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v13 = [v10 objectForKeyedSubscript:@"PersonIdentifier"];
    *buf = 138412546;
    v59 = @"[AutoCounter][OptIn]";
    v60 = 2112;
    v61 = v13;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Receiving opt-in person (%@)", buf, 0x16u);
  }

  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __89__VCPPhotosAutoCounterWorker_optInUserPickedPerson_error_extendTimeoutBlock_cancelBlock___block_invoke;
  v56[3] = &unk_1E8351040;
  v57 = @"[AutoCounter][OptIn]";
  [v10 enumerateKeysAndObjectsUsingBlock:v56];
  v55 = 0;
  v14 = [(VCPPhotosAutoCounterWorker *)self _loadGroundTruth:&v55 error:a4];
  v15 = v55;
  if (v14)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v59 = @"[AutoCounter][OptIn]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Fail to load groundtruth file", buf, 0xCu);
    }

    v16 = 1;
  }

  else
  {
    v54 = [v10 objectForKeyedSubscript:@"PersonIdentifier"];
    v17 = [v15 objectForKeyedSubscript:v54];
    v18 = v17 == 0;

    if (v18)
    {
      v52 = [MEMORY[0x1E695DF90] dictionary];
      v50 = [MEMORY[0x1E695DF90] dictionary];
      [VCPPhotosAutoCounterWorker _fetchPersonWithIdentifier:"_fetchPersonWithIdentifier:facesPerAsset:assetInformation:extendTimeoutBlock:cancelBlock:" facesPerAsset:v54 assetInformation:v52 extendTimeoutBlock:? cancelBlock:?];
      v20 = [v52 allKeys];
      v21 = [v20 count] == 0;

      if (v21)
      {
        v41 = MEMORY[0x1E696ABC0];
        v64 = *MEMORY[0x1E696A578];
        v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to fetch person %@", @"[AutoCounter][OptIn]", v54];
        v65[0] = v42;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:&v64 count:1];
        v40 = [v41 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v43];

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v44 = [v40 description];
          *buf = 138412290;
          v59 = v44;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        if (a4)
        {
          v45 = v40;
          v16 = 0;
          *a4 = v40;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v51 = [MEMORY[0x1E695DF90] dictionary];
        [v51 setObject:v52 forKeyedSubscript:@"FacesPerAsset"];
        v22 = [v10 objectForKeyedSubscript:@"PersonInformation"];
        v53 = [v22 mutableCopy];

        v49 = [MEMORY[0x1E695DF00] now];
        v47 = [MEMORY[0x1E696AB78] localizedStringFromDate:? dateStyle:? timeStyle:?];
        [v53 setObject:? forKeyedSubscript:?];
        v23 = MEMORY[0x1E696AD98];
        [v49 timeIntervalSinceReferenceDate];
        v24 = [v23 numberWithDouble:?];
        [v53 setObject:v24 forKeyedSubscript:@"OptInDateSinceReferenceDate"];

        v25 = [MEMORY[0x1E696AD98] numberWithInt:{-[PHPhotoLibrary mad_faceProcessingInternalVersion](self->_photoLibrary, "mad_faceProcessingInternalVersion")}];
        [v53 setObject:v25 forKeyedSubscript:@"OptInMADFaceVersion"];

        v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_detectionVersion];
        [v53 setObject:v26 forKeyedSubscript:@"OptInDetectionModelVersion"];

        v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_recognitionVersion];
        [v53 setObject:v27 forKeyedSubscript:@"OptInRecognitionModelVersion"];

        v28 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
        v29 = MEMORY[0x1E696AD98];
        v48 = v28;
        v30 = [MEMORY[0x1E69787D0] fetchFacesWithOptions:?];
        v31 = [v29 numberWithUnsignedInteger:{objc_msgSend(v30, "count")}];
        [v53 setObject:v31 forKeyedSubscript:@"FaceCount"];

        v32 = MEMORY[0x1E696AD98];
        v33 = [MEMORY[0x1E6978628] fetchAssetsWithOptions:v48];
        v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(v33, "count")}];
        [v53 setObject:v34 forKeyedSubscript:@"AssetCount"];

        [v51 setObject:v53 forKeyedSubscript:@"AdditionalInformation"];
        v35 = [v15 mutableCopy];
        [v35 setObject:v51 forKeyedSubscript:v54];
        v36 = self;
        objc_sync_enter(v36);
        v37 = [(VCPPhotosAutoCounterWorker *)v36 _groundTruthURL];
        v16 = [v35 writeToURL:v37 error:a4];

        objc_sync_exit(v36);
        if ((v16 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v38 = [(VCPPhotosAutoCounterWorker *)v36 _groundTruthURL];
          v39 = *a4;
          *buf = 138412802;
          v59 = @"[AutoCounter][OptIn]";
          v60 = 2112;
          v61 = v38;
          v62 = 2112;
          v63 = v39;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Cannot write opt-in groundtruth to %@ : %@", buf, 0x20u);
        }

        v40 = v51;
      }

      v19 = v54;
    }

    else
    {
      v19 = v54;
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v59 = @"[AutoCounter][OptIn]";
        v60 = 2112;
        v61 = v54;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Person (%@) already opt-in; skip", buf, 0x16u);
      }

      v16 = 1;
    }
  }

  return v16;
}

void __89__VCPPhotosAutoCounterWorker_optInUserPickedPerson_error_extendTimeoutBlock_cancelBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ -> %@ : %@", &v8, 0x20u);
  }
}

- (int)_processFetchedVURawCluster:(id)a3 forPersonLocalIdentifier:(id)a4 facesPerAsset:(id)a5 assetInformation:(id)a6 extendTimeoutBlock:(id)a7 cancelBlock:(id)a8
{
  v142[2] = *MEMORY[0x1E69E9840];
  v89 = a3;
  v103 = a4;
  v102 = a5;
  v101 = a6;
  v109 = a7;
  v111 = a8;
  v99 = self;
  v88 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [v88 setIncludeNonvisibleFaces:0];
  v14 = *MEMORY[0x1E6978D70];
  v142[0] = *MEMORY[0x1E6978D68];
  v142[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:2];
  [v88 setFetchPropertySets:v15];

  v85 = [MEMORY[0x1E6978628] vcp_fetchOptionsForLibrary:self->_photoLibrary forTaskID:3];
  v87 = *MEMORY[0x1E6978C28];
  v141 = *MEMORY[0x1E6978C28];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v141 count:1];
  [v85 addFetchPropertySets:v16];

  v104 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [v89 allKeys];
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  obj = v120 = 0u;
  v17 = [obj countByEnumeratingWithState:&v119 objects:v140 count:16];
  if (!v17)
  {
    goto LABEL_100;
  }

  v86 = 0;
  v91 = *v120;
  do
  {
    v97 = 0;
    v93 = v17;
    do
    {
      if (*v120 != v91)
      {
        objc_enumerationMutation(obj);
      }

      v100 = *(*(&v119 + 1) + 8 * v97);
      context = objc_autoreleasePoolPush();
      if (!v111 || (v111[2]() & 1) == 0)
      {
        if (v109)
        {
          v109[2]();
        }

        v94 = [MEMORY[0x1E695DF70] array];
        v19 = [v89 objectForKeyedSubscript:v100];
        v117[0] = MEMORY[0x1E69E9820];
        v117[1] = 3221225472;
        v117[2] = __145__VCPPhotosAutoCounterWorker__processFetchedVURawCluster_forPersonLocalIdentifier_facesPerAsset_assetInformation_extendTimeoutBlock_cancelBlock___block_invoke;
        v117[3] = &unk_1E8351128;
        v96 = v94;
        v118 = v96;
        [v19 enumerateObjectsUsingBlock:v117];

        v98 = [MEMORY[0x1E69787D0] fetchFacesWithVuObservationIDs:v96 options:v88];
        v20 = MediaAnalysisLogLevel();
        v21 = MEMORY[0x1E69E9C10];
        if (v20 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v22 = [obj count];
          v23 = [v98 count];
          v24 = [v96 count];
          *buf = 138413570;
          v129 = @"[AutoCounter][VURawCluster]";
          v130 = 2048;
          v131 = ++v86;
          v132 = 2048;
          v133 = v22;
          v134 = 2048;
          v135 = v23;
          v136 = 2048;
          v137 = v24;
          v138 = 2112;
          v139 = v100;
          _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEBUG, "%@ (%lu out of %lu) Fetched %lu out of %lu faces from raw-cluster %@", buf, 0x3Eu);
        }

        if ([v98 count])
        {
          v99->_clusterDumpFaceFetched += [v98 count];
          v25 = MEMORY[0x1E6978628];
          v127 = v87;
          v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v127 count:1];
          v105 = [v25 fetchAssetsGroupedByFaceUUIDForFaces:v98 fetchPropertySets:v26];

          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v27 = v98;
          v28 = [v27 countByEnumeratingWithState:&v113 objects:v126 count:16];
          if (v28)
          {
            v106 = *v114;
            v92 = v27;
            do
            {
              v29 = 0;
              v108 = v28;
              do
              {
                if (*v114 != v106)
                {
                  objc_enumerationMutation(v27);
                }

                v30 = *(*(&v113 + 1) + 8 * v29);
                v31 = objc_autoreleasePoolPush();
                if (!v111 || (v111[2]() & 1) == 0)
                {
                  if (v109)
                  {
                    v109[2]();
                  }

                  v32 = [v30 uuid];
                  v33 = [v105 objectForKeyedSubscript:v32];

                  if (v33)
                  {
                    v34 = [v33 cloudIdentifier];
                    if (!v34)
                    {
                      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                      {
                        v35 = [v33 localIdentifier];
                        *buf = 138412546;
                        v129 = @"[AutoCounter][VURawCluster]";
                        v130 = 2112;
                        v131 = v35;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Asset without cloudIdentifier (use localIdentifier %@)", buf, 0x16u);
                      }

                      v34 = [v33 localIdentifier];
                    }

                    [v102 objectForKeyedSubscript:v34];
                    v110 = v107 = v34;
                    if (!v110)
                    {
                      v110 = [MEMORY[0x1E695DF70] array];
                      [v102 setObject:v110 forKeyedSubscript:v34];
                    }

                    v36 = [v101 objectForKeyedSubscript:v34];
                    v37 = v36 == 0;

                    if (v37)
                    {
                      v124 = @"AddedDate";
                      v38 = MEMORY[0x1E696AD98];
                      v39 = [v33 curationProperties];
                      v40 = [v39 addedDate];
                      [v40 timeIntervalSinceReferenceDate];
                      v41 = [v38 numberWithDouble:?];
                      v125 = v41;
                      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
                      [v101 setObject:v42 forKeyedSubscript:v107];
                    }

                    v43 = [MEMORY[0x1E695DF90] dictionary];
                    v44 = [MEMORY[0x1E6978978] fetchPersonWithFace:v30 options:v104];
                    v112 = [v44 firstObject];

                    v45 = [v112 localIdentifier];
                    if (v45)
                    {
                      goto LABEL_40;
                    }

                    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                    {
                      v46 = [v30 personLocalIdentifier];
                      *buf = 138412546;
                      v129 = @"[AutoCounter][VURawCluster]";
                      v130 = 2112;
                      v131 = v46;
                      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Person without localIdentifier (use face.personLocalIdentifier %@)", buf, 0x16u);
                    }

                    v45 = [v30 personLocalIdentifier];
                    if (v45)
                    {
LABEL_40:
                      [v43 setObject:v45 forKeyedSubscript:@"personID"];
                      if (!v103 || ([v103 isEqualToString:v45] & 1) != 0)
                      {
                        v47 = [v112 verifiedType];
                        v48 = @"unknown";
                        if (v47 < 3)
                        {
                          v48 = off_1E8351440[v47];
                        }

                        [v43 setObject:v48 forKeyedSubscript:@"verifiedType"];
                        if (v112)
                        {
                          v49 = [v112 name];
                          v50 = v49 == 0;

                          if (!v50)
                          {
                            v51 = [v112 name];
                            [v43 setObject:v51 forKeyedSubscript:@"personName"];
                          }
                        }

                        v52 = [v33 pixelWidth];
                        v53 = [v33 pixelHeight];
                        if (v52 <= v53)
                        {
                          v54 = v53;
                        }

                        else
                        {
                          v54 = v52;
                        }

                        [v30 centerX];
                        v56 = v55;
                        v57 = [v33 pixelWidth];
                        [v30 centerY];
                        v59 = v58;
                        v60 = [v33 pixelHeight];
                        [v30 size];
                        v62 = v61;
                        [v30 size];
                        v143.origin.y = v59 * v60;
                        v143.size.width = v62 * v54;
                        v143.size.height = v63 * v54;
                        v143.origin.x = v56 * v57;
                        v64 = NSStringFromRect(v143);
                        [v43 setObject:v64 forKeyedSubscript:@"faceRect"];

                        [v43 setObject:v100 forKeyedSubscript:@"faceGroupID"];
                        if ([objc_opt_class() _dumpFaceprint])
                        {
                          v65 = [v30 faceClusteringProperties];
                          v66 = [v65 faceprint];
                          v67 = [v66 faceprintData];

                          v68 = [v67 base64EncodedStringWithOptions:0];
                          if (!v68)
                          {
                            if (MediaAnalysisLogLevel() >= 4)
                            {
                              v69 = MEMORY[0x1E69E9C10];
                              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 138412290;
                                v129 = @"[AutoCounter][VURawCluster]";
                                _os_log_impl(&dword_1C9B70000, v69, OS_LOG_TYPE_DEFAULT, "%@ No valid faceprint data; leave as unknown", buf, 0xCu);
                              }
                            }

                            v68 = @"unknown";
                          }

                          [v43 setObject:v68 forKeyedSubscript:@"faceprint"];
                        }

                        v70 = MEMORY[0x1E6978750];
                        v71 = [v33 localIdentifier];
                        v123 = v71;
                        v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v123 count:1];
                        v73 = [v70 fetchMomentsForAssetsWithLocalIdentifiers:v72 options:v104];

                        v74 = [v73 firstObject];
                        v75 = [v74 localIdentifier];

                        v76 = v110;
                        if (!v75)
                        {
                          if (MediaAnalysisLogLevel() < 4)
                          {
                            v75 = @"unknown";
                          }

                          else
                          {
                            v77 = MEMORY[0x1E69E9C10];
                            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412290;
                              v129 = @"[AutoCounter][VURawCluster]";
                              _os_log_impl(&dword_1C9B70000, v77, OS_LOG_TYPE_DEFAULT, "%@ No valid momentLocalIdentifier; leave as 'unknown'", buf, 0xCu);
                            }

                            v75 = @"unknown";
                            v76 = v110;
                          }
                        }

                        [v43 setObject:v75 forKeyedSubscript:@"momentIdentifier"];
                        v81 = [v30 localIdentifier];
                        if (v81)
                        {
                          [v43 setObject:v81 forKeyedSubscript:@"faceID"];
                          [v76 addObject:v43];
                          v18 = 0;
                        }

                        else if (MediaAnalysisLogLevel() < 4)
                        {
                          v18 = 9;
                        }

                        else
                        {
                          v82 = MEMORY[0x1E69E9C10];
                          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            v129 = @"[AutoCounter][VURawCluster]";
                            _os_log_impl(&dword_1C9B70000, v82, OS_LOG_TYPE_DEFAULT, "%@ Face without localIdentifier; skip", buf, 0xCu);
                          }

                          v18 = 9;
                          v27 = v92;
                        }

LABEL_83:
LABEL_84:

                        goto LABEL_85;
                      }

                      if (MediaAnalysisLogLevel() >= 7)
                      {
                        v79 = MEMORY[0x1E69E9C10];
                        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 138412802;
                          v129 = @"[AutoCounter][VURawCluster]";
                          v130 = 2112;
                          v131 = v45;
                          v132 = 2112;
                          v133 = v103;
                          _os_log_impl(&dword_1C9B70000, v79, OS_LOG_TYPE_DEBUG, "%@  Fetched face/person %@ not matching required person %@; skip", buf, 0x20u);
                        }
                      }
                    }

                    else
                    {
                      if (MediaAnalysisLogLevel() >= 4)
                      {
                        v80 = MEMORY[0x1E69E9C10];
                        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412290;
                          v129 = @"[AutoCounter][VURawCluster]";
                          _os_log_impl(&dword_1C9B70000, v80, OS_LOG_TYPE_DEFAULT, "%@ Face without personLocalIdentifier; skip", buf, 0xCu);
                        }
                      }

                      v45 = 0;
                    }

                    v18 = 9;
                    goto LABEL_83;
                  }

                  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                  {
                    v78 = [v30 localIdentifier];
                    *buf = 138412546;
                    v129 = @"[AutoCounter][VURawCluster]";
                    v130 = 2112;
                    v131 = v78;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Failed to find asset for face %@; skip", buf, 0x16u);
                  }

                  v18 = 9;
                  goto LABEL_84;
                }

                v18 = 1;
LABEL_85:
                objc_autoreleasePoolPop(v31);
                if (v18 != 9 && v18)
                {
                  goto LABEL_90;
                }

                ++v29;
              }

              while (v108 != v29);
              v28 = [v27 countByEnumeratingWithState:&v113 objects:v126 count:16];
            }

            while (v28);
          }

          v18 = 0;
LABEL_90:
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v129 = @"[AutoCounter][VURawCluster]";
            _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEBUG, "%@ Skipping raw-cluster with non visible faces", buf, 0xCu);
          }

          v18 = 3;
        }

        goto LABEL_96;
      }

      v18 = 1;
LABEL_96:
      objc_autoreleasePoolPop(context);
      if (v18 != 3 && v18)
      {
        v83 = -128;
        goto LABEL_102;
      }

      ++v97;
    }

    while (v97 != v93);
    v17 = [obj countByEnumeratingWithState:&v119 objects:v140 count:16];
  }

  while (v17);
LABEL_100:
  v83 = 0;
LABEL_102:

  return v83;
}

void __145__VCPPhotosAutoCounterWorker__processFetchedVURawCluster_forPersonLocalIdentifier_facesPerAsset_assetInformation_extendTimeoutBlock_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "value")}];
  [v4 addObject:v5];
}

- (int)exportVUGalleryClusterStates:(id *)a3 error:(id *)a4 extendTimeoutBlock:(id)a5 cancelBlock:(id)a6
{
  v50[1] = *MEMORY[0x1E69E9840];
  v35 = a5;
  v36 = a6;
  v38 = [(VUWGallery *)self->_gallery clustersFor:1];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v42 = @"[AutoCounter][ExportVUGallery]";
    v43 = 2048;
    v44 = [v38 count];
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Retrieved %lu raw-cluster", buf, 0x16u);
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __96__VCPPhotosAutoCounterWorker_exportVUGalleryClusterStates_error_extendTimeoutBlock_cancelBlock___block_invoke;
  v39[3] = &unk_1E8351150;
  v40 = @"[AutoCounter][ExportVUGallery]";
  [v38 enumerateKeysAndObjectsUsingBlock:v39];
  v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AutoCounterClustersVU_Ver%d_Detector%lu_Printer%lu_MAD%lu_VU%lu_PhotosPerson%lu.plist", -[PHPhotoLibrary mad_faceProcessingInternalVersion](self->_photoLibrary, "mad_faceProcessingInternalVersion"), self->_detectionVersion, self->_recognitionVersion, self->_madVersion, self->_vuVersion, self->_personClusterVersion];
  v9 = [(PHPhotoLibrary *)self->_photoLibrary vcp_visionCacheStorageDirectoryURL];
  v10 = [v9 URLByAppendingPathComponent:v37];

  if (v10)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v42 = @"[AutoCounter][ExportVUGallery]";
      v43 = 2112;
      v44 = v10;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Export to file-URL %@", buf, 0x16u);
    }

    v11 = [MEMORY[0x1E695DF90] dictionary];
    v12 = [MEMORY[0x1E695DF90] dictionary];
    [v11 setObject:v12 forKeyedSubscript:@"faces"];
    v13 = [MEMORY[0x1E695DF90] dictionary];
    [v11 setObject:v13 forKeyedSubscript:@"assetInformation"];
    [(VCPPhotosAutoCounterWorker *)self _processFetchedVURawCluster:v38 forPersonLocalIdentifier:0 facesPerAsset:v12 assetInformation:v13 extendTimeoutBlock:v35 cancelBlock:v36];
    v14 = [v12 allKeys];
    v15 = [v14 count] == 0;

    if (v15)
    {
      v26 = MEMORY[0x1E696ABC0];
      v47 = *MEMORY[0x1E696A578];
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to process raw-clusters", @"[AutoCounter][ExportVUGallery]"];
      v48 = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v29 = [v26 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v28];

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v30 = [v29 description];
        *buf = 138412290;
        v42 = v30;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      if (a4)
      {
        v31 = v29;
        *a4 = v29;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        clusterDumpFaceFetched = self->_clusterDumpFaceFetched;
        *buf = 138412546;
        v42 = @"[AutoCounter][ExportVUGallery]";
        v43 = 2048;
        v44 = clusterDumpFaceFetched;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Retrieved and dumpped %lu faces", buf, 0x16u);
      }

      v17 = self;
      objc_sync_enter(v17);
      v18 = [v11 writeToURL:v10 error:a4];
      objc_sync_exit(v17);

      if (!v18)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v32 = *a4;
          *buf = 138412802;
          v42 = @"[AutoCounter][ExportVUGallery]";
          v43 = 2112;
          v44 = v10;
          v45 = 2112;
          v46 = v32;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to write to %@ - %@", buf, 0x20u);
        }

        v25 = -20;
        goto LABEL_34;
      }

      if (a3)
      {
        v19 = v10;
        *a3 = v10;
      }

      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v42 = @"[AutoCounter][ExportVUGallery]";
        v43 = 2112;
        v44 = v10;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Saved cluster state to %@", buf, 0x16u);
      }
    }

    v25 = 0;
LABEL_34:

    goto LABEL_35;
  }

  v20 = MEMORY[0x1E696ABC0];
  v49 = *MEMORY[0x1E696A578];
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to retrive export file-URL", @"[AutoCounter][ExportVUGallery]"];
  v50[0] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
  v11 = [v20 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v22];

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [v11 description];
    *buf = 138412290;
    v42 = v23;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  if (a4)
  {
    v24 = v11;
    v25 = 0;
    *a4 = v11;
  }

  else
  {
    v25 = 0;
  }

LABEL_35:

  return v25;
}

void __96__VCPPhotosAutoCounterWorker_exportVUGalleryClusterStates_error_extendTimeoutBlock_cancelBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    v12 = 2048;
    v13 = [v6 count];
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ raw-cluster %@ has %lu observation(s)", &v8, 0x20u);
  }
}

- (double)_overlapRatioOf:(CGRect)a3 with:(CGRect)a4
{
  v4 = a3.size.width * a3.size.height;
  v5 = a4.size.width * a4.size.height;
  v7 = CGRectIntersection(a3, a4);
  return v7.size.width * v7.size.height / (v4 + v5 - v7.size.width * v7.size.height);
}

- (int)_parseGroundTruthWithURL:(id)a3 faceCountPerPerson:(id *)a4 personInformation:(id *)a5 faceToPerson:(id *)a6 assetToFaces:(id *)a7 extendTimeoutBlock:(id)a8 cancelBlock:(id)a9
{
  v53 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a8;
  v17 = a9;
  v31 = a4;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v33 = [MEMORY[0x1E696AB50] set];
  v32 = [MEMORY[0x1E695DF90] dictionary];
  v29 = a6;
  v30 = a5;
  v18 = [MEMORY[0x1E695DF90] dictionary];
  v19 = [MEMORY[0x1E695DF90] dictionary];
  v20 = objc_autoreleasePoolPush();
  v43 = 0;
  v44 = 0;
  v21 = [(VCPPhotosAutoCounterWorker *)self _loadGroundTruthURL:v15 toGroundTruth:&v44 error:&v43];
  v22 = v44;
  v23 = v43;
  if (v21)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v50 = @"[AutoCounter][ParseGT]";
      v51 = 2112;
      v52 = v23;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Fail to load groundtruth file: %@", buf, 0x16u);
    }
  }

  else
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __149__VCPPhotosAutoCounterWorker__parseGroundTruthWithURL_faceCountPerPerson_personInformation_faceToPerson_assetToFaces_extendTimeoutBlock_cancelBlock___block_invoke;
    v34[3] = &unk_1E83511C8;
    v35 = v32;
    v36 = @"[AutoCounter][ParseGT]";
    v40 = v17;
    v42 = &v45;
    v41 = v16;
    v37 = v19;
    v38 = v18;
    v39 = v33;
    [v22 enumerateKeysAndObjectsUsingBlock:v34];
  }

  objc_autoreleasePoolPop(v20);
  if (!v21)
  {
    v24 = v33;
    *v31 = v33;
    v25 = v32;
    *v30 = v32;
    v26 = v18;
    *v29 = v18;
    v27 = v19;
    *a7 = v19;
    v21 = *(v46 + 6);
  }

  _Block_object_dispose(&v45, 8);
  return v21;
}

void __149__VCPPhotosAutoCounterWorker__parseGroundTruthWithURL_faceCountPerPerson_personInformation_faceToPerson_assetToFaces_extendTimeoutBlock_cancelBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = [v8 objectForKeyedSubscript:@"AdditionalInformation"];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:v7];

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 40);
    v12 = [*(a1 + 32) objectForKeyedSubscript:v7];
    *buf = 138412546;
    v27 = v11;
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ person information: %@", buf, 0x16u);
  }

  v13 = [v8 objectForKeyedSubscript:@"FacesPerAsset"];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __149__VCPPhotosAutoCounterWorker__parseGroundTruthWithURL_faceCountPerPerson_personInformation_faceToPerson_assetToFaces_extendTimeoutBlock_cancelBlock___block_invoke_600;
  v17[3] = &unk_1E83511A0;
  v23 = *(a1 + 72);
  v25 = a4;
  v16 = *(a1 + 80);
  v14 = v16;
  v24 = v16;
  v18 = *(a1 + 48);
  v19 = *(a1 + 40);
  v15 = v7;
  v20 = v15;
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  [v13 enumerateKeysAndObjectsUsingBlock:v17];

  objc_autoreleasePoolPop(v9);
}

void __149__VCPPhotosAutoCounterWorker__parseGroundTruthWithURL_faceCountPerPerson_personInformation_faceToPerson_assetToFaces_extendTimeoutBlock_cancelBlock___block_invoke_600(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 72);
  if (v10 && (*(v10 + 16))())
  {
    v11 = *(a1 + 96);
    *(*(*(a1 + 88) + 8) + 24) = -128;
    *a4 = 1;
    *v11 = 1;
  }

  else
  {
    v12 = *(a1 + 80);
    if (v12)
    {
      (*(v12 + 16))();
    }

    v13 = [*(a1 + 32) allKeys];
    v14 = [v13 containsObject:v7];

    if ((v14 & 1) == 0)
    {
      v15 = [MEMORY[0x1E695DF70] array];
      [*(a1 + 32) setObject:v15 forKeyedSubscript:v7];
    }

    v16 = [*(a1 + 32) objectForKeyedSubscript:v7];
    [v16 addObjectsFromArray:v8];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __149__VCPPhotosAutoCounterWorker__parseGroundTruthWithURL_faceCountPerPerson_personInformation_faceToPerson_assetToFaces_extendTimeoutBlock_cancelBlock___block_invoke_2;
    v23[3] = &unk_1E8351178;
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    *&v21 = v19;
    *(&v21 + 1) = v20;
    *&v22 = v17;
    *(&v22 + 1) = v18;
    v24 = v22;
    v25 = v21;
    [v8 enumerateObjectsUsingBlock:v23];
  }

  objc_autoreleasePoolPop(v9);
}

void __149__VCPPhotosAutoCounterWorker__parseGroundTruthWithURL_faceCountPerPerson_personInformation_faceToPerson_assetToFaces_extendTimeoutBlock_cancelBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"faceID"];
  if (!v4)
  {
    if (MediaAnalysisLogLevel() < 4 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v13 = *(a1 + 32);
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    v18 = v3;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "%@ Invalid faceID for face: %@; ignore";
LABEL_12:
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 22;
    goto LABEL_13;
  }

  v5 = *(a1 + 40);
  v6 = [v3 objectForKeyedSubscript:@"personID"];
  LOBYTE(v5) = [v5 isEqualToString:v6];

  if ((v5 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() < 4 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v14 = *(a1 + 32);
    v15 = 138412546;
    v16 = v14;
    v17 = 2112;
    v18 = v4;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "%@ Invalid PersonID for faceID: %@; ignore";
    goto LABEL_12;
  }

  [*(a1 + 48) setObject:*(a1 + 40) forKeyedSubscript:v4];
  [*(a1 + 56) addObject:*(a1 + 40)];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v15 = 138412802;
    v16 = v7;
    v17 = 2112;
    v18 = v4;
    v19 = 2112;
    v20 = v8;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "%@ Load faceID: %@ for PersonID: %@";
    v11 = OS_LOG_TYPE_DEBUG;
    v12 = 32;
LABEL_13:
    _os_log_impl(&dword_1C9B70000, v9, v11, v10, &v15, v12);
  }

LABEL_14:
}

- (void)_exportAssetsToFacesDetails:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AutoCounterClusterAssetsToFaces_Ver%d_Detector%lu_Printer%lu_MAD%lu_VU%lu_PhotosPerson%lu.plist", -[PHPhotoLibrary mad_faceProcessingInternalVersion](self->_photoLibrary, "mad_faceProcessingInternalVersion"), self->_detectionVersion, self->_recognitionVersion, self->_madVersion, self->_vuVersion, self->_personClusterVersion];
  v6 = [(PHPhotoLibrary *)self->_photoLibrary vcp_visionCacheStorageDirectoryURL];
  v7 = [v6 URLByAppendingPathComponent:v5];

  v8 = self;
  objc_sync_enter(v8);
  v14 = 0;
  v9 = [v4 writeToURL:v7 error:&v14];
  v10 = v14;
  objc_sync_exit(v8);

  if (v9)
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v7;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "[AutoCounter] Saved assets-to-faces details to %@";
      v13 = 12;
LABEL_8:
      _os_log_impl(&dword_1C9B70000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, v13);
    }
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v7;
    v17 = 2112;
    v18 = v10;
    v11 = MEMORY[0x1E69E9C10];
    v12 = "[AutoCounter] Cannot write assets-to-faces to %@ : %@";
    v13 = 22;
    goto LABEL_8;
  }
}

- (int)_measureClusterWithClusterStateURL:(id)a3 groundTruthFaceCountPerPerson:(id)a4 groundTruthPersonInformation:(id)a5 groundTruthFaceToPerson:(id)a6 groundTruthAssetToFaces:(id)a7 measures:(id *)a8 extendTimeoutBlock:(id)a9 cancelBlock:(id)a10
{
  v216 = *MEMORY[0x1E69E9840];
  v155 = a3;
  v151 = a4;
  v166 = a5;
  v167 = a6;
  v145 = a7;
  v152 = a9;
  v156 = a10;
  v140 = a8;
  *a8 = 0;
  v148 = [MEMORY[0x1E695DF90] dictionary];
  v146 = [MEMORY[0x1E695DF90] dictionary];
  v147 = [MEMORY[0x1E695DF90] dictionary];
  v165 = [MEMORY[0x1E695DF90] dictionary];
  v16 = [MEMORY[0x1E696AC08] defaultManager];
  v17 = [v155 path];
  LODWORD(a4) = [v16 fileExistsAtPath:v17];

  if (a4 && (v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfURL:v155], (v19 = v18) != 0))
  {
    v137 = [v18 objectForKeyedSubscript:@"assetInformation"];
    v138 = v19;
    if (v137)
    {
      v203 = 0;
      v204 = &v203;
      v205 = 0x2020000000;
      v206 = 0;
      v20 = objc_autoreleasePoolPush();
      v21 = [v19 objectForKeyedSubscript:@"faces"];
      v22 = [v21 count];
      if (v22)
      {
        v23 = [MEMORY[0x1E695DF90] dictionary];
        v190[0] = MEMORY[0x1E69E9820];
        v190[1] = 3221225472;
        v190[2] = __212__VCPPhotosAutoCounterWorker__measureClusterWithClusterStateURL_groundTruthFaceCountPerPerson_groundTruthPersonInformation_groundTruthFaceToPerson_groundTruthAssetToFaces_measures_extendTimeoutBlock_cancelBlock___block_invoke;
        v190[3] = &unk_1E8351240;
        v191 = v137;
        v192 = @"[AutoCounter][P/R]";
        v193 = v145;
        v200 = v156;
        v202 = &v203;
        v201 = v152;
        v194 = self;
        v195 = v148;
        v196 = v147;
        v197 = v146;
        v198 = v165;
        v24 = v23;
        v199 = v24;
        [v21 enumerateKeysAndObjectsUsingBlock:v190];
        if ([objc_opt_class() _dumpAssetsToFaces])
        {
          [(VCPPhotosAutoCounterWorker *)self _exportAssetsToFacesDetails:v24];
        }
      }

      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v209 = @"[AutoCounter][P/R]";
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Cluster contains no data", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      if (!v22)
      {
        v25 = -18;
        goto LABEL_156;
      }

      v25 = *(v204 + 6);
      if (v25)
      {
        v27 = *(v204 + 6);
      }

      else
      {
        v27 = -18;
      }

      if (!v25)
      {
        v130 = v27;
        v135 = objc_alloc_init(VCPClusteringAccuracyMeasures);
        v139 = [MEMORY[0x1E695DF90] dictionary];
        v144 = [v148 allValues];
        v136 = [MEMORY[0x1E695DF90] dictionary];
        v153 = 0;
        v131 = 0;
        v132 = 0;
        v134 = 0.0;
        *&v28 = 138413314;
        v129 = v28;
        v29 = 0.0;
        while (1)
        {
          if (v153 >= [v144 count])
          {
LABEL_107:
            v25 = *(v204 + 6);
            if (!v25)
            {
              if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                v209 = @"[AutoCounter][P/R]";
                v210 = 2048;
                *v211 = v131;
                *&v211[8] = 2048;
                *&v211[10] = v132;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Valid singleton count = %lu, invalid singleton count = %lu", buf, 0x20u);
              }

              *&v95 = v131;
              [(VCPClusteringAccuracyMeasures *)v135 setNumSingletons:v95];
              *&v96 = v132;
              [(VCPClusteringAccuracyMeasures *)v135 setNumValidSingletons:v96];
              v172[0] = MEMORY[0x1E69E9820];
              v172[1] = 3221225472;
              v172[2] = __212__VCPPhotosAutoCounterWorker__measureClusterWithClusterStateURL_groundTruthFaceCountPerPerson_groundTruthPersonInformation_groundTruthFaceToPerson_groundTruthAssetToFaces_measures_extendTimeoutBlock_cancelBlock___block_invoke_635;
              v172[3] = &unk_1E834DF68;
              v173 = @"[AutoCounter][P/R]";
              [v136 enumerateKeysAndObjectsUsingBlock:v172];
              v158 = [v151 allObjects];
              v164 = 0;
              v97 = 0.0;
              v98 = 0.0;
              v99 = 0.0;
              v100 = 0.0;
              while (v164 < [v158 count])
              {
                v160 = objc_autoreleasePoolPush();
                if (v156 && (v156[2]() & 1) != 0)
                {
                  v101 = 0;
                  v130 = -128;
                }

                else
                {
                  if (v152)
                  {
                    v152[2]();
                  }

                  v102 = [v158 objectAtIndexedSubscript:v164];
                  v154 = [v151 countForObject:v102];
                  v103 = [v136 objectForKeyedSubscript:v102];
                  obja = [v103 unsignedIntValue];

                  v104 = [v139 objectForKeyedSubscript:v102];
                  v170 = 0u;
                  v171 = 0u;
                  v168 = 0u;
                  v169 = 0u;
                  v150 = v104;
                  v105 = [v104 allObjects];
                  v106 = 0;
                  v107 = [v105 countByEnumeratingWithState:&v168 objects:v207 count:16];
                  if (v107)
                  {
                    v108 = *v169;
                    do
                    {
                      for (i = 0; i != v107; ++i)
                      {
                        if (*v169 != v108)
                        {
                          objc_enumerationMutation(v105);
                        }

                        v110 = *(*(&v168 + 1) + 8 * i);
                        v111 = [v167 objectForKeyedSubscript:v110];
                        v112 = v111 == v102;

                        if (v112)
                        {
                          v113 = [v166 objectForKeyedSubscript:v102];
                          v114 = [v113 objectForKeyedSubscript:@"OptInDateSinceReferenceDate"];
                          [v114 doubleValue];
                          v116 = v115;

                          v117 = [v165 objectForKeyedSubscript:v110];
                          v118 = v117;
                          if (v117)
                          {
                            [v117 doubleValue];
                            if (v116 > v119)
                            {
                              ++v106;
                            }
                          }
                        }
                      }

                      v107 = [v105 countByEnumeratingWithState:&v168 objects:v207 count:16];
                    }

                    while (v107);
                  }

                  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                  {
                    *buf = 138413058;
                    v209 = @"[AutoCounter][P/R]";
                    v210 = 2112;
                    *v211 = v102;
                    *&v211[8] = 2048;
                    *&v211[10] = v154;
                    *&v211[18] = 2048;
                    *&v211[20] = (v106 / v154);
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ personID %@ Recall (of size %lu) is %f", buf, 0x2Au);
                  }

                  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                  {
                    *buf = 138413058;
                    v209 = @"[AutoCounter][P/R]";
                    v210 = 2112;
                    *v211 = v102;
                    *&v211[8] = 2048;
                    *&v211[10] = obja;
                    *&v211[18] = 2048;
                    *&v211[20] = (v106 / obja);
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ personID %@ Recall (exclude detection miss) (of size %lu) is %f", buf, 0x2Au);
                  }

                  *&v120 = v106 / v154;
                  [(VCPClusteringAccuracyMeasures *)v135 addIdentityRecallToGroundTruth:v102 forPersonID:v106 personFaceCount:v120 identitySize:?];
                  *&v121 = v106 / obja;
                  [(VCPClusteringAccuracyMeasures *)v135 addIdentityRecallExcludeMissDetection:v102 forPersonID:v106 personFaceCount:obja identitySize:v121];

                  v100 = v100 + v106;
                  v98 = v98 + v106;
                  v99 = v99 + v154;
                  v101 = 1;
                  v97 = v97 + obja;
                }

                objc_autoreleasePoolPop(v160);
                ++v164;
                if ((v101 & 1) == 0)
                {
                  goto LABEL_154;
                }
              }

              if (v134 <= 0.0)
              {
                v122 = 0.0;
              }

              else
              {
                v122 = v29 / v134;
              }

              if (v99 <= 0.0)
              {
                v123 = 0.0;
              }

              else
              {
                v123 = v100 / v99;
              }

              v124 = 0.0;
              if (v97 > 0.0)
              {
                v124 = (v98 / v97);
              }

              if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138413058;
                v209 = @"[AutoCounter][P/R]";
                v210 = 2048;
                *v211 = v122;
                *&v211[8] = 2048;
                *&v211[10] = v123;
                *&v211[18] = 2048;
                *&v211[20] = v99;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Weighted Precision: %f, Weighted Recall: %f (number of best face: %.0f)", buf, 0x2Au);
              }

              if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v209 = @"[AutoCounter][P/R]";
                v210 = 2048;
                *v211 = v124;
                *&v211[8] = 2048;
                *&v211[10] = v97;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Weighted Recall (exclude detection miss): %f (number of best face: %.0f)", buf, 0x20u);
              }

              *&v125 = v123;
              [(VCPClusteringAccuracyMeasures *)v135 setWeightedAverageRecall:v125];
              *&v126 = v122;
              [(VCPClusteringAccuracyMeasures *)v135 setWeightedAveragePrecision:v126];
              v127 = v135;
              v130 = 0;
              *v140 = v135;
LABEL_154:

              v25 = v130;
            }

            goto LABEL_156;
          }

          context = objc_autoreleasePoolPush();
          v149 = [v144 objectAtIndexedSubscript:v153];
          if (!v156 || !v156[2]())
          {
            break;
          }

          *(v204 + 6) = -128;
          v30 = 16;
LABEL_103:

          objc_autoreleasePoolPop(context);
          if (v30 != 18 && v30)
          {
            goto LABEL_107;
          }

          ++v153;
        }

        if (v152)
        {
          v152[2]();
        }

        v31 = [MEMORY[0x1E696AB50] set];
        v188 = 0u;
        v189 = 0u;
        v186 = 0u;
        v187 = 0u;
        v32 = v149;
        v33 = [v32 countByEnumeratingWithState:&v186 objects:v215 count:16];
        if (v33)
        {
          v34 = *v187;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v187 != v34)
              {
                objc_enumerationMutation(v32);
              }

              v36 = *(*(&v186 + 1) + 8 * j);
              v37 = [v167 objectForKeyedSubscript:v36];
              if (v37)
              {
                v38 = [v166 objectForKeyedSubscript:v37];
                v39 = [v38 objectForKeyedSubscript:@"OptInDateSinceReferenceDate"];
                [v39 doubleValue];
                v41 = v40;

                v42 = [v165 objectForKeyedSubscript:v36];
                v43 = v42;
                if (v42)
                {
                  [v42 doubleValue];
                  if (v41 > v44)
                  {
                    [v31 addObject:v37];
                  }
                }
              }

              else
              {
                [v31 addObject:@"Unknown"];
              }
            }

            v33 = [v32 countByEnumeratingWithState:&v186 objects:v215 count:16];
          }

          while (v33);
        }

        v184 = 0u;
        v185 = 0u;
        v182 = 0u;
        v183 = 0u;
        v45 = [v31 allObjects];
        v46 = 0;
        v47 = [v45 countByEnumeratingWithState:&v182 objects:v214 count:16];
        if (v47)
        {
          v163 = 0;
          v48 = *v183;
          do
          {
            for (k = 0; k != v47; ++k)
            {
              if (*v183 != v48)
              {
                objc_enumerationMutation(v45);
              }

              v50 = *(*(&v182 + 1) + 8 * k);
              if (([v50 isEqualToString:@"Unknown"] & 1) == 0)
              {
                v51 = [v31 countForObject:v50];
                if (v51 > v46)
                {
                  v52 = v50;

                  v46 = v51;
                  v163 = v52;
                }
              }
            }

            v47 = [v45 countByEnumeratingWithState:&v182 objects:v214 count:16];
          }

          while (v47);
        }

        else
        {
          v163 = 0;
        }

        v141 = [v166 objectForKeyedSubscript:v163];
        v142 = [v141 objectForKeyedSubscript:@"OptInDateSinceReferenceDate"];
        v30 = 18;
        if (v163)
        {
          if (!v142)
          {
            v84 = 0;
LABEL_102:

            goto LABEL_103;
          }

          [v142 doubleValue];
          v54 = v53;
          v180 = 0u;
          v181 = 0u;
          v178 = 0u;
          v179 = 0u;
          obj = v32;
          v55 = 0;
          v56 = [obj countByEnumeratingWithState:&v178 objects:v213 count:16];
          if (v56)
          {
            v57 = *v179;
            do
            {
              for (m = 0; m != v56; ++m)
              {
                if (*v179 != v57)
                {
                  objc_enumerationMutation(obj);
                }

                v59 = *(*(&v178 + 1) + 8 * m);
                v60 = [v167 objectForKeyedSubscript:v59];
                if (v60)
                {
                  v61 = [v166 objectForKeyedSubscript:v60];
                  v62 = [v61 objectForKeyedSubscript:@"OptInDateSinceReferenceDate"];
                  [v62 doubleValue];
                  v64 = v63;

                  if (v64 <= v54 + 21600.0)
                  {
                    v65 = [v165 objectForKeyedSubscript:v59];
                    v66 = v65;
                    if (v65)
                    {
                      [v65 doubleValue];
                      if (v67 > v54)
                      {
                        ++v55;
                      }
                    }
                  }

                  else
                  {
                    ++v55;
                  }
                }
              }

              v56 = [obj countByEnumeratingWithState:&v178 objects:v213 count:16];
            }

            while (v56);
          }

          v68 = [v139 allKeys];
          v69 = [v68 containsObject:v163];

          if (v69)
          {
            v70 = [v139 objectForKeyedSubscript:v163];
            v176 = 0u;
            v177 = 0u;
            v174 = 0u;
            v175 = 0u;
            v133 = v70;
            v71 = [v70 allObjects];
            v159 = v71;
            v72 = [v71 countByEnumeratingWithState:&v174 objects:v212 count:16];
            if (v72)
            {
              v157 = 0;
              v73 = *v175;
              do
              {
                for (n = 0; n != v72; ++n)
                {
                  if (*v175 != v73)
                  {
                    objc_enumerationMutation(v159);
                  }

                  v75 = *(*(&v174 + 1) + 8 * n);
                  v76 = [v167 objectForKeyedSubscript:v75];
                  if ([v76 isEqualToString:v163])
                  {
                    v77 = [v166 objectForKeyedSubscript:v76];
                    v78 = [v77 objectForKeyedSubscript:@"OptInDateSinceReferenceDate"];
                    [v78 doubleValue];
                    v80 = v79;

                    v81 = [v165 objectForKeyedSubscript:v75];
                    v82 = v81;
                    if (v81)
                    {
                      [v81 doubleValue];
                      if (v80 > v83)
                      {
                        ++v157;
                      }
                    }
                  }
                }

                v71 = v159;
                v72 = [v159 countByEnumeratingWithState:&v174 objects:v212 count:16];
              }

              while (v72);
            }

            else
            {
              v157 = 0;
            }

            if (v46 > v157)
            {
              [v139 setObject:obj forKeyedSubscript:v163];
            }
          }

          else
          {
            [v139 setObject:obj forKeyedSubscript:v163];
          }

          v85 = [obj allObjects];
          v86 = [v85 count];
          v87 = [v31 countForObject:@"Unknown"];

          v88 = (v86 - v55 - v87);
          if (v88 < 1)
          {
            v30 = 0;
            ++v132;
          }

          else
          {
            v89 = MEMORY[0x1E696AD98];
            v90 = [v136 objectForKeyedSubscript:v163];
            v91 = [v89 numberWithUnsignedInteger:{v46 + objc_msgSend(v90, "intValue")}];
            [v136 setObject:v91 forKeyedSubscript:v163];

            v29 = v29 + v46;
            v134 = v134 + v88;
            if (v88 != 1)
            {
              v84 = v142;
              v92 = [v151 countForObject:v163];
              if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
              {
                *buf = v129;
                v209 = @"[AutoCounter][P/R]";
                v210 = 1024;
                *v211 = v88;
                *&v211[4] = 2112;
                *&v211[6] = v163;
                *&v211[14] = 2048;
                *&v211[16] = v92;
                *&v211[24] = 2048;
                *&v211[26] = (v46 / v88);
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Precision for FaceGroup (of size %d) for personID %@ (of size %lu) is %f", buf, 0x30u);
              }

              v93 = [v151 countForObject:v163];
              *&v94 = v46 / v88;
              [(VCPClusteringAccuracyMeasures *)v135 addClusterPrecision:v163 forPersonID:v46 personFaceCount:v88 validFaceCount:v93 identitySize:v94];
              v30 = 0;
              goto LABEL_102;
            }

            v30 = 0;
            ++v131;
          }
        }

        v84 = v142;
        goto LABEL_102;
      }

LABEL_156:
      _Block_object_dispose(&v203, 8);
      v26 = v137;
    }

    else
    {
      v26 = 0;
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v209 = @"[AutoCounter][P/R]";
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Cluster contains no asset information", buf, 0xCu);
      }

      v25 = -50;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v209 = @"[AutoCounter][P/R]";
      v210 = 2112;
      *v211 = v155;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Fail to load cluster state file: %@", buf, 0x16u);
    }

    v25 = -50;
  }

  return v25;
}

void __212__VCPPhotosAutoCounterWorker__measureClusterWithClusterStateURL_groundTruthFaceCountPerPerson_groundTruthPersonInformation_groundTruthFaceToPerson_groundTruthAssetToFaces_measures_extendTimeoutBlock_cancelBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = objc_autoreleasePoolPush();
  v11 = [*(a1 + 32) objectForKeyedSubscript:v7];
  v12 = v11;
  if (v11 && ([v11 objectForKeyedSubscript:@"AddedDate"], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = [*(a1 + 48) objectForKeyedSubscript:v7];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __212__VCPPhotosAutoCounterWorker__measureClusterWithClusterStateURL_groundTruthFaceCountPerPerson_groundTruthPersonInformation_groundTruthFaceToPerson_groundTruthAssetToFaces_measures_extendTimeoutBlock_cancelBlock___block_invoke_610;
    v34[3] = &unk_1E8351218;
    v43 = *(a1 + 104);
    v45 = a4;
    v33 = *(a1 + 112);
    v15 = v33;
    v44 = v33;
    v35 = *(a1 + 40);
    v36 = v14;
    v37 = *(a1 + 56);
    v38 = v7;
    v39 = v9;
    v16 = *(a1 + 64);
    v17 = *(a1 + 72);
    v18 = *(a1 + 80);
    v19 = *(a1 + 88);
    *&v20 = v18;
    *(&v20 + 1) = v19;
    *&v21 = v16;
    *(&v21 + 1) = v17;
    v40 = v21;
    v41 = v20;
    v42 = v12;
    v22 = v14;
    [v8 enumerateObjectsUsingBlock:v34];

    v23 = 0;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 40);
      *buf = 138412546;
      v48 = v24;
      v49 = 2112;
      v50 = v7;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Invalid information for asset %@ in cluster; ignore", buf, 0x16u);
    }

    v23 = 1;
  }

  objc_autoreleasePoolPop(v10);
  if ((v23 & 1) == 0 && [objc_opt_class() _dumpAssetsToFaces])
  {
    v25 = [MEMORY[0x1E6978628] vcp_fetchOptionsForLibrary:*(*(a1 + 56) + 8) forTaskID:3];
    v26 = MEMORY[0x1E6978628];
    v46 = v7;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
    v28 = [v26 fetchAssetsWithLocalIdentifiers:v27 options:v25];
    v29 = [v28 firstObject];

    if (v29)
    {
      v30 = *(a1 + 96);
      v31 = [v29 originalFilename];
      [v30 setObject:v9 forKeyedSubscript:v31];
    }

    else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v32 = *(a1 + 40);
      *buf = 138412546;
      v48 = v32;
      v49 = 2112;
      v50 = v7;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Cannot find asset for id %@", buf, 0x16u);
    }
  }
}

void __212__VCPPhotosAutoCounterWorker__measureClusterWithClusterStateURL_groundTruthFaceCountPerPerson_groundTruthPersonInformation_groundTruthFaceToPerson_groundTruthAssetToFaces_measures_extendTimeoutBlock_cancelBlock___block_invoke_610(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 112);
  if (!v8 || !(*(v8 + 16))())
  {
    v9 = *(a1 + 120);
    if (v9)
    {
      (*(v9 + 16))();
    }

    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__61;
    v55 = __Block_byref_object_dispose__61;
    v56 = [v6 objectForKeyedSubscript:@"faceID"];
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__61;
    v49 = __Block_byref_object_dispose__61;
    v50 = [v6 objectForKeyedSubscript:@"faceGroupID"];
    v10 = [v6 objectForKeyedSubscript:@"personID"];
    v11 = v10;
    if (v52[5] && v46[5] && v10)
    {
      v12 = [v6 objectForKeyedSubscript:@"faceRect"];
      v64 = NSRectFromString(v12);
      x = v64.origin.x;
      y = v64.origin.y;
      width = v64.size.width;
      height = v64.size.height;

      v65.origin.x = x;
      v65.origin.y = y;
      v65.size.width = width;
      v65.size.height = height;
      if (!CGRectIsEmpty(v65))
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v22 = *(a1 + 32);
          v23 = v52[5];
          *buf = 138412802;
          v58 = v22;
          v59 = 2112;
          v60 = v23;
          v61 = 2112;
          v62 = v11;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ processing cluster state faceID: %@ forPersonID: %@", buf, 0x20u);
        }

        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __212__VCPPhotosAutoCounterWorker__measureClusterWithClusterStateURL_groundTruthFaceCountPerPerson_groundTruthPersonInformation_groundTruthFaceToPerson_groundTruthAssetToFaces_measures_extendTimeoutBlock_cancelBlock___block_invoke_611;
        v33[3] = &unk_1E83511F0;
        v39 = &v51;
        v24 = *(a1 + 40);
        v25 = *(a1 + 32);
        v26 = *(a1 + 48);
        v27 = *(a1 + 56);
        v34 = v25;
        v35 = v26;
        v41 = x;
        v42 = y;
        v43 = width;
        v44 = height;
        v36 = v27;
        v37 = v6;
        v38 = *(a1 + 64);
        v40 = &v45;
        [v24 enumerateObjectsUsingBlock:v33];
        v28 = [*(a1 + 72) allKeys];
        v29 = [v28 containsObject:v46[5]];

        if ((v29 & 1) == 0)
        {
          v30 = [MEMORY[0x1E695DFA8] set];
          [*(a1 + 72) setObject:v30 forKeyedSubscript:v46[5]];
        }

        v31 = [*(a1 + 72) objectForKeyedSubscript:v46[5]];
        [v31 addObject:v52[5]];

        [*(a1 + 80) setObject:*(a1 + 56) forKeyedSubscript:v52[5]];
        [*(a1 + 88) setObject:v11 forKeyedSubscript:v52[5]];
        v32 = [*(a1 + 104) objectForKeyedSubscript:@"AddedDate"];
        [*(a1 + 96) setObject:v32 forKeyedSubscript:v52[5]];

        goto LABEL_23;
      }

      if (MediaAnalysisLogLevel() < 4 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
LABEL_23:

        _Block_object_dispose(&v45, 8);
        _Block_object_dispose(&v51, 8);

        goto LABEL_24;
      }

      v17 = *(a1 + 32);
      v18 = v52[5];
      *buf = 138412546;
      v58 = v17;
      v59 = 2112;
      v60 = v18;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "%@ Invalid face rectangle in cluster state for faceID:%@; ignore";
    }

    else
    {
      if (MediaAnalysisLogLevel() < 4 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v21 = *(a1 + 32);
      *buf = 138412546;
      v58 = v21;
      v59 = 2112;
      v60 = v6;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "%@ Invalid ID(s) in cluster: %@; ignore";
    }

    _os_log_impl(&dword_1C9B70000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0x16u);
    goto LABEL_23;
  }

  *(*(*(a1 + 128) + 8) + 24) = -128;
  *a4 = 1;
  **(a1 + 136) = 1;
LABEL_24:
  objc_autoreleasePoolPop(v7);
}

void __212__VCPPhotosAutoCounterWorker__measureClusterWithClusterStateURL_groundTruthFaceCountPerPerson_groundTruthPersonInformation_groundTruthFaceToPerson_groundTruthAssetToFaces_measures_extendTimeoutBlock_cancelBlock___block_invoke_611(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = objc_autoreleasePoolPush();
  v8 = [v6 objectForKeyedSubscript:@"faceID"];
  v9 = [v6 objectForKeyedSubscript:@"personID"];
  if ([*(*(*(a1 + 72) + 8) + 40) isEqualToString:v8])
  {
    *a4 = 1;
  }

  else
  {
    v10 = [v6 objectForKeyedSubscript:@"faceRect"];
    v49 = NSRectFromString(v10);
    x = v49.origin.x;
    y = v49.origin.y;
    width = v49.size.width;
    height = v49.size.height;

    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    if (CGRectIsEmpty(v50))
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        *buf = 138412546;
        v35 = v15;
        v36 = 2112;
        v37 = v8;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Invalid ground truth rect for faceID:%@", buf, 0x16u);
      }
    }

    else
    {
      [*(a1 + 40) _overlapRatioOf:*(a1 + 88) with:{*(a1 + 96), *(a1 + 104), *(a1 + 112), x, y, width, height}];
      v17 = v16;
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v18 = *(a1 + 32);
        v19 = *(a1 + 48);
        v30 = [*(a1 + 56) objectForKeyedSubscript:@"faceRect"];
        v20 = [v6 objectForKeyedSubscript:@"faceRect"];
        *buf = 138413826;
        v35 = v18;
        v36 = 2112;
        v37 = v19;
        v38 = 2048;
        v39 = v17;
        v40 = 2112;
        v41 = v30;
        v42 = 2112;
        v43 = v20;
        v44 = 2112;
        v45 = v8;
        v46 = 2112;
        v47 = v9;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@[%@] %.4f library: %@, gt: %@ (fid:%@, pid:%@)", buf, 0x48u);
      }

      if (v17 > 0.3)
      {
        v21 = *(*(*(a1 + 72) + 8) + 40);
        v32[0] = @"phFaceID";
        v32[1] = @"gtFaceID";
        v33[0] = v21;
        v33[1] = v8;
        v33[2] = v9;
        v32[2] = @"gtPersonID";
        v32[3] = @"centerX";
        v22 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMidX(*(a1 + 88))];
        v33[3] = v22;
        v32[4] = @"centerY";
        v23 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMidY(*(a1 + 88))];
        v33[4] = v23;
        v32[5] = @"size";
        v24 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 104)];
        v33[5] = v24;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:6];

        [*(a1 + 64) addObject:v25];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v29 = *(*(*(a1 + 72) + 8) + 40);
          v31 = *(a1 + 32);
          v28 = *(*(*(a1 + 80) + 8) + 40);
          v26 = [v6 objectForKeyedSubscript:@"faceID"];
          v27 = [v6 objectForKeyedSubscript:@"faceGroupID"];
          *buf = 138413314;
          v35 = v31;
          v36 = 2112;
          v37 = v29;
          v38 = 2112;
          v39 = v28;
          v40 = 2112;
          v41 = v26;
          v42 = 2112;
          v43 = v27;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Co-location mapping faceID:faceGroupID %@:%@ -> %@:%@", buf, 0x34u);
        }

        objc_storeStrong((*(*(a1 + 72) + 8) + 40), v8);
        *a4 = 1;
      }
    }
  }

  objc_autoreleasePoolPop(v7);
}

void __212__VCPPhotosAutoCounterWorker__measureClusterWithClusterStateURL_groundTruthFaceCountPerPerson_groundTruthPersonInformation_groundTruthFaceToPerson_groundTruthAssetToFaces_measures_extendTimeoutBlock_cancelBlock___block_invoke_635(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    v12 = 1024;
    v13 = [v6 intValue];
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Valid face count for person %@ is %d", &v8, 0x1Cu);
  }
}

- (int)_measurePNPersonClusters:(id)a3 groundTruthFaceCountPerPerson:(id)a4 groundTruthPersonInformation:(id)a5 groundTruthFaceToPerson:(id)a6 groundTruthAssetToFaces:(id)a7 measures:(id *)a8 extendTimeoutBlock:(id)a9 cancelBlock:(id)a10
{
  v197[1] = *MEMORY[0x1E69E9840];
  v118 = a3;
  v116 = a4;
  v117 = a5;
  v15 = a6;
  v122 = a7;
  v134 = a9;
  v137 = a10;
  v114 = a8;
  v115 = v15;
  *a8 = 0;
  v127 = [MEMORY[0x1E695DF90] dictionary];
  v126 = [MEMORY[0x1E695DF90] dictionary];
  v124 = [MEMORY[0x1E695DF90] dictionary];
  v128 = [MEMORY[0x1E6978628] vcp_fetchOptionsForLibrary:self->_photoLibrary forTaskID:3];
  v197[0] = *MEMORY[0x1E6978C28];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v197 count:1];
  [v128 addFetchPropertySets:v16];

  v120 = [v118 allObjects];
  for (i = 0; i < [v120 count]; ++i)
  {
    context = objc_autoreleasePoolPush();
    v129 = [v120 objectAtIndexedSubscript:i];
    v17 = [MEMORY[0x1E695DF90] dictionary];
    v18 = [v129 localIdentifier];
    [v127 setObject:v17 forKeyedSubscript:v18];

    v19 = [MEMORY[0x1E695DFA8] set];
    v20 = [v129 fetchFaces];
    v180 = 0u;
    v181 = 0u;
    v178 = 0u;
    v179 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v178 objects:v196 count:16];
    if (v22)
    {
      v23 = *v179;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v179 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v178 + 1) + 8 * j);
          v26 = objc_autoreleasePoolPush();
          v27 = [v25 personLocalIdentifier];
          v28 = v27 == 0;

          if (!v28)
          {
            v29 = [v25 personLocalIdentifier];
            [v19 addObject:v29];
          }

          objc_autoreleasePoolPop(v26);
        }

        v22 = [v21 countByEnumeratingWithState:&v178 objects:v196 count:16];
      }

      while (v22);
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v30 = [v129 localIdentifier];
      v31 = [v21 count];
      *buf = 138412546;
      *&buf[4] = v30;
      *&buf[12] = 2048;
      *&buf[14] = v31;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[AutoCounter][P/R][PV] Processing person cluster %@ with %lu faces", buf, 0x16u);
    }

    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    obj = v21;
    v32 = [obj countByEnumeratingWithState:&v174 objects:v195 count:16];
    if (v32)
    {
      v131 = *v175;
LABEL_17:
      v33 = 0;
      v132 = v32;
      while (1)
      {
        if (*v175 != v131)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v174 + 1) + 8 * v33);
        v35 = objc_autoreleasePoolPush();
        if (v137 && (v137[2]() & 1) != 0)
        {
          v36 = 1;
        }

        else
        {
          if (v134)
          {
            v134[2]();
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v192 = __Block_byref_object_copy__61;
          v193 = __Block_byref_object_dispose__61;
          v194 = [v34 personLocalIdentifier];
          v168 = 0;
          v169 = &v168;
          v170 = 0x3032000000;
          v171 = __Block_byref_object_copy__61;
          v172 = __Block_byref_object_dispose__61;
          v173 = [v34 localIdentifier];
          if (*(v169 + 5))
          {
            v37 = MEMORY[0x1E6978628];
            v190 = v34;
            v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v190 count:1];
            v135 = [v37 fetchAssetsForFaces:v38 options:v128];

            if ([v135 count])
            {
              v39 = [v135 firstObject];
              v40 = [v39 cloudIdentifier];
              if (!v40)
              {
                if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                {
                  v41 = [v39 localIdentifier];
                  *v188 = 138412290;
                  *&v188[4] = v41;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[AutoCounter][P/R][PV] Asset without cloudIdentifier, use localIdentifier: %@", v188, 0xCu);
                }

                v40 = [v39 localIdentifier];
              }

              v42 = [v39 pixelWidth];
              v43 = [v39 pixelHeight];
              v44 = v42 <= v43 ? v43 : v42;
              [v34 centerX];
              v46 = v45;
              v47 = [v39 pixelWidth];
              [v34 centerY];
              v49 = v48;
              v50 = [v39 pixelHeight];
              [v34 size];
              v52 = v51;
              [v34 size];
              v53 = v46 * v47;
              v54 = v49 * v50;
              v55 = v52 * v44;
              v57 = v56 * v44;
              v198.origin.x = v53;
              v198.origin.y = v54;
              v198.size.width = v55;
              v198.size.height = v57;
              if (CGRectIsEmpty(v198))
              {
                if (MediaAnalysisLogLevel() >= 4)
                {
                  v58 = MEMORY[0x1E69E9C10];
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                  {
                    v59 = *(v169 + 5);
                    *v188 = 138412290;
                    *&v188[4] = v59;
                    _os_log_impl(&dword_1C9B70000, v58, OS_LOG_TYPE_DEFAULT, "[AutoCounter][P/R][PV] Invalid face rectangle in person cluster state for face: %@; ignore", v188, 0xCu);
                  }
                }

                v36 = 10;
              }

              else
              {
                if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                {
                  v63 = *(v169 + 5);
                  v64 = [v34 personLocalIdentifier];
                  v65 = [v129 localIdentifier];
                  *v188 = 138412802;
                  *&v188[4] = v63;
                  *&v188[12] = 2112;
                  *&v188[14] = v64;
                  *&v188[22] = 2112;
                  v189 = v65;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[AutoCounter][P/R][PV] processing person cluster faceID: %@ for PersonID: %@ and clusterID: %@", v188, 0x20u);
                }

                v66 = [v122 objectForKeyedSubscript:v40];
                v159[0] = MEMORY[0x1E69E9820];
                v159[1] = 3221225472;
                v159[2] = __202__VCPPhotosAutoCounterWorker__measurePNPersonClusters_groundTruthFaceCountPerPerson_groundTruthPersonInformation_groundTruthFaceToPerson_groundTruthAssetToFaces_measures_extendTimeoutBlock_cancelBlock___block_invoke;
                v159[3] = &unk_1E8351268;
                v162 = &v168;
                v67 = v19;
                v163 = buf;
                v160 = v67;
                v161 = self;
                v164 = v53;
                v165 = v54;
                v166 = v55;
                v167 = v57;
                v125 = v66;
                [v66 enumerateObjectsUsingBlock:v159];
                v68 = [v129 localIdentifier];
                v69 = [v127 objectForKeyedSubscript:v68];
                v70 = [v69 allKeys];
                v71 = [v70 containsObject:*(*&buf[8] + 40)];

                if ((v71 & 1) == 0)
                {
                  v72 = [MEMORY[0x1E695DFA8] set];
                  v73 = [v129 localIdentifier];
                  v74 = [v127 objectForKeyedSubscript:v73];
                  [v74 setObject:v72 forKeyedSubscript:*(*&buf[8] + 40)];
                }

                v75 = [v129 localIdentifier];
                v76 = [v127 objectForKeyedSubscript:v75];
                v77 = [v76 objectForKeyedSubscript:*(*&buf[8] + 40)];
                [v77 addObject:*(v169 + 5)];

                v78 = [v126 allKeys];
                LOBYTE(v76) = [v78 containsObject:*(*&buf[8] + 40)];

                if ((v76 & 1) == 0)
                {
                  v79 = [MEMORY[0x1E695DFA8] set];
                  [v126 setObject:v79 forKeyedSubscript:*(*&buf[8] + 40)];
                }

                v80 = [v126 objectForKeyedSubscript:*(*&buf[8] + 40)];
                [v80 addObject:v40];

                v81 = MEMORY[0x1E696AD98];
                v82 = [v39 curationProperties];
                v83 = [v82 addedDate];
                [v83 timeIntervalSinceReferenceDate];
                v84 = [v81 numberWithDouble:?];
                [v124 setObject:v84 forKeyedSubscript:*(v169 + 5)];

                v36 = 0;
              }
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 4)
              {
                v61 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  v62 = *(v169 + 5);
                  *v188 = 138412290;
                  *&v188[4] = v62;
                  _os_log_impl(&dword_1C9B70000, v61, OS_LOG_TYPE_DEFAULT, "[AutoCounter][P/R][PV] Failed to fetch asset for face %@; ignore", v188, 0xCu);
                }
              }

              v36 = 10;
            }
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 4)
            {
              v60 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                *v188 = 138412290;
                *&v188[4] = v34;
                _os_log_impl(&dword_1C9B70000, v60, OS_LOG_TYPE_DEFAULT, "[AutoCounter][P/R][PV] Invalid faceID in person cluster: %@; ignore", v188, 0xCu);
              }
            }

            v36 = 10;
          }

          _Block_object_dispose(&v168, 8);

          _Block_object_dispose(buf, 8);
        }

        objc_autoreleasePoolPop(v35);
        if (v36 != 10)
        {
          if (v36)
          {
            break;
          }
        }

        if (v132 == ++v33)
        {
          v32 = [obj countByEnumeratingWithState:&v174 objects:v195 count:16];
          if (v32)
          {
            goto LABEL_17;
          }

          goto LABEL_63;
        }
      }
    }

    else
    {
LABEL_63:
      v36 = 0;
    }

    objc_autoreleasePoolPop(context);
    if (v36)
    {
      v105 = -128;
      goto LABEL_95;
    }
  }

  v85 = objc_alloc_init(VCPClusteringAccuracyMeasures);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LODWORD(v192) = 0;
  v168 = 0;
  v169 = &v168;
  v170 = 0x2020000000;
  LODWORD(v171) = 0;
  *v188 = 0;
  *&v188[8] = v188;
  *&v188[16] = 0x2020000000;
  v189 = 0;
  v155 = 0;
  v156 = &v155;
  v157 = 0x2020000000;
  v158 = 0;
  v151 = 0;
  v152 = &v151;
  v153 = 0x2020000000;
  v154 = 0;
  v86 = [MEMORY[0x1E695DF90] dictionary];
  v138[0] = MEMORY[0x1E69E9820];
  v138[1] = 3221225472;
  v138[2] = __202__VCPPhotosAutoCounterWorker__measurePNPersonClusters_groundTruthFaceCountPerPerson_groundTruthPersonInformation_groundTruthFaceToPerson_groundTruthAssetToFaces_measures_extendTimeoutBlock_cancelBlock___block_invoke_637;
  v138[3] = &unk_1E8351308;
  v87 = v137;
  v144 = v87;
  v146 = &v151;
  v133 = v134;
  v145 = v133;
  v139 = v117;
  v140 = v124;
  v136 = v86;
  v141 = v136;
  v147 = buf;
  v148 = &v168;
  v88 = v116;
  v142 = v88;
  v89 = v85;
  v143 = v89;
  v149 = v188;
  v150 = &v155;
  [v127 enumerateKeysAndObjectsUsingBlock:v138];
  v105 = *(v152 + 6);
  if (!v105)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v91 = *(*&v188[8] + 24);
      v92 = v156[3];
      *v182 = 134218240;
      v183 = v91;
      v184 = 2048;
      v185 = v92;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[AutoCounter][P/R][PV] Valid singleton count = %lu, invalid singleton count = %lu", v182, 0x16u);
    }

    *&v90 = *(*&v188[8] + 24);
    [(VCPClusteringAccuracyMeasures *)v89 setNumSingletons:v90];
    *&v93 = *(v156 + 3);
    [(VCPClusteringAccuracyMeasures *)v89 setNumValidSingletons:v93];
    v94 = [v88 allObjects];
    v95 = 0;
    v96 = 0.0;
    v97 = 0.0;
    while (v95 < [v94 count])
    {
      v98 = objc_autoreleasePoolPush();
      if (v137 && ((v137[2])(v87) & 1) != 0)
      {
        v99 = 0;
      }

      else
      {
        if (v134)
        {
          (v134[2])(v133);
        }

        [v94 objectAtIndexedSubscript:v95];
        v100 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v101 = COERCE_DOUBLE([v88 countForObject:*&v100]);
        v102 = [v136 objectForKeyedSubscript:*&v100];
        v103 = [v102 unsignedIntValue];

        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *v182 = 138412802;
          v183 = v100;
          v184 = 2048;
          v185 = v101;
          v186 = 2048;
          v187 = (v103 / *&v101);
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[AutoCounter][P/R][PV] Recall for personID %@ (of size %lu) is %f", v182, 0x20u);
        }

        *&v104 = v103 / *&v101;
        [(VCPClusteringAccuracyMeasures *)v89 addIdentityRecallToGroundTruth:*&v100 forPersonID:v103 personFaceCount:*&v101 identitySize:v104];

        v97 = v97 + v103;
        v96 = v96 + *&v101;
        v99 = 1;
      }

      objc_autoreleasePoolPop(v98);
      ++v95;
      if ((v99 & 1) == 0)
      {
        v105 = -128;
        goto LABEL_93;
      }
    }

    v106 = v169[6];
    v107 = 0.0;
    if (v106 > 0.0)
    {
      v107 = *(*&buf[8] + 24) / v106;
    }

    *(*&buf[8] + 24) = v107;
    if (v96 <= 0.0)
    {
      v108 = 0.0;
    }

    else
    {
      v108 = v97 / v96;
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v110 = *(*&buf[8] + 24);
      *v182 = 134218240;
      v183 = v110;
      v184 = 2048;
      v185 = v108;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[AutoCounter][P/R][PV] Weighted Precision: %f, Weighted Recall: %f", v182, 0x16u);
    }

    *&v109 = v108;
    [(VCPClusteringAccuracyMeasures *)v89 setWeightedAverageRecall:v109];
    LODWORD(v111) = *(*&buf[8] + 24);
    [(VCPClusteringAccuracyMeasures *)v89 setWeightedAveragePrecision:v111];
    v112 = v89;
    v105 = 0;
    *v114 = v89;
LABEL_93:
  }

  _Block_object_dispose(&v151, 8);
  _Block_object_dispose(&v155, 8);
  _Block_object_dispose(v188, 8);
  _Block_object_dispose(&v168, 8);
  _Block_object_dispose(buf, 8);

LABEL_95:
  return v105;
}

void __202__VCPPhotosAutoCounterWorker__measurePNPersonClusters_groundTruthFaceCountPerPerson_groundTruthPersonInformation_groundTruthFaceToPerson_groundTruthAssetToFaces_measures_extendTimeoutBlock_cancelBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"faceID"];
  v8 = [v6 objectForKeyedSubscript:@"personID"];
  if ([v7 isEqualToString:*(*(*(a1 + 48) + 8) + 40)])
  {
    if ([*(a1 + 32) containsObject:v8])
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v9 = *(*(*(a1 + 48) + 8) + 40);
        v10 = *(*(*(a1 + 56) + 8) + 40);
        v27 = 138413058;
        v28 = v9;
        v29 = 2112;
        v30 = v10;
        v31 = 2112;
        v32 = v7;
        v33 = 2112;
        v34 = v8;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[AutoCounter][P/R][PV] Valid faceID mapping faceID:personID %@:%@ -> %@:%@", &v27, 0x2Au);
      }

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v8);
LABEL_7:
      *a4 = 1;
      goto LABEL_26;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v20 = *(*(*(a1 + 48) + 8) + 40);
      v21 = *(*(*(a1 + 56) + 8) + 40);
      v27 = 138413058;
      v28 = v20;
      v29 = 2112;
      v30 = v21;
      v31 = 2112;
      v32 = v7;
      v33 = 2112;
      v34 = v8;
      v16 = MEMORY[0x1E69E9C10];
      v17 = "[AutoCounter][P/R][PV] Invalid faceID mapping faceID:faceGroupID %@:%@ -> %@:%@";
LABEL_15:
      v18 = OS_LOG_TYPE_DEBUG;
      v19 = 42;
      goto LABEL_16;
    }
  }

  else
  {
    v11 = [v6 objectForKeyedSubscript:@"faceRect"];
    v36 = NSRectFromString(v11);
    x = v36.origin.x;
    y = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;

    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    if (CGRectIsEmpty(v37))
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v27 = 138412290;
        v28 = v7;
        v16 = MEMORY[0x1E69E9C10];
        v17 = "[AutoCounter][P/R][PV] Invalid ground truth face rectangle for faceID:%@";
        v18 = OS_LOG_TYPE_INFO;
        v19 = 12;
LABEL_16:
        _os_log_impl(&dword_1C9B70000, v16, v18, v17, &v27, v19);
      }
    }

    else
    {
      [*(a1 + 40) _overlapRatioOf:*(a1 + 64) with:{*(a1 + 72), *(a1 + 80), *(a1 + 88), x, y, width, height}];
      if (v22 <= 0.8)
      {
        goto LABEL_26;
      }

      if ([*(a1 + 32) containsObject:v8])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v23 = *(*(*(a1 + 48) + 8) + 40);
          v24 = *(*(*(a1 + 56) + 8) + 40);
          v27 = 138413058;
          v28 = v23;
          v29 = 2112;
          v30 = v24;
          v31 = 2112;
          v32 = v7;
          v33 = 2112;
          v34 = v8;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[AutoCounter][P/R][PV] Valid co-locate mapping faceID:personID %@:%@ -> %@:%@", &v27, 0x2Au);
        }

        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), v8);
        goto LABEL_7;
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v25 = *(*(*(a1 + 48) + 8) + 40);
        v26 = *(*(*(a1 + 56) + 8) + 40);
        v27 = 138413058;
        v28 = v25;
        v29 = 2112;
        v30 = v26;
        v31 = 2112;
        v32 = v7;
        v33 = 2112;
        v34 = v8;
        v16 = MEMORY[0x1E69E9C10];
        v17 = "[AutoCounter][P/R][PV] Invalid co-location mapping faceID:faceGroupID %@:%@ -> %@:%@";
        goto LABEL_15;
      }
    }
  }

LABEL_26:
}

void __202__VCPPhotosAutoCounterWorker__measurePNPersonClusters_groundTruthFaceCountPerPerson_groundTruthPersonInformation_groundTruthFaceToPerson_groundTruthAssetToFaces_measures_extendTimeoutBlock_cancelBlock___block_invoke_637(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v79 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 72);
  if (!v10 || !(*(v10 + 16))())
  {
    v11 = *(a1 + 80);
    if (v11)
    {
      (*(v11 + 16))();
    }

    v65 = 0;
    v66 = &v65;
    v67 = 0x3032000000;
    v68 = __Block_byref_object_copy__61;
    v69 = __Block_byref_object_dispose__61;
    v70 = 0;
    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __202__VCPPhotosAutoCounterWorker__measurePNPersonClusters_groundTruthFaceCountPerPerson_groundTruthPersonInformation_groundTruthFaceToPerson_groundTruthAssetToFaces_measures_extendTimeoutBlock_cancelBlock___block_invoke_2;
    v46[3] = &unk_1E83512B8;
    v49 = &v61;
    v47 = *(a1 + 32);
    v50 = &v53;
    v48 = *(a1 + 40);
    v51 = &v57;
    v52 = &v65;
    [v8 enumerateKeysAndObjectsUsingBlock:v46];
    v12 = [*(a1 + 32) objectForKeyedSubscript:v66[5]];
    v13 = [v12 objectForKeyedSubscript:@"OptInDateSinceReferenceDate"];
    v14 = v13;
    if (!v66[5] || !v13)
    {
      goto LABEL_21;
    }

    [v13 doubleValue];
    v16 = v15;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __202__VCPPhotosAutoCounterWorker__measurePNPersonClusters_groundTruthFaceCountPerPerson_groundTruthPersonInformation_groundTruthFaceToPerson_groundTruthAssetToFaces_measures_extendTimeoutBlock_cancelBlock___block_invoke_4;
    v37 = &unk_1E83512E0;
    v17 = *(a1 + 32);
    v41 = v16;
    v38 = v17;
    v40 = &v42;
    v39 = *(a1 + 40);
    [v8 enumerateKeysAndObjectsUsingBlock:&v34];
    v18 = [*(a1 + 48) allKeys];
    v19 = [v18 containsObject:v66[5]];

    if (!v19 || (v20 = v58[3], [*(a1 + 48) objectForKeyedSubscript:v66[5]], v21 = objc_claimAutoreleasedReturnValue(), LODWORD(v20) = v20 > objc_msgSend(v21, "unsignedIntValue"), v21, v20))
    {
      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v58[3]];
      [*(a1 + 48) setObject:v22 forKeyedSubscript:v66[5]];
    }

    v23 = (*(v62 + 6) - (*(v54 + 6) + *(v43 + 6)));
    if (v23 < 1)
    {
      v25 = 120;
    }

    else
    {
      v24 = v58[3];
      *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 96) + 8) + 24) + v24;
      *(*(*(a1 + 104) + 8) + 24) = *(*(*(a1 + 104) + 8) + 24) + v23;
      if (v23 != 1)
      {
        v26 = v24 / v23;
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          v27 = v66[5];
          v28 = [*(a1 + 56) countForObject:v27];
          *buf = 67109890;
          v72 = v23;
          v73 = 2112;
          v74 = v27;
          v75 = 2048;
          v76 = v28;
          v77 = 2048;
          v78 = v26;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[AutoCounter][P/R][PV] Precision for cluster (of size %d) for personID %@ (of size %lu) is %f", buf, 0x26u);
        }

        v29 = v66[5];
        v30 = v58[3];
        v31 = *(a1 + 64);
        v32 = [*(a1 + 56) countForObject:v29];
        *&v33 = v26;
        [v31 addClusterPrecision:v29 forPersonID:v30 personFaceCount:v23 validFaceCount:v32 identitySize:v33];
        goto LABEL_20;
      }

      v25 = 112;
    }

    ++*(*(*(a1 + v25) + 8) + 24);
LABEL_20:

    _Block_object_dispose(&v42, 8);
LABEL_21:

    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(&v57, 8);
    _Block_object_dispose(&v61, 8);
    _Block_object_dispose(&v65, 8);

    goto LABEL_22;
  }

  *(*(*(a1 + 88) + 8) + 24) = -128;
  *a4 = 1;
LABEL_22:
  objc_autoreleasePoolPop(v9);
}

void __202__VCPPhotosAutoCounterWorker__measurePNPersonClusters_groundTruthFaceCountPerPerson_groundTruthPersonInformation_groundTruthFaceToPerson_groundTruthAssetToFaces_measures_extendTimeoutBlock_cancelBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = [v7 allObjects];
  *(*(*(a1 + 48) + 8) + 24) += [v9 count];

  v10 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v11 = [v10 objectForKeyedSubscript:@"OptInDateSinceReferenceDate"];
  v12 = v11;
  if (v11)
  {
    [v11 doubleValue];
    v14 = v13;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __202__VCPPhotosAutoCounterWorker__measurePNPersonClusters_groundTruthFaceCountPerPerson_groundTruthPersonInformation_groundTruthFaceToPerson_groundTruthAssetToFaces_measures_extendTimeoutBlock_cancelBlock___block_invoke_3;
    v19[3] = &unk_1E8351290;
    v15 = *(a1 + 40);
    v22 = v14;
    v20 = v15;
    v21 = &v23;
    [v7 enumerateObjectsUsingBlock:v19];
    v16 = v24[3];
    v17 = *(*(a1 + 64) + 8);
    if (v16 > *(v17 + 24))
    {
      *(v17 + 24) = v16;
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
    }

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v18 = [v7 allObjects];
    *(*(*(a1 + 56) + 8) + 24) += [v18 count];
  }

  objc_autoreleasePoolPop(v8);
}

void __202__VCPPhotosAutoCounterWorker__measurePNPersonClusters_groundTruthFaceCountPerPerson_groundTruthPersonInformation_groundTruthFaceToPerson_groundTruthAssetToFaces_measures_extendTimeoutBlock_cancelBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  [v3 doubleValue];
  v5 = v4;

  if (v5 < *(a1 + 48))
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void __202__VCPPhotosAutoCounterWorker__measurePNPersonClusters_groundTruthFaceCountPerPerson_groundTruthPersonInformation_groundTruthFaceToPerson_groundTruthAssetToFaces_measures_extendTimeoutBlock_cancelBlock___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v8 = [v7 objectForKeyedSubscript:@"OptInDateSinceReferenceDate"];
  v9 = v8;
  if (v8)
  {
    [v8 doubleValue];
    if (v10 <= *(a1 + 56) + 21600.0)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __202__VCPPhotosAutoCounterWorker__measurePNPersonClusters_groundTruthFaceCountPerPerson_groundTruthPersonInformation_groundTruthFaceToPerson_groundTruthAssetToFaces_measures_extendTimeoutBlock_cancelBlock___block_invoke_5;
      v14[3] = &unk_1E8351290;
      v12 = *(a1 + 40);
      v17 = *(a1 + 56);
      v13 = *(a1 + 48);
      v15 = v12;
      v16 = v13;
      [v5 enumerateObjectsUsingBlock:v14];
    }

    else
    {
      v11 = [v5 allObjects];
      *(*(*(a1 + 48) + 8) + 24) += [v11 count];
    }
  }

  objc_autoreleasePoolPop(v6);
}

void __202__VCPPhotosAutoCounterWorker__measurePNPersonClusters_groundTruthFaceCountPerPerson_groundTruthPersonInformation_groundTruthFaceToPerson_groundTruthAssetToFaces_measures_extendTimeoutBlock_cancelBlock___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:a2];
  [v4 doubleValue];
  if (v3 > *(a1 + 48))
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (int)_reportCoreAnalyticsWithVisionClusterMeasure:(id)a3 personClusterMeasure:(id)a4 personClusters:(id)a5 andGroundTruthInformation:(id)a6
{
  v53 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v33 = v13;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v48 = @"[AutoCounter][CA]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Collecting data ...", buf, 0xCu);
  }

  v34 = [MEMORY[0x1E695DF70] array];
  v14 = [MEMORY[0x1E6978628] vcp_fetchOptionsForLibrary:self->_photoLibrary forTaskID:3];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __137__VCPPhotosAutoCounterWorker__reportCoreAnalyticsWithVisionClusterMeasure_personClusterMeasure_personClusters_andGroundTruthInformation___block_invoke;
  v39[3] = &unk_1E83513A8;
  v15 = v10;
  v40 = v15;
  v16 = v11;
  v41 = v16;
  v42 = self;
  v17 = v12;
  v43 = v17;
  v32 = v14;
  v44 = v32;
  v18 = v34;
  v45 = v18;
  v46 = @"[AutoCounter][CA]";
  [v13 enumerateKeysAndObjectsUsingBlock:v39];
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_Ver%d_Detector%lu_Printer%lu_MAD%lu_VU%lu_PhotosPerson%lu.plist", @"AutoCounterCoreAnalytics", -[PHPhotoLibrary mad_faceProcessingInternalVersion](self->_photoLibrary, "mad_faceProcessingInternalVersion"), self->_detectionVersion, self->_recognitionVersion, self->_madVersion, self->_vuVersion, self->_personClusterVersion];
  v20 = [(PHPhotoLibrary *)self->_photoLibrary vcp_visionCacheStorageDirectoryURL];
  v21 = [v20 URLByAppendingPathComponent:v19];

  if (v21)
  {
    v38 = 0;
    v22 = [v18 writeToURL:v21 error:&v38];
    v23 = v38;
    if (v22)
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v48 = @"[AutoCounter][CA]";
        v49 = 2112;
        v50 = v21;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Saved CoreAnalytics to %@", buf, 0x16u);
      }

      v29 = [MEMORY[0x1E696AC08] defaultManager];
      v24 = [(PHPhotoLibrary *)self->_photoLibrary vcp_visionCacheStorageDirectoryURL];
      v37 = v23;
      v30 = [v29 contentsOfDirectoryAtURL:v24 includingPropertiesForKeys:0 options:1 error:&v37];
      v31 = v37;

      if (v31)
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v48 = @"[AutoCounter][CA]";
          v49 = 2112;
          v50 = v31;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Cannot retrieve CoreAnalytics files %@", buf, 0x16u);
        }

        v25 = -19;
      }

      else
      {
        v26 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self.lastPathComponent BEGINSWITH %@", @"AutoCounterCoreAnalytics"];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v48 = @"[AutoCounter][CA]";
          v49 = 2112;
          v50 = v30;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Files in folder %@", buf, 0x16u);
        }

        v27 = [v30 filteredArrayUsingPredicate:v26];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v48 = @"[AutoCounter][CA]";
          v49 = 2112;
          v50 = v27;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Report CoreAnalytics files: %@", buf, 0x16u);
        }

        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __137__VCPPhotosAutoCounterWorker__reportCoreAnalyticsWithVisionClusterMeasure_personClusterMeasure_personClusters_andGroundTruthInformation___block_invoke_751;
        v35[3] = &unk_1E83513F8;
        v36 = @"[AutoCounter][CA]";
        [v27 enumerateObjectsUsingBlock:v35];
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v48 = @"[AutoCounter][CA]";
          v49 = 2112;
          v50 = v27;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Finished reporting CoreAnalytics %@", buf, 0x16u);
        }

        v25 = 0;
      }

      v23 = v31;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v48 = @"[AutoCounter][CA]";
        v49 = 2112;
        v50 = v21;
        v51 = 2112;
        v52 = v23;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Cannot write CoreAnalytics to %@ - %@", buf, 0x20u);
      }

      v25 = -20;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v48 = @"[AutoCounter][CA]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to retrive CoreAnalytics export URL", buf, 0xCu);
    }

    v25 = -18;
  }

  return v25;
}

void __137__VCPPhotosAutoCounterWorker__reportCoreAnalyticsWithVisionClusterMeasure_personClusterMeasure_personClusters_andGroundTruthInformation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v115[26] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v66 = a3;
  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  v109 = 0;
  v102 = 0;
  v103 = &v102;
  v104 = 0x2020000000;
  v105 = 0;
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  v6 = [*(a1 + 32) precisionPerCluster];
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __137__VCPPhotosAutoCounterWorker__reportCoreAnalyticsWithVisionClusterMeasure_personClusterMeasure_personClusters_andGroundTruthInformation___block_invoke_2;
  v93[3] = &unk_1E8351330;
  v7 = v5;
  v94 = v7;
  v95 = &v106;
  v96 = &v102;
  v97 = &v98;
  [v6 enumerateObjectsUsingBlock:v93];

  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0;
  v85 = 0;
  v86 = &v85;
  v87 = 0x2020000000;
  v88 = 0;
  v8 = [*(a1 + 40) precisionPerCluster];
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v81[2] = __137__VCPPhotosAutoCounterWorker__reportCoreAnalyticsWithVisionClusterMeasure_personClusterMeasure_personClusters_andGroundTruthInformation___block_invoke_3;
  v81[3] = &unk_1E8351358;
  v9 = v7;
  v82 = v9;
  v83 = &v89;
  v84 = &v85;
  [v8 enumerateObjectsUsingBlock:v81];

  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v10 = [*(a1 + 32) recallPerPersonToGroundTruth];
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __137__VCPPhotosAutoCounterWorker__reportCoreAnalyticsWithVisionClusterMeasure_personClusterMeasure_personClusters_andGroundTruthInformation___block_invoke_4;
  v74[3] = &unk_1E8351380;
  v11 = v9;
  v75 = v11;
  v76 = &v77;
  [v10 enumerateObjectsUsingBlock:v74];

  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v12 = [*(a1 + 40) recallPerPersonToGroundTruth];
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __137__VCPPhotosAutoCounterWorker__reportCoreAnalyticsWithVisionClusterMeasure_personClusterMeasure_personClusters_andGroundTruthInformation___block_invoke_5;
  v67[3] = &unk_1E8351380;
  v65 = v11;
  v68 = v65;
  v69 = &v70;
  [v12 enumerateObjectsUsingBlock:v67];

  v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nightly-Ver%d_Detector%lu_Printer%lu_MAD%lu_VU%lu_PhotosPerson%lu", objc_msgSend(*(*(a1 + 48) + 8), "mad_faceProcessingInternalVersion"), *(*(a1 + 48) + 16), *(*(a1 + 48) + 24), *(*(a1 + 48) + 48), *(*(a1 + 48) + 56), *(*(a1 + 48) + 32)];
  v13 = v86[3];
  v14 = 0.0;
  v15 = 0.0;
  if (v13)
  {
    v15 = (v90[3] / v13);
  }

  v16 = v99[3];
  if (v16)
  {
    v14 = (v103[3] / v16);
  }

  v114[0] = @"date_optin";
  v17 = [v66 objectForKeyedSubscript:@"OptInDate"];
  v18 = @"NA";
  v61 = v17;
  if (v17)
  {
    v18 = v17;
  }

  v115[0] = v18;
  v114[1] = @"detection_version_current";
  v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(a1 + 48) + 16)];
  v115[1] = v62;
  v114[2] = @"detection_version_optin";
  v19 = [v66 objectForKeyedSubscript:@"OptInDetectionModelVersion"];
  v63 = v19;
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = &unk_1F49BE368;
  }

  v115[2] = v20;
  v114[3] = @"mad_version_current";
  v59 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(*(a1 + 48) + 8), "mad_faceProcessingInternalVersion")}];
  v115[3] = v59;
  v114[4] = @"mad_version_optin";
  v21 = [v66 objectForKeyedSubscript:@"OptInMADFaceVersion"];
  v60 = v21;
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = &unk_1F49BE368;
  }

  v115[4] = v22;
  v115[5] = v65;
  v114[5] = @"person_id";
  v114[6] = @"promoter_clusters";
  v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 56), "count")}];
  v115[6] = v53;
  v115[7] = &unk_1F49BE368;
  v114[7] = @"promoter_clusters_duplicates";
  v114[8] = @"promoter_precision";
  v52 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
  v115[8] = v52;
  v114[9] = @"promoter_recall";
  v51 = [MEMORY[0x1E696AD98] numberWithDouble:v71[3]];
  v115[9] = v51;
  v114[10] = @"promoter_version_current";
  v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(a1 + 48) + 32)];
  v115[10] = v55;
  v114[11] = @"promoter_version_optin";
  v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(a1 + 48) + 32)];
  v115[11] = v54;
  v114[12] = @"recognition_version_current";
  v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(a1 + 48) + 24)];
  v115[12] = v56;
  v114[13] = @"recognition_version_optin";
  v23 = [v66 objectForKeyedSubscript:@"OptInRecognitionModelVersion"];
  v57 = v23;
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = &unk_1F49BE368;
  }

  v115[13] = v24;
  v114[14] = @"total_assets";
  v25 = MEMORY[0x1E696AD98];
  v58 = [MEMORY[0x1E6978628] fetchAssetsWithOptions:*(a1 + 64)];
  v49 = [v25 numberWithUnsignedInteger:{objc_msgSend(v58, "count")}];
  v115[14] = v49;
  v114[15] = @"total_assets_optin";
  v26 = [v66 objectForKeyedSubscript:@"AssetCount"];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = &unk_1F49BE368;
  }

  v115[15] = v28;
  v114[16] = @"total_faces";
  v29 = MEMORY[0x1E696AD98];
  v50 = [MEMORY[0x1E69787D0] fetchFacesWithOptions:*(a1 + 64)];
  v48 = [v29 numberWithUnsignedInteger:{objc_msgSend(v50, "count")}];
  v115[16] = v48;
  v114[17] = @"total_faces_optin";
  v30 = [v66 objectForKeyedSubscript:@"FaceCount"];
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = &unk_1F49BE368;
  }

  v115[17] = v32;
  v115[18] = v64;
  v114[18] = @"type";
  v114[19] = @"userLabeledAge";
  v33 = [v66 objectForKeyedSubscript:@"UserLabeledAge"];
  v34 = v33;
  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = &unk_1F49BE368;
  }

  v115[19] = v35;
  v114[20] = @"userLabeledEthnicity";
  v36 = [v66 objectForKeyedSubscript:@"UserLabeledEthnicity"];
  v37 = v36;
  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = &unk_1F49BE368;
  }

  v115[20] = v38;
  v114[21] = @"userLabeledGender";
  v39 = [v66 objectForKeyedSubscript:@"UserLabeledGender"];
  v40 = v39;
  if (v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = &unk_1F49BE368;
  }

  v115[21] = v41;
  v114[22] = @"vision_clusters";
  v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v107[3]];
  v115[22] = v42;
  v115[23] = &unk_1F49BE368;
  v114[23] = @"vision_clusters_duplicates";
  v114[24] = @"vision_precision";
  v43 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
  v115[24] = v43;
  v114[25] = @"vision_recall";
  v44 = [MEMORY[0x1E696AD98] numberWithDouble:v78[3]];
  v115[25] = v44;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v115 forKeys:v114 count:26];

  [*(a1 + 72) addObject:v45];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v46 = *(a1 + 80);
    *buf = 138412546;
    v111 = v46;
    v112 = 2112;
    v113 = v45;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Report CoreAnalytics: %@", buf, 0x16u);
  }

  v47 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v47 sendEvent:@"com.apple.photos.autocounter" withAnalytics:v45];

  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v77, 8);

  _Block_object_dispose(&v85, 8);
  _Block_object_dispose(&v89, 8);

  _Block_object_dispose(&v98, 8);
  _Block_object_dispose(&v102, 8);
  _Block_object_dispose(&v106, 8);
}

void __137__VCPPhotosAutoCounterWorker__reportCoreAnalyticsWithVisionClusterMeasure_personClusterMeasure_personClusters_andGroundTruthInformation___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v8 = v3;
  v5 = [v3 objectForKeyedSubscript:@"personID"];
  LODWORD(v4) = [v4 isEqual:v5];

  if (v4)
  {
    ++*(*(a1[5] + 8) + 24);
    v6 = [v8 objectForKeyedSubscript:@"personFaceCount"];
    *(*(a1[6] + 8) + 24) += [v6 unsignedIntegerValue];

    v7 = [v8 objectForKeyedSubscript:@"validFaceCount"];
    *(*(a1[7] + 8) + 24) += [v7 unsignedIntegerValue];
  }
}

void __137__VCPPhotosAutoCounterWorker__reportCoreAnalyticsWithVisionClusterMeasure_personClusterMeasure_personClusters_andGroundTruthInformation___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v8 = v3;
  v5 = [v3 objectForKeyedSubscript:@"personID"];
  LODWORD(v4) = [v4 isEqual:v5];

  if (v4)
  {
    v6 = [v8 objectForKeyedSubscript:@"personFaceCount"];
    *(*(a1[5] + 8) + 24) += [v6 unsignedIntegerValue];

    v7 = [v8 objectForKeyedSubscript:@"validFaceCount"];
    *(*(a1[6] + 8) + 24) += [v7 unsignedIntegerValue];
  }
}

void __137__VCPPhotosAutoCounterWorker__reportCoreAnalyticsWithVisionClusterMeasure_personClusterMeasure_personClusters_andGroundTruthInformation___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v11 = v6;
  v8 = [v6 objectForKeyedSubscript:@"personID"];
  LODWORD(v7) = [v7 isEqual:v8];

  if (v7)
  {
    v9 = [v11 objectForKeyedSubscript:@"recall"];
    [v9 doubleValue];
    *(*(*(a1 + 40) + 8) + 24) = v10;

    *a4 = 1;
  }
}

void __137__VCPPhotosAutoCounterWorker__reportCoreAnalyticsWithVisionClusterMeasure_personClusterMeasure_personClusters_andGroundTruthInformation___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v11 = v6;
  v8 = [v6 objectForKeyedSubscript:@"personID"];
  LODWORD(v7) = [v7 isEqual:v8];

  if (v7)
  {
    v9 = [v11 objectForKeyedSubscript:@"recall"];
    [v9 doubleValue];
    *(*(*(a1 + 40) + 8) + 24) = v10;

    *a4 = 1;
  }
}

void __137__VCPPhotosAutoCounterWorker__reportCoreAnalyticsWithVisionClusterMeasure_personClusterMeasure_personClusters_andGroundTruthInformation___block_invoke_751(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    *buf = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Report CoreAnalytics file: %@", buf, 0x16u);
  }

  v5 = [MEMORY[0x1E695DEC8] arrayWithContentsOfURL:v3];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __137__VCPPhotosAutoCounterWorker__reportCoreAnalyticsWithVisionClusterMeasure_personClusterMeasure_personClusters_andGroundTruthInformation___block_invoke_752;
  v6[3] = &unk_1E83513D0;
  v7 = *(a1 + 32);
  [v5 enumerateObjectsUsingBlock:v6];
}

void __137__VCPPhotosAutoCounterWorker__reportCoreAnalyticsWithVisionClusterMeasure_personClusterMeasure_personClusters_andGroundTruthInformation___block_invoke_752(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Report CoreAnalytics: %@", &v6, 0x16u);
  }

  v5 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v5 sendEvent:@"com.apple.photos.autocounter" withAnalytics:v3];
}

- (int)calculateAndReportClusterAccuracyWithVisionClusterURL:(id)a3 andPersonClusters:(id)a4 withGroundtruth:(id)a5 results:(id *)a6 extendTimeoutBlock:(id)a7 cancelBlock:(id)a8
{
  v67[2] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v51 = a4;
  v15 = a7;
  v16 = a8;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v17 = [(VCPPhotosAutoCounterWorker *)self _parseGroundTruthWithURL:a5 faceCountPerPerson:&v58 personInformation:&v57 faceToPerson:&v56 assetToFaces:&v55 extendTimeoutBlock:v15 cancelBlock:v16];
  v18 = v58;
  v19 = v57;
  v20 = v56;
  v21 = v55;
  if (!v17)
  {
    v54 = 0;
    v17 = [(VCPPhotosAutoCounterWorker *)self _measureClusterWithClusterStateURL:v14 groundTruthFaceCountPerPerson:v18 groundTruthPersonInformation:v19 groundTruthFaceToPerson:v20 groundTruthAssetToFaces:v21 measures:&v54 extendTimeoutBlock:v15 cancelBlock:v16];
    v50 = v54;
    if (v17)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[AutoCounter][P/R] Failed to measure Vision cluster state against ground truth", buf, 2u);
      }

      goto LABEL_19;
    }

    v52 = 0;
    v17 = [(VCPPhotosAutoCounterWorker *)self _measurePNPersonClusters:v51 groundTruthFaceCountPerPerson:v18 groundTruthPersonInformation:v19 groundTruthFaceToPerson:v20 groundTruthAssetToFaces:v21 measures:&v52 extendTimeoutBlock:v15 cancelBlock:v16];
    v22 = v52;
    v49 = v22;
    if (v17)
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 0;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "[AutoCounter][P/R][PV] Failed to measure Person cluster state against ground truth";
    }

    else
    {
      v17 = [(VCPPhotosAutoCounterWorker *)self _reportCoreAnalyticsWithVisionClusterMeasure:v50 personClusterMeasure:v22 personClusters:v51 andGroundTruthInformation:v19];
      if (!v17)
      {
        if (a6)
        {
          v66[0] = @"visionCluster";
          v64[0] = @"weightedAveragePrecision";
          v25 = MEMORY[0x1E696AD98];
          [v50 weightedAveragePrecision];
          v48 = [v25 numberWithFloat:?];
          v65[0] = v48;
          v64[1] = @"weightedAverageRecall";
          v26 = MEMORY[0x1E696AD98];
          [v50 weightedAverageRecall];
          v47 = [v26 numberWithFloat:?];
          v65[1] = v47;
          v64[2] = @"numSingletons";
          v27 = MEMORY[0x1E696AD98];
          [v50 numSingletons];
          v46 = [v27 numberWithFloat:?];
          v65[2] = v46;
          v64[3] = @"numValidSingletons";
          v28 = MEMORY[0x1E696AD98];
          [v50 numValidSingletons];
          v41 = [v28 numberWithFloat:?];
          v65[3] = v41;
          v64[4] = @"precisionPerCluster";
          v40 = [v50 precisionPerCluster];
          v65[4] = v40;
          v64[5] = @"recallPerPersonToGroundTruth";
          v42 = [v50 recallPerPersonToGroundTruth];
          v65[5] = v42;
          v64[6] = @"recallPerPersonExcludeMissDetection";
          v44 = [v50 recallPerPersonExcludeMissDetection];
          v65[6] = v44;
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:7];
          v66[1] = @"personCluster";
          v67[0] = v45;
          v59[0] = @"weightedAveragePrecision";
          v29 = MEMORY[0x1E696AD98];
          [v49 weightedAveragePrecision];
          v43 = [v29 numberWithFloat:?];
          v60[0] = v43;
          v59[1] = @"weightedAverageRecall";
          v30 = MEMORY[0x1E696AD98];
          [v49 weightedAverageRecall];
          v38 = [v30 numberWithFloat:?];
          v60[1] = v38;
          v59[2] = @"numSingletons";
          v31 = MEMORY[0x1E696AD98];
          [v49 numSingletons];
          v37 = [v31 numberWithFloat:?];
          v60[2] = v37;
          v59[3] = @"numValidSingletons";
          v32 = MEMORY[0x1E696AD98];
          [v49 numValidSingletons];
          v61 = [v32 numberWithFloat:?];
          v59[4] = @"precisionPerCluster";
          v39 = v61;
          v36 = [v49 precisionPerCluster];
          v62 = v36;
          v59[5] = @"recallPerPersonToGroundTruth";
          v35 = [v49 recallPerPersonToGroundTruth];
          v63 = v35;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:6];
          v67[1] = v33;
          *a6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:2];
        }

        v17 = 0;
        goto LABEL_18;
      }

      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      *buf = 0;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "[AutoCounter][P/R][PV] Failed to report CoreAnalytics";
    }

    _os_log_impl(&dword_1C9B70000, v23, OS_LOG_TYPE_ERROR, v24, buf, 2u);
    goto LABEL_18;
  }

LABEL_20:

  return v17;
}

- (int)calculateAndReportClusterAccuracyWithVisionClusterURL:(id)a3 andPersonClusters:(id)a4 results:(id *)a5 extendTimeoutBlock:(id)a6 cancelBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [(VCPPhotosAutoCounterWorker *)self _groundTruthURL];
  LODWORD(a5) = [(VCPPhotosAutoCounterWorker *)self calculateAndReportClusterAccuracyWithVisionClusterURL:v12 andPersonClusters:v13 withGroundtruth:v16 results:a5 extendTimeoutBlock:v14 cancelBlock:v15];

  return a5;
}

- (int)_parseSIMLGroundTruthWithURL:(id)a3 faceCountPerPerson:(id *)a4 personInformation:(id *)a5 faceToPerson:(id *)a6 assetToFaces:(id *)a7 extendTimeoutBlock:(id)a8 cancelBlock:(id)a9
{
  v73 = *MEMORY[0x1E69E9840];
  v52 = a3;
  v58 = a8;
  v15 = a9;
  v47 = a4;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  v57 = [MEMORY[0x1E696AB50] set];
  v56 = [MEMORY[0x1E695DF90] dictionary];
  v55 = [MEMORY[0x1E695DF90] dictionary];
  v54 = [MEMORY[0x1E695DF90] dictionary];
  v68 = 0;
  v16 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v52 options:0 error:&v68];
  v17 = v68;
  v50 = v16;
  if (!v16 || v17)
  {
    v49 = v17;
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v72 = v49;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[AutoCounter][P/R][SIMLGT] Failed to load SIML ground truth - %@", buf, 0xCu);
    }

    v37 = -18;
  }

  else
  {
    v67 = 0;
    v18 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v16 options:0 error:&v67];
    v19 = v67;
    v48 = v18;
    v49 = v19;
    if (!v18 || v19)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v72 = v49;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[AutoCounter][P/R][SIMLGT] Failed to serialize SIML ground truth - %@", buf, 0xCu);
      }

      v37 = -18;
    }

    else
    {
      v20 = [MEMORY[0x1E695DF90] dictionary];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __153__VCPPhotosAutoCounterWorker__parseSIMLGroundTruthWithURL_faceCountPerPerson_personInformation_faceToPerson_assetToFaces_extendTimeoutBlock_cancelBlock___block_invoke;
      v65[3] = &unk_1E83513D0;
      v53 = v20;
      v66 = v53;
      [v18 enumerateObjectsUsingBlock:v65];
      v69 = @"OptInDateSinceReferenceDate";
      v21 = MEMORY[0x1E696AD98];
      v22 = [MEMORY[0x1E695DF00] now];
      [v22 timeIntervalSinceReferenceDate];
      v23 = [v21 numberWithDouble:?];
      v44 = a6;
      v45 = a5;
      v43 = a7;
      v70 = v23;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];

      v46 = [MEMORY[0x1E6978628] vcp_fetchOptionsForLibrary:self->_photoLibrary forTaskID:3];
      v24 = [MEMORY[0x1E6978628] fetchAssetsWithOptions:?];
      for (i = 0; ; ++i)
      {
        if (i >= [v24 count])
        {
          v38 = v57;
          *v47 = v57;
          v39 = v56;
          *v45 = v56;
          v40 = v55;
          *v44 = v55;
          v41 = v54;
          v37 = 0;
          *v43 = v54;
          goto LABEL_29;
        }

        v26 = objc_autoreleasePoolPush();
        if (v15 && (v15[2](v15) & 1) != 0)
        {
          v27 = 1;
        }

        else
        {
          if (v58)
          {
            v58[2]();
          }

          v28 = [v24 objectAtIndexedSubscript:i];
          v29 = [v28 originalFilename];
          v30 = [v29 stringByDeletingPathExtension];

          v31 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v30, "integerValue")}];
          v32 = [v53 objectForKeyedSubscript:v31];

          if (v32)
          {
            v33 = [v32 objectForKeyedSubscript:@"faces"];
            v34 = [MEMORY[0x1E695DF70] array];
            v59[0] = MEMORY[0x1E69E9820];
            v59[1] = 3221225472;
            v59[2] = __153__VCPPhotosAutoCounterWorker__parseSIMLGroundTruthWithURL_faceCountPerPerson_personInformation_faceToPerson_assetToFaces_extendTimeoutBlock_cancelBlock___block_invoke_2;
            v59[3] = &unk_1E8351420;
            v35 = v34;
            v60 = v35;
            v61 = v55;
            v62 = v57;
            v63 = v56;
            v64 = v51;
            [v33 enumerateObjectsUsingBlock:v59];
            v36 = [v28 localIdentifier];
            [v54 setObject:v35 forKeyedSubscript:v36];

            v27 = 0;
          }

          else
          {
            v27 = 12;
          }
        }

        objc_autoreleasePoolPop(v26);
        if (v27 != 12)
        {
          if (v27)
          {
            break;
          }
        }
      }

      v37 = -128;
LABEL_29:
    }
  }

  return v37;
}

void __153__VCPPhotosAutoCounterWorker__parseSIMLGroundTruthWithURL_faceCountPerPerson_personInformation_faceToPerson_assetToFaces_extendTimeoutBlock_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 objectForKeyedSubscript:@"id"];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

void __153__VCPPhotosAutoCounterWorker__parseSIMLGroundTruthWithURL_faceCountPerPerson_personInformation_faceToPerson_assetToFaces_extendTimeoutBlock_cancelBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"identity"];
  v5 = [MEMORY[0x1E695DFB0] null];

  if (v4 != v5)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = [v3 objectForKeyedSubscript:@"centerX"];
    [v7 floatValue];
    v9 = v8;

    v10 = [v3 objectForKeyedSubscript:@"centerY"];
    [v10 floatValue];
    v12 = v11;

    v13 = [v3 objectForKeyedSubscript:@"size"];
    [v13 floatValue];
    v15 = v14;

    v16 = MEMORY[0x1E696AEC0];
    v17 = [v3 objectForKeyedSubscript:@"id"];
    v18 = [v16 stringWithFormat:@"f%@", v17];

    v19 = MEMORY[0x1E696AEC0];
    v20 = [v4 objectForKeyedSubscript:@"id"];
    v21 = [v19 stringWithFormat:@"p%@", v20];

    [v6 setObject:v18 forKey:@"faceID"];
    [v6 setObject:v21 forKey:@"personID"];
    v22 = v15 * 1.76;
    v29.origin.x = v9;
    v29.origin.y = v12;
    v29.size.width = v22;
    v29.size.height = v29.size.width;
    v23 = NSStringFromRect(v29);
    [v6 setObject:v23 forKey:@"faceRect"];

    [*(a1 + 32) addObject:v6];
    [*(a1 + 40) setObject:v21 forKeyedSubscript:v18];
    [*(a1 + 48) addObject:v21];
    [*(a1 + 56) setObject:*(a1 + 64) forKeyedSubscript:v21];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v25 = v18;
      v26 = 2112;
      v27 = v21;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[AutoCounter][P/R][SIMLGT] Load faceID: %@ for PersonID: %@", buf, 0x16u);
    }
  }
}

- (int)validateClusterAccuracyWithSIMLGroundtruth:(id)a3 results:(id *)a4 extendTimeoutBlock:(id)a5 cancelBlock:(id)a6
{
  v51 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v13 = [(VCPPhotosAutoCounterWorker *)self _parseSIMLGroundTruthWithURL:v10 faceCountPerPerson:&v44 personInformation:&v43 faceToPerson:&v42 assetToFaces:&v41 extendTimeoutBlock:v11 cancelBlock:v12];
  v14 = v44;
  v15 = v43;
  v16 = v42;
  v17 = v41;
  if (!v13)
  {
    v39 = 0;
    v40 = 0;
    v18 = [(VCPPhotosAutoCounterWorker *)self exportVUGalleryClusterStates:&v40 error:&v39 extendTimeoutBlock:v11 cancelBlock:v12];
    v37 = v40;
    v19 = v39;
    v35 = v19;
    if (v18 || v19)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[AutoCounter][P/R][SIML] Failed to export current clusters states", buf, 2u);
      }

      v13 = -18;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v48 = v37;
        v49 = 2112;
        v50 = v10;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[AutoCounter][P/R][SIML] Validate cluster state  %@ against ground truth %@", buf, 0x16u);
      }

      v38 = 0;
      v13 = [(VCPPhotosAutoCounterWorker *)self _measureClusterWithClusterStateURL:v37 groundTruthFaceCountPerPerson:v14 groundTruthPersonInformation:v15 groundTruthFaceToPerson:v16 groundTruthAssetToFaces:v17 measures:&v38 extendTimeoutBlock:v11 cancelBlock:v12];
      v36 = v38;
      if (v13)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[AutoCounter][P/R][SIML] Failed to measure Vision cluster state against SIML ground truth", buf, 2u);
        }
      }

      else if (a4)
      {
        v45[0] = @"weightedAveragePrecision";
        v20 = MEMORY[0x1E696AD98];
        [v36 weightedAveragePrecision];
        v34 = [v20 numberWithFloat:?];
        v46[0] = v34;
        v45[1] = @"weightedAverageRecall";
        v21 = MEMORY[0x1E696AD98];
        [v36 weightedAverageRecall];
        v33 = [v21 numberWithFloat:?];
        v46[1] = v33;
        v45[2] = @"numSingletons";
        v22 = MEMORY[0x1E696AD98];
        [v36 numSingletons];
        v32 = [v22 numberWithFloat:?];
        v46[2] = v32;
        v45[3] = @"numValidSingletons";
        v23 = MEMORY[0x1E696AD98];
        [v36 numValidSingletons];
        v31 = [v23 numberWithFloat:?];
        v46[3] = v31;
        v45[4] = @"precisionPerCluster";
        v30 = [v36 precisionPerCluster];
        v29 = [v30 sortedArrayUsingComparator:&__block_literal_global_79];
        v46[4] = v29;
        v45[5] = @"recallPerPersonToGroundTruth";
        v28 = [v36 recallPerPersonToGroundTruth];
        v27 = [v28 sortedArrayUsingComparator:&__block_literal_global_79];
        v46[5] = v27;
        v45[6] = @"recallPerPersonExcludeMissDetection";
        v26 = [v36 recallPerPersonExcludeMissDetection];
        v24 = [v26 sortedArrayUsingComparator:&__block_literal_global_79];
        v46[6] = v24;
        *a4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:7];
      }
    }
  }

  return v13;
}

uint64_t __112__VCPPhotosAutoCounterWorker_validateClusterAccuracyWithSIMLGroundtruth_results_extendTimeoutBlock_cancelBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 objectForKeyedSubscript:@"personID"];
  v7 = [v5 objectForKeyedSubscript:@"personID"];
  v8 = [v6 compare:v7 options:64];
  if (!v8)
  {
    v9 = [v4 objectForKeyedSubscript:@"validFaceCount"];
    v10 = [v5 objectForKeyedSubscript:@"validFaceCount"];
    v8 = [v9 compare:v10];
  }

  return v8;
}

@end