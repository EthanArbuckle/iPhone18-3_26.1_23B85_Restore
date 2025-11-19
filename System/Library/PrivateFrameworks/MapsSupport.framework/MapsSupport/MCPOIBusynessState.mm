@interface MCPOIBusynessState
+ (id)sharedState;
- (id)initInternal;
- (unint64_t)numberOfPlaceInferenceInLastDay;
- (unint64_t)numberOfRunsInLastDay;
- (unint64_t)numberOfRunsInLastHour;
- (void)_getLastDay:(id)a3;
- (void)_loadState;
- (void)_saveStateIsolated;
@end

@implementation MCPOIBusynessState

+ (id)sharedState
{
  if (qword_1000232B8 != -1)
  {
    sub_10000F934();
  }

  v3 = qword_1000232B0;

  return v3;
}

- (id)initInternal
{
  v9.receiver = self;
  v9.super_class = MCPOIBusynessState;
  v2 = [(MCPOIBusynessState *)&v9 init];
  if (v2)
  {
    v3 = geo_isolater_create();
    isolater = v2->_isolater;
    v2->_isolater = v3;

    [(MCPOIBusynessState *)v2 _loadState];
    global_queue = geo_get_global_queue();
    v6 = _GEOConfigAddBlockListenerForKey();
    stateListener = v2->_stateListener;
    v2->_stateListener = v6;
  }

  return v2;
}

- (void)_loadState
{
  isolater = self->_isolater;
  geo_assert_not_isolated();
  v4 = self->_isolater;
  geo_isolate_sync();
}

- (void)_saveStateIsolated
{
  isolater = self->_isolater;
  geo_assert_isolated();
  v10[0] = @"countPerHour";
  v4 = [NSNumber numberWithUnsignedInteger:self->_countPerHour];
  v11[0] = v4;
  v10[1] = @"countPerDay";
  v5 = [NSNumber numberWithUnsignedInteger:self->_countPerDay];
  v11[1] = v5;
  v10[2] = @"piCountPerDay";
  v6 = [NSNumber numberWithUnsignedInteger:self->_placeInferenceCountPerDay];
  lastHourReset = self->_lastHourReset;
  lastDayReset = self->_lastDayReset;
  v11[2] = v6;
  v11[3] = lastHourReset;
  v10[3] = @"lastHourReset";
  v10[4] = @"lastDayReset";
  v11[4] = lastDayReset;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:5];

  GEOConfigSetDictionary();
}

- (unint64_t)numberOfRunsInLastHour
{
  v3 = +[NSDate date];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  isolater = self->_isolater;
  v7 = v3;
  geo_isolate_sync();
  v5 = v9[3];

  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)_getLastDay:(id)a3
{
  v4 = a3;
  v5 = +[NSDate date];
  isolater = self->_isolater;
  v9 = v4;
  v7 = v4;
  v8 = v5;
  geo_isolate_sync();
}

- (unint64_t)numberOfRunsInLastDay
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004CEC;
  v4[3] = &unk_10001C628;
  v4[4] = self;
  v4[5] = &v5;
  [(MCPOIBusynessState *)self _getLastDay:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (unint64_t)numberOfPlaceInferenceInLastDay
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004DBC;
  v4[3] = &unk_10001C628;
  v4[4] = self;
  v4[5] = &v5;
  [(MCPOIBusynessState *)self _getLastDay:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

@end