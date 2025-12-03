@interface VCPPhotosQuickFaceDetectionManager
- (VCPPhotosQuickFaceDetectionManager)initWithPhotoLibrary:(id)library;
- (int)_persistFaces:(id)faces forAsset:(id)asset;
- (int)processAsset:(id)asset;
@end

@implementation VCPPhotosQuickFaceDetectionManager

- (VCPPhotosQuickFaceDetectionManager)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v12.receiver = self;
  v12.super_class = VCPPhotosQuickFaceDetectionManager;
  v6 = [(VCPPhotosQuickFaceDetectionManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
    v8 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:libraryCopy];
    v9 = [[VCPFaceAnalyzer alloc] initWithContext:v8];
    faceAnalyzer = v7->_faceAnalyzer;
    v7->_faceAnalyzer = v9;
  }

  return v7;
}

- (int)_persistFaces:(id)faces forAsset:(id)asset
{
  v24 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  assetCopy = asset;
  if ([facesCopy count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__VCPPhotosQuickFaceDetectionManager__persistFaces_forAsset___block_invoke;
    aBlock[3] = &unk_1E834D238;
    v8 = assetCopy;
    v18 = v8;
    v19 = facesCopy;
    v9 = _Block_copy(aBlock);
    photoLibrary = self->_photoLibrary;
    v16 = 0;
    v11 = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v9 error:&v16];
    v12 = v16;
    if (v11)
    {
      code = 0;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        localIdentifier = [v8 localIdentifier];
        *buf = 138412546;
        v21 = localIdentifier;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, " [%@] QuickFaceDetect: failed to persist classification results: %@", buf, 0x16u);
      }

      code = [v12 code];
    }
  }

  else
  {
    code = 0;
  }

  return code;
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

- (int)processAsset:(id)asset
{
  v20 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    localIdentifier = [assetCopy localIdentifier];
    *buf = 138412546;
    v17 = localIdentifier;
    v18 = 1024;
    LODWORD(v19) = [assetCopy deferredProcessingNeeded];
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, " [%@] QuickFaceDetect: analyzing asset (deferType: %d)", buf, 0x12u);
  }

  faceAnalyzer = self->_faceAnalyzer;
  v15 = 0;
  v7 = [(VCPFaceAnalyzer *)faceAnalyzer quickAnalyzeAsset:assetCopy results:&v15];
  v8 = v15;
  v9 = v8;
  if (!v7)
  {
    v10 = [v8 objectForKeyedSubscript:@"FaceResults"];
    v11 = [v10 objectForKeyedSubscript:@"FacesToPersist"];

    v7 = [(VCPPhotosQuickFaceDetectionManager *)self _persistFaces:v11 forAsset:assetCopy];
    if (!v7 && MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      localIdentifier2 = [assetCopy localIdentifier];
      v13 = [v11 count];
      *buf = 138412546;
      v17 = localIdentifier2;
      v18 = 2048;
      v19 = v13;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, " [%@] QuickFaceDetect: processed %lu faces", buf, 0x16u);
    }
  }

  return v7;
}

@end