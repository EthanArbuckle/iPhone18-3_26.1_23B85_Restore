@interface MapsSuggestionsCorrectedMapItemProvider
- (MapsSuggestionsCorrectedMapItemProvider)initWithMeCardReader:(id)reader handler:(id)handler;
- (NSString)uniqueName;
- (id)mapItemFormShortcutForCNIdentifier:(id)identifier;
- (void)dealloc;
- (void)meCardReader:(id)reader didUpdateMeCard:(id)card;
@end

@implementation MapsSuggestionsCorrectedMapItemProvider

- (MapsSuggestionsCorrectedMapItemProvider)initWithMeCardReader:(id)reader handler:(id)handler
{
  readerCopy = reader;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = MapsSuggestionsCorrectedMapItemProvider;
  v9 = [(MapsSuggestionsCorrectedMapItemProvider *)&v17 init];
  if (v9)
  {
    v10 = _Block_copy(handlerCopy);
    updateHandler = v9->_updateHandler;
    v9->_updateHandler = v10;

    objc_storeStrong(&v9->_meCardReader, reader);
    [(MapsSuggestionsMeCardReader *)v9->_meCardReader registerMeCardObserver:v9];
    objc_initWeak(&location, v9);
    meCardReader = v9->_meCardReader;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __72__MapsSuggestionsCorrectedMapItemProvider_initWithMeCardReader_handler___block_invoke;
    v14[3] = &unk_1E81F5CD8;
    objc_copyWeak(&v15, &location);
    [(MapsSuggestionsMeCardReader *)meCardReader readMeCardWithHandler:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __72__MapsSuggestionsCorrectedMapItemProvider_initWithMeCardReader_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained;
    objc_sync_enter(v10);
    if (v7)
    {
      v11 = v10[1];
      v10[1] = 0;
    }

    objc_storeStrong(v10 + 1, a2);
    v12 = v10[3];
    if (v12)
    {
      v12[2]();
    }

    objc_sync_exit(v10);
  }

  else
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446722;
      v15 = "MapsSuggestionsCorrectedMapItemProvider.m";
      v16 = 1026;
      v17 = 38;
      v18 = 2082;
      v19 = "[MapsSuggestionsCorrectedMapItemProvider initWithMeCardReader:handler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v14, 0x1Cu);
    }
  }
}

- (void)dealloc
{
  [(MapsSuggestionsMeCardReader *)self->_meCardReader unregisterMeCardObserver:self];
  v3.receiver = self;
  v3.super_class = MapsSuggestionsCorrectedMapItemProvider;
  [(MapsSuggestionsCorrectedMapItemProvider *)&v3 dealloc];
}

- (id)mapItemFormShortcutForCNIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(MapsSuggestionsMeCard *)selfCopy->_meCard shortcutForCNPostalAddressIdentifier:identifierCopy];
  identifier = [v6 identifier];

  if (identifier)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    shortcutsForAll = [(MapsSuggestionsMeCard *)selfCopy->_meCard shortcutsForAll];
    geoMapItem = [shortcutsForAll countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (geoMapItem)
    {
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != geoMapItem; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(shortcutsForAll);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          identifier2 = [v12 identifier];
          v14 = [identifier isEqualToString:identifier2];

          if (v14)
          {
            geoMapItem = [v12 geoMapItem];
            goto LABEL_12;
          }
        }

        geoMapItem = [shortcutsForAll countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (geoMapItem)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    geoMapItem = 0;
  }

  objc_sync_exit(selfCopy);

  return geoMapItem;
}

- (void)meCardReader:(id)reader didUpdateMeCard:(id)card
{
  readerCopy = reader;
  cardCopy = card;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_meCard, card);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"CorrectedMapItemsUpdated" object:0];

  updateHandler = selfCopy->_updateHandler;
  if (updateHandler)
  {
    updateHandler[2]();
  }

  objc_sync_exit(selfCopy);
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

@end