@interface NTKFaceSnapshotCacheRequest
- (NTKFaceSnapshotCacheRequest)initWithFace:(id)a3 options:(id)a4 completion:(id)a5;
- (NTKFaceSnapshotCacheRequest)initWithFace:(id)a3 options:(id)a4 resultHandler:(id)a5;
@end

@implementation NTKFaceSnapshotCacheRequest

- (NTKFaceSnapshotCacheRequest)initWithFace:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__NTKFaceSnapshotCacheRequest_initWithFace_options_completion___block_invoke;
  v12[3] = &unk_278784850;
  v13 = v8;
  v9 = v8;
  v10 = [(NTKFaceSnapshotCacheRequest *)self initWithFace:a3 options:a4 resultHandler:v12];

  return v10;
}

void __63__NTKFaceSnapshotCacheRequest_initWithFace_options_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = [a3 snapshot];
    (*(v3 + 16))(v3, a2, v5);
  }
}

- (NTKFaceSnapshotCacheRequest)initWithFace:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v37.receiver = self;
  v37.super_class = NTKFaceSnapshotCacheRequest;
  v12 = [(NTKFaceSnapshotCacheRequest *)&v37 init];
  if (v12)
  {
    v13 = [MEMORY[0x277CBEAA8] date];
    creationDate = v12->_creationDate;
    v12->_creationDate = v13;

    objc_storeStrong(&v12->_face, a3);
    v15 = [v9 dailySnapshotKey];
    v16 = [v15 copy];
    faceSnapshotKey = v12->_faceSnapshotKey;
    v12->_faceSnapshotKey = v16;

    objc_storeStrong(&v12->_options, a4);
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x2020000000;
    v36 = 0;
    objc_initWeak(&location, v12);
    v18 = [v9 unsafeDailySnapshotKey];
    v19 = [v18 copy];

    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __66__NTKFaceSnapshotCacheRequest_initWithFace_options_resultHandler___block_invoke;
    v28 = &unk_278784878;
    objc_copyWeak(&v33, &location);
    v32 = v35;
    v31 = v11;
    v29 = v9;
    v20 = v19;
    v30 = v20;
    v21 = _Block_copy(&v25);
    v22 = [v21 copy];
    completion = v12->_completion;
    v12->_completion = v22;

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
    _Block_object_dispose(v35, 8);
  }

  return v12;
}

void __66__NTKFaceSnapshotCacheRequest_initWithFace_options_resultHandler___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = WeakRetained;
    objc_sync_enter(v11);
    v12 = *(*(a1 + 56) + 8);
    if (*(v12 + 24) == 1)
    {
      v13 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __66__NTKFaceSnapshotCacheRequest_initWithFace_options_resultHandler___block_invoke_cold_1(v11, v13);
      }

      objc_sync_exit(v11);
    }

    else
    {
      *(v12 + 24) = 1;
      objc_sync_exit(v11);

      if (a2)
      {
        v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.snapshots" code:28000 userInfo:0];
        v15 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v11[5];
          v27 = 138412546;
          v28 = v11;
          v29 = 2112;
          v30 = v16;
          _os_log_impl(&dword_22D9C5000, v15, OS_LOG_TYPE_DEFAULT, "Snapshot request cancelled for %@ (%@)", &v27, 0x16u);
        }

        v17 = *(a1 + 48);
        if (v17)
        {
          (*(v17 + 16))(v17, 1, 0, v14);
        }
      }

      else if (v7 || !v8)
      {
        v19 = [*(a1 + 32) dailySnapshotKey];
        v20 = [*(a1 + 32) unsafeDailySnapshotKey];
        if ([v19 isEqualToString:v11[5]])
        {
          v21 = v7;
          v22 = 0;
        }

        else
        {
          v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.nanotimekit.snapshots" code:26000 userInfo:0];
          v23 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v25 = v11[5];
            v26 = *(a1 + 40);
            v27 = 138413058;
            v28 = v25;
            v29 = 2112;
            v30 = v26;
            v31 = 2112;
            v32 = v19;
            v33 = 2112;
            v34 = v20;
            _os_log_error_impl(&dword_22D9C5000, v23, OS_LOG_TYPE_ERROR, "Invalid snapshot: key changed from %@ / %@ to %@ / %@", &v27, 0x2Au);
          }

          v21 = 0;
        }

        v24 = *(a1 + 48);
        if (v24)
        {
          (*(v24 + 16))(v24, 0, v21, v22);
        }
      }

      else
      {
        v18 = *(a1 + 48);
        if (v18)
        {
          (*(v18 + 16))(v18, 0, 0, v8);
        }
      }
    }
  }
}

void __66__NTKFaceSnapshotCacheRequest_initWithFace_options_resultHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Snapshot handler called again for %@ (%@)", &v3, 0x16u);
}

@end