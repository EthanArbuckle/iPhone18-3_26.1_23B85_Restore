@interface NTKCompanionSinglePHAssetEditor
- (NSString)albumName;
- (NTKCompanionSinglePHAssetEditor)initWithResourceDirectory:(id)a3 forDevice:(id)a4 shouldFinalize:(BOOL)a5;
- (id)_createResourceDirectoryForSinglePHAssetWithPreviewOnly:(BOOL)a3;
- (id)optionsForSingleAsset;
- (void)finalizeWithCompletion:(id)a3;
- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)a3;
- (void)setAlbumIdentifier:(id)a3;
- (void)setShouldFinalize:(BOOL)a3;
@end

@implementation NTKCompanionSinglePHAssetEditor

- (NTKCompanionSinglePHAssetEditor)initWithResourceDirectory:(id)a3 forDevice:(id)a4 shouldFinalize:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v16.receiver = self;
  v16.super_class = NTKCompanionSinglePHAssetEditor;
  v9 = [(NTKCompanionResourceDirectoryEditor *)&v16 initWithResourceDirectory:v8 forDevice:a4];
  v10 = v9;
  if (v9)
  {
    [(NTKCompanionSinglePHAssetEditor *)v9 setShouldFinalize:v5];
    v11 = [NTKPhotosReader readerForResourceDirectory:v8];
    v12 = [v11 assetCollectionIdentifier];
    albumIdentifier = v10->_albumIdentifier;
    v10->_albumIdentifier = v12;

    albumName = v10->_albumName;
    v10->_albumName = 0;

    v10->_albumNameValid = 0;
  }

  return v10;
}

- (void)setShouldFinalize:(BOOL)a3
{
  v3 = a3;
  if ([(NTKCompanionResourceDirectoryEditor *)self state]< 3)
  {
    if (v3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    [(NTKCompanionResourceDirectoryEditor *)self setState:v6];
  }

  else
  {
    v5 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [NTKCompanionSinglePHAssetEditor setShouldFinalize:v5];
    }
  }
}

- (NSString)albumName
{
  if (!self->_albumNameValid)
  {
    v3 = [(NTKCompanionSinglePHAssetEditor *)self _fetchAlbumName];
    albumName = self->_albumName;
    self->_albumName = v3;

    self->_albumNameValid = 1;
  }

  v5 = self->_albumName;

  return v5;
}

- (void)setAlbumIdentifier:(id)a3
{
  v4 = [a3 copy];
  if ([(NTKCompanionResourceDirectoryEditor *)self state]< 3)
  {
    albumIdentifier = self->_albumIdentifier;
    if (albumIdentifier != v4 && (!albumIdentifier || ![(NSString *)v4 isEqualToString:?]))
    {
      v7 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(NTKCompanionSinglePHAssetEditor *)v4 setAlbumIdentifier:v7];
      }

      objc_storeStrong(&self->_albumIdentifier, v4);
      v8 = [(NTKCompanionSinglePHAssetEditor *)self _fetchAlbumName];
      albumName = self->_albumName;
      self->_albumName = v8;

      self->_albumNameValid = 1;
      [(NTKCompanionResourceDirectoryEditor *)self setState:2];
    }
  }

  else
  {
    v5 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [NTKCompanionSinglePHAssetEditor setAlbumIdentifier:v5];
    }
  }
}

- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = objc_opt_class();
    v6 = *(&buf + 4);
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "generateGalleryPreviewResourceDirectoryWithCompletion: generating preview for %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__24;
  v24 = __Block_byref_object_dispose__24;
  v25 = 0;
  v7 = [(NTKCompanionResourceDirectoryEditor *)self state];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__NTKCompanionSinglePHAssetEditor_generateGalleryPreviewResourceDirectoryWithCompletion___block_invoke;
  aBlock[3] = &unk_278781B60;
  p_buf = &buf;
  v20 = v7;
  aBlock[4] = self;
  v8 = v4;
  v18 = v8;
  v9 = _Block_copy(aBlock);
  if ([(NTKCompanionResourceDirectoryEditor *)self state]&& [(NTKCompanionResourceDirectoryEditor *)self state]<= 2)
  {
    if ([(NTKCompanionResourceDirectoryEditor *)self state]!= 1)
    {
      [(NTKCompanionResourceDirectoryEditor *)self setState:3];
      v13 = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __89__NTKCompanionSinglePHAssetEditor_generateGalleryPreviewResourceDirectoryWithCompletion___block_invoke_3;
      block[3] = &unk_278781B88;
      v16 = &buf;
      block[4] = self;
      v15 = v9;
      dispatch_async(v13, block);

      goto LABEL_7;
    }

    v11 = [(NTKCompanionResourceDirectoryEditor *)self resourceDirectory];
    v12 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v11;

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  (*(v9 + 2))(v9, v10);
LABEL_7:

  _Block_object_dispose(&buf, 8);
}

void __89__NTKCompanionSinglePHAssetEditor_generateGalleryPreviewResourceDirectoryWithCompletion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__NTKCompanionSinglePHAssetEditor_generateGalleryPreviewResourceDirectoryWithCompletion___block_invoke_2;
  block[3] = &unk_278781B38;
  v1 = *(a1 + 56);
  block[4] = *(a1 + 32);
  v6 = v1;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __89__NTKCompanionSinglePHAssetEditor_generateGalleryPreviewResourceDirectoryWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setState:*(a1 + 56)];
  [*(a1 + 32) setGalleryPreviewResourceDirectory:*(*(*(a1 + 48) + 8) + 40)];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) galleryPreviewResourceDirectory];
  (*(v2 + 16))(v2, v3);
}

uint64_t __89__NTKCompanionSinglePHAssetEditor_generateGalleryPreviewResourceDirectoryWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _createResourceDirectoryForSinglePHAssetWithPreviewOnly:1];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

- (void)finalizeWithCompletion:(id)a3
{
  v4 = a3;
  if ([(NTKCompanionResourceDirectoryEditor *)self state]&& [(NTKCompanionResourceDirectoryEditor *)self state]< 3)
  {
    if ([(NTKCompanionResourceDirectoryEditor *)self state]== 1)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __58__NTKCompanionSinglePHAssetEditor_finalizeWithCompletion___block_invoke_2;
      v9[3] = &unk_27877E570;
      v9[4] = self;
      v10 = v4;
      dispatch_async(MEMORY[0x277D85CD0], v9);
      v5 = v10;
    }

    else
    {
      [(NTKCompanionResourceDirectoryEditor *)self setState:4];
      v6 = dispatch_get_global_queue(2, 0);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __58__NTKCompanionSinglePHAssetEditor_finalizeWithCompletion___block_invoke_3;
      v7[3] = &unk_27877FF60;
      v7[4] = self;
      v8 = v4;
      dispatch_async(v6, v7);

      v5 = v8;
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__NTKCompanionSinglePHAssetEditor_finalizeWithCompletion___block_invoke;
    block[3] = &unk_27877E960;
    v12 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v5 = v12;
  }
}

void __58__NTKCompanionSinglePHAssetEditor_finalizeWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) resourceDirectory];
  (*(v1 + 16))(v1, v2);
}

void __58__NTKCompanionSinglePHAssetEditor_finalizeWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _createResourceDirectoryForSinglePHAssetWithPreviewOnly:0];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NTKCompanionSinglePHAssetEditor_finalizeWithCompletion___block_invoke_4;
  block[3] = &unk_27877DC88;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__NTKCompanionSinglePHAssetEditor_finalizeWithCompletion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setResourceDirectory:*(a1 + 40)];
  [*(a1 + 32) setState:1];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) resourceDirectory];
  (*(v2 + 16))(v2, v3);
}

- (id)optionsForSingleAsset
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CD9880]);
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(mediaType = %ld) && ((playbackStyle = %ld) || (playbackStyle = %ld))", 1, 1, 3];
  [v2 setPredicate:v3];

  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v2 setSortDescriptors:v5];

  v8 = *MEMORY[0x277CD9AE8];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  [v2 addFetchPropertySets:v6];

  [v2 setFetchLimit:1];

  return v2;
}

- (id)_createResourceDirectoryForSinglePHAssetWithPreviewOnly:(BOOL)a3
{
  v3 = a3;
  v5 = [(NTKCompanionSinglePHAssetEditor *)self _fetchSingleAsset];
  v6 = objc_opt_class();
  v7 = [(NTKCompanionSinglePHAssetEditor *)self albumIdentifier];
  v8 = [(NTKCompanionResourceDirectoryEditor *)self device];
  v9 = [v6 _createResourceDirectoryWithAsset:v5 assetCollection:v7 forDevice:v8 previewOnly:v3];

  return v9;
}

- (void)setAlbumIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "setAlbumIdentifier: set the albumIdentifier to %@", &v2, 0xCu);
}

@end