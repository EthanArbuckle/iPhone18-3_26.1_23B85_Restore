@interface NTKCompanionSyncedAlbumEditor
- (id)_fetchAlbumName;
- (id)_fetchSingleAsset;
@end

@implementation NTKCompanionSyncedAlbumEditor

- (id)_fetchSingleAsset
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NTKCompanionSinglePHAssetEditor *)self albumIdentifier];
    *buf = 138412290;
    v48 = v4;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKCompanionSyncedAlbumEditor: fetching asset for albumIdentifier %@", buf, 0xCu);
  }

  v5 = [(NTKCompanionSinglePHAssetEditor *)self albumIdentifier];

  v6 = objc_alloc(MEMORY[0x277D2BA48]);
  v7 = [(NTKCompanionResourceDirectoryEditor *)self device];
  v8 = [v7 nrDevice];
  if (v5)
  {
    v9 = [v6 initWithCollectionTarget:4 device:v8];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v10 = [v9 assetCollections];
    v11 = [v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v11)
    {
      v39 = v9;
      obj = v10;
      v12 = *v42;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v42 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v41 + 1) + 8 * i);
          v15 = MEMORY[0x277CD97B8];
          v16 = NTK_npto_uuid(v14);
          v17 = [v16 UUIDString];
          v18 = [v15 localIdentifierWithUUID:v17];
          v19 = self;
          v20 = [(NTKCompanionSinglePHAssetEditor *)self albumIdentifier];
          v21 = [v18 isEqualToString:v20];

          if (v21)
          {
            self = v19;
            v11 = [(NTKCompanionSinglePHAssetEditor *)v19 albumIdentifier];
            v22 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [v14 localizedTitle];
              *buf = 138412290;
              v48 = v23;
              _os_log_impl(&dword_22D9C5000, v22, OS_LOG_TYPE_DEFAULT, "NTKCompanionSyncedAlbumEditor: found photos face album from assetCollection %@", buf, 0xCu);
            }

            v9 = v39;
            v10 = obj;
            goto LABEL_21;
          }

          self = v19;
        }

        v10 = obj;
        v11 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v9 = v39;
    }
  }

  else
  {
    v9 = [v6 initWithCollectionTarget:1 device:v8];

    v24 = [v9 assetCollections];
    v10 = [v24 anyObject];

    if (v10)
    {
      v25 = MEMORY[0x277CD97B8];
      v26 = NTK_npto_uuid(v10);
      v27 = [v26 UUIDString];
      v11 = [v25 localIdentifierWithUUID:v27];
    }

    else
    {
      v11 = 0;
    }

    v22 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v10 localizedTitle];
      *buf = 138412290;
      v48 = v28;
      _os_log_impl(&dword_22D9C5000, v22, OS_LOG_TYPE_DEFAULT, "NTKCompanionSyncedAlbumEditor: found synced album from assetCollection %@", buf, 0xCu);
    }

LABEL_21:
  }

  v29 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v48 = v11;
    _os_log_impl(&dword_22D9C5000, v29, OS_LOG_TYPE_DEFAULT, "NTKCompanionSyncedAlbumEditor: realAlbumIdentifier == %@", buf, 0xCu);
  }

  if (v11)
  {
    v30 = [(NTKCompanionSinglePHAssetEditor *)self optionsForSingleAsset];
    v31 = MEMORY[0x277CD97B8];
    v45 = v11;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
    v33 = [v31 fetchAssetCollectionsWithLocalIdentifiers:v32 options:0];
    v34 = [v33 firstObject];

    v35 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v34 options:v30];
    v36 = [v35 firstObject];

    v37 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v36;
      _os_log_impl(&dword_22D9C5000, v37, OS_LOG_TYPE_DEFAULT, "NTKCompanionSyncedAlbumEditor: fetched asset %@", buf, 0xCu);
    }
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (id)_fetchAlbumName
{
  v3 = [(NTKCompanionSinglePHAssetEditor *)self albumIdentifier];
  v4 = [(NTKCompanionResourceDirectoryEditor *)self device];
  v5 = NTKAlbumNameForLocalIdentifier(v3, v4);

  return v5;
}

@end