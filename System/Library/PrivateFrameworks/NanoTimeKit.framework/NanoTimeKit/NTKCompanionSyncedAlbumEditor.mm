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
    albumIdentifier = [(NTKCompanionSinglePHAssetEditor *)self albumIdentifier];
    *buf = 138412290;
    v48 = albumIdentifier;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKCompanionSyncedAlbumEditor: fetching asset for albumIdentifier %@", buf, 0xCu);
  }

  albumIdentifier2 = [(NTKCompanionSinglePHAssetEditor *)self albumIdentifier];

  v6 = objc_alloc(MEMORY[0x277D2BA48]);
  device = [(NTKCompanionResourceDirectoryEditor *)self device];
  nrDevice = [device nrDevice];
  if (albumIdentifier2)
  {
    v9 = [v6 initWithCollectionTarget:4 device:nrDevice];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    assetCollections = [v9 assetCollections];
    albumIdentifier4 = [assetCollections countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (albumIdentifier4)
    {
      v39 = v9;
      obj = assetCollections;
      v12 = *v42;
      while (2)
      {
        for (i = 0; i != albumIdentifier4; i = i + 1)
        {
          if (*v42 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v41 + 1) + 8 * i);
          v15 = MEMORY[0x277CD97B8];
          v16 = NTK_npto_uuid(v14);
          uUIDString = [v16 UUIDString];
          v18 = [v15 localIdentifierWithUUID:uUIDString];
          selfCopy = self;
          albumIdentifier3 = [(NTKCompanionSinglePHAssetEditor *)self albumIdentifier];
          v21 = [v18 isEqualToString:albumIdentifier3];

          if (v21)
          {
            self = selfCopy;
            albumIdentifier4 = [(NTKCompanionSinglePHAssetEditor *)selfCopy albumIdentifier];
            v22 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              localizedTitle = [v14 localizedTitle];
              *buf = 138412290;
              v48 = localizedTitle;
              _os_log_impl(&dword_22D9C5000, v22, OS_LOG_TYPE_DEFAULT, "NTKCompanionSyncedAlbumEditor: found photos face album from assetCollection %@", buf, 0xCu);
            }

            v9 = v39;
            assetCollections = obj;
            goto LABEL_21;
          }

          self = selfCopy;
        }

        assetCollections = obj;
        albumIdentifier4 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (albumIdentifier4)
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
    v9 = [v6 initWithCollectionTarget:1 device:nrDevice];

    assetCollections2 = [v9 assetCollections];
    assetCollections = [assetCollections2 anyObject];

    if (assetCollections)
    {
      v25 = MEMORY[0x277CD97B8];
      v26 = NTK_npto_uuid(assetCollections);
      uUIDString2 = [v26 UUIDString];
      albumIdentifier4 = [v25 localIdentifierWithUUID:uUIDString2];
    }

    else
    {
      albumIdentifier4 = 0;
    }

    v22 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      localizedTitle2 = [assetCollections localizedTitle];
      *buf = 138412290;
      v48 = localizedTitle2;
      _os_log_impl(&dword_22D9C5000, v22, OS_LOG_TYPE_DEFAULT, "NTKCompanionSyncedAlbumEditor: found synced album from assetCollection %@", buf, 0xCu);
    }

LABEL_21:
  }

  v29 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v48 = albumIdentifier4;
    _os_log_impl(&dword_22D9C5000, v29, OS_LOG_TYPE_DEFAULT, "NTKCompanionSyncedAlbumEditor: realAlbumIdentifier == %@", buf, 0xCu);
  }

  if (albumIdentifier4)
  {
    optionsForSingleAsset = [(NTKCompanionSinglePHAssetEditor *)self optionsForSingleAsset];
    v31 = MEMORY[0x277CD97B8];
    v45 = albumIdentifier4;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
    v33 = [v31 fetchAssetCollectionsWithLocalIdentifiers:v32 options:0];
    firstObject = [v33 firstObject];

    v35 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:firstObject options:optionsForSingleAsset];
    firstObject2 = [v35 firstObject];

    v37 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = firstObject2;
      _os_log_impl(&dword_22D9C5000, v37, OS_LOG_TYPE_DEFAULT, "NTKCompanionSyncedAlbumEditor: fetched asset %@", buf, 0xCu);
    }
  }

  else
  {
    firstObject2 = 0;
  }

  return firstObject2;
}

- (id)_fetchAlbumName
{
  albumIdentifier = [(NTKCompanionSinglePHAssetEditor *)self albumIdentifier];
  device = [(NTKCompanionResourceDirectoryEditor *)self device];
  v5 = NTKAlbumNameForLocalIdentifier(albumIdentifier, device);

  return v5;
}

@end