@interface MapsSuggestionsWallet
- (MapsSuggestionsEntry)_q_entryFromFlightPass:(uint64_t)a1;
- (MapsSuggestionsWallet)initWithConnector:(id)a3 network:(id)a4;
- (NSString)uniqueName;
- (char)entriesFromPassesBefore:(id)a3 handler:(id)a4;
- (char)hasExpressPaymentCardWithHandler:(id)a3;
- (char)hasPaymentCardWithHandler:(id)a3;
- (char)hasTransitPassWithHandler:(id)a3;
- (dispatch_queue_t)_q_entryFromPass:(dispatch_queue_t *)a1;
- (id).cxx_construct;
- (id)connector;
- (id)initFromResourceDepot:(id)a3;
- (uint64_t)_q_addLocationInfoToEntry:(void *)a3 completion:;
- (void)_q_readPassesWithHandler:(void *)a3 withEndDate:;
- (void)passKitDidChange:(id)a3;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation MapsSuggestionsWallet

- (id)connector
{
  if (a1)
  {
    a1 = a1[3];
    v1 = vars8;
  }

  return a1;
}

- (void)passKitDidChange:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 uniqueName];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "Received passKitDidChange from:%@. CanKicking the notification.", &v7, 0xCu);
  }

  [(MapsSuggestionsCanKicker *)self->_changedNotificationCanKicker kickCanBySameTime];
}

- (MapsSuggestionsWallet)initWithConnector:(id)a3 network:(id)a4
{
  v7 = a3;
  v8 = a4;
  v32.receiver = self;
  v32.super_class = MapsSuggestionsWallet;
  v9 = [(MapsSuggestionsWallet *)&v32 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    MSg::Queue::Queue(&location, @"MapsSuggestionsWalletQueue", v10);
    v11 = location;
    location = 0;
    innerQueue = v9->_queue._innerQueue;
    v9->_queue._innerQueue = v11;

    v13 = v31;
    v31 = 0;
    name = v9->_queue._name;
    v9->_queue._name = v13;

    objc_storeStrong(&v9->_connector, a3);
    [(MapsSuggestionsWalletConnector *)v9->_connector setDelegate:v9];
    objc_storeStrong(&v9->_network, a4);
    v15 = [[MapsSuggestionsLimitedDictionary alloc] initWithMaximumCapacity:GEOConfigGetInteger()];
    airportCache = v9->_airportCache;
    v9->_airportCache = v15;

    v17 = [MapsSuggestionsObservers alloc];
    v18 = v9->_queue._innerQueue;
    v19 = [(MapsSuggestionsObservers *)v17 initWithCallbackQueue:v18 name:@"MapsSuggestionsWalletObservers"];
    observers = v9->_observers;
    v9->_observers = v19;

    objc_initWeak(&location, v9);
    v21 = [MapsSuggestionsCanKicker alloc];
    GEOConfigGetDouble();
    v23 = v22;
    v24 = v9->_queue._innerQueue;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __51__MapsSuggestionsWallet_initWithConnector_network___block_invoke;
    v28[3] = &unk_1E81F5208;
    objc_copyWeak(&v29, &location);
    v25 = [(MapsSuggestionsCanKicker *)v21 initWithName:@"MapsSuggestionsPassKitChangedNotificationCanKicker" time:v24 queue:v28 block:v23];
    changedNotificationCanKicker = v9->_changedNotificationCanKicker;
    v9->_changedNotificationCanKicker = v25;

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __51__MapsSuggestionsWallet_initWithConnector_network___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "Acting on one or more change notifications from PassKit", buf, 2u);
    }

    v4 = WeakRetained[5];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__MapsSuggestionsWallet_initWithConnector_network___block_invoke_198;
    v6[3] = &unk_1E81F6D20;
    objc_copyWeak(&v7, (a1 + 32));
    [v4 callBlock:v6];
    objc_destroyWeak(&v7);
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "MapsSuggestionsWallet.mm";
      v10 = 1026;
      v11 = 95;
      v12 = 2082;
      v13 = "[MapsSuggestionsWallet initWithConnector:network:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __51__MapsSuggestionsWallet_initWithConnector_network___block_invoke_198(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v3 passKitDidChange:WeakRetained];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "MapsSuggestionsWallet.mm";
      v8 = 1026;
      v9 = 98;
      v10 = 2082;
      v11 = "[MapsSuggestionsWallet initWithConnector:network:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelfCall went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

- (id)initFromResourceDepot:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsWallet.mm";
      v14 = 1024;
      v15 = 109;
      v16 = 2082;
      v17 = "[MapsSuggestionsWallet initFromResourceDepot:]";
      v18 = 2082;
      v19 = "nil == (resourceDepot)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to build from!", &v12, 0x26u);
    }

    goto LABEL_9;
  }

  v6 = [v4 oneNetworkRequester];

  if (!v6)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsWallet.mm";
      v14 = 1024;
      v15 = 110;
      v16 = 2082;
      v17 = "[MapsSuggestionsWallet initFromResourceDepot:]";
      v18 = 2082;
      v19 = "nil == (resourceDepot.oneNetworkRequester)";
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires One Network!", &v12, 0x26u);
    }

LABEL_9:

    v9 = 0;
    goto LABEL_10;
  }

  v7 = objc_alloc_init(MapsSuggestionsRealWalletConnector);
  v8 = [v5 oneNetworkRequester];
  self = [(MapsSuggestionsWallet *)self initWithConnector:v7 network:v8];

  v9 = self;
LABEL_10:

  return v9;
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  observers = self->_observers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__MapsSuggestionsWallet_registerObserver___block_invoke;
  v6[3] = &unk_1E81F55C8;
  objc_copyWeak(&v7, &location);
  [(MapsSuggestionsObservers *)observers registerObserver:v4 handler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __42__MapsSuggestionsWallet_registerObserver___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained[3] startListeningForChanges];
    }

    else
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = 136446722;
        v6 = "MapsSuggestionsWallet.mm";
        v7 = 1026;
        v8 = 134;
        v9 = 2082;
        v10 = "[MapsSuggestionsWallet registerObserver:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
      }
    }
  }
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  observers = self->_observers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__MapsSuggestionsWallet_unregisterObserver___block_invoke;
  v6[3] = &unk_1E81F55C8;
  objc_copyWeak(&v7, &location);
  [(MapsSuggestionsObservers *)observers unregisterObserver:v4 handler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __44__MapsSuggestionsWallet_unregisterObserver___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained[3] stopListeningForChanges];
    }

    else
    {
      v4 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = 136446722;
        v6 = "MapsSuggestionsWallet.mm";
        v7 = 1026;
        v8 = 146;
        v9 = 2082;
        v10 = "[MapsSuggestionsWallet unregisterObserver:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
      }
    }
  }
}

- (char)entriesFromPassesBefore:(id)a3 handler:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(MapsSuggestionsWallet *)self uniqueName];
    *buf = 138412546;
    v18 = v9;
    v19 = 2080;
    v20 = "entriesFromPassesBefore:handler:";
    _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v10 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "entriesFromPassesBefore:handler:", "", buf, 2u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__MapsSuggestionsWallet_entriesFromPassesBefore_handler___block_invoke;
  v14[3] = &unk_1E81F6D48;
  v11 = v7;
  v16 = v11;
  v12 = v6;
  v15 = v12;
  MSg::Queue::async<MapsSuggestionsWallet>(&self->_queue, self, v14);

  return 1;
}

void __57__MapsSuggestionsWallet_entriesFromPassesBefore_handler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [(MapsSuggestionsWallet *)v3 _q_readPassesWithHandler:*(a1 + 32) withEndDate:?];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [(dispatch_queue_t *)v3 uniqueName];
    v7 = 138412546;
    v8 = v5;
    v9 = 2080;
    v10 = "entriesFromPassesBefore:handler:";
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", &v7, 0x16u);
  }

  v6 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v6))
  {
    LOWORD(v7) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "entriesFromPassesBefore:handler:", "", &v7, 2u);
  }
}

- (void)_q_readPassesWithHandler:(void *)a3 withEndDate:
{
  v70 = *MEMORY[0x1E69E9840];
  v41 = a2;
  v5 = a3;
  if (a1)
  {
    v43 = v5;
    dispatch_assert_queue_V2(a1[1]);
    GEOFindOrCreateLog();
    v6 = val = a1;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [val uniqueName];
      *buf = 138412546;
      v65 = v7;
      v66 = 2080;
      *v67 = "_q_readPassesWithHandler";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v8 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_q_readPassesWithHandler", "", buf, 2u);
    }

    objc_initWeak(&location, val);
    group = dispatch_group_create();
    v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v5)
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v65 = v5;
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "endDate for the request is non-nil: %@", buf, 0xCu);
      }
    }

    GEOConfigGetDouble();
    v42 = MapsSuggestionsNowWithOffset(-(v10 * 1000000000.0) / 1000000000.0);
    if (v5)
    {
      v11 = v5;
    }

    else
    {
      GEOConfigGetDouble();
      v11 = MapsSuggestionsNowWithOffset((v12 * 1000000000.0) / 1000000000.0);
    }

    v13 = v11;
    if ([v11 compare:v42] == -1)
    {
      v39 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v65 = v13;
        v66 = 2112;
        *v67 = v42;
        _os_log_impl(&dword_1C5126000, v39, OS_LOG_TYPE_FAULT, "end date (%@) for request is before the start date (%@)!", buf, 0x16u);
      }

      if (!v41)
      {
        goto LABEL_51;
      }

      v47 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-13 reason:@"end date for the request is before the start date"];
      v41[2](v41, 0);
    }

    else
    {
      v14 = v42;
      v15 = v13;
      v47 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v14 endDate:v15];

      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v65 = v47;
        _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_DEBUG, "Looking for passes in window %@", buf, 0xCu);
      }

      context = objc_autoreleasePoolPush();
      [val[3] passesOfType:0];
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      obj = v59 = 0u;
      v17 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
      if (v17)
      {
        v18 = *v59;
        do
        {
          v49 = v17;
          for (i = 0; i != v49; ++i)
          {
            if (*v59 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v58 + 1) + 8 * i);
            v21 = v20;
            if (!v20)
            {
              v35 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446978;
                v65 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsWallet.mm";
                v66 = 1024;
                *v67 = 323;
                *&v67[4] = 2082;
                *&v67[6] = "BOOL _isSupportedPassStyle(PKPass *__strong)";
                v68 = 2082;
                v69 = "nil == (pass)";
                _os_log_impl(&dword_1C5126000, v35, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a pass", buf, 0x26u);
              }

              goto LABEL_41;
            }

            v22 = [v20 style];
            if (v22 <= 0xA && ((1 << v22) & 0x414) != 0)
            {

              v24 = [v21 relevantDates];
              v25 = [v24 firstObject];
              v26 = [v25 date];

              if (v26 && ([v47 containsDate:v26] & 1) != 0)
              {
                v27 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
                {
                  v28 = [v21 localizedDescription];
                  *buf = 138412290;
                  v65 = v28;
                  _os_log_impl(&dword_1C5126000, v27, OS_LOG_TYPE_DEBUG, "✅ Processing pass: %@", buf, 0xCu);
                }

                v29 = objc_autoreleasePoolPush();
                v30 = [(MapsSuggestionsWallet *)val _q_entryFromPass:v21];
                if (v30)
                {
                  [v45 addObject:v30];
                  dispatch_group_enter(group);
                  dispatch_group_enter(group);
                  v56[0] = MEMORY[0x1E69E9820];
                  v56[1] = 3221225472;
                  v56[2] = __62__MapsSuggestionsWallet__q_readPassesWithHandler_withEndDate___block_invoke;
                  v56[3] = &unk_1E81F6DC0;
                  v31 = group;
                  v57 = v31;
                  v32 = [(MapsSuggestionsWallet *)val _q_addLocationInfoToEntry:v30 completion:v56];
                  v33 = val[4];
                  v54[0] = MEMORY[0x1E69E9820];
                  v54[1] = 3221225472;
                  v54[2] = __62__MapsSuggestionsWallet__q_readPassesWithHandler_withEndDate___block_invoke_2;
                  v54[3] = &unk_1E81F6DC0;
                  v34 = v31;
                  v55 = v34;
                  MapsSuggestionsSetArrivalAirportFieldsForEntry(v30, v33, v54);
                  if (!v32)
                  {
                    dispatch_group_leave(v34);
                  }

                  v5 = v43;
                }

                objc_autoreleasePoolPop(v29);
              }

              else if (MapsSuggestionsLoggingIsVerbose())
              {
                v35 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  v36 = [v21 localizedDescription];
                  *buf = 138412290;
                  v65 = v36;
                  _os_log_impl(&dword_1C5126000, v35, OS_LOG_TYPE_DEBUG, "Skipping %@", buf, 0xCu);
                }

                v21 = v26;
LABEL_41:

                goto LABEL_43;
              }

              v21 = v26;
            }

LABEL_43:
          }

          v17 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
        }

        while (v17);
      }

      objc_autoreleasePoolPop(context);
      v37 = val[1];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__MapsSuggestionsWallet__q_readPassesWithHandler_withEndDate___block_invoke_3;
      block[3] = &unk_1E81F5B00;
      v38 = v37;
      objc_copyWeak(&v53, &location);
      v51 = v45;
      v52 = v41;
      dispatch_group_notify(group, v38, block);

      objc_destroyWeak(&v53);
    }

LABEL_51:
    objc_destroyWeak(&location);
  }
}

- (uint64_t)_q_addLocationInfoToEntry:(void *)a3 completion:
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_8;
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  if (!v5)
  {
    v13 = GEOFindOrCreateLog();
    [MapsSuggestionsWallet _q_addLocationInfoToEntry:v13 completion:?];
LABEL_11:
    a1 = 0;
    goto LABEL_8;
  }

  if (([v5 containsKey:@"MapsSuggestionsFlightFullTargetAirportKey"] & 1) == 0)
  {
    v14 = GEOFindOrCreateLog();
    [MapsSuggestionsWallet _q_addLocationInfoToEntry:v14 completion:?];
    goto LABEL_11;
  }

  objc_initWeak(&location, a1);
  v7 = [v5 stringForKey:@"MapsSuggestionsFlightFullTargetAirportKey"];
  v8 = [*(a1 + 48) objectForKeyedSubscript:v7];
  if (v8)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__MapsSuggestionsWallet__q_addLocationInfoToEntry_completion___block_invoke;
    block[3] = &unk_1E81F5B78;
    objc_copyWeak(&v24, &location);
    v21 = v5;
    v22 = v8;
    v23 = v6;
    v9 = *(a1 + 8);
    v10 = v8;
    dispatch_async(v9, block);

    objc_destroyWeak(&v24);
    a1 = 1;
  }

  else
  {
    v11 = *(a1 + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__MapsSuggestionsWallet__q_addLocationInfoToEntry_completion___block_invoke_208;
    v15[3] = &unk_1E81F6D98;
    v18 = v6;
    objc_copyWeak(&v19, &location);
    v16 = v5;
    v17 = v7;
    a1 = MapsSuggestionsSearchAirport(v17, v11, v15);

    objc_destroyWeak(&v19);
  }

  objc_destroyWeak(&location);
LABEL_8:

  return a1;
}

void __62__MapsSuggestionsWallet__q_addLocationInfoToEntry_completion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = MapsSuggestionsSetLocationFromMapItem(*(a1 + 32), *(a1 + 40), 9);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsWallet.mm";
      v7 = 1026;
      v8 = 192;
      v9 = 2082;
      v10 = "[MapsSuggestionsWallet _q_addLocationInfoToEntry:completion:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void __62__MapsSuggestionsWallet__q_addLocationInfoToEntry_completion___block_invoke_208(id *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 || [v5 count] != 1)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *v17 = [v5 count];
      *&v17[4] = 2112;
      *&v17[6] = v6;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "Could not get airport code in %u mapItems, error: %@", buf, 0x12u);
    }

    (*(a1[6] + 2))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    if (WeakRetained)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__MapsSuggestionsWallet__q_addLocationInfoToEntry_completion___block_invoke_209;
      block[3] = &unk_1E81F6D70;
      objc_copyWeak(&v15, a1 + 7);
      v11 = v5;
      v14 = a1[6];
      v12 = a1[4];
      v13 = a1[5];
      dispatch_async(WeakRetained[1], block);

      objc_destroyWeak(&v15);
    }

    else
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *v17 = "MapsSuggestionsWallet.mm";
        *&v17[8] = 1026;
        *&v17[10] = 210;
        v18 = 2082;
        v19 = "[MapsSuggestionsWallet _q_addLocationInfoToEntry:completion:]_block_invoke";
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
      }
    }
  }
}

void __62__MapsSuggestionsWallet__q_addLocationInfoToEntry_completion___block_invoke_209(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) firstObject];
    v4 = MapsSuggestionsMapItemConvertIfNeeded(v3);

    if (MapsSuggestionsMapItemIsAirport(v4))
    {
      if (!MapsSuggestionsMapItemIsVenue(v4))
      {
        v5 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v6 = [v4 name];
          v10 = 138412290;
          v11 = v6;
          _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "Airport '%@' is not a Venue, but that's ok", &v10, 0xCu);
        }
      }

      v7 = MapsSuggestionsSetLocationFromMapItem(*(a1 + 40), v4, 9);
      [WeakRetained[6] setObject:v4 forKeyedSubscript:*(a1 + 48)];
    }

    else
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v4 name];
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "Airport '%@' is not actually an Airport", &v10, 0xCu);
      }
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "MapsSuggestionsWallet.mm";
      v12 = 1026;
      v13 = 212;
      v14 = 2082;
      v15 = "[MapsSuggestionsWallet _q_addLocationInfoToEntry:completion:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: innerStrongSelf went away in %{public}s", &v10, 0x1Cu);
    }
  }
}

- (MapsSuggestionsEntry)_q_entryFromFlightPass:(uint64_t)a1
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [a1 uniqueName];
      *buf = 138412546;
      v67 = v5;
      v68 = 2080;
      *v69 = "_entryFromFlightPass";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v6 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5126000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_entryFromFlightPass", "", buf, 2u);
    }

    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v3 localizedDescription];
      v9 = [v3 flightCode];
      *buf = 138412546;
      v67 = v8;
      v68 = 2112;
      *v69 = v9;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "Trying %@ (%@)", buf, 0x16u);
    }

    v10 = [*(a1 + 24) fieldReader];
    [v10 loadPass:v3];

    v11 = [*(a1 + 24) fieldReader];
    v12 = [v11 combinedFlightCode];

    v13 = [*(a1 + 24) fieldReader];
    v14 = [v13 departureAirportCode];

    v15 = [*(a1 + 24) fieldReader];
    v62 = [v15 arrivalAirportCode];

    v16 = [*(a1 + 24) fieldReader];
    v61 = [v16 departureTerminal];

    v17 = [*(a1 + 24) fieldReader];
    v60 = [v17 departureGate];

    v18 = [*(a1 + 24) fieldReader];
    v19 = [v18 departureTime];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v22 = [v3 relevantDates];
      v23 = [v22 firstObject];
      v21 = [v23 date];
    }

    v24 = [*(a1 + 24) fieldReader];
    v59 = [v24 arrivalTime];

    v25 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v67 = v14;
      v68 = 2112;
      *v69 = v12;
      *&v69[8] = 2112;
      *&v69[10] = v21;
      _os_log_impl(&dword_1C5126000, v25, OS_LOG_TYPE_DEBUG, "departureAirportCode=%@, fullFlightNumber=%@, departureTime=%@", buf, 0x20u);
    }

    if (v14 && v12 && v21)
    {
      v26 = v12;
      v27 = [MEMORY[0x1E696AB08] letterCharacterSet];
      v28 = [v26 rangeOfCharacterFromSet:v27] == 0x7FFFFFFFFFFFFFFFLL;

      if (v28)
      {
        v29 = [v3 organizationName];
        v30 = [@"JetBlue" isEqualToString:v29];

        if (v30)
        {
          v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"B6%@", v26];

          v26 = v31;
        }
      }

      v32 = v26;
      v33 = [MEMORY[0x1E696AB08] letterCharacterSet];
      v34 = [v32 rangeOfCharacterFromSet:v33] == 0x7FFFFFFFFFFFFFFFLL;

      if (v34)
      {
        v35 = [v3 organizationName];
        v36 = [@"Spirit Airlines Inc" isEqualToString:v35];

        if (v36)
        {
          v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NK%@", v32];

          v32 = v37;
        }
      }

      v12 = v32;
      v38 = [MEMORY[0x1E696AB08] letterCharacterSet];
      v39 = [v12 rangeOfCharacterFromSet:v38] == 0x7FFFFFFFFFFFFFFFLL;

      if (!v39)
      {
        v46 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v67 = v12;
          v68 = 2112;
          *v69 = v14;
          *&v69[8] = 2112;
          *&v69[10] = v21;
          _os_log_impl(&dword_1C5126000, v46, OS_LOG_TYPE_DEBUG, "Creating Entry for Flight %@ (%@ %@)", buf, 0x20u);
        }

        v47 = [MapsSuggestionsEntry alloc];
        GEOConfigGetDouble();
        v49 = v48;
        GEOConfigGetDouble();
        v50 = [v21 dateByAddingTimeInterval:?];
        v64[1] = @"MapsSuggestionsWalletPK";
        v65[0] = @"MapsSuggestionsWalletPK";
        v64[0] = @"MapsSuggestionsPrimaryKey";
        v51 = [v3 uniqueID];
        v65[1] = v51;
        v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
        v45 = [(MapsSuggestionsEntry *)v47 initWithType:15 title:v14 subtitle:0 weight:v50 expires:0 geoMapItem:v52 sourceSpecificInfo:v49];

        [(MapsSuggestionsEntry *)v45 setString:v12 forKey:@"MapsSuggestionsFullFlightNumberKey"];
        [(MapsSuggestionsEntry *)v45 setString:v60 forKey:@"MapsSuggestionsFlightDepartureGateKey"];
        [(MapsSuggestionsEntry *)v45 setString:v61 forKey:@"MapsSuggestionsFlightDepartureTerminalKey"];
        [(MapsSuggestionsEntry *)v45 setString:v14 forKey:@"MapsSuggestionsFlightDepartureAirportCodeKey"];
        [(MapsSuggestionsEntry *)v45 setString:v62 forKey:@"MapsSuggestionsFlightArrivalAirportCodeKey"];
        [(MapsSuggestionsEntry *)v45 setString:v14 forKey:@"MapsSuggestionsFlightFullTargetAirportKey"];
        [(MapsSuggestionsEntry *)v45 setDate:v21 forKey:@"MapsSuggestionsFlightDepartureTimeKey"];
        [(MapsSuggestionsEntry *)v45 setString:v14 forKey:@"MapsSuggestionsEntryTitleNameKey"];
        [(MapsSuggestionsEntry *)v45 setDate:v21 forKey:@"MapsSuggestionsScheduledTimeKey"];
        [(MapsSuggestionsEntry *)v45 setDate:v59 forKey:@"MapsSuggestionsScheduledEndTimeKey"];
        v53 = objc_alloc(MEMORY[0x1E695DFD8]);
        v63 = MapsSuggestionsWalletAppBundleID;
        v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
        v40 = [v53 initWithArray:v54];

        [(MapsSuggestionsEntry *)v45 setSet:v40 forKey:@"MapsSuggestionsAssociatedBundleIDsKey"];
        v55 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          v56 = [a1 uniqueName];
          *buf = 138412546;
          v67 = v56;
          v68 = 2080;
          *v69 = "_entryFromFlightPass";
          _os_log_impl(&dword_1C5126000, v55, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
        }

        v57 = GEOFindOrCreateLog();
        [MapsSuggestionsWallet _q_entryFromFlightPass:v57];
        goto LABEL_37;
      }

      v40 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136447490;
        v67 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsWallet.mm";
        v68 = 1024;
        *v69 = 268;
        *&v69[4] = 2082;
        *&v69[6] = "[MapsSuggestionsWallet _q_entryFromFlightPass:]";
        *&v69[14] = 2082;
        *&v69[16] = "_isAllNumeric(fullFlightNumber)";
        v70 = 2112;
        v71 = v12;
        v72 = 2112;
        v73 = v14;
        _os_log_impl(&dword_1C5126000, v40, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Full Flight number should not be all numeric: '%@' from %@", buf, 0x3Au);
      }
    }

    else
    {
      v41 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v42 = [v3 uniqueID];
        *buf = 138412290;
        v67 = v42;
        _os_log_impl(&dword_1C5126000, v41, OS_LOG_TYPE_DEBUG, "Cannot do anything with %@", buf, 0xCu);
      }

      v43 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        v44 = [a1 uniqueName];
        *buf = 138412546;
        v67 = v44;
        v68 = 2080;
        *v69 = "_entryFromFlightPass";
        _os_log_impl(&dword_1C5126000, v43, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
      }

      v40 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v40))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v40, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_entryFromFlightPass", "", buf, 2u);
      }
    }

    v45 = 0;
LABEL_37:

    goto LABEL_38;
  }

  v45 = 0;
LABEL_38:

  return v45;
}

- (dispatch_queue_t)_q_entryFromPass:(dispatch_queue_t *)a1
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(a1[1]);
    v4 = [v3 style];
    if (v4 == 4 || v4 == 10)
    {
      a1 = [(MapsSuggestionsWallet *)a1 _q_entryFromFlightPass:v3];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void __62__MapsSuggestionsWallet__q_readPassesWithHandler_withEndDate___block_invoke_3(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v4 = MapsSuggestionsCurrentBestLocation();

    if (v4)
    {
      GEOConfigGetDouble();
      v6 = v5;
      v26 = 0.0;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v7 = *(a1 + 32);
      v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v8)
      {
        v9 = *v23;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v23 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v22 + 1) + 8 * i);
            v12 = [v11 geoMapItem];
            v13 = v12 == 0;

            if (!v13)
            {
              MapsSuggestionsDistanceFromHereToEntry(v11, &v26);
              [v11 setBoolean:v26 < v6 forKey:{@"MapsSuggestionsAlreadyThereKey", v26}];
              [v3 addObject:v11];
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v8);
      }

      v14 = *(a1 + 40);
      if (v14)
      {
        v15 = [v3 copy];
        (*(v14 + 16))(v14, v15, 0);
      }

      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = [WeakRetained uniqueName];
        *buf = 138412546;
        v29 = v17;
        v30 = 2080;
        *v31 = "_q_readPassesWithHandler";
        _os_log_impl(&dword_1C5126000, v16, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s END", buf, 0x16u);
      }

      v18 = GEOFindOrCreateLog();
      if (os_signpost_enabled(v18))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5126000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_q_readPassesWithHandler", "", buf, 2u);
      }
    }

    else
    {
      v19 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_DEBUG, "No current location, keeping what we had", buf, 2u);
      }

      v20 = *(a1 + 40);
      if (v20)
      {
        v21 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-13 reason:@"No current location"];
        (*(v20 + 16))(v20, 0, v21);
      }
    }
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v29 = "MapsSuggestionsWallet.mm";
      v30 = 1026;
      *v31 = 410;
      *&v31[4] = 2082;
      *&v31[6] = "[MapsSuggestionsWallet _q_readPassesWithHandler:withEndDate:]_block_invoke_3";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

- (char)hasTransitPassWithHandler:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__MapsSuggestionsWallet_hasTransitPassWithHandler___block_invoke;
    v9[3] = &unk_1E81F6DE8;
    v10 = v4;
    MSg::Queue::async<MapsSuggestionsWallet>(&self->_queue, self, v9);
    v6 = 1;
    v7 = v10;
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsWallet.mm";
      v13 = 1024;
      v14 = 448;
      v15 = 2082;
      v16 = "[MapsSuggestionsWallet hasTransitPassWithHandler:]";
      v17 = 2082;
      v18 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

void __51__MapsSuggestionsWallet_hasTransitPassWithHandler___block_invoke(uint64_t a1, id *a2)
{
  v3 = [(MapsSuggestionsWallet *)a2 connector];
  v4 = [v3 passesOfType:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZL19_passesWithCardType17PKPaymentCardTypeP34MapsSuggestionsRealWalletConnector_block_invoke;
  v7[3] = &__block_descriptor_40_e8_B16__0_8l;
  v7[4] = 2;
  v5 = [v4 MSg_copyIf:v7];

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, [v5 count] != 0, 0);
  }
}

- (char)hasPaymentCardWithHandler:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__MapsSuggestionsWallet_hasPaymentCardWithHandler___block_invoke;
    v9[3] = &unk_1E81F6DE8;
    v10 = v4;
    MSg::Queue::async<MapsSuggestionsWallet>(&self->_queue, self, v9);
    v6 = 1;
    v7 = v10;
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsWallet.mm";
      v13 = 1024;
      v14 = 460;
      v15 = 2082;
      v16 = "[MapsSuggestionsWallet hasPaymentCardWithHandler:]";
      v17 = 2082;
      v18 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

- (char)hasExpressPaymentCardWithHandler:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__MapsSuggestionsWallet_hasExpressPaymentCardWithHandler___block_invoke;
    v9[3] = &unk_1E81F6DE8;
    v10 = v4;
    MSg::Queue::async<MapsSuggestionsWallet>(&self->_queue, self, v9);
    v6 = 1;
    v7 = v10;
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsWallet.mm";
      v13 = 1024;
      v14 = 473;
      v15 = 2082;
      v16 = "[MapsSuggestionsWallet hasExpressPaymentCardWithHandler:]";
      v17 = 2082;
      v18 = "nil == (handler)";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a completion handler", buf, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

void __51__MapsSuggestionsWallet_hasPaymentCardWithHandler___block_invoke(uint64_t a1, id *a2)
{
  v3 = [(MapsSuggestionsWallet *)a2 connector];
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = v3;
    v5 = [v3 defaultPass];
    (*(v4 + 16))(v4, v5 != 0, 0);

    v3 = v6;
  }
}

void __58__MapsSuggestionsWallet_hasExpressPaymentCardWithHandler___block_invoke(uint64_t a1, id *a2)
{
  v3 = [(MapsSuggestionsWallet *)a2 connector];
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = v3;
    v5 = [v3 defaultPass];
    (*(v4 + 16))(v4, [v6 expressSupportedByPass:v5], 0);

    v3 = v6;
  }
}

- (void)_q_addLocationInfoToEntry:(NSObject *)a1 completion:.cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires airport code", v4, v5, v6, v7, 2u);
  }
}

- (void)_q_addLocationInfoToEntry:(NSObject *)a1 completion:.cold.2(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires entry", v4, v5, v6, v7, 2u);
  }
}

- (void)_q_entryFromFlightPass:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (os_signpost_enabled(a1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5126000, a1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_entryFromFlightPass", "", v2, 2u);
  }
}

@end