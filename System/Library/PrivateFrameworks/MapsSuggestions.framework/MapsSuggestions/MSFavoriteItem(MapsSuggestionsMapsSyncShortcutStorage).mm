@interface MSFavoriteItem(MapsSuggestionsMapsSyncShortcutStorage)
+ (id)favoriteItemWithShortcut:()MapsSuggestionsMapsSyncShortcutStorage;
- (void)updateWithShortcut:()MapsSuggestionsMapsSyncShortcutStorage didChange:;
@end

@implementation MSFavoriteItem(MapsSuggestionsMapsSyncShortcutStorage)

+ (id)favoriteItemWithShortcut:()MapsSuggestionsMapsSyncShortcutStorage
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  storageIdentifier = [v3 storageIdentifier];

  if (!storageIdentifier)
  {
    identifierForStorage = [v3 identifierForStorage];
    [v3 setStorageIdentifier:identifierForStorage];
  }

  v6 = objc_alloc_init(MEMORY[0x1E69AE0A8]);
  [v6 setVersion:0];
  [v6 setType:{objc_msgSend(v3, "type")}];
  storageIdentifier2 = [v3 storageIdentifier];
  [v6 setIdentifier:storageIdentifier2];

  identifier = [v3 identifier];
  [v6 setShortcutIdentifier:identifier];

  MapsSuggestionsMapsSyncSimulateCrashIfMapItemIsNil(v3);
  geoMapItem = [v3 geoMapItem];
  [v6 setMapItemStorage:geoMapItem];

  customName = [v3 customName];
  [v6 setCustomName:customName];

  [v6 setHidden:{objc_msgSend(v3, "isHidden")}];
  originatingAddressString = [v3 originatingAddressString];
  [v6 setOriginatingAddressString:originatingAddressString];

  [v6 setSource:{objc_msgSend(v3, "source")}];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  contacts = [v3 contacts];
  v13 = [contacts countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(contacts);
        }

        handleValue = [*(*(&v19 + 1) + 8 * i) handleValue];
        [v6 addContactHandle:handleValue];
      }

      v14 = [contacts countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v6;
}

- (void)updateWithShortcut:()MapsSuggestionsMapsSyncShortcutStorage didChange:
{
  v94 = *MEMORY[0x1E69E9840];
  v6 = a3;
  *a4 = 0;
  MapsSuggestionsMapsSyncSimulateCrashIfMapItemIsNil(v6);
  muid = [self muid];
  v8 = MEMORY[0x1E696AD98];
  geoMapItem = [v6 geoMapItem];
  v10 = [v8 numberWithUnsignedLongLong:{objc_msgSend(geoMapItem, "_muid")}];
  v11 = [muid isEqual:v10];

  if ((v11 & 1) == 0)
  {
    v12 = MEMORY[0x1E696AD98];
    geoMapItem2 = [v6 geoMapItem];
    v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(geoMapItem2, "_muid")}];
    [self setMuid:v14];

    *a4 = 1;
  }

  latitude = [self latitude];
  v16 = MEMORY[0x1E696AD98];
  geoMapItem3 = [v6 geoMapItem];
  [geoMapItem3 coordinate];
  v18 = [v16 numberWithDouble:?];
  v19 = [latitude isEqual:v18];

  if ((v19 & 1) == 0)
  {
    v20 = MEMORY[0x1E696AD98];
    geoMapItem4 = [v6 geoMapItem];
    [geoMapItem4 coordinate];
    v22 = [v20 numberWithDouble:?];
    [self setLatitude:v22];

    *a4 = 1;
  }

  longitude = [self longitude];
  v24 = MEMORY[0x1E696AD98];
  geoMapItem5 = [v6 geoMapItem];
  [geoMapItem5 coordinate];
  v27 = [v24 numberWithDouble:v26];
  v28 = [longitude isEqual:v27];

  if ((v28 & 1) == 0)
  {
    v29 = MEMORY[0x1E696AD98];
    geoMapItem6 = [v6 geoMapItem];
    [geoMapItem6 coordinate];
    v32 = [v29 numberWithDouble:v31];
    [self setLongitude:v32];

    *a4 = 1;
  }

  mapItemStorage = [self mapItemStorage];
  geoMapItem7 = [v6 geoMapItem];
  v35 = [mapItemStorage isEqual:geoMapItem7];

  if ((v35 & 1) == 0)
  {
    geoMapItem8 = [v6 geoMapItem];
    [self setMapItemStorage:geoMapItem8];

    *a4 = 1;
  }

  shortcutIdentifier = [self shortcutIdentifier];
  identifier = [v6 identifier];
  v39 = [shortcutIdentifier isEqualToString:identifier];

  if ((v39 & 1) == 0)
  {
    identifier2 = [v6 identifier];
    [self setShortcutIdentifier:identifier2];

    *a4 = 1;
  }

  hidden = [self hidden];
  if (hidden != [v6 isHidden])
  {
    [self setHidden:{objc_msgSend(v6, "isHidden")}];
    *a4 = 1;
  }

  customName = [self customName];
  customName2 = [v6 customName];
  v44 = [customName isEqualToString:customName2];

  if ((v44 & 1) == 0)
  {
    customName3 = [v6 customName];
    [self setCustomName:customName3];

    *a4 = 1;
  }

  shortcutIdentifier2 = [self shortcutIdentifier];
  identifier3 = [v6 identifier];
  v48 = [shortcutIdentifier2 isEqualToString:identifier3];

  if ((v48 & 1) == 0)
  {
    identifier4 = [v6 identifier];
    [self setShortcutIdentifier:identifier4];

    *a4 = 1;
  }

  type = [self type];
  if (type != [v6 type])
  {
    [self setType:{objc_msgSend(v6, "type")}];
    *a4 = 1;
  }

  originatingAddressString = [self originatingAddressString];
  originatingAddressString2 = [v6 originatingAddressString];
  v53 = [originatingAddressString isEqualToString:originatingAddressString2];

  if ((v53 & 1) == 0)
  {
    originatingAddressString3 = [v6 originatingAddressString];
    [self setOriginatingAddressString:originatingAddressString3];

    *a4 = 1;
  }

  source = [self source];
  if (source != [v6 source])
  {
    [self setSource:{objc_msgSend(v6, "source")}];
    *a4 = 1;
  }

  v56 = MEMORY[0x1E695DFD8];
  fetchContactHandles = [self fetchContactHandles];
  v58 = [v56 setWithArray:fetchContactHandles];

  v59 = [MEMORY[0x1E695DFA8] set];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  contacts = [v6 contacts];
  v61 = [contacts countByEnumeratingWithState:&v87 objects:v93 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v88;
    do
    {
      for (i = 0; i != v62; ++i)
      {
        if (*v88 != v63)
        {
          objc_enumerationMutation(contacts);
        }

        handleValue = [*(*(&v87 + 1) + 8 * i) handleValue];
        [v59 addObject:handleValue];
      }

      v62 = [contacts countByEnumeratingWithState:&v87 objects:v93 count:16];
    }

    while (v62);
  }

  v66 = [v59 mutableCopy];
  [v66 minusSet:v58];
  v78 = v58;
  v67 = [v58 mutableCopy];
  [v67 minusSet:v59];
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v68 = v67;
  v69 = [v68 countByEnumeratingWithState:&v83 objects:v92 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = *v84;
    do
    {
      for (j = 0; j != v70; ++j)
      {
        if (*v84 != v71)
        {
          objc_enumerationMutation(v68);
        }

        [self removeContactHandle:*(*(&v83 + 1) + 8 * j)];
        *a4 = 1;
      }

      v70 = [v68 countByEnumeratingWithState:&v83 objects:v92 count:16];
    }

    while (v70);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v73 = v66;
  v74 = [v73 countByEnumeratingWithState:&v79 objects:v91 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v80;
    do
    {
      for (k = 0; k != v75; ++k)
      {
        if (*v80 != v76)
        {
          objc_enumerationMutation(v73);
        }

        [self addContactHandle:*(*(&v79 + 1) + 8 * k)];
        *a4 = 1;
      }

      v75 = [v73 countByEnumeratingWithState:&v79 objects:v91 count:16];
    }

    while (v75);
  }
}

@end