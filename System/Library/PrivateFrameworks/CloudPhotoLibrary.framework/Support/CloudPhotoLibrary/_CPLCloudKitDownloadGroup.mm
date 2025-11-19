@interface _CPLCloudKitDownloadGroup
- (BOOL)addDownloadTask:(id)a3;
- (BOOL)cancelDownloadTask:(id)a3;
- (BOOL)shouldBoostPriority;
- (_CPLCloudKitDownloadGroup)initWithResourceType:(unint64_t)a3 defaultSourceBundleIdentifier:(id)a4 fingerprintContext:(id)a5;
- (double)downloadProgress;
- (id)cloudResourceForRecordWithScopedIdentifier:(id)a3;
- (id)description;
- (void)allDownloadsDidFailWithError:(id)a3;
- (void)allDownloadsDidStartWithOperationID:(id)a3;
- (void)enumerateRecordScopedIdentifiersAndTasksWithBlock:(id)a3;
- (void)resourceWithRecordScopedIdentifier:(id)a3 didDownloadCKAsset:(id)a4 withOperationType:(int64_t)a5 transcoderVersion:(int64_t)a6 withFingerPrint:(id)a7 andFileUTI:(id)a8;
- (void)resourceWithRecordScopedIdentifier:(id)a3 didFailToDownloadWithError:(id)a4;
- (void)resourceWithRecordScopedIdentifier:(id)a3 didProgress:(double)a4;
- (void)resourceWithRecordScopedIdentifierDidStart:(id)a3 operationID:(id)a4;
@end

@implementation _CPLCloudKitDownloadGroup

- (_CPLCloudKitDownloadGroup)initWithResourceType:(unint64_t)a3 defaultSourceBundleIdentifier:(id)a4 fingerprintContext:(id)a5
{
  v8 = a4;
  v9 = a5;
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

    v10->_resourceType = a3;
    v19 = [v8 copy];
    defaultSourceBundleIdentifier = v10->_defaultSourceBundleIdentifier;
    v10->_defaultSourceBundleIdentifier = v19;

    objc_storeStrong(&v10->_fingerprintContext, a5);
    v10->_maxDownloadSize = [CPLEngineResourceDownloadTask maximumResourceDownloadSizeForResourceType:v10->_resourceType];
  }

  return v10;
}

- (BOOL)addDownloadTask:(id)a3
{
  v5 = a3;
  v6 = [v5 cloudResource];
  if (!v6)
  {
    sub_1001A89DC(v5, a2, self);
  }

  v7 = v6;
  if ([CPLCloudKitFakeDynamicDerivatives realResourceTypeForResource:v6]== self->_resourceType)
  {
    v8 = [v7 itemScopedIdentifier];
    v9 = [(NSMutableDictionary *)self->_tasks objectForKeyedSubscript:v8];
    if (v9)
    {
      v10 = v9;
      [v9 addObject:v5];
    }

    else
    {
      v12 = [v7 estimatedResourceSize];
      v13 = v12;
      downloadSize = self->_downloadSize;
      maxDownloadSize = self->_maxDownloadSize;
      v16 = maxDownloadSize > downloadSize;
      v17 = maxDownloadSize - downloadSize;
      if ((!v16 || v17 < v12) && [(NSMutableDictionary *)self->_tasks count])
      {
        v11 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v10 = [[NSMutableArray alloc] initWithObjects:{v5, 0}];
      [(NSMutableDictionary *)self->_tasks setObject:v10 forKeyedSubscript:v8];
      v18 = [NSNumber numberWithUnsignedLongLong:v13];
      [(NSMutableDictionary *)self->_resourceSizes setObject:v18 forKeyedSubscript:v8];

      self->_downloadSize += v13;
    }

    v19 = [v5 clientBundleID];
    if (!v19)
    {
      v19 = self->_defaultSourceBundleIdentifier;
    }

    if (!self->_mainBundleIdentifierIsDefault)
    {
      if ([(NSString *)v19 isEqualToString:self->_defaultSourceBundleIdentifier])
      {
        objc_storeStrong(&self->_mainSourceBundleIdentifier, self->_defaultSourceBundleIdentifier);
        self->_mainBundleIdentifierIsDefault = 1;
      }

      else if (!self->_mainSourceBundleIdentifier)
      {
        objc_storeStrong(&self->_mainSourceBundleIdentifier, v19);
      }
    }

    [(NSMutableSet *)self->_sourceBundleIdentifiers addObject:v19];
    if (self->_highPriority)
    {
      v20 = 1;
    }

    else
    {
      v20 = [v5 isHighPriority];
    }

    self->_highPriority = v20;

    v11 = 1;
    goto LABEL_23;
  }

  v11 = 0;
LABEL_24:

  return v11;
}

- (void)allDownloadsDidStartWithOperationID:(id)a3
{
  v4 = a3;
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

        [(_CPLCloudKitDownloadGroup *)self resourceWithRecordScopedIdentifierDidStart:*(*(&v10 + 1) + 8 * v9) operationID:v4, v10];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)resourceWithRecordScopedIdentifierDidStart:(id)a3 operationID:(id)a4
{
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_tasks objectForKeyedSubscript:a3];
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
        [v12 setTransportIdentifier:v6];
        v13 = [v12 didStartHandler];
        v14 = v13;
        if (v13)
        {
          (*(v13 + 16))(v13, v12);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)resourceWithRecordScopedIdentifier:(id)a3 didProgress:(double)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_tasks objectForKeyedSubscript:v6];
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
        v14 = [v13 progressHandler];
        v15 = v14;
        if (v14)
        {
          v11 = a4;
          (*(v14 + 16))(v14, v13, v11);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v16 = [(NSMutableDictionary *)self->_resourceSizes objectForKeyedSubscript:v6];
  [v16 doubleValue];
  if ((v17 * a4))
  {
    v18 = [NSNumber numberWithUnsignedLongLong:?];
    [(NSMutableDictionary *)self->_downloadedSizes setObject:v18 forKeyedSubscript:v6];
  }

  else
  {
    [(NSMutableDictionary *)self->_downloadedSizes removeObjectForKey:v6];
  }
}

- (void)resourceWithRecordScopedIdentifier:(id)a3 didDownloadCKAsset:(id)a4 withOperationType:(int64_t)a5 transcoderVersion:(int64_t)a6 withFingerPrint:(id)a7 andFileUTI:(id)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = a8;
  v74 = v14;
  if (v14)
  {
    v78 = [v13 fileURL];
    if (v78)
    {
      v16 = [(NSMutableDictionary *)self->_tasks objectForKeyedSubscript:v12];
      v77 = +[NSFileManager defaultManager];
      v79 = [v16 lastObject];
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v17 = v16;
      obj = v17;
      v82 = [v17 countByEnumeratingWithState:&v87 objects:v99 count:16];
      if (v82)
      {
        v75 = self;
        v71 = v13;
        v70 = v12;
        v72 = 0;
        v81 = *v88;
        p_superclass = CPLRemappedBy.superclass;
        v19 = v78;
        v73 = v15;
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
            v22 = [v21 cloudResource];
            v23 = [v22 identity];
            v24 = [v21 completionHandler];
            v25 = [v23 fileURL];
            if (!v25)
            {
              v28 = [CPLErrors incorrectParametersErrorForParameter:@"fileURL"];
              (v24)[2](v24, v21, v28);
              goto LABEL_49;
            }

            if ([p_superclass + 44 isFakeDerivative:v22])
            {
              v86 = 0;
              v26 = [p_superclass + 44 transformFromURL:v19 fileType:v15 toTargetURL:v25 matchingResource:v22 error:&v86];
              v27 = v86;
              v28 = v27;
              if (v26)
              {
                v29 = 0;
              }

              else
              {
                v29 = v27;
              }

              (v24)[2](v24, v21, v29);
              if (v21 == v79)
              {
                [v77 removeItemAtURL:v19 error:0];
                v72 = 1;
              }

              goto LABEL_24;
            }

            if ((CPLCloudKitUseGateKeeperForOperationType(a5) & 1) == 0)
            {
              v28 = [v23 fingerPrint];
              v30 = v74;
              if (v28 && ([v28 isEqual:v30] & 1) != 0)
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
                v34 = [(_CPLCloudKitDownloadGroup *)v75 resourceTypeDescription];
                v35 = [CPLErrors cplErrorWithCode:27 description:@"Resource %@ in the cloud is stale (fingerprint is %@ vs. expected %@)", v34, v33, v28];
                (v24)[2](v24, v21, v35);

                v15 = v73;
                v19 = v78;
LABEL_24:
                p_superclass = (CPLRemappedBy + 8);
                goto LABEL_49;
              }

              fingerprintContext = v75->_fingerprintContext;
              v37 = [v71 signature];
              v38 = [(CPLFingerprintContext *)fingerprintContext fingerprintSchemeForSignature:v37];
              v39 = [v38 canMatchSignatureToFingerprint];

              if (v39)
              {
                v40 = [v71 cplFingerPrint];
                v41 = v28;
                v42 = v40;
                v43 = v42;
                if (v28 && v42 && ([v41 isEqual:v42] & 1) != 0)
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

              v15 = v73;
              v19 = v78;
              p_superclass = (CPLRemappedBy + 8);
            }

            if (v21 == v79)
            {
              v85 = 0;
              v48 = [v77 cplMoveItemAtURL:v19 toURL:v25 error:&v85];
              v49 = v85;
              v28 = v49;
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
                    v53 = [(_CPLCloudKitDownloadGroup *)v75 resourceTypeDescription];
                    *buf = 138413058;
                    v92 = v53;
                    v93 = 2112;
                    v94 = v78;
                    v95 = 2112;
                    v96 = v25;
                    v97 = 2112;
                    v98 = v28;
                    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Failed to move downloaded asset %@ from %@ to %@: %@", buf, 0x2Au);
                  }

                  v47 = v28;
                  v19 = v78;
                  goto LABEL_47;
                }

                v47 = v49;
              }

              goto LABEL_38;
            }

            v84 = 0;
            v45 = [v77 cplCopyItemAtURL:v19 toURL:v25 error:&v84];
            v46 = v84;
            v28 = v46;
            if (v45)
            {
              CPLMarkDownloadedResourceWithDynamicVersion();
              v47 = 0;
LABEL_38:
              v19 = v78;
              goto LABEL_48;
            }

            v47 = v46;
            v19 = v78;
            if ((_CPLSilentLogging & 1) == 0)
            {
              v50 = sub_100003964();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                v51 = [(_CPLCloudKitDownloadGroup *)v75 resourceTypeDescription];
                *buf = 138413058;
                v92 = v51;
                v93 = 2112;
                v94 = v78;
                v95 = 2112;
                v96 = v25;
                v97 = 2112;
                v98 = v28;
                _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Failed to copy downloaded asset %@ from %@ to %@: %@", buf, 0x2Au);

                v19 = v78;
              }

              v47 = v28;
LABEL_47:
              p_superclass = (CPLRemappedBy + 8);
            }

LABEL_48:
            (v24)[2](v24, v21, v47);
LABEL_49:

            v20 = v20 + 1;
          }

          while (v82 != v20);
          v54 = obj;
          v55 = [obj countByEnumeratingWithState:&v87 objects:v99 count:16];
          v82 = v55;
          if (!v55)
          {

            v12 = v70;
            v13 = v71;
            self = v75;
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
          v65 = [(_CPLCloudKitDownloadGroup *)self resourceTypeDescription];
          *buf = 138412802;
          v92 = v78;
          v93 = 2112;
          v94 = v65;
          v95 = 2112;
          v96 = v12;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "No download task moved %@ (resource %@ for %@) away from CloudKit. Removing now", buf, 0x20u);
        }
      }

      v83 = 0;
      v66 = [v77 removeItemAtURL:v78 error:&v83];
      v67 = v83;
      if ((v66 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
      {
        v68 = sub_100003964();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v92 = v78;
          v93 = 2112;
          v94 = v67;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Failed to remove %@: %@", buf, 0x16u);
        }
      }

      v54 = obj;
LABEL_68:
      [(NSMutableDictionary *)self->_tasks removeObjectForKey:v12];
      v69 = [(NSMutableDictionary *)self->_resourceSizes objectForKeyedSubscript:v12];
      [(NSMutableDictionary *)self->_downloadedSizes setObject:v69 forKeyedSubscript:v12];
    }

    else
    {
      v60 = [(_CPLCloudKitDownloadGroup *)self propertyKeys];
      v61 = sub_1001A8CE0(v60);
      v62 = [(_CPLCloudKitDownloadGroup *)self resourceTypeDescription];
      v63 = [CPLErrors cplErrorWithCode:27 description:@"Fetching %@ (%@) for %@ succeeded but did not return the resource", v61, v62, v12];

      [(_CPLCloudKitDownloadGroup *)self resourceWithRecordScopedIdentifier:v12 didFailToDownloadWithError:v63];
    }
  }

  else
  {
    v56 = [(_CPLCloudKitDownloadGroup *)self propertyKeys];
    v57 = sub_1001A8CA4(v56);
    v58 = [(_CPLCloudKitDownloadGroup *)self resourceTypeDescription];
    v59 = [CPLErrors cplErrorWithCode:26 description:@"Fetching %@ (%@) for %@ succeeded but did not return the fingerprint", v57, v58, v12];

    [(_CPLCloudKitDownloadGroup *)self resourceWithRecordScopedIdentifier:v12 didFailToDownloadWithError:v59];
  }
}

- (void)resourceWithRecordScopedIdentifier:(id)a3 didFailToDownloadWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_tasks objectForKeyedSubscript:v6];
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
        v14 = [v13 completionHandler];
        (v14)[2](v14, v13, v7);
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [(NSMutableDictionary *)self->_tasks removeObjectForKey:v6];
  v15 = [(NSMutableDictionary *)self->_resourceSizes objectForKeyedSubscript:v6];
  [(NSMutableDictionary *)self->_downloadedSizes setObject:v15 forKeyedSubscript:v6];
}

- (void)allDownloadsDidFailWithError:(id)a3
{
  v4 = a3;
  tasks = self->_tasks;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000842C8;
  v7[3] = &unk_100275F68;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)tasks enumerateKeysAndObjectsUsingBlock:v7];
  [(NSMutableDictionary *)self->_tasks removeAllObjects];
}

- (BOOL)cancelDownloadTask:(id)a3
{
  v5 = a3;
  v6 = [v5 cloudResource];
  if (!v6)
  {
    sub_1001A8AEC(v5, a2, self);
  }

  v7 = v6;
  if ([v6 resourceType] == self->_resourceType)
  {
    v8 = [v7 itemScopedIdentifier];
    v9 = [(NSMutableDictionary *)self->_tasks objectForKeyedSubscript:v8];
    v10 = [v9 containsObject:v5];
    if (v10)
    {
      v11 = [v5 completionHandler];
      v12 = +[CPLErrors operationCancelledError];
      (v11)[2](v11, v5, v12);

      if ([v9 count] == 1)
      {
        [(NSMutableDictionary *)self->_tasks removeObjectForKey:v8];
      }

      else
      {
        [v9 removeObject:v5];
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

- (void)enumerateRecordScopedIdentifiersAndTasksWithBlock:(id)a3
{
  v4 = a3;
  tasks = self->_tasks;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100084734;
  v7[3] = &unk_100275FB8;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)tasks enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)cloudResourceForRecordWithScopedIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_tasks objectForKeyedSubscript:a3];
  v4 = [v3 firstObject];
  v5 = [v4 cloudResource];

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(_CPLCloudKitDownloadGroup *)self resourceTypeDescription];
  v5 = [NSByteCountFormatter stringFromByteCount:self->_downloadSize countStyle:3];
  v6 = [(NSMutableDictionary *)self->_tasks allKeys];
  v7 = [v6 componentsJoinedByString:{@", "}];
  v8 = [NSString stringWithFormat:@"<%@ %@ %@ %@>", v3, v4, v5, v7];

  return v8;
}

@end