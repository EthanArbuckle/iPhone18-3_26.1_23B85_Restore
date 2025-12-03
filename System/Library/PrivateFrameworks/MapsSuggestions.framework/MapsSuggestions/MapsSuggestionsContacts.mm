@interface MapsSuggestionsContacts
- (MapsSuggestionsContacts)initWithConnector:(id)connector networkRequester:(id)requester;
- (NSString)uniqueName;
- (char)readMeCardAddressStringsWithHandler:(id)handler;
- (char)readMeCardWithHandler:(id)handler;
- (id).cxx_construct;
- (id)contactNameForIdentifier:(id)identifier;
- (id)dataForContactWithIdentifier:(id)identifier;
- (id)dealloc;
- (id)friendlyNameForIndentifier:(id)indentifier;
- (id)initFromResourceDepot:(id)depot;
- (id)profilePictureForIdentifier:(id)identifier;
- (uint64_t)_q_reloadWithHandler:(uint64_t)handler;
- (void)_fetchMeCardShortcutsWithHandler:(uint64_t)handler;
- (void)_q_readMeCardAddressStringsWithHandler:(uint64_t)handler;
- (void)dealloc;
- (void)registerMeCardObserver:(id)observer;
- (void)unregisterMeCardObserver:(id)observer;
@end

@implementation MapsSuggestionsContacts

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (MapsSuggestionsContacts)initWithConnector:(id)connector networkRequester:(id)requester
{
  v37 = *MEMORY[0x1E69E9840];
  connectorCopy = connector;
  requesterCopy = requester;
  v9 = requesterCopy;
  if (!connectorCopy)
  {
    v29 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsContacts.mm";
      *&buf[12] = 1024;
      *&buf[14] = 101;
      v33 = 2082;
      v34 = "[MapsSuggestionsContacts initWithConnector:networkRequester:]";
      v35 = 2082;
      v36 = "nil == (connector)";
      _os_log_impl(&dword_1C5126000, v29, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires Contacts connector", buf, 0x26u);
    }

    goto LABEL_11;
  }

  if (!requesterCopy)
  {
    v29 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsContacts.mm";
      *&buf[12] = 1024;
      *&buf[14] = 102;
      v33 = 2082;
      v34 = "[MapsSuggestionsContacts initWithConnector:networkRequester:]";
      v35 = 2082;
      v36 = "nil == (networkRequester)";
      _os_log_impl(&dword_1C5126000, v29, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires network requester", buf, 0x26u);
    }

LABEL_11:

    selfCopy = 0;
    goto LABEL_12;
  }

  v31.receiver = self;
  v31.super_class = MapsSuggestionsContacts;
  v10 = [(MapsSuggestionsContacts *)&v31 init];
  if (v10)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    MSg::Queue::Queue(buf, @"MapsSuggestionsContacts", v11);
    v12 = *buf;
    *buf = 0;
    innerQueue = v10->_queue._innerQueue;
    v10->_queue._innerQueue = v12;

    v14 = *&buf[8];
    *&buf[8] = 0;
    name = v10->_queue._name;
    v10->_queue._name = v14;

    objc_storeStrong(&v10->_connector, connector);
    [(MapsSuggestionsContactsConnector *)v10->_connector setDelegate:v10];
    objc_storeStrong(&v10->_networkRequester, requester);
    v16 = [[MapsSuggestionsLimitedDictionary alloc] initWithMaximumCapacity:GEOConfigGetInteger()];
    cache = v10->_cache;
    v10->_cache = v16;

    v18 = [MapsSuggestionsObservers alloc];
    v19 = v10->_queue._innerQueue;
    v20 = [(MapsSuggestionsObservers *)v18 initWithCallbackQueue:v19 name:@"MapsSuggestionsMeCardReaderObservers" strong:0];
    meCardObservers = v10->_meCardObservers;
    v10->_meCardObservers = v20;

    currMeCard = v10->_currMeCard;
    v10->_currMeCard = 0;

    v23 = objc_alloc_init(MapsSuggestionsLocaleChangedTrigger);
    localeChangedTrigger = v10->_localeChangedTrigger;
    v10->_localeChangedTrigger = v23;

    [(MapsSuggestionsBaseTrigger *)v10->_localeChangedTrigger registerObserver:v10->_cache];
    v25 = [MapsSuggestionsDarwinNotificationTrigger alloc];
    v26 = [(MapsSuggestionsDarwinNotificationTrigger *)v25 initWithNotificationName:*MEMORY[0x1E69A15E8]];
    geoActiveTileGroupChangedTrigger = v10->_geoActiveTileGroupChangedTrigger;
    v10->_geoActiveTileGroupChangedTrigger = v26;

    [(MapsSuggestionsBaseTrigger *)v10->_geoActiveTileGroupChangedTrigger registerObserver:v10->_cache];
  }

  self = v10;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

- (id)initFromResourceDepot:(id)depot
{
  v20 = *MEMORY[0x1E69E9840];
  depotCopy = depot;
  v5 = depotCopy;
  if (!depotCopy)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsContacts.mm";
      v14 = 1024;
      v15 = 126;
      v16 = 2082;
      v17 = "[MapsSuggestionsContacts initFromResourceDepot:]";
      v18 = 2082;
      v19 = "nil == (resourceDepot)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to build from!", &v12, 0x26u);
    }

    goto LABEL_9;
  }

  oneNetworkRequester = [depotCopy oneNetworkRequester];

  if (!oneNetworkRequester)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsContacts.mm";
      v14 = 1024;
      v15 = 127;
      v16 = 2082;
      v17 = "[MapsSuggestionsContacts initFromResourceDepot:]";
      v18 = 2082;
      v19 = "nil == (resourceDepot.oneNetworkRequester)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires One Network!", &v12, 0x26u);
    }

LABEL_9:

    selfCopy = 0;
    goto LABEL_10;
  }

  oneContactsConnector = [v5 oneContactsConnector];
  oneNetworkRequester2 = [v5 oneNetworkRequester];
  self = [(MapsSuggestionsContacts *)self initWithConnector:oneContactsConnector networkRequester:oneNetworkRequester2];

  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (void)dealloc
{
  if (self)
  {
    [(MapsSuggestionsContactsConnector *)self->_connector stopListeningForChanges];
  }

  [(MapsSuggestionsContacts *)self dealloc];
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (void)_fetchMeCardShortcutsWithHandler:(uint64_t)handler
{
  v45 = *MEMORY[0x1E69E9840];
  v27 = a2;
  if (handler)
  {
    dispatch_assert_queue_V2(*(handler + 8));
    if (([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] - 3) >= 2)
    {
      v22 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v44 = "[MapsSuggestionsContacts _fetchMeCardShortcutsWithHandler:]";
        _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_DEBUG, "%s :Not Allowed to use Contacts", buf, 0xCu);
      }

      v6 = objc_alloc_init(MEMORY[0x1E695DF20]);
      (*(v27 + 2))(v27, MEMORY[0x1E695E0F0], v6, 0);
    }

    else
    {
      v3 = *(handler + 24);
      v42 = *MEMORY[0x1E695C360];
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
      v41 = 0;
      v5 = [v3 _crossPlatformUnifiedMeContactWithKeysToFetch:v4 error:&v41];
      v6 = v41;

      if (!v5 || v6)
      {
        (*(v27 + 2))(v27, 0, 0, v6);
      }

      else
      {
        postalAddresses = [v5 postalAddresses];
        v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(postalAddresses, "count")}];
        v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(postalAddresses, "count")}];
        v26 = v5;
        v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(postalAddresses, "count")}];
        v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(postalAddresses, "count")}];
        v10 = *(handler + 40);
        v11 = dispatch_group_create();
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __60__MapsSuggestionsContacts__fetchMeCardShortcutsWithHandler___block_invoke;
        v34[3] = &unk_1E81F5578;
        v34[4] = handler;
        v12 = v7;
        v35 = v12;
        v13 = v8;
        v36 = v13;
        v14 = v25;
        v37 = v14;
        v15 = v9;
        v38 = v15;
        v39 = v10;
        v40 = v11;
        v16 = v11;
        v23 = v10;
        [postalAddresses enumerateObjectsUsingBlock:v34];
        v17 = *(handler + 8);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __60__MapsSuggestionsContacts__fetchMeCardShortcutsWithHandler___block_invoke_41;
        block[3] = &unk_1E81F55A0;
        v29 = v12;
        v30 = v13;
        v31 = v14;
        v32 = v15;
        v33 = v27;
        v18 = v15;
        v19 = v14;
        v20 = v13;
        v21 = v12;
        dispatch_group_notify(v16, v17, block);

        v5 = v26;
      }
    }
  }
}

void __60__MapsSuggestionsContacts__fetchMeCardShortcutsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 value];
  v5 = [v3 identifier];
  if (v5)
  {
    if (v4)
    {
      v6 = [v3 label];
      if ([v6 isEqualToString:*MEMORY[0x1E695CB60]])
      {

        v7 = [*(*(a1 + 32) + 24) singleLineStringFromPostalAddress:v4 addCountryName:1];
        v8 = [[MapsSuggestionsShortcut alloc] initBackedPlaceholderWithType:2 identifier:@"{TEMP}" originatingAddress:v7 customName:0];
        [*(a1 + 40) addObject:v8];
      }

      else if ([v6 isEqualToString:*MEMORY[0x1E695CBD8]])
      {

        v7 = [*(*(a1 + 32) + 24) singleLineStringFromPostalAddress:v4 addCountryName:1];
        v8 = [[MapsSuggestionsShortcut alloc] initBackedPlaceholderWithType:3 identifier:@"{TEMP}" originatingAddress:v7 customName:0];
        [*(a1 + 48) addObject:v8];
      }

      else
      {
        v10 = [v6 isEqualToString:*MEMORY[0x1E695CBC8]];

        if ((v10 & 1) == 0)
        {
          v18 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v23 = [v3 label];
            *buf = 138412290;
            v31 = v23;
            _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_DEBUG, "Skipping CNLabel '%@'", buf, 0xCu);
          }

          v8 = v18;
          goto LABEL_18;
        }

        v7 = [*(*(a1 + 32) + 24) singleLineStringFromPostalAddress:v4 addCountryName:1];
        v8 = [[MapsSuggestionsShortcut alloc] initBackedPlaceholderWithType:5 identifier:@"{TEMP}" originatingAddress:v7 customName:0];
        [*(a1 + 56) addObject:v8];
      }

      [*(a1 + 64) setObject:v8 forKey:v5];
      v11 = v4;
      v12 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:100];
      v13 = [v11 street];
      [v12 appendString:v13];

      v14 = [v11 subLocality];
      [v12 appendString:v14];

      v15 = [v11 city];
      [v12 appendString:v15];

      v16 = [v11 state];
      [v12 appendString:v16];

      v17 = [v11 ISOCountryCode];
      [v12 appendString:v17];

      [v12 appendString:@"MeCard"];
      v18 = [v12 copy];

      v19 = [*(a1 + 72) objectForKeyedSubscript:v18];
      if (v19)
      {
        [v8 setGeoMapItem:v19];
        v20 = MapsSuggestionsShortcutUniqueIdentifier(v8);
        [v8 setIdentifier:v20];

        v21 = MapsSuggestionsShortcutIdentifierForStorage(v8);
        [v8 setStorageIdentifier:v21];
      }

      else
      {
        dispatch_group_enter(*(a1 + 80));
        v22 = *(*(a1 + 32) + 32);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __60__MapsSuggestionsContacts__fetchMeCardShortcutsWithHandler___block_invoke_38;
        v24[3] = &unk_1E81F5550;
        v25 = *(a1 + 80);
        v26 = v11;
        v27 = v8;
        v28 = *(a1 + 72);
        v29 = v18;
        [v22 canonicalLocalSearchPostalAddress:v26 completion:v24];
      }

LABEL_18:
      goto LABEL_19;
    }

    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v31 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsContacts.mm";
      v32 = 1024;
      v33 = 216;
      v34 = 2082;
      v35 = "[MapsSuggestionsContacts _fetchMeCardShortcutsWithHandler:]_block_invoke";
      v36 = 2082;
      v37 = "nil == (postalAddressValue)";
      v9 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a CNLabeledValue<CNPostalAddress>.value";
      goto LABEL_9;
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v31 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsContacts.mm";
      v32 = 1024;
      v33 = 215;
      v34 = 2082;
      v35 = "[MapsSuggestionsContacts _fetchMeCardShortcutsWithHandler:]_block_invoke";
      v36 = 2082;
      v37 = "nil == (postalAddressIdentifier)";
      v9 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a CNLabeledValue<CNPostalAddress>.identifier";
LABEL_9:
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0x26u);
    }
  }

LABEL_19:
}

void __60__MapsSuggestionsContacts__fetchMeCardShortcutsWithHandler___block_invoke_38(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6 || ![v5 count])
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "Didn't find postalAddress %@: %@", &v15, 0x16u);
    }
  }

  else
  {
    v10 = [v5 firstObject];
    v11 = MapsSuggestionsMapItemConvertIfNeeded(v10);
    [*(a1 + 48) setGeoMapItem:v11];

    v12 = MapsSuggestionsShortcutUniqueIdentifier(*(a1 + 48));
    [*(a1 + 48) setIdentifier:v12];

    v13 = [*(a1 + 48) geoMapItem];
    [*(a1 + 56) setObject:v13 forKeyedSubscript:*(a1 + 64)];

    v14 = MapsSuggestionsShortcutIdentifierForStorage(*(a1 + 48));
    [*(a1 + 48) setStorageIdentifier:v14];
  }

  dispatch_group_leave(v7);
}

void __60__MapsSuggestionsContacts__fetchMeCardShortcutsWithHandler___block_invoke_41(id *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1[5], "count") + objc_msgSend(a1[4], "count") + objc_msgSend(a1[6], "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v30 = a1;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v4)
  {
    v5 = *v40;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v40 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v39 + 1) + 8 * i);
        v8 = [v7 geoMapItem];
        if (v8)
        {
          v9 = [v7 identifier];
          v10 = [v9 isEqualToString:@"{TEMP}"];

          if ((v10 & 1) == 0)
          {
            [v2 addObject:v7];
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v4);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = v30[5];
  v12 = [v11 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v12)
  {
    v13 = *v36;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v35 + 1) + 8 * j);
        v16 = [v15 geoMapItem];
        if (v16)
        {
          v17 = [v15 identifier];
          v18 = [v17 isEqualToString:@"{TEMP}"];

          if ((v18 & 1) == 0)
          {
            [v2 addObject:v15];
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v12);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = v30[6];
  v20 = [v19 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v20)
  {
    v21 = *v32;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v31 + 1) + 8 * k);
        v24 = [v23 geoMapItem];
        if (v24)
        {
          v25 = [v23 identifier];
          v26 = [v25 isEqualToString:@"{TEMP}"];

          if ((v26 & 1) == 0)
          {
            [v2 addObject:v23];
          }
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v20);
  }

  v27 = v30[8];
  v28 = [v2 copy];
  v29 = [v30[7] copy];
  v27[2](v27, v28, v29, 0);
}

- (void)registerMeCardObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  meCardObservers = self->_meCardObservers;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__MapsSuggestionsContacts_registerMeCardObserver___block_invoke;
  v9[3] = &unk_1E81F55C8;
  objc_copyWeak(&v10, &location);
  [(MapsSuggestionsObservers *)meCardObservers registerObserver:observerCopy handler:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__MapsSuggestionsContacts_registerMeCardObserver___block_invoke_44;
  v7[3] = &unk_1E81F55F0;
  v6 = observerCopy;
  v8 = v6;
  MSg::Queue::async<MapsSuggestionsContacts>(&self->_queue, self, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __50__MapsSuggestionsContacts_registerMeCardObserver___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      dispatch_assert_queue_V2(*(WeakRetained + 1));
      [v3[3] startListeningForChanges];
    }

    else
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = 136446722;
        v6 = "MapsSuggestionsContacts.mm";
        v7 = 1026;
        v8 = 308;
        v9 = 2082;
        v10 = "[MapsSuggestionsContacts registerMeCardObserver:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
      }
    }
  }
}

void __50__MapsSuggestionsContacts_registerMeCardObserver___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3[7])
  {
    [*(a1 + 32) meCardReader:v3 didUpdateMeCard:?];
  }
}

- (void)unregisterMeCardObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  meCardObservers = self->_meCardObservers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__MapsSuggestionsContacts_unregisterMeCardObserver___block_invoke;
  v6[3] = &unk_1E81F55C8;
  objc_copyWeak(&v7, &location);
  [(MapsSuggestionsObservers *)meCardObservers unregisterObserver:observerCopy handler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __52__MapsSuggestionsContacts_unregisterMeCardObserver___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      dispatch_assert_queue_V2(*(WeakRetained + 1));
      [v3[3] stopListeningForChanges];
    }

    else
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = 136446722;
        v6 = "MapsSuggestionsContacts.mm";
        v7 = 1026;
        v8 = 329;
        v9 = 2082;
        v10 = "[MapsSuggestionsContacts unregisterMeCardObserver:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
      }
    }
  }
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
    v9[2] = __49__MapsSuggestionsContacts_readMeCardWithHandler___block_invoke;
    v9[3] = &unk_1E81F5618;
    v10 = handlerCopy;
    MSg::Queue::async<MapsSuggestionsContacts>(&self->_queue, self, v9);
    v6 = 1;
    v7 = v10;
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsContacts.mm";
      v13 = 1024;
      v14 = 338;
      v15 = 2082;
      v16 = "[MapsSuggestionsContacts readMeCardWithHandler:]";
      v17 = 2082;
      v18 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

- (uint64_t)_q_reloadWithHandler:(uint64_t)handler
{
  v3 = a2;
  v4 = v3;
  if (handler)
  {
    if (v3)
    {
      dispatch_assert_queue_V2(*(handler + 8));
      objc_initWeak(&location, handler);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __48__MapsSuggestionsContacts__q_reloadWithHandler___block_invoke;
      v7[3] = &unk_1E81F5668;
      objc_copyWeak(&v9, &location);
      v8 = v4;
      [(MapsSuggestionsContacts *)handler _fetchMeCardShortcutsWithHandler:v7];

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
      handler = 1;
    }

    else
    {
      v6 = GEOFindOrCreateLog();
      [MapsSuggestionsContacts _q_reloadWithHandler:v6];
      handler = 0;
    }
  }

  return handler;
}

void __48__MapsSuggestionsContacts__q_reloadWithHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v26 = "MapsSuggestionsContacts.mm";
      v27 = 1026;
      v28 = 355;
      v29 = 2082;
      v30 = "[MapsSuggestionsContacts _q_reloadWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v16 = v19;
    goto LABEL_20;
  }

  if (!v7 || v9)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v9;
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "Error loading Shortcuts from MeCard: %@", buf, 0xCu);
    }

    v12 = v9;
    v13 = [v12 code];
    if (v13 == 100 || v13 == 103 || v13 == 200)
    {
      v14 = [v12 domain];
      v15 = [v14 isEqualToString:*MEMORY[0x1E695C448]];

      if (v15)
      {

        v7 = MEMORY[0x1E695E0F0];
        goto LABEL_11;
      }
    }

    else
    {
    }

    (*(*(a1 + 32) + 16))();
    goto LABEL_21;
  }

LABEL_11:
  v16 = WeakRetained[7];
  v17 = [[MapsSuggestionsMeCard alloc] initWithShortcuts:v7 perCNPostalAddress:v8 hasCorrected:0 hasGeocoded:1];
  v18 = WeakRetained[7];
  WeakRetained[7] = v17;

  v19 = [WeakRetained[7] copy];
  (*(*(a1 + 32) + 16))();
  if ([v19 hasHomeOrWorkOrSchool])
  {
    MapsSuggestionsSawHomeOrWorkOnThisDevice();
  }

  if (([v19 isEqualToMeCard:v16]& 1) == 0)
  {
    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v26 = v19;
      _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_DEBUG, "New MeCard detected: %@", buf, 0xCu);
    }

    v21 = WeakRetained[6];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __48__MapsSuggestionsContacts__q_reloadWithHandler___block_invoke_48;
    v23[3] = &unk_1E81F5640;
    v23[4] = WeakRetained;
    v22 = v19;
    v24 = v22;
    [v21 callBlock:v23];

    v19 = v22;
  }

LABEL_20:

LABEL_21:
}

void __48__MapsSuggestionsContacts__q_reloadWithHandler___block_invoke_48(uint64_t a1, void *a2)
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

- (void)_q_readMeCardAddressStringsWithHandler:(uint64_t)handler
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (handler)
  {
    dispatch_assert_queue_V2(*(handler + 8));
    v4 = *(handler + 24);
    v20[0] = *MEMORY[0x1E695C360];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v19 = 0;
    v6 = [v4 _crossPlatformUnifiedMeContactWithKeysToFetch:v5 error:&v19];
    v7 = v19;

    postalAddresses = [v6 postalAddresses];
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(postalAddresses, "count")}];
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(postalAddresses, "count")}];
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(postalAddresses, "count")}];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __66__MapsSuggestionsContacts__q_readMeCardAddressStringsWithHandler___block_invoke;
    v15[3] = &unk_1E81F56D0;
    v15[4] = handler;
    v12 = v9;
    v16 = v12;
    v13 = v10;
    v17 = v13;
    v14 = v11;
    v18 = v14;
    [postalAddresses enumerateObjectsUsingBlock:v15];
    v3[2](v3, v12, v13, v14, v7);
  }
}

void __66__MapsSuggestionsContacts__q_readMeCardAddressStringsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 value];
  if (v4)
  {
    v5 = [v3 label];
    if ([v5 isEqualToString:*MEMORY[0x1E695CB60]])
    {

      v6 = [*(*(a1 + 32) + 24) singleLineStringFromPostalAddress:v4 addCountryName:1];
      if (v6)
      {
        [*(a1 + 40) addObject:v6];
      }
    }

    else if ([v5 isEqualToString:*MEMORY[0x1E695CBD8]])
    {

      v6 = [*(*(a1 + 32) + 24) singleLineStringFromPostalAddress:v4 addCountryName:1];
      if (v6)
      {
        [*(a1 + 48) addObject:v6];
      }
    }

    else
    {
      v7 = [v5 isEqualToString:*MEMORY[0x1E695CBC8]];

      if (v7)
      {
        v6 = [*(*(a1 + 32) + 24) singleLineStringFromPostalAddress:v4 addCountryName:1];
        if (v6)
        {
          [*(a1 + 56) addObject:v6];
        }
      }

      else
      {
        v8 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v9 = [v3 label];
          v10 = 138412290;
          v11 = v9;
          _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "Skipping CNLabel '%@'", &v10, 0xCu);
        }

        v6 = 0;
      }
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446978;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsContacts.mm";
      v12 = 1024;
      v13 = 417;
      v14 = 2082;
      v15 = "[MapsSuggestionsContacts _q_readMeCardAddressStringsWithHandler:]_block_invoke";
      v16 = 2082;
      v17 = "nil == (postalAddressValue)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a CNLabeledValue<CNPostalAddress>.value", &v10, 0x26u);
    }
  }
}

- (char)readMeCardAddressStringsWithHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] - 3) >= 2)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__MapsSuggestionsContacts_readMeCardAddressStringsWithHandler___block_invoke;
      block[3] = &unk_1E81F56F8;
      v11 = handlerCopy;
      dispatch_async(self->_queue._innerQueue, block);
      v5 = 1;
      v6 = v11;
    }

    else
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __63__MapsSuggestionsContacts_readMeCardAddressStringsWithHandler___block_invoke_54;
      v8[3] = &unk_1E81F5618;
      v9 = handlerCopy;
      MSg::Queue::async<MapsSuggestionsContacts>(&self->_queue, self, v8);
      v5 = 1;
      v6 = v9;
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsContacts.mm";
      v14 = 1024;
      v15 = 461;
      v16 = 2082;
      v17 = "[MapsSuggestionsContacts readMeCardAddressStringsWithHandler:]";
      v18 = 2082;
      v19 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    v5 = 0;
  }

  return v5;
}

uint64_t __63__MapsSuggestionsContacts_readMeCardAddressStringsWithHandler___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[MapsSuggestionsContacts readMeCardAddressStringsWithHandler:]_block_invoke";
    _os_log_impl(&dword_1C5126000, v2, OS_LOG_TYPE_DEBUG, "%s :Not Allowed to use Contacts", &v4, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

- (id)contactNameForIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsContacts.mm";
      v15 = 1024;
      v16 = 478;
      v17 = 2082;
      v18 = "[MapsSuggestionsContacts contactNameForIdentifier:]";
      v19 = 2082;
      v20 = "nil == (identifier)";
      v8 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an identifier";
      v9 = v5;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 38;
LABEL_10:
      _os_log_impl(&dword_1C5126000, v9, v10, v8, &v13, v11);
    }

LABEL_11:
    v6 = 0;
    goto LABEL_16;
  }

  if (([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] - 3) >= 2)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315138;
      v14 = "[MapsSuggestionsContacts contactNameForIdentifier:]";
      v8 = "%s :Not Allowed to use Contacts";
      v9 = v5;
      v10 = OS_LOG_TYPE_DEBUG;
      v11 = 12;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v5 = [(MapsSuggestionsContactsConnector *)self->_connector contactForIdentifier:identifierCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695CD80] stringFromContact:v5 style:0];
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "Formatted contact name : %@", &v13, 0xCu);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = identifierCopy;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "No contacts found for identifier %@", &v13, 0xCu);
    }

    v6 = 0;
  }

LABEL_16:

  return v6;
}

- (id)friendlyNameForIndentifier:(id)indentifier
{
  v28 = *MEMORY[0x1E69E9840];
  indentifierCopy = indentifier;
  if (!indentifierCopy)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsContacts.mm";
      v22 = 1024;
      v23 = 496;
      v24 = 2082;
      v25 = "[MapsSuggestionsContacts friendlyNameForIndentifier:]";
      v26 = 2082;
      v27 = "nil == (identifier)";
      v15 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an identifier";
      v16 = v5;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 38;
LABEL_11:
      _os_log_impl(&dword_1C5126000, v16, v17, v15, &v20, v18);
    }

LABEL_12:
    v13 = 0;
    goto LABEL_17;
  }

  if (([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] - 3) >= 2)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v20 = 136315138;
      v21 = "[MapsSuggestionsContacts friendlyNameForIndentifier:]";
      v15 = "%s :Not Allowed to use Contacts";
      v16 = v5;
      v17 = OS_LOG_TYPE_DEBUG;
      v18 = 12;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v5 = [(MapsSuggestionsContactsConnector *)self->_connector contactForIdentifier:indentifierCopy];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    namePrefix = [v5 namePrefix];
    [v6 setNamePrefix:namePrefix];

    givenName = [v5 givenName];
    [v6 setGivenName:givenName];

    middleName = [v5 middleName];
    [v6 setMiddleName:middleName];

    familyName = [v5 familyName];
    [v6 setFamilyName:familyName];

    nameSuffix = [v5 nameSuffix];
    [v6 setNameSuffix:nameSuffix];

    nickname = [v5 nickname];
    [v6 setNickname:nickname];

    v13 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v6 style:1 options:0];
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v20 = 138412290;
      v21 = v13;
      _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "Proposed friendly name: %@", &v20, 0xCu);
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "Trying to fetch a friendly contact name returned nil", &v20, 2u);
    }

    v13 = 0;
  }

LABEL_17:

  return v13;
}

- (id)profilePictureForIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] - 3) < 2)
    {
      v5 = [(MapsSuggestionsContactsConnector *)self->_connector imageDataForIdentifier:identifierCopy];
      goto LABEL_10;
    }

    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315138;
      v13 = "[MapsSuggestionsContacts profilePictureForIdentifier:]";
      v7 = "%s :Not Allowed to use Contacts";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEBUG;
      v10 = 12;
      goto LABEL_8;
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsContacts.mm";
      v14 = 1024;
      v15 = 524;
      v16 = 2082;
      v17 = "[MapsSuggestionsContacts profilePictureForIdentifier:]";
      v18 = 2082;
      v19 = "nil == (identifier)";
      v7 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an identifier";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 38;
LABEL_8:
      _os_log_impl(&dword_1C5126000, v8, v9, v7, &v12, v10);
    }
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (id)dataForContactWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] - 3) < 2)
    {
      v5 = [(MapsSuggestionsContactsConnector *)self->_connector dataForContactWithIdentifier:identifierCopy];
      goto LABEL_10;
    }

    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315138;
      v13 = "[MapsSuggestionsContacts dataForContactWithIdentifier:]";
      v7 = "%s :Not Allowed to use Contacts";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEBUG;
      v10 = 12;
      goto LABEL_8;
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsContacts.mm";
      v14 = 1024;
      v15 = 532;
      v16 = 2082;
      v17 = "[MapsSuggestionsContacts dataForContactWithIdentifier:]";
      v18 = 2082;
      v19 = "nil == (identifier)";
      v7 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an identifier";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 38;
LABEL_8:
      _os_log_impl(&dword_1C5126000, v8, v9, v7, &v12, v10);
    }
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (id)dealloc
{
  a2->receiver = self;
  a2->super_class = MapsSuggestionsContacts;
  return [(objc_super *)a2 dealloc];
}

- (void)_q_reloadWithHandler:(NSObject *)a1 .cold.1(NSObject *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v2 = 136446978;
    v3 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsContacts.mm";
    v4 = 1024;
    v5 = 349;
    v6 = 2082;
    v7 = "[MapsSuggestionsContacts _q_reloadWithHandler:]";
    v8 = 2082;
    v9 = "nil == (handler)";
    _os_log_impl(&dword_1C5126000, a1, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", &v2, 0x26u);
  }
}

@end