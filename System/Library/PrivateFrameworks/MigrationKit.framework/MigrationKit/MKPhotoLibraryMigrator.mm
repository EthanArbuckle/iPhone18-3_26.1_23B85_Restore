@interface MKPhotoLibraryMigrator
- (BOOL)importAndWait;
- (BOOL)importAssetAndWait:(id)a3 retryNeeded:(BOOL *)a4;
- (MKPhotoLibraryAlbumMigrator)albumMigrator;
- (void)addImportTime:(id)a3;
- (void)addToAssetQueue:(id)a3;
- (void)import;
- (void)import:(id)a3 identifier:(id)a4 offset:(unint64_t)a5 length:(unint64_t)a6 total:(unint64_t)a7 filename:(id)a8 collection:(id)a9 originalFilename:(id)a10 complete:(BOOL)a11;
- (void)importChunk:(id)a3 identifier:(id)a4 offset:(unint64_t)a5 length:(unint64_t)a6 total:(unint64_t)a7 filename:(id)a8 collection:(id)a9 originalFilename:(id)a10 complete:(BOOL)a11;
- (void)photoLibraryDidAddAsset:(id)a3 identifier:(id)a4;
- (void)photoLibraryDidInterruptAsset:(id)a3;
- (void)photoLibraryDidSetIdentifier:(id)a3 forAsset:(id)a4;
- (void)photoLibraryWillAddAsset;
- (void)retry;
@end

@implementation MKPhotoLibraryMigrator

- (void)importChunk:(id)a3 identifier:(id)a4 offset:(unint64_t)a5 length:(unint64_t)a6 total:(unint64_t)a7 filename:(id)a8 collection:(id)a9 originalFilename:(id)a10 complete:(BOOL)a11
{
  v24 = a3;
  v17 = a4;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = self;
  objc_sync_enter(v21);
  v22 = objc_autoreleasePoolPush();
  LOBYTE(v23) = a11;
  [(MKPhotoLibraryMigrator *)v21 import:v24 identifier:v17 offset:a5 length:a6 total:a7 filename:v18 collection:v19 originalFilename:v20 complete:v23];
  objc_autoreleasePoolPop(v22);
  objc_sync_exit(v21);
}

- (void)import:(id)a3 identifier:(id)a4 offset:(unint64_t)a5 length:(unint64_t)a6 total:(unint64_t)a7 filename:(id)a8 collection:(id)a9 originalFilename:(id)a10 complete:(BOOL)a11
{
  v72 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  if ([v18 length] && objc_msgSend(v19, "length"))
  {
    v64 = a5;
    v65 = v17;
    v22 = [v20 lowercaseString];
    v23 = [v22 isEqualToString:@"camera"];

    v61 = a6;
    if (v23)
    {

      v20 = 0;
    }

    v24 = [MEMORY[0x277CBEAA8] date];
    v25 = self->_root;
    v26 = [v18 lastPathComponent];
    v27 = [v26 substringWithRange:{0, 1}];

    v28 = v27;
    v63 = v25;
    v29 = [(NSString *)v25 stringByAppendingPathComponent:v27];
    v67 = [v29 stringByAppendingPathComponent:v19];
    v30 = [MEMORY[0x277CCAA00] defaultManager];
    v66 = v30;
    if (([v30 fileExistsAtPath:v29] & 1) != 0 || (v69 = 0, objc_msgSend(v30, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v29, 1, 0, &v69), (v31 = v69) == 0))
    {
      v62 = 0;
    }

    else
    {
      v32 = self;
      v33 = v31;
      v58 = v29;
      v34 = v28;
      v35 = v32;
      v36 = a7;
      v37 = +[MKLog log];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [MKFileMigrator import:filename:offset:length:total:complete:];
      }

      a7 = v36;
      v38 = v35;
      v28 = v34;
      v29 = v58;
      v62 = v33;
      self = v38;
    }

    if (v64)
    {
      v59 = a7;
      v68 = 0;
      v39 = [v66 attributesOfItemAtPath:v67 error:&v68];
      v40 = v68;
      if (v40)
      {
        v41 = v40;
        v42 = v29;
        v43 = +[MKLog log];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [MKFileMigrator import:filename:offset:length:total:complete:];
        }

        v29 = v42;
LABEL_40:

        goto LABEL_41;
      }

      v57 = v21;
      v44 = [v39 objectForKey:*MEMORY[0x277CCA1C0]];
      v45 = [v44 unsignedLongLongValue];

      if (v45 == v64)
      {
        v56 = v39;
        v46 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v67];
        [v46 seekToEndOfFile];
        [v46 writeData:v65];
        [v46 synchronizeFile];
        v55 = v46;
        [v46 closeFile];
        v47 = +[MKLog log];
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v48 = [v65 length];
          *buf = 134217984;
          v71 = v48;
          _os_log_impl(&dword_2592D2000, v47, OS_LOG_TYPE_INFO, "appended some bytes to a file. bytes=%ld", buf, 0xCu);
        }

        v21 = v57;
        a7 = v59;
        v49 = a11;
        if (v64 + v61 == v59)
        {
          v49 = 1;
        }

        goto LABEL_34;
      }

      v21 = v57;
      v50 = v45 == v59;
      a7 = v59;
      if (!v50)
      {
        v56 = v39;
        v51 = +[MKLog log];
        v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
        v55 = v51;
        if (v52)
        {
          [MKFileMigrator import:v51 filename:? offset:? length:? total:? complete:?];
        }

        v49 = a11;
LABEL_34:

        [(MKPhotoLibraryMigrator *)self addImportTime:v24];
        if (!v49)
        {
LABEL_41:

          v17 = v65;
          goto LABEL_42;
        }

        goto LABEL_35;
      }

      [(MKPhotoLibraryMigrator *)self addImportTime:v24];
    }

    else
    {
      if (([v66 fileExistsAtPath:v67] & 1) == 0)
      {
        [v65 writeToFile:v67 atomically:1];
      }

      [(MKPhotoLibraryMigrator *)self addImportTime:v24];
      if (v61 != a7 && !a11)
      {
        goto LABEL_41;
      }
    }

LABEL_35:
    v60 = v29;
    v53 = +[MKLog log];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v71 = v67;
      _os_log_impl(&dword_2592D2000, v53, OS_LOG_TYPE_INFO, "will add a file to asset queue. file=%@", buf, 0xCu);
    }

    if (!a7)
    {
      a7 = [v66 mk_fileSizeAtPath:v67];
    }

    v41 = [[MKPhotoLibraryAsset alloc] initWithPath:v67 filename:v19 collection:v20 originalFilename:v21 size:a7];
    [(MKPhotoLibraryAssetDatabase *)self->_db addAsset:v41];
    [(MKMigrator *)self migratorDidImport];
    [(MKMigrator *)self migratorDidAppendDataSize:[(MKPhotoLibraryAsset *)v41 size]];
    v29 = v60;
    goto LABEL_40;
  }

  v24 = +[MKLog log];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [MKPhotoLibraryMigrator import:identifier:offset:length:total:filename:collection:originalFilename:complete:];
  }

LABEL_42:

  v54 = *MEMORY[0x277D85DE8];
}

- (void)addToAssetQueue:(id)a3
{
  [(MKPhotoLibraryAssetDatabase *)self->_db addAsset:a3];
  v4 = [(MKMigrator *)self delegate];
  [v4 migratorWillExecuteOperation:self];

  [(MKPhotoLibraryMigrator *)self photoLibraryWillAddAsset];
}

- (void)photoLibraryWillAddAsset
{
  if (!self->_isBusy)
  {
    if ([(MKPhotoLibraryAssetDatabase *)self->_db count])
    {
      self->_isBusy = 1;
      v3 = [MEMORY[0x277CBEAA8] date];
      v4 = [(MKPhotoLibraryAssetDatabase *)self->_db asset];
      v5 = [v4 path];
      v6 = [v4 filename];
      v7 = [v4 originalFilename];
      v8 = [v4 size];
      v9 = [(MKPhotoLibraryMigrator *)self shouldRetry];
      objc_initWeak(&location, self);
      photoLibrary = self->_photoLibrary;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __50__MKPhotoLibraryMigrator_photoLibraryWillAddAsset__block_invoke;
      v14[3] = &unk_2798DCFB0;
      objc_copyWeak(&v18, &location);
      v11 = v5;
      v15 = v11;
      v19 = v9;
      v12 = v3;
      v16 = v12;
      v13 = v4;
      v17 = v13;
      [(MKPhotoLibrary *)photoLibrary addAsset:v11 filename:v6 originalFilename:v7 size:v8 completion:v14];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

void __50__MKPhotoLibraryMigrator_photoLibraryWillAddAsset__block_invoke(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v12 = +[MKLog log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 32);
    *buf = 67109890;
    *v25 = a2;
    *&v25[4] = 1024;
    *&v25[6] = a3;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&dword_2592D2000, v12, OS_LOG_TYPE_INFO, "did import a media file. success=%d, interrupted=%d, file=%@, error=%@", buf, 0x22u);
  }

  if (a3 && *(a1 + 64) == 1)
  {
    v14 = +[MKLog log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      *buf = 138412290;
      *v25 = v15;
      _os_log_impl(&dword_2592D2000, v14, OS_LOG_TYPE_INFO, "will retry to import an asset. file=%@", buf, 0xCu);
    }

    [WeakRetained addImportTime:*(a1 + 40)];
    [WeakRetained photoLibraryDidInterruptAsset:*(a1 + 48)];
  }

  else
  {
    if (v10)
    {
      v16 = [MEMORY[0x277CCAA00] defaultManager];
      v17 = [v16 isDeletableFileAtPath:*(a1 + 32)];

      if (v17)
      {
        v18 = [MEMORY[0x277CCAA00] defaultManager];
        v19 = *(a1 + 32);
        v23 = 0;
        [v18 removeItemAtPath:v19 error:&v23];
        v20 = v23;

        if (v20)
        {
          v21 = +[MKLog log];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [MKContainerMigrator import:signature:chunk:filename:offset:length:total:required:excludedFromBackup:complete:];
          }
        }
      }
    }

    [WeakRetained addImportTime:*(a1 + 40)];
    [WeakRetained photoLibraryDidAddAsset:*(a1 + 48) identifier:v9];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)retry
{
  ++self->_interruptionCount;
  [(MKPhotoLibraryMigrator *)self setIsBusy:0];

  [(MKPhotoLibraryMigrator *)self photoLibraryWillAddAsset];
}

- (void)photoLibraryDidInterruptAsset:(id)a3
{
  objc_initWeak(&location, self);
  assetQueue = self->_assetQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__MKPhotoLibraryMigrator_photoLibraryDidInterruptAsset___block_invoke;
  v5[3] = &unk_2798DCFD8;
  objc_copyWeak(&v6, &location);
  dispatch_async(assetQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __56__MKPhotoLibraryMigrator_photoLibraryDidInterruptAsset___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained retry];
}

- (void)photoLibraryDidAddAsset:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  assetQueue = self->_assetQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__MKPhotoLibraryMigrator_photoLibraryDidAddAsset_identifier___block_invoke;
  v11[3] = &unk_2798DD000;
  objc_copyWeak(&v14, &location);
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(assetQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __61__MKPhotoLibraryMigrator_photoLibraryDidAddAsset_identifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained resetInterruptionCount];
  [WeakRetained photoLibraryDidSetIdentifier:*(a1 + 32) forAsset:*(a1 + 40)];
  [WeakRetained setIsBusy:0];
  [WeakRetained photoLibraryWillAddAsset];
}

- (void)photoLibraryDidSetIdentifier:(id)a3 forAsset:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([v11 length])
  {
    [(MKMigrator *)self migratorDidImport];
    -[MKMigrator migratorDidAppendDataSize:](self, "migratorDidAppendDataSize:", [v6 size]);
    v7 = [v6 collection];
    v8 = [v7 length];

    if (v8)
    {
      WeakRetained = objc_loadWeakRetained(&self->_albumMigrator);
      [WeakRetained setIdentifier:v11 forAsset:v6];
    }
  }

  else
  {
    [(MKMigrator *)self migratorDidFailWithImportError:0];
  }

  [(MKPhotoLibraryAssetDatabase *)self->_db remove:v6];
  v10 = [(MKMigrator *)self delegate];
  [v10 migratorDidExecuteOperation:self];
}

- (void)import
{
  [(MKPhotoLibrary *)self->_photoLibrary close];
  db = self->_db;
  self->_db = 0;

  v4.receiver = self;
  v4.super_class = MKPhotoLibraryMigrator;
  [(MKMigrator *)&v4 import];
}

- (void)addImportTime:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v5);
  type = self->_type;
  if (type == 1)
  {
    v7 = [v5 payload];
    v8 = [v7 videos];
  }

  else
  {
    if (type)
    {
      goto LABEL_7;
    }

    v7 = [v5 payload];
    v8 = [v7 photos];
  }

  v9 = v8;

  if (v9)
  {
    v10 = [MEMORY[0x277CBEAA8] date];
    [v10 timeIntervalSinceDate:v4];
    v12 = v11;

    v13 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v12];
    v14 = [v9 importElapsedTime];
    v15 = [v14 decimalNumberByAdding:v13];
    [v9 setImportElapsedTime:v15];

    goto LABEL_9;
  }

LABEL_7:
  v9 = +[MKLog log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v16 = self->_type;
    v18[0] = 67109120;
    v18[1] = v16;
    _os_log_impl(&dword_2592D2000, v9, OS_LOG_TYPE_INFO, "Not adding import time for unknown type: %ul", v18, 8u);
  }

LABEL_9:

  objc_sync_exit(v5);
  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)importAndWait
{
  v3 = [(MKPhotoLibraryAssetDatabase *)self->_db asset];
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = 0;
      v9 = 1;
      do
      {
        if (v9 != 1 || v5 > 0xA)
        {
          break;
        }

        ++v5;
      }

      while (![(MKPhotoLibraryMigrator *)self importAssetAndWait:v4 retryNeeded:&v9]);
      [(MKPhotoLibraryAssetDatabase *)self->_db remove:v4];
      v7 = [(MKPhotoLibraryAssetDatabase *)self->_db asset];

      v4 = v7;
    }

    while (v7);
  }

  return 1;
}

- (BOOL)importAssetAndWait:(id)a3 retryNeeded:(BOOL *)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v6 = [v26 path];
  v25 = [v26 filename];
  v24 = [v26 originalFilename];
  v7 = [v26 size];
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v53 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__2;
  v46 = __Block_byref_object_dispose__2;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__2;
  v40 = __Block_byref_object_dispose__2;
  v41 = 0;
  v8 = dispatch_semaphore_create(0);
  [(MKMigrator *)self migratorWillMeasureImport];
  photoLibrary = self->_photoLibrary;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __57__MKPhotoLibraryMigrator_importAssetAndWait_retryNeeded___block_invoke;
  v28[3] = &unk_2798DD028;
  v10 = v6;
  v29 = v10;
  v31 = &v54;
  v32 = v52;
  v33 = &v48;
  v34 = &v42;
  v35 = &v36;
  v11 = v8;
  v30 = v11;
  [(MKPhotoLibrary *)photoLibrary addAsset:v10 filename:v25 originalFilename:v24 size:v7 completion:v28];
  if ((v55[3] & 1) == 0)
  {
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  }

  [(MKMigrator *)self migratorDidMeasureImport];
  v12 = *(v49 + 24);
  if (v12 == 1)
  {
    v13 = +[MKLog log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v59 = v10;
      _os_log_impl(&dword_2592D2000, v13, OS_LOG_TYPE_INFO, "will retry to import an asset. file=%@", buf, 0xCu);
    }

    *a4 = 1;
  }

  else
  {
    if (v43[5])
    {
      v14 = [MEMORY[0x277CCAA00] defaultManager];
      v15 = [v14 isDeletableFileAtPath:v10];

      if (v15)
      {
        v16 = [MEMORY[0x277CCAA00] defaultManager];
        v27 = 0;
        [v16 removeItemAtPath:v10 error:&v27];
        v17 = v27;

        if (v17)
        {
          v18 = +[MKLog log];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [MKContainerMigrator import:signature:chunk:filename:offset:length:total:required:excludedFromBackup:complete:];
          }
        }
      }
    }

    if ([v37[5] length])
    {
      [(MKMigrator *)self migratorDidImport];
      -[MKMigrator migratorDidAppendDataSize:](self, "migratorDidAppendDataSize:", [v26 size]);
      v19 = [v26 collection];
      v20 = [v19 length] == 0;

      if (!v20)
      {
        WeakRetained = objc_loadWeakRetained(&self->_albumMigrator);
        [WeakRetained setIdentifier:v37[5] forAsset:v26];
      }
    }

    else
    {
      [(MKMigrator *)self migratorDidFailWithImportError:0];
    }
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(v52, 8);
  _Block_object_dispose(&v54, 8);

  v22 = *MEMORY[0x277D85DE8];
  return v12 ^ 1;
}

void __57__MKPhotoLibraryMigrator_importAssetAndWait_retryNeeded___block_invoke(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = +[MKLog log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 32);
    v20[0] = 67109890;
    v20[1] = a2;
    v21 = 1024;
    v22 = a3;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_2592D2000, v11, OS_LOG_TYPE_INFO, "did import a media file. success=%d, interrupted=%d, file=%@, error=%@", v20, 0x22u);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  *(*(*(a1 + 56) + 8) + 24) = a2;
  *(*(*(a1 + 64) + 8) + 24) = a3;
  v13 = *(*(a1 + 72) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v10;
  v15 = v10;

  v16 = *(*(a1 + 80) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v9;
  v18 = v9;

  dispatch_semaphore_signal(*(a1 + 40));
  v19 = *MEMORY[0x277D85DE8];
}

- (MKPhotoLibraryAlbumMigrator)albumMigrator
{
  WeakRetained = objc_loadWeakRetained(&self->_albumMigrator);

  return WeakRetained;
}

@end