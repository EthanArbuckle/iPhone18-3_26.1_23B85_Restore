@interface MapsSuggestionsCarPlayFeeler
- (BOOL)updateSignals;
- (MapsSuggestionsCarPlayFeeler)initWithDelegate:(id)a3 name:(id)a4;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
@end

@implementation MapsSuggestionsCarPlayFeeler

- (BOOL)updateSignals
{
  v3 = sub_100003A44(self);
  sub_100015024(self, v3);
  return 1;
}

- (MapsSuggestionsCarPlayFeeler)initWithDelegate:(id)a3 name:(id)a4
{
  objc_initWeak(&location, a3);
  v6 = a4;
  v7 = objc_loadWeakRetained(&location);
  v16.receiver = self;
  v16.super_class = MapsSuggestionsCarPlayFeeler;
  v8 = [(MapsSuggestionsBaseFeeler *)&v16 initWithDelegate:v7 name:v6];

  if (v8)
  {
    v9 = [[MapsSuggestionsMutableSignalPack alloc] initWithCapacity:1];
    signalPack = v8->_signalPack;
    v8->_signalPack = v9;

    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v11 = qword_100085570;
    v22 = qword_100085570;
    if (!qword_100085570)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100015370;
      v18[3] = &unk_1000755D8;
      v18[4] = &v19;
      sub_100015370(v18);
      v11 = v20[3];
    }

    v12 = v11;
    _Block_object_dispose(&v19, 8);
    v13 = objc_alloc_init(v11);
    carSessionStatus = v8->_carSessionStatus;
    v8->_carSessionStatus = v13;

    [(CARSessionStatus *)v8->_carSessionStatus addSessionObserver:v8];
  }

  objc_destroyWeak(&location);
  return v8;
}

- (void)sessionDidConnect:(id)a3
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[MapsSuggestionsCarPlayFeeler sessionDidConnect:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s", &v5, 0xCu);
  }

  sub_100015024(self, 1u);
}

- (void)sessionDidDisconnect:(id)a3
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[MapsSuggestionsCarPlayFeeler sessionDidDisconnect:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s", &v5, 0xCu);
  }

  sub_100015024(self, 0);
}

@end