@interface MSSubscribeStreamsProtocol
- (MSSubscribeStreamsProtocol)initWithPersonID:(id)a3 baseURL:(id)a4;
- (id)_assetCollectionsFromCoreArray:(id)a3 personID:(id)a4 outError:(id *)a5;
- (id)_assetFromCoreDictionary:(id)a3 personID:(id)a4 outError:(id *)a5;
- (id)_invalidFieldErrorWithFieldName:(id)a3 suggestion:(id)a4;
- (id)delegate;
- (void)_chunkDidEndStreamForPersonID:(id)a3 ctag:(id)a4;
- (void)_chunkDidFindSubscriptionGoneForPersonID:(id)a3;
- (void)_chunkDidFindSubscriptionTemporarilyUnavailableForPersonID:(id)a3;
- (void)_chunkDidParseAssetCollections:(id)a3 forPersonID:(id)a4;
- (void)_coreProtocolDidFailAuthentication:(id)a3;
- (void)_coreProtocolDidFinishError:(id)a3;
- (void)_coreProtocolDidGetDataChunk:(id)a3;
- (void)_parseChunks;
- (void)_parseNextChunk;
- (void)dealloc;
- (void)pollForSubscriptionUpdatesWithAccountAnchors:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation MSSubscribeStreamsProtocol

- (id)_assetCollectionsFromCoreArray:(id)a3 personID:(id)a4 outError:(id *)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v40 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v9 = v7;
  v42 = [v9 countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (!v42)
  {

LABEL_37:
    v34 = v40;
    v36 = v40;
    v10 = 0;
    goto LABEL_39;
  }

  v10 = 0;
  v43 = *v58;
  v41 = v9;
  while (2)
  {
    for (i = 0; i != v42; ++i)
    {
      if (*v58 != v43)
      {
        objc_enumerationMutation(v9);
      }

      v12 = *(*(&v57 + 1) + 8 * i);
      v13 = [v12 objectForKey:@"masterAsset"];
      if (v13)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v33 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"masterAsset"];

          v10 = v33;
          goto LABEL_34;
        }
      }

      v56 = v10;
      v14 = [(MSSubscribeStreamsProtocol *)self _assetFromCoreDictionary:v13 personID:v8 outError:&v56];
      v15 = v56;

      if (v15)
      {

        v10 = v15;
        goto LABEL_35;
      }

      v48 = v13;
      v16 = [v12 objectForKey:@"fileName"];
      v47 = [v12 objectForKey:@"collId"];
      v17 = [v12 objectForKey:@"serverUploadedDate"];
      v18 = [v12 objectForKey:@"derivedAssets"];
      v49 = v16;
      v50 = v14;
      v46 = v18;
      if (v18)
      {
        v19 = v18;
        v44 = v17;
        v45 = i;
        v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v18, "count")}];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v21 = v19;
        v22 = [v21 countByEnumeratingWithState:&v52 objects:v61 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v53;
          while (2)
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v53 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v52 + 1) + 8 * j);
              v51 = 0;
              v27 = [(MSSubscribeStreamsProtocol *)self _assetFromCoreDictionary:v26 personID:v8 outError:&v51];
              v28 = v51;
              if (v28)
              {
                v10 = v28;
                v29 = 0;
                v17 = v44;
                i = v45;
                v30 = v47;
                goto LABEL_26;
              }

              [v20 addObject:v27];
            }

            v23 = [v21 countByEnumeratingWithState:&v52 objects:v61 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

        v17 = v44;
        i = v45;
        v14 = v50;
      }

      else
      {
        v20 = 0;
      }

      v21 = [MSAssetCollection collectionWithMasterAsset:v14 fileName:v16 derivedAssets:v20];
      v27 = [v12 objectForKey:@"deleted"];
      v30 = v47;
      if (!v27)
      {
        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v21 setWasDeleted:1];
LABEL_24:
        [v21 setAssetCollectionID:v47];
        [v17 doubleValue];
        v32 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v31 / 1000.0];
        [v21 setServerUploadedDate:v32];
        [v40 addObject:v21];

        v10 = 0;
        v29 = 1;
        goto LABEL_26;
      }

      v10 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"deleted"];
      v29 = 0;
LABEL_26:

      if (!v29)
      {
        v9 = v41;
        goto LABEL_34;
      }

      v9 = v41;
    }

    v42 = [v41 countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v42)
    {
      continue;
    }

    break;
  }

LABEL_34:

  if (!v10)
  {
    goto LABEL_37;
  }

LABEL_35:
  v34 = v40;
  if (a5)
  {
    v35 = v10;
    v36 = 0;
    *a5 = v10;
  }

  else
  {
    v36 = 0;
  }

LABEL_39:

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)_assetFromCoreDictionary:(id)a3 personID:(id)a4 outError:(id *)a5
{
  v84 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = +[MSAsset asset];
  v11 = [v8 objectForKey:@"fileHash"];
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"fileHash"];
      goto LABEL_110;
    }

    [v10 setFileHash:v11];
  }

  v12 = [v8 objectForKey:@"masterAssetHash"];
  if (!v12)
  {
LABEL_7:
    v13 = [v8 objectForKey:@"type"];
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"type"];
LABEL_108:

        goto LABEL_109;
      }

      [v10 setType:v13];
    }

    v14 = [v8 objectForKey:@"MMCSAccessHeader"];
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"MMCSAccessHeader"];
LABEL_107:

        goto LABEL_108;
      }

      [v10 setMMCSAccessHeader:v14];
    }

    v15 = [v8 objectForKey:@"MMCSURL"];
    v77 = v15;
    if (v15)
    {
      v16 = v15;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"MMCSURL"];
LABEL_106:

        goto LABEL_107;
      }

      [v10 setMMCSURL:v16];
    }

    v17 = [v8 objectForKey:@"protocolFileSize"];
    v76 = v17;
    if (v17)
    {
      v18 = v17;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"protocolFileSize"];
LABEL_105:

        goto LABEL_106;
      }

      [v10 setProtocolFileSize:{objc_msgSend(v18, "unsignedLongLongValue")}];
    }

    v19 = [v8 objectForKey:@"metadata"];
    if (v19)
    {
      v74 = v13;
      v20 = a5;
      v21 = v9;
      v22 = v14;
      v23 = v19;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v73 = [MEMORY[0x277CBEB38] dictionary];
        v75 = v23;
        v24 = [v23 objectForKey:@"fileSize"];
        v14 = v22;
        v9 = v21;
        a5 = v20;
        v13 = v74;
        v72 = v24;
        if (v24)
        {
          v25 = v24;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"fileSize"];
LABEL_103:

            v19 = v75;
            goto LABEL_104;
          }

          [v73 setObject:v25 forKey:@"MSAssetMetadataFileSize"];
        }

        v26 = [v75 objectForKey:@"pixelWidth"];
        v71 = v26;
        if (v26)
        {
          v27 = v26;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"pixelWidth"];
LABEL_102:

            goto LABEL_103;
          }

          [v73 setObject:v27 forKey:@"MSAssetMetadataPixelWidth"];
        }

        v28 = [v75 objectForKey:@"pixelHeight"];
        v70 = v28;
        if (v28)
        {
          v29 = v28;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"pixelHeight"];
LABEL_101:

            goto LABEL_102;
          }

          [v73 setObject:v29 forKey:@"MSAssetMetadataPixelHeight"];
        }

        v30 = [v75 objectForKey:@"deviceID"];
        v69 = v30;
        if (v30)
        {
          v31 = v30;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"deviceID"];
LABEL_100:

            goto LABEL_101;
          }

          [v73 setObject:v31 forKey:@"MSAssetMetadataDeviceID"];
        }

        v32 = [v75 objectForKey:@"dateContentModified"];
        v68 = v32;
        if (v32)
        {
          v33 = v32;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"dateContentModified"];
LABEL_99:

            goto LABEL_100;
          }

          [v73 setObject:v33 forKey:@"MSAssetMetadataDateContentModified"];
        }

        v34 = [v75 objectForKey:@"dateContentCreated"];
        v67 = v34;
        if (v34)
        {
          v35 = v34;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"dateContentCreated"];
LABEL_98:

            goto LABEL_99;
          }

          [v73 setObject:v35 forKey:@"MSAssetMetadataDateContentCreated"];
        }

        v36 = [v75 objectForKey:@"sourceLibraryID"];
        v66 = v36;
        if (v36)
        {
          v37 = v36;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"sourceLibraryID"];
LABEL_97:

            goto LABEL_98;
          }

          [v73 setObject:v37 forKey:@"MSAssetMetadataSourceLibraryID"];
        }

        v38 = [v75 objectForKey:@"sourceItemID"];
        v65 = v38;
        if (v38)
        {
          v39 = v38;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"sourceItemID"];
LABEL_96:

            goto LABEL_97;
          }

          [v73 setObject:v39 forKey:@"MSAssetMetadataSourceItemID"];
        }

        v40 = [v75 objectForKey:@"sourceContainerType"];
        v64 = v40;
        if (v40)
        {
          v41 = v40;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"sourceContainerType"];
LABEL_95:

            goto LABEL_96;
          }

          [v73 setObject:v41 forKey:@"MSAssetMetadataSourceContainerTypeKey"];
        }

        v42 = [v75 objectForKey:@"sourceContainerID"];
        v63 = v42;
        if (v42)
        {
          v43 = v42;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"sourceContainerID"];
LABEL_94:

            goto LABEL_95;
          }

          [v73 setObject:v43 forKey:@"MSAssetMetadataSourceContainerIDKey"];
        }

        v44 = [v75 objectForKey:@"sourceContainerDisplayName"];
        v62 = v44;
        if (v44)
        {
          v45 = v44;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"sourceContainerDisplayName"];
LABEL_93:

            goto LABEL_94;
          }

          [v73 setObject:v45 forKey:@"MSAssetMetadataSourceContainerDisplayNameKey"];
        }

        v46 = [v75 objectForKey:@"deviceDisplayName"];
        v61 = v46;
        if (v46)
        {
          v47 = v46;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"deviceDisplayName"];
LABEL_92:

            goto LABEL_93;
          }

          [v73 setObject:v47 forKey:@"MSAssetMetadataDeviceDisplayNameKey"];
        }

        v60 = [v75 objectForKey:@"rasterToDisplayRotationAngle"];
        if (v60)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"rasterToDisplayRotationAngle"];
LABEL_91:

            goto LABEL_92;
          }

          [v73 setObject:v60 forKey:@"MSAssetMetadataRasterToDisplayRotationAngleKey"];
        }

        v48 = [v75 objectForKey:@"sourceiCloudPhotoLibraryEnabled"];
        v59 = v48;
        if (v48)
        {
          v49 = v48;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"sourceiCloudPhotoLibraryEnabled"];
LABEL_90:

            goto LABEL_91;
          }

          [v73 setObject:v49 forKey:@"MSAssetMetadataSourceiCloudPhotoLibraryEnabledKey"];
        }

        if (v9)
        {
          [v73 setObject:v9 forKey:@"MSAssetMetadataStreamIDKey"];
        }

        if ([v73 count])
        {
          [v10 setMetadata:v73];
        }

        v50 = 0;
        goto LABEL_90;
      }

      v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"metadata"];
      v19 = v23;
      v14 = v22;
      v9 = v21;
      a5 = v20;
      v13 = v74;
    }

    else
    {
      v50 = 0;
    }

LABEL_104:

    goto LABEL_105;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setMasterAssetHash:v12];
    goto LABEL_7;
  }

  v50 = [(MSSubscribeStreamsProtocol *)self _invalidFieldErrorWithFieldName:@"masterAssetHash"];
LABEL_109:

LABEL_110:
  if (v50)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v53 = objc_opt_class();
      v54 = v53;
      v55 = [(MSStreamsProtocol *)self personID];
      v56 = [v50 MSVerboseDescription];
      *buf = 138543874;
      v79 = v53;
      v80 = 2112;
      v81 = v55;
      v82 = 2114;
      v83 = v56;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Cannot parse asset dictionary. Error: %{public}@", buf, 0x20u);

      if (a5)
      {
        goto LABEL_113;
      }
    }

    else if (a5)
    {
LABEL_113:
      v51 = v50;
      v52 = 0;
      *a5 = v50;
      goto LABEL_117;
    }

    v52 = 0;
  }

  else
  {
    v52 = v10;
  }

LABEL_117:

  v57 = *MEMORY[0x277D85DE8];

  return v52;
}

- (id)_invalidFieldErrorWithFieldName:(id)a3 suggestion:(id)a4
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v8 = a3;
  v9 = MSCFCopyLocalizedString(@"ERROR_GET_CONNECTION_INVALID_FIELD_P_NAME");
  v10 = [v6 stringWithFormat:v9, v8];

  v11 = [v5 MSErrorWithDomain:@"MSStreamsGetConnectionErrorDomain" code:2 description:v10 suggestion:v7];

  return v11;
}

- (void)_chunkDidFindSubscriptionTemporarilyUnavailableForPersonID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [(MSStreamsProtocol *)self personID];
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Subscription temporarily unavailable for person ID %@", &v10, 0x20u);
  }

  v8 = [(MSSubscribeStreamsProtocol *)self delegate];
  [v8 subscribeStreamsProtocol:self didFindTemporarilyUnavailableSubscriptionForPersonID:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_chunkDidFindSubscriptionGoneForPersonID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [(MSStreamsProtocol *)self personID];
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Subscription is gone for person ID %@", &v10, 0x20u);
  }

  v8 = [(MSSubscribeStreamsProtocol *)self delegate];
  [v8 subscribeStreamsProtocol:self didFindDisappearedSubscriptionForPersonID:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_chunkDidEndStreamForPersonID:(id)a3 ctag:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = [(MSStreamsProtocol *)self personID];
    v13 = 138543874;
    v14 = v10;
    v15 = 2112;
    v16 = v12;
    v17 = 2112;
    v18 = v6;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@- %@ Finished stream for personID: %@", &v13, 0x20u);
  }

  v8 = [(MSSubscribeStreamsProtocol *)self delegate];
  [v8 subscribeStreamsProtocol:self didFinishReceivingUpdatesForPersonID:v6 ctag:v7];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_chunkDidParseAssetCollections:(id)a3 forPersonID:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v16 = objc_opt_class();
    v17 = v16;
    v18 = [(MSStreamsProtocol *)self personID];
    *buf = 138543874;
    v21 = v16;
    v22 = 2112;
    v23 = v18;
    v24 = 2114;
    v25 = v6;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Parsed asset collections: %{public}@", buf, 0x20u);
  }

  v19 = 0;
  v8 = [(MSSubscribeStreamsProtocol *)self _assetCollectionsFromCoreArray:v6 personID:v7 outError:&v19];
  v9 = v19;
  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = [(MSStreamsProtocol *)self personID];
      v13 = [v9 MSVerboseDescription];
      *buf = 138543874;
      v21 = v10;
      v22 = 2112;
      v23 = v12;
      v24 = 2114;
      v25 = v13;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Could not create asset collections from response. Error: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v14 = [(MSSubscribeStreamsProtocol *)self delegate];
    [v14 subscribeStreamsProtocol:self didReceiveAssetCollections:v8 forPersonID:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_parseNextChunk
{
  v28[2] = *MEMORY[0x277D85DE8];
  if (self->_chunkIndex < 1)
  {
LABEL_10:
    v8 = 0;
  }

  else
  {
    v3 = 0;
    v4 = MEMORY[0x277D86220];
    while (1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v11 = objc_opt_class();
        v12 = v11;
        v13 = [(MSStreamsProtocol *)self personID];
        *buf = 138543874;
        *&buf[4] = v11;
        v25 = 2112;
        v26 = v13;
        v27 = 1024;
        LODWORD(v28[0]) = v3;
        _os_log_debug_impl(&dword_245B99000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Parsing chunk number %d.", buf, 0x1Cu);
      }

      v5 = objc_alloc(MEMORY[0x277CBEA90]);
      v6 = [(MSSubscribeStreamsProtocol *)self _pathToChunkIndex:v3];
      v7 = [v5 initWithContentsOfFile:v6];

      if (v7)
      {
        *buf = 0;
        MSSSPCChunkParsingParseNextChunk(&self->_parseContext->var0, v7, buf);
        v8 = *buf;
      }

      else
      {
        v9 = MEMORY[0x277CCA9B8];
        v10 = MSCFCopyLocalizedString(@"ERROR_GET_CONNECTION_MISSING_CHUNK");
        v8 = [v9 MSErrorWithDomain:@"MSStreamsGetConnectionErrorDomain" code:4 description:v10];
      }

      if (v8)
      {
        break;
      }

      v3 = (v3 + 1);
      if (v3 >= self->_chunkIndex)
      {
        goto LABEL_10;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = v20;
      v22 = [(MSStreamsProtocol *)self personID];
      v23 = [v8 MSVerboseDescription];
      *buf = 138544130;
      *&buf[4] = v20;
      v25 = 2112;
      v26 = v22;
      v27 = 1024;
      LODWORD(v28[0]) = v3;
      WORD2(v28[0]) = 2114;
      *(v28 + 6) = v23;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@- %@ Error found while parsing chunk number %d. Error: %{public}@", buf, 0x26u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v16 = objc_opt_class();
    v17 = v16;
    v18 = [(MSStreamsProtocol *)self personID];
    v19 = [v8 MSVerboseDescription];
    *buf = 138543874;
    *&buf[4] = v16;
    v25 = 2112;
    v26 = v18;
    v27 = 2114;
    v28[0] = v19;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Finished parsing all chunks. Error: %{public}@", buf, 0x20u);
  }

  _resetChunkContext(&self->_parseContext->var0);
  free(self->_parseContext);
  self->_parseContext = 0;
  v14 = [(MSSubscribeStreamsProtocol *)self delegate];
  [v14 subscribeStreamsProtocol:self didFinishError:v8];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_parseChunks
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = malloc_type_malloc(0x58uLL, 0x10E0040CFB3EB4CuLL);
  self->_parseContext = v3;
  v3->var0 = self;
  self->_parseContext->var1 = _chunkBeginStreamCallback;
  self->_parseContext->var2 = _chunkAssetCollectionsCallback;
  self->_parseContext->var3 = _chunkEndStreamCallback;
  self->_parseContext->var4 = _chunkSubscriptionSourceGoneCallback;
  self->_parseContext->var5 = _chunkSubscriptionSourceTemporarilyUnavailableCallback;
  parseContext = self->_parseContext;
  *&parseContext->var6 = 0u;
  *&parseContext->var8 = 0u;
  parseContext->var10 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [(MSStreamsProtocol *)self personID];
    chunkIndex = self->_chunkIndex;
    v10 = 138543874;
    v11 = v6;
    v12 = 2112;
    v13 = v8;
    v14 = 1024;
    v15 = chunkIndex;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Starting to parse %d chunks.", &v10, 0x1Cu);
  }

  [(MSSubscribeStreamsProtocol *)self _parseNextChunk];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_coreProtocolDidFailAuthentication:(id)a3
{
  v4 = MEMORY[0x277CCAA00];
  v5 = a3;
  v6 = [v4 defaultManager];
  v7 = [(MSStreamsProtocol *)self personID];
  v8 = MSPathSubscribeProtocolDirForPersonID(v7);
  [v6 removeItemAtPath:v8 error:0];

  v9 = [(MSSubscribeStreamsProtocol *)self delegate];
  [v9 subscribeStreamsProtocol:self didReceiveAuthenticationError:v5];
}

- (void)_coreProtocolDidGetDataChunk:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Got chunk: %{public}@", &v8, 0xCu);
  }

  v6 = [(MSSubscribeStreamsProtocol *)self _pathToChunkIndex:self->_chunkIndex];
  [v4 writeToFile:v6 atomically:0];

  ++self->_chunkIndex;
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_coreProtocolDidFinishError:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [(MSSubscribeStreamsProtocol *)self delegate];
    v5 = v4;
    v6 = self;
    v7 = v8;
LABEL_3:
    [v4 subscribeStreamsProtocol:v6 didFinishError:v7];

    goto LABEL_6;
  }

  if (self->_chunkIndex < 1)
  {
    v4 = [(MSSubscribeStreamsProtocol *)self delegate];
    v5 = v4;
    v6 = self;
    v7 = 0;
    goto LABEL_3;
  }

  [(MSSubscribeStreamsProtocol *)self _parseChunks];
LABEL_6:
}

- (void)pollForSubscriptionUpdatesWithAccountAnchors:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [(MSStreamsProtocol *)self personID];
    v14 = 138543618;
    v15 = v5;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@ - %@ Requesting subscription updates...", &v14, 0x16u);
  }

  v8 = [(MSStreamsProtocol *)self personID];
  v9 = MSPathSubscribeProtocolDirForPersonID(v8);

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  [v10 removeItemAtPath:v9 error:0];
  [v10 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:0];
  self->_chunkIndex = 0;
  [(MSStreamsProtocol *)self _refreshAuthTokenForContext:&self->_context];
  v11 = [(MSStreamsProtocol *)self getURL];
  v12 = MSPURLConnectionProperties();
  MSSSPCGetMetadataAsync(&self->_context._super.owner, v11, v12, v4);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  free(self->_parseContext);

  v3.receiver = self;
  v3.super_class = MSSubscribeStreamsProtocol;
  [(MSSubscribeStreamsProtocol *)&v3 dealloc];
}

- (MSSubscribeStreamsProtocol)initWithPersonID:(id)a3 baseURL:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = MSSubscribeStreamsProtocol;
  v7 = [(MSStreamsProtocol *)&v10 initWithPersonID:v6 baseURL:a4];
  v8 = v7;
  if (v7)
  {
    v7->_context._super.owner = v7;
    v7->_context._super.personID = v6;
    v8->_context._super.deviceInfo = [(MSStreamsProtocol *)v8 deviceInfoDict];
    v8->_context.finishedCallback = _finishedCallback;
    v8->_context.gotDataChunkCallback = _gotDataChunkCallback;
    v8->_context.authFailedCallback = _authenticationFailedCallback;
    v8->_context.didReceiveRetryAfterCallback = _protocolDidReceiveRetryAfterDate_984;
    v8->_context.didReceiveServerSideConfigurationVersionCallback = _didReceiveServerSideConfigurationVersion;
  }

  return v8;
}

- (void)setDelegate:(id)a3
{
  v3.receiver = self;
  v3.super_class = MSSubscribeStreamsProtocol;
  [(MSStreamsProtocol *)&v3 setDelegate:a3];
}

- (id)delegate
{
  v4.receiver = self;
  v4.super_class = MSSubscribeStreamsProtocol;
  v2 = [(MSStreamsProtocol *)&v4 delegate];

  return v2;
}

@end