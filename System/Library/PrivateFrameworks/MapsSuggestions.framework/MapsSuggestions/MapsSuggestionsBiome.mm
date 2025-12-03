@interface MapsSuggestionsBiome
- (BOOL)_shouldAllowEventType:(int)type;
- (BOOL)entriesFromFindMyWithCompletionHandler:(id)handler;
- (BOOL)entriesFromSmartRepliesWithCompletionHandler:(id)handler;
- (NSString)uniqueName;
- (id)_entriesFromFindMy:(id)my;
- (id)_entriesFromSmartReplies:(id)replies;
- (id)initFromResourceDepot:(id)depot;
- (void)dealloc;
- (void)registerForUpdatesWithHandler:(id)handler;
@end

@implementation MapsSuggestionsBiome

- (id)initFromResourceDepot:(id)depot
{
  v27 = *MEMORY[0x1E69E9840];
  depotCopy = depot;
  v5 = depotCopy;
  if (!depotCopy)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBiome.m";
      v21 = 1024;
      v22 = 113;
      v23 = 2082;
      v24 = "[MapsSuggestionsBiome initFromResourceDepot:]";
      v25 = 2082;
      v26 = "nil == (resourceDepot)";
      v16 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to build from!";
LABEL_10:
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x26u);
    }

LABEL_11:

    selfCopy = 0;
    goto LABEL_12;
  }

  oneBiomeConnector = [depotCopy oneBiomeConnector];

  if (!oneBiomeConnector)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBiome.m";
      v21 = 1024;
      v22 = 114;
      v23 = 2082;
      v24 = "[MapsSuggestionsBiome initFromResourceDepot:]";
      v25 = 2082;
      v26 = "nil == (resourceDepot.oneBiomeConnector)";
      v16 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a BiomeConnector!";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v18.receiver = self;
  v18.super_class = MapsSuggestionsBiome;
  v7 = [(MapsSuggestionsBiome *)&v18 init];
  if (v7)
  {
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("MapsSuggestionsBiomeQueue", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    oneBiomeConnector2 = [v5 oneBiomeConnector];
    connector = v7->_connector;
    v7->_connector = oneBiomeConnector2;

    GEOConfigGetDouble();
    v7->_expirationDuration = v13;
  }

  self = v7;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

- (void)registerForUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MapsSuggestionsBiome_registerForUpdatesWithHandler___block_invoke;
  block[3] = &unk_1E81F5D88;
  block[4] = self;
  v6 = handlerCopy;
  v12 = v6;
  dispatch_sync(queue, block);
  if (!self->_registeredForFindMy || !self->_registeredForSmartReplies)
  {
    objc_initWeak(&location, self);
    v7 = self->_queue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__MapsSuggestionsBiome_registerForUpdatesWithHandler___block_invoke_184;
    v8[3] = &unk_1E81F53E8;
    objc_copyWeak(&v9, &location);
    dispatch_async(v7, v8);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __54__MapsSuggestionsBiome_registerForUpdatesWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  objc_initWeak(&location, *(a1 + 32));
  v5 = *(a1 + 32);
  if ((*(v5 + 24) & 1) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__MapsSuggestionsBiome_registerForUpdatesWithHandler___block_invoke_2;
    aBlock[3] = &unk_1E81F5D60;
    objc_copyWeak(&v15, &location);
    v6 = _Block_copy(aBlock);
    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    objc_destroyWeak(&v15);
    v5 = *(a1 + 32);
  }

  if ((*(v5 + 25) & 1) == 0)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__MapsSuggestionsBiome_registerForUpdatesWithHandler___block_invoke_182;
    v12[3] = &unk_1E81F5D60;
    objc_copyWeak(&v13, &location);
    v9 = _Block_copy(v12);
    v10 = *(a1 + 32);
    v11 = *(v10 + 48);
    *(v10 + 48) = v9;

    objc_destroyWeak(&v13);
  }

  objc_destroyWeak(&location);
}

void __54__MapsSuggestionsBiome_registerForUpdatesWithHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (![v6 count])
    {
      v9 = WeakRetained[2];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__MapsSuggestionsBiome_registerForUpdatesWithHandler___block_invoke_179;
      block[3] = &unk_1E81F53E8;
      objc_copyWeak(&v11, (a1 + 32));
      dispatch_async(v9, block);
      objc_destroyWeak(&v11);
      goto LABEL_10;
    }

    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "Error from X, %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "MapsSuggestionsBiome.m";
      v14 = 1026;
      v15 = 166;
      v16 = 2082;
      v17 = "[MapsSuggestionsBiome registerForUpdatesWithHandler:]_block_invoke_2";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }

LABEL_10:
}

void __54__MapsSuggestionsBiome_registerForUpdatesWithHandler___block_invoke_179(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 24) = 1;
    (*(*(WeakRetained + 7) + 16))();
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsBiome.m";
      v6 = 1026;
      v7 = 169;
      v8 = 2082;
      v9 = "[MapsSuggestionsBiome registerForUpdatesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void __54__MapsSuggestionsBiome_registerForUpdatesWithHandler___block_invoke_182(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (![v6 count])
    {
      v9 = WeakRetained[2];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__MapsSuggestionsBiome_registerForUpdatesWithHandler___block_invoke_183;
      block[3] = &unk_1E81F53E8;
      objc_copyWeak(&v11, (a1 + 32));
      dispatch_async(v9, block);
      objc_destroyWeak(&v11);
      goto LABEL_10;
    }

    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "Error from X, %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v13 = "MapsSuggestionsBiome.m";
      v14 = 1026;
      v15 = 178;
      v16 = 2082;
      v17 = "[MapsSuggestionsBiome registerForUpdatesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }

LABEL_10:
}

void __54__MapsSuggestionsBiome_registerForUpdatesWithHandler___block_invoke_183(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 25) = 1;
    (*(*(WeakRetained + 7) + 16))();
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsBiome.m";
      v6 = 1026;
      v7 = 181;
      v8 = 2082;
      v9 = "[MapsSuggestionsBiome registerForUpdatesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

void __54__MapsSuggestionsBiome_registerForUpdatesWithHandler___block_invoke_184(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] registerForFindMyUpdatesWithHandler:WeakRetained[6]];
    [v2[1] registerForSmartRepliesUpdatesWithHandler:v2[5]];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "MapsSuggestionsBiome.m";
      v6 = 1026;
      v7 = 192;
      v8 = 2082;
      v9 = "[MapsSuggestionsBiome registerForUpdatesWithHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

- (BOOL)_shouldAllowEventType:(int)type
{
  if (type == 1 || (type & 0xFFFFFFFE) == 2)
  {
    return GEOConfigGetBOOL();
  }

  else
  {
    return 1;
  }
}

- (id)_entriesFromFindMy:(id)my
{
  v76 = *MEMORY[0x1E69E9840];
  myCopy = my;
  dispatch_assert_queue_V2(self->_queue);
  if (![myCopy count])
  {
    v55 = 0;
    goto LABEL_50;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v5 = myCopy;
  v6 = [v5 countByEnumeratingWithState:&v67 objects:v75 count:16];
  v58 = myCopy;
  if (!v6)
  {
    v63 = 0;
    goto LABEL_49;
  }

  v7 = v6;
  v63 = 0;
  v8 = *v68;
  selfCopy = self;
  v59 = v5;
  v61 = *v68;
  do
  {
    v9 = 0;
    v60 = v7;
    do
    {
      if (*v68 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v67 + 1) + 8 * v9);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        handle = [v10 handle];
        if (handle)
        {
          if (-[MapsSuggestionsBiome _shouldAllowEventType:](self, "_shouldAllowEventType:", [v10 actionType]))
          {
            selfCopy2 = self;
            v13 = v5;
            eventTimestampBegin = [v10 eventTimestampBegin];
            v15 = [eventTimestampBegin dateByAddingTimeInterval:selfCopy2->_expirationDuration];

            eventTimestampBegin2 = [v10 eventTimestampBegin];
            GEOConfigGetDouble();
            v66 = [eventTimestampBegin2 dateByAddingTimeInterval:?];

            eventTimestampEnd = [v10 eventTimestampEnd];
            v65 = v15;
            if (eventTimestampEnd)
            {
              eventTimestampEnd2 = [v10 eventTimestampEnd];
              v19 = [eventTimestampEnd2 earlierDate:v15];
            }

            else
            {
              v19 = v15;
            }

            actionType = [v10 actionType];
            if (actionType == 1)
            {
              v26 = 1;
              v5 = v13;
              goto LABEL_25;
            }

            if (actionType == 3)
            {

              v19 = 0;
              v26 = 3;
              goto LABEL_26;
            }

            v5 = v13;
            if (actionType == 2)
            {
              eventTimestampEnd3 = [v10 eventTimestampEnd];
              if (eventTimestampEnd3)
              {
                eventTimestampEnd4 = [v10 eventTimestampEnd];
                v25 = [eventTimestampEnd4 earlierDate:v66];

                v19 = eventTimestampEnd4;
                v5 = v13;
              }

              else
              {
                v25 = v66;
              }

              v26 = 2;
              v19 = v25;
              v8 = v61;
LABEL_25:
              self = selfCopy;
              if (!MapsSuggestionsIsInThePast(v19))
              {
LABEL_26:
                v62 = v26;
                v27 = [MapsSuggestionsEntry alloc];
                GEOConfigGetDouble();
                v28 = [(MapsSuggestionsEntry *)v27 initWithType:24 title:@"Contact Activity" subtitle:@"From Biome/FindMy" weight:v19 expires:0 geoMapItem:0 sourceSpecificInfo:?];
                [(MapsSuggestionsEntry *)v28 setString:handle forKey:@"MapsSuggestionsContactActivityPK"];
                [(MapsSuggestionsEntry *)v28 setString:@"MapsSuggestionsContactActivityPK" forKey:@"MapsSuggestionsPrimaryKey"];
                bundleID = [v10 bundleID];
                [(MapsSuggestionsEntry *)v28 setString:bundleID forKey:@"MapsSuggestionsOriginBundleIDKey"];

                v30 = handle;
                if ([v30 containsString:@"@"] && (objc_msgSend(v30, "containsString:", @".") & 1) != 0)
                {

                  v72 = v30;
                  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
                  [(MapsSuggestionsEntry *)v28 setArray:v31 forKey:@"MapsSuggestionsContactAllEmailAddressesKey"];
                }

                else
                {

                  [(MapsSuggestionsEntry *)v28 setArray:0 forKey:@"MapsSuggestionsContactAllEmailAddressesKey"];
                }

                v32 = v30;
                if ([v32 length])
                {
                  v33 = objc_msgSend(v32, "stringByReplacingOccurrencesOfString:withString:", @"("), &stru_1F444C108;

                  v34 = [v33 stringByReplacingOccurrencesOfString:@"" withString:?], &stru_1F444C108);

                  v35 = [v34 stringByReplacingOccurrencesOfString:@"-" withString:&stru_1F444C108];

                  v36 = [v35 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F444C108];

                  v37 = v36;
                  v38 = v37;
                }

                else
                {
                  v37 = 0;
                  v38 = v32;
                }

                v39 = [v37 stringByReplacingOccurrencesOfString:@"+" withString:&stru_1F444C108];

                decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
                invertedSet = [decimalDigitCharacterSet invertedSet];
                v42 = [v39 rangeOfCharacterFromSet:invertedSet];

                if (v42 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v71 = v32;
                  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
                  [(MapsSuggestionsEntry *)v28 setArray:v43 forKey:@"MapsSuggestionsContactAllPhoneNumbersKey"];
                }

                else
                {
                  [(MapsSuggestionsEntry *)v28 setArray:0 forKey:@"MapsSuggestionsContactAllPhoneNumbersKey"];
                }

                v44 = [MEMORY[0x1E696AD98] numberWithInteger:v62];
                [(MapsSuggestionsEntry *)v28 setNumber:v44 forKey:@"MapsSuggestionsContactActivityKey"];

                [(MapsSuggestionsEntry *)v28 setString:@"FindMy" forKey:@"MapsSuggestionsOriginatingAppName"];
                v45 = objc_alloc(MEMORY[0x1E695DFA8]);
                v46 = [v45 initWithObjects:{MapsSuggestionsFindMyAppBundleID, 0}];
                bundleID2 = [v10 bundleID];

                if (bundleID2)
                {
                  bundleID3 = [v10 bundleID];
                  [v46 addObject:bundleID3];
                }

                v49 = [v46 copy];
                [(MapsSuggestionsEntry *)v28 setSet:v49 forKey:@"MapsSuggestionsAssociatedBundleIDsKey"];

                v50 = v63;
                if (!v63)
                {
                  v50 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v59, "count")}];
                }

                [v10 actionType];
                v51 = BMFindMyContactActivityEventTypeAsString();
                v52 = MEMORY[0x1E696AEC0];
                v53 = v32;
                v54 = [[v52 alloc] initWithFormat:@"%@_%@", v53, v51];

                v63 = v50;
                [v50 setObject:v28 forKey:v54];

                self = selfCopy;
                v7 = v60;
                v8 = v61;
                v5 = v59;
              }
            }

            else
            {
              self = selfCopy;
            }

            v20 = v65;
          }

          else
          {
            v20 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              [v10 actionType];
              v21 = BMFindMyContactActivityEventTypeAsString();
              *buf = 138412290;
              v74 = v21;
              _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_ERROR, "Not processing %@ because the switch is off", buf, 0xCu);
            }
          }
        }
      }

      ++v9;
    }

    while (v7 != v9);
    v7 = [v5 countByEnumeratingWithState:&v67 objects:v75 count:16];
  }

  while (v7);
LABEL_49:

  allValues = [v63 allValues];
  v55 = [allValues copy];

  myCopy = v58;
LABEL_50:

  return v55;
}

- (id)_entriesFromSmartReplies:(id)replies
{
  v87 = *MEMORY[0x1E69E9840];
  repliesCopy = replies;
  dispatch_assert_queue_V2(self->_queue);
  if ([repliesCopy count])
  {
    if (GEOConfigGetBOOL())
    {
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v59 = repliesCopy;
      obj = repliesCopy;
      v5 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
      if (!v5)
      {
        v7 = 0;
        goto LABEL_59;
      }

      v6 = v5;
      v7 = 0;
      v8 = *v79;
      v60 = *v79;
      while (1)
      {
        v9 = 0;
        v61 = v6;
        do
        {
          if (*v79 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v78 + 1) + 8 * v9);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_51;
          }

          v67 = v10;
          contactInformation = [v10 contactInformation];
          if (!contactInformation)
          {
            goto LABEL_50;
          }

          v65 = v7;
          v66 = v9;
          v12 = objc_alloc(MEMORY[0x1E695DF70]);
          phoneNumber = [contactInformation phoneNumber];
          v14 = [v12 initWithCapacity:{objc_msgSend(phoneNumber, "count")}];

          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v69 = contactInformation;
          phoneNumber2 = [contactInformation phoneNumber];
          v16 = [phoneNumber2 countByEnumeratingWithState:&v74 objects:v85 count:16];
          if (!v16)
          {
            goto LABEL_22;
          }

          v17 = v16;
          v18 = *v75;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v75 != v18)
              {
                objc_enumerationMutation(phoneNumber2);
              }

              v20 = *(*(&v74 + 1) + 8 * i);
              v21 = v20;
              if (v20 && [v20 length])
              {
                v22 = objc_msgSend(v21, "stringByReplacingOccurrencesOfString:withString:", @"("), &stru_1F444C108;

                v23 = [v22 stringByReplacingOccurrencesOfString:@"" withString:?], &stru_1F444C108);

                v24 = [v23 stringByReplacingOccurrencesOfString:@"-" withString:&stru_1F444C108];

                v21 = [v24 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F444C108];

                if (!v21)
                {
                  continue;
                }

                [v14 addObject:v21];
              }
            }

            v17 = [phoneNumber2 countByEnumeratingWithState:&v74 objects:v85 count:16];
          }

          while (v17);
LABEL_22:

          v25 = objc_alloc(MEMORY[0x1E695DF70]);
          emailAddress = [v69 emailAddress];
          v27 = [v25 initWithCapacity:{objc_msgSend(emailAddress, "count")}];

          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          emailAddress2 = [v69 emailAddress];
          v29 = [emailAddress2 countByEnumeratingWithState:&v70 objects:v84 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v71;
            do
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v71 != v31)
                {
                  objc_enumerationMutation(emailAddress2);
                }

                v33 = *(*(&v70 + 1) + 8 * j);
                if ([v33 containsString:@"@"] && (objc_msgSend(v33, "containsString:", @".") & 1) != 0)
                {

                  [v27 addObject:v33];
                }

                else
                {
                }
              }

              v30 = [emailAddress2 countByEnumeratingWithState:&v70 objects:v84 count:16];
            }

            while (v30);
          }

          if ([v14 count] || objc_msgSend(v27, "count"))
          {
            contactInformation = v69;
            identifier = [v69 identifier];

            v7 = v65;
            v9 = v66;
            if (identifier)
            {
              predictionTimestamp = [v67 predictionTimestamp];
              v36 = [predictionTimestamp dateByAddingTimeInterval:self->_expirationDuration];

              predictionExpiration = [v67 predictionExpiration];
              if (predictionExpiration)
              {
                predictionExpiration2 = [v67 predictionExpiration];
                v62 = [predictionExpiration2 earlierDate:v36];
              }

              else
              {
                v62 = v36;
              }

              v39 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
              {
                phoneNumber3 = [v69 phoneNumber];
                *buf = 138412290;
                v83 = phoneNumber3;
                _os_log_impl(&dword_1C5126000, v39, OS_LOG_TYPE_DEBUG, "All Phone Numbers: %@", buf, 0xCu);
              }

              v41 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
              {
                emailAddress3 = [v69 emailAddress];
                *buf = 138412290;
                v83 = emailAddress3;
                _os_log_impl(&dword_1C5126000, v41, OS_LOG_TYPE_DEBUG, "All Email Addresses: %@", buf, 0xCu);
              }

              v43 = [MapsSuggestionsEntry alloc];
              GEOConfigGetDouble();
              v44 = [(MapsSuggestionsEntry *)v43 initWithType:24 title:@"Contact Activity" subtitle:@"From Biome/SmartReplies" weight:v62 expires:0 geoMapItem:0 sourceSpecificInfo:?];
              fullDisplayName = [v69 fullDisplayName];
              [(MapsSuggestionsEntry *)v44 setString:fullDisplayName forKey:@"MapsSuggestionsContactDisplayNameKey"];

              identifier2 = [v69 identifier];
              [(MapsSuggestionsEntry *)v44 setString:identifier2 forKey:@"MapsSuggestionsContactActivityPK"];

              [(MapsSuggestionsEntry *)v44 setString:@"MapsSuggestionsContactActivityPK" forKey:@"MapsSuggestionsPrimaryKey"];
              bundleID = [v67 bundleID];
              [(MapsSuggestionsEntry *)v44 setString:bundleID forKey:@"MapsSuggestionsOriginBundleIDKey"];

              v48 = [v27 copy];
              [(MapsSuggestionsEntry *)v44 setArray:v48 forKey:@"MapsSuggestionsContactAllEmailAddressesKey"];

              v49 = [v14 copy];
              [(MapsSuggestionsEntry *)v44 setArray:v49 forKey:@"MapsSuggestionsContactAllPhoneNumbersKey"];

              [(MapsSuggestionsEntry *)v44 setNumber:&unk_1F4470EA0 forKey:@"MapsSuggestionsContactActivityKey"];
              [(MapsSuggestionsEntry *)v44 setString:@"Messages" forKey:@"MapsSuggestionsOriginatingAppName"];
              v50 = objc_alloc(MEMORY[0x1E695DFA8]);
              v64 = [v50 initWithObjects:{MapsSuggestionsFindMyAppBundleID, 0}];
              bundleID2 = [v67 bundleID];

              if (bundleID2)
              {
                bundleID3 = [v67 bundleID];
                [v64 addObject:bundleID3];
              }

              v68 = v36;
              v53 = [v64 copy];
              [(MapsSuggestionsEntry *)v44 setSet:v53 forKey:@"MapsSuggestionsAssociatedBundleIDsKey"];

              if (!v65)
              {
                v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(obj, "count")}];
              }

              contactInformation = v69;
              identifier3 = [v69 identifier];
              v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@", identifier3, @"BMMapsRecentConversationsIntentActionTypeMeetup"];

              [v7 setObject:v44 forKeyedSubscript:v55];
              v9 = v66;
            }
          }

          else
          {
            v7 = v65;
            v9 = v66;
            contactInformation = v69;
          }

          v6 = v61;
          v8 = v60;
LABEL_50:

LABEL_51:
          ++v9;
        }

        while (v9 != v6);
        v6 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
        if (!v6)
        {
LABEL_59:

          allValues = [v7 allValues];
          v56 = [allValues copy];

          repliesCopy = v59;
          goto LABEL_60;
        }
      }
    }

    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "Not processing DirectionsSuggestionsFromSmartReplies because the switch is off", buf, 2u);
    }

    v56 = 0;
LABEL_60:
  }

  else
  {
    v56 = 0;
  }

  return v56;
}

- (BOOL)entriesFromFindMyWithCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (handlerCopy)
  {
    objc_initWeak(location, self);
    connector = self->_connector;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__MapsSuggestionsBiome_entriesFromFindMyWithCompletionHandler___block_invoke;
    v9[3] = &unk_1E81F5DD8;
    v10 = handlerCopy;
    objc_copyWeak(&v11, location);
    v6 = [(MapsSuggestionsBiomeConnector *)connector getFindMyStreamsWithHandler:v9];
    objc_destroyWeak(&v11);

    objc_destroyWeak(location);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBiome.m";
      v13 = 1024;
      v14 = 421;
      v15 = 2082;
      v16 = "[MapsSuggestionsBiome entriesFromFindMyWithCompletionHandler:]";
      v17 = 2082;
      v18 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Handler cannot be nil", location, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

void __63__MapsSuggestionsBiome_entriesFromFindMyWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "Error from X, %@", buf, 0xCu);
    }

    v8 = *(a1 + 32);
    v9 = [v6 firstObject];
    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      v11 = WeakRetained[2];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__MapsSuggestionsBiome_entriesFromFindMyWithCompletionHandler___block_invoke_205;
      block[3] = &unk_1E81F5DB0;
      objc_copyWeak(&v16, (a1 + 40));
      v14 = v5;
      v15 = *(a1 + 32);
      dispatch_async(v11, block);

      objc_destroyWeak(&v16);
    }

    else
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v18 = "MapsSuggestionsBiome.m";
        v19 = 1026;
        v20 = 427;
        v21 = 2082;
        v22 = "[MapsSuggestionsBiome entriesFromFindMyWithCompletionHandler:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
      }
    }
  }
}

void __63__MapsSuggestionsBiome_entriesFromFindMyWithCompletionHandler___block_invoke_205(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"eventTimestampBegin" ascending:1];
    v31 = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    v6 = [v3 sortedArrayUsingDescriptors:v5];

    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      log = v7;
      v26 = WeakRetained;
      v25 = v6;
      v8 = v6;
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v27 objects:buf count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v28;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v28 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v27 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = objc_alloc(MEMORY[0x1E696AEC0]);
              [v15 actionType];
              v17 = BMFindMyContactActivityEventTypeAsString();
              v18 = [v15 handle];
              v19 = [v15 eventTimestampBegin];
              v20 = [v16 initWithFormat:@"FindMy event ~%@~ occured with %@ at %@", v17, v18, v19];
              [v9 addObject:v20];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v27 objects:buf count:16];
        }

        while (v12);
      }

      v21 = [v9 copy];
      *buf = 138412290;
      v33 = v21;
      v7 = log;
      _os_log_impl(&dword_1C5126000, log, OS_LOG_TYPE_DEBUG, "Received a Stream from FindMy: %@", buf, 0xCu);

      WeakRetained = v26;
      v6 = v25;
    }

    v22 = [WeakRetained _entriesFromFindMy:v6];
    if (!v22)
    {
      v23 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v23, OS_LOG_TYPE_ERROR, "Received a Stream from FindMy but could not make any viable entries out of it", buf, 2u);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v33 = "MapsSuggestionsBiome.m";
      v34 = 1026;
      v35 = 429;
      v36 = 2082;
      v37 = "[MapsSuggestionsBiome entriesFromFindMyWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }

    v6 = v22;
  }
}

- (BOOL)entriesFromSmartRepliesWithCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (handlerCopy)
  {
    objc_initWeak(location, self);
    connector = self->_connector;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__MapsSuggestionsBiome_entriesFromSmartRepliesWithCompletionHandler___block_invoke;
    v9[3] = &unk_1E81F5DD8;
    v10 = handlerCopy;
    objc_copyWeak(&v11, location);
    v6 = [(MapsSuggestionsBiomeConnector *)connector getSmartRepliesStreamsWithHandler:v9];
    objc_destroyWeak(&v11);

    objc_destroyWeak(location);
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *location = 136446978;
      *&location[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBiome.m";
      v13 = 1024;
      v14 = 446;
      v15 = 2082;
      v16 = "[MapsSuggestionsBiome entriesFromSmartRepliesWithCompletionHandler:]";
      v17 = 2082;
      v18 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Handler cannot be nil", location, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

void __69__MapsSuggestionsBiome_entriesFromSmartRepliesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "Error from X, %@", buf, 0xCu);
    }

    v8 = *(a1 + 32);
    v9 = [v6 firstObject];
    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      v11 = WeakRetained[2];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__MapsSuggestionsBiome_entriesFromSmartRepliesWithCompletionHandler___block_invoke_210;
      block[3] = &unk_1E81F5DB0;
      objc_copyWeak(&v16, (a1 + 40));
      v14 = v5;
      v15 = *(a1 + 32);
      dispatch_async(v11, block);

      objc_destroyWeak(&v16);
    }

    else
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v18 = "MapsSuggestionsBiome.m";
        v19 = 1026;
        v20 = 452;
        v21 = 2082;
        v22 = "[MapsSuggestionsBiome entriesFromSmartRepliesWithCompletionHandler:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
      }
    }
  }
}

void __69__MapsSuggestionsBiome_entriesFromSmartRepliesWithCompletionHandler___block_invoke_210(uint64_t a1)
{
  v1 = a1;
  v48 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(v1 + 32);
    v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"predictionTimestamp" ascending:1];
    v41 = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    v6 = [v3 sortedArrayUsingDescriptors:v5];

    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      log = v7;
      v33 = v1;
      v34 = WeakRetained;
      v32 = v6;
      v8 = v6;
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v37 objects:buf count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v38;
        v35 = v9;
        v36 = *v38;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v38 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v37 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [v15 contactInformation];
              v17 = [v16 friendlyName];
              v18 = v17;
              if (v17)
              {
                v19 = v17;
              }

              else
              {
                v20 = v10;
                v21 = [v16 emailAddress];
                v22 = [v21 componentsJoinedByString:{@", "}];
                v23 = v22;
                if (v22)
                {
                  v19 = v22;
                }

                else
                {
                  v24 = [v16 phoneNumber];
                  v19 = [v24 componentsJoinedByString:{@", "}];

                  v9 = v35;
                }

                v10 = v20;
                v13 = v36;
              }

              v25 = objc_alloc(MEMORY[0x1E696AEC0]);
              v26 = [v15 predictionTimestamp];
              v27 = [v25 initWithFormat:@"Messages event occured with %@ at %@", v19, v26];
              [v9 addObject:v27];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v37 objects:buf count:16];
        }

        while (v12);
      }

      v28 = [v9 copy];
      *buf = 138412290;
      v43 = v28;
      v7 = log;
      _os_log_impl(&dword_1C5126000, log, OS_LOG_TYPE_DEBUG, "Received a Stream from SmartReplies: %@", buf, 0xCu);

      v1 = v33;
      WeakRetained = v34;
      v6 = v32;
    }

    v29 = [WeakRetained _entriesFromSmartReplies:v6];
    if (!v29)
    {
      v30 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v30, OS_LOG_TYPE_ERROR, "Received a Stream from SmartReplies but could not make any viable entries out of it", buf, 2u);
      }
    }

    (*(*(v1 + 40) + 16))();
  }

  else
  {
    v29 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v43 = "MapsSuggestionsBiome.m";
      v44 = 1026;
      v45 = 454;
      v46 = 2082;
      v47 = "[MapsSuggestionsBiome entriesFromSmartRepliesWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v29, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }

    v6 = v29;
  }
}

- (void)dealloc
{
  *&self->_registeredForSmartReplies = 0;
  connector = self->_connector;
  if (connector)
  {
    [(MapsSuggestionsBiomeConnector *)connector unregisterFindMyUpdates];
    [(MapsSuggestionsBiomeConnector *)self->_connector unregisterSmartRepliesUpdates];
  }

  v4.receiver = self;
  v4.super_class = MapsSuggestionsBiome;
  [(MapsSuggestionsBiome *)&v4 dealloc];
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

@end