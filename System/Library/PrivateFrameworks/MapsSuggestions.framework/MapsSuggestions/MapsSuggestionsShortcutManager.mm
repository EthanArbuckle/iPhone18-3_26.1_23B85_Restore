@interface MapsSuggestionsShortcutManager
- (MapsSuggestionsShortcutManager)initWithStorage:(id)storage suggestor:(id)suggestor contacts:(id)contacts routine:(id)routine mapsSync:(id)sync usingMyPlaces:(BOOL)places;
- (NSString)uniqueName;
- (char)addOrUpdateShortcuts:(id)shortcuts handler:(id)handler;
- (char)loadAllShortcutsWithHandler:(id)handler;
- (char)moveShortcut:(id)shortcut afterShortcut:(id)afterShortcut handler:(id)handler;
- (char)moveShortcut:(id)shortcut beforeShortcut:(id)beforeShortcut handler:(id)handler;
- (char)moveShortcut:(id)shortcut toIndex:(int64_t)index withSnapshot:(id)snapshot handler:(id)handler;
- (char)moveShortcutToBack:(id)back handler:(id)handler;
- (char)moveShortcutToFront:(id)front handler:(id)handler;
- (char)proposeAdditionalShortcutsOfType:(int64_t)type handler:(id)handler;
- (char)readMeCardWithHandler:(id)handler;
- (char)removeShortcuts:(id)shortcuts handler:(id)handler;
- (id).cxx_construct;
- (id)initFromResourceDepot:(id)depot;
- (id)test_setUpPlaceholdersIfNeeded:(id)needed overlays:(id)overlays;
- (uint64_t)__loadCorrectedMeCardWithHandler:(uint64_t)handler;
- (uint64_t)_loadCorrectedMeCardWithHandler:(uint64_t)handler;
- (uint64_t)_mergeShortcuts:(void *)shortcuts toMeCardAndCallHandler:;
- (uint64_t)usingMyPlaces;
- (void)mapsSync:(id)sync didChangeForContentType:(int64_t)type;
- (void)meCardReader:(id)reader didUpdateMeCard:(id)card;
@end

@implementation MapsSuggestionsShortcutManager

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (uint64_t)usingMyPlaces
{
  if (self)
  {
    if (qword_1EDC51ED0 != -1)
    {
      dispatch_once(&qword_1EDC51ED0, &__block_literal_global_359);
    }

    if (_MergedGlobals_2 == 1)
    {
      v2 = *(self + 72);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (id)initFromResourceDepot:(id)depot
{
  v26 = *MEMORY[0x1E69E9840];
  depotCopy = depot;
  v5 = depotCopy;
  if (!depotCopy)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v20 = 1024;
      v21 = 104;
      v22 = 2082;
      v23 = "[MapsSuggestionsShortcutManager initFromResourceDepot:]";
      v24 = 2082;
      v25 = "nil == (resourceDepot)";
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to build from!", &v18, 0x26u);
    }

    goto LABEL_21;
  }

  oneFavoritesStorage = [depotCopy oneFavoritesStorage];

  if (!oneFavoritesStorage)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v20 = 1024;
      v21 = 105;
      v22 = 2082;
      v23 = "[MapsSuggestionsShortcutManager initFromResourceDepot:]";
      v24 = 2082;
      v25 = "nil == (resourceDepot.oneFavoritesStorage)";
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one FavouritesStorage!", &v18, 0x26u);
    }

    goto LABEL_21;
  }

  oneFavoritesSuggestor = [v5 oneFavoritesSuggestor];

  if (!oneFavoritesSuggestor)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v20 = 1024;
      v21 = 106;
      v22 = 2082;
      v23 = "[MapsSuggestionsShortcutManager initFromResourceDepot:]";
      v24 = 2082;
      v25 = "nil == (resourceDepot.oneFavoritesSuggestor)";
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one FavouritesSuggestor!", &v18, 0x26u);
    }

    goto LABEL_21;
  }

  oneContacts = [v5 oneContacts];

  if (!oneContacts)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v20 = 1024;
      v21 = 107;
      v22 = 2082;
      v23 = "[MapsSuggestionsShortcutManager initFromResourceDepot:]";
      v24 = 2082;
      v25 = "nil == (resourceDepot.oneContacts)";
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one Contacts!", &v18, 0x26u);
    }

    goto LABEL_21;
  }

  oneRoutine = [v5 oneRoutine];

  if (!oneRoutine)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v20 = 1024;
      v21 = 108;
      v22 = 2082;
      v23 = "[MapsSuggestionsShortcutManager initFromResourceDepot:]";
      v24 = 2082;
      v25 = "nil == (resourceDepot.oneRoutine)";
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one Routine!", &v18, 0x26u);
    }

LABEL_21:

    selfCopy = 0;
    goto LABEL_22;
  }

  oneFavoritesStorage2 = [v5 oneFavoritesStorage];
  oneFavoritesSuggestor2 = [v5 oneFavoritesSuggestor];
  oneContacts2 = [v5 oneContacts];
  oneRoutine2 = [v5 oneRoutine];
  oneMapsSync = [v5 oneMapsSync];
  self = [(MapsSuggestionsShortcutManager *)self initWithStorage:oneFavoritesStorage2 suggestor:oneFavoritesSuggestor2 contacts:oneContacts2 routine:oneRoutine2 mapsSync:oneMapsSync usingMyPlaces:1];

  selfCopy = self;
LABEL_22:

  return selfCopy;
}

- (MapsSuggestionsShortcutManager)initWithStorage:(id)storage suggestor:(id)suggestor contacts:(id)contacts routine:(id)routine mapsSync:(id)sync usingMyPlaces:(BOOL)places
{
  v45 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  suggestorCopy = suggestor;
  contactsCopy = contacts;
  routineCopy = routine;
  syncCopy = sync;
  v43.receiver = self;
  v43.super_class = MapsSuggestionsShortcutManager;
  v15 = [(MapsSuggestionsShortcutManager *)&v43 init];
  if (v15)
  {
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    MSg::Queue::Queue(&buf, @"MapsSuggestionsShortcutManagerQueue", v16);
    v17 = buf;
    *&buf = 0;
    innerQueue = v15->_queue._innerQueue;
    v15->_queue._innerQueue = v17;

    v19 = *(&buf + 1);
    *(&buf + 1) = 0;
    name = v15->_queue._name;
    v15->_queue._name = v19;

    objc_storeStrong(&v15->_storage, storage);
    objc_storeStrong(&v15->_suggestor, suggestor);
    objc_storeStrong(&v15->_contacts, contacts);
    objc_storeStrong(&v15->_routine, routine);
    objc_storeStrong(&v15->_mapsSync, sync);
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    hiddenShortcuts = v15->_hiddenShortcuts;
    v15->_hiddenShortcuts = v21;

    rawMeCard = v15->_rawMeCard;
    v15->_rawMeCard = 0;

    rawHomeAddressStrings = v15->_rawHomeAddressStrings;
    v15->_rawHomeAddressStrings = 0;

    rawWorkAddressStrings = v15->_rawWorkAddressStrings;
    v15->_rawWorkAddressStrings = 0;

    rawSchoolAddressStrings = v15->_rawSchoolAddressStrings;
    v15->_rawSchoolAddressStrings = 0;

    currCorrectedMeCard = v15->_currCorrectedMeCard;
    v15->_currCorrectedMeCard = 0;

    v15->_usingMyPlaces = places;
    v28 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = [(MapsSuggestionsShortcutStorage *)v15->_storage uniqueName:storageCopy];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v29;
      _os_log_impl(&dword_1C5126000, v28, OS_LOG_TYPE_DEBUG, "Using %@", &buf, 0xCu);
    }

    if ([(MapsSuggestionsShortcutManager *)v15 usingMyPlaces])
    {
      [(MapsSuggestionsMapsSync *)v15->_mapsSync addMapsSyncObserver:v15 forContentType:3];
    }

    else
    {
      [(MapsSuggestionsContacts *)v15->_contacts registerMeCardObserver:v15];
      objc_initWeak(&buf, v15);
      storage = v15->_storage;
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __100__MapsSuggestionsShortcutManager_initWithStorage_suggestor_contacts_routine_mapsSync_usingMyPlaces___block_invoke;
      v41[3] = &unk_1E81F5208;
      objc_copyWeak(&v42, &buf);
      [(MapsSuggestionsShortcutStorage *)storage setChangeHandler:v41];
      objc_destroyWeak(&v42);
      objc_destroyWeak(&buf);
    }

    v31 = [MapsSuggestionsObservers alloc];
    v32 = v15->_queue._innerQueue;
    v33 = [(MapsSuggestionsObservers *)v31 initWithCallbackQueue:v32 name:@"MapsSuggestionsMeCardReaderObservers" strong:0];
    meCardObservers = v15->_meCardObservers;
    v15->_meCardObservers = v33;
  }

  return v15;
}

void __100__MapsSuggestionsShortcutManager_initWithStorage_suggestor_contacts_routine_mapsSync_usingMyPlaces___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained readMeCardWithHandler:&__block_literal_global_8];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsShortcutManager.mm";
      v6 = 1026;
      v7 = 147;
      v8 = 2082;
      v9 = "[MapsSuggestionsShortcutManager initWithStorage:suggestor:contacts:routine:mapsSync:usingMyPlaces:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void __100__MapsSuggestionsShortcutManager_initWithStorage_suggestor_contacts_routine_mapsSync_usingMyPlaces___block_invoke_170(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "Storage resulted in auto-reload: %@ / error: %@", &v7, 0x16u);
  }
}

- (id)test_setUpPlaceholdersIfNeeded:(id)needed overlays:(id)overlays
{
  v43 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  overlaysCopy = overlays;
  v7 = neededCopy;
  v29 = overlaysCopy;
  v30 = v7;
  v8 = isAuthorizedToUseContacts();
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  shortcutsForAll = [v7 shortcutsForAll];
  v10 = 0;
  v11 = 0;
  v12 = [shortcutsForAll countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v12)
  {
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(shortcutsForAll);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        if ([v15 type] == 2)
        {
          v11 = 1;
        }

        else
        {
          v10 |= [v15 type] == 3;
        }
      }

      v12 = [shortcutsForAll countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v12);
  }

  v16 = v8;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = v29;
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (!v18)
  {

    v19 = 0;
    goto LABEL_36;
  }

  v19 = 0;
  v20 = 0;
  v21 = *v32;
  do
  {
    for (j = 0; j != v18; ++j)
    {
      if (*v32 != v21)
      {
        objc_enumerationMutation(v17);
      }

      v23 = *(*(&v31 + 1) + 8 * j);
      if ([v23 type] == 2)
      {
        if (!v20)
        {
          if ([v23 isSetupPlaceholder])
          {
            v20 = v23;
LABEL_24:
            v24 = v23;
            continue;
          }

          v20 = 0;
        }

        v11 = 1;
      }

      else
      {
        if ([v23 type] != 3)
        {
          continue;
        }

        if (!v19)
        {
          if ([v23 isSetupPlaceholder])
          {
            v19 = v23;
            goto LABEL_24;
          }

          v19 = 0;
        }

        v10 = 1;
      }
    }

    v18 = [v17 countByEnumeratingWithState:&v31 objects:v41 count:16];
  }

  while (v18);

  if (v20)
  {
    if (v19)
    {
      goto LABEL_33;
    }

LABEL_37:
    v19 = MapsSuggestionsSetupShortcutForType(3);
    if (v11)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

LABEL_36:
  v20 = MapsSuggestionsSetupShortcutForType(2);
  if (!v19)
  {
    goto LABEL_37;
  }

LABEL_33:
  if (v11)
  {
LABEL_38:
    [v20 setIsHidden:{1, v29}];
  }

LABEL_39:
  if (v10)
  {
    [v19 setIsHidden:1];
  }

  if (!v16)
  {
    if (GEOConfigGetInteger() == 1)
    {
      [v20 setIsHidden:1];
      [v19 setIsHidden:1];
    }

    if (GEOConfigGetInteger() == 2)
    {
      [v20 setIsHidden:0];
      [v19 setIsHidden:0];
    }
  }

  v25 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v40[0] = v20;
    v40[1] = v19;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v26;
    _os_log_impl(&dword_1C5126000, v25, OS_LOG_TYPE_DEBUG, "Placeholders: %@", &buf, 0xCu);
  }

  *&buf = v20;
  *(&buf + 1) = v19;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&buf count:2];

  return v27;
}

- (uint64_t)_mergeShortcuts:(void *)shortcuts toMeCardAndCallHandler:
{
  v145 = *MEMORY[0x1E69E9840];
  v86 = a2;
  shortcutsCopy = shortcuts;
  selfCopy = self;
  v85 = shortcutsCopy;
  if (!self)
  {
    goto LABEL_38;
  }

  if (!shortcutsCopy)
  {
    v23 = GEOFindOrCreateLog();
    [MapsSuggestionsShortcutManager _mergeShortcuts:v23 toMeCardAndCallHandler:?];
LABEL_38:
    v24 = 0;
    goto LABEL_152;
  }

  v6 = self[1];
  dispatch_assert_queue_V2(v6);

  objc_initWeak(&location, self);
  v7 = self[10];
  v102 = v86;
  v8 = isAuthorizedToUseContacts();
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  shortcutsForAll = [v7 shortcutsForAll];
  v10 = 0;
  v11 = 0;
  v12 = [shortcutsForAll countByEnumeratingWithState:&v139 objects:v143 count:16];
  if (v12)
  {
    v13 = *v140;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v140 != v13)
        {
          objc_enumerationMutation(shortcutsForAll);
        }

        v15 = *(*(&v139 + 1) + 8 * i);
        if ([v15 type] == 2)
        {
          v11 = 1;
        }

        else
        {
          v10 |= [v15 type] == 3;
        }
      }

      v12 = [shortcutsForAll countByEnumeratingWithState:&v139 objects:v143 count:16];
    }

    while (v12);
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  obj = v102;
  v16 = [obj countByEnumeratingWithState:&v125 objects:&v135 count:16];
  if (!v16)
  {

    v17 = 0;
    goto LABEL_40;
  }

  v17 = 0;
  v18 = 0;
  v19 = *v126;
  do
  {
    for (j = 0; j != v16; ++j)
    {
      if (*v126 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v125 + 1) + 8 * j);
      if ([v21 type] == 2)
      {
        if (!v18)
        {
          if ([v21 isSetupPlaceholder])
          {
            v18 = v21;
LABEL_26:
            v22 = v21;
            continue;
          }

          v18 = 0;
        }

        v11 = 1;
      }

      else
      {
        if ([v21 type] != 3)
        {
          continue;
        }

        if (!v17)
        {
          if ([v21 isSetupPlaceholder])
          {
            v17 = v21;
            goto LABEL_26;
          }

          v17 = 0;
        }

        v10 = 1;
      }
    }

    v16 = [obj countByEnumeratingWithState:&v125 objects:&v135 count:16];
  }

  while (v16);

  if (v18)
  {
    if (v17)
    {
      goto LABEL_35;
    }

LABEL_41:
    v17 = MapsSuggestionsSetupShortcutForType(3);
    if (v11)
    {
      goto LABEL_42;
    }

    goto LABEL_43;
  }

LABEL_40:
  v18 = MapsSuggestionsSetupShortcutForType(2);
  if (!v17)
  {
    goto LABEL_41;
  }

LABEL_35:
  if (v11)
  {
LABEL_42:
    [v18 setIsHidden:1];
  }

LABEL_43:
  if (v10)
  {
    [v17 setIsHidden:1];
  }

  if (!v8)
  {
    if (GEOConfigGetInteger() == 1)
    {
      [v18 setIsHidden:1];
      [v17 setIsHidden:1];
    }

    if (GEOConfigGetInteger() == 2)
    {
      [v18 setIsHidden:0];
      [v17 setIsHidden:0];
    }
  }

  v25 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v134[0] = v18;
    v134[1] = v17;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:2];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v26;
    _os_log_impl(&dword_1C5126000, v25, OS_LOG_TYPE_DEBUG, "Placeholders: %@", &buf, 0xCu);
  }

  *&buf = v18;
  *(&buf + 1) = v17;
  v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&buf count:2];

  shortcutsForAll2 = [selfCopy[10] shortcutsForAll];
  v27 = [v84 count];
  v28 = [shortcutsForAll2 count];
  originatingAddressString3 = [obj count];
  v93 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:&originatingAddressString3[v28 + v27]];
  v94 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(shortcutsForAll2, "count")}];
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v90 = v84;
  v30 = [v90 countByEnumeratingWithState:&v120 objects:v132 count:16];
  if (v30)
  {
    originatingAddressString3 = *v121;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v121 != originatingAddressString3)
        {
          objc_enumerationMutation(v90);
        }

        v32 = *(*(&v120 + 1) + 8 * k);
        if (([v32 isHidden] & 1) == 0)
        {
          [v93 addObject:v32];
        }
      }

      v30 = [v90 countByEnumeratingWithState:&v120 objects:v132 count:16];
    }

    while (v30);
  }

  [selfCopy[8] removeAllObjects];
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v89 = shortcutsForAll2;
  v92 = [v89 countByEnumeratingWithState:&v116 objects:v131 count:16];
  if (v92)
  {
    v91 = *v117;
    do
    {
      for (m = 0; m != v92; ++m)
      {
        if (*v117 != v91)
        {
          objc_enumerationMutation(v89);
        }

        v33 = *(*(&v116 + 1) + 8 * m);
        v34 = obj;
        v139 = 0u;
        v140 = 0u;
        v141 = 0u;
        v142 = 0u;
        v97 = v34;
        v35 = [v97 countByEnumeratingWithState:&v139 objects:v143 count:16];
        if (v35)
        {
          v98 = *v140;
          while (2)
          {
            for (n = 0; n != v35; ++n)
            {
              if (*v140 != v98)
              {
                objc_enumerationMutation(v97);
              }

              v37 = *(*(&v139 + 1) + 8 * n);
              originatingAddressString = [v37 originatingAddressString];
              if (originatingAddressString)
              {
                originatingAddressString2 = [v37 originatingAddressString];
                originatingAddressString3 = [v33 originatingAddressString];
                if ([originatingAddressString2 isEqualToString:originatingAddressString3])
                {

LABEL_86:
                  identifier = [v37 identifier];
                  [v33 setIdentifier:identifier];

                  customName = [v37 customName];
                  [v33 setCustomName:customName];

                  geoMapItem = [v37 geoMapItem];
                  [v33 setGeoMapItem:geoMapItem];

                  [v33 setIsHidden:{objc_msgSend(v37, "isHidden")}];
                  v127 = 0u;
                  v128 = 0u;
                  v125 = 0u;
                  v126 = 0u;
                  contacts = [v37 contacts];
                  v48 = [contacts countByEnumeratingWithState:&v125 objects:&v135 count:16];
                  if (v48)
                  {
                    v49 = *v126;
                    do
                    {
                      for (ii = 0; ii != v48; ++ii)
                      {
                        if (*v126 != v49)
                        {
                          objc_enumerationMutation(contacts);
                        }

                        [v33 addContact:*(*(&v125 + 1) + 8 * ii)];
                      }

                      v48 = [contacts countByEnumeratingWithState:&v125 objects:&v135 count:16];
                    }

                    while (v48);
                  }

                  goto LABEL_94;
                }
              }

              identifier2 = [v37 identifier];
              v103 = originatingAddressString3;
              if (identifier2)
              {
                identifier3 = [v37 identifier];
                identifier4 = [v33 identifier];
                v42 = [identifier3 isEqualToString:identifier4];

                if (originatingAddressString)
                {

                  if (v42)
                  {
                    goto LABEL_86;
                  }
                }

                else if (v42)
                {
                  goto LABEL_86;
                }
              }

              else if (originatingAddressString)
              {
              }

              originatingAddressString3 = v103;
            }

            v35 = [v97 countByEnumeratingWithState:&v139 objects:v143 count:16];
            if (v35)
            {
              continue;
            }

            break;
          }
        }

        [v33 setDerivedFromMeCard:1];
        v43 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          *v143 = 138412290;
          v144 = v33;
          _os_log_impl(&dword_1C5126000, v43, OS_LOG_TYPE_DEBUG, "Found a brand new Shortcut in the raw MeCard: %@", v143, 0xCu);
        }

LABEL_94:
        originatingAddressString3 = [v33 identifier];
        if (originatingAddressString3)
        {
          if (([v94 containsObject:originatingAddressString3] & 1) == 0)
          {
            [v94 addObject:originatingAddressString3];
            isHidden = [v33 isHidden];
            v52 = v93;
            if (isHidden)
            {
              v52 = selfCopy[8];
            }

            [v52 addObject:v33];
          }
        }

        else
        {
          v53 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            *v143 = 138412290;
            v144 = v33;
            _os_log_impl(&dword_1C5126000, v53, OS_LOG_TYPE_DEBUG, "Found Shortcut in MeCard without identifier: %@", v143, 0xCu);
          }
        }
      }

      v92 = [v89 countByEnumeratingWithState:&v116 objects:v131 count:16];
    }

    while (v92);
  }

  v114 = 0u;
  v115 = 0u;
  v113 = 0u;
  v112 = 0u;
  v54 = obj;
  v55 = [v54 countByEnumeratingWithState:&v112 objects:v130 count:16];
  if (v55)
  {
    v56 = *v113;
    do
    {
      for (jj = 0; jj != v55; ++jj)
      {
        if (*v113 != v56)
        {
          objc_enumerationMutation(v54);
        }

        v58 = *(*(&v112 + 1) + 8 * jj);
        identifier5 = [v58 identifier];
        if (identifier5)
        {
          if (([v94 containsObject:identifier5] & 1) == 0 && (objc_msgSend(v58, "isSetupPlaceholder") & 1) == 0)
          {
            [v94 addObject:identifier5];
            if (([v58 isHidden] & 1) == 0)
            {
              [v93 addObject:v58];
            }
          }
        }

        else
        {
          v60 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
          {
            *v143 = 138412290;
            v144 = v58;
            _os_log_impl(&dword_1C5126000, v60, OS_LOG_TYPE_DEBUG, "Found Shortcut in storage without identifier: %@", v143, 0xCu);
          }
        }
      }

      v55 = [v54 countByEnumeratingWithState:&v112 objects:v130 count:16];
    }

    while (v55);
  }

  v99 = v93;
  v61 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v99, "count")}];
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v101 = v99;
  v62 = [v101 countByEnumeratingWithState:&v135 objects:v143 count:16];
  if (v62)
  {
    v63 = *v136;
    do
    {
      for (kk = 0; kk != v62; ++kk)
      {
        if (*v136 != v63)
        {
          objc_enumerationMutation(v101);
        }

        v65 = [*(*(&v135 + 1) + 8 * kk) copy];
        identifier6 = [v65 identifier];
        if (!identifier6 && ([v65 isBackedPlaceholder] & 1) == 0)
        {
          if ([v65 isSetupPlaceholder])
          {
            goto LABEL_131;
          }

          v67 = objc_alloc_init(MEMORY[0x1E696AFB0]);
          uUIDString = [v67 UUIDString];
          [v65 setIdentifier:uUIDString];

          identifier6 = GEOFindOrCreateLog();
          if (os_log_type_enabled(identifier6, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(v139) = 138412290;
            *(&v139 + 4) = v65;
            _os_log_impl(&dword_1C5126000, identifier6, OS_LOG_TYPE_DEBUG, "Set fake identifier on Shortcut: %@", &v139, 0xCu);
          }
        }

LABEL_131:
        v69 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v139) = 138412290;
          *(&v139 + 4) = v65;
          _os_log_impl(&dword_1C5126000, v69, OS_LOG_TYPE_DEBUG, "Will store Shortcut: %@", &v139, 0xCu);
        }

        [v61 addObject:v65];
      }

      v62 = [v101 countByEnumeratingWithState:&v135 objects:v143 count:16];
    }

    while (v62);
  }

  v70 = [v61 copy];
  v71 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
  {
    *v143 = 138412290;
    v144 = v70;
    _os_log_impl(&dword_1C5126000, v71, OS_LOG_TYPE_DEBUG, "Shortcuts to store (unclean): %@", v143, 0xCu);
  }

  v72 = v70;
  v73 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v72, "count")}];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v74 = v72;
  v75 = [v74 countByEnumeratingWithState:&v108 objects:v129 count:16];
  if (v75)
  {
    v76 = *v109;
    do
    {
      for (mm = 0; mm != v75; ++mm)
      {
        if (*v109 != v76)
        {
          objc_enumerationMutation(v74);
        }

        v78 = *(*(&v108 + 1) + 8 * mm);
        if (([v54 containsObject:v78] & 1) == 0 && (objc_msgSend(v78, "isSetupPlaceholder") & 1) == 0)
        {
          [v73 addObject:v78];
        }
      }

      v75 = [v74 countByEnumeratingWithState:&v108 objects:v129 count:16];
    }

    while (v75);
  }

  v79 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
  {
    *v143 = 138412290;
    v144 = v101;
    _os_log_impl(&dword_1C5126000, v79, OS_LOG_TYPE_DEBUG, "All known Shortcuts: %@", v143, 0xCu);
  }

  v80 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
  {
    *v143 = 138412290;
    v144 = v74;
    _os_log_impl(&dword_1C5126000, v80, OS_LOG_TYPE_DEBUG, "Storing changed Shortcuts: %@", v143, 0xCu);
  }

  v81 = selfCopy[3];
  v104[0] = MEMORY[0x1E69E9820];
  v104[1] = 3221225472;
  v104[2] = __73__MapsSuggestionsShortcutManager__mergeShortcuts_toMeCardAndCallHandler___block_invoke;
  v104[3] = &unk_1E81F61E0;
  objc_copyWeak(&v107, &location);
  v82 = v101;
  v105 = v82;
  v106 = v85;
  [v81 addOrUpdateShortcuts:v73 handler:v104];

  objc_destroyWeak(&v107);
  objc_destroyWeak(&location);
  v24 = 1;
LABEL_152:

  return v24;
}

void __73__MapsSuggestionsShortcutManager__mergeShortcuts_toMeCardAndCallHandler___block_invoke(id *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-17 reason:@"Could not write to Storage!"];
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "Error during addOrUpdateShortcuts: %@", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __73__MapsSuggestionsShortcutManager__mergeShortcuts_toMeCardAndCallHandler___block_invoke_183;
    v7[3] = &unk_1E81F61B8;
    v8 = a1[4];
    v10 = a1[5];
    v9 = v3;
    MSg::Queue::async<MapsSuggestionsShortcutManager>(WeakRetained + 1, WeakRetained, v7);

    v6 = v8;
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v12 = "MapsSuggestionsShortcutManager.mm";
      v13 = 1026;
      v14 = 419;
      v15 = 2082;
      v16 = "[MapsSuggestionsShortcutManager _mergeShortcuts:toMeCardAndCallHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: outerStrongSelfUpdate went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __73__MapsSuggestionsShortcutManager__mergeShortcuts_toMeCardAndCallHandler___block_invoke_183(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3[12] copy];
  v5 = [v3[8] mutableCopy];
  [v5 addObjectsFromArray:*(a1 + 32)];
  v6 = [MapsSuggestionsMeCard alloc];
  v7 = [v3[10] shortcutsPerCNPostalAddress];
  v8 = -[MapsSuggestionsMeCard initWithShortcuts:perCNPostalAddress:hasCorrected:hasGeocoded:](v6, "initWithShortcuts:perCNPostalAddress:hasCorrected:hasGeocoded:", v5, v7, [*(a1 + 32) count] != 0, objc_msgSend(v3[10], "hasGeocoded"));
  v9 = v3[12];
  v3[12] = v8;

  v10 = [v3[12] copy];
  v11 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "Calling handler with merged Shortcuts: %@", buf, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
  if (([v10 isEqualToMeCard:v4] & 1) == 0)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "New MeCard detected: %@", buf, 0xCu);
    }

    v13 = v3[11];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__MapsSuggestionsShortcutManager__mergeShortcuts_toMeCardAndCallHandler___block_invoke_185;
    v14[3] = &unk_1E81F5640;
    v15 = v3;
    v16 = v10;
    [v13 callBlock:v14];
  }
}

void __73__MapsSuggestionsShortcutManager__mergeShortcuts_toMeCardAndCallHandler___block_invoke_185(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [v3 uniqueName];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Calling observer '%@'", &v6, 0xCu);
  }

  [v3 meCardReader:*(a1 + 32) didUpdateMeCard:*(a1 + 40)];
}

- (uint64_t)__loadCorrectedMeCardWithHandler:(uint64_t)handler
{
  v3 = a2;
  v4 = v3;
  if (!handler)
  {
    goto LABEL_6;
  }

  if (!v3)
  {
    v12 = GEOFindOrCreateLog();
    [MapsSuggestionsShortcutManager __loadCorrectedMeCardWithHandler:v12];
LABEL_6:
    v10 = 0;
    goto LABEL_4;
  }

  dispatch_assert_queue_V2(*(handler + 8));
  objc_initWeak(&location, handler);
  v5 = *(handler + 8);
  v6 = *(handler + 16);
  v7 = *(handler + 48);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3321888768;
  v13[2] = __67__MapsSuggestionsShortcutManager___loadCorrectedMeCardWithHandler___block_invoke;
  v13[3] = &unk_1F4443B88;
  v8 = v5;
  v16 = v8;
  v9 = v6;
  v17 = v9;
  v13[4] = handler;
  objc_copyWeak(&v15, &location);
  v14 = v4;
  [v7 readMeCardWithHandler:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  v10 = 1;
LABEL_4:

  return v10;
}

void __67__MapsSuggestionsShortcutManager___loadCorrectedMeCardWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "Error loading from MeCard: %@", buf, 0xCu);
    }
  }

  v9 = *(a1 + 32);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__MapsSuggestionsShortcutManager___loadCorrectedMeCardWithHandler___block_invoke_189;
  v18[3] = &unk_1E81F6208;
  v10 = v5;
  v19 = v10;
  MSg::Queue::async<MapsSuggestionsShortcutManager>((a1 + 56), v9, v18);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v13 = *(WeakRetained + 3);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__MapsSuggestionsShortcutManager___loadCorrectedMeCardWithHandler___block_invoke_190;
    v15[3] = &unk_1E81F6258;
    v16 = *(a1 + 40);
    objc_copyWeak(&v17, (a1 + 48));
    [v13 loadAllShortcutsWithHandler:v15];
    objc_destroyWeak(&v17);
    v14 = v16;
  }

  else
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v21 = "MapsSuggestionsShortcutManager.mm";
      v22 = 1026;
      v23 = 476;
      v24 = 2082;
      v25 = "[MapsSuggestionsShortcutManager __loadCorrectedMeCardWithHandler:]_block_invoke_2";
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelfMeCard went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __67__MapsSuggestionsShortcutManager___loadCorrectedMeCardWithHandler___block_invoke_189(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v5[10];
  v5[10] = v3;
}

void __67__MapsSuggestionsShortcutManager___loadCorrectedMeCardWithHandler___block_invoke_190(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "Error loading from Storage (MapsSync): %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "Loaded Shortcuts from storage: %@", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__MapsSuggestionsShortcutManager___loadCorrectedMeCardWithHandler___block_invoke_191;
      block[3] = &unk_1E81F5B00;
      objc_copyWeak(&v15, (a1 + 40));
      v13 = v5;
      v14 = *(a1 + 32);
      dispatch_async(WeakRetained[1], block);

      objc_destroyWeak(&v15);
    }

    else
    {
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v17 = "MapsSuggestionsShortcutManager.mm";
        v18 = 1026;
        v19 = 490;
        v20 = 2082;
        v21 = "[MapsSuggestionsShortcutManager __loadCorrectedMeCardWithHandler:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelfLoadStorage went away in %{public}s", buf, 0x1Cu);
      }
    }
  }
}

void __67__MapsSuggestionsShortcutManager___loadCorrectedMeCardWithHandler___block_invoke_191(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67__MapsSuggestionsShortcutManager___loadCorrectedMeCardWithHandler___block_invoke_192;
    v6[3] = &unk_1E81F6230;
    v6[4] = WeakRetained;
    v4 = [v3 MSg_copyIf:v6];
    [(MapsSuggestionsShortcutManager *)WeakRetained _mergeShortcuts:v4 toMeCardAndCallHandler:*(a1 + 40)];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v8 = "MapsSuggestionsShortcutManager.mm";
      v9 = 1026;
      v10 = 501;
      v11 = 2082;
      v12 = "[MapsSuggestionsShortcutManager __loadCorrectedMeCardWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelfMerge went away in %{public}s", buf, 0x1Cu);
    }
  }
}

uint64_t __67__MapsSuggestionsShortcutManager___loadCorrectedMeCardWithHandler___block_invoke_192(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 type];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v5 = 1;
      goto LABEL_17;
    }

    if (v4 != 2)
    {
      v5 = 0;
      goto LABEL_17;
    }

    v6 = *(*(a1 + 32) + 104);
    v7 = [v3 originatingAddressString];
    if ([v6 containsObject:v7])
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  if (v4 == 3)
  {
    v8 = *(*(a1 + 32) + 112);
    v7 = [v3 originatingAddressString];
    if ([v8 containsObject:v7])
    {
LABEL_12:
      v5 = 1;
LABEL_16:

      goto LABEL_17;
    }

LABEL_15:
    v5 = [v3 isSetupPlaceholder];
    goto LABEL_16;
  }

  if (v4 == 5)
  {
    v9 = *(*(a1 + 32) + 120);
    v7 = [v3 originatingAddressString];
    if ([v9 containsObject:v7])
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v5 = v4 == 6;
LABEL_17:

  return v5;
}

- (uint64_t)_loadCorrectedMeCardWithHandler:(uint64_t)handler
{
  v3 = a2;
  v4 = v3;
  if (!handler)
  {
    goto LABEL_6;
  }

  if (!v3)
  {
    v12 = GEOFindOrCreateLog();
    [MapsSuggestionsShortcutManager _loadCorrectedMeCardWithHandler:v12];
LABEL_6:
    v10 = 0;
    goto LABEL_4;
  }

  dispatch_assert_queue_V2(*(handler + 8));
  objc_initWeak(&location, handler);
  v5 = *(handler + 8);
  v6 = *(handler + 16);
  v7 = *(handler + 48);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3321888768;
  v13[2] = __66__MapsSuggestionsShortcutManager__loadCorrectedMeCardWithHandler___block_invoke;
  v13[3] = &unk_1F4443BC0;
  v8 = v5;
  v16 = v8;
  v9 = v6;
  v17 = v9;
  objc_copyWeak(&v15, &location);
  v14 = v4;
  v10 = [v7 readMeCardAddressStringsWithHandler:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
LABEL_4:

  return v10;
}

void __66__MapsSuggestionsShortcutManager__loadCorrectedMeCardWithHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v12;
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "Error reading raw address strings: %@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MapsSuggestionsShortcutManager__loadCorrectedMeCardWithHandler___block_invoke_195;
  block[3] = &unk_1E81F6280;
  objc_copyWeak(&v23, (a1 + 40));
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = *(a1 + 32);
  v14 = *(a1 + 48);
  v15 = v11;
  v16 = v10;
  v17 = v9;
  dispatch_async(v14, block);

  objc_destroyWeak(&v23);
}

void __66__MapsSuggestionsShortcutManager__loadCorrectedMeCardWithHandler___block_invoke_195(id *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (WeakRetained)
  {
    v3 = [a1[4] copy];
    v4 = WeakRetained[13];
    WeakRetained[13] = v3;

    v5 = [a1[5] copy];
    v6 = WeakRetained[14];
    WeakRetained[14] = v5;

    v7 = [a1[6] copy];
    v8 = WeakRetained[15];
    WeakRetained[15] = v7;

    [(MapsSuggestionsShortcutManager *)WeakRetained __loadCorrectedMeCardWithHandler:?];
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "MapsSuggestionsShortcutManager.mm";
      v12 = 1026;
      v13 = 549;
      v14 = 2082;
      v15 = "[MapsSuggestionsShortcutManager _loadCorrectedMeCardWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v10, 0x1Cu);
    }
  }
}

- (char)loadAllShortcutsWithHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__MapsSuggestionsShortcutManager_loadAllShortcutsWithHandler___block_invoke;
    v9[3] = &unk_1E81F6348;
    v9[4] = self;
    v10 = handlerCopy;
    MSg::Queue::async<MapsSuggestionsShortcutManager>(&self->_queue, self, v9);

    v6 = 1;
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v13 = 1024;
      v14 = 561;
      v15 = 2082;
      v16 = "[MapsSuggestionsShortcutManager loadAllShortcutsWithHandler:]";
      v17 = 2082;
      v18 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

void __62__MapsSuggestionsShortcutManager_loadAllShortcutsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = GEOFindOrCreateLog();
  __62__MapsSuggestionsShortcutManager_loadAllShortcutsWithHandler___block_invoke_cold_1(v4);

  if ([(MapsSuggestionsShortcutManager *)*(a1 + 32) usingMyPlaces])
  {
    v5 = v3[7];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __62__MapsSuggestionsShortcutManager_loadAllShortcutsWithHandler___block_invoke_198;
    v22[3] = &unk_1E81F62D0;
    v6 = &v24;
    objc_copyWeak(&v24, &location);
    v8 = *(a1 + 40);
    v7 = (a1 + 40);
    v23 = v8;
    v9 = &v23;
    if (![v5 shortcutsFromFavoritesWithHandler:v22])
    {
      v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MapsSuggestionError" code:-1 userInfo:&unk_1F44715B8];
      v11 = v21;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v12 = __62__MapsSuggestionsShortcutManager_loadAllShortcutsWithHandler___block_invoke_2;
LABEL_6:
      v11[2] = v12;
      v11[3] = &unk_1E81F62F8;
      v14 = *v7;
      v11[4] = v10;
      v11[5] = v14;
      v15 = v3[1];
      v16 = v10;
      dispatch_async(v15, v11);
    }
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __62__MapsSuggestionsShortcutManager_loadAllShortcutsWithHandler___block_invoke_3;
    v18[3] = &unk_1E81F6320;
    v6 = &v20;
    objc_copyWeak(&v20, &location);
    v13 = *(a1 + 40);
    v7 = (a1 + 40);
    v19 = v13;
    v9 = &v19;
    if (![(MapsSuggestionsShortcutManager *)v3 _loadCorrectedMeCardWithHandler:v18])
    {
      v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MapsSuggestionError" code:-1 userInfo:&unk_1F44715E0];
      v11 = v17;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v12 = __62__MapsSuggestionsShortcutManager_loadAllShortcutsWithHandler___block_invoke_2_218;
      goto LABEL_6;
    }
  }

  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void __62__MapsSuggestionsShortcutManager_loadAllShortcutsWithHandler___block_invoke_198(uint64_t a1, void *a2, void *a3)
{
  *&v17[13] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v15 = v5;
      v16 = 2112;
      *v17 = v6;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "Loaded new Shortcuts: %@ (%@)", buf, 0x16u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__MapsSuggestionsShortcutManager_loadAllShortcutsWithHandler___block_invoke_199;
    block[3] = &unk_1E81F62A8;
    v13 = *(a1 + 32);
    v11 = v5;
    v12 = v6;
    dispatch_async(WeakRetained[1], block);

    v9 = v13;
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v15 = "MapsSuggestionsShortcutManager.mm";
      v16 = 1026;
      *v17 = 567;
      v17[2] = 2082;
      *&v17[3] = "[MapsSuggestionsShortcutManager loadAllShortcutsWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __62__MapsSuggestionsShortcutManager_loadAllShortcutsWithHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  *&v18[13] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [v5 shortcutsForAll];
      *buf = 138412546;
      v16 = v9;
      v17 = 2112;
      *v18 = v6;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "Loaded Shortcuts: %@ (%@)", buf, 0x16u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__MapsSuggestionsShortcutManager_loadAllShortcutsWithHandler___block_invoke_210;
    block[3] = &unk_1E81F62A8;
    v14 = *(a1 + 32);
    v12 = v5;
    v13 = v6;
    dispatch_async(WeakRetained[1], block);

    v10 = v14;
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "MapsSuggestionsShortcutManager.mm";
      v17 = 1026;
      *v18 = 581;
      v18[2] = 2082;
      *&v18[3] = "[MapsSuggestionsShortcutManager loadAllShortcutsWithHandler:]_block_invoke_3";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __62__MapsSuggestionsShortcutManager_loadAllShortcutsWithHandler___block_invoke_210(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) shortcutsForAll];
  (*(v1 + 16))(v1);
}

- (char)addOrUpdateShortcuts:(id)shortcuts handler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  shortcutsCopy = shortcuts;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v19 = 1024;
      v20 = 602;
      v21 = 2082;
      v22 = "[MapsSuggestionsShortcutManager addOrUpdateShortcuts:handler:]";
      v23 = 2082;
      v24 = "nil == (handler)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_10:
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, v12, buf, 0x26u);
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  if (!shortcutsCopy)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v19 = 1024;
      v20 = 603;
      v21 = 2082;
      v22 = "[MapsSuggestionsShortcutManager addOrUpdateShortcuts:handler:]";
      v23 = 2082;
      v24 = "nil == (shortcuts)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires shortcuts";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v18 = shortcutsCopy;
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "Storing Shortcuts: %@", buf, 0xCu);
  }

  v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:shortcutsCopy copyItems:1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__MapsSuggestionsShortcutManager_addOrUpdateShortcuts_handler___block_invoke;
  v14[3] = &unk_1E81F6348;
  v15 = v9;
  v16 = handlerCopy;
  v10 = v9;
  MSg::Queue::async<MapsSuggestionsShortcutManager>(&self->_queue, self, v14);

  v11 = 1;
LABEL_12:

  return v11;
}

void __63__MapsSuggestionsShortcutManager_addOrUpdateShortcuts_handler___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v17 = a2;
  v2 = *(v16 + 32);
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v18 + 1) + 8 * v7) copy];
        v9 = [v8 identifier];
        if (v9 || ([v8 isBackedPlaceholder] & 1) != 0)
        {
          goto LABEL_8;
        }

        if (([v8 isSetupPlaceholder] & 1) == 0)
        {
          v11 = objc_alloc_init(MEMORY[0x1E696AFB0]);
          v12 = [v11 UUIDString];
          [v8 setIdentifier:v12];

          v9 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v23 = v8;
            _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "Set fake identifier on Shortcut: %@", buf, 0xCu);
          }

LABEL_8:
        }

        v10 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v23 = v8;
          _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "Will store Shortcut: %@", buf, 0xCu);
        }

        [v8 setDerivedFromMeCard:0];
        [v3 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v13 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
      v5 = v13;
    }

    while (v13);
  }

  v14 = [v3 copy];
  v15 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *v24 = 138412290;
    v25 = v14;
    _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_DEBUG, "Shortcuts to store (cleaned): %@", v24, 0xCu);
  }

  [v17[3] addOrUpdateShortcuts:v14 handler:*(v16 + 40)];
}

- (char)removeShortcuts:(id)shortcuts handler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  shortcutsCopy = shortcuts;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v20 = 1024;
      v21 = 623;
      v22 = 2082;
      v23 = "[MapsSuggestionsShortcutManager removeShortcuts:handler:]";
      v24 = 2082;
      v25 = "nil == (handler)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler";
LABEL_8:
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, v12, buf, 0x26u);
    }

LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  if (!shortcutsCopy)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v20 = 1024;
      v21 = 624;
      v22 = 2082;
      v23 = "[MapsSuggestionsShortcutManager removeShortcuts:handler:]";
      v24 = 2082;
      v25 = "nil == (shortcuts)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires shortcuts";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v8 = self->_storage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MapsSuggestionsShortcutManager_removeShortcuts_handler___block_invoke;
  block[3] = &unk_1E81F5810;
  v15 = shortcutsCopy;
  v16 = v8;
  v17 = handlerCopy;
  innerQueue = self->_queue._innerQueue;
  v10 = v8;
  dispatch_async(innerQueue, block);

  v11 = 1;
LABEL_10:

  return v11;
}

void __58__MapsSuggestionsShortcutManager_removeShortcuts_handler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = a1;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 type];
        if (v9 <= 6)
        {
          if (((1 << v9) & 0x2C) != 0)
          {
            [v8 setIsHidden:1];
            v11 = v2;
LABEL_11:
            [v11 addObject:v8];
            continue;
          }

          v10 = 1 << v9;
          v11 = v3;
          if ((v10 & 0x43) != 0)
          {
            goto LABEL_11;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    [*(v12 + 40) addOrUpdateShortcuts:v2 handler:*(v12 + 48)];
  }

  if ([v3 count])
  {
    [*(v12 + 40) removeShortcuts:v3 handler:*(v12 + 48)];
  }
}

- (char)moveShortcut:(id)shortcut toIndex:(int64_t)index withSnapshot:(id)snapshot handler:(id)handler
{
  v49 = *MEMORY[0x1E69E9840];
  shortcutCopy = shortcut;
  snapshotCopy = snapshot;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v42 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v43 = 1024;
      v44 = 663;
      v45 = 2082;
      v46 = "[MapsSuggestionsShortcutManager moveShortcut:toIndex:withSnapshot:handler:]";
      v47 = 2082;
      v48 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    goto LABEL_16;
  }

  if (!shortcutCopy)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v42 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v43 = 1024;
      v44 = 664;
      v45 = 2082;
      v46 = "[MapsSuggestionsShortcutManager moveShortcut:toIndex:withSnapshot:handler:]";
      v47 = 2082;
      v48 = "nil == (shortcut)";
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires shortcuts", buf, 0x26u);
    }

    goto LABEL_16;
  }

  if (index < 0)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v42 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v43 = 1024;
      v44 = 665;
      v45 = 2082;
      v46 = "[MapsSuggestionsShortcutManager moveShortcut:toIndex:withSnapshot:handler:]";
      v47 = 2082;
      v48 = "index < 0";
      _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires index >= 0", buf, 0x26u);
    }

LABEL_16:

    v17 = 0;
    goto LABEL_31;
  }

  for (i = 0; i < [snapshotCopy count]; ++i)
  {
    v14 = [snapshotCopy objectAtIndexedSubscript:i];
    v15 = [v14 isEqualToShortcut:shortcutCopy];

    if (v15)
    {
      goto LABEL_18;
    }
  }

  i = -1;
LABEL_18:
  if (i == index)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__MapsSuggestionsShortcutManager_moveShortcut_toIndex_withSnapshot_handler___block_invoke;
    block[3] = &unk_1E81F56F8;
    v40 = handlerCopy;
    dispatch_async(self->_queue._innerQueue, block);
  }

  else if (i >= [snapshotCopy count])
  {
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __76__MapsSuggestionsShortcutManager_moveShortcut_toIndex_withSnapshot_handler___block_invoke_2;
    v37[3] = &unk_1E81F56F8;
    v38 = handlerCopy;
    dispatch_async(self->_queue._innerQueue, v37);
  }

  else
  {
    objc_initWeak(buf, self);
    if (index)
    {
      v18 = [snapshotCopy objectAtIndex:index - (i >= index)];
      type = [v18 type];
      if (type <= 5 && ((1 << type) & 0x2C) != 0)
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __76__MapsSuggestionsShortcutManager_moveShortcut_toIndex_withSnapshot_handler___block_invoke_223;
        v29[3] = &unk_1E81F5B00;
        v20 = &v32;
        objc_copyWeak(&v32, buf);
        v21 = &v30;
        v30 = shortcutCopy;
        v22 = &v31;
        v31 = handlerCopy;
        dispatch_async(self->_queue._innerQueue, v29);
      }

      else
      {
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __76__MapsSuggestionsShortcutManager_moveShortcut_toIndex_withSnapshot_handler___block_invoke_224;
        v24[3] = &unk_1E81F5B78;
        v20 = &v28;
        objc_copyWeak(&v28, buf);
        v25 = shortcutCopy;
        v26 = v18;
        v27 = handlerCopy;
        dispatch_async(self->_queue._innerQueue, v24);

        v21 = &v25;
        v22 = &v26;
      }

      objc_destroyWeak(v20);
    }

    else
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __76__MapsSuggestionsShortcutManager_moveShortcut_toIndex_withSnapshot_handler___block_invoke_3;
      v33[3] = &unk_1E81F5B00;
      objc_copyWeak(&v36, buf);
      v34 = shortcutCopy;
      v35 = handlerCopy;
      dispatch_async(self->_queue._innerQueue, v33);

      objc_destroyWeak(&v36);
    }

    objc_destroyWeak(buf);
  }

  v17 = 1;
LABEL_31:

  return v17;
}

void __76__MapsSuggestionsShortcutManager_moveShortcut_toIndex_withSnapshot_handler___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] moveShortcutToFront:*(a1 + 32) handler:*(a1 + 40)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsShortcutManager.mm";
      v7 = 1026;
      v8 = 698;
      v9 = 2082;
      v10 = "[MapsSuggestionsShortcutManager moveShortcut:toIndex:withSnapshot:handler:]_block_invoke_3";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void __76__MapsSuggestionsShortcutManager_moveShortcut_toIndex_withSnapshot_handler___block_invoke_223(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] moveShortcutToFront:*(a1 + 32) handler:*(a1 + 40)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsShortcutManager.mm";
      v7 = 1026;
      v8 = 717;
      v9 = 2082;
      v10 = "[MapsSuggestionsShortcutManager moveShortcut:toIndex:withSnapshot:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void __76__MapsSuggestionsShortcutManager_moveShortcut_toIndex_withSnapshot_handler___block_invoke_224(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] moveShortcut:*(a1 + 32) afterShortcut:*(a1 + 40) handler:*(a1 + 48)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsShortcutManager.mm";
      v7 = 1026;
      v8 = 725;
      v9 = 2082;
      v10 = "[MapsSuggestionsShortcutManager moveShortcut:toIndex:withSnapshot:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (char)moveShortcut:(id)shortcut beforeShortcut:(id)beforeShortcut handler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  shortcutCopy = shortcut;
  beforeShortcutCopy = beforeShortcut;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v20 = 1024;
      v21 = 735;
      v22 = 2082;
      v23 = "[MapsSuggestionsShortcutManager moveShortcut:beforeShortcut:handler:]";
      v24 = 2082;
      v25 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", location, 0x26u);
    }

    goto LABEL_13;
  }

  if (!shortcutCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v20 = 1024;
      v21 = 736;
      v22 = 2082;
      v23 = "[MapsSuggestionsShortcutManager moveShortcut:beforeShortcut:handler:]";
      v24 = 2082;
      v25 = "nil == (shortcut)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires shortcuts", location, 0x26u);
    }

    goto LABEL_13;
  }

  if (!beforeShortcutCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v20 = 1024;
      v21 = 737;
      v22 = 2082;
      v23 = "[MapsSuggestionsShortcutManager moveShortcut:beforeShortcut:handler:]";
      v24 = 2082;
      v25 = "nil == (other)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires shortcuts", location, 0x26u);
    }

LABEL_13:

    v11 = 0;
    goto LABEL_14;
  }

  objc_initWeak(location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__MapsSuggestionsShortcutManager_moveShortcut_beforeShortcut_handler___block_invoke;
  v14[3] = &unk_1E81F5B78;
  objc_copyWeak(&v18, location);
  v15 = shortcutCopy;
  v16 = beforeShortcutCopy;
  v17 = handlerCopy;
  dispatch_async(self->_queue._innerQueue, v14);

  objc_destroyWeak(&v18);
  objc_destroyWeak(location);
  v11 = 1;
LABEL_14:

  return v11;
}

void __70__MapsSuggestionsShortcutManager_moveShortcut_beforeShortcut_handler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] moveShortcut:*(a1 + 32) beforeShortcut:*(a1 + 40) handler:*(a1 + 48)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsShortcutManager.mm";
      v7 = 1026;
      v8 = 743;
      v9 = 2082;
      v10 = "[MapsSuggestionsShortcutManager moveShortcut:beforeShortcut:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (char)moveShortcut:(id)shortcut afterShortcut:(id)afterShortcut handler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  shortcutCopy = shortcut;
  afterShortcutCopy = afterShortcut;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v20 = 1024;
      v21 = 755;
      v22 = 2082;
      v23 = "[MapsSuggestionsShortcutManager moveShortcut:afterShortcut:handler:]";
      v24 = 2082;
      v25 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", location, 0x26u);
    }

    goto LABEL_13;
  }

  if (!shortcutCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v20 = 1024;
      v21 = 756;
      v22 = 2082;
      v23 = "[MapsSuggestionsShortcutManager moveShortcut:afterShortcut:handler:]";
      v24 = 2082;
      v25 = "nil == (shortcut)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires shortcuts", location, 0x26u);
    }

    goto LABEL_13;
  }

  if (!afterShortcutCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v20 = 1024;
      v21 = 757;
      v22 = 2082;
      v23 = "[MapsSuggestionsShortcutManager moveShortcut:afterShortcut:handler:]";
      v24 = 2082;
      v25 = "nil == (other)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires shortcuts", location, 0x26u);
    }

LABEL_13:

    v11 = 0;
    goto LABEL_14;
  }

  objc_initWeak(location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__MapsSuggestionsShortcutManager_moveShortcut_afterShortcut_handler___block_invoke;
  v14[3] = &unk_1E81F5B78;
  objc_copyWeak(&v18, location);
  v15 = shortcutCopy;
  v16 = afterShortcutCopy;
  v17 = handlerCopy;
  dispatch_async(self->_queue._innerQueue, v14);

  objc_destroyWeak(&v18);
  objc_destroyWeak(location);
  v11 = 1;
LABEL_14:

  return v11;
}

void __69__MapsSuggestionsShortcutManager_moveShortcut_afterShortcut_handler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] moveShortcut:*(a1 + 32) afterShortcut:*(a1 + 40) handler:*(a1 + 48)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsShortcutManager.mm";
      v7 = 1026;
      v8 = 763;
      v9 = 2082;
      v10 = "[MapsSuggestionsShortcutManager moveShortcut:afterShortcut:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (char)moveShortcutToFront:(id)front handler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  frontCopy = front;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v16 = 1024;
      v17 = 774;
      v18 = 2082;
      v19 = "[MapsSuggestionsShortcutManager moveShortcutToFront:handler:]";
      v20 = 2082;
      v21 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", location, 0x26u);
    }

    goto LABEL_9;
  }

  if (!frontCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v16 = 1024;
      v17 = 775;
      v18 = 2082;
      v19 = "[MapsSuggestionsShortcutManager moveShortcutToFront:handler:]";
      v20 = 2082;
      v21 = "nil == (shortcut)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires shortcuts", location, 0x26u);
    }

LABEL_9:

    v8 = 0;
    goto LABEL_10;
  }

  objc_initWeak(location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__MapsSuggestionsShortcutManager_moveShortcutToFront_handler___block_invoke;
  block[3] = &unk_1E81F5B00;
  objc_copyWeak(&v14, location);
  v12 = frontCopy;
  v13 = handlerCopy;
  dispatch_async(self->_queue._innerQueue, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(location);
  v8 = 1;
LABEL_10:

  return v8;
}

void __62__MapsSuggestionsShortcutManager_moveShortcutToFront_handler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] moveShortcutToFront:*(a1 + 32) handler:*(a1 + 40)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsShortcutManager.mm";
      v7 = 1026;
      v8 = 781;
      v9 = 2082;
      v10 = "[MapsSuggestionsShortcutManager moveShortcutToFront:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (char)moveShortcutToBack:(id)back handler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  backCopy = back;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v16 = 1024;
      v17 = 792;
      v18 = 2082;
      v19 = "[MapsSuggestionsShortcutManager moveShortcutToBack:handler:]";
      v20 = 2082;
      v21 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", location, 0x26u);
    }

    goto LABEL_9;
  }

  if (!backCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v16 = 1024;
      v17 = 793;
      v18 = 2082;
      v19 = "[MapsSuggestionsShortcutManager moveShortcutToBack:handler:]";
      v20 = 2082;
      v21 = "nil == (shortcut)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires shortcuts", location, 0x26u);
    }

LABEL_9:

    v8 = 0;
    goto LABEL_10;
  }

  objc_initWeak(location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MapsSuggestionsShortcutManager_moveShortcutToBack_handler___block_invoke;
  block[3] = &unk_1E81F5B00;
  objc_copyWeak(&v14, location);
  v12 = backCopy;
  v13 = handlerCopy;
  dispatch_async(self->_queue._innerQueue, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(location);
  v8 = 1;
LABEL_10:

  return v8;
}

void __61__MapsSuggestionsShortcutManager_moveShortcutToBack_handler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] moveShortcutToBack:*(a1 + 32) handler:*(a1 + 40)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsShortcutManager.mm";
      v7 = 1026;
      v8 = 799;
      v9 = 2082;
      v10 = "[MapsSuggestionsShortcutManager moveShortcutToBack:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (char)proposeAdditionalShortcutsOfType:(int64_t)type handler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = NSStringFromMapsSuggestionsShortcutType(type);
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "proposeAdditionalShortcutsOfType:%@", buf, 0xCu);
    }

    if (+[MapsSuggestionsSiri isEnabled])
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __75__MapsSuggestionsShortcutManager_proposeAdditionalShortcutsOfType_handler___block_invoke;
      v15[3] = &unk_1E81F6398;
      v16 = handlerCopy;
      typeCopy = type;
      MSg::Queue::async<MapsSuggestionsShortcutManager>(&self->_queue, self, v15);
      v9 = 1;
      v10 = v16;
    }

    else
    {
      v11 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "User turned off Siri Suggestions for Maps. Showing nothing in proposed shortcuts", buf, 2u);
      }

      v12 = MEMORY[0x1E696ABC0];
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"User turned off Siri Suggestions for Maps"];
      v10 = [v12 GEOErrorWithCode:-8 reason:v13];

      (*(handlerCopy + 2))(handlerCopy, 0, v10);
      v9 = 1;
    }
  }

  else
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v20 = 1024;
      v21 = 898;
      v22 = 2082;
      v23 = "[MapsSuggestionsShortcutManager proposeAdditionalShortcutsOfType:handler:]";
      v24 = 2082;
      v25 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    v9 = 0;
  }

  return v9;
}

void __75__MapsSuggestionsShortcutManager_proposeAdditionalShortcutsOfType_handler___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3[8], "count")}];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3[8], "count")}];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v3[8];
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v26 + 1) + 8 * v9) copy];
        if ([v10 isSetupPlaceholder])
        {
          v11 = v5;
        }

        else
        {
          v11 = v4;
        }

        [v11 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__MapsSuggestionsShortcutManager_proposeAdditionalShortcutsOfType_handler___block_invoke_2;
  aBlock[3] = &unk_1E81F6370;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v24 = v12;
  v25 = v13;
  v14 = v4;
  v21 = v14;
  v15 = v5;
  v22 = v15;
  v16 = v3;
  v23 = v16;
  v17 = _Block_copy(aBlock);
  if (![v16[3] loadAllShortcutsWithHandler:v17])
  {
    v18 = *(a1 + 32);
    v19 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-12 reason:@"Could not call loadAllShortcutsWithHandler:"];
    (*(v18 + 16))(v18, 0, v19);
  }
}

void __75__MapsSuggestionsShortcutManager_proposeAdditionalShortcutsOfType_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v6;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "Error loading existing Shortcuts: %@", buf, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{2 * objc_msgSend(v5, "count")}];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v10)
    {
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          if (([v13 isHidden] & 1) == 0)
          {
            v14 = [v13 identifier];
            v15 = v14 == 0;

            if (!v15)
            {
              v16 = [v13 identifier];
              [v8 addObject:v16];
            }

            v17 = [v13 geoMapItem];
            v18 = MapsSuggestionsMapItemShortAddress();

            if (v18)
            {
              [v8 addObject:v18];
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v10);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__MapsSuggestionsShortcutManager_proposeAdditionalShortcutsOfType_handler___block_invoke_231;
    aBlock[3] = &unk_1E81F6370;
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    v29 = v19;
    v30 = v20;
    v21 = v8;
    v26 = v21;
    v27 = *(a1 + 32);
    v28 = *(a1 + 40);
    v22 = _Block_copy(aBlock);
    if (![*(*(a1 + 48) + 32) suggestShortcutsOfType:*(a1 + 64) handler:v22])
    {
      v23 = *(a1 + 56);
      v24 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-12 reason:@"Could not call suggestShortcutsOfType:handler:"];
      (*(v23 + 16))(v23, 0, v24);
    }
  }
}

void __75__MapsSuggestionsShortcutManager_proposeAdditionalShortcutsOfType_handler___block_invoke_231(void *a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v53 = v5;
  v54 = a3;
  if (v54)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v69 = v54;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "Error loading suggested Shortcuts: %@", buf, 0xCu);
    }

    v7 = v54;
    (*(a1[7] + 16))();
    goto LABEL_81;
  }

  context = objc_autoreleasePoolPush();
  v8 = a1[8];
  v52 = a1;
  v9 = a1[4];
  v10 = v5;
  v11 = v9;
  v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v61 objects:buf count:16];
  if (v12)
  {
    v13 = *v62;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v62 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v61 + 1) + 8 * i);
        if (!v8 || [*(*(&v61 + 1) + 8 * i) type] == v8)
        {
          v16 = [v15 identifier];
          if (v16 && [v11 containsObject:v16])
          {
            v17 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *v66 = 138412290;
              v67 = v15;
              v18 = v17;
              v19 = "Already had Shortcut (by ID): %@";
              goto LABEL_29;
            }
          }

          else if ([v15 type] != 6 && (objc_msgSend(v15, "geoMapItem"), v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 == 0, v20, v21))
          {
            v17 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *v66 = 138412290;
              v67 = v15;
              v18 = v17;
              v19 = "Shortcut had no MapItem: %@";
LABEL_29:
              _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_DEBUG, v19, v66, 0xCu);
            }
          }

          else
          {
            v22 = [v15 geoMapItem];
            v17 = MapsSuggestionsMapItemShortAddress();

            if (v17 && [v11 containsObject:v17])
            {
              v23 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                *v66 = 138412290;
                v67 = v15;
                _os_log_impl(&dword_1C5126000, v23, OS_LOG_TYPE_DEBUG, "Already had Shortcut (by address): %@", v66, 0xCu);
              }
            }

            else
            {
              [v57 addObject:v15];
              if (v16)
              {
                [v11 addObject:v16];
              }

              if (v17)
              {
                [v11 addObject:v17];
              }
            }
          }

          continue;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v61 objects:buf count:16];
    }

    while (v12);
  }

  v51 = [v57 copy];
  v55 = [v52[5] arrayByAddingObjectsFromArray:v51];
  if (GEOConfigGetBOOL())
  {
    v24 = [v52[6] arrayByAddingObjectsFromArray:v55];
  }

  else
  {
    v24 = v55;
  }

  v25 = v24;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v56 = v25;
  v26 = [v56 countByEnumeratingWithState:&v61 objects:buf count:16];
  if (v26)
  {
    v27 = *v62;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v62 != v27)
        {
          objc_enumerationMutation(v56);
        }

        if ([*(*(&v61 + 1) + 8 * j) type] == 6)
        {

          goto LABEL_77;
        }
      }

      v26 = [v56 countByEnumeratingWithState:&v61 objects:buf count:16];
    }

    while (v26);
  }

  v50 = [[MapsSuggestionsShortcut alloc] initWithType:6 geoMapItem:0 customName:@"NearbyTransit"];
  [(MapsSuggestionsShortcut *)v50 setIdentifier:@"NearbyTransit"];

  if (!v50)
  {
LABEL_77:
    v50 = 0;
    goto LABEL_78;
  }

  v65 = v50;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
  v30 = v52[8];
  v31 = v52[4];
  v32 = v29;
  v33 = v31;
  v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v32, "count", v32, context)}];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obja = v32;
  v34 = [obja countByEnumeratingWithState:&v61 objects:buf count:16];
  if (!v34)
  {
    goto LABEL_73;
  }

  v35 = *v62;
  do
  {
    for (k = 0; k != v34; ++k)
    {
      if (*v62 != v35)
      {
        objc_enumerationMutation(obja);
      }

      v37 = *(*(&v61 + 1) + 8 * k);
      if (!v30 || [*(*(&v61 + 1) + 8 * k) type] == v30)
      {
        v38 = [v37 identifier];
        if (v38 && [v33 containsObject:v38])
        {
          v39 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            *v66 = 138412290;
            v67 = v37;
            v40 = v39;
            v41 = "Already had Shortcut (by ID): %@";
            goto LABEL_69;
          }
        }

        else if ([v37 type] != 6 && (objc_msgSend(v37, "geoMapItem"), v42 = objc_claimAutoreleasedReturnValue(), v43 = v42 == 0, v42, v43))
        {
          v39 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            *v66 = 138412290;
            v67 = v37;
            v40 = v39;
            v41 = "Shortcut had no MapItem: %@";
LABEL_69:
            _os_log_impl(&dword_1C5126000, v40, OS_LOG_TYPE_DEBUG, v41, v66, 0xCu);
          }
        }

        else
        {
          v44 = [v37 geoMapItem];
          v39 = MapsSuggestionsMapItemShortAddress();

          if (v39 && [v33 containsObject:v39])
          {
            v45 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              *v66 = 138412290;
              v67 = v37;
              _os_log_impl(&dword_1C5126000, v45, OS_LOG_TYPE_DEBUG, "Already had Shortcut (by address): %@", v66, 0xCu);
            }
          }

          else
          {
            [v58 addObject:v37];
            if (v38)
            {
              [v33 addObject:v38];
            }

            if (v39)
            {
              [v33 addObject:v39];
            }
          }
        }

        continue;
      }
    }

    v34 = [obja countByEnumeratingWithState:&v61 objects:buf count:16];
  }

  while (v34);
LABEL_73:

  v46 = [v58 copy];
  if ([v46 count])
  {
    v47 = [v46 arrayByAddingObjectsFromArray:v56];

    v56 = v47;
  }

LABEL_78:
  v48 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v69 = v56;
    _os_log_impl(&dword_1C5126000, v48, OS_LOG_TYPE_DEBUG, "Proposing Shortcuts: %@", buf, 0xCu);
  }

  (*(v52[7] + 16))();
  v7 = 0;
  objc_autoreleasePoolPop(context);
LABEL_81:
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (void)meCardReader:(id)reader didUpdateMeCard:(id)card
{
  v15 = *MEMORY[0x1E69E9840];
  readerCopy = reader;
  cardCopy = card;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [readerCopy uniqueName];
    *buf = 138412290;
    v14 = uniqueName;
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "Received MeCard update from %@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__MapsSuggestionsShortcutManager_meCardReader_didUpdateMeCard___block_invoke;
  v11[3] = &unk_1E81F6208;
  v10 = cardCopy;
  v12 = v10;
  MSg::Queue::async<MapsSuggestionsShortcutManager>(&self->_queue, self, v11);
}

void __63__MapsSuggestionsShortcutManager_meCardReader_didUpdateMeCard___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v5[10];
  v5[10] = v3;

  [(MapsSuggestionsShortcutManager *)v5 _loadCorrectedMeCardWithHandler:?];
}

void __63__MapsSuggestionsShortcutManager_meCardReader_didUpdateMeCard___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "Contacts resulted in auto-reload: %@ / error: %@", &v7, 0x16u);
  }
}

- (void)mapsSync:(id)sync didChangeForContentType:(int64_t)type
{
  v11 = *MEMORY[0x1E69E9840];
  syncCopy = sync;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [syncCopy uniqueName];
    *buf = 138412290;
    v10 = uniqueName;
    _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "Received MapsSync update from %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__MapsSuggestionsShortcutManager_mapsSync_didChangeForContentType___block_invoke;
  v8[3] = &unk_1E81F6208;
  v8[4] = self;
  MSg::Queue::async<MapsSuggestionsShortcutManager>(&self->_queue, self, v8);
}

void __67__MapsSuggestionsShortcutManager_mapsSync_didChangeForContentType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3[7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__MapsSuggestionsShortcutManager_mapsSync_didChangeForContentType___block_invoke_2;
  v6[3] = &unk_1E81F63C0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  [v4 shortcutsFromFavoritesWithHandler:v6];
}

void __67__MapsSuggestionsShortcutManager_mapsSync_didChangeForContentType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 count])
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_1C5126000, &v7->super, OS_LOG_TYPE_DEBUG, "MapsSync returned no shortcuts or an error: %@", buf, 0xCu);
    }
  }

  else
  {
    v7 = [[MapsSuggestionsMeCard alloc] initWithShortcuts:v5 hasCorrected:0 hasGeocoded:0];
    if (![(MapsSuggestionsMeCard *)v7 isEqualToMeCard:*(*(a1 + 32) + 96)])
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v16 = v7;
        _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "New MapsSync derived MeCard detected: %@", buf, 0xCu);
      }

      v9 = *(a1 + 40);
      v10 = v9[11];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __67__MapsSuggestionsShortcutManager_mapsSync_didChangeForContentType___block_invoke_240;
      v12[3] = &unk_1E81F5640;
      v13 = v9;
      v11 = v7;
      v14 = v11;
      [v10 callBlock:v12];

      v7 = v11;
    }
  }
}

void __67__MapsSuggestionsShortcutManager_mapsSync_didChangeForContentType___block_invoke_240(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [v3 uniqueName];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "Calling observer '%@'", &v6, 0xCu);
  }

  [v3 meCardReader:*(a1 + 32) didUpdateMeCard:*(a1 + 40)];
}

- (char)readMeCardWithHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__MapsSuggestionsShortcutManager_readMeCardWithHandler___block_invoke;
    v9[3] = &unk_1E81F6348;
    v9[4] = self;
    v10 = handlerCopy;
    MSg::Queue::async<MapsSuggestionsShortcutManager>(&self->_queue, self, v9);

    v6 = 1;
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcutManager.mm";
      v13 = 1024;
      v14 = 1043;
      v15 = 2082;
      v16 = "[MapsSuggestionsShortcutManager readMeCardWithHandler:]";
      v17 = 2082;
      v18 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a callback handler", buf, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

void __56__MapsSuggestionsShortcutManager_readMeCardWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  if ([(MapsSuggestionsShortcutManager *)*(a1 + 32) usingMyPlaces])
  {
    v4 = *(v3 + 7);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__MapsSuggestionsShortcutManager_readMeCardWithHandler___block_invoke_2;
    v7[3] = &unk_1E81F62D0;
    objc_copyWeak(&v9, &location);
    v8 = *(a1 + 40);
    [v4 shortcutsFromFavoritesWithHandler:v7];

    objc_destroyWeak(&v9);
  }

  else if (![(MapsSuggestionsShortcutManager *)v3 _loadCorrectedMeCardWithHandler:?])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__MapsSuggestionsShortcutManager_readMeCardWithHandler___block_invoke_3;
    v5[3] = &unk_1E81F56F8;
    v6 = *(a1 + 40);
    dispatch_async(*(v3 + 1), v5);
  }

  objc_destroyWeak(&location);
}

void __56__MapsSuggestionsShortcutManager_readMeCardWithHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6 || ![v5 count])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__MapsSuggestionsShortcutManager_readMeCardWithHandler___block_invoke_241;
      block[3] = &unk_1E81F62F8;
      v18 = *(a1 + 32);
      v17 = v6;
      dispatch_async(*(WeakRetained + 1), block);

      v8 = v18;
    }

    else
    {
      v9 = [[MapsSuggestionsMeCard alloc] initWithShortcuts:v5 hasCorrected:1 hasGeocoded:1];
      objc_storeStrong(WeakRetained + 12, v9);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __56__MapsSuggestionsShortcutManager_readMeCardWithHandler___block_invoke_2_242;
      v12[3] = &unk_1E81F62A8;
      v10 = *(a1 + 32);
      v14 = 0;
      v15 = v10;
      v13 = v9;
      v11 = *(WeakRetained + 1);
      v8 = v9;
      dispatch_async(v11, v12);
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v20 = "MapsSuggestionsShortcutManager.mm";
      v21 = 1026;
      v22 = 1049;
      v23 = 2082;
      v24 = "[MapsSuggestionsShortcutManager readMeCardWithHandler:]_block_invoke_2";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

- (void)_mergeShortcuts:(NSObject *)a1 toMeCardAndCallHandler:.cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", v4, v5, v6, v7, 2u);
  }
}

- (void)__loadCorrectedMeCardWithHandler:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", v4, v5, v6, v7, 2u);
  }
}

- (void)_loadCorrectedMeCardWithHandler:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", v4, v5, v6, v7, 2u);
  }
}

void __62__MapsSuggestionsShortcutManager_loadAllShortcutsWithHandler___block_invoke_cold_1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&dword_1C5126000, a1, OS_LOG_TYPE_DEBUG, "Loading Shortcuts", v2, 2u);
  }
}

@end