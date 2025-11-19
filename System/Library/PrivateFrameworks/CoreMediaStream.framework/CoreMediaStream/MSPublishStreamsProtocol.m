@interface MSPublishStreamsProtocol
- (BOOL)_insertInfoAboutAsset:(id)a3 intoDictionary:(id)a4 outError:(id *)a5;
- (MSPublishStreamsProtocol)initWithPersonID:(id)a3 baseURL:(id)a4;
- (id)_metadataDictForAsset:(id)a3 outError:(id *)a4;
- (id)_metadataDictForAssetCollection:(id)a3 outError:(id *)a4;
- (id)_missingAssetFieldErrorWithFieldName:(id)a3;
- (id)delegate;
- (void)_coreProtocolDidFailAuthenticationError:(id)a3;
- (void)_coreProtocolDidFinishResponse:(id)a3 error:(id)a4;
- (void)_coreProtocolDidFinishUCResults:(id)a3 error:(id)a4;
- (void)_resetConnectionVariables;
- (void)abort;
- (void)dealloc;
- (void)sendMetadataForAssetCollections:(id)a3;
- (void)sendUploadCompleteForAssetCollections:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation MSPublishStreamsProtocol

- (void)_coreProtocolDidFinishUCResults:(id)a3 error:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = [(MSStreamsProtocol *)self personID];
    v13 = [v7 MSVerboseDescription];
    v14 = 138543874;
    v15 = v10;
    v16 = 2112;
    v17 = v12;
    v18 = 2114;
    v19 = v13;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Upload complete connection has failed. Error: %{public}@", &v14, 0x20u);
  }

  v8 = [(MSPublishStreamsProtocol *)self delegate];
  [v8 publishStreamsProtocol:self didFinishSendingUploadCompleteError:v7];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_coreProtocolDidFailAuthenticationError:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(MSStreamsProtocol *)self personID];
    v10 = [v4 MSVerboseDescription];
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Failed authentication. Error: %{public}@", &v11, 0x20u);
  }

  [(MSPublishStreamsProtocol *)self _resetConnectionVariables];
  v5 = [(MSPublishStreamsProtocol *)self delegate];
  [v5 publishStreamsProtocol:self didReceiveAuthenticationError:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_coreProtocolDidFinishResponse:(id)a3 error:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = v14;
      v16 = [(MSStreamsProtocol *)self personID];
      v17 = [v7 MSVerboseDescription];
      v18 = 138543874;
      v19 = v14;
      v20 = 2112;
      v21 = v16;
      v22 = 2114;
      v23 = v17;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Put connection has failed. Error: %{public}@", &v18, 0x20u);
    }

    [(MSPublishStreamsProtocol *)self _resetConnectionVariables];
    v8 = [(MSPublishStreamsProtocol *)self delegate];
    v9 = v8;
    v10 = self;
    v11 = v6;
    v12 = v7;
  }

  else
  {
    v8 = [(MSPublishStreamsProtocol *)self delegate];
    v9 = v8;
    v10 = self;
    v11 = v6;
    v12 = 0;
  }

  [v8 publishStreamsProtocol:v10 didFinishUploadingMetadataResponse:v11 error:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)abort
{
  MSSPCCancelHTTPTransaction(&self->_context);

  MSSPCCancelHTTPTransaction(&self->_UCContext);
}

- (void)sendUploadCompleteForAssetCollections:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [(MSStreamsProtocol *)self personID];
    *buf = 138543618;
    v24 = v5;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Sending upload complete...", buf, 0x16u);
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v4;
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
  v15 = [(MSStreamsProtocol *)self uploadCompleteURL];
  v16 = MSPURLConnectionProperties();
  MSPSPCUCSendUploadCompleteAsync(&self->_UCContext._super.owner, v15, v16, v8);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)sendMetadataForAssetCollections:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [(MSStreamsProtocol *)self personID];
    *buf = 138543618;
    v53 = v5;
    v54 = 2112;
    v55 = v7;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Sending metadata to Streams server...", buf, 0x16u);
  }

  theArray = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v8 = v4;
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
        v15 = [*(v11 + 2872) dictionary];
        v16 = [v14 masterAsset];

        if (v16)
        {
          v17 = [v14 masterAsset];
          v18 = [(MSPublishStreamsProtocol *)self _metadataDictForAsset:v17 outError:0];

          if (!v18)
          {
            goto LABEL_28;
          }

          [v15 setObject:v18 forKey:@"masterAsset"];
        }

        v19 = [v14 derivedAssets];
        v20 = [v19 count];

        if (v20)
        {
          v21 = MEMORY[0x277CBEB18];
          v22 = [v14 derivedAssets];
          v23 = [v21 arrayWithCapacity:{objc_msgSend(v22, "count")}];

          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v24 = [v14 derivedAssets];
          v25 = [v24 countByEnumeratingWithState:&v44 objects:v58 count:16];
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
                  objc_enumerationMutation(v24);
                }

                v29 = [(MSPublishStreamsProtocol *)self _metadataDictForAsset:*(*(&v44 + 1) + 8 * v28) outError:0];
                if (v29)
                {
                  [v23 addObject:v29];
                }

                ++v28;
              }

              while (v26 != v28);
              v26 = [v24 countByEnumeratingWithState:&v44 objects:v58 count:16];
            }

            while (v26);
          }

          if ([v23 count])
          {
            [v15 setObject:v23 forKey:@"derivedAssets"];
          }

          v12 = v40;
          v8 = v41;
          v11 = 0x277CBE000;
          v10 = v42;
        }

        [(__CFArray *)theArray addObject:v15];
        v30 = [v14 fileName];

        if (v30)
        {
          v31 = [v14 fileName];
          [v15 setObject:v31 forKey:@"fileName"];
        }

        v32 = [v14 assetCollectionID];

        if (v32)
        {
          v33 = [v14 assetCollectionID];
          [v15 setObject:v33 forKey:@"collId"];
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
    v39 = [(MSStreamsProtocol *)self personID];
    *buf = 138543874;
    v53 = v37;
    v54 = 2112;
    v55 = v39;
    v56 = 2114;
    v57 = theArray;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Sending metadata for asset collections: %{public}@", buf, 0x20u);
  }

  [(MSStreamsProtocol *)self _refreshAuthTokenForContext:&self->_context];
  v34 = [(MSStreamsProtocol *)self putURL];
  v35 = MSPURLConnectionProperties();
  MSPSPCSendMetadataAsync(&self->_context._super.owner, v34, v35, theArray);

  v36 = *MEMORY[0x277D85DE8];
}

- (id)_metadataDictForAssetCollection:(id)a3 outError:(id *)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 assetCollectionID];

  if (v7)
  {
    v7 = [v6 masterAsset];

    if (v7)
    {
      v7 = [MEMORY[0x277CBEB38] dictionary];
      v8 = [v6 assetCollectionID];
      [v7 setObject:v8 forKey:@"collId"];

      v9 = [v6 fileName];

      if (v9)
      {
        v10 = [v6 fileName];
        [v7 setObject:v10 forKey:@"fileName"];
      }

      v11 = [v6 masterAsset];
      v39 = 0;
      v12 = [(MSPublishStreamsProtocol *)self _metadataDictForAsset:v11 outError:&v39];
      v13 = v39;

      if (!v13)
      {
        [v7 setObject:v12 forKey:@"masterAsset"];
        v13 = [v6 derivedAssets];

        if (v13)
        {
          v32 = v12;
          v33 = a4;
          v14 = [MEMORY[0x277CBEB18] array];
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v15 = [v6 derivedAssets];
          v16 = [v15 countByEnumeratingWithState:&v35 objects:v48 count:16];
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
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v35 + 1) + 8 * i);
                v34 = 0;
                v21 = [(MSPublishStreamsProtocol *)self _metadataDictForAsset:v20 outError:&v34];
                v22 = v34;
                if (v22)
                {
                  v13 = v22;

                  goto LABEL_23;
                }

                [v14 addObject:v21];
              }

              v17 = [v15 countByEnumeratingWithState:&v35 objects:v48 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          [v7 setObject:v14 forKey:@"derivedAssets"];
          v13 = 0;
LABEL_23:

          v12 = v32;
          a4 = v33;
        }
      }

      if (!v13)
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

  v13 = [(MSPublishStreamsProtocol *)self _missingAssetFieldErrorWithFieldName:v23];
  if (!v13)
  {
LABEL_25:
    v25 = v7;
    goto LABEL_28;
  }

LABEL_19:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v26 = objc_opt_class();
    v27 = v26;
    v28 = [(MSStreamsProtocol *)self personID];
    v29 = [v13 MSVerboseDescription];
    *buf = 138544130;
    v41 = v26;
    v42 = 2112;
    v43 = v28;
    v44 = 2114;
    v45 = v6;
    v46 = 2114;
    v47 = v29;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Rejecting asset collection %{public}@\nReason: %{public}@", buf, 0x2Au);

    if (a4)
    {
      goto LABEL_21;
    }
  }

  else if (a4)
  {
LABEL_21:
    v24 = v13;
    v25 = 0;
    *a4 = v13;
    goto LABEL_28;
  }

  v25 = 0;
LABEL_28:

  v30 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)_metadataDictForAsset:(id)a3 outError:(id *)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 fileHash];

  if (v7)
  {
    v7 = [v6 type];

    if (v7)
    {
      v8 = [v6 metadata];
      v9 = [v8 objectForKey:@"MSAssetMetadataPixelWidth"];
      v10 = [v8 objectForKey:@"MSAssetMetadataPixelHeight"];
      v11 = v10;
      if (v9)
      {
        if (v10)
        {
          v7 = [MEMORY[0x277CBEB38] dictionary];
          v12 = [v6 fileHash];
          [v7 setObject:v12 forKey:@"fileHash"];

          v13 = [v6 type];
          [v7 setObject:v13 forKey:@"type"];

          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v6, "protocolFileSize")}];
          [v7 setObject:v14 forKey:@"protocolFileSize"];

          v15 = [v6 MMCSReceipt];
          if (v15)
          {
            [v7 setObject:v15 forKey:@"MMCSReceipt"];
          }

          v16 = [MEMORY[0x277CBEB38] dictionary];
          [v16 setObject:v9 forKey:@"pixelWidth"];
          [v16 setObject:v11 forKey:@"pixelHeight"];
          v17 = [v8 objectForKey:@"MSAssetMetadataFileSize"];
          if (v17)
          {
            [v16 setObject:v17 forKey:@"fileSize"];
          }

          v18 = [v8 objectForKey:@"MSAssetMetadataSHA1HashKey"];
          if (v18)
          {
            [v16 setObject:v18 forKey:@"SHA1"];
          }

          v19 = [v8 objectForKey:@"MSAssetMetadataDateContentModified"];
          if (v19)
          {
            [v16 setObject:v19 forKey:@"dateContentModified"];
          }

          v20 = [v8 objectForKey:@"MSAssetMetadataDateContentCreated"];
          if (v20)
          {
            [v16 setObject:v20 forKey:@"dateContentCreated"];
          }

          v21 = [v8 objectForKey:@"MSAssetMetadataSourceLibraryID"];
          if (v21)
          {
            [v16 setObject:v21 forKey:@"sourceLibraryID"];
          }

          v22 = [v8 objectForKey:@"MSAssetMetadataSourceItemID"];
          if (v22)
          {
            [v16 setObject:v22 forKey:@"sourceItemID"];
          }

          v23 = [v8 objectForKey:@"MSAssetMetadataSourceContainerTypeKey"];
          if (v23)
          {
            [v16 setObject:v23 forKey:@"sourceContainerType"];
          }

          v24 = [v8 objectForKey:@"MSAssetMetadataSourceContainerIDKey"];
          if (v24)
          {
            [v16 setObject:v24 forKey:@"sourceContainerID"];
          }

          v25 = [v8 objectForKey:@"MSAssetMetadataSourceContainerDisplayNameKey"];
          if (v25)
          {
            [v16 setObject:v25 forKey:@"sourceContainerDisplayName"];
          }

          v26 = [v8 objectForKey:@"MSAssetMetadataDeviceDisplayNameKey"];
          if (v26)
          {
            [v16 setObject:v26 forKey:@"deviceDisplayName"];
          }

          v27 = [v8 objectForKey:@"MSAssetMetadataRasterToDisplayRotationAngleKey"];
          if (v27)
          {
            [v16 setObject:v27 forKey:@"rasterToDisplayRotationAngle"];
          }

          v28 = [v8 objectForKey:@"MSAssetMetadataSourceiCloudPhotoLibraryEnabledKey"];
          if (v28)
          {
            [v16 setObject:v28 forKey:@"sourceiCloudPhotoLibraryEnabled"];
          }

          [v7 setObject:v16 forKey:@"metadata"];
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
      v7 = 0;
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
    v32 = v7;
    goto LABEL_45;
  }

LABEL_35:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v34 = objc_opt_class();
    v35 = v34;
    v36 = [(MSStreamsProtocol *)self personID];
    v37 = [v29 MSVerboseDescription];
    v40 = 138544130;
    v41 = v34;
    v42 = 2112;
    v43 = v36;
    v44 = 2114;
    v45 = v6;
    v46 = 2114;
    v47 = v37;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Rejecting asset %{public}@\nReason: %{public}@", &v40, 0x2Au);

    if (a4)
    {
      goto LABEL_37;
    }
  }

  else if (a4)
  {
LABEL_37:
    v31 = v29;
    v32 = 0;
    *a4 = v29;
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

- (BOOL)_insertInfoAboutAsset:(id)a3 intoDictionary:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 fileHash];

  if (v10)
  {
    v11 = [v8 type];

    if (v11)
    {
      v12 = [v8 metadata];
      v13 = [v12 objectForKey:@"MSAssetMetadataPixelWidth"];
      v14 = [v12 objectForKey:@"MSAssetMetadataPixelHeight"];
      v15 = v14;
      if (v13)
      {
        if (v14)
        {
          v16 = [v8 fileHash];
          v17 = [v16 MSHexString];
          [v9 setObject:v17 forKey:@"fingerprint"];

          v18 = [v8 type];
          [v9 setObject:v18 forKey:@"type"];

          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", objc_msgSend(v8, "protocolFileSize")];
          [v9 setObject:v19 forKey:@"size"];

          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v13, "unsignedLongValue")];
          [v9 setObject:v20 forKey:@"width"];

          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v15, "unsignedLongValue")];
          [v9 setObject:v21 forKey:@"height"];

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

      if (!a5)
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
  if (!a5)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (v22)
  {
    v25 = v22;
    *a5 = v22;
  }

LABEL_16:

  return v22 == 0;
}

- (id)_missingAssetFieldErrorWithFieldName:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = MSCFCopyLocalizedString(@"ERROR_PUT_CONNECTION_MISSING_ASSET_FIELD_P_FIELD");
  v7 = [v4 stringWithFormat:v6, v5];

  v8 = [v3 MSErrorWithDomain:@"MSStreamsPutConnectionErrorDomain" code:5 description:v7];

  return v8;
}

- (void)dealloc
{
  p_context = &self->_context;

  v4.receiver = self;
  v4.super_class = MSPublishStreamsProtocol;
  [(MSPublishStreamsProtocol *)&v4 dealloc];
}

- (MSPublishStreamsProtocol)initWithPersonID:(id)a3 baseURL:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MSPublishStreamsProtocol;
  v7 = [(MSStreamsProtocol *)&v11 initWithPersonID:v6 baseURL:a4];
  v8 = v7;
  if (v7)
  {
    v7->_context._super.owner = v7;
    v9 = v6;
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

- (void)setDelegate:(id)a3
{
  v3.receiver = self;
  v3.super_class = MSPublishStreamsProtocol;
  [(MSStreamsProtocol *)&v3 setDelegate:a3];
}

- (id)delegate
{
  v4.receiver = self;
  v4.super_class = MSPublishStreamsProtocol;
  v2 = [(MSStreamsProtocol *)&v4 delegate];

  return v2;
}

@end