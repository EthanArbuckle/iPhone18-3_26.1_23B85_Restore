@interface MapsSuggestionsWallet
- (MapsSuggestionsEntry)_q_entryFromFlightPass:(uint64_t)pass;
- (MapsSuggestionsWallet)initWithConnector:(id)connector network:(id)network;
- (NSString)uniqueName;
- (char)entriesFromPassesBefore:(id)before handler:(id)handler;
- (char)hasExpressPaymentCardWithHandler:(id)handler;
- (char)hasPaymentCardWithHandler:(id)handler;
- (char)hasTransitPassWithHandler:(id)handler;
- (dispatch_queue_t)_q_entryFromPass:(dispatch_queue_t *)pass;
- (id).cxx_construct;
- (id)connector;
- (id)initFromResourceDepot:(id)depot;
- (uint64_t)_q_addLocationInfoToEntry:(void *)entry completion:;
- (void)_q_readPassesWithHandler:(void *)handler withEndDate:;
- (void)passKitDidChange:(id)change;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation MapsSuggestionsWallet

- (id)connector
{
  if (self)
  {
    self = self[3];
    v1 = vars8;
  }

  return self;
}

- (void)passKitDidChange:(id)change
{
  v9 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [changeCopy uniqueName];
    v7 = 138412290;
    v8 = uniqueName;
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_DEBUG, "Received passKitDidChange from:%@. CanKicking the notification.", &v7, 0xCu);
  }

  [(MapsSuggestionsCanKicker *)self->_changedNotificationCanKicker kickCanBySameTime];
}

- (MapsSuggestionsWallet)initWithConnector:(id)connector network:(id)network
{
  connectorCopy = connector;
  networkCopy = network;
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

    objc_storeStrong(&v9->_connector, connector);
    [(MapsSuggestionsWalletConnector *)v9->_connector setDelegate:v9];
    objc_storeStrong(&v9->_network, network);
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

  oneNetworkRequester = [depotCopy oneNetworkRequester];

  if (!oneNetworkRequester)
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

    selfCopy = 0;
    goto LABEL_10;
  }

  v7 = objc_alloc_init(MapsSuggestionsRealWalletConnector);
  oneNetworkRequester2 = [v5 oneNetworkRequester];
  self = [(MapsSuggestionsWallet *)self initWithConnector:v7 network:oneNetworkRequester2];

  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  observers = self->_observers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__MapsSuggestionsWallet_registerObserver___block_invoke;
  v6[3] = &unk_1E81F55C8;
  objc_copyWeak(&v7, &location);
  [(MapsSuggestionsObservers *)observers registerObserver:observerCopy handler:v6];

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

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  observers = self->_observers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__MapsSuggestionsWallet_unregisterObserver___block_invoke;
  v6[3] = &unk_1E81F55C8;
  objc_copyWeak(&v7, &location);
  [(MapsSuggestionsObservers *)observers unregisterObserver:observerCopy handler:v6];

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

- (char)entriesFromPassesBefore:(id)before handler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  beforeCopy = before;
  handlerCopy = handler;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsWallet *)self uniqueName];
    *buf = 138412546;
    v18 = uniqueName;
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
  v11 = handlerCopy;
  v16 = v11;
  v12 = beforeCopy;
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

- (void)_q_readPassesWithHandler:(void *)handler withEndDate:
{
  v70 = *MEMORY[0x1E69E9840];
  v41 = a2;
  handlerCopy = handler;
  if (self)
  {
    v43 = handlerCopy;
    dispatch_assert_queue_V2(self[1]);
    GEOFindOrCreateLog();
    v6 = val = self;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [val uniqueName];
      *buf = 138412546;
      v65 = uniqueName;
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
    if (handlerCopy)
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v65 = handlerCopy;
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "endDate for the request is non-nil: %@", buf, 0xCu);
      }
    }

    GEOConfigGetDouble();
    v42 = MapsSuggestionsNowWithOffset(-(v10 * 1000000000.0) / 1000000000.0);
    if (handlerCopy)
    {
      v11 = handlerCopy;
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

            style = [v20 style];
            if (style <= 0xA && ((1 << style) & 0x414) != 0)
            {

              relevantDates = [v21 relevantDates];
              firstObject = [relevantDates firstObject];
              date = [firstObject date];

              if (date && ([v47 containsDate:date] & 1) != 0)
              {
                v27 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
                {
                  localizedDescription = [v21 localizedDescription];
                  *buf = 138412290;
                  v65 = localizedDescription;
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

                  handlerCopy = v43;
                }

                objc_autoreleasePoolPop(v29);
              }

              else if (MapsSuggestionsLoggingIsVerbose())
              {
                v35 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  localizedDescription2 = [v21 localizedDescription];
                  *buf = 138412290;
                  v65 = localizedDescription2;
                  _os_log_impl(&dword_1C5126000, v35, OS_LOG_TYPE_DEBUG, "Skipping %@", buf, 0xCu);
                }

                v21 = date;
LABEL_41:

                goto LABEL_43;
              }

              v21 = date;
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

- (uint64_t)_q_addLocationInfoToEntry:(void *)entry completion:
{
  v5 = a2;
  entryCopy = entry;
  if (!self)
  {
    goto LABEL_8;
  }

  dispatch_assert_queue_V2(*(self + 8));
  if (!v5)
  {
    v13 = GEOFindOrCreateLog();
    [MapsSuggestionsWallet _q_addLocationInfoToEntry:v13 completion:?];
LABEL_11:
    self = 0;
    goto LABEL_8;
  }

  if (([v5 containsKey:@"MapsSuggestionsFlightFullTargetAirportKey"] & 1) == 0)
  {
    v14 = GEOFindOrCreateLog();
    [MapsSuggestionsWallet _q_addLocationInfoToEntry:v14 completion:?];
    goto LABEL_11;
  }

  objc_initWeak(&location, self);
  v7 = [v5 stringForKey:@"MapsSuggestionsFlightFullTargetAirportKey"];
  v8 = [*(self + 48) objectForKeyedSubscript:v7];
  if (v8)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__MapsSuggestionsWallet__q_addLocationInfoToEntry_completion___block_invoke;
    block[3] = &unk_1E81F5B78;
    objc_copyWeak(&v24, &location);
    v21 = v5;
    v22 = v8;
    v23 = entryCopy;
    v9 = *(self + 8);
    v10 = v8;
    dispatch_async(v9, block);

    objc_destroyWeak(&v24);
    self = 1;
  }

  else
  {
    v11 = *(self + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__MapsSuggestionsWallet__q_addLocationInfoToEntry_completion___block_invoke_208;
    v15[3] = &unk_1E81F6D98;
    v18 = entryCopy;
    objc_copyWeak(&v19, &location);
    v16 = v5;
    v17 = v7;
    self = MapsSuggestionsSearchAirport(v17, v11, v15);

    objc_destroyWeak(&v19);
  }

  objc_destroyWeak(&location);
LABEL_8:

  return self;
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

- (MapsSuggestionsEntry)_q_entryFromFlightPass:(uint64_t)pass
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (pass)
  {
    dispatch_assert_queue_V2(*(pass + 8));
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [pass uniqueName];
      *buf = 138412546;
      v67 = uniqueName;
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
      localizedDescription = [v3 localizedDescription];
      flightCode = [v3 flightCode];
      *buf = 138412546;
      v67 = localizedDescription;
      v68 = 2112;
      *v69 = flightCode;
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_DEBUG, "Trying %@ (%@)", buf, 0x16u);
    }

    fieldReader = [*(pass + 24) fieldReader];
    [fieldReader loadPass:v3];

    fieldReader2 = [*(pass + 24) fieldReader];
    combinedFlightCode = [fieldReader2 combinedFlightCode];

    fieldReader3 = [*(pass + 24) fieldReader];
    departureAirportCode = [fieldReader3 departureAirportCode];

    fieldReader4 = [*(pass + 24) fieldReader];
    arrivalAirportCode = [fieldReader4 arrivalAirportCode];

    fieldReader5 = [*(pass + 24) fieldReader];
    departureTerminal = [fieldReader5 departureTerminal];

    fieldReader6 = [*(pass + 24) fieldReader];
    departureGate = [fieldReader6 departureGate];

    fieldReader7 = [*(pass + 24) fieldReader];
    departureTime = [fieldReader7 departureTime];
    v20 = departureTime;
    if (departureTime)
    {
      date = departureTime;
    }

    else
    {
      relevantDates = [v3 relevantDates];
      firstObject = [relevantDates firstObject];
      date = [firstObject date];
    }

    fieldReader8 = [*(pass + 24) fieldReader];
    arrivalTime = [fieldReader8 arrivalTime];

    v25 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v67 = departureAirportCode;
      v68 = 2112;
      *v69 = combinedFlightCode;
      *&v69[8] = 2112;
      *&v69[10] = date;
      _os_log_impl(&dword_1C5126000, v25, OS_LOG_TYPE_DEBUG, "departureAirportCode=%@, fullFlightNumber=%@, departureTime=%@", buf, 0x20u);
    }

    if (departureAirportCode && combinedFlightCode && date)
    {
      v26 = combinedFlightCode;
      letterCharacterSet = [MEMORY[0x1E696AB08] letterCharacterSet];
      v28 = [v26 rangeOfCharacterFromSet:letterCharacterSet] == 0x7FFFFFFFFFFFFFFFLL;

      if (v28)
      {
        organizationName = [v3 organizationName];
        v30 = [@"JetBlue" isEqualToString:organizationName];

        if (v30)
        {
          v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"B6%@", v26];

          v26 = v31;
        }
      }

      v32 = v26;
      letterCharacterSet2 = [MEMORY[0x1E696AB08] letterCharacterSet];
      v34 = [v32 rangeOfCharacterFromSet:letterCharacterSet2] == 0x7FFFFFFFFFFFFFFFLL;

      if (v34)
      {
        organizationName2 = [v3 organizationName];
        v36 = [@"Spirit Airlines Inc" isEqualToString:organizationName2];

        if (v36)
        {
          v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NK%@", v32];

          v32 = v37;
        }
      }

      combinedFlightCode = v32;
      letterCharacterSet3 = [MEMORY[0x1E696AB08] letterCharacterSet];
      v39 = [combinedFlightCode rangeOfCharacterFromSet:letterCharacterSet3] == 0x7FFFFFFFFFFFFFFFLL;

      if (!v39)
      {
        v46 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v67 = combinedFlightCode;
          v68 = 2112;
          *v69 = departureAirportCode;
          *&v69[8] = 2112;
          *&v69[10] = date;
          _os_log_impl(&dword_1C5126000, v46, OS_LOG_TYPE_DEBUG, "Creating Entry for Flight %@ (%@ %@)", buf, 0x20u);
        }

        v47 = [MapsSuggestionsEntry alloc];
        GEOConfigGetDouble();
        v49 = v48;
        GEOConfigGetDouble();
        v50 = [date dateByAddingTimeInterval:?];
        v64[1] = @"MapsSuggestionsWalletPK";
        v65[0] = @"MapsSuggestionsWalletPK";
        v64[0] = @"MapsSuggestionsPrimaryKey";
        uniqueID = [v3 uniqueID];
        v65[1] = uniqueID;
        v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
        v45 = [(MapsSuggestionsEntry *)v47 initWithType:15 title:departureAirportCode subtitle:0 weight:v50 expires:0 geoMapItem:v52 sourceSpecificInfo:v49];

        [(MapsSuggestionsEntry *)v45 setString:combinedFlightCode forKey:@"MapsSuggestionsFullFlightNumberKey"];
        [(MapsSuggestionsEntry *)v45 setString:departureGate forKey:@"MapsSuggestionsFlightDepartureGateKey"];
        [(MapsSuggestionsEntry *)v45 setString:departureTerminal forKey:@"MapsSuggestionsFlightDepartureTerminalKey"];
        [(MapsSuggestionsEntry *)v45 setString:departureAirportCode forKey:@"MapsSuggestionsFlightDepartureAirportCodeKey"];
        [(MapsSuggestionsEntry *)v45 setString:arrivalAirportCode forKey:@"MapsSuggestionsFlightArrivalAirportCodeKey"];
        [(MapsSuggestionsEntry *)v45 setString:departureAirportCode forKey:@"MapsSuggestionsFlightFullTargetAirportKey"];
        [(MapsSuggestionsEntry *)v45 setDate:date forKey:@"MapsSuggestionsFlightDepartureTimeKey"];
        [(MapsSuggestionsEntry *)v45 setString:departureAirportCode forKey:@"MapsSuggestionsEntryTitleNameKey"];
        [(MapsSuggestionsEntry *)v45 setDate:date forKey:@"MapsSuggestionsScheduledTimeKey"];
        [(MapsSuggestionsEntry *)v45 setDate:arrivalTime forKey:@"MapsSuggestionsScheduledEndTimeKey"];
        v53 = objc_alloc(MEMORY[0x1E695DFD8]);
        v63 = MapsSuggestionsWalletAppBundleID;
        v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
        v40 = [v53 initWithArray:v54];

        [(MapsSuggestionsEntry *)v45 setSet:v40 forKey:@"MapsSuggestionsAssociatedBundleIDsKey"];
        v55 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          uniqueName2 = [pass uniqueName];
          *buf = 138412546;
          v67 = uniqueName2;
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
        v71 = combinedFlightCode;
        v72 = 2112;
        v73 = departureAirportCode;
        _os_log_impl(&dword_1C5126000, v40, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Full Flight number should not be all numeric: '%@' from %@", buf, 0x3Au);
      }
    }

    else
    {
      v41 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        uniqueID2 = [v3 uniqueID];
        *buf = 138412290;
        v67 = uniqueID2;
        _os_log_impl(&dword_1C5126000, v41, OS_LOG_TYPE_DEBUG, "Cannot do anything with %@", buf, 0xCu);
      }

      v43 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        uniqueName3 = [pass uniqueName];
        *buf = 138412546;
        v67 = uniqueName3;
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

- (dispatch_queue_t)_q_entryFromPass:(dispatch_queue_t *)pass
{
  v3 = a2;
  if (pass)
  {
    dispatch_assert_queue_V2(pass[1]);
    style = [v3 style];
    if (style == 4 || style == 10)
    {
      pass = [(MapsSuggestionsWallet *)pass _q_entryFromFlightPass:v3];
    }

    else
    {
      pass = 0;
    }
  }

  return pass;
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

- (char)hasTransitPassWithHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__MapsSuggestionsWallet_hasTransitPassWithHandler___block_invoke;
    v9[3] = &unk_1E81F6DE8;
    v10 = handlerCopy;
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

- (char)hasPaymentCardWithHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__MapsSuggestionsWallet_hasPaymentCardWithHandler___block_invoke;
    v9[3] = &unk_1E81F6DE8;
    v10 = handlerCopy;
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

- (char)hasExpressPaymentCardWithHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__MapsSuggestionsWallet_hasExpressPaymentCardWithHandler___block_invoke;
    v9[3] = &unk_1E81F6DE8;
    v10 = handlerCopy;
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