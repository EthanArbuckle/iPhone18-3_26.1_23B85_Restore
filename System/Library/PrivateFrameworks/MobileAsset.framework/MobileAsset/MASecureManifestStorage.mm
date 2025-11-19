@interface MASecureManifestStorage
- (BOOL)commitStagedManifestsForSelectors:(id)a3 error:(id *)a4;
- (BOOL)invalidateManifestForAssetType:(id)a3 specifier:(id)a4 error:(id *)a5;
- (id)_errorWithCode:(unint64_t)a3 underlyingError:(id)a4;
- (id)_manifestPathForAssetType:(id)a3 specifier:(id)a4 stage:(BOOL)a5;
- (id)_serviceConnectionWithError:(id *)a3;
@end

@implementation MASecureManifestStorage

uint64_t __77__MASecureManifestStorage__storeManifest_manifestType_infoPlist_stage_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _errorWithCode:1 underlyingError:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)commitStagedManifestsForSelectors:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v19 = self;
  v22 = [(MASecureManifestStorage *)self _serviceConnectionWithError:a4];
  if (v22)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v21, "count")}];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = v21;
    v7 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v7)
    {
      v8 = *v32;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          v11 = MEMORY[0x1E696AEC0];
          v12 = [v10 assetType];
          v13 = [v10 assetSpecifier];
          v14 = [v11 stringWithFormat:@"%@:%@", v12, v13];

          [v5 addObject:v14];
        }

        v7 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v7);
    }

    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__4;
    v29 = __Block_byref_object_dispose__4;
    v30 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __67__MASecureManifestStorage_commitStagedManifestsForSelectors_error___block_invoke;
    v24[3] = &unk_1E74CA9F0;
    v24[4] = v19;
    v24[5] = &v25;
    v15 = [v22 synchronousRemoteObjectProxyWithErrorHandler:v24];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __67__MASecureManifestStorage_commitStagedManifestsForSelectors_error___block_invoke_2;
    v23[3] = &unk_1E74CAA18;
    v23[4] = &v25;
    [v15 commitStagedManifestsForSelectors:v5 completion:v23];

    if (a4)
    {
      *a4 = v26[5];
    }

    [v22 invalidate];
    v16 = v26[5] == 0;
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __67__MASecureManifestStorage_commitStagedManifestsForSelectors_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _errorWithCode:1 underlyingError:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)invalidateManifestForAssetType:(id)a3 specifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(MASecureManifestStorage *)self _serviceConnectionWithError:a5];
  v11 = v10;
  if (v10)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__4;
    v21 = __Block_byref_object_dispose__4;
    v22 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__MASecureManifestStorage_invalidateManifestForAssetType_specifier_error___block_invoke;
    v16[3] = &unk_1E74CA9F0;
    v16[4] = self;
    v16[5] = &v17;
    v12 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v16];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __74__MASecureManifestStorage_invalidateManifestForAssetType_specifier_error___block_invoke_2;
    v15[3] = &unk_1E74CAA18;
    v15[4] = &v17;
    [v12 invalidateManifestForAssetType:v8 specifier:v9 completion:v15];

    if (a5)
    {
      *a5 = v18[5];
    }

    [v11 invalidate];
    v13 = v18[5] == 0;
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __74__MASecureManifestStorage_invalidateManifestForAssetType_specifier_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _errorWithCode:1 underlyingError:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

- (id)_manifestPathForAssetType:(id)a3 specifier:(id)a4 stage:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2");
  v10 = [v9 stringByAppendingPathComponent:@"manifests"];

  if (v5)
  {
    v11 = [v10 stringByAppendingPathComponent:@"staged"];

    v10 = v11;
  }

  v12 = normalizedAssetType(v7);
  v13 = [v10 stringByAppendingPathComponent:v12];

  v14 = normalizedAssetType(v8);

  v15 = [v13 stringByAppendingPathComponent:v14];

  v16 = [v15 stringByAppendingPathComponent:@"SecureMobileAssetCryptex1Ticket.img4"];

  return v16;
}

- (id)_serviceConnectionWithError:(id *)a3
{
  v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.MobileAsset.ManifestStorageService"];
  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0C49540];
  [v5 setRemoteObjectInterface:v6];
  [v5 resume];
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = _MAClientLog(@"Manifest");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_197AD5000, v8, OS_LOG_TYPE_ERROR, "Failed to connect to service", v10, 2u);
    }

    if (a3)
    {
      *a3 = [(MASecureManifestStorage *)self _errorWithCode:1 underlyingError:0];
    }
  }

  return v5;
}

- (id)_errorWithCode:(unint64_t)a3 underlyingError:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v11 = *MEMORY[0x1E696AA08];
    v12[0] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ManifestStorageServiceErrorDomain" code:a3 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end