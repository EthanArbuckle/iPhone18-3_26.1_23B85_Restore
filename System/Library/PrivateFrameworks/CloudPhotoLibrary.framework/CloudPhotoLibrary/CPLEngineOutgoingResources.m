@interface CPLEngineOutgoingResources
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)deleteResourcesToUploadWithUploadIdentifier:(id)a3 error:(id *)a4;
- (BOOL)openWithError:(id *)a3;
- (BOOL)shouldUploadResource:(id)a3;
- (BOOL)storeResourcesToUpload:(id)a3 withUploadIdentifier:(id)a4 shouldCheckResources:(BOOL)a5 error:(id *)a6;
- (id)resourceTypesToUploadForChange:(id)a3;
- (unint64_t)availableResourceSizeForUploadIdentifier:(id)a3;
- (unint64_t)countOfOriginalImages;
- (unint64_t)countOfOriginalOthers;
- (unint64_t)countOfOriginalVideos;
- (unint64_t)sizeOfOriginalResourcesToUpload;
- (unint64_t)sizeOfResourcesToUpload;
@end

@implementation CPLEngineOutgoingResources

- (unint64_t)sizeOfResourcesToUpload
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 sizeOfResourcesToUpload];

  return v3;
}

- (unint64_t)sizeOfOriginalResourcesToUpload
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 sizeOfOriginalResourcesToUpload];

  return v3;
}

- (unint64_t)countOfOriginalImages
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 countOfOriginalImages];

  return v3;
}

- (unint64_t)countOfOriginalVideos
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 countOfOriginalVideos];

  return v3;
}

- (unint64_t)countOfOriginalOthers
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 countOfOriginalOthers];

  return v3;
}

- (BOOL)openWithError:(id *)a3
{
  v4.receiver = self;
  v4.super_class = CPLEngineOutgoingResources;
  return [(CPLEngineStorage *)&v4 openWithError:a3];
}

- (BOOL)shouldUploadResource:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 shouldUploadResource:v4];

  return v6;
}

- (unint64_t)availableResourceSizeForUploadIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStorage *)self platformObject];
  v6 = [v5 availableResourceSizeForUploadIdentifier:v4];

  return v6;
}

- (id)resourceTypesToUploadForChange:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 _pushContext];
  v7 = [v6 uploadIdentifier];

  if (!v7)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLStorageOSLogDomain_22429();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v5;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "%@ has no upload identifiers but has resources to upload", buf, 0xCu);
      }
    }

    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineOutgoingResources.m"];
    [v13 handleFailureInMethod:a2 object:self file:v14 lineNumber:98 description:{@"%@ has no upload identifiers but has resources to upload", v5}];

    abort();
  }

  v8 = [(CPLEngineStorage *)self platformObject];
  v9 = [v8 resourceTypesToUploadForUploadIdentifier:v7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)deleteResourcesToUploadWithUploadIdentifier:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CPLEngineStorage *)self engineStore];
  v8 = [v7 resourceStorage];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(CPLEngineStorage *)self platformObject];
  v10 = [v9 resourcesToUploadForUploadIdentifier:v6];

  v11 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if (([v8 dropResourceForUpload:v15 error:a4] & 1) == 0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v17 = __CPLStorageOSLogDomain_22429();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v25 = v15;
              _os_log_impl(&dword_1DC05A000, v17, OS_LOG_TYPE_ERROR, "Failed to drop resource for upload: %@", buf, 0xCu);
            }
          }

          v16 = 0;
          goto LABEL_15;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v10 = [(CPLEngineStorage *)self platformObject];
  v16 = [v10 deleteResourcesToUploadWithUploadIdentifier:v6 error:a4];
LABEL_15:

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)storeResourcesToUpload:(id)a3 withUploadIdentifier:(id)a4 shouldCheckResources:(BOOL)a5 error:(id *)a6
{
  v40 = a5;
  v51 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v42 = self;
  v12 = [(CPLEngineStorage *)self engineStore];
  v13 = [v12 resourceStorage];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v10;
  v14 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v14)
  {
    v15 = v14;
    v39 = a2;
    v16 = *v45;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v44 + 1) + 8 * i);
        v19 = [v18 identity];
        v20 = [v19 fingerPrint];
        if (!v20 || (v21 = v20, [v19 fileUTI], v22 = objc_claimAutoreleasedReturnValue(), v22, v21, !v22))
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v36 = __CPLStorageOSLogDomain_22429();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v49 = v18;
              _os_log_impl(&dword_1DC05A000, v36, OS_LOG_TYPE_ERROR, "Resource should be fully formed here: %@", buf, 0xCu);
            }
          }

          v37 = [MEMORY[0x1E696AAA8] currentHandler];
          v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineOutgoingResources.m"];
          [v37 handleFailureInMethod:v39 object:v42 file:v38 lineNumber:46 description:{@"Resource should be fully formed here: %@", v18}];

          abort();
        }

        v23 = [v19 fileURL];

        if (v23)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v24 = __CPLStorageOSLogDomain_22429();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v49 = v18;
              _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_DEBUG, "Storing for upload: %@", buf, 0xCu);
            }
          }

          v25 = [(CPLEngineStorage *)v42 platformObject];
          v26 = [v25 storeResourceToUpload:v18 withUploadIdentifier:v11 error:a6];

          if (!v26)
          {
            goto LABEL_28;
          }

          v27 = [v13 storeResourceForUpload:v18 shouldCheckResource:v40 error:a6];

          if ((v27 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v43 = 0;
          v28 = [v13 storeResourceCopyForUpload:v18 error:&v43];
          v29 = v43;
          v30 = v29;
          if (v28)
          {
            v31 = [(CPLEngineStorage *)v42 platformObject];
            v32 = [v31 storeResourceToUpload:v18 withUploadIdentifier:v11 error:a6];

            if (!v32)
            {
              goto LABEL_30;
            }
          }

          else
          {
            if (![v29 isCPLErrorWithCode:27])
            {
              if (a6)
              {
                v33 = v30;
                *a6 = v30;
              }

LABEL_28:
LABEL_29:
              LOBYTE(v32) = 0;
              goto LABEL_30;
            }
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
      LOBYTE(v32) = 1;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOBYTE(v32) = 1;
  }

LABEL_30:

  v34 = *MEMORY[0x1E69E9840];
  return v32;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = [(CPLEngineStorage *)self platformObject];
  v27 = 0;
  LODWORD(a4) = [v11 deleteRecordsForScopeIndex:a3 maxCount:a4 deletedCount:a5 discardedResources:&v27 error:a6];
  v12 = v27;

  if (a4)
  {
    if ([v12 count])
    {
      v13 = [(CPLEngineStorage *)self engineStore];
      v14 = [v13 resourceStorage];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v15 = v12;
      v16 = [v15 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v24;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(v15);
            }

            if (![v14 dropResourceForUpload:*(*(&v23 + 1) + 8 * i) error:{a6, v23}])
            {
              v20 = 0;
              goto LABEL_14;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v23 objects:v28 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v20 = 1;
LABEL_14:
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

@end