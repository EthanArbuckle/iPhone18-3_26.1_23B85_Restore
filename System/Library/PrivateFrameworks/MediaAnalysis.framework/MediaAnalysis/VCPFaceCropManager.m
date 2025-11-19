@interface VCPFaceCropManager
- (BOOL)_clearDirtyStateOnFaceCrop:(id)a3 error:(id *)a4;
- (BOOL)_generateAndAssociateFaceprintedFaceForFaceCrop:(id)a3 faceCropFaceLocalIdentifier:(id *)a4 error:(id *)a5;
- (BOOL)_persistGeneratedFaceCrops:(id)a3 forAsset:(id)a4 error:(id *)a5;
- (BOOL)_processDirtyFaceCrop:(id)a3 faceCropFaceLocalIdentifier:(id *)a4 error:(id *)a5;
- (BOOL)_updateFace:(id)a3 withFaceCrop:(id)a4 error:(id *)a5;
- (BOOL)_updateFaceprint:(id)a3 forFace:(id)a4 error:(id *)a5;
- (BOOL)generateAndPersistFaceCropsForFaces:(id)a3 withAsset:(id)a4 resource:(id)a5 resourceURL:(id)a6 error:(id *)a7;
- (VCPFaceCropManager)initWithPhotoLibrary:(id)a3 andContext:(id)a4;
- (id)_associateFace:(id)a3 withFaceCrop:(id)a4 error:(id *)a5;
- (id)_bestFaceForFacePrintRequest:(id)a3 withRect:(CGRect)a4;
- (id)_bestObservationInAnimalObservations:(id)a3 withRect:(CGRect)a4;
- (id)_faceAssociatedWithFaceCrop:(id)a3;
- (id)_faceFromFaceCrop:(id)a3 error:(id *)a4;
- (id)_vcpAnimalFaceWithFaceCrop:(id)a3 animalFaceObservations:(id)a4 animalBodyObservations:(id)a5 animalprintRequest:(id)a6 normalizedFaceCropBoundingBox:(CGRect)a7 faceCropImageDimension:(CGSize)a8 error:(id *)a9;
- (id)_vcpFaceCropFromPHFaceCrop:(id)a3;
- (id)_vcpHumanFaceWithFaceCrop:(id)a3 imageRequestHandler:(id)a4 faceDetectionRequest:(id)a5 normalizedFaceCropBoundingBox:(CGRect)a6 faceCropImageDimension:(CGSize)a7 faceprintRequest:(id)a8 error:(id *)a9;
- (int)processDirtyFaceCrops:(unint64_t *)a3 withCancelBlock:(id)a4 andExtendTimeoutBlock:(id)a5;
@end

@implementation VCPFaceCropManager

- (VCPFaceCropManager)initWithPhotoLibrary:(id)a3 andContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = VCPFaceCropManager;
  v9 = [(VCPFaceCropManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, a3);
    objc_storeStrong(&v10->_context, a4);
  }

  return v10;
}

- (BOOL)_persistGeneratedFaceCrops:(id)a3 forAsset:(id)a4 error:(id *)a5
{
  v65[2] = *MEMORY[0x1E69E9840];
  v40 = a3;
  v42 = a4;
  v43 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v39 = self;
  v47 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [v47 setIncludeNonvisibleFaces:1];
  v7 = *MEMORY[0x1E6978D90];
  v65[0] = *MEMORY[0x1E6978D70];
  v65[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
  [v47 setFetchPropertySets:v8];

  [v47 setIncludedDetectionTypes:&unk_1F49BECB0];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v40;
  v9 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (!v9)
  {

    v49 = 0;
LABEL_23:
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__VCPFaceCropManager__persistGeneratedFaceCrops_forAsset_error___block_invoke;
    aBlock[3] = &unk_1E834D238;
    v51 = v43;
    v52 = v42;
    v31 = _Block_copy(aBlock);
    v32 = [(PHPhotoLibrary *)v39->_photoLibrary performChangesAndWait:v31 error:a5];

    goto LABEL_28;
  }

  v48 = *v54;
  v49 = 0;
  v45 = *MEMORY[0x1E696A768];
  v10 = 1;
  v46 = *MEMORY[0x1E696A578];
  do
  {
    v11 = 0;
    do
    {
      if (*v54 != v48)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v53 + 1) + 8 * v11);
      v13 = [v12 originatingFace];
      if (!v13)
      {
        v33 = MEMORY[0x1E696ABC0];
        v62 = v46;
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot generate facecrop without originating face"];
        v63 = v34;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v36 = [v33 errorWithDomain:v45 code:-18 userInfo:v35];

        v49 = v36;
        goto LABEL_25;
      }

      v14 = objc_autoreleasePoolPush();
      v15 = [v13 localIdentifier];
      v16 = v15;
      if (!v15)
      {
        goto LABEL_13;
      }

      v17 = MEMORY[0x1E69787D0];
      v61 = v15;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
      v19 = [v17 fetchFacesWithLocalIdentifiers:v18 options:v47];

      if ([v19 count] != 1)
      {

LABEL_13:
        v27 = MEMORY[0x1E696ABC0];
        v59 = v46;
        v28 = MEMORY[0x1E696AEC0];
        v23 = [v13 localIdentifier];
        v24 = [v28 stringWithFormat:@"Failed to find originating PHFace %@", v23];
        v60 = v24;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v26 = [v27 errorWithDomain:v45 code:-18 userInfo:v25];
        v20 = 0;
LABEL_14:

        v29 = 0;
        v10 = 0;
        v49 = v26;
        goto LABEL_15;
      }

      v20 = [v19 firstObject];

      if (!v20)
      {
        goto LABEL_13;
      }

      if ([v20 manual])
      {
        v21 = MEMORY[0x1E696ABC0];
        v57 = v46;
        v22 = MEMORY[0x1E696AEC0];
        v23 = [v20 localIdentifier];
        v24 = [v22 stringWithFormat:@"Failed to generate facecrop on manual originating face %@", v23];
        v58 = v24;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        v26 = [v21 errorWithDomain:v45 code:-18 userInfo:v25];
        goto LABEL_14;
      }

      [v43 setObject:v12 forKey:v20];
      v29 = 1;
LABEL_15:

      objc_autoreleasePoolPop(v14);
      if (!v29)
      {
        goto LABEL_20;
      }

      ++v11;
    }

    while (v9 != v11);
    v30 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
    v9 = v30;
  }

  while (v30);
LABEL_20:

  if (v10)
  {
    goto LABEL_23;
  }

LABEL_25:
  if (a5)
  {
    v37 = v49;
    v32 = 0;
    *a5 = v49;
  }

  else
  {
    v32 = 0;
  }

LABEL_28:

  return v32;
}

void __64__VCPFaceCropManager__persistGeneratedFaceCrops_forAsset_error___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [*(a1 + 32) keyEnumerator];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v2)
  {
    v4 = *v16;
    *&v3 = 138412546;
    v13 = v3;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * i);
        v7 = [*(a1 + 32) objectForKey:{v6, v13}];
        v8 = MEMORY[0x1E6978800];
        v9 = [v7 faceCropData];
        v10 = [v8 creationRequestsForFaceCropsWithOriginatingFace:v6 resourceData:v9];

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v11 = [*(a1 + 40) localIdentifier];
          v12 = [v6 localIdentifier];
          *buf = v13;
          v20 = v11;
          v21 = 2112;
          v22 = v12;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceCropManager][%@] Publish facecrop for face %@", buf, 0x16u);
        }
      }

      v2 = [obj countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v2);
  }
}

- (id)_faceAssociatedWithFaceCrop:(id)a3
{
  v4 = a3;
  v5 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [v5 setIncludeNonvisibleFaces:1];
  [v5 setIncludedDetectionTypes:&unk_1F49BECC8];
  v6 = [MEMORY[0x1E69787D0] fetchFacesForFaceCrop:v4 options:v5];
  v7 = [v6 firstObject];

  return v7;
}

- (id)_bestFaceForFacePrintRequest:(id)a3 withRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v62 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v45 = v8;
  v9 = [v8 results];
  v10 = [v9 count];

  v49 = x;
  v50 = y;
  if (v10 != 1)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v19 = [v8 results];
      *buf = 138412546;
      v56 = @"[FaceCropManager][BestFace]";
      v57 = 2048;
      v58 = [v19 count];
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Detected %lu faces from facecrop", buf, 0x16u);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v20 = [v8 results];
    v12 = 0;
    v21 = [v20 countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v21)
    {
      v22 = *v52;
      v48 = 1.17549435e-38;
      v23 = MEMORY[0x1E69E9C10];
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v52 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v51 + 1) + 8 * i);
          [v25 boundingBox];
          v26 = v67.origin.x;
          v27 = v67.origin.y;
          v28 = v67.size.width;
          v29 = v67.size.height;
          v72.origin.x = v49;
          v72.origin.y = v50;
          v72.size.width = width;
          v72.size.height = height;
          v68 = CGRectUnion(v67, v72);
          v30 = v68.size.width;
          v31 = v68.size.height;
          v68.origin.x = v26;
          v68.origin.y = v27;
          v68.size.width = v28;
          v68.size.height = v29;
          v73.origin.x = v49;
          v73.origin.y = v50;
          v73.size.width = width;
          v73.size.height = height;
          v69 = CGRectIntersection(v68, v73);
          v32 = v30 * v31;
          v33 = 0.0;
          if (v32 != 0.0)
          {
            v34 = v69.size.width * v69.size.height;
            v33 = (v34 / v32);
          }

          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v35 = [v25 description];
            *buf = 138412802;
            v56 = @"[FaceCropManager][BestFace]";
            v57 = 2112;
            v58 = v35;
            v59 = 2048;
            v60 = v33;
            _os_log_impl(&dword_1C9B70000, v23, OS_LOG_TYPE_DEBUG, "%@ Detected face %@ with IoU %.3f", buf, 0x20u);
          }

          v36 = v48;
          if (v48 < v33)
          {
            v37 = v25;

            v12 = v37;
            v48 = v33;
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v51 objects:v61 count:{16, v36}];
      }

      while (v21);
    }

    else
    {
      v48 = 1.17549435e-38;
    }

    v8 = v45;
    if (MediaAnalysisLogLevel() >= 6)
    {
      v38 = MEMORY[0x1E69E9C10];
      v39 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v40 = [v12 description];
        *buf = 138412546;
        v56 = @"[FaceCropManager][BestFace]";
        v57 = 2112;
        v58 = v40;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Best face observation %@", buf, 0x16u);
      }

      v8 = v45;
    }

LABEL_27:
    if (v48 >= 0.8)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  v11 = [v8 results];
  v12 = [v11 firstObject];

  [v12 boundingBox];
  v13 = v64.origin.x;
  v14 = v64.origin.y;
  v15 = v64.size.width;
  v16 = v64.size.height;
  v70.origin.x = x;
  v70.origin.y = y;
  v70.size.width = width;
  v70.size.height = height;
  v65 = CGRectUnion(v64, v70);
  v47 = v65.size.width;
  v46 = v65.size.height;
  v65.origin.x = v13;
  v65.origin.y = v14;
  v65.size.width = v15;
  v65.size.height = v16;
  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = width;
  v71.size.height = height;
  v66 = CGRectIntersection(v65, v71);
  v17 = v47 * v46;
  v48 = 0.0;
  if (v17 != 0.0)
  {
    v18 = v66.size.width * v66.size.height;
    v48 = (v18 / v17);
    goto LABEL_27;
  }

LABEL_28:
  if (MediaAnalysisLogLevel() >= 5)
  {
    v41 = MEMORY[0x1E69E9C10];
    v42 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [v12 description];
      *buf = 138412802;
      v56 = @"[FaceCropManager][BestFace]";
      v57 = 2112;
      v58 = v43;
      v59 = 2048;
      v60 = v48;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Best face observation %@ has a small IoU %.3f; ignoring ...", buf, 0x20u);
    }
  }

  v12 = 0;
  v8 = v45;
LABEL_33:

  return v12;
}

- (id)_vcpHumanFaceWithFaceCrop:(id)a3 imageRequestHandler:(id)a4 faceDetectionRequest:(id)a5 normalizedFaceCropBoundingBox:(CGRect)a6 faceCropImageDimension:(CGSize)a7 faceprintRequest:(id)a8 error:(id *)a9
{
  height = a7.height;
  width = a7.width;
  v13 = a6.size.height;
  v14 = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v46 = *MEMORY[0x1E69E9840];
  v37 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a8;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v23 = [v37 localIdentifier];
    *buf = 138412290;
    v45 = v23;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceCropManager][%@] Create human face for facecrop", buf, 0xCu);
  }

  v24 = [(VCPFaceCropManager *)self _bestFaceForFacePrintRequest:v22 withRect:x, y, v14, v13];
  if (v24)
  {
    goto LABEL_10;
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v25 = [v37 localIdentifier];
    *buf = 138412290;
    v45 = v25;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceCropManager][%@] No qualified face; force faceprinting", buf, 0xCu);
  }

  v24 = [MEMORY[0x1E6984518] faceObservationWithRequestRevision:objc_msgSend(v21 boundingBox:"revision") andAlignedBoundingBox:{x, y, v14, v13, x, y, v14, v13}];
  v43 = v24;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  [v22 setInputFaceObservations:v26];

  [v22 setForceFaceprintCreation:1];
  v42 = v22;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v38 = 0;
  v28 = [v20 performRequests:v27 error:&v38];
  v29 = v38;

  if (v28)
  {
    v30 = [v22 results];
    v31 = [v30 firstObject];

    v24 = v31;
LABEL_10:
    v39[0] = v21;
    v39[1] = v22;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
    LOBYTE(v36) = 1;
    a9 = [VCPPhotosFace faceFromFaceObservation:v24 humanObservation:0 sourceWidth:width sourceHeight:height visionRequests:v29 processingVersion:[(VCPPhotosFaceProcessingContext *)self->_context processingVersion] force:v36 andError:a9];
    goto LABEL_11;
  }

  if (a9)
  {
    v33 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A578];
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create faceprint - %@", v29];
    v41 = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    *a9 = [v33 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v35];

    a9 = 0;
  }

LABEL_11:

  return a9;
}

- (id)_bestObservationInAnimalObservations:(id)a3 withRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if ([v8 count] == 1)
  {
    v9 = [v8 firstObject];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v8;
    v9 = 0;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = *v23;
      v13 = 1.17549435e-38;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          [v15 boundingBox];
          v33.origin.x = x;
          v33.origin.y = y;
          v33.size.width = width;
          v33.size.height = height;
          v30 = CGRectUnion(v29, v33);
          v16 = v30.size.width;
          v17 = v30.size.height;
          [v15 boundingBox];
          v34.origin.x = x;
          v34.origin.y = y;
          v34.size.width = width;
          v34.size.height = height;
          v32 = CGRectIntersection(v31, v34);
          v18 = v16 * v17;
          if (v16 * v17 > 0.0)
          {
            v19 = v32.size.width * v32.size.height / v18;
            if (v19 > v13)
            {
              v20 = v15;

              v9 = v20;
              v13 = v19;
            }
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:{16, v18}];
      }

      while (v11);
    }
  }

  return v9;
}

- (id)_vcpAnimalFaceWithFaceCrop:(id)a3 animalFaceObservations:(id)a4 animalBodyObservations:(id)a5 animalprintRequest:(id)a6 normalizedFaceCropBoundingBox:(CGRect)a7 faceCropImageDimension:(CGSize)a8 error:(id *)a9
{
  height = a8.height;
  width = a8.width;
  v11 = a7.size.height;
  v12 = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v42 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v23 = [v19 localIdentifier];
    *buf = 138412290;
    v41 = v23;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceCropManager][%@] Create animal face for facecrop", buf, 0xCu);
  }

  v24 = [(VCPFaceCropManager *)self _bestObservationInAnimalObservations:v20 withRect:x, y, v12, v11];
  v25 = [(VCPFaceCropManager *)self _bestObservationInAnimalObservations:v21 withRect:x, y, v12, v11];
  v26 = v25;
  if (v24 | v25)
  {
    if (v25)
    {
      v27 = [v25 labels];
      v28 = [v27 firstObject];
      v29 = [v28 identifier];
    }

    else
    {
      v32 = [v24 labels];
      v33 = [v32 firstObject];
      v27 = [v33 identifier];

      if ([v27 isEqualToString:*MEMORY[0x1E6984888]])
      {
        v34 = MEMORY[0x1E6984898];
      }

      else
      {
        if (([v27 isEqualToString:*MEMORY[0x1E6984880]] & 1) == 0)
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v37 = [v19 localIdentifier];
            *buf = 138412290;
            v41 = v37;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[FaceCropManager][%@] faceLabel is not dog or cat. Ignoring", buf, 0xCu);
          }

          v31 = 0;
          goto LABEL_17;
        }

        v34 = MEMORY[0x1E6984890];
      }

      v29 = *v34;
    }

    v39 = v22;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
    LODWORD(v38) = [(VCPPhotosFaceProcessingContext *)self->_context processingVersion];
    v31 = [VCPPhotosFace faceFromAnimalHeadObservation:v24 animalBodyObservation:v26 animalLabel:v29 sourceWidth:width sourceHeight:height visionRequests:v35 processingVersion:v38];

    v27 = v29;
LABEL_17:

    goto LABEL_18;
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v30 = [v19 localIdentifier];
    *buf = 138412290;
    v41 = v30;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceCropManager][%@] Either animal face or animal body detected in facecrop", buf, 0xCu);
  }

  v31 = 0;
LABEL_18:

  return v31;
}

- (id)_faceFromFaceCrop:(id)a3 error:(id *)a4
{
  v139[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    if (!a4)
    {
      v18 = 0;
      goto LABEL_33;
    }

    v19 = MEMORY[0x1E696ABC0];
    v138 = *MEMORY[0x1E696A578];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Facecrop is nil"];
    v139[0] = v8;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v139 forKeys:&v138 count:1];
    [v19 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v15];
    *a4 = v18 = 0;
    goto LABEL_16;
  }

  v8 = [v6 resourceData];
  if (!v8)
  {
    if (!a4)
    {
      goto LABEL_31;
    }

    v20 = MEMORY[0x1E696ABC0];
    v136 = *MEMORY[0x1E696A578];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing image data from facecrop %@", v7];
    v137 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
    v21 = [v20 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v16];
    goto LABEL_14;
  }

  if (![VCPFaceCropUtils isValidFaceCrop:v8])
  {
    if (!a4)
    {
      goto LABEL_31;
    }

    v22 = MEMORY[0x1E696ABC0];
    v134 = *MEMORY[0x1E696A578];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid facecrop image data %@", v8];
    v135 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
    v21 = [v22 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v16];
    goto LABEL_14;
  }

  [VCPFaceCropUtils faceBoundsFromFaceCrop:v8 error:a4];
  x = v141.origin.x;
  y = v141.origin.y;
  width = v141.size.width;
  height = v141.size.height;
  if (!CGRectIsNull(v141))
  {
    [VCPFaceCropUtils faceCropDimensionsFromFaceCrop:v8 error:a4];
    v25 = v23;
    v26 = v24;
    v27 = MEMORY[0x1E695F060];
    if (v23 != *MEMORY[0x1E695F060] || v24 != *(MEMORY[0x1E695F060] + 8))
    {
      [VCPGeometryUtils normalizedRectForRect:x inBoundsOfSize:y, width, height, v23, v24];
      v29 = v143.origin.x;
      v30 = v143.origin.y;
      v95 = v143.size.width;
      v96 = v143.size.height;
      if (CGRectIsNull(v143))
      {
        if (a4)
        {
          v31 = MEMORY[0x1E696ABC0];
          v128 = *MEMORY[0x1E696A578];
          v32 = MEMORY[0x1E696AEC0];
          v144.origin.x = x;
          v144.origin.y = y;
          v144.size.width = width;
          v144.size.height = height;
          v15 = NSStringFromRect(v144);
          v16 = [v32 stringWithFormat:@"Failed to normalize bound %@ with image (%.0fx%.0f)", v15, *&v25, *&v26];
          v129 = v16;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
          *a4 = [v31 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v33];

          goto LABEL_7;
        }

LABEL_31:
        v18 = 0;
        goto LABEL_32;
      }

      [VCPFaceCropUtils faceCropDimensionsFromFaceCrop:v8 error:a4];
      v37 = v36;
      v38 = v35;
      if (v36 == *v27 && v35 == v27[1])
      {
        if (!a4)
        {
          goto LABEL_31;
        }

        v39 = MEMORY[0x1E696ABC0];
        v126 = *MEMORY[0x1E696A578];
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to obtain the facecrop image dimensions"];
        v127 = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
        v21 = [v39 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v16];
        goto LABEL_14;
      }

      v41 = objc_alloc(MEMORY[0x1E69845B8]);
      v15 = [v41 initWithData:v8 orientation:1 options:MEMORY[0x1E695E0F8]];
      if (!v15)
      {
        if (!a4)
        {
          v18 = 0;
          goto LABEL_16;
        }

        v46 = MEMORY[0x1E696ABC0];
        v124 = *MEMORY[0x1E696A578];
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create VNImageRequestHandler"];
        v125 = v16;
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
        [v46 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v44];
        *a4 = v18 = 0;
        goto LABEL_103;
      }

      v104 = 0;
      v42 = [VCPFaceUtils configureVNRequest:&v104 withClass:objc_opt_class() andProcessingVersion:[(VCPPhotosFaceProcessingContext *)self->_context processingVersion]];
      v16 = v104;
      if (v42)
      {
        if (!a4)
        {
          goto LABEL_7;
        }

        v43 = MEMORY[0x1E696ABC0];
        v122 = *MEMORY[0x1E696A578];
        v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to set VNDetectFaceRectanglesRequest"];
        v123 = v44;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
        [v43 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v45];
        *a4 = v18 = 0;
        goto LABEL_102;
      }

      v103 = 0;
      v47 = [VCPFaceUtils configureVNRequest:&v103 withClass:objc_opt_class() andProcessingVersion:[(VCPPhotosFaceProcessingContext *)self->_context processingVersion]];
      v44 = v103;
      if (v47)
      {
        if (!a4)
        {
          v18 = 0;
LABEL_103:

          goto LABEL_15;
        }

        v48 = MEMORY[0x1E696ABC0];
        v120 = *MEMORY[0x1E696A578];
        v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to set VNRecognizeAnimalFacesRequest"];
        v121 = v45;
        v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
        [v48 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:?];
        *a4 = v18 = 0;

LABEL_102:
        goto LABEL_103;
      }

      v102 = 0;
      v49 = [VCPFaceUtils configureVNRequest:&v102 withClass:objc_opt_class() andProcessingVersion:[(VCPPhotosFaceProcessingContext *)self->_context processingVersion]];
      v50 = v102;
      v45 = v50;
      if (v49)
      {
        if (!a4)
        {
          v18 = 0;
          goto LABEL_102;
        }

        v51 = MEMORY[0x1E696ABC0];
        v118 = *MEMORY[0x1E696A578];
        v119 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to set VNRecognizeAnimalsRequest"];
        v93 = v119;
        v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
        [v51 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:?];
        *a4 = v18 = 0;

LABEL_101:
        goto LABEL_102;
      }

      v117[0] = v16;
      v117[1] = v44;
      v117[2] = v50;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:3];
      v101 = 0;
      v53 = [v15 performRequests:v52 error:&v101];
      v93 = v101;

      if ((v53 & 1) == 0)
      {
        if (!a4)
        {
          v18 = 0;
          goto LABEL_101;
        }

        v56 = MEMORY[0x1E696ABC0];
        v115 = *MEMORY[0x1E696A578];
        v116 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to detect facecrop - %@", v93];
        v91 = v116;
        v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
        [v56 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v89];
        *a4 = v18 = 0;

        goto LABEL_100;
      }

      v100 = 0;
      v54 = [VCPFaceUtils configureVNRequest:&v100 withClass:objc_opt_class() andProcessingVersion:[(VCPPhotosFaceProcessingContext *)self->_context processingVersion]];
      v91 = v100;
      if (v54)
      {
        if (a4)
        {
          v55 = MEMORY[0x1E696ABC0];
          v113 = *MEMORY[0x1E696A578];
          v88 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to set VNCreateFaceprintRequest"];
          v114 = v88;
          v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
          [v55 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v86];
          *a4 = v18 = 0;

LABEL_99:
          goto LABEL_100;
        }

        v18 = 0;
LABEL_100:

        goto LABEL_101;
      }

      v99 = 0;
      v57 = [VCPFaceUtils configureVNRequest:&v99 withClass:objc_opt_class() andProcessingVersion:[(VCPPhotosFaceProcessingContext *)self->_context processingVersion]];
      v88 = v99;
      if (v57)
      {
        if (!a4)
        {
          v18 = 0;
          goto LABEL_99;
        }

        v58 = MEMORY[0x1E696ABC0];
        v111 = *MEMORY[0x1E696A578];
        v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to set VNCreateAnimalprintRequest"];
        v112 = v87;
        v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
        [v58 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v83];
        *a4 = v18 = 0;

LABEL_98:
        goto LABEL_99;
      }

      v87 = [MEMORY[0x1E695DF70] array];
      v59 = [v16 results];
      v60 = v59 == 0;

      if (!v60)
      {
        v61 = [v16 results];
        [v91 setInputFaceObservations:v61];

        [v87 addObject:v91];
      }

      v62 = [v44 results];
      v63 = v62 == 0;

      if (!v63)
      {
        v84 = [MEMORY[0x1E695DF70] array];
        v64 = [v45 results];
        v65 = [v64 count] == 0;

        if (!v65)
        {
          v66 = [v45 results];
          [v84 addObjectsFromArray:v66];
        }

        v67 = [v44 results];
        v68 = [v67 count] == 0;

        if (!v68)
        {
          v69 = [v44 results];
          [v84 addObjectsFromArray:v69];
        }

        [v88 setInputDetectedObjectObservations:v84];
        [v87 addObject:v88];
      }

      v98 = v93;
      v70 = [v15 performRequests:v87 error:&v98];
      v82 = v98;

      if ((v70 & 1) == 0)
      {
        if (!a4)
        {
          v18 = 0;
          v93 = v82;
          goto LABEL_98;
        }

        v72 = MEMORY[0x1E696ABC0];
        v109 = *MEMORY[0x1E696A578];
        v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to print facecrop - %@", v82];
        v110 = v85;
        v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
        [v72 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v94];
        *a4 = v18 = 0;
LABEL_97:

        v93 = v82;
        goto LABEL_98;
      }

      v85 = [(PHPhotoLibrary *)self->_photoLibrary mad_allPersonsFetchOptions];
      v94 = [MEMORY[0x1E6978978] fetchPersonForFaceCrop:v7 options:v85];
      v81 = [v94 firstObject];
      if (!v81)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v73 = [v7 localIdentifier];
          *buf = 138412290;
          v108 = v73;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceCropManager][%@] Failed to retrieve PHPerson from facecrop", buf, 0xCu);
        }

        v18 = 0;
        goto LABEL_96;
      }

      if ([v81 detectionType] == 1)
      {
        v71 = [(VCPFaceCropManager *)self _vcpHumanFaceWithFaceCrop:v7 imageRequestHandler:v15 faceDetectionRequest:v16 normalizedFaceCropBoundingBox:v91 faceCropImageDimension:a4 faceprintRequest:v29 error:v30, v95, v96, v37, v38];
      }

      else
      {
        if ([v81 detectionType] != 3 && objc_msgSend(v81, "detectionType") != 4)
        {
          goto LABEL_88;
        }

        v80 = [v44 results];
        v74 = [v45 results];
        v71 = [(VCPFaceCropManager *)self _vcpAnimalFaceWithFaceCrop:v7 animalFaceObservations:v80 animalBodyObservations:v74 animalprintRequest:v88 normalizedFaceCropBoundingBox:a4 faceCropImageDimension:v29 error:v30, v95, v96, v37, v38];
      }

      if (v71)
      {
        v75 = [v71 imageprintWrapper];
        v76 = v75 == 0;

        if (!v76)
        {
          v71 = v71;
          v18 = v71;
LABEL_95:

LABEL_96:
          goto LABEL_97;
        }

        if (a4)
        {
          v78 = MEMORY[0x1E696ABC0];
          v105 = *MEMORY[0x1E696A578];
          v97 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to wrap faceprint/faceTorsoprint/animalprint"];
          v106 = v97;
          v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
          *a4 = [v78 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v79];
        }

LABEL_94:
        v18 = 0;
        goto LABEL_95;
      }

LABEL_88:
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v77 = *a4;
        *buf = 138412290;
        v108 = v77;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceCropManager] Failed to create VCPPhotosFace - %@", buf, 0xCu);
      }

      v71 = 0;
      goto LABEL_94;
    }

    if (!a4)
    {
      goto LABEL_31;
    }

    v34 = MEMORY[0x1E696ABC0];
    v130 = *MEMORY[0x1E696A578];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Facecrop image size equals to 0"];
    v131 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
    v21 = [v34 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v16];
LABEL_14:
    v18 = 0;
    *a4 = v21;
    goto LABEL_15;
  }

  if (!a4)
  {
    goto LABEL_31;
  }

  v13 = MEMORY[0x1E696ABC0];
  v132 = *MEMORY[0x1E696A578];
  v14 = MEMORY[0x1E696AEC0];
  v142.origin.x = x;
  v142.origin.y = y;
  v142.size.width = width;
  v142.size.height = height;
  v15 = NSStringFromRect(v142);
  v16 = [v14 stringWithFormat:@"Invalid facecrop bounding box %@", v15];
  v133 = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
  *a4 = [v13 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v17];

LABEL_7:
  v18 = 0;
LABEL_15:

LABEL_16:
LABEL_32:

LABEL_33:

  return v18;
}

- (id)_associateFace:(id)a3 withFaceCrop:(id)a4 error:(id *)a5
{
  v41[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 localIdentifier];

  if (v10)
  {
    if (!a5)
    {
      goto LABEL_13;
    }

    v11 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Face has already been persisted with a facecrop"];
    v41[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    *a5 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v13];

    goto LABEL_4;
  }

  v14 = [v8 imageprintWrapper];

  if (v14)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__38;
    v34 = __Block_byref_object_dispose__38;
    v35 = 0;
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __56__VCPFaceCropManager__associateFace_withFaceCrop_error___block_invoke;
    v26 = &unk_1E834FE18;
    v27 = v8;
    v29 = &v30;
    v28 = v9;
    v15 = _Block_copy(&v23);
    if ([(PHPhotoLibrary *)self->_photoLibrary performChangesAndWait:v15 error:a5, v23, v24, v25, v26])
    {
      a5 = v31[5];
    }

    else if (a5)
    {
      v19 = MEMORY[0x1E696ABC0];
      v36 = *MEMORY[0x1E696A578];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to persist face and facecrop"];
      v37 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      *a5 = [v19 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v21];

      a5 = 0;
    }

    _Block_object_dispose(&v30, 8);
  }

  else if (a5)
  {
    v16 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A578];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Face does not have a faceprint"];
    v39 = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    *a5 = [v16 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v18];

LABEL_4:
    a5 = 0;
  }

LABEL_13:

  return a5;
}

void __56__VCPFaceCropManager__associateFace_withFaceCrop_error___block_invoke(void *a1)
{
  v7 = [MEMORY[0x1E69787E0] creationRequestForFace];
  [VCPFaceUtils assignPropertiesOfVCPPhotosFace:a1[4] toPHFaceChangeRequest:?];
  v2 = [v7 placeholderForCreatedFace];
  v3 = [v2 localIdentifier];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [MEMORY[0x1E6978800] changeRequestForFaceCrop:a1[5]];
  [v6 setState:1];
  [v6 setFace:v2];
}

- (BOOL)_clearDirtyStateOnFaceCrop:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__VCPFaceCropManager__clearDirtyStateOnFaceCrop_error___block_invoke;
    aBlock[3] = &unk_1E834BDC0;
    v12 = v6;
    v8 = _Block_copy(aBlock);
    v9 = [(PHPhotoLibrary *)self->_photoLibrary performChangesAndWait:v8 error:a4];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceCropManager] faceCrop is nil; ignore resetting state to PHFaceCropStateProcessed", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

void __55__VCPFaceCropManager__clearDirtyStateOnFaceCrop_error___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E6978800] changeRequestForFaceCrop:*(a1 + 32)];
  [v1 setState:1];
}

- (BOOL)_generateAndAssociateFaceprintedFaceForFaceCrop:(id)a3 faceCropFaceLocalIdentifier:(id *)a4 error:(id *)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v24 = 0;
  v9 = [(VCPFaceCropManager *)self _faceFromFaceCrop:v8 error:&v24];
  v10 = v24;
  v11 = v10;
  if (v9)
  {
    v23 = v10;
    v12 = [(VCPFaceCropManager *)self _associateFace:v9 withFaceCrop:v8 error:&v23];
    v13 = v23;

    v14 = v12 != 0;
    if (v12)
    {
      if (a4)
      {
        v15 = v12;
        *a4 = v12;
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v16 = [v8 localIdentifier];
        *buf = 138412546;
        v26 = v16;
        v27 = 2112;
        v28 = v12;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FacecropManager][%@] Associated with face %@", buf, 0x16u);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = [v8 localIdentifier];
        v20 = [v9 localIdentifier];
        *buf = 138412802;
        v26 = v19;
        v27 = 2112;
        v28 = v20;
        v29 = 2112;
        v30 = v13;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceCropManager][%@] Failed to associate with face %@ - %@", buf, 0x20u);
      }

      if (a5)
      {
        v21 = v13;
        *a5 = v13;
      }
    }

    v11 = v13;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = [v8 localIdentifier];
      *buf = 138412546;
      v26 = v17;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceCropManager][%@] Failed to faceprint - %@", buf, 0x16u);
    }

    if (a5)
    {
      v18 = v11;
      *a5 = v11;
    }

    [(VCPFaceCropManager *)self _clearDirtyStateOnFaceCrop:v8 error:a5];
    v14 = 0;
  }

  return v14;
}

- (BOOL)_updateFaceprint:(id)a3 forFace:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc(MEMORY[0x1E6978818]);
  v11 = [v8 data];
  v12 = [v10 initWithFaceprintData:v11 faceprintVersion:{objc_msgSend(v8, "version")}];

  if (v12)
  {
    v13 = [v9 photoLibrary];
    v14 = [v13 librarySpecificFetchOptions];

    [v14 setMinimumUnverifiedFaceCount:0];
    [v14 setMinimumVerifiedFaceCount:0];
    [v14 setIncludeTorsoOnlyPerson:1];
    [v14 setIncludedDetectionTypes:&unk_1F49BECE0];
    v15 = [MEMORY[0x1E6978978] fetchPersonWithFace:v9 options:v14];
    v16 = [v15 firstObject];

    if ([v16 type] == -1 && objc_msgSend(v16, "verifiedType") == 2)
    {
      v17 = -1;
    }

    else
    {
      v17 = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__VCPFaceCropManager__updateFaceprint_forFace_error___block_invoke;
    aBlock[3] = &unk_1E834D7D0;
    v23 = v9;
    v24 = v12;
    v25 = v17;
    v18 = _Block_copy(aBlock);
    v19 = [(PHPhotoLibrary *)self->_photoLibrary performChangesAndWait:v18 error:a5];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = [v9 localIdentifier];
      *buf = 138412290;
      v27 = v20;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FacecropManager] Failed to retreive faceprint for face %@", buf, 0xCu);
    }

    v19 = 0;
  }

  return v19;
}

void __53__VCPFaceCropManager__updateFaceprint_forFace_error___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69787E0] changeRequestForFace:*(a1 + 32)];
  [v2 setFaceprint:*(a1 + 40)];
  [v2 setVuObservationID:*(a1 + 48)];
  [v2 setFaceAlgorithmVersion:{objc_msgSend(*(a1 + 40), "faceprintVersion")}];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) localIdentifier];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FacecropManager] Updating faceprint for face %@", &v4, 0xCu);
  }
}

- (BOOL)_updateFace:(id)a3 withFaceCrop:(id)a4 error:(id *)a5
{
  v8 = a3;
  v19 = 0;
  v9 = [(VCPFaceCropManager *)self _faceFromFaceCrop:a4 error:&v19];
  v10 = v19;
  v11 = v10;
  if (v9)
  {
    v12 = [v9 imageprintWrapper];
    v18 = v11;
    v13 = [(VCPFaceCropManager *)self _updateFaceprint:v12 forFace:v8 error:&v18];
    v14 = v18;

    if (v13)
    {
      v15 = 1;
LABEL_11:
      v11 = v14;
      goto LABEL_12;
    }

    if (!a5)
    {
      v15 = 0;
      goto LABEL_11;
    }

    v11 = v14;
  }

  else
  {
    if (!a5)
    {
      v15 = 0;
      goto LABEL_12;
    }

    v14 = v10;
  }

  v16 = v14;
  v15 = 0;
  *a5 = v14;
LABEL_12:

  return v15;
}

- (BOOL)_processDirtyFaceCrop:(id)a3 faceCropFaceLocalIdentifier:(id *)a4 error:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [v8 resourceData];
  [VCPFaceCropUtils faceCropDimensionsFromFaceCrop:v9 error:a5];
  v11 = v10;
  v13 = v12;

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v14 = [v8 localIdentifier];
    *buf = 138412802;
    v32 = v14;
    v33 = 2048;
    *v34 = v11;
    *&v34[8] = 2048;
    v35 = v13;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FaceCropManager][%@] Analyzing facecrop (%.0fx%.0f)", buf, 0x20u);
  }

  if (![v8 state])
  {
    v18 = [v8 resourceData];
    v19 = v18 == 0;

    if (v19)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v26 = [v8 localIdentifier];
        *buf = 138412290;
        v32 = v26;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceCropManager][%@] FaceCrop does not have data", buf, 0xCu);
      }
    }

    else
    {
      v20 = [(VCPFaceCropManager *)self _faceAssociatedWithFaceCrop:v8];
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v21 = [v8 localIdentifier];
        v22 = [v20 localIdentifier];
        *buf = 138412546;
        v32 = v21;
        v33 = 2112;
        *v34 = v22;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceCropManager][%@] existing face %@", buf, 0x16u);
      }

      if (!v20)
      {
        v25 = [(VCPFaceCropManager *)self _generateAndAssociateFaceprintedFaceForFaceCrop:v8 faceCropFaceLocalIdentifier:a4 error:a5];
LABEL_22:
        v17 = v25;
        goto LABEL_28;
      }

      v30 = 0;
      v23 = [(VCPFaceCropManager *)self _updateFace:v20 withFaceCrop:v8 error:&v30];
      v24 = v30;
      if (v23)
      {
        if (a4)
        {
          *a4 = [v20 localIdentifier];
        }

        v25 = [(VCPFaceCropManager *)self _clearDirtyStateOnFaceCrop:v8 error:a5];
        goto LABEL_22;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v27 = [v20 localIdentifier];
        v28 = [v20 localIdentifier];
        *buf = 138412802;
        v32 = v27;
        v33 = 2112;
        *v34 = v28;
        *&v34[8] = 2112;
        v35 = v24;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceCropManager][%@] Failed to update associated face %@ - %@", buf, 0x20u);
      }
    }

    v17 = 0;
    goto LABEL_28;
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v15 = [v8 localIdentifier];
    v16 = [v8 state];
    *buf = 138412802;
    v32 = v15;
    v33 = 1024;
    *v34 = v16;
    *&v34[4] = 1024;
    *&v34[6] = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FaceCropManager][%@] Not in a dirty state (state:%d, expect:%d); skipping process", buf, 0x18u);
  }

  v17 = 1;
LABEL_28:

  return v17;
}

- (id)_vcpFaceCropFromPHFaceCrop:(id)a3
{
  v3 = a3;
  v4 = [v3 localIdentifier];
  if (v4)
  {
    v5 = [VCPFaceCrop alloc];
    v6 = [v3 resourceData];
    v7 = [(VCPFaceCrop *)v5 initWithLocalIdentifier:v4 faceCropData:v6];

    -[VCPFaceCrop setState:](v7, "setState:", [v3 state]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)generateAndPersistFaceCropsForFaces:(id)a3 withAsset:(id)a4 resource:(id)a5 resourceURL:(id)a6 error:(id *)a7
{
  v64 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v43 = a4;
  v40 = a5;
  v42 = a6;
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v48 objects:v63 count:16];
  if (v13)
  {
    v14 = *v49;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v49 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [VCPPhotosFace faceFromPHFace:*(*(&v48 + 1) + 8 * i) copyOption:0];
        if (v16)
        {
          [v11 addObject:v16];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v48 objects:v63 count:16];
    }

    while (v13);
  }

  if ([v11 count])
  {
    v41 = [MEMORY[0x1E695DF70] array];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v17 = v11;
    v18 = [v17 countByEnumeratingWithState:&v44 objects:v62 count:16];
    if (v18)
    {
      v19 = *v45;
      do
      {
        v20 = 0;
        do
        {
          if (*v45 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v44 + 1) + 8 * v20);
          if ([v21 manual])
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v22 = [v43 localIdentifier];
              v23 = [v21 localIdentifier];
              *buf = 138412546;
              v53 = v22;
              v54 = 2112;
              v55 = v23;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[FaceCropManager][%@] Facecrop will not be generated for the manual face %@", buf, 0x16u);
            }
          }

          else
          {
            v24 = [v43 creationDate];
            if (_GetGroupingIdentifier(NSDate *)::dateFormatterCreationToken != -1)
            {
              [VCPFaceCropManager generateAndPersistFaceCropsForFaces:withAsset:resource:resourceURL:error:];
            }

            v25 = [_GetGroupingIdentifier(NSDate *)::dateFormatterToStripTime stringFromDate:v24];

            v26 = [VCPFaceCrop generateFaceCropsForFace:v21 resourceURL:v42 groupingIdentifier:v25];

            if (v26)
            {
              [v41 addObject:v26];
              [v26 imageDimensions];
              if (v27 < 128.0 || ([v26 imageDimensions], v28 < 128.0))
              {
                if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  v29 = [v43 localIdentifier];
                  [v26 imageDimensions];
                  v31 = v30;
                  [v26 imageDimensions];
                  *buf = 138413314;
                  v53 = v29;
                  v54 = 2048;
                  v55 = v31;
                  v56 = 2048;
                  v57 = v32;
                  v58 = 2112;
                  v59 = v40;
                  v60 = 2112;
                  v61 = v42;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceCropManager][%@] Too small facecrop (%.0fx%.0f) using resource %@ (%@)", buf, 0x34u);
                }
              }
            }
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [v17 countByEnumeratingWithState:&v44 objects:v62 count:16];
      }

      while (v18);
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v33 = [v43 localIdentifier];
      v34 = [v41 count];
      *buf = 138412546;
      v53 = v33;
      v54 = 2048;
      v55 = v34;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FaceCropManager][%@] Generated %lu facecrop(s)", buf, 0x16u);
    }

    v35 = [(VCPFaceCropManager *)self _persistGeneratedFaceCrops:v41 forAsset:v43 error:a7];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v36 = [v43 localIdentifier];
      *buf = 138412290;
      v53 = v36;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FaceCropManager][%@] Asset has face; skip facecrop generation", buf, 0xCu);
    }

    v35 = 1;
  }

  return v35;
}

- (int)processDirtyFaceCrops:(unint64_t *)a3 withCancelBlock:(id)a4 andExtendTimeoutBlock:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v29 = a5;
  v7 = VCPSignPostLog();
  v8 = os_signpost_id_generate(v7);

  v9 = VCPSignPostLog();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VCPFaceProcessingDirtyFaceCrops", "", buf, 2u);
  }

  v11 = MEMORY[0x1E69787E8];
  v12 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v13 = [v11 fetchFaceCropsNeedingFaceDetectionWithOptions:v12];

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v14 = [v13 count];
    *buf = 134217984;
    v32 = v14;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FaceCropManager] Library has %lu dirty facecrops to analyze", buf, 0xCu);
  }

  v15 = 0;
  v16 = 0;
  while (v15 < [v13 count])
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v6[2](v6);
    if ((v18 & 1) == 0)
    {
      if (v29)
      {
        v29[2]();
      }

      v19 = [v13 objectAtIndexedSubscript:v15];
      v30 = 0;
      v20 = [(VCPFaceCropManager *)self _processDirtyFaceCrop:v19 faceCropFaceLocalIdentifier:0 error:&v30];
      v21 = v30;
      if (v20)
      {
        ++v16;
      }

      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = [v19 localIdentifier];
        *buf = 138412546;
        v32 = v22;
        v33 = 2112;
        v34 = v21;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceCropManager] Failed to process dirty facecrop %@ - %@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v17);
    ++v15;
    if (v18)
    {
      v23 = -128;
      goto LABEL_24;
    }
  }

  *a3 = v16;
  v24 = VCPSignPostLog();
  v25 = v24;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_END, v8, "VCPFaceProcessingDirtyFaceCrops", "", buf, 2u);
  }

  v23 = 0;
LABEL_24:

  return v23;
}

@end