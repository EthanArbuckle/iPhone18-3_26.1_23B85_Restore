@interface KMMapper_MPMediaEntity
- (BOOL)_addItemWithItemId:(id)id itemIdType:(int64_t)type fields:(id)fields error:(id *)error;
- (BOOL)_itemsFromMediaItem:(id)item error:(id *)error;
- (BOOL)_itemsFromMediaPlaylist:(id)playlist error:(id *)error;
- (BOOL)_mapAudioBookItem:(id)item error:(id *)error;
- (BOOL)_mapMovieItem:(id)item error:(id *)error;
- (BOOL)_mapMusicItem:(id)item error:(id *)error;
- (BOOL)_mapMusicVideoItem:(id)item error:(id *)error;
- (BOOL)_mapPodcastItem:(id)item error:(id *)error;
- (BOOL)_mapTVShowItem:(id)item error:(id *)error;
- (KMMapper_MPMediaEntity)init;
- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error;
@end

@implementation KMMapper_MPMediaEntity

- (BOOL)_itemsFromMediaPlaylist:(id)playlist error:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CD5940];
  playlistCopy = playlist;
  v8 = [playlistCopy valueForProperty:v6];
  stringValue = [v8 stringValue];

  v10 = [playlistCopy valueForProperty:*MEMORY[0x277CD5930]];

  v11 = [[KMFieldValue alloc] initWithFieldType:216 value:v10];
  v15[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  LOBYTE(error) = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:stringValue itemIdType:216 fields:v12 error:error];

  v13 = *MEMORY[0x277D85DE8];
  return error;
}

- (BOOL)_itemsFromMediaItem:(id)item error:(id *)error
{
  itemCopy = item;
  v7 = [itemCopy valueForProperty:*MEMORY[0x277CD57C8]];
  unsignedLongValue = [v7 unsignedLongValue];

  if (unsignedLongValue)
  {
    v9 = [(KMMapper_MPMediaEntity *)self _mapMusicItem:itemCopy error:error];
  }

  else if ((unsignedLongValue & 0x402) != 0)
  {
    v9 = [(KMMapper_MPMediaEntity *)self _mapPodcastItem:itemCopy error:error];
  }

  else if ((unsignedLongValue & 4) != 0)
  {
    v9 = [(KMMapper_MPMediaEntity *)self _mapAudioBookItem:itemCopy error:error];
  }

  else if ((unsignedLongValue & 0x200) != 0)
  {
    v9 = [(KMMapper_MPMediaEntity *)self _mapTVShowItem:itemCopy error:error];
  }

  else if ((unsignedLongValue & 0x100) != 0)
  {
    v9 = [(KMMapper_MPMediaEntity *)self _mapMovieItem:itemCopy error:error];
  }

  else
  {
    if ((unsignedLongValue & 0x800) == 0)
    {
      v10 = 1;
      goto LABEL_6;
    }

    v9 = [(KMMapper_MPMediaEntity *)self _mapMusicVideoItem:itemCopy error:error];
  }

  v10 = v9;
LABEL_6:

  return v10;
}

- (BOOL)_mapMusicVideoItem:(id)item error:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v7 = [itemCopy valueForProperty:*MEMORY[0x277CD56F0]];
  stringValue = [v7 stringValue];

  v9 = [itemCopy valueForProperty:*MEMORY[0x277CD56E8]];
  v10 = [[KMFieldValue alloc] initWithFieldType:202 value:v9];
  v23[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v12 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:stringValue itemIdType:202 fields:v11 error:error];

  if (v12)
  {
    v13 = [itemCopy valueForProperty:*MEMORY[0x277CD57D8]];
    stringValue2 = [v13 stringValue];

    v15 = [itemCopy valueForProperty:*MEMORY[0x277CD58B8]];
    v16 = [[KMFieldValue alloc] initWithFieldType:214 value:v15];
    v17 = [[KMFieldValue alloc] initWithFieldType:201 value:stringValue, v16];
    v22[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v19 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:stringValue2 itemIdType:214 fields:v18 error:error];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_mapMovieItem:(id)item error:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CD57D8];
  itemCopy = item;
  v8 = [itemCopy valueForProperty:v6];
  stringValue = [v8 stringValue];

  v10 = [itemCopy valueForProperty:*MEMORY[0x277CD58B8]];

  v11 = [[KMFieldValue alloc] initWithFieldType:212 value:v10];
  v15[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  LOBYTE(error) = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:stringValue itemIdType:212 fields:v12 error:error];

  v13 = *MEMORY[0x277D85DE8];
  return error;
}

- (BOOL)_mapTVShowItem:(id)item error:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v7 = [itemCopy valueForProperty:*MEMORY[0x277CD56C8]];
  stringValue = [v7 stringValue];

  v9 = [itemCopy valueForProperty:*MEMORY[0x277CD56D0]];
  v10 = [[KMFieldValue alloc] initWithFieldType:232 value:v9];
  v23[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v12 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:stringValue itemIdType:232 fields:v11 error:error];

  if (v12)
  {
    v13 = [itemCopy valueForProperty:*MEMORY[0x277CD57D8]];
    stringValue2 = [v13 stringValue];

    v15 = [itemCopy valueForProperty:*MEMORY[0x277CD58B8]];
    v16 = [[KMFieldValue alloc] initWithFieldType:230 value:v15];
    v17 = [[KMFieldValue alloc] initWithFieldType:231 value:stringValue, v16];
    v22[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v19 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:stringValue2 itemIdType:230 fields:v18 error:error];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_mapAudioBookItem:(id)item error:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v7 = [itemCopy valueForProperty:*MEMORY[0x277CD56F0]];
  stringValue = [v7 stringValue];

  v9 = [itemCopy valueForProperty:*MEMORY[0x277CD56E8]];
  v10 = [[KMFieldValue alloc] initWithFieldType:206 value:v9];
  v23[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v12 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:stringValue itemIdType:206 fields:v11 error:error];

  if (v12)
  {
    v13 = [itemCopy valueForProperty:*MEMORY[0x277CD57D8]];
    stringValue2 = [v13 stringValue];

    v15 = [itemCopy valueForProperty:*MEMORY[0x277CD58B8]];
    v16 = [[KMFieldValue alloc] initWithFieldType:208 value:v15];
    v17 = [[KMFieldValue alloc] initWithFieldType:205 value:stringValue, v16];
    v22[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v19 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:stringValue2 itemIdType:208 fields:v18 error:error];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_mapPodcastItem:(id)item error:(id *)error
{
  v39[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v7 = [itemCopy valueForProperty:*MEMORY[0x277CD56F0]];
  stringValue = [v7 stringValue];

  v9 = [itemCopy valueForProperty:*MEMORY[0x277CD56E8]];
  v10 = [[KMFieldValue alloc] initWithFieldType:218 value:v9];
  v39[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  v12 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:stringValue itemIdType:218 fields:v11 error:error];

  if (v12)
  {
    v13 = [itemCopy valueForProperty:*MEMORY[0x277CD56C8]];
    stringValue2 = [v13 stringValue];

    v15 = [itemCopy valueForProperty:*MEMORY[0x277CD56D0]];
    v16 = [[KMFieldValue alloc] initWithFieldType:224 value:v15];
    v38 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    v18 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:stringValue2 itemIdType:224 fields:v17 error:error];

    if (v18)
    {
      v19 = [itemCopy valueForProperty:*MEMORY[0x277CD57F8]];
      stringValue3 = [v19 stringValue];

      v34 = [itemCopy valueForProperty:*MEMORY[0x277CD5800]];
      v21 = [[KMFieldValue alloc] initWithFieldType:222 value:v34];
      v37 = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      v35 = stringValue3;
      LODWORD(stringValue3) = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:stringValue3 itemIdType:222 fields:v22 error:error];

      if (stringValue3)
      {
        v23 = [itemCopy valueForProperty:*MEMORY[0x277CD57D8]];
        stringValue4 = [v23 stringValue];

        v33 = [itemCopy valueForProperty:*MEMORY[0x277CD58B8]];
        v31 = [[KMFieldValue alloc] initWithFieldType:228 value:v33];
        v36[0] = v31;
        v30 = [[KMFieldValue alloc] initWithFieldType:217 value:stringValue];
        v36[1] = v30;
        v24 = [[KMFieldValue alloc] initWithFieldType:223 value:stringValue2];
        v36[2] = v24;
        v25 = [[KMFieldValue alloc] initWithFieldType:221 value:v35];
        v36[3] = v25;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
        v27 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:stringValue4 itemIdType:220 fields:v26 error:error];
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (BOOL)_mapMusicItem:(id)item error:(id *)error
{
  v39[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v7 = [itemCopy valueForProperty:*MEMORY[0x277CD56C8]];
  stringValue = [v7 stringValue];

  v9 = [itemCopy valueForProperty:*MEMORY[0x277CD56D0]];
  v10 = [[KMFieldValue alloc] initWithFieldType:204 value:v9];
  v39[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  v12 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:stringValue itemIdType:204 fields:v11 error:error];

  if (v12)
  {
    v13 = [itemCopy valueForProperty:*MEMORY[0x277CD56F0]];
    stringValue2 = [v13 stringValue];

    v15 = [itemCopy valueForProperty:*MEMORY[0x277CD56E8]];
    v16 = [[KMFieldValue alloc] initWithFieldType:202 value:v15];
    v38 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    v18 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:stringValue2 itemIdType:202 fields:v17 error:error];

    if (v18)
    {
      v19 = [itemCopy valueForProperty:*MEMORY[0x277CD5758]];
      stringValue3 = [v19 stringValue];

      v34 = [itemCopy valueForProperty:*MEMORY[0x277CD5750]];
      v21 = [[KMFieldValue alloc] initWithFieldType:210 value:v34];
      v37 = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      v35 = stringValue3;
      LODWORD(stringValue3) = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:stringValue3 itemIdType:210 fields:v22 error:error];

      if (stringValue3)
      {
        v23 = [itemCopy valueForProperty:*MEMORY[0x277CD57D8]];
        stringValue4 = [v23 stringValue];

        v33 = [itemCopy valueForProperty:*MEMORY[0x277CD58B8]];
        v31 = [[KMFieldValue alloc] initWithFieldType:228 value:v33];
        v36[0] = v31;
        v30 = [[KMFieldValue alloc] initWithFieldType:203 value:stringValue];
        v36[1] = v30;
        v24 = [[KMFieldValue alloc] initWithFieldType:201 value:stringValue2];
        v36[2] = v24;
        v25 = [[KMFieldValue alloc] initWithFieldType:209 value:v35];
        v36[3] = v25;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
        v27 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:stringValue4 itemIdType:228 fields:v26 error:error];
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (BOOL)_addItemWithItemId:(id)id itemIdType:(int64_t)type fields:(id)fields error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  idCopy = id;
  fieldsCopy = fields;
  if ((type - 202) > 0x1E)
  {
    v12 = 0;
  }

  else
  {
    v12 = dword_255A00814[type - 202];
  }

  idCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%X-%@", v12, idCopy];
  builder = self->_builder;
  v44 = 0;
  v15 = [(KVItemBuilder *)builder setItemType:5 itemId:idCopy error:&v44];
  v16 = v44;

  if (v15)
  {
    errorCopy = error;
    v35 = idCopy;
    v36 = fieldsCopy;
    v37 = idCopy;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v15 = fieldsCopy;
    v17 = [v15 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v41;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v40 + 1) + 8 * i);
          value = [v22 value];

          if (value)
          {
            v24 = self->_builder;
            fieldType = [v22 fieldType];
            value2 = [v22 value];
            v39 = v16;
            v27 = [(KVItemBuilder *)v24 addFieldWithType:fieldType value:value2 error:&v39];
            v28 = v39;

            if (!v27)
            {
              KMMapperSetBuilderError(errorCopy, v28);

              LOBYTE(v15) = 0;
              v16 = v28;
              fieldsCopy = v36;
              idCopy = v37;
              idCopy = v35;
              goto LABEL_24;
            }

            v19 = 1;
            v16 = v28;
          }
        }

        v18 = [v15 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v19 = 0;
    }

    v29 = v16;

    v30 = self->_builder;
    v38 = v16;
    v31 = [(KVItemBuilder *)v30 buildItemWithError:&v38];
    v16 = v38;

    LOBYTE(v15) = v31 != 0;
    if (v31)
    {
      idCopy = v37;
      idCopy = v35;
      if (v19)
      {
        [(NSMutableArray *)self->_items addObject:v31];
      }
    }

    else
    {
      KMMapperSetBuilderError(errorCopy, v16);
      idCopy = v37;
      idCopy = v35;
    }

    fieldsCopy = v36;
  }

  else
  {
    KMMapperSetBuilderError(error, v16);
  }

LABEL_24:

  v32 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error
{
  objectCopy = object;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  items = self->_items;
  self->_items = v8;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![(KMMapper_MPMediaEntity *)self _itemsFromMediaItem:objectCopy error:error])
    {
LABEL_7:
      v10 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![(KMMapper_MPMediaEntity *)self _itemsFromMediaPlaylist:objectCopy error:error])
    {
      goto LABEL_7;
    }
  }

  v10 = self->_items;
LABEL_8:
  v11 = v10;

  return v10;
}

- (KMMapper_MPMediaEntity)init
{
  v6.receiver = self;
  v6.super_class = KMMapper_MPMediaEntity;
  v2 = [(KMMapper_MPMediaEntity *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;
  }

  return v2;
}

@end