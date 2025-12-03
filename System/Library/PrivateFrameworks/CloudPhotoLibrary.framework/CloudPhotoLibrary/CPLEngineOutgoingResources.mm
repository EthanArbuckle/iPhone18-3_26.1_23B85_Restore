@interface CPLEngineOutgoingResources
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)deleteResourcesToUploadWithUploadIdentifier:(id)identifier error:(id *)error;
- (BOOL)openWithError:(id *)error;
- (BOOL)shouldUploadResource:(id)resource;
- (BOOL)storeResourcesToUpload:(id)upload withUploadIdentifier:(id)identifier shouldCheckResources:(BOOL)resources error:(id *)error;
- (id)resourceTypesToUploadForChange:(id)change;
- (unint64_t)availableResourceSizeForUploadIdentifier:(id)identifier;
- (unint64_t)countOfOriginalImages;
- (unint64_t)countOfOriginalOthers;
- (unint64_t)countOfOriginalVideos;
- (unint64_t)sizeOfOriginalResourcesToUpload;
- (unint64_t)sizeOfResourcesToUpload;
@end

@implementation CPLEngineOutgoingResources

- (unint64_t)sizeOfResourcesToUpload
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  sizeOfResourcesToUpload = [platformObject sizeOfResourcesToUpload];

  return sizeOfResourcesToUpload;
}

- (unint64_t)sizeOfOriginalResourcesToUpload
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  sizeOfOriginalResourcesToUpload = [platformObject sizeOfOriginalResourcesToUpload];

  return sizeOfOriginalResourcesToUpload;
}

- (unint64_t)countOfOriginalImages
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  countOfOriginalImages = [platformObject countOfOriginalImages];

  return countOfOriginalImages;
}

- (unint64_t)countOfOriginalVideos
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  countOfOriginalVideos = [platformObject countOfOriginalVideos];

  return countOfOriginalVideos;
}

- (unint64_t)countOfOriginalOthers
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  countOfOriginalOthers = [platformObject countOfOriginalOthers];

  return countOfOriginalOthers;
}

- (BOOL)openWithError:(id *)error
{
  v4.receiver = self;
  v4.super_class = CPLEngineOutgoingResources;
  return [(CPLEngineStorage *)&v4 openWithError:error];
}

- (BOOL)shouldUploadResource:(id)resource
{
  resourceCopy = resource;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject shouldUploadResource:resourceCopy];

  return v6;
}

- (unint64_t)availableResourceSizeForUploadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v6 = [platformObject availableResourceSizeForUploadIdentifier:identifierCopy];

  return v6;
}

- (id)resourceTypesToUploadForChange:(id)change
{
  v17 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  _pushContext = [changeCopy _pushContext];
  uploadIdentifier = [_pushContext uploadIdentifier];

  if (!uploadIdentifier)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = __CPLStorageOSLogDomain_22429();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = changeCopy;
        _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "%@ has no upload identifiers but has resources to upload", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineOutgoingResources.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v14 lineNumber:98 description:{@"%@ has no upload identifiers but has resources to upload", changeCopy}];

    abort();
  }

  platformObject = [(CPLEngineStorage *)self platformObject];
  v9 = [platformObject resourceTypesToUploadForUploadIdentifier:uploadIdentifier];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)deleteResourcesToUploadWithUploadIdentifier:(id)identifier error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  engineStore = [(CPLEngineStorage *)self engineStore];
  resourceStorage = [engineStore resourceStorage];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  platformObject = [(CPLEngineStorage *)self platformObject];
  platformObject2 = [platformObject resourcesToUploadForUploadIdentifier:identifierCopy];

  v11 = [platformObject2 countByEnumeratingWithState:&v20 objects:v26 count:16];
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
          objc_enumerationMutation(platformObject2);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if (([resourceStorage dropResourceForUpload:v15 error:error] & 1) == 0)
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

      v12 = [platformObject2 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  platformObject2 = [(CPLEngineStorage *)self platformObject];
  v16 = [platformObject2 deleteResourcesToUploadWithUploadIdentifier:identifierCopy error:error];
LABEL_15:

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)storeResourcesToUpload:(id)upload withUploadIdentifier:(id)identifier shouldCheckResources:(BOOL)resources error:(id *)error
{
  resourcesCopy = resources;
  v51 = *MEMORY[0x1E69E9840];
  uploadCopy = upload;
  identifierCopy = identifier;
  selfCopy = self;
  engineStore = [(CPLEngineStorage *)self engineStore];
  resourceStorage = [engineStore resourceStorage];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = uploadCopy;
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
        identity = [v18 identity];
        fingerPrint = [identity fingerPrint];
        if (!fingerPrint || (v21 = fingerPrint, [identity fileUTI], v22 = objc_claimAutoreleasedReturnValue(), v22, v21, !v22))
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

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLEngineOutgoingResources.m"];
          [currentHandler handleFailureInMethod:v39 object:selfCopy file:v38 lineNumber:46 description:{@"Resource should be fully formed here: %@", v18}];

          abort();
        }

        fileURL = [identity fileURL];

        if (fileURL)
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

          platformObject = [(CPLEngineStorage *)selfCopy platformObject];
          v26 = [platformObject storeResourceToUpload:v18 withUploadIdentifier:identifierCopy error:error];

          if (!v26)
          {
            goto LABEL_28;
          }

          v27 = [resourceStorage storeResourceForUpload:v18 shouldCheckResource:resourcesCopy error:error];

          if ((v27 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v43 = 0;
          v28 = [resourceStorage storeResourceCopyForUpload:v18 error:&v43];
          v29 = v43;
          v30 = v29;
          if (v28)
          {
            platformObject2 = [(CPLEngineStorage *)selfCopy platformObject];
            v32 = [platformObject2 storeResourceToUpload:v18 withUploadIdentifier:identifierCopy error:error];

            if (!v32)
            {
              goto LABEL_30;
            }
          }

          else
          {
            if (![v29 isCPLErrorWithCode:27])
            {
              if (error)
              {
                v33 = v30;
                *error = v30;
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

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  platformObject = [(CPLEngineStorage *)self platformObject];
  v27 = 0;
  LODWORD(count) = [platformObject deleteRecordsForScopeIndex:index maxCount:count deletedCount:deletedCount discardedResources:&v27 error:error];
  v12 = v27;

  if (count)
  {
    if ([v12 count])
    {
      engineStore = [(CPLEngineStorage *)self engineStore];
      resourceStorage = [engineStore resourceStorage];

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

            if (![resourceStorage dropResourceForUpload:*(*(&v23 + 1) + 8 * i) error:{error, v23}])
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