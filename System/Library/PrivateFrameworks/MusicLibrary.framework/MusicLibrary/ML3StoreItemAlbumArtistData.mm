@interface ML3StoreItemAlbumArtistData
- (ML3StoreItemAlbumArtistData)initWithAlbumArtistData:(id)a3;
- (ML3StoreItemAlbumArtistData)initWithLookupItems:(id)a3;
- (ML3StoreItemAlbumArtistData)initWithTrackItemImportProperties:(id)a3;
- (NSArray)parsedStoreAlbumArtistImportProperties;
- (NSData)albumArtistData;
- (id)_parsedStoreAlbumArtistItemsImportPropertiesFromLookupItems;
- (id)_parsedStoreAlbumArtistItemsImportPropertiesFromSerializedLookupItems;
- (id)_parsedStoreAlbumArtistItemsImportPropertiesFromTrackImportItems;
- (unint64_t)albumArtistCount;
@end

@implementation ML3StoreItemAlbumArtistData

- (id)_parsedStoreAlbumArtistItemsImportPropertiesFromSerializedLookupItems
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAC8];
  v4 = MSVPropertyListDataClasses();
  albumArtistData = self->_albumArtistData;
  v11 = 0;
  v6 = [v3 unarchivedObjectOfClasses:v4 fromData:albumArtistData error:&v11];
  v7 = v11;

  if (!v6)
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v13 = self;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "ML3StoreItemAlbumArtistData=%p Failed to decode album artist data. err=%{public}@", buf, 0x16u);
    }
  }

  v9 = [v6 objectForKeyedSubscript:@"album_artists"];

  return v9;
}

- (id)_parsedStoreAlbumArtistItemsImportPropertiesFromTrackImportItems
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C94B8];
  if (objc_opt_respondsToSelector())
  {
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "longLongValue")}];
    [v3 setObject:v5 forKeyedSubscript:&unk_2840C94B8];
  }

  v6 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C94D0];
  if (objc_opt_respondsToSelector())
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "longLongValue")}];
    [v3 setObject:v7 forKeyedSubscript:&unk_2840C94D0];
  }

  v8 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C94E8];
  if (objc_opt_respondsToSelector())
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "longLongValue")}];
    [v3 setObject:v9 forKeyedSubscript:&unk_2840C94A0];
  }

  v10 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C9500];
  if (_NSIsNSString())
  {
    [v3 setObject:v10 forKeyedSubscript:&unk_2840C9470];
  }

  v27 = v10;
  v11 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C9518];
  if (_NSIsNSString())
  {
    [v3 setObject:v11 forKeyedSubscript:&unk_2840C9488];
  }

  v26 = v11;
  v12 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C9530];
  if (objc_opt_respondsToSelector())
  {
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v12, "longLongValue")}];
    [v3 setObject:v13 forKeyedSubscript:&unk_2840C9530];
  }

  v14 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C9548];
  if (objc_opt_respondsToSelector())
  {
    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v14, "longLongValue")}];
    [v3 setObject:v15 forKeyedSubscript:&unk_2840C9548];
  }

  v29 = v4;
  v16 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C9560];
  if (_NSIsNSString())
  {
    [v3 setObject:v16 forKeyedSubscript:&unk_2840C9578];
  }

  v28 = v6;
  v17 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C9590];
  if (_NSIsNSString())
  {
    [v3 setObject:v17 forKeyedSubscript:&unk_2840C95A8];
  }

  v25 = v12;
  v18 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C95C0];
  if (_NSIsNSString())
  {
    [v3 setObject:v18 forKeyedSubscript:&unk_2840C95D8];
  }

  v19 = v8;
  v20 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C95F0];
  if (_NSIsNSString())
  {
    [v3 setObject:v20 forKeyedSubscript:&unk_2840C9608];
  }

  v21 = [(NSDictionary *)self->_trackItemImportProperties objectForKey:&unk_2840C9620];
  if (objc_opt_respondsToSelector())
  {
    v22 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v21, "longLongValue")}];
    [v3 setObject:v22 forKeyedSubscript:&unk_2840C9638];
  }

  v30[0] = v3;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];

  return v23;
}

- (id)_parsedStoreAlbumArtistItemsImportPropertiesFromLookupItems
{
  v40 = *MEMORY[0x277D85DE8];
  v28 = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277CBEB58] set];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v27 = self;
  obj = self->_lookupItems;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0x277CCA000uLL;
    v8 = *v32;
    *&v5 = 134218240;
    v26 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = [v10 storeAdamID];
        v12 = [*(v7 + 2992) numberWithLongLong:v11];
        v13 = [v3 containsObject:v12];

        if (v13)
        {
          v14 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v26;
            v36 = v27;
            v37 = 2048;
            v38 = v11;
            _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "ML3StoreItemAlbumArtistData=%p album artist with store identifier:%lld is already imported", buf, 0x16u);
          }
        }

        else
        {
          v14 = [v10 metadataDictionary];
          v15 = [MEMORY[0x277CBEB38] dictionary];
          v16 = [v14 objectForKeyedSubscript:@"name"];
          if (_NSIsNSString())
          {
            [v15 setObject:v16 forKeyedSubscript:&unk_2840C9470];
          }

          v17 = [v14 objectForKeyedSubscript:@"nameSortValue"];
          if (_NSIsNSString())
          {
            [v15 setObject:v17 forKeyedSubscript:&unk_2840C9488];
          }

          if (v11)
          {
            [*(v7 + 2992) numberWithLongLong:v11];
            v30 = v16;
            v18 = v3;
            v19 = v6;
            v20 = v8;
            v22 = v21 = v7;
            [v15 setObject:v22 forKeyedSubscript:&unk_2840C94A0];

            v7 = v21;
            v8 = v20;
            v6 = v19;
            v3 = v18;
            v16 = v30;
          }

          [(ML3StoreItemAlbumArtistData *)v28 addObject:v15];
          v23 = [*(v7 + 2992) numberWithLongLong:v11];
          [v3 addObject:v23];
        }
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v6);
  }

  v24 = os_log_create("com.apple.amp.medialibrary", "Default_Oversize");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v28;
    _os_log_impl(&dword_22D2FA000, v24, OS_LOG_TYPE_DEFAULT, "_parsedStoreAlbumArtistItemsImportPropertiesFromLookupItems=%{public}@", buf, 0xCu);
  }

  return v28;
}

- (NSArray)parsedStoreAlbumArtistImportProperties
{
  parsedStoreAlbumArtistImportProperties = self->_parsedStoreAlbumArtistImportProperties;
  if (!parsedStoreAlbumArtistImportProperties)
  {
    if (self->_lookupItems)
    {
      v4 = [(ML3StoreItemAlbumArtistData *)self _parsedStoreAlbumArtistItemsImportPropertiesFromLookupItems];
LABEL_8:
      v5 = self->_parsedStoreAlbumArtistImportProperties;
      self->_parsedStoreAlbumArtistImportProperties = v4;

      parsedStoreAlbumArtistImportProperties = self->_parsedStoreAlbumArtistImportProperties;
      goto LABEL_9;
    }

    if (self->_trackItemImportProperties)
    {
      v4 = [(ML3StoreItemAlbumArtistData *)self _parsedStoreAlbumArtistItemsImportPropertiesFromTrackImportItems];
      goto LABEL_8;
    }

    if (self->_albumArtistData)
    {
      v4 = [(ML3StoreItemAlbumArtistData *)self _parsedStoreAlbumArtistItemsImportPropertiesFromSerializedLookupItems];
      goto LABEL_8;
    }

    parsedStoreAlbumArtistImportProperties = 0;
  }

LABEL_9:

  return parsedStoreAlbumArtistImportProperties;
}

- (NSData)albumArtistData
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(ML3StoreItemAlbumArtistData *)self parsedStoreAlbumArtistImportProperties];
  v3 = v2;
  if (v2)
  {
    v7 = @"album_artists";
    v8[0] = v2;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)albumArtistCount
{
  v2 = [(ML3StoreItemAlbumArtistData *)self parsedStoreAlbumArtistImportProperties];
  v3 = [v2 count];

  return v3;
}

- (ML3StoreItemAlbumArtistData)initWithAlbumArtistData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ML3StoreItemAlbumArtistData;
  v5 = [(ML3StoreItemAlbumArtistData *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    albumArtistData = v5->_albumArtistData;
    v5->_albumArtistData = v6;
  }

  return v5;
}

- (ML3StoreItemAlbumArtistData)initWithTrackItemImportProperties:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ML3StoreItemAlbumArtistData;
  v5 = [(ML3StoreItemAlbumArtistData *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    trackItemImportProperties = v5->_trackItemImportProperties;
    v5->_trackItemImportProperties = v6;
  }

  return v5;
}

- (ML3StoreItemAlbumArtistData)initWithLookupItems:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ML3StoreItemAlbumArtistData;
  v5 = [(ML3StoreItemAlbumArtistData *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    lookupItems = v5->_lookupItems;
    v5->_lookupItems = v6;
  }

  return v5;
}

@end