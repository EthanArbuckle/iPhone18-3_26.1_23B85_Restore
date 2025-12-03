@interface VCPMADPersonIdentificationTaskResource
+ (id)sharedResource;
- (VCPMADPersonIdentificationTaskResource)init;
- (id)gallery;
- (id)personsModel;
- (id)petsModel;
- (void)_loadVIPModels;
- (void)_loadVUGallery;
- (void)purge;
@end

@implementation VCPMADPersonIdentificationTaskResource

- (VCPMADPersonIdentificationTaskResource)init
{
  v6.receiver = self;
  v6.super_class = VCPMADPersonIdentificationTaskResource;
  v2 = [(VCPMADVisionResource *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("VCPMADPersonIdentificationTaskResource", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

+ (id)sharedResource
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_44];

  return v5;
}

VCPMADPersonIdentificationTaskResource *__56__VCPMADPersonIdentificationTaskResource_sharedResource__block_invoke()
{
  v0 = objc_alloc_init(VCPMADPersonIdentificationTaskResource);

  return v0;
}

- (void)_loadVIPModels
{
  v38 = *MEMORY[0x1E69E9840];
  if (self->_personsModel && self->_petsModel)
  {
    return;
  }

  v3 = VCPSignPostLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VCPSignPostLog();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MADLoadVIPModels", "", buf, 2u);
  }

  photoLibrary = self->_photoLibrary;
  if (!photoLibrary)
  {
    v8 = +[VCPDefaultPhotoLibraryManager sharedManager];
    defaultPhotoLibrary = [v8 defaultPhotoLibrary];
    v10 = self->_photoLibrary;
    self->_photoLibrary = defaultPhotoLibrary;

    photoLibrary = self->_photoLibrary;
  }

  if (!self->_faceProcessingContext)
  {
    v11 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:photoLibrary];
    faceProcessingContext = self->_faceProcessingContext;
    self->_faceProcessingContext = v11;

    photoLibrary = self->_photoLibrary;
  }

  v13 = [(PHPhotoLibrary *)photoLibrary vcp_vipModelFilepathForVIPType:0];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v15 = [defaultManager fileExistsAtPath:v13];

  if (!v15)
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v13;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Persons Model does not exist - %@", buf, 0xCu);
    }

    goto LABEL_26;
  }

  v35 = 0;
  v16 = [VCPFaceIDModel loadVIPModelAtPath:v13 withVIPType:0 error:&v35];
  v17 = v35;
  personsModel = self->_personsModel;
  self->_personsModel = v16;

  v19 = self->_personsModel;
  if (v19)
  {
    configuration = [(VNPersonsModel *)v19 configuration];
    faceprintRequestRevision = [configuration faceprintRequestRevision];

    if (faceprintRequestRevision == 3737841669)
    {
      v22 = 15;
    }

    else
    {
      v22 = 11;
    }

    [(VCPPhotosFaceProcessingContext *)self->_faceProcessingContext setProcessingVersion:v22];
    if (MediaAnalysisLogLevel() < 6 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    *buf = 134217984;
    v37 = faceprintRequestRevision;
    v23 = MEMORY[0x1E69E9C10];
    v24 = "VIP Model uses faceprint with revision %lu";
    v25 = OS_LOG_TYPE_INFO;
  }

  else
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 138412290;
    v37 = v17;
    v23 = MEMORY[0x1E69E9C10];
    v24 = "Failed to load Person Identity Model - %@";
    v25 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&dword_1C9B70000, v23, v25, v24, buf, 0xCu);
LABEL_25:

LABEL_26:
  v26 = [(PHPhotoLibrary *)self->_photoLibrary vcp_vipModelFilepathForVIPType:1];

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v28 = [defaultManager2 fileExistsAtPath:v26];

  if (v28)
  {
    v34 = 0;
    v29 = [VCPFaceIDModel loadVIPModelAtPath:v26 withVIPType:1 error:&v34];
    v30 = v34;
    petsModel = self->_petsModel;
    self->_petsModel = v29;

    if (!self->_petsModel && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v30;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to load Pets Model - %@", buf, 0xCu);
    }
  }

  else if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v26;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Pets Model does not exist - %@", buf, 0xCu);
  }

  v32 = VCPSignPostLog();
  v33 = v32;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v33, OS_SIGNPOST_INTERVAL_END, v4, "MADLoadVIPModels", "", buf, 2u);
  }
}

- (void)_loadVUGallery
{
  v23 = *MEMORY[0x1E69E9840];
  if (!self->_gallery)
  {
    v3 = VCPSignPostLog();
    v4 = os_signpost_id_generate(v3);

    v5 = VCPSignPostLog();
    v6 = v5;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MADLoadVUIndex", "", buf, 2u);
    }

    photoLibrary = self->_photoLibrary;
    if (!photoLibrary)
    {
      v8 = +[VCPDefaultPhotoLibraryManager sharedManager];
      defaultPhotoLibrary = [v8 defaultPhotoLibrary];
      v10 = self->_photoLibrary;
      self->_photoLibrary = defaultPhotoLibrary;

      photoLibrary = self->_photoLibrary;
    }

    if (!self->_faceProcessingContext)
    {
      v11 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:photoLibrary];
      faceProcessingContext = self->_faceProcessingContext;
      self->_faceProcessingContext = v11;

      photoLibrary = self->_photoLibrary;
    }

    vcp_visionCacheStorageDirectoryURL = [(PHPhotoLibrary *)photoLibrary vcp_visionCacheStorageDirectoryURL];
    v20 = 0;
    v14 = [objc_alloc(MEMORY[0x1E69E0678]) initWithClient:0 path:vcp_visionCacheStorageDirectoryURL error:&v20];
    v15 = v20;
    gallery = self->_gallery;
    self->_gallery = v14;

    if (!self->_gallery && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to load VUWGallery - %@", buf, 0xCu);
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      faceprintRevision = [(VUWGallery *)self->_gallery faceprintRevision];
      *buf = 134217984;
      v22 = faceprintRevision;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Gallery uses faceprint with revision %ld", buf, 0xCu);
    }

    [(VCPPhotosFaceProcessingContext *)self->_faceProcessingContext setProcessingVersion:15];
    v18 = VCPSignPostLog();
    v19 = v18;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_END, v4, "MADLoadVUIndex", "", buf, 2u);
    }
  }
}

- (id)personsModel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__35;
  v10 = __Block_byref_object_dispose__35;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__VCPMADPersonIdentificationTaskResource_personsModel__block_invoke;
  v5[3] = &unk_1E834D538;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __54__VCPMADPersonIdentificationTaskResource_personsModel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadVIPModels];
  v2 = *(*(a1 + 32) + 56);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (id)petsModel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__35;
  v10 = __Block_byref_object_dispose__35;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__VCPMADPersonIdentificationTaskResource_petsModel__block_invoke;
  v5[3] = &unk_1E834D538;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __51__VCPMADPersonIdentificationTaskResource_petsModel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadVIPModels];
  v2 = *(*(a1 + 32) + 64);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (id)gallery
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__35;
  v10 = __Block_byref_object_dispose__35;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__VCPMADPersonIdentificationTaskResource_gallery__block_invoke;
  v5[3] = &unk_1E834D538;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __49__VCPMADPersonIdentificationTaskResource_gallery__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadVUGallery];
  v2 = *(*(a1 + 32) + 48);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (void)purge
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__VCPMADPersonIdentificationTaskResource_purge__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(queue, block);
}

id __47__VCPMADPersonIdentificationTaskResource_purge__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  *(v6 + 56) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 64);
  *(v8 + 64) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 48);
  *(v10 + 48) = 0;

  v13.receiver = *(a1 + 32);
  v13.super_class = VCPMADPersonIdentificationTaskResource;
  return objc_msgSendSuper2(&v13, sel_purge);
}

@end