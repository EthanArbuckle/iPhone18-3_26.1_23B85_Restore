@interface HMMTRVendorMetadataFileStore
+ (id)logCategory;
- (HMMTRVendorMetadata)metadata;
- (HMMTRVendorMetadataFileStore)initWithFileURL:(id)l;
- (HMMTRVendorMetadataFileStore)initWithFileURL:(id)l uarpController:(id)controller fileManager:(id)manager preferences:(id)preferences;
- (HMMTRVendorMetadataStoreDelegate)delegate;
- (id)_retrieveVendorMetadataForVendorID:(id)d productID:(id)iD metadata:(id)metadata;
- (id)logIdentifier;
- (id)overrideMetadata;
- (id)staticMetadata;
- (id)staticMetadataFileURL;
- (void)_addProductInfoToMetadata:(id)metadata accessories:(id)accessories;
- (void)_addVendorInfoToMetadata:(id)metadata accessories:(id)accessories;
- (void)_handleCloudMetadataFetchFailure;
- (void)_handleCloudMetadataFetchSuccess;
- (void)_prepopulateCacheForKnownAccessories:(id)accessories;
- (void)_processSupportedAccessories:(id)accessories;
- (void)_saveMetadata:(id)metadata;
- (void)attemptCloudMetadataFetch;
- (void)cancelCloudMetadataFetch;
- (void)fetchCloudMetadata;
- (void)setDelegate:(id)delegate;
- (void)supportedAccessories:(id)accessories forProductGroup:(id)group isComplete:(BOOL)complete;
- (void)timerDidFire:(id)fire;
@end

@implementation HMMTRVendorMetadataFileStore

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  os_unfair_lock_lock_with_options();
  retryTimer = self->_retryTimer;

  if (retryTimer != fireCopy)
  {
    goto LABEL_7;
  }

  if (!self->_fetchInProgress)
  {
    retryQueue = self->_retryQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__HMMTRVendorMetadataFileStore_timerDidFire___block_invoke;
    block[3] = &unk_2786F0CA8;
    block[4] = self;
    dispatch_async(retryQueue, block);
    v7 = self->_retryTimer;
    self->_retryTimer = 0;

LABEL_7:
    os_unfair_lock_unlock(&self->_lock);
    return;
  }

  self->_retryTimer = 0;

  os_unfair_lock_unlock(&self->_lock);

  [(HMMTRVendorMetadataFileStore *)self attemptCloudMetadataFetch];
}

void __45__HMMTRVendorMetadataFileStore_timerDidFire___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Retry cancelled - fetch no longer in progress", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)supportedAccessories:(id)accessories forProductGroup:(id)group isComplete:(BOOL)complete
{
  v35 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  groupCopy = group;
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [accessoriesCopy count];
    v14 = HMFBooleanToString();
    *buf = 138543874;
    v30 = v12;
    v31 = 2048;
    v32 = v13;
    v33 = 2112;
    v34 = v14;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Received batched supported accessories, number of entries: %lu, isComplete: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  os_unfair_lock_lock_with_options();
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = accessoriesCopy;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = *v25;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = [HMMTRUARPAccessory fromUARPSupportedAccessory:*(*(&v24 + 1) + 8 * v18)];
        if (v19)
        {
          [(NSMutableSet *)selfCopy->_batchedAccessories addObject:v19];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  if (complete)
  {
    batchedAccessories = selfCopy->_batchedAccessories;
    selfCopy->_batchedAccessories = 0;
    v21 = batchedAccessories;

    os_unfair_lock_unlock(&selfCopy->_lock);
    [(HMMTRVendorMetadataFileStore *)selfCopy _processSupportedAccessories:v21];
  }

  else
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_processSupportedAccessories:(id)accessories
{
  v19 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v8;
    v17 = 2048;
    v18 = [accessoriesCopy count];
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Processing all supported accessories, number of entries: %lu", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([accessoriesCopy count])
  {
    v9 = objc_alloc_init(HMMTRMutableVendorMetadata);
    [(HMMTRVendorMetadataFileStore *)selfCopy _addVendorInfoToMetadata:v9 accessories:accessoriesCopy];
    [(HMMTRVendorMetadataFileStore *)selfCopy _addProductInfoToMetadata:v9 accessories:accessoriesCopy];
    [(HMMTRVendorMetadataFileStore *)selfCopy _saveMetadata:v9];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@No vendor/product information available", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    [(HMMTRVendorMetadataFileStore *)v11 _handleCloudMetadataFetchFailure];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  dclCacheAvailable = [(HMMTRVendorMetadataFileStore *)self dclCacheAvailable];
  v4 = @"Unavailable";
  if (dclCacheAvailable)
  {
    v4 = @"Available";
  }

  return [v2 stringWithFormat:@"DCL Cache %@", v4];
}

- (void)_addProductInfoToMetadata:(id)metadata accessories:(id)accessories
{
  v51 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = accessories;
  v5 = [obj countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v40;
    *&v6 = 138543874;
    v33 = v6;
    v35 = *v40;
    do
    {
      v9 = 0;
      v36 = v7;
      do
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v39 + 1) + 8 * v9);
        productNumber = [v10 productNumber];
        v12 = [productNumber isEqualToString:@"0000"];

        if ((v12 & 1) == 0)
        {
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v10, "vendorID")}];
          v14 = [metadataCopy vendorWithID:v13];
          v15 = [v14 mutableCopy];

          if (v15)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v10, "productID")}];
            v17 = +[HMMTRProtocolMap protocolMap];
            v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v10, "accessoryCategoryNumber")}];
            v43 = v18;
            v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
            v20 = [v17 categoriesForDeviceTypes:v19];

            if (v20)
            {
              firstObject = [v20 firstObject];
              if (firstObject)
              {
                v22 = firstObject;
              }

              else
              {
                v22 = &unk_283EE7C50;
              }
            }

            else
            {
              v22 = &unk_283EE7C50;
            }

            v27 = [(HMMTRVendorMetadataProduct *)[HMMTRMutableVendorMetadataProduct alloc] initWithIdentifier:v16 categoryNumber:v22 isInvalid:0];
            v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v10, "accessoryCategoryNumber")}];
            [(HMMTRVendorMetadataProduct *)v27 setDeviceTypeID:v28];

            accessoryMarketingName = [v10 accessoryMarketingName];
            [(HMMTRVendorMetadataProduct *)v27 setName:accessoryMarketingName];

            accessoryProductLabel = [v10 accessoryProductLabel];
            [(HMMTRVendorMetadataProduct *)v27 setLabel:accessoryProductLabel];

            accessoryInstallationGuideURL = [v10 accessoryInstallationGuideURL];
            [(HMMTRVendorMetadataProduct *)v27 setInstallationGuideURL:accessoryInstallationGuideURL];

            [v15 addProduct:v27];
            [metadataCopy addVendor:v15];

            v8 = v35;
          }

          else
          {
            v23 = objc_autoreleasePoolPush();
            selfCopy = self;
            v25 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = HMFGetLogIdentifier();
              *buf = v33;
              v45 = v26;
              v46 = 2112;
              v47 = v13;
              v48 = 2112;
              v49 = v10;
              _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_INFO, "%{public}@Vendor %@ not found for product record %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v23);
          }

          v7 = v36;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v7);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_addVendorInfoToMetadata:(id)metadata accessories:(id)accessories
{
  v24 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  accessoriesCopy = accessories;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [accessoriesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(accessoriesCopy);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        productNumber = [v11 productNumber];
        v13 = [productNumber isEqualToString:@"0000"];

        if (v13)
        {
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v11, "vendorID")}];
          v15 = [metadataCopy vendorWithID:v14];
          v16 = [v15 mutableCopy];

          if (!v16)
          {
            v16 = [(HMMTRVendorMetadataVendor *)[HMMTRMutableVendorMetadataVendor alloc] initWithIdentifier:v14];
            vendorName = [v11 vendorName];
            [(HMMTRVendorMetadataVendor *)v16 setName:vendorName];

            [metadataCopy addVendor:v16];
          }
        }
      }

      v8 = [accessoriesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_prepopulateCacheForKnownAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  delegate = [(HMMTRVendorMetadataFileStore *)self delegate];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __69__HMMTRVendorMetadataFileStore__prepopulateCacheForKnownAccessories___block_invoke;
  v14 = &unk_2786ED8A0;
  selfCopy = self;
  v16 = accessoriesCopy;
  v6 = accessoriesCopy;
  [delegate forAllPairedMatterServersFetchVidPid:&v11];

  selfCopy = [(HMMTRVendorMetadataFileStore *)self _retrieveVendorMetadataForVendorID:&unk_283EE7BF0 productID:0 metadata:v6, v11, v12, v13, v14, selfCopy];
  v8 = [(HMMTRVendorMetadataFileStore *)self _retrieveVendorMetadataForVendorID:&unk_283EE7C08 productID:0 metadata:v6];
  v9 = [(HMMTRVendorMetadataFileStore *)self _retrieveVendorMetadataForVendorID:&unk_283EE7C20 productID:0 metadata:v6];
  v10 = [(HMMTRVendorMetadataFileStore *)self _retrieveVendorMetadataForVendorID:&unk_283EE7C38 productID:0 metadata:v6];
}

id *__69__HMMTRVendorMetadataFileStore__prepopulateCacheForKnownAccessories___block_invoke(id *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      return [result[4] _retrieveVendorMetadataForVendorID:a2 productID:a3 metadata:result[5]];
    }
  }

  return result;
}

- (void)_saveMetadata:(id)metadata
{
  v28 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  fileManager = [(HMMTRVendorMetadataFileStore *)self fileManager];
  dictionaryRepresentation = [metadataCopy dictionaryRepresentation];
  fileURL = [(HMMTRVendorMetadataFileStore *)self fileURL];
  v21 = 0;
  v8 = [fileManager writeDictionary:dictionaryRepresentation toURL:fileURL error:&v21];
  v9 = v21;

  if (v8)
  {
    [(HMMTRVendorMetadataFileStore *)self setDclCacheAvailable:1];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      fileURL2 = [(HMMTRVendorMetadataFileStore *)selfCopy fileURL];
      *buf = 138543618;
      v23 = v13;
      v24 = 2112;
      v25 = fileURL2;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Successfully saved metadata to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [(HMMTRVendorMetadataFileStore *)selfCopy _handleCloudMetadataFetchSuccess];
    os_unfair_lock_lock_with_options();
    [(NSCache *)selfCopy->_vendorMetadataCache removeAllObjects];
    os_unfair_lock_unlock(&selfCopy->_lock);
    [(HMMTRVendorMetadataFileStore *)selfCopy _prepopulateCacheForKnownAccessories:metadataCopy];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      fileURL3 = [(HMMTRVendorMetadataFileStore *)selfCopy2 fileURL];
      *buf = 138543874;
      v23 = v18;
      v24 = 2112;
      v25 = fileURL3;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to write vendor metadata to %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)overrideMetadata
{
  v38 = *MEMORY[0x277D85DE8];
  vendorMetadataCache = [(HMMTRVendorMetadataFileStore *)self vendorMetadataCache];
  v4 = [vendorMetadataCache objectForKey:@"vendor-metadata-local"];

  if (v4)
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    fileManager = v6;
  }

  else
  {
    preferences = [(HMMTRVendorMetadataFileStore *)self preferences];
    v9 = [preferences preferenceForKey:@"allowVendorDataOverride"];
    bOOLValue = [v9 BOOLValue];

    if (!bOOLValue)
    {
      goto LABEL_17;
    }

    fileURL = [(HMMTRVendorMetadataFileStore *)self fileURL];
    lastPathComponent = [fileURL lastPathComponent];

    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
    v14 = [stringByDeletingPathExtension stringByAppendingString:@"-local"];
    pathExtension = [lastPathComponent pathExtension];
    v16 = [v14 stringByAppendingPathExtension:pathExtension];

    v17 = MEMORY[0x277CBEBC0];
    fileURL2 = [(HMMTRVendorMetadataFileStore *)self fileURL];
    v19 = [v17 URLWithString:v16 relativeToURL:fileURL2];
    absoluteURL = [v19 absoluteURL];

    fileManager = [(HMMTRVendorMetadataFileStore *)self fileManager];
    v21 = [(HMMTRVendorMetadata *)fileManager dictionaryWithContentsOfURL:absoluteURL error:0];

    if (v21)
    {
      fileManager = [[HMMTRVendorMetadata alloc] initWithDictionaryRepresentation:v21];
      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      v25 = v24;
      if (fileManager)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          HMFGetLogIdentifier();
          v26 = v33 = v22;
          *buf = 138543618;
          v35 = v26;
          v36 = 2112;
          v37 = absoluteURL;
          _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Using override vendor metadata from %@", buf, 0x16u);

          v22 = v33;
        }

        objc_autoreleasePoolPop(v22);
        vendorMetadataCache2 = [(HMMTRVendorMetadataFileStore *)selfCopy vendorMetadataCache];
        [vendorMetadataCache2 setObject:fileManager forKey:@"vendor-metadata-local"];

        v28 = 0;
      }

      else
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543618;
          v35 = v29;
          v36 = 2112;
          v37 = absoluteURL;
          _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_ERROR, "%{public}@Ignoring invalid override vendor metadata from %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v22);
        fileManager = 0;
        v28 = 1;
      }
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
LABEL_17:
      vendorMetadataCache3 = [(HMMTRVendorMetadataFileStore *)self vendorMetadataCache];
      [vendorMetadataCache3 setObject:MEMORY[0x277CBEC28] forKey:@"vendor-metadata-local"];

      fileManager = 0;
    }
  }

  v31 = *MEMORY[0x277D85DE8];

  return fileManager;
}

- (id)staticMetadata
{
  v29 = *MEMORY[0x277D85DE8];
  fileManager = [(HMMTRVendorMetadataFileStore *)self fileManager];
  staticMetadataFileURL = [(HMMTRVendorMetadataFileStore *)self staticMetadataFileURL];
  v22 = 0;
  v5 = [fileManager dictionaryWithContentsOfURL:staticMetadataFileURL error:&v22];
  v6 = v22;

  if (v5)
  {
    v7 = [[HMMTRVendorMetadata alloc] initWithDictionaryRepresentation:v5];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v24 = v19;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode local vendor metadata from dictionary representation", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v9 = objc_alloc_init(HMMTRVendorMetadata);
    }

    v15 = v9;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      staticMetadataFileURL2 = [(HMMTRVendorMetadataFileStore *)selfCopy2 staticMetadataFileURL];
      *buf = 138543874;
      v24 = v13;
      v25 = 2112;
      v26 = staticMetadataFileURL2;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to load local vendor metadata at file URL %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = objc_alloc_init(HMMTRVendorMetadata);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)staticMetadataFileURL
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"vendor-metadata" withExtension:@"plist"];

  if (v3)
  {

    return v3;
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    return [(HMMTRVendorMetadataFileStore *)v5 _retrieveVendorMetadataForVendorID:v6 productID:v7 metadata:v8, v9];
  }
}

- (id)_retrieveVendorMetadataForVendorID:(id)d productID:(id)iD metadata:(id)metadata
{
  v93 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  metadataCopy = metadata;
  v11 = dCopy;
  if (dCopy)
  {
    vendorMetadataCache = [(HMMTRVendorMetadataFileStore *)self vendorMetadataCache];
    v13 = [vendorMetadataCache objectForKey:@"vendor-metadata"];

    metadata = metadataCopy;
    os_unfair_lock_lock_with_options();
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      if (!metadata)
      {
        metadata = [(HMMTRVendorMetadataFileStore *)self metadata];
      }

      v21 = [HMMTRMutableVendorMetadata alloc];
      version = [metadata version];
      schemaVersion = [metadata schemaVersion];
      v24 = [(HMMTRVendorMetadata *)v21 initWithVersion:version schemaVersion:schemaVersion];

      vendorMetadataCache2 = [(HMMTRVendorMetadataFileStore *)self vendorMetadataCache];
      [vendorMetadataCache2 setObject:v24 forKey:@"vendor-metadata"];

      v15 = v24;
    }

    v59 = v15;
    v26 = [v15 vendorWithID:v11];
    v27 = v26;
    if (v26)
    {
      v56 = 0;
      v60 = 0;
      v28 = v26;
    }

    else
    {
      v28 = [(HMMTRVendorMetadataVendor *)[HMMTRMutableVendorMetadataVendor alloc] initWithIdentifier:v11];
      if (!metadata)
      {
        metadata = [(HMMTRVendorMetadataFileStore *)self metadata];
      }

      v60 = [metadata vendorWithID:v11];
      v56 = v60 == 0;
      if (v60)
      {
        v29 = v28;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        v31 = v30;

        [(HMMTRMutableVendorMetadataVendor *)v31 copyVendorDetailsFromVendor:v60];
      }

      else
      {
        [(HMMTRVendorMetadataVendor *)v28 setInvalid:1];
      }

      [v59 addVendor:v28];
    }

    if ([(HMMTRVendorMetadataVendor *)v28 invalid])
    {
      v54 = metadataCopy;
      retryQueue = self->_retryQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __86__HMMTRVendorMetadataFileStore__retrieveVendorMetadataForVendorID_productID_metadata___block_invoke;
      block[3] = &unk_2786ED878;
      block[4] = self;
      v50 = &v69;
      v69 = v11;
      v33 = &v70;
      v53 = iDCopy;
      v70 = iDCopy;
      v72 = v13 == 0;
      v73 = v27 == 0;
      v74 = v56;
      v34 = &v71;
      v71 = v28;
      dispatch_async(retryQueue, block);
      v20 = 0;
    }

    else
    {
      if (iDCopy)
      {
        v35 = [(HMMTRVendorMetadataVendor *)v28 productWithID:iDCopy includeInvalids:1];
        if (v35)
        {
          v55 = v35;
        }

        else
        {
          if (!v60)
          {
            if (!metadata)
            {
              metadata = [(HMMTRVendorMetadataFileStore *)self metadata];
            }

            v60 = [metadata vendorWithID:v11];
          }

          v38 = [v60 productWithID:iDCopy];
          v51 = v38;
          if (v38)
          {
            v55 = [v38 copy];
          }

          else
          {
            v55 = [(HMMTRVendorMetadataProduct *)[HMMTRMutableVendorMetadataProduct alloc] initWithIdentifier:iDCopy categoryNumber:&unk_283EE7BD8 isInvalid:1];
          }

          v39 = v28;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v40 = v39;
          }

          else
          {
            v40 = 0;
          }

          v41 = v40;

          [(HMMTRMutableVendorMetadataVendor *)v41 addProduct:v55];
        }

        os_unfair_lock_unlock(&self->_lock);
        context = objc_autoreleasePoolPush();
        selfCopy = self;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v52 = HMFGetLogIdentifier();
          v49 = HMFBooleanToString();
          v48 = HMFBooleanToString();
          v57 = HMFBooleanToString();
          v44 = HMFBooleanToString();
          v45 = HMFBooleanToString();
          *buf = 138545410;
          v76 = v52;
          v77 = 2112;
          v78 = v11;
          v79 = 2112;
          v80 = iDCopy;
          v81 = 2112;
          v82 = v49;
          v83 = 2112;
          v84 = v48;
          v85 = 2112;
          v86 = v57;
          v87 = 2112;
          v88 = v44;
          v89 = 2112;
          v90 = v45;
          v91 = 2112;
          v92 = v28;
          _os_log_impl(&dword_22AEAE000, v43, OS_LOG_TYPE_INFO, "%{public}@retrieveVendorMetadataForVendorID:%@ productID:%@ (newMetadata:%@,vendor(cacheMiss:%@,metadataMiss:%@),product(cacheMiss:%@,metadataMiss:%@)) -> returning metadata: %@", buf, 0x5Cu);
        }

        objc_autoreleasePoolPop(context);
        v20 = v28;

        goto LABEL_42;
      }

      v53 = 0;
      v54 = metadataCopy;
      v36 = self->_retryQueue;
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __86__HMMTRVendorMetadataFileStore__retrieveVendorMetadataForVendorID_productID_metadata___block_invoke_82;
      v61[3] = &unk_2786ED878;
      v61[4] = self;
      v50 = &v62;
      v33 = &v63;
      v62 = v11;
      v63 = 0;
      v65 = v13 == 0;
      v66 = v27 == 0;
      v34 = &v64;
      v67 = v56;
      v37 = v28;
      v64 = v37;
      dispatch_async(v36, v61);
      v20 = v37;
    }

    iDCopy = v53;
    metadataCopy = v54;

    os_unfair_lock_unlock(&self->_lock);
LABEL_42:

    goto LABEL_43;
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543874;
    v76 = v19;
    v77 = 2112;
    v78 = 0;
    v79 = 2112;
    v80 = iDCopy;
    _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@retrieveVendorMetadataForVendorID:%@ productID:%@ -> nil vendor, returning nil", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  v20 = 0;
LABEL_43:

  v46 = *MEMORY[0x277D85DE8];

  return v20;
}

void __86__HMMTRVendorMetadataFileStore__retrieveVendorMetadataForVendorID_productID_metadata___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 64);
    v9 = HMFBooleanToString();
    v10 = *(a1 + 65);
    v11 = HMFBooleanToString();
    v12 = *(a1 + 66);
    v13 = HMFBooleanToString();
    v14 = *(a1 + 56);
    v16 = 138544898;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@retrieveVendorMetadataForVendorID:%@ productID:%@ (newMetadata:%@,vendor(cacheMiss:%@,metadataMiss:%@)) -> returning metadata: %@", &v16, 0x48u);
  }

  objc_autoreleasePoolPop(v2);
  v15 = *MEMORY[0x277D85DE8];
}

void __86__HMMTRVendorMetadataFileStore__retrieveVendorMetadataForVendorID_productID_metadata___block_invoke_82(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 64);
    v9 = HMFBooleanToString();
    v10 = *(a1 + 65);
    v11 = HMFBooleanToString();
    v12 = *(a1 + 66);
    v13 = HMFBooleanToString();
    v14 = *(a1 + 56);
    v16 = 138544898;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@retrieveVendorMetadataForVendorID:%@ productID:%@ (newMetadata:%@,vendor(cacheMiss:%@,metadataMiss:%@)) -> returning metadata: %@", &v16, 0x48u);
  }

  objc_autoreleasePoolPop(v2);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)attemptCloudMetadataFetch
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v6;
    v20 = 2048;
    v21 = [(HMMTRVendorMetadataFileStore *)selfCopy retryCount]+ 1;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Fetching cloud metadata by requesting supported accessories from UARP controller (attempt %lu)", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (selfCopy->_batchedAccessories)
  {
    retryQueue = selfCopy->_retryQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__HMMTRVendorMetadataFileStore_attemptCloudMetadataFetch__block_invoke;
    block[3] = &unk_2786F0CA8;
    block[4] = selfCopy;
    dispatch_async(retryQueue, block);
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  batchedAccessories = selfCopy->_batchedAccessories;
  selfCopy->_batchedAccessories = v8;

  os_unfair_lock_unlock(&selfCopy->_lock);
  uarpController = [(HMMTRVendorMetadataFileStore *)selfCopy uarpController];
  v11 = [uarpController getBatchedSupportedAccessories:0 assetLocationType:15];

  if ((v11 & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v15;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to request supported accessories from UARP controller", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    [(HMMTRVendorMetadataFileStore *)v13 _handleCloudMetadataFetchFailure];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __57__HMMTRVendorMetadataFileStore_attemptCloudMetadataFetch__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(*(a1 + 32) + 40) count];
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Unexpected, found %lu batched accessories. Previous batch may not be complete", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleCloudMetadataFetchFailure
{
  v29 = *MEMORY[0x277D85DE8];
  HMFUptime();
  v4 = v3;
  os_unfair_lock_lock_with_options();
  firstFailureTime = self->_firstFailureTime;
  if (firstFailureTime == 0.0)
  {
    self->_firstFailureTime = v4;
    firstFailureTime = v4;
  }

  if (v4 - firstFailureTime >= 21600.0)
  {
    self->_fetchInProgress = 0;
    self->_retryCount = 0;
    self->_firstFailureTime = 0.0;
    retryQueue = self->_retryQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__HMMTRVendorMetadataFileStore__handleCloudMetadataFetchFailure__block_invoke;
    block[3] = &unk_2786F0CA8;
    block[4] = self;
    dispatch_async(retryQueue, block);
  }

  else
  {
    retryIntervalOverride = self->_retryIntervalOverride;
    retryCount = self->_retryCount;
    v8 = exp2(retryCount);
    v9 = retryIntervalOverride * 4.0;
    if (retryIntervalOverride <= 0.0)
    {
      v9 = 3600.0;
    }

    v10 = 30.0;
    if (retryIntervalOverride > 0.0)
    {
      v10 = retryIntervalOverride;
    }

    v11 = v10 * v8;
    if (v11 >= v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    self->_retryCount = retryCount + 1;
    os_unfair_lock_unlock(&self->_lock);
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = self->_retryCount;
      *buf = 138543874;
      v24 = v16;
      v25 = 2048;
      v26 = v17;
      v27 = 2048;
      v28 = v12;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Cloud metadata fetch failed, scheduling retry %lu in %.1f seconds", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    os_unfair_lock_lock_with_options();
    v18 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:v12];
    retryTimer = selfCopy->_retryTimer;
    selfCopy->_retryTimer = v18;

    [(HMFTimer *)selfCopy->_retryTimer setDelegate:selfCopy];
    [(HMFTimer *)selfCopy->_retryTimer setDelegateQueue:selfCopy->_retryQueue];
    [(HMFTimer *)selfCopy->_retryTimer resume];
  }

  os_unfair_lock_unlock(&self->_lock);
  v21 = *MEMORY[0x277D85DE8];
}

void __64__HMMTRVendorMetadataFileStore__handleCloudMetadataFetchFailure__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    v10 = 0x4018000000000000;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_ERROR, "%{public}@Maximum retry time (%.1f hours) exceeded, giving up on cloud metadata fetch", &v7, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleCloudMetadataFetchSuccess
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Cloud metadata fetch succeeded, resetting retry state", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  selfCopy->_fetchInProgress = 0;
  selfCopy->_retryCount = 0;
  selfCopy->_firstFailureTime = 0.0;
  retryTimer = selfCopy->_retryTimer;
  if (retryTimer)
  {
    [(HMFTimer *)retryTimer cancel];
    v8 = selfCopy->_retryTimer;
    selfCopy->_retryTimer = 0;
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)cancelCloudMetadataFetch
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Cancelling cloud metadata fetch", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (selfCopy->_fetchInProgress)
  {
    selfCopy->_fetchInProgress = 0;
    selfCopy->_retryCount = 0;
    selfCopy->_firstFailureTime = 0.0;
    retryTimer = selfCopy->_retryTimer;
    if (retryTimer)
    {
      [(HMFTimer *)retryTimer cancel];
      v8 = selfCopy->_retryTimer;
      selfCopy->_retryTimer = 0;
    }

    retryQueue = selfCopy->_retryQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__HMMTRVendorMetadataFileStore_cancelCloudMetadataFetch__block_invoke;
    block[3] = &unk_2786F0CA8;
    block[4] = selfCopy;
    dispatch_async(retryQueue, block);
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
  v10 = *MEMORY[0x277D85DE8];
}

void __56__HMMTRVendorMetadataFileStore_cancelCloudMetadataFetch__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Cloud metadata fetch cancelled", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchCloudMetadata
{
  v14 = *MEMORY[0x277D85DE8];
  overrideMetadata = [(HMMTRVendorMetadataFileStore *)self overrideMetadata];

  if (overrideMetadata)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Skipping cloud fetch of metadata because override metadata is active", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    goto LABEL_7;
  }

  os_unfair_lock_lock_with_options();
  if (self->_fetchInProgress)
  {
    retryQueue = self->_retryQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__HMMTRVendorMetadataFileStore_fetchCloudMetadata__block_invoke;
    block[3] = &unk_2786F0CA8;
    block[4] = self;
    dispatch_async(retryQueue, block);
    os_unfair_lock_unlock(&self->_lock);
LABEL_7:
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  self->_fetchInProgress = 1;
  os_unfair_lock_unlock(&self->_lock);
  v10 = *MEMORY[0x277D85DE8];

  [(HMMTRVendorMetadataFileStore *)self attemptCloudMetadataFetch];
}

void __50__HMMTRVendorMetadataFileStore_fetchCloudMetadata__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Cloud metadata fetch already in progress, skipping duplicate request", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

- (HMMTRVendorMetadata)metadata
{
  v23 = *MEMORY[0x277D85DE8];
  overrideMetadata = [(HMMTRVendorMetadataFileStore *)self overrideMetadata];
  v4 = overrideMetadata;
  if (overrideMetadata)
  {
    staticMetadata = overrideMetadata;
  }

  else
  {
    fileManager = [(HMMTRVendorMetadataFileStore *)self fileManager];
    fileURL = [(HMMTRVendorMetadataFileStore *)self fileURL];
    v8 = [fileManager dictionaryWithContentsOfURL:fileURL error:0];

    if (v8)
    {
      v9 = [[HMMTRVendorMetadata alloc] initWithDictionaryRepresentation:v8];
      if (v9)
      {
        [(HMMTRVendorMetadataFileStore *)self setDclCacheAvailable:1];
        v10 = v9;
      }

      else
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          v21 = 138543362;
          v22 = v18;
          _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode vendor metadata from dictionary representation", &v21, 0xCu);
        }

        objc_autoreleasePoolPop(v15);
        v10 = objc_alloc_init(HMMTRVendorMetadata);
      }

      staticMetadata = v10;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v14;
        _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@No DCL data available, defaulting to static metadata", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      [(HMMTRVendorMetadataFileStore *)selfCopy2 setDclCacheAvailable:0];
      staticMetadata = [(HMMTRVendorMetadataFileStore *)selfCopy2 staticMetadata];
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return staticMetadata;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, delegateCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMMTRVendorMetadataStoreDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (HMMTRVendorMetadataFileStore)initWithFileURL:(id)l uarpController:(id)controller fileManager:(id)manager preferences:(id)preferences
{
  lCopy = l;
  controllerCopy = controller;
  managerCopy = manager;
  preferencesCopy = preferences;
  if (!lCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!controllerCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!managerCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v15 = preferencesCopy;
  if (!preferencesCopy)
  {
LABEL_11:
    v25 = _HMFPreconditionFailure();
    return [(HMMTRVendorMetadataFileStore *)v25 initWithFileURL:v26, v27];
  }

  v28.receiver = self;
  v28.super_class = HMMTRVendorMetadataFileStore;
  v16 = [(HMMTRVendorMetadataFileStore *)&v28 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_fileURL, l);
    objc_storeStrong(&v17->_uarpController, controller);
    [(UARPController *)v17->_uarpController setDelegate:v17];
    batchedAccessories = v17->_batchedAccessories;
    v17->_batchedAccessories = 0;

    v19 = objc_opt_new();
    vendorMetadataCache = v17->_vendorMetadataCache;
    v17->_vendorMetadataCache = v19;

    objc_storeStrong(&v17->_fileManager, manager);
    objc_storeStrong(&v17->_preferences, preferences);
    v17->_fetchInProgress = 0;
    v17->_retryCount = 0;
    v21 = dispatch_queue_create("com.apple.homekit.matter.vendor.metadata.retry", 0);
    retryQueue = v17->_retryQueue;
    v17->_retryQueue = v21;

    retryTimer = v17->_retryTimer;
    v17->_retryTimer = 0;

    v17->_firstFailureTime = 0.0;
    v17->_retryIntervalOverride = 0.0;
  }

  return v17;
}

- (HMMTRVendorMetadataFileStore)initWithFileURL:(id)l
{
  v4 = MEMORY[0x277D02620];
  lCopy = l;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc_init(HMMTRFileManager);
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v9 = [(HMMTRVendorMetadataFileStore *)self initWithFileURL:lCopy uarpController:v6 fileManager:v7 preferences:mEMORY[0x277D0F8D0]];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t38 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t38, &__block_literal_global_886);
  }

  v3 = logCategory__hmf_once_v39;

  return v3;
}

uint64_t __43__HMMTRVendorMetadataFileStore_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v39 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end