@interface GEOMetroRegionData
- (GEOMetroRegionData)init;
- (GEOMetroRegionData)initWithFileURL:(id)l;
- (id)metroNameForLocation:(id)location;
@end

@implementation GEOMetroRegionData

- (id)metroNameForLocation:(id)location
{
  locationCopy = location;
  [locationCopy coordinate];
  v6 = v5;
  [locationCopy coordinate];
  v8 = v7;
  v31 = 0;
  v32 = &v31;
  v33 = 0x4012000000;
  v34 = __Block_byref_object_copy__1202;
  v35 = __Block_byref_object_dispose__1203;
  v36 = &unk_1AB6D4001;
  [locationCopy coordinate];
  v10 = v9;
  coordinate = [locationCopy coordinate];
  gloria::TileId::FromLatLng(coordinate, v12, v13, v14, v10, v15);
  v37 = v16;
  v38 = v17;
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  EncodedTileId = gloria::TileId::GetEncodedTileId(v32[6], *(v32 + 56));
  db = self->_db;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __43__GEOMetroRegionData_metroNameForLocation___block_invoke;
  v26[3] = &unk_1E7953C50;
  v28 = &v31;
  v29 = v6;
  v30 = v8;
  v21 = v18;
  v27 = v21;
  if (([(GEOGloriaDB *)db unsafeDataForQuadKey:EncodedTileId result:v26]& 1) != 0)
  {
    if ([v21 count] <= 1)
    {
      firstObject = [v21 firstObject];
      goto LABEL_9;
    }

    v23 = [v21 sortedArrayUsingComparator:&__block_literal_global_1207];
    firstObject = [v23 firstObject];
  }

  else
  {
    v23 = GEOGetMetroRegionLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *v25 = 0;
      _os_log_impl(&dword_1AB634000, v23, OS_LOG_TYPE_INFO, "Did not find matching polygon in underlying data", v25, 2u);
    }

    firstObject = 0;
  }

LABEL_9:
  _Block_object_dispose(&v31, 8);

  return firstObject;
}

BOOL __43__GEOMetroRegionData_metroNameForLocation___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = gloria::TileId::ToBBOX(*(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56));
  v28 = v5;
  v29 = v4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [v3 territorys];
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v7)
  {
    v8 = *v25;
    v20 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v21 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        if (![v10 hasPolygon])
        {
          v13 = [v10 regionNameStr];
          v14 = v13 == 0;

          if (v14)
          {
            continue;
          }

LABEL_11:
          v15 = *(a1 + 32);
          v16 = [v10 regionNameStr];
          [v15 addObject:v16];

          continue;
        }

        v22 = v21;
        v23 = v20;
        if (GEOCoarseLocationTerritoryInfoContainsPoint())
        {
          v11 = [v10 regionNameStr];
          v12 = v11 == 0;

          if (!v12)
          {
            goto LABEL_11;
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v7);
  }

  v17 = [*(a1 + 32) count] != 0;
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (GEOMetroRegionData)initWithFileURL:(id)l
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = GEOMetroRegionData;
  v5 = [(GEOMetroRegionData *)&v13 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = objc_alloc(MEMORY[0x1E69A1DE0]);
  v7 = objc_opt_class();
  v8 = GEOGetMetroRegionLog();
  v9 = [v6 initWithFileURL:lCopy rootQuadKey:0 metadataClass:0 dataClass:v7 log:v8];
  db = v5->_db;
  v5->_db = v9;

  if (v5->_db)
  {
    v11 = v5;
  }

  else
  {
LABEL_4:
    v11 = 0;
  }

  return v11;
}

- (GEOMetroRegionData)init
{
  result = [MEMORY[0x1E695DF30] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

@end