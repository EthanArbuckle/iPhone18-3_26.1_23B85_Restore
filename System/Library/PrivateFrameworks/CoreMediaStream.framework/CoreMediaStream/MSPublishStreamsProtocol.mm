@interface MSPublishStreamsProtocol
- (BOOL)_insertInfoAboutAsset:(id)asset intoDictionary:(id)dictionary outError:(id *)error;
- (MSPublishStreamsProtocol)initWithPersonID:(id)d baseURL:(id)l;
- (id)_metadataDictForAsset:(id)asset outError:(id *)error;
- (id)_metadataDictForAssetCollection:(id)collection outError:(id *)error;
- (id)_missingAssetFieldErrorWithFieldName:(id)name;
- (id)delegate;
- (void)_coreProtocolDidFailAuthenticationError:(id)error;
- (void)_coreProtocolDidFinishResponse:(id)response error:(id)error;
- (void)_coreProtocolDidFinishUCResults:(id)results error:(id)error;
- (void)_resetConnectionVariables;
- (void)abort;
- (void)dealloc;
- (void)sendMetadataForAssetCollections:(id)collections;
- (void)sendUploadCompleteForAssetCollections:(id)collections;
- (void)setDelegate:(id)delegate;
@end

@implementation MSPublishStreamsProtocol

- (void)_coreProtocolDidFinishUCResults:(id)results error:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  errorCopy = error;
  if (errorCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = v10;
    personID = [(MSStreamsProtocol *)self personID];
    mSVerboseDescription = [errorCopy MSVerboseDescription];
    v14 = 138543874;
    v15 = v10;
    v16 = 2112;
    v17 = personID;
    v18 = 2114;
    v19 = mSVerboseDescription;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Upload complete connection has failed. Error: %{public}@", &v14, 0x20u);
  }

  delegate = [(MSPublishStreamsProtocol *)self delegate];
  [delegate publishStreamsProtocol:self didFinishSendingUploadCompleteError:errorCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_coreProtocolDidFailAuthenticationError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = v7;
    personID = [(MSStreamsProtocol *)self personID];
    mSVerboseDescription = [errorCopy MSVerboseDescription];
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = personID;
    v15 = 2114;
    v16 = mSVerboseDescription;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Failed authentication. Error: %{public}@", &v11, 0x20u);
  }

  [(MSPublishStreamsProtocol *)self _resetConnectionVariables];
  delegate = [(MSPublishStreamsProtocol *)self delegate];
  [delegate publishStreamsProtocol:self didReceiveAuthenticationError:errorCopy];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_coreProtocolDidFinishResponse:(id)response error:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  errorCopy = error;
  if (errorCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = v14;
      personID = [(MSStreamsProtocol *)self personID];
      mSVerboseDescription = [errorCopy MSVerboseDescription];
      v18 = 138543874;
      v19 = v14;
      v20 = 2112;
      v21 = personID;
      v22 = 2114;
      v23 = mSVerboseDescription;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Put connection has failed. Error: %{public}@", &v18, 0x20u);
    }

    [(MSPublishStreamsProtocol *)self _resetConnectionVariables];
    delegate = [(MSPublishStreamsProtocol *)self delegate];
    v9 = delegate;
    selfCopy2 = self;
    v11 = responseCopy;
    v12 = errorCopy;
  }

  else
  {
    delegate = [(MSPublishStreamsProtocol *)self delegate];
    v9 = delegate;
    selfCopy2 = self;
    v11 = responseCopy;
    v12 = 0;
  }

  [delegate publishStreamsProtocol:selfCopy2 didFinishUploadingMetadataResponse:v11 error:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)abort
{
  MSSPCCancelHTTPTransaction(&self->_context);

  MSSPCCancelHTTPTransaction(&self->_UCContext);
}

- (void)sendUploadCompleteForAssetCollections:(id)collections
{
  v27 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = v5;
    personID = [(MSStreamsProtocol *)self personID];
    *buf = 138543618;
    v24 = v5;
    v25 = 2112;
    v26 = personID;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Sending upload complete...", buf, 0x16u);
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(collectionsCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = collectionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(MSPublishStreamsProtocol *)self _metadataDictForAssetCollection:*(*(&v18 + 1) + 8 * v13) outError:0, v18];
        if (v14)
        {
          [v8 addObject:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  [(MSStreamsProtocol *)self _refreshAuthTokenForContext:&self->_UCContext];
  uploadCompleteURL = [(MSStreamsProtocol *)self uploadCompleteURL];
  v16 = MSPURLConnectionProperties();
  MSPSPCUCSendUploadCompleteAsync(&self->_UCContext._super.owner, uploadCompleteURL, v16, v8);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)sendMetadataForAssetCollections:(id)collections
{
  v60 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = v5;
    personID = [(MSStreamsProtocol *)self personID];
    *buf = 138543618;
    v53 = v5;
    v54 = 2112;
    v55 = personID;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Sending metadata to Streams server...", buf, 0x16u);
  }

  theArray = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(collectionsCopy, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v8 = collectionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0x277CBE000uLL;
    v12 = *v49;
    v40 = *v49;
    v41 = v8;
    do
    {
      v13 = 0;
      v42 = v10;
      do
      {
        if (*v49 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v48 + 1) + 8 * v13);
        dictionary = [*(v11 + 2872) dictionary];
        masterAsset = [v14 masterAsset];

        if (masterAsset)
        {
          masterAsset2 = [v14 masterAsset];
          v18 = [(MSPublishStreamsProtocol *)self _metadataDictForAsset:masterAsset2 outError:0];

          if (!v18)
          {
            goto LABEL_28;
          }

          [dictionary setObject:v18 forKey:@"masterAsset"];
        }

        derivedAssets = [v14 derivedAssets];
        v20 = [derivedAssets count];

        if (v20)
        {
          v21 = MEMORY[0x277CBEB18];
          derivedAssets2 = [v14 derivedAssets];
          v23 = [v21 arrayWithCapacity:{objc_msgSend(derivedAssets2, "count")}];

          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          derivedAssets3 = [v14 derivedAssets];
          v25 = [derivedAssets3 countByEnumeratingWithState:&v44 objects:v58 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v45;
            do
            {
              v28 = 0;
              do
              {
                if (*v45 != v27)
                {
                  objc_enumerationMutation(derivedAssets3);
                }

                v29 = [(MSPublishStreamsProtocol *)self _metadataDictForAsset:*(*(&v44 + 1) + 8 * v28) outError:0];
                if (v29)
                {
                  [v23 addObject:v29];
                }

                ++v28;
              }

              while (v26 != v28);
              v26 = [derivedAssets3 countByEnumeratingWithState:&v44 objects:v58 count:16];
            }

            while (v26);
          }

          if ([v23 count])
          {
            [dictionary setObject:v23 forKey:@"derivedAssets"];
          }

          v12 = v40;
          v8 = v41;
          v11 = 0x277CBE000;
          v10 = v42;
        }

        [(__CFArray *)theArray addObject:dictionary];
        fileName = [v14 fileName];

        if (fileName)
        {
          fileName2 = [v14 fileName];
          [dictionary setObject:fileName2 forKey:@"fileName"];
        }

        assetCollectionID = [v14 assetCollectionID];

        if (assetCollectionID)
        {
          assetCollectionID2 = [v14 assetCollectionID];
          [dictionary setObject:assetCollectionID2 forKey:@"collId"];
        }

LABEL_28:

        ++v13;
      }

      while (v13 != v10);
      v10 = [v8 countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v10);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v37 = objc_opt_class();
    v38 = v37;
    personID2 = [(MSStreamsProtocol *)self personID];
    *buf = 138543874;
    v53 = v37;
    v54 = 2112;
    v55 = personID2;
    v56 = 2114;
    v57 = theArray;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Sending metadata for asset collections: %{public}@", buf, 0x20u);
  }

  [(MSStreamsProtocol *)self _refreshAuthTokenForContext:&self->_context];
  putURL = [(MSStreamsProtocol *)self putURL];
  v35 = MSPURLConnectionProperties();
  MSPSPCSendMetadataAsync(&self->_context._super.owner, putURL, v35, theArray);

  v36 = *MEMORY[0x277D85DE8];
}

- (id)_metadataDictForAssetCollection:(id)collection outError:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  assetCollectionID = [collectionCopy assetCollectionID];

  if (assetCollectionID)
  {
    assetCollectionID = [collectionCopy masterAsset];

    if (assetCollectionID)
    {
      assetCollectionID = [MEMORY[0x277CBEB38] dictionary];
      assetCollectionID2 = [collectionCopy assetCollectionID];
      [assetCollectionID setObject:assetCollectionID2 forKey:@"collId"];

      fileName = [collectionCopy fileName];

      if (fileName)
      {
        fileName2 = [collectionCopy fileName];
        [assetCollectionID setObject:fileName2 forKey:@"fileName"];
      }

      masterAsset = [collectionCopy masterAsset];
      v39 = 0;
      v12 = [(MSPublishStreamsProtocol *)self _metadataDictForAsset:masterAsset outError:&v39];
      derivedAssets = v39;

      if (!derivedAssets)
      {
        [assetCollectionID setObject:v12 forKey:@"masterAsset"];
        derivedAssets = [collectionCopy derivedAssets];

        if (derivedAssets)
        {
          v32 = v12;
          errorCopy = error;
          array = [MEMORY[0x277CBEB18] array];
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          derivedAssets2 = [collectionCopy derivedAssets];
          v16 = [derivedAssets2 countByEnumeratingWithState:&v35 objects:v48 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v36;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v36 != v18)
                {
                  objc_enumerationMutation(derivedAssets2);
                }

                v20 = *(*(&v35 + 1) + 8 * i);
                v34 = 0;
                v21 = [(MSPublishStreamsProtocol *)self _metadataDictForAsset:v20 outError:&v34];
                v22 = v34;
                if (v22)
                {
                  derivedAssets = v22;

                  goto LABEL_23;
                }

                [array addObject:v21];
              }

              v17 = [derivedAssets2 countByEnumeratingWithState:&v35 objects:v48 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          [assetCollectionID setObject:array forKey:@"derivedAssets"];
          derivedAssets = 0;
LABEL_23:

          v12 = v32;
          error = errorCopy;
        }
      }

      if (!derivedAssets)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    v23 = @"masterAsset";
  }

  else
  {
    v23 = @"assetCollectionID";
  }

  derivedAssets = [(MSPublishStreamsProtocol *)self _missingAssetFieldErrorWithFieldName:v23];
  if (!derivedAssets)
  {
LABEL_25:
    v25 = assetCollectionID;
    goto LABEL_28;
  }

LABEL_19:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v26 = objc_opt_class();
    v27 = v26;
    personID = [(MSStreamsProtocol *)self personID];
    mSVerboseDescription = [derivedAssets MSVerboseDescription];
    *buf = 138544130;
    v41 = v26;
    v42 = 2112;
    v43 = personID;
    v44 = 2114;
    v45 = collectionCopy;
    v46 = 2114;
    v47 = mSVerboseDescription;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Rejecting asset collection %{public}@\nReason: %{public}@", buf, 0x2Au);

    if (error)
    {
      goto LABEL_21;
    }
  }

  else if (error)
  {
LABEL_21:
    v24 = derivedAssets;
    v25 = 0;
    *error = derivedAssets;
    goto LABEL_28;
  }

  v25 = 0;
LABEL_28:

  v30 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)_metadataDictForAsset:(id)asset outError:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  fileHash = [assetCopy fileHash];

  if (fileHash)
  {
    fileHash = [assetCopy type];

    if (fileHash)
    {
      metadata = [assetCopy metadata];
      v9 = [metadata objectForKey:@"MSAssetMetadataPixelWidth"];
      v10 = [metadata objectForKey:@"MSAssetMetadataPixelHeight"];
      v11 = v10;
      if (v9)
      {
        if (v10)
        {
          fileHash = [MEMORY[0x277CBEB38] dictionary];
          fileHash2 = [assetCopy fileHash];
          [fileHash setObject:fileHash2 forKey:@"fileHash"];

          type = [assetCopy type];
          [fileHash setObject:type forKey:@"type"];

          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(assetCopy, "protocolFileSize")}];
          [fileHash setObject:v14 forKey:@"protocolFileSize"];

          mMCSReceipt = [assetCopy MMCSReceipt];
          if (mMCSReceipt)
          {
            [fileHash setObject:mMCSReceipt forKey:@"MMCSReceipt"];
          }

          dictionary = [MEMORY[0x277CBEB38] dictionary];
          [dictionary setObject:v9 forKey:@"pixelWidth"];
          [dictionary setObject:v11 forKey:@"pixelHeight"];
          v17 = [metadata objectForKey:@"MSAssetMetadataFileSize"];
          if (v17)
          {
            [dictionary setObject:v17 forKey:@"fileSize"];
          }

          v18 = [metadata objectForKey:@"MSAssetMetadataSHA1HashKey"];
          if (v18)
          {
            [dictionary setObject:v18 forKey:@"SHA1"];
          }

          v19 = [metadata objectForKey:@"MSAssetMetadataDateContentModified"];
          if (v19)
          {
            [dictionary setObject:v19 forKey:@"dateContentModified"];
          }

          v20 = [metadata objectForKey:@"MSAssetMetadataDateContentCreated"];
          if (v20)
          {
            [dictionary setObject:v20 forKey:@"dateContentCreated"];
          }

          v21 = [metadata objectForKey:@"MSAssetMetadataSourceLibraryID"];
          if (v21)
          {
            [dictionary setObject:v21 forKey:@"sourceLibraryID"];
          }

          v22 = [metadata objectForKey:@"MSAssetMetadataSourceItemID"];
          if (v22)
          {
            [dictionary setObject:v22 forKey:@"sourceItemID"];
          }

          v23 = [metadata objectForKey:@"MSAssetMetadataSourceContainerTypeKey"];
          if (v23)
          {
            [dictionary setObject:v23 forKey:@"sourceContainerType"];
          }

          v24 = [metadata objectForKey:@"MSAssetMetadataSourceContainerIDKey"];
          if (v24)
          {
            [dictionary setObject:v24 forKey:@"sourceContainerID"];
          }

          v25 = [metadata objectForKey:@"MSAssetMetadataSourceContainerDisplayNameKey"];
          if (v25)
          {
            [dictionary setObject:v25 forKey:@"sourceContainerDisplayName"];
          }

          v26 = [metadata objectForKey:@"MSAssetMetadataDeviceDisplayNameKey"];
          if (v26)
          {
            [dictionary setObject:v26 forKey:@"deviceDisplayName"];
          }

          v27 = [metadata objectForKey:@"MSAssetMetadataRasterToDisplayRotationAngleKey"];
          if (v27)
          {
            [dictionary setObject:v27 forKey:@"rasterToDisplayRotationAngle"];
          }

          v28 = [metadata objectForKey:@"MSAssetMetadataSourceiCloudPhotoLibraryEnabledKey"];
          if (v28)
          {
            [dictionary setObject:v28 forKey:@"sourceiCloudPhotoLibraryEnabled"];
          }

          [fileHash setObject:dictionary forKey:@"metadata"];
          v29 = 0;
LABEL_41:

          if (!v29)
          {
            goto LABEL_42;
          }

          goto LABEL_35;
        }

        v33 = @"height";
      }

      else
      {
        v33 = @"width";
      }

      v29 = [(MSPublishStreamsProtocol *)self _missingAssetFieldErrorWithFieldName:v33];
      fileHash = 0;
      goto LABEL_41;
    }

    v30 = @"type";
  }

  else
  {
    v30 = @"fileHash";
  }

  v29 = [(MSPublishStreamsProtocol *)self _missingAssetFieldErrorWithFieldName:v30];
  if (!v29)
  {
LABEL_42:
    v32 = fileHash;
    goto LABEL_45;
  }

LABEL_35:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v34 = objc_opt_class();
    v35 = v34;
    personID = [(MSStreamsProtocol *)self personID];
    mSVerboseDescription = [v29 MSVerboseDescription];
    v40 = 138544130;
    v41 = v34;
    v42 = 2112;
    v43 = personID;
    v44 = 2114;
    v45 = assetCopy;
    v46 = 2114;
    v47 = mSVerboseDescription;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Rejecting asset %{public}@\nReason: %{public}@", &v40, 0x2Au);

    if (error)
    {
      goto LABEL_37;
    }
  }

  else if (error)
  {
LABEL_37:
    v31 = v29;
    v32 = 0;
    *error = v29;
    goto LABEL_45;
  }

  v32 = 0;
LABEL_45:

  v38 = *MEMORY[0x277D85DE8];

  return v32;
}

- (void)_resetConnectionVariables
{
  assetCollectionsInFlight = self->_assetCollectionsInFlight;
  self->_assetCollectionsInFlight = 0;
  MEMORY[0x2821F96F8]();
}

- (BOOL)_insertInfoAboutAsset:(id)asset intoDictionary:(id)dictionary outError:(id *)error
{
  assetCopy = asset;
  dictionaryCopy = dictionary;
  fileHash = [assetCopy fileHash];

  if (fileHash)
  {
    type = [assetCopy type];

    if (type)
    {
      metadata = [assetCopy metadata];
      v13 = [metadata objectForKey:@"MSAssetMetadataPixelWidth"];
      v14 = [metadata objectForKey:@"MSAssetMetadataPixelHeight"];
      v15 = v14;
      if (v13)
      {
        if (v14)
        {
          fileHash2 = [assetCopy fileHash];
          mSHexString = [fileHash2 MSHexString];
          [dictionaryCopy setObject:mSHexString forKey:@"fingerprint"];

          type2 = [assetCopy type];
          [dictionaryCopy setObject:type2 forKey:@"type"];

          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", objc_msgSend(assetCopy, "protocolFileSize")];
          [dictionaryCopy setObject:v19 forKey:@"size"];

          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v13, "unsignedLongValue")];
          [dictionaryCopy setObject:v20 forKey:@"width"];

          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v15, "unsignedLongValue")];
          [dictionaryCopy setObject:v21 forKey:@"height"];

          v22 = 0;
          goto LABEL_13;
        }

        v24 = @"height";
      }

      else
      {
        v24 = @"width";
      }

      v22 = [(MSPublishStreamsProtocol *)self _missingAssetFieldErrorWithFieldName:v24];
LABEL_13:

      if (!error)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    v23 = @"type";
  }

  else
  {
    v23 = @"fileHash";
  }

  v22 = [(MSPublishStreamsProtocol *)self _missingAssetFieldErrorWithFieldName:v23];
  if (!error)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (v22)
  {
    v25 = v22;
    *error = v22;
  }

LABEL_16:

  return v22 == 0;
}

- (id)_missingAssetFieldErrorWithFieldName:(id)name
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = MEMORY[0x277CCACA8];
  nameCopy = name;
  v6 = MSCFCopyLocalizedString(@"ERROR_PUT_CONNECTION_MISSING_ASSET_FIELD_P_FIELD");
  nameCopy = [v4 stringWithFormat:v6, nameCopy];

  v8 = [v3 MSErrorWithDomain:@"MSStreamsPutConnectionErrorDomain" code:5 description:nameCopy];

  return v8;
}

- (void)dealloc
{
  p_context = &self->_context;

  v4.receiver = self;
  v4.super_class = MSPublishStreamsProtocol;
  [(MSPublishStreamsProtocol *)&v4 dealloc];
}

- (MSPublishStreamsProtocol)initWithPersonID:(id)d baseURL:(id)l
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = MSPublishStreamsProtocol;
  v7 = [(MSStreamsProtocol *)&v11 initWithPersonID:dCopy baseURL:l];
  v8 = v7;
  if (v7)
  {
    v7->_context._super.owner = v7;
    v9 = dCopy;
    v8->_context._super.personID = v9;
    v8->_context._super.deviceInfo = [(MSStreamsProtocol *)v8 deviceInfoDict];
    v8->_context._super.connectionTimeout = 0.0;
    v8->_context.finishedCallback = _protocolDidFinish;
    v8->_context.authFailedCallback = _protocolDidFailAuthentication;
    v8->_context.didReceiveRetryAfterCallback = _protocolDidReceiveRetryAfterDate;
    v8->_context.didReceiveServerSideConfigurationVersionCallback = _protocolDidReceiveServerSideConfigurationVersion;
    v8->_UCContext._super.owner = v8;
    v8->_UCContext._super.personID = v9;
    v8->_UCContext._super.deviceInfo = [(MSStreamsProtocol *)v8 deviceInfoDict];
    v8->_UCContext._super.connectionTimeout = 0.0;
    v8->_UCContext.finishedCallback = _protocolDidFinishUC;
    v8->_UCContext.authFailedCallback = _protocolDidFailAuthenticationUC;
    v8->_UCContext.didReceiveServerSideConfigurationVersionCallback = _protocolDidReceiveServerSideConfigurationVersionUC;
  }

  return v8;
}

- (void)setDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = MSPublishStreamsProtocol;
  [(MSStreamsProtocol *)&v3 setDelegate:delegate];
}

- (id)delegate
{
  v4.receiver = self;
  v4.super_class = MSPublishStreamsProtocol;
  delegate = [(MSStreamsProtocol *)&v4 delegate];

  return delegate;
}

@end