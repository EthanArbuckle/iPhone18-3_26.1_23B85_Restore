@interface KMMapper_MPMediaEntity
- (BOOL)_addItemWithItemId:(id)a3 itemIdType:(int64_t)a4 fields:(id)a5 error:(id *)a6;
- (BOOL)_itemsFromMediaItem:(id)a3 error:(id *)a4;
- (BOOL)_itemsFromMediaPlaylist:(id)a3 error:(id *)a4;
- (BOOL)_mapAudioBookItem:(id)a3 error:(id *)a4;
- (BOOL)_mapMovieItem:(id)a3 error:(id *)a4;
- (BOOL)_mapMusicItem:(id)a3 error:(id *)a4;
- (BOOL)_mapMusicVideoItem:(id)a3 error:(id *)a4;
- (BOOL)_mapPodcastItem:(id)a3 error:(id *)a4;
- (BOOL)_mapTVShowItem:(id)a3 error:(id *)a4;
- (KMMapper_MPMediaEntity)init;
- (id)itemsFromExternalObject:(id)a3 additionalFields:(id)a4 error:(id *)a5;
@end

@implementation KMMapper_MPMediaEntity

- (BOOL)_itemsFromMediaPlaylist:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CD5940];
  v7 = a3;
  v8 = [v7 valueForProperty:v6];
  v9 = [v8 stringValue];

  v10 = [v7 valueForProperty:*MEMORY[0x277CD5930]];

  v11 = [[KMFieldValue alloc] initWithFieldType:216 value:v10];
  v15[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  LOBYTE(a4) = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:v9 itemIdType:216 fields:v12 error:a4];

  v13 = *MEMORY[0x277D85DE8];
  return a4;
}

- (BOOL)_itemsFromMediaItem:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 valueForProperty:*MEMORY[0x277CD57C8]];
  v8 = [v7 unsignedLongValue];

  if (v8)
  {
    v9 = [(KMMapper_MPMediaEntity *)self _mapMusicItem:v6 error:a4];
  }

  else if ((v8 & 0x402) != 0)
  {
    v9 = [(KMMapper_MPMediaEntity *)self _mapPodcastItem:v6 error:a4];
  }

  else if ((v8 & 4) != 0)
  {
    v9 = [(KMMapper_MPMediaEntity *)self _mapAudioBookItem:v6 error:a4];
  }

  else if ((v8 & 0x200) != 0)
  {
    v9 = [(KMMapper_MPMediaEntity *)self _mapTVShowItem:v6 error:a4];
  }

  else if ((v8 & 0x100) != 0)
  {
    v9 = [(KMMapper_MPMediaEntity *)self _mapMovieItem:v6 error:a4];
  }

  else
  {
    if ((v8 & 0x800) == 0)
    {
      v10 = 1;
      goto LABEL_6;
    }

    v9 = [(KMMapper_MPMediaEntity *)self _mapMusicVideoItem:v6 error:a4];
  }

  v10 = v9;
LABEL_6:

  return v10;
}

- (BOOL)_mapMusicVideoItem:(id)a3 error:(id *)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 valueForProperty:*MEMORY[0x277CD56F0]];
  v8 = [v7 stringValue];

  v9 = [v6 valueForProperty:*MEMORY[0x277CD56E8]];
  v10 = [[KMFieldValue alloc] initWithFieldType:202 value:v9];
  v23[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v12 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:v8 itemIdType:202 fields:v11 error:a4];

  if (v12)
  {
    v13 = [v6 valueForProperty:*MEMORY[0x277CD57D8]];
    v14 = [v13 stringValue];

    v15 = [v6 valueForProperty:*MEMORY[0x277CD58B8]];
    v16 = [[KMFieldValue alloc] initWithFieldType:214 value:v15];
    v17 = [[KMFieldValue alloc] initWithFieldType:201 value:v8, v16];
    v22[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v19 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:v14 itemIdType:214 fields:v18 error:a4];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_mapMovieItem:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CD57D8];
  v7 = a3;
  v8 = [v7 valueForProperty:v6];
  v9 = [v8 stringValue];

  v10 = [v7 valueForProperty:*MEMORY[0x277CD58B8]];

  v11 = [[KMFieldValue alloc] initWithFieldType:212 value:v10];
  v15[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  LOBYTE(a4) = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:v9 itemIdType:212 fields:v12 error:a4];

  v13 = *MEMORY[0x277D85DE8];
  return a4;
}

- (BOOL)_mapTVShowItem:(id)a3 error:(id *)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 valueForProperty:*MEMORY[0x277CD56C8]];
  v8 = [v7 stringValue];

  v9 = [v6 valueForProperty:*MEMORY[0x277CD56D0]];
  v10 = [[KMFieldValue alloc] initWithFieldType:232 value:v9];
  v23[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v12 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:v8 itemIdType:232 fields:v11 error:a4];

  if (v12)
  {
    v13 = [v6 valueForProperty:*MEMORY[0x277CD57D8]];
    v14 = [v13 stringValue];

    v15 = [v6 valueForProperty:*MEMORY[0x277CD58B8]];
    v16 = [[KMFieldValue alloc] initWithFieldType:230 value:v15];
    v17 = [[KMFieldValue alloc] initWithFieldType:231 value:v8, v16];
    v22[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v19 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:v14 itemIdType:230 fields:v18 error:a4];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_mapAudioBookItem:(id)a3 error:(id *)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 valueForProperty:*MEMORY[0x277CD56F0]];
  v8 = [v7 stringValue];

  v9 = [v6 valueForProperty:*MEMORY[0x277CD56E8]];
  v10 = [[KMFieldValue alloc] initWithFieldType:206 value:v9];
  v23[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v12 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:v8 itemIdType:206 fields:v11 error:a4];

  if (v12)
  {
    v13 = [v6 valueForProperty:*MEMORY[0x277CD57D8]];
    v14 = [v13 stringValue];

    v15 = [v6 valueForProperty:*MEMORY[0x277CD58B8]];
    v16 = [[KMFieldValue alloc] initWithFieldType:208 value:v15];
    v17 = [[KMFieldValue alloc] initWithFieldType:205 value:v8, v16];
    v22[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v19 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:v14 itemIdType:208 fields:v18 error:a4];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_mapPodcastItem:(id)a3 error:(id *)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 valueForProperty:*MEMORY[0x277CD56F0]];
  v8 = [v7 stringValue];

  v9 = [v6 valueForProperty:*MEMORY[0x277CD56E8]];
  v10 = [[KMFieldValue alloc] initWithFieldType:218 value:v9];
  v39[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  v12 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:v8 itemIdType:218 fields:v11 error:a4];

  if (v12)
  {
    v13 = [v6 valueForProperty:*MEMORY[0x277CD56C8]];
    v14 = [v13 stringValue];

    v15 = [v6 valueForProperty:*MEMORY[0x277CD56D0]];
    v16 = [[KMFieldValue alloc] initWithFieldType:224 value:v15];
    v38 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    v18 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:v14 itemIdType:224 fields:v17 error:a4];

    if (v18)
    {
      v19 = [v6 valueForProperty:*MEMORY[0x277CD57F8]];
      v20 = [v19 stringValue];

      v34 = [v6 valueForProperty:*MEMORY[0x277CD5800]];
      v21 = [[KMFieldValue alloc] initWithFieldType:222 value:v34];
      v37 = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      v35 = v20;
      LODWORD(v20) = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:v20 itemIdType:222 fields:v22 error:a4];

      if (v20)
      {
        v23 = [v6 valueForProperty:*MEMORY[0x277CD57D8]];
        v32 = [v23 stringValue];

        v33 = [v6 valueForProperty:*MEMORY[0x277CD58B8]];
        v31 = [[KMFieldValue alloc] initWithFieldType:228 value:v33];
        v36[0] = v31;
        v30 = [[KMFieldValue alloc] initWithFieldType:217 value:v8];
        v36[1] = v30;
        v24 = [[KMFieldValue alloc] initWithFieldType:223 value:v14];
        v36[2] = v24;
        v25 = [[KMFieldValue alloc] initWithFieldType:221 value:v35];
        v36[3] = v25;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
        v27 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:v32 itemIdType:220 fields:v26 error:a4];
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

- (BOOL)_mapMusicItem:(id)a3 error:(id *)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 valueForProperty:*MEMORY[0x277CD56C8]];
  v8 = [v7 stringValue];

  v9 = [v6 valueForProperty:*MEMORY[0x277CD56D0]];
  v10 = [[KMFieldValue alloc] initWithFieldType:204 value:v9];
  v39[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  v12 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:v8 itemIdType:204 fields:v11 error:a4];

  if (v12)
  {
    v13 = [v6 valueForProperty:*MEMORY[0x277CD56F0]];
    v14 = [v13 stringValue];

    v15 = [v6 valueForProperty:*MEMORY[0x277CD56E8]];
    v16 = [[KMFieldValue alloc] initWithFieldType:202 value:v15];
    v38 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    v18 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:v14 itemIdType:202 fields:v17 error:a4];

    if (v18)
    {
      v19 = [v6 valueForProperty:*MEMORY[0x277CD5758]];
      v20 = [v19 stringValue];

      v34 = [v6 valueForProperty:*MEMORY[0x277CD5750]];
      v21 = [[KMFieldValue alloc] initWithFieldType:210 value:v34];
      v37 = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      v35 = v20;
      LODWORD(v20) = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:v20 itemIdType:210 fields:v22 error:a4];

      if (v20)
      {
        v23 = [v6 valueForProperty:*MEMORY[0x277CD57D8]];
        v32 = [v23 stringValue];

        v33 = [v6 valueForProperty:*MEMORY[0x277CD58B8]];
        v31 = [[KMFieldValue alloc] initWithFieldType:228 value:v33];
        v36[0] = v31;
        v30 = [[KMFieldValue alloc] initWithFieldType:203 value:v8];
        v36[1] = v30;
        v24 = [[KMFieldValue alloc] initWithFieldType:201 value:v14];
        v36[2] = v24;
        v25 = [[KMFieldValue alloc] initWithFieldType:209 value:v35];
        v36[3] = v25;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
        v27 = [(KMMapper_MPMediaEntity *)self _addItemWithItemId:v32 itemIdType:228 fields:v26 error:a4];
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

- (BOOL)_addItemWithItemId:(id)a3 itemIdType:(int64_t)a4 fields:(id)a5 error:(id *)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  if ((a4 - 202) > 0x1E)
  {
    v12 = 0;
  }

  else
  {
    v12 = dword_255A00814[a4 - 202];
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%X-%@", v12, v10];
  builder = self->_builder;
  v44 = 0;
  v15 = [(KVItemBuilder *)builder setItemType:5 itemId:v13 error:&v44];
  v16 = v44;

  if (v15)
  {
    v34 = a6;
    v35 = v13;
    v36 = v11;
    v37 = v10;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v15 = v11;
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
          v23 = [v22 value];

          if (v23)
          {
            v24 = self->_builder;
            v25 = [v22 fieldType];
            v26 = [v22 value];
            v39 = v16;
            v27 = [(KVItemBuilder *)v24 addFieldWithType:v25 value:v26 error:&v39];
            v28 = v39;

            if (!v27)
            {
              KMMapperSetBuilderError(v34, v28);

              LOBYTE(v15) = 0;
              v16 = v28;
              v11 = v36;
              v10 = v37;
              v13 = v35;
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
      v10 = v37;
      v13 = v35;
      if (v19)
      {
        [(NSMutableArray *)self->_items addObject:v31];
      }
    }

    else
    {
      KMMapperSetBuilderError(v34, v16);
      v10 = v37;
      v13 = v35;
    }

    v11 = v36;
  }

  else
  {
    KMMapperSetBuilderError(a6, v16);
  }

LABEL_24:

  v32 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)itemsFromExternalObject:(id)a3 additionalFields:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  items = self->_items;
  self->_items = v8;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![(KMMapper_MPMediaEntity *)self _itemsFromMediaItem:v7 error:a5])
    {
LABEL_7:
      v10 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![(KMMapper_MPMediaEntity *)self _itemsFromMediaPlaylist:v7 error:a5])
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