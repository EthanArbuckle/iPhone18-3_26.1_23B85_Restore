@interface MapsSuggestionsWalletSource
+ (BOOL)isEnabled;
- (MapsSuggestionsWalletSource)initWithWallet:(id)a3 delegate:(id)a4 guardian:(id)a5 name:(id)a6;
- (double)updateSuggestionEntriesWithHandler:(id)a3;
- (id).cxx_construct;
- (id)initFromResourceDepot:(id)a3 name:(id)a4;
- (void)start;
- (void)stop;
@end

@implementation MapsSuggestionsWalletSource

- (void)start
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "start", v4, 2u);
  }

  [(MapsSuggestionsAppGuardian *)self->_guardian registerBundleID:MapsSuggestionsWalletAppBundleID withSource:self];
}

+ (BOOL)isEnabled
{
  BOOL = GEOConfigGetBOOL();
  if (BOOL)
  {

    LOBYTE(BOOL) = +[MapsSuggestionsWallet isAvailable];
  }

  return BOOL;
}

- (MapsSuggestionsWalletSource)initWithWallet:(id)a3 delegate:(id)a4 guardian:(id)a5 name:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    v24.receiver = self;
    v24.super_class = MapsSuggestionsWalletSource;
    v15 = [(MapsSuggestionsWalletSource *)&v24 initWithDelegate:v12 name:v14];
    if (v15)
    {
      v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      sub_100003654(buf, @"MapsSuggestionsWalletSourceQueue", v16);
      v17 = *buf;
      *buf = 0;
      innerQueue = v15->_queue._innerQueue;
      v15->_queue._innerQueue = v17;

      v19 = *&buf[8];
      *&buf[8] = 0;
      name = v15->_queue._name;
      v15->_queue._name = v19;

      objc_storeStrong(&v15->_wallet, a3);
      objc_storeStrong(&v15->_guardian, a5);
    }

    self = v15;
    v21 = self;
  }

  else
  {
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsWalletSource.mm";
      *&buf[12] = 1024;
      *&buf[14] = 53;
      v26 = 2082;
      v27 = "[MapsSuggestionsWalletSource initWithWallet:delegate:guardian:name:]";
      v28 = 2082;
      v29 = "nil == (wallet)";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a wallet", buf, 0x26u);
    }

    v21 = 0;
  }

  return v21;
}

- (id)initFromResourceDepot:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsWalletSource.mm";
      v18 = 1024;
      v19 = 68;
      v20 = 2082;
      v21 = "[MapsSuggestionsWalletSource initFromResourceDepot:name:]";
      v22 = 2082;
      v23 = "nil == (resourceDepot)";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to buid!", &v16, 0x26u);
    }

    goto LABEL_13;
  }

  v8 = [v6 oneSourceDelegate];

  if (!v8)
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsWalletSource.mm";
      v18 = 1024;
      v19 = 69;
      v20 = 2082;
      v21 = "[MapsSuggestionsWalletSource initFromResourceDepot:name:]";
      v22 = 2082;
      v23 = "nil == (resourceDepot.oneSourceDelegate)";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one SourceDelegate!", &v16, 0x26u);
    }

    goto LABEL_13;
  }

  v9 = [v6 oneNetworkRequester];

  if (!v9)
  {
    v14 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsWalletSource.mm";
      v18 = 1024;
      v19 = 70;
      v20 = 2082;
      v21 = "[MapsSuggestionsWalletSource initFromResourceDepot:name:]";
      v22 = 2082;
      v23 = "nil == (resourceDepot.oneNetworkRequester)";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one Network!", &v16, 0x26u);
    }

LABEL_13:

    v13 = 0;
    goto LABEL_14;
  }

  v10 = [[MapsSuggestionsWallet alloc] initFromResourceDepot:v6];
  v11 = [v6 oneSourceDelegate];
  v12 = [v6 oneAppGuardian];
  self = [(MapsSuggestionsWalletSource *)self initWithWallet:v10 delegate:v11 guardian:v12 name:v7];

  v13 = self;
LABEL_14:

  return v13;
}

- (void)stop
{
  [(MapsSuggestionsAppGuardian *)self->_guardian unregisterBundleID:MapsSuggestionsWalletAppBundleID withSource:self];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "stop", v3, 2u);
  }
}

- (double)updateSuggestionEntriesWithHandler:(id)a3
{
  v4 = a3;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(MapsSuggestionsWalletSource *)self uniqueName];
    *buf = 138412546;
    v32 = v6;
    v33 = 2080;
    v34 = "updateSuggestionEntriesWithHandler";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v7 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesWithHandler", "", buf, 2u);
  }

  objc_initWeak(&location, self);
  if ([(MapsSuggestionsAppGuardian *)self->_guardian isBundleIDLocked:MapsSuggestionsWalletAppBundleID forSource:self])
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100034CD8;
    v28[3] = &unk_100076038;
    v29 = v4;
    sub_100007A5C(&self->_queue, self, v28);

LABEL_23:
    v15 = 0.0;
    goto LABEL_24;
  }

  if ((+[MapsSuggestionsSiri isEnabled]& 1) == 0)
  {
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "User turned off Siri: we're not using our suggestions", buf, 2u);
    }

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100034E88;
    v26[3] = &unk_100076038;
    v27 = v4;
    sub_100007A5C(&self->_queue, self, v26);

    goto LABEL_23;
  }

  if (([MapsSuggestionsSiri canLearnFromBundleID:MapsSuggestionsWalletAppBundleID]& 1) == 0)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100035038;
    v24[3] = &unk_100076038;
    v25 = v4;
    sub_100007A5C(&self->_queue, self, v24);

    goto LABEL_23;
  }

  wallet = self->_wallet;
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1000351E8;
  v21 = &unk_100076088;
  objc_copyWeak(&v23, &location);
  v9 = v4;
  v22 = v9;
  if (![(MapsSuggestionsWallet *)wallet entriesFromPassesBefore:0 handler:&v18])
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MapsSuggestionsWallet will not call back!", buf, 2u);
    }

    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [(MapsSuggestionsWalletSource *)self uniqueName:v18];
      *buf = 138412546;
      v32 = v12;
      v33 = 2080;
      v34 = "updateSuggestionEntriesWithHandler";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s FAIL", buf, 0x16u);
    }

    v13 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "updateSuggestionEntriesWithHandler", "", buf, 2u);
    }

    if (v9)
    {
      v9[2](v9);
    }
  }

  GEOConfigGetDouble();
  v15 = v14;

  objc_destroyWeak(&v23);
LABEL_24:
  objc_destroyWeak(&location);

  return v15;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end