@interface HDOntologyManifestUpdater
+ (BOOL)_handleTaskError:(void *)a3 response:(void *)a4 request:(void *)a5 error:;
+ (BOOL)_importStagedManifestFileWithEntry:(void *)a3 updateCoordinator:(uint64_t)a4 error:;
+ (id)_getManifestEntryWithUpdateCoordinator:(void *)a3 URL:(uint64_t)a4 error:;
+ (id)_stageShardFileWithURL:(void *)a3 entry:(void *)a4 updateCoordinator:(uint64_t)a5 error:;
+ (id)_updateIfStagedEntry:(void *)a3 updateCoordinator:;
+ (id)_versionFromJSONData:(uint64_t)a3 error:;
+ (id)manifestVersionURLForManifestURL:(id)a3;
+ (void)_downloadManifestWithEntry:(void *)a3 session:(void *)a4 updateCoordinator:(void *)a5 completion:;
+ (void)_importStagedManifestFileWithEntry:(void *)a3 updateCoordinator:(void *)a4 completion:;
+ (void)_insertAndLogFailureForEntry:(void *)a3 registry:;
+ (void)_updateManifestWithEntry:(void *)a3 session:(void *)a4 updateCoordinator:(void *)a5 completion:;
- (HDOntologyManifestUpdater)init;
- (HDOntologyManifestUpdater)initWithOntologyUpdateCoordinator:(id)a3;
- (HDOntologyUpdateCoordinator)updateCoordinator;
- (void)updateManifestWithURL:(id)a3 session:(id)a4 completion:(id)a5;
@end

@implementation HDOntologyManifestUpdater

- (HDOntologyManifestUpdater)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDOntologyManifestUpdater)initWithOntologyUpdateCoordinator:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDOntologyManifestUpdater;
  v5 = [(HDOntologyManifestUpdater *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_updateCoordinator, v4);
  }

  return v6;
}

- (void)updateManifestWithURL:(id)a3 session:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_updateCoordinator);
  v15 = 0;
  v12 = [HDOntologyManifestUpdater _getManifestEntryWithUpdateCoordinator:v10 URL:&v15 error:?];

  v13 = v15;
  if (v12)
  {
    v14 = objc_loadWeakRetained(&self->_updateCoordinator);
    [HDOntologyManifestUpdater _updateManifestWithEntry:v12 session:v8 updateCoordinator:v14 completion:v9];
  }

  else
  {
    (*(v9 + 2))(v9, 0, v13);
  }
}

+ (id)_getManifestEntryWithUpdateCoordinator:(void *)a3 URL:(uint64_t)a4 error:
{
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_self();
  v9 = [v6 shardRegistry];
  v10 = *MEMORY[0x277CCC5E8];
  v11 = *MEMORY[0x277CCC620];
  v16 = 0;
  v12 = [v9 entryWithIdentifier:v10 schemaType:v11 schemaVersion:1 entryOut:&v16 transaction:0 error:a4];
  v13 = v16;

  if (v12)
  {
    if (!v13)
    {
      v13 = [objc_alloc(MEMORY[0x277CCD760]) initWithIdentifier:v10 schemaType:v11 schemaVersion:1 availableURL:v7];
    }

    v14 = [(HDOntologyManifestUpdater *)v8 _updateIfStagedEntry:v13 updateCoordinator:v6];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (void)_updateManifestWithEntry:(void *)a3 session:(void *)a4 updateCoordinator:(void *)a5 completion:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_self();
  v13 = [v8 availableURL];
  v14 = [v12 manifestVersionURLForManifestURL:v13];

  v15 = [MEMORY[0x277CCAD20] requestWithURL:v14];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __91__HDOntologyManifestUpdater__updateManifestWithEntry_session_updateCoordinator_completion___block_invoke;
  v25 = &unk_2796B8D50;
  v30 = v11;
  v31 = v12;
  v26 = v15;
  v27 = v8;
  v28 = v10;
  v29 = v9;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v19 = v11;
  v20 = v15;
  v21 = [v16 dataTaskWithRequest:v20 completionHandler:&v22];
  [v21 resume];
}

+ (id)manifestVersionURLForManifestURL:(id)a3
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [a3 absoluteString];
  v5 = [v4 stringByDeletingPathExtension];
  v6 = [v5 stringByAppendingString:@"-version.json"];
  v7 = [v3 URLWithString:v6];

  return v7;
}

+ (id)_updateIfStagedEntry:(void *)a3 updateCoordinator:
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  v7 = [v5 shardRegistry];
  v19 = 0;
  v20 = 0;
  v8 = [v7 stagedShardFileEntryForEntry:v4 entryOut:&v20 error:&v19];
  v9 = v20;
  v10 = v19;

  if ((v8 & 1) == 0)
  {
    _HKInitializeLogging();
    v11 = HKLogHealthOntology();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v22 = v6;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&dword_2514A1000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Unable to determine if there is already a staged manifest file: %{public}@", buf, 0x16u);
    }
  }

  if (v9)
  {
    v12 = [v9 availableVersion];
    if (v12 > [v4 availableVersion])
    {
      v13 = [v4 copyWithAvailableVersion:objc_msgSend(v9 availableState:{"availableVersion"), objc_msgSend(v9, "availableState")}];
LABEL_10:
      v14 = v13;

      v15 = [v5 shardRegistry];
      [(HDOntologyManifestUpdater *)v6 _insertAndLogFailureForEntry:v14 registry:v15];

      v4 = v14;
    }
  }

  else if ([v4 availableState] == 2)
  {
    v13 = [v4 copyWithAvailableState:1];
    goto LABEL_10;
  }

  v16 = v4;

  v17 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (void)_insertAndLogFailureForEntry:(void *)a3 registry:
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  v11 = 0;
  v7 = [v5 insertEntry:v4 error:&v11];

  v8 = v11;
  if ((v7 & 1) == 0)
  {
    _HKInitializeLogging();
    v9 = HKLogHealthOntology();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v13 = v6;
      v14 = 2114;
      v15 = v4;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_2514A1000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Unable to persist entry %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __91__HDOntologyManifestUpdater__updateManifestWithEntry_session_updateCoordinator_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = *(a1 + 72);
  v9 = *(a1 + 32);
  v17 = 0;
  LOBYTE(a3) = [(HDOntologyManifestUpdater *)v8 _handleTaskError:a4 response:a3 request:v9 error:&v17];
  v10 = v17;
  if (a3)
  {
    v16 = 0;
    v11 = [HDOntologyManifestUpdater _versionFromJSONData:v7 error:&v16];
    v12 = v16;
    if (v11)
    {
      v13 = [v11 integerValue];
      if (v13 > [*(a1 + 40) currentVersion])
      {
        if (v13 == [*(a1 + 40) availableVersion] && objc_msgSend(*(a1 + 40), "availableState") == 2)
        {
          [(HDOntologyManifestUpdater *)*(a1 + 72) _importStagedManifestFileWithEntry:*(a1 + 48) updateCoordinator:*(a1 + 64) completion:?];
        }

        else
        {
          v15 = [*(a1 + 40) copyWithAvailableVersion:v13 availableState:1];
          [(HDOntologyManifestUpdater *)*(a1 + 72) _downloadManifestWithEntry:v15 session:*(a1 + 56) updateCoordinator:*(a1 + 48) completion:*(a1 + 64)];
        }

        goto LABEL_12;
      }

      v14 = *(*(a1 + 64) + 16);
    }

    else
    {
      v14 = *(*(a1 + 64) + 16);
    }

    v14();
LABEL_12:

    goto LABEL_13;
  }

  (*(*(a1 + 64) + 16))();
LABEL_13:
}

+ (BOOL)_handleTaskError:(void *)a3 response:(void *)a4 request:(void *)a5 error:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  objc_opt_self();
  if (v8)
  {
    if (a5)
    {
      v11 = v8;
      v12 = 0;
      *a5 = v8;
    }

    else
    {
      _HKLogDroppedError();
      v12 = 0;
    }
  }

  else
  {
    v13 = v9;
    v14 = [v13 statusCode];
    v12 = (v14 - 200) < 0x64;
    if ((v14 - 200) >= 0x64)
    {
      v15 = [MEMORY[0x277CCA9B8] hk_HTTPErrorRepresentingResponse:v13 request:v10];
      if (v15)
      {
        if (a5)
        {
          v16 = v15;
          *a5 = v15;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  return v12;
}

+ (id)_versionFromJSONData:(uint64_t)a3 error:
{
  v4 = a2;
  objc_opt_self();
  v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:a3];

  if (!v5)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v6 = [v5 objectForKeyedSubscript:@"version"];
  if (!v6)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 description:@"No value for expected key 'version'"];
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:{@"Value for key 'version' is of class '%@', but expected kind of NSNumber", objc_opt_class()}];
    goto LABEL_8;
  }

  v7 = v6;
LABEL_9:

LABEL_10:

  return v7;
}

+ (void)_importStagedManifestFileWithEntry:(void *)a3 updateCoordinator:(void *)a4 completion:
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = objc_opt_self();
  v12 = 0;
  v10 = [(HDOntologyManifestUpdater *)v9 _importStagedManifestFileWithEntry:v8 updateCoordinator:v7 error:&v12];

  v11 = v12;
  v6[2](v6, v10, v11);
}

+ (void)_downloadManifestWithEntry:(void *)a3 session:(void *)a4 updateCoordinator:(void *)a5 completion:
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = objc_opt_self();
  v13 = MEMORY[0x277CCAD20];
  v14 = [v8 availableURL];
  v15 = [v13 requestWithURL:v14];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __93__HDOntologyManifestUpdater__downloadManifestWithEntry_session_updateCoordinator_completion___block_invoke;
  v21[3] = &unk_2796B8D78;
  v25 = v10;
  v26 = v12;
  v22 = v15;
  v23 = v8;
  v24 = v9;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v19 = v15;
  v20 = [v11 downloadTaskWithRequest:v19 completionHandler:v21];

  [v20 resume];
}

void __93__HDOntologyManifestUpdater__downloadManifestWithEntry_session_updateCoordinator_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = *(a1 + 64);
  v9 = *(a1 + 32);
  v16 = 0;
  LOBYTE(a3) = [(HDOntologyManifestUpdater *)v8 _handleTaskError:a4 response:a3 request:v9 error:&v16];
  v10 = v16;
  if (a3)
  {
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v15 = 0;
    v13 = [HDOntologyManifestUpdater _stageShardFileWithURL:v7 entry:v11 updateCoordinator:v12 error:&v15];
    v14 = v15;
    if (v13)
    {
      [(HDOntologyManifestUpdater *)*(a1 + 64) _importStagedManifestFileWithEntry:v13 updateCoordinator:*(a1 + 48) completion:*(a1 + 56)];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

+ (id)_stageShardFileWithURL:(void *)a3 entry:(void *)a4 updateCoordinator:(uint64_t)a5 error:
{
  v8 = a3;
  v9 = a4;
  v10 = a2;
  objc_opt_self();
  v11 = [v9 shardRegistry];
  v12 = [v11 stageShardFileWithLocalURL:v10 entry:v8 error:a5];

  if (v12)
  {
    v13 = [v8 copyWithAvailableState:2];
    v14 = [v9 shardRegistry];
    v15 = [v14 insertEntry:v13 error:a5];

    if (v15)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (BOOL)_importStagedManifestFileWithEntry:(void *)a3 updateCoordinator:(uint64_t)a4 error:
{
  v6 = a3;
  v7 = a2;
  objc_opt_self();
  v8 = [HDOntologyManifestImporter importManifestWithEntry:v7 updateCoordinator:v6 error:a4];

  return v8;
}

- (HDOntologyUpdateCoordinator)updateCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_updateCoordinator);

  return WeakRetained;
}

@end