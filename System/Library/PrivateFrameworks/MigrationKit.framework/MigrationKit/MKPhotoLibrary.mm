@interface MKPhotoLibrary
- (BOOL)copy:(id)a3 filename:(id)a4 error:(id *)a5;
- (BOOL)photoLibraryDidComplete:(id)a3 filename:(id)a4 originalFilename:(id)a5 success:(BOOL)a6 error:(id *)a7;
- (MKPhotoLibrary)init;
- (MKPhotoLibrary)initWithContentType:(unint64_t)a3;
- (id)addAsset:(id)a3;
- (id)assetCollection:(id)a3;
- (id)assetCollectionChangeRequest:(id)a3;
- (unint64_t)assetCount:(id)a3;
- (unint64_t)countForCollection:(id)a3 error:(id *)a4;
- (void)addAsset:(id)a3 filename:(id)a4 originalFilename:(id)a5 size:(unint64_t)a6 completion:(id)a7;
- (void)sendAnalytics;
- (void)setCollection:(id)a3 forLocalIdentifiers:(id)a4;
@end

@implementation MKPhotoLibrary

- (MKPhotoLibrary)init
{
  v30 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = MKPhotoLibrary;
  v2 = [(MKPhotoLibrary *)&v27 init];
  v3 = v2;
  if (v2)
  {
    [(MKPhotoLibrary *)v2 setContentType:0];
    v4 = objc_alloc_init(MKFileProvider);
    v5 = [(MKFileProvider *)v4 fetchRootPath];

    if (v5)
    {
      v6 = MKLocalizedString(@"MOVE_TO_IOS");
      v7 = [v5 stringByAppendingPathComponent:v6];
      [(MKPhotoLibrary *)v3 setRootPath:v7];

      v8 = +[MKLog log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        rootPath = v3->_rootPath;
        *buf = 138412290;
        v29 = rootPath;
        _os_log_impl(&dword_2592D2000, v8, OS_LOG_TYPE_INFO, "file_storage=%@", buf, 0xCu);
      }

      v10 = [MEMORY[0x277CCAA00] defaultManager];
      v11 = [v10 fileExistsAtPath:v3->_rootPath];

      if ((v11 & 1) == 0)
      {
        v12 = [MEMORY[0x277CCAA00] defaultManager];
        v13 = v3->_rootPath;
        v26 = 0;
        [v12 createDirectoryAtPath:v13 withIntermediateDirectories:0 attributes:0 error:&v26];
        v14 = v26;

        if (v14)
        {
          v15 = +[MKLog log];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            [(MKPhotoLibrary *)v14 init:v15];
          }
        }
      }
    }

    v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
    importErrors = v3->_importErrors;
    v3->_importErrors = v22;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v3;
}

- (MKPhotoLibrary)initWithContentType:(unint64_t)a3
{
  v4 = [(MKPhotoLibrary *)self init];
  v5 = v4;
  if (v4)
  {
    [(MKPhotoLibrary *)v4 setContentType:a3];
    v6 = a3 == 0;
    if (a3)
    {
      v7 = 10;
    }

    else
    {
      v7 = 9;
    }

    v8 = off_2798DB348;
    if (!v6)
    {
      v8 = off_2798DB388;
    }

    v9 = objc_alloc_init(*v8);
    decoder = v5->_decoder;
    v5->_decoder = v9;

    v11 = [[MKImportAnalytics alloc] initWithContentType:v7];
    analytics = v5->_analytics;
    v5->_analytics = v11;
  }

  return v5;
}

- (void)sendAnalytics
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_importCount || [(NSMutableSet *)self->_importErrors count])
  {
    v3 = [(NSMutableSet *)self->_importErrors count];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = self->_importErrors;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(MKImportAnalytics *)self->_analytics send:*(*(&v10 + 1) + 8 * v8++), v10];
        }

        while (v6 != v8);
        v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [(MKImportAnalytics *)self->_analytics complete:v3 == 0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addAsset:(id)a3 filename:(id)a4 originalFilename:(id)a5 size:(unint64_t)a6 completion:(id)a7
{
  v57[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (v12 && v13)
  {
    v16 = a6 == 0;
    v17 = +[MKLog log];
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(MKPhotoLibrary *)v18 addAsset:v25 filename:v26 originalFilename:v27 size:v28 completion:v29, v30, v31];
      }

      if (v15)
      {
        v32 = MEMORY[0x277CCA9B8];
        v54 = *MEMORY[0x277CCA450];
        v55 = @"detected an invalid asset because the file size was zero.";
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v34 = [v32 errorWithDomain:@"MKPhotoLibraryError" code:1 userInfo:v33];

        (*(v15 + 2))(v15, 0, 0, 0, v34);
      }
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2592D2000, v18, OS_LOG_TYPE_INFO, "PHPhotoLibrary will import an asset.", buf, 2u);
      }

      *buf = 0;
      v49 = buf;
      v50 = 0x3032000000;
      v51 = __Block_byref_object_copy__1;
      v52 = __Block_byref_object_dispose__1;
      v53 = 0;
      objc_initWeak(&location, self);
      v19 = [MEMORY[0x277CD9948] sharedPhotoLibrary];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __69__MKPhotoLibrary_addAsset_filename_originalFilename_size_completion___block_invoke;
      v43[3] = &unk_2798DCEF8;
      objc_copyWeak(&v46, &location);
      v45 = buf;
      v20 = v12;
      v44 = v20;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __69__MKPhotoLibrary_addAsset_filename_originalFilename_size_completion___block_invoke_2;
      v36[3] = &unk_2798DCF20;
      objc_copyWeak(&v42, &location);
      v41 = buf;
      v37 = v20;
      v38 = v13;
      v39 = v14;
      v40 = v15;
      [v19 performChanges:v43 completionHandler:v36];

      objc_destroyWeak(&v42);
      objc_destroyWeak(&v46);
      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v21 = +[MKLog log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MKPhotoLibrary addAsset:v12 filename:v13 originalFilename:v21 size:? completion:?];
    }

    if (v15)
    {
      v22 = MEMORY[0x277CCA9B8];
      v56 = *MEMORY[0x277CCA450];
      v57[0] = @"detected an invalid asset because either path or filename is nil.";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
      v24 = [v22 errorWithDomain:@"MKPhotoLibraryError" code:1 userInfo:v23];

      (*(v15 + 2))(v15, 0, 0, 0, v24);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __69__MKPhotoLibrary_addAsset_filename_originalFilename_size_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained addAsset:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __69__MKPhotoLibrary_addAsset_filename_originalFilename_size_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v7 = +[MKLog log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v19 = a2;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_2592D2000, v7, OS_LOG_TYPE_INFO, "PHPhotoLibrary did import an asset. success=%d, error=%@", buf, 0x12u);
  }

  if ((a2 & 1) == 0)
  {
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

  v10 = [v5 code];
  if (v10 != 3301)
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v17 = v5;
    a2 = [WeakRetained photoLibraryDidComplete:v11 filename:v12 originalFilename:v13 success:a2 error:&v17];
    v14 = v17;

    v5 = v14;
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    (*(v15 + 16))(v15, a2, v10 == 3301, *(*(*(a1 + 64) + 8) + 40), v5);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (unint64_t)countForCollection:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277CD9948] sharedPhotoLibrary];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __43__MKPhotoLibrary_countForCollection_error___block_invoke;
  v15[3] = &unk_2798DCF48;
  v15[4] = self;
  v9 = v6;
  v16 = v9;
  v17 = &v18;
  [v8 performChangesAndWait:v15 error:a4];

  objc_autoreleasePoolPop(v7);
  v10 = +[MKLog log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    if (a4)
    {
      v11 = *a4;
    }

    else
    {
      v11 = 0;
    }

    *buf = 138412290;
    v23 = v11;
    _os_log_impl(&dword_2592D2000, v10, OS_LOG_TYPE_INFO, "PHPhotoLibrary did set collections. error=%@", buf, 0xCu);
  }

  v12 = v19[3];
  _Block_object_dispose(&v18, 8);

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void __43__MKPhotoLibrary_countForCollection_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assetCollection:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) assetCount:v2];
}

- (void)setCollection:(id)a3 forLocalIdentifiers:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 length] && objc_msgSend(v7, "count"))
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x277CD9948] sharedPhotoLibrary];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__MKPhotoLibrary_setCollection_forLocalIdentifiers___block_invoke;
    v14[3] = &unk_2798DCF70;
    v14[4] = self;
    v15 = v6;
    v16 = v7;
    v13 = 0;
    [v9 performChangesAndWait:v14 error:&v13];
    v10 = v13;

    objc_autoreleasePoolPop(v8);
    v11 = +[MKLog log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&dword_2592D2000, v11, OS_LOG_TYPE_INFO, "PHPhotoLibrary did set collections. error=%@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __52__MKPhotoLibrary_setCollection_forLocalIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assetCollectionChangeRequest:*(a1 + 40)];
  if (v2)
  {
    v5 = v2;
    v3 = objc_opt_new();
    v4 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:*(a1 + 48) options:v3];
    [v5 addAssets:v4];

    v2 = v5;
  }
}

- (id)addAsset:(id)a3
{
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:a3];
  if (self->_contentType)
  {
    [MEMORY[0x277CD97D0] creationRequestForAssetFromVideoAtFileURL:v4];
  }

  else
  {
    [MEMORY[0x277CD97D0] creationRequestForAssetFromImageAtFileURL:v4];
  }
  v5 = ;
  [v5 setReduceProcessingForIngest:1];
  v6 = [v5 placeholderForCreatedAsset];
  v7 = [v6 localIdentifier];

  return v7;
}

- (BOOL)photoLibraryDidComplete:(id)a3 filename:(id)a4 originalFilename:(id)a5 success:(BOOL)a6 error:(id *)a7
{
  v52 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (a6)
  {
    ++self->_importCount;
    v15 = 1;
    if (!a7)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (!a7)
  {
    v17 = 0;
    v16 = @"unknown";
    goto LABEL_9;
  }

  v16 = [*a7 domain];
  v17 = [*a7 code];
  if (v17 != 3302)
  {
LABEL_9:
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%ld", v16, v17];
    [(NSMutableSet *)self->_importErrors addObject:v18];
    goto LABEL_10;
  }

  if (!self->_decoder)
  {
    goto LABEL_11;
  }

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%ld", v16, 3302];
  [(NSMutableSet *)self->_importErrors addObject:v18];
  v19 = [(MKAssetDecoder *)self->_decoder extractFormatOfAsset:v12];
  analytics = self->_analytics;
  [v12 pathExtension];
  v22 = v21 = v16;
  [(MKImportAnalytics *)analytics send:v19 extension:v22];

  v16 = v21;
  decoder = self->_decoder;
  self->_decoder = 0;

LABEL_10:
LABEL_11:
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v14 length])
  {
    v40 = v16;
    v41 = v13;
    [v24 addObject:v14];
    rootPath = self->_rootPath;
    v26 = [v14 stringByDeletingLastPathComponent];
    v27 = [(NSString *)rootPath stringByAppendingPathComponent:v26];

    v28 = [MEMORY[0x277CCAA00] defaultManager];
    v46 = 0;
    v29 = [v28 createDirectoryAtPath:v27 withIntermediateDirectories:1 attributes:0 error:&v46];
    v30 = v46;

    v31 = +[MKLog log];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = [v30 description];
      *buf = 67109379;
      v49 = v29;
      v50 = 2113;
      v51 = v32;
      _os_log_impl(&dword_2592D2000, v31, OS_LOG_TYPE_INFO, "did create directory. success=%d, error=%{private}@", buf, 0x12u);
    }

    v16 = v40;
    v13 = v41;
  }

  [v24 addObject:v13];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v33 = v24;
  v34 = [v33 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v43;
    while (2)
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v43 != v36)
        {
          objc_enumerationMutation(v33);
        }

        if ([(MKPhotoLibrary *)self copy:v12 filename:*(*(&v42 + 1) + 8 * i) error:a7])
        {
          v15 = 1;
          goto LABEL_25;
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_25:

  if (a7)
  {
LABEL_26:
    if (v15)
    {
      *a7 = 0;
    }
  }

LABEL_28:

  v38 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)copy:(id)a3 filename:(id)a4 error:(id *)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  rootPath = self->_rootPath;
  if (rootPath)
  {
    v11 = [(NSString *)rootPath stringByAppendingPathComponent:v9];
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v12 fileExistsAtPath:v11])
    {
      v33 = a5;
      v35 = v8;
      v13 = [v9 stringByDeletingPathExtension];
      v34 = v9;
      v14 = [v9 pathExtension];
      v15 = 2;
      v16 = 2147483645;
      while (1)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %ld", v13, v15];
        if ([v14 length])
        {
          v18 = [v17 stringByAppendingFormat:@".%@", v14];

          v17 = v18;
        }

        v19 = [(NSString *)self->_rootPath stringByAppendingPathComponent:v17];

        v20 = [v12 fileExistsAtPath:v19];
        if ((v20 & 1) == 0)
        {
          break;
        }

        ++v15;
        v11 = v19;
        if (!--v16)
        {

          LOBYTE(v21) = 0;
          v9 = v34;
          v8 = v35;
          goto LABEL_20;
        }
      }

      v9 = v34;
      v8 = v35;
      a5 = v33;
    }

    else
    {
      v19 = v11;
    }

    v21 = [v12 moveItemAtPath:v8 toPath:v19 error:a5];
    v29 = +[MKLog log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v37 = v21;
      _os_log_impl(&dword_2592D2000, v29, OS_LOG_TYPE_INFO, "Local File Storage did import an asset. success=%d", buf, 8u);
    }

    v30 = v21 ^ 1;
    if (!a5)
    {
      v30 = 1;
    }

    if ((v30 & 1) == 0)
    {
      *a5 = 0;
      LOBYTE(v21) = 1;
    }
  }

  else
  {
    v22 = +[MKLog log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(MKPhotoLibrary *)self copy:v22 filename:v23 error:v24, v25, v26, v27, v28];
    }

    LOBYTE(v21) = 0;
  }

LABEL_20:

  v31 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)assetCollectionChangeRequest:(id)a3
{
  v4 = a3;
  v5 = [(MKPhotoLibrary *)self assetCollection:v4];
  if (v5)
  {
    [MEMORY[0x277CD97C0] changeRequestForAssetCollection:v5];
  }

  else
  {
    [MEMORY[0x277CD97C0] creationRequestForAssetCollectionWithTitle:v4];
  }
  v6 = ;

  return v6;
}

- (id)assetCollection:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"localizedTitle = %@", v3];

  [v4 setPredicate:v5];
  v6 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:1 subtype:2 options:v4];
  v7 = [v6 firstObject];

  return v7;
}

- (unint64_t)assetCount:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = MEMORY[0x277CD97A8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v3 fetchAssetsInAssetCollection:v4 options:v5];

  v7 = [v6 count];
  return v7;
}

@end