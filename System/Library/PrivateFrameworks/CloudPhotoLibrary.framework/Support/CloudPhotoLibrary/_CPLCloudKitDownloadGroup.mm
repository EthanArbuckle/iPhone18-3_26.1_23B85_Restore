@interface _CPLCloudKitDownloadGroup
- (BOOL)addDownloadTask:(id)task;
- (BOOL)cancelDownloadTask:(id)task;
- (BOOL)shouldBoostPriority;
- (_CPLCloudKitDownloadGroup)initWithResourceType:(unint64_t)type defaultSourceBundleIdentifier:(id)identifier fingerprintContext:(id)context;
- (double)downloadProgress;
- (id)cloudResourceForRecordWithScopedIdentifier:(id)identifier;
- (id)description;
- (void)allDownloadsDidFailWithError:(id)error;
- (void)allDownloadsDidStartWithOperationID:(id)d;
- (void)enumerateRecordScopedIdentifiersAndTasksWithBlock:(id)block;
- (void)resourceWithRecordScopedIdentifier:(id)identifier didDownloadCKAsset:(id)asset withOperationType:(int64_t)type transcoderVersion:(int64_t)version withFingerPrint:(id)print andFileUTI:(id)i;
- (void)resourceWithRecordScopedIdentifier:(id)identifier didFailToDownloadWithError:(id)error;
- (void)resourceWithRecordScopedIdentifier:(id)identifier didProgress:(double)progress;
- (void)resourceWithRecordScopedIdentifierDidStart:(id)start operationID:(id)d;
@end

@implementation _CPLCloudKitDownloadGroup

- (_CPLCloudKitDownloadGroup)initWithResourceType:(unint64_t)type defaultSourceBundleIdentifier:(id)identifier fingerprintContext:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = _CPLCloudKitDownloadGroup;
  v10 = [(_CPLCloudKitDownloadGroup *)&v22 init];
  if (v10)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    tasks = v10->_tasks;
    v10->_tasks = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    resourceSizes = v10->_resourceSizes;
    v10->_resourceSizes = v13;

    v15 = objc_alloc_init(NSMutableDictionary);
    downloadedSizes = v10->_downloadedSizes;
    v10->_downloadedSizes = v15;

    v17 = objc_alloc_init(NSMutableSet);
    sourceBundleIdentifiers = v10->_sourceBundleIdentifiers;
    v10->_sourceBundleIdentifiers = v17;

    v10->_resourceType = type;
    v19 = [identifierCopy copy];
    defaultSourceBundleIdentifier = v10->_defaultSourceBundleIdentifier;
    v10->_defaultSourceBundleIdentifier = v19;

    objc_storeStrong(&v10->_fingerprintContext, context);
    v10->_maxDownloadSize = [CPLEngineResourceDownloadTask maximumResourceDownloadSizeForResourceType:v10->_resourceType];
  }

  return v10;
}

- (BOOL)addDownloadTask:(id)task
{
  taskCopy = task;
  cloudResource = [taskCopy cloudResource];
  if (!cloudResource)
  {
    sub_1001A89DC(taskCopy, a2, self);
  }

  v7 = cloudResource;
  if ([CPLCloudKitFakeDynamicDerivatives realResourceTypeForResource:cloudResource]== self->_resourceType)
  {
    itemScopedIdentifier = [v7 itemScopedIdentifier];
    v9 = [(NSMutableDictionary *)self->_tasks objectForKeyedSubscript:itemScopedIdentifier];
    if (v9)
    {
      v10 = v9;
      [v9 addObject:taskCopy];
    }

    else
    {
      estimatedResourceSize = [v7 estimatedResourceSize];
      v13 = estimatedResourceSize;
      downloadSize = self->_downloadSize;
      maxDownloadSize = self->_maxDownloadSize;
      v16 = maxDownloadSize > downloadSize;
      v17 = maxDownloadSize - downloadSize;
      if ((!v16 || v17 < estimatedResourceSize) && [(NSMutableDictionary *)self->_tasks count])
      {
        v11 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v10 = [[NSMutableArray alloc] initWithObjects:{taskCopy, 0}];
      [(NSMutableDictionary *)self->_tasks setObject:v10 forKeyedSubscript:itemScopedIdentifier];
      v18 = [NSNumber numberWithUnsignedLongLong:v13];
      [(NSMutableDictionary *)self->_resourceSizes setObject:v18 forKeyedSubscript:itemScopedIdentifier];

      self->_downloadSize += v13;
    }

    clientBundleID = [taskCopy clientBundleID];
    if (!clientBundleID)
    {
      clientBundleID = self->_defaultSourceBundleIdentifier;
    }

    if (!self->_mainBundleIdentifierIsDefault)
    {
      if ([(NSString *)clientBundleID isEqualToString:self->_defaultSourceBundleIdentifier])
      {
        objc_storeStrong(&self->_mainSourceBundleIdentifier, self->_defaultSourceBundleIdentifier);
        self->_mainBundleIdentifierIsDefault = 1;
      }

      else if (!self->_mainSourceBundleIdentifier)
      {
        objc_storeStrong(&self->_mainSourceBundleIdentifier, clientBundleID);
      }
    }

    [(NSMutableSet *)self->_sourceBundleIdentifiers addObject:clientBundleID];
    if (self->_highPriority)
    {
      isHighPriority = 1;
    }

    else
    {
      isHighPriority = [taskCopy isHighPriority];
    }

    self->_highPriority = isHighPriority;

    v11 = 1;
    goto LABEL_23;
  }

  v11 = 0;
LABEL_24:

  return v11;
}

- (void)allDownloadsDidStartWithOperationID:(id)d
{
  dCopy = d;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_tasks;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(_CPLCloudKitDownloadGroup *)self resourceWithRecordScopedIdentifierDidStart:*(*(&v10 + 1) + 8 * v9) operationID:dCopy, v10];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)resourceWithRecordScopedIdentifierDidStart:(id)start operationID:(id)d
{
  dCopy = d;
  v7 = [(NSMutableDictionary *)self->_tasks objectForKeyedSubscript:start];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        [v12 setTransportIdentifier:dCopy];
        didStartHandler = [v12 didStartHandler];
        v14 = didStartHandler;
        if (didStartHandler)
        {
          (*(didStartHandler + 16))(didStartHandler, v12);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)resourceWithRecordScopedIdentifier:(id)identifier didProgress:(double)progress
{
  identifierCopy = identifier;
  v7 = [(NSMutableDictionary *)self->_tasks objectForKeyedSubscript:identifierCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        progressHandler = [v13 progressHandler];
        v15 = progressHandler;
        if (progressHandler)
        {
          progressCopy = progress;
          (*(progressHandler + 16))(progressHandler, v13, progressCopy);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v16 = [(NSMutableDictionary *)self->_resourceSizes objectForKeyedSubscript:identifierCopy];
  [v16 doubleValue];
  if ((v17 * progress))
  {
    v18 = [NSNumber numberWithUnsignedLongLong:?];
    [(NSMutableDictionary *)self->_downloadedSizes setObject:v18 forKeyedSubscript:identifierCopy];
  }

  else
  {
    [(NSMutableDictionary *)self->_downloadedSizes removeObjectForKey:identifierCopy];
  }
}

- (void)resourceWithRecordScopedIdentifier:(id)identifier didDownloadCKAsset:(id)asset withOperationType:(int64_t)type transcoderVersion:(int64_t)version withFingerPrint:(id)print andFileUTI:(id)i
{
  identifierCopy = identifier;
  assetCopy = asset;
  printCopy = print;
  iCopy = i;
  v74 = printCopy;
  if (printCopy)
  {
    fileURL = [assetCopy fileURL];
    if (fileURL)
    {
      v16 = [(NSMutableDictionary *)self->_tasks objectForKeyedSubscript:identifierCopy];
      v77 = +[NSFileManager defaultManager];
      lastObject = [v16 lastObject];
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v17 = v16;
      obj = v17;
      v82 = [v17 countByEnumeratingWithState:&v87 objects:v99 count:16];
      if (v82)
      {
        selfCopy = self;
        v71 = assetCopy;
        v70 = identifierCopy;
        v72 = 0;
        v81 = *v88;
        p_superclass = CPLRemappedBy.superclass;
        v19 = fileURL;
        v73 = iCopy;
        while (1)
        {
          v20 = 0;
          do
          {
            if (*v88 != v81)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v87 + 1) + 8 * v20);
            cloudResource = [v21 cloudResource];
            identity = [cloudResource identity];
            completionHandler = [v21 completionHandler];
            fileURL2 = [identity fileURL];
            if (!fileURL2)
            {
              fingerPrint = [CPLErrors incorrectParametersErrorForParameter:@"fileURL"];
              (completionHandler)[2](completionHandler, v21, fingerPrint);
              goto LABEL_49;
            }

            if ([p_superclass + 44 isFakeDerivative:cloudResource])
            {
              v86 = 0;
              v26 = [p_superclass + 44 transformFromURL:v19 fileType:iCopy toTargetURL:fileURL2 matchingResource:cloudResource error:&v86];
              v27 = v86;
              fingerPrint = v27;
              if (v26)
              {
                v29 = 0;
              }

              else
              {
                v29 = v27;
              }

              (completionHandler)[2](completionHandler, v21, v29);
              if (v21 == lastObject)
              {
                [v77 removeItemAtURL:v19 error:0];
                v72 = 1;
              }

              goto LABEL_24;
            }

            if ((CPLCloudKitUseGateKeeperForOperationType(type) & 1) == 0)
            {
              fingerPrint = [identity fingerPrint];
              v30 = v74;
              if (fingerPrint && ([fingerPrint isEqual:v30] & 1) != 0)
              {
                v31 = 0;
              }

              else
              {
                v31 = v30;
              }

              v32 = v31;
              if (v32)
              {
                v33 = v32;
LABEL_23:
                resourceTypeDescription = [(_CPLCloudKitDownloadGroup *)selfCopy resourceTypeDescription];
                v35 = [CPLErrors cplErrorWithCode:27 description:@"Resource %@ in the cloud is stale (fingerprint is %@ vs. expected %@)", resourceTypeDescription, v33, fingerPrint];
                (completionHandler)[2](completionHandler, v21, v35);

                iCopy = v73;
                v19 = fileURL;
LABEL_24:
                p_superclass = (CPLRemappedBy + 8);
                goto LABEL_49;
              }

              fingerprintContext = selfCopy->_fingerprintContext;
              signature = [v71 signature];
              v38 = [(CPLFingerprintContext *)fingerprintContext fingerprintSchemeForSignature:signature];
              canMatchSignatureToFingerprint = [v38 canMatchSignatureToFingerprint];

              if (canMatchSignatureToFingerprint)
              {
                cplFingerPrint = [v71 cplFingerPrint];
                v41 = fingerPrint;
                v42 = cplFingerPrint;
                v43 = v42;
                if (fingerPrint && v42 && ([v41 isEqual:v42] & 1) != 0)
                {
                  v44 = 0;
                }

                else
                {
                  v44 = v43;
                }

                v33 = v44;
                if (v33)
                {
                  goto LABEL_23;
                }
              }

              iCopy = v73;
              v19 = fileURL;
              p_superclass = (CPLRemappedBy + 8);
            }

            if (v21 == lastObject)
            {
              v85 = 0;
              v48 = [v77 cplMoveItemAtURL:v19 toURL:fileURL2 error:&v85];
              v49 = v85;
              fingerPrint = v49;
              if (v48)
              {
                CPLMarkDownloadedResourceWithDynamicVersion();
                v47 = 0;
                v72 = 1;
              }

              else
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v52 = sub_100003964();
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                  {
                    resourceTypeDescription2 = [(_CPLCloudKitDownloadGroup *)selfCopy resourceTypeDescription];
                    *buf = 138413058;
                    v92 = resourceTypeDescription2;
                    v93 = 2112;
                    v94 = fileURL;
                    v95 = 2112;
                    v96 = fileURL2;
                    v97 = 2112;
                    v98 = fingerPrint;
                    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Failed to move downloaded asset %@ from %@ to %@: %@", buf, 0x2Au);
                  }

                  v47 = fingerPrint;
                  v19 = fileURL;
                  goto LABEL_47;
                }

                v47 = v49;
              }

              goto LABEL_38;
            }

            v84 = 0;
            v45 = [v77 cplCopyItemAtURL:v19 toURL:fileURL2 error:&v84];
            v46 = v84;
            fingerPrint = v46;
            if (v45)
            {
              CPLMarkDownloadedResourceWithDynamicVersion();
              v47 = 0;
LABEL_38:
              v19 = fileURL;
              goto LABEL_48;
            }

            v47 = v46;
            v19 = fileURL;
            if ((_CPLSilentLogging & 1) == 0)
            {
              v50 = sub_100003964();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                resourceTypeDescription3 = [(_CPLCloudKitDownloadGroup *)selfCopy resourceTypeDescription];
                *buf = 138413058;
                v92 = resourceTypeDescription3;
                v93 = 2112;
                v94 = fileURL;
                v95 = 2112;
                v96 = fileURL2;
                v97 = 2112;
                v98 = fingerPrint;
                _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Failed to copy downloaded asset %@ from %@ to %@: %@", buf, 0x2Au);

                v19 = fileURL;
              }

              v47 = fingerPrint;
LABEL_47:
              p_superclass = (CPLRemappedBy + 8);
            }

LABEL_48:
            (completionHandler)[2](completionHandler, v21, v47);
LABEL_49:

            v20 = v20 + 1;
          }

          while (v82 != v20);
          v54 = obj;
          v55 = [obj countByEnumeratingWithState:&v87 objects:v99 count:16];
          v82 = v55;
          if (!v55)
          {

            identifierCopy = v70;
            assetCopy = v71;
            self = selfCopy;
            if (v72)
            {
              goto LABEL_68;
            }

            goto LABEL_58;
          }
        }
      }

LABEL_58:
      if ((_CPLSilentLogging & 1) == 0)
      {
        v64 = sub_100003964();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          resourceTypeDescription4 = [(_CPLCloudKitDownloadGroup *)self resourceTypeDescription];
          *buf = 138412802;
          v92 = fileURL;
          v93 = 2112;
          v94 = resourceTypeDescription4;
          v95 = 2112;
          v96 = identifierCopy;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "No download task moved %@ (resource %@ for %@) away from CloudKit. Removing now", buf, 0x20u);
        }
      }

      v83 = 0;
      v66 = [v77 removeItemAtURL:fileURL error:&v83];
      v67 = v83;
      if ((v66 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
      {
        v68 = sub_100003964();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v92 = fileURL;
          v93 = 2112;
          v94 = v67;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Failed to remove %@: %@", buf, 0x16u);
        }
      }

      v54 = obj;
LABEL_68:
      [(NSMutableDictionary *)self->_tasks removeObjectForKey:identifierCopy];
      v69 = [(NSMutableDictionary *)self->_resourceSizes objectForKeyedSubscript:identifierCopy];
      [(NSMutableDictionary *)self->_downloadedSizes setObject:v69 forKeyedSubscript:identifierCopy];
    }

    else
    {
      propertyKeys = [(_CPLCloudKitDownloadGroup *)self propertyKeys];
      v61 = sub_1001A8CE0(propertyKeys);
      resourceTypeDescription5 = [(_CPLCloudKitDownloadGroup *)self resourceTypeDescription];
      identifierCopy = [CPLErrors cplErrorWithCode:27 description:@"Fetching %@ (%@) for %@ succeeded but did not return the resource", v61, resourceTypeDescription5, identifierCopy];

      [(_CPLCloudKitDownloadGroup *)self resourceWithRecordScopedIdentifier:identifierCopy didFailToDownloadWithError:identifierCopy];
    }
  }

  else
  {
    propertyKeys2 = [(_CPLCloudKitDownloadGroup *)self propertyKeys];
    v57 = sub_1001A8CA4(propertyKeys2);
    resourceTypeDescription6 = [(_CPLCloudKitDownloadGroup *)self resourceTypeDescription];
    identifierCopy2 = [CPLErrors cplErrorWithCode:26 description:@"Fetching %@ (%@) for %@ succeeded but did not return the fingerprint", v57, resourceTypeDescription6, identifierCopy];

    [(_CPLCloudKitDownloadGroup *)self resourceWithRecordScopedIdentifier:identifierCopy didFailToDownloadWithError:identifierCopy2];
  }
}

- (void)resourceWithRecordScopedIdentifier:(id)identifier didFailToDownloadWithError:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  v8 = [(NSMutableDictionary *)self->_tasks objectForKeyedSubscript:identifierCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        completionHandler = [v13 completionHandler];
        (completionHandler)[2](completionHandler, v13, errorCopy);
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [(NSMutableDictionary *)self->_tasks removeObjectForKey:identifierCopy];
  v15 = [(NSMutableDictionary *)self->_resourceSizes objectForKeyedSubscript:identifierCopy];
  [(NSMutableDictionary *)self->_downloadedSizes setObject:v15 forKeyedSubscript:identifierCopy];
}

- (void)allDownloadsDidFailWithError:(id)error
{
  errorCopy = error;
  tasks = self->_tasks;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000842C8;
  v7[3] = &unk_100275F68;
  v8 = errorCopy;
  v6 = errorCopy;
  [(NSMutableDictionary *)tasks enumerateKeysAndObjectsUsingBlock:v7];
  [(NSMutableDictionary *)self->_tasks removeAllObjects];
}

- (BOOL)cancelDownloadTask:(id)task
{
  taskCopy = task;
  cloudResource = [taskCopy cloudResource];
  if (!cloudResource)
  {
    sub_1001A8AEC(taskCopy, a2, self);
  }

  v7 = cloudResource;
  if ([cloudResource resourceType] == self->_resourceType)
  {
    itemScopedIdentifier = [v7 itemScopedIdentifier];
    v9 = [(NSMutableDictionary *)self->_tasks objectForKeyedSubscript:itemScopedIdentifier];
    v10 = [v9 containsObject:taskCopy];
    if (v10)
    {
      completionHandler = [taskCopy completionHandler];
      v12 = +[CPLErrors operationCancelledError];
      (completionHandler)[2](completionHandler, taskCopy, v12);

      if ([v9 count] == 1)
      {
        [(NSMutableDictionary *)self->_tasks removeObjectForKey:itemScopedIdentifier];
      }

      else
      {
        [v9 removeObject:taskCopy];
      }
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (double)downloadProgress
{
  if (!self->_downloadSize)
  {
    return 0.0;
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  downloadedSizes = self->_downloadedSizes;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100084630;
  v6[3] = &unk_100275F90;
  v6[4] = &v7;
  [(NSMutableDictionary *)downloadedSizes enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v8[3] / self->_downloadSize;
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)shouldBoostPriority
{
  if (self->_highPriority)
  {
    return [CPLResource hasPriorityBoostForResourceType:self->_resourceType];
  }

  else
  {
    return 0;
  }
}

- (void)enumerateRecordScopedIdentifiersAndTasksWithBlock:(id)block
{
  blockCopy = block;
  tasks = self->_tasks;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100084734;
  v7[3] = &unk_100275FB8;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableDictionary *)tasks enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)cloudResourceForRecordWithScopedIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_tasks objectForKeyedSubscript:identifier];
  firstObject = [v3 firstObject];
  cloudResource = [firstObject cloudResource];

  return cloudResource;
}

- (id)description
{
  v3 = objc_opt_class();
  resourceTypeDescription = [(_CPLCloudKitDownloadGroup *)self resourceTypeDescription];
  v5 = [NSByteCountFormatter stringFromByteCount:self->_downloadSize countStyle:3];
  allKeys = [(NSMutableDictionary *)self->_tasks allKeys];
  v7 = [allKeys componentsJoinedByString:{@", "}];
  v8 = [NSString stringWithFormat:@"<%@ %@ %@ %@>", v3, resourceTypeDescription, v5, v7];

  return v8;
}

@end