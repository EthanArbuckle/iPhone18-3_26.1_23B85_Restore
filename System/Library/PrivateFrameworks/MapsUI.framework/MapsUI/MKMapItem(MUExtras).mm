@interface MKMapItem(MUExtras)
- (MUTrailSelectionInfo)_mapsui_trailSelectionInfoForMap;
- (uint64_t)_mapsui_associatedHikingItemType;
@end

@implementation MKMapItem(MUExtras)

- (uint64_t)_mapsui_associatedHikingItemType
{
  _placeCategoryType = [self _placeCategoryType];
  if (_placeCategoryType == 1)
  {
    return 2;
  }

  else
  {
    return _placeCategoryType == 2;
  }
}

- (MUTrailSelectionInfo)_mapsui_trailSelectionInfoForMap
{
  v28 = *MEMORY[0x1E69E9840];
  _placeCategoryType = [self _placeCategoryType];
  if (_placeCategoryType == 2)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    _geoMapItem = [self _geoMapItem];
    _trailHead = [_geoMapItem _trailHead];
    trails = [_trailHead trails];

    v11 = [trails countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(trails);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          if ([v15 shouldHighlight])
          {
            if ([v15 trailId])
            {
              name = [v15 name];
              v17 = [name length];

              if (v17)
              {
                v18 = [MUTrailSelectionInfo alloc];
                trailId = [v15 trailId];
                name2 = [v15 name];
                v8 = [(MUTrailSelectionInfo *)v18 initWithTrailID:trailId trailName:name2];

                goto LABEL_18;
              }
            }
          }
        }

        v12 = [trails countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_16;
  }

  if (_placeCategoryType != 1 || ([self name], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "length"), v3, !v4))
  {
LABEL_16:
    v8 = 0;
    goto LABEL_19;
  }

  v5 = [MUTrailSelectionInfo alloc];
  _muid = [self _muid];
  trails = [self name];
  v8 = [(MUTrailSelectionInfo *)v5 initWithTrailID:_muid trailName:trails];
LABEL_18:

LABEL_19:
  v21 = *MEMORY[0x1E69E9840];

  return v8;
}

@end