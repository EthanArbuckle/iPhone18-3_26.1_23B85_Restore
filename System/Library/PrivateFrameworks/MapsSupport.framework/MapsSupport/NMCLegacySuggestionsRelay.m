@interface NMCLegacySuggestionsRelay
+ (id)sharedRelay;
- (NMCLegacySuggestionsRelay)init;
- (void)connection:(id)a3 didChangeDeviceNearby:(BOOL)a4;
- (void)dealloc;
@end

@implementation NMCLegacySuggestionsRelay

+ (id)sharedRelay
{
  if (qword_10009E7B8 != -1)
  {
    sub_100055BF8();
  }

  v3 = qword_10009E7B0;

  return v3;
}

- (NMCLegacySuggestionsRelay)init
{
  v9.receiver = self;
  v9.super_class = NMCLegacySuggestionsRelay;
  v2 = [(NMCLegacySuggestionsRelay *)&v9 init];
  if (v2)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Starting up", v8, 2u);
    }

    v4 = +[NMCGizmoConnection sharedInstance];
    v5 = [v4 addMessageObserverForType:55 callback:&stru_100086058];
    requestObserver = v2->_requestObserver;
    v2->_requestObserver = v5;

    [v4 addConnectionObserver:v2];
    -[NMCLegacySuggestionsRelay connection:didChangeDeviceNearby:](v2, "connection:didChangeDeviceNearby:", v4, [v4 isNearbyAndUsable]);
  }

  return v2;
}

- (void)connection:(id)a3 didChangeDeviceNearby:(BOOL)a4
{
  v4 = a4;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = @"not ";
    if (v4)
    {
      v6 = &stru_100087EB8;
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Device changed nearbyness: %@nearby. But ignoring it.", &v7, 0xCu);
  }
}

- (void)dealloc
{
  requestObserver = self->_requestObserver;
  if (requestObserver)
  {
    v4 = +[NMCGizmoConnection sharedInstance];
    [v4 removeMessageObserver:self->_requestObserver forType:55];

    requestObserver = self->_requestObserver;
  }

  self->_requestObserver = 0;

  v5.receiver = self;
  v5.super_class = NMCLegacySuggestionsRelay;
  [(NMCLegacySuggestionsRelay *)&v5 dealloc];
}

@end