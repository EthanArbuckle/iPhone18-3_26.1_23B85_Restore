@interface MSFavoriteItem(MapsSuggestionsMapsSyncShortcutStorage)
+ (id)favoriteItemWithShortcut:()MapsSuggestionsMapsSyncShortcutStorage;
- (void)updateWithShortcut:()MapsSuggestionsMapsSyncShortcutStorage didChange:;
@end

@implementation MSFavoriteItem(MapsSuggestionsMapsSyncShortcutStorage)

+ (id)favoriteItemWithShortcut:()MapsSuggestionsMapsSyncShortcutStorage
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 storageIdentifier];

  if (!v4)
  {
    v5 = [v3 identifierForStorage];
    [v3 setStorageIdentifier:v5];
  }

  v6 = objc_alloc_init(MEMORY[0x1E69AE0A8]);
  [v6 setVersion:0];
  [v6 setType:{objc_msgSend(v3, "type")}];
  v7 = [v3 storageIdentifier];
  [v6 setIdentifier:v7];

  v8 = [v3 identifier];
  [v6 setShortcutIdentifier:v8];

  MapsSuggestionsMapsSyncSimulateCrashIfMapItemIsNil(v3);
  v9 = [v3 geoMapItem];
  [v6 setMapItemStorage:v9];

  v10 = [v3 customName];
  [v6 setCustomName:v10];

  [v6 setHidden:{objc_msgSend(v3, "isHidden")}];
  v11 = [v3 originatingAddressString];
  [v6 setOriginatingAddressString:v11];

  [v6 setSource:{objc_msgSend(v3, "source")}];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [v3 contacts];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * i) handleValue];
        [v6 addContactHandle:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
  v7 = [a1 muid];
  v8 = MEMORY[0x1E696AD98];
  v9 = [v6 geoMapItem];
  v10 = [v8 numberWithUnsignedLongLong:{objc_msgSend(v9, "_muid")}];
  v11 = [v7 isEqual:v10];

  if ((v11 & 1) == 0)
  {
    v12 = MEMORY[0x1E696AD98];
    v13 = [v6 geoMapItem];
    v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(v13, "_muid")}];
    [a1 setMuid:v14];

    *a4 = 1;
  }

  v15 = [a1 latitude];
  v16 = MEMORY[0x1E696AD98];
  v17 = [v6 geoMapItem];
  [v17 coordinate];
  v18 = [v16 numberWithDouble:?];
  v19 = [v15 isEqual:v18];

  if ((v19 & 1) == 0)
  {
    v20 = MEMORY[0x1E696AD98];
    v21 = [v6 geoMapItem];
    [v21 coordinate];
    v22 = [v20 numberWithDouble:?];
    [a1 setLatitude:v22];

    *a4 = 1;
  }

  v23 = [a1 longitude];
  v24 = MEMORY[0x1E696AD98];
  v25 = [v6 geoMapItem];
  [v25 coordinate];
  v27 = [v24 numberWithDouble:v26];
  v28 = [v23 isEqual:v27];

  if ((v28 & 1) == 0)
  {
    v29 = MEMORY[0x1E696AD98];
    v30 = [v6 geoMapItem];
    [v30 coordinate];
    v32 = [v29 numberWithDouble:v31];
    [a1 setLongitude:v32];

    *a4 = 1;
  }

  v33 = [a1 mapItemStorage];
  v34 = [v6 geoMapItem];
  v35 = [v33 isEqual:v34];

  if ((v35 & 1) == 0)
  {
    v36 = [v6 geoMapItem];
    [a1 setMapItemStorage:v36];

    *a4 = 1;
  }

  v37 = [a1 shortcutIdentifier];
  v38 = [v6 identifier];
  v39 = [v37 isEqualToString:v38];

  if ((v39 & 1) == 0)
  {
    v40 = [v6 identifier];
    [a1 setShortcutIdentifier:v40];

    *a4 = 1;
  }

  v41 = [a1 hidden];
  if (v41 != [v6 isHidden])
  {
    [a1 setHidden:{objc_msgSend(v6, "isHidden")}];
    *a4 = 1;
  }

  v42 = [a1 customName];
  v43 = [v6 customName];
  v44 = [v42 isEqualToString:v43];

  if ((v44 & 1) == 0)
  {
    v45 = [v6 customName];
    [a1 setCustomName:v45];

    *a4 = 1;
  }

  v46 = [a1 shortcutIdentifier];
  v47 = [v6 identifier];
  v48 = [v46 isEqualToString:v47];

  if ((v48 & 1) == 0)
  {
    v49 = [v6 identifier];
    [a1 setShortcutIdentifier:v49];

    *a4 = 1;
  }

  v50 = [a1 type];
  if (v50 != [v6 type])
  {
    [a1 setType:{objc_msgSend(v6, "type")}];
    *a4 = 1;
  }

  v51 = [a1 originatingAddressString];
  v52 = [v6 originatingAddressString];
  v53 = [v51 isEqualToString:v52];

  if ((v53 & 1) == 0)
  {
    v54 = [v6 originatingAddressString];
    [a1 setOriginatingAddressString:v54];

    *a4 = 1;
  }

  v55 = [a1 source];
  if (v55 != [v6 source])
  {
    [a1 setSource:{objc_msgSend(v6, "source")}];
    *a4 = 1;
  }

  v56 = MEMORY[0x1E695DFD8];
  v57 = [a1 fetchContactHandles];
  v58 = [v56 setWithArray:v57];

  v59 = [MEMORY[0x1E695DFA8] set];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v60 = [v6 contacts];
  v61 = [v60 countByEnumeratingWithState:&v87 objects:v93 count:16];
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
          objc_enumerationMutation(v60);
        }

        v65 = [*(*(&v87 + 1) + 8 * i) handleValue];
        [v59 addObject:v65];
      }

      v62 = [v60 countByEnumeratingWithState:&v87 objects:v93 count:16];
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

        [a1 removeContactHandle:*(*(&v83 + 1) + 8 * j)];
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

        [a1 addContactHandle:*(*(&v79 + 1) + 8 * k)];
        *a4 = 1;
      }

      v75 = [v73 countByEnumeratingWithState:&v79 objects:v91 count:16];
    }

    while (v75);
  }
}

@end