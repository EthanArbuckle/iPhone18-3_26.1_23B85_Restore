@interface MKMapItem(MUExtras)
- (MUTrailSelectionInfo)_mapsui_trailSelectionInfoForMap;
- (uint64_t)_mapsui_associatedHikingItemType;
@end

@implementation MKMapItem(MUExtras)

- (uint64_t)_mapsui_associatedHikingItemType
{
  v1 = [a1 _placeCategoryType];
  if (v1 == 1)
  {
    return 2;
  }

  else
  {
    return v1 == 2;
  }
}

- (MUTrailSelectionInfo)_mapsui_trailSelectionInfoForMap
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [a1 _placeCategoryType];
  if (v2 == 2)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [a1 _geoMapItem];
    v10 = [v9 _trailHead];
    v7 = [v10 trails];

    v11 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v7);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          if ([v15 shouldHighlight])
          {
            if ([v15 trailId])
            {
              v16 = [v15 name];
              v17 = [v16 length];

              if (v17)
              {
                v18 = [MUTrailSelectionInfo alloc];
                v19 = [v15 trailId];
                v20 = [v15 name];
                v8 = [(MUTrailSelectionInfo *)v18 initWithTrailID:v19 trailName:v20];

                goto LABEL_18;
              }
            }
          }
        }

        v12 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_16;
  }

  if (v2 != 1 || ([a1 name], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "length"), v3, !v4))
  {
LABEL_16:
    v8 = 0;
    goto LABEL_19;
  }

  v5 = [MUTrailSelectionInfo alloc];
  v6 = [a1 _muid];
  v7 = [a1 name];
  v8 = [(MUTrailSelectionInfo *)v5 initWithTrailID:v6 trailName:v7];
LABEL_18:

LABEL_19:
  v21 = *MEMORY[0x1E69E9840];

  return v8;
}

@end