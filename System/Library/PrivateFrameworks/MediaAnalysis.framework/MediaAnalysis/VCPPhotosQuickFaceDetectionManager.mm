@interface VCPPhotosQuickFaceDetectionManager
- (VCPPhotosQuickFaceDetectionManager)initWithPhotoLibrary:(id)a3;
- (int)_persistFaces:(id)a3 forAsset:(id)a4;
- (int)processAsset:(id)a3;
@end

@implementation VCPPhotosQuickFaceDetectionManager

- (VCPPhotosQuickFaceDetectionManager)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = VCPPhotosQuickFaceDetectionManager;
  v6 = [(VCPPhotosQuickFaceDetectionManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
    v8 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:v5];
    v9 = [[VCPFaceAnalyzer alloc] initWithContext:v8];
    faceAnalyzer = v7->_faceAnalyzer;
    v7->_faceAnalyzer = v9;
  }

  return v7;
}

- (int)_persistFaces:(id)a3 forAsset:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__VCPPhotosQuickFaceDetectionManager__persistFaces_forAsset___block_invoke;
    aBlock[3] = &unk_1E834D238;
    v8 = v7;
    v18 = v8;
    v19 = v6;
    v9 = _Block_copy(aBlock);
    photoLibrary = self->_photoLibrary;
    v16 = 0;
    v11 = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v9 error:&v16];
    v12 = v16;
    if (v11)
    {
      v13 = 0;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = [v8 localIdentifier];
        *buf = 138412546;
        v21 = v14;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, " [%@] QuickFaceDetect: failed to persist classification results: %@", buf, 0x16u);
      }

      v13 = [v12 code];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __61__VCPPhotosQuickFaceDetectionManager__persistFaces_forAsset___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6978640] changeRequestForAsset:*(a1 + 32)];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  obj = *(a1 + 40);
  v3 = [obj countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v3)
  {
    v4 = *v13;
    do
    {
      v5 = 0;
      do
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v12 + 1) + 8 * v5);
        v7 = [MEMORY[0x1E69787E0] creationRequestForFace];
        v8 = [v7 placeholderForCreatedFace];
        [VCPFaceUtils assignPropertiesOfVCPPhotosFace:v6 toPHFaceChangeRequest:v7];
        [v7 setNameSource:6];
        v16 = v8;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
        [v2 addFaces:v9];

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v3);
  }

  v10 = [MEMORY[0x1E6978628] quickClassificationFaceAdjustmentVersion];
  [v2 setFaceAdjustmentVersion:v10];

  [v2 setFaceAnalysisVersion:14];
}

- (int)processAsset:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v5 = [v4 localIdentifier];
    *buf = 138412546;
    v17 = v5;
    v18 = 1024;
    LODWORD(v19) = [v4 deferredProcessingNeeded];
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, " [%@] QuickFaceDetect: analyzing asset (deferType: %d)", buf, 0x12u);
  }

  faceAnalyzer = self->_faceAnalyzer;
  v15 = 0;
  v7 = [(VCPFaceAnalyzer *)faceAnalyzer quickAnalyzeAsset:v4 results:&v15];
  v8 = v15;
  v9 = v8;
  if (!v7)
  {
    v10 = [v8 objectForKeyedSubscript:@"FaceResults"];
    v11 = [v10 objectForKeyedSubscript:@"FacesToPersist"];

    v7 = [(VCPPhotosQuickFaceDetectionManager *)self _persistFaces:v11 forAsset:v4];
    if (!v7 && MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v12 = [v4 localIdentifier];
      v13 = [v11 count];
      *buf = 138412546;
      v17 = v12;
      v18 = 2048;
      v19 = v13;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, " [%@] QuickFaceDetect: processed %lu faces", buf, 0x16u);
    }
  }

  return v7;
}

@end