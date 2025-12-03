@interface _GEODefaultsNotificationHelper
- (void)_notifyPeerOfChangedKeys:(id)keys options:(unint64_t)options;
- (void)geoXPCConnectionIsReadyToSend:(id)send;
@end

@implementation _GEODefaultsNotificationHelper

- (void)geoXPCConnectionIsReadyToSend:(id)send
{
  sendCopy = send;
  WeakRetained = objc_loadWeakRetained(&self->_peer);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    connection = [WeakRetained connection];

    if (connection == sendCopy)
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0;
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = sub_1000304A0;
      v23 = sub_1000304B0;
      v24 = 0;
      v17[0] = 0;
      v17[1] = v17;
      v17[2] = 0x2020000000;
      v18 = 0;
      isolater = self->_isolater;
      v9 = v6;
      v16 = v9;
      geo_isolate_sync();
      if ([v20[5] count] && v26[3])
      {
        v10 = GEOGetUserDefaultsLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          allObjects = [v20[5] allObjects];
          v12 = [allObjects componentsJoinedByString:{@", "}];
          *buf = 138412546;
          v30 = v9;
          v31 = 2114;
          v32 = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Notifying peer %@ of changed keys: %{public}@", buf, 0x16u);
        }

        v13 = [[GEOConfigKeyChangeNotification alloc] initWithTraits:0 auditToken:0 throttleToken:0];
        allObjects2 = [v20[5] allObjects];
        [v13 setKeyStrings:allObjects2];

        [v13 setKeyOptions:v26[3]];
        connection2 = [v9 connection];
        [v13 send:connection2];
      }

      _Block_object_dispose(v17, 8);
      _Block_object_dispose(&v19, 8);

      _Block_object_dispose(&v25, 8);
    }
  }
}

- (void)_notifyPeerOfChangedKeys:(id)keys options:(unint64_t)options
{
  keysCopy = keys;
  WeakRetained = objc_loadWeakRetained(&self->_peer);
  if (WeakRetained)
  {
    isolater = self->_isolater;
    v8 = keysCopy;
    v9 = WeakRetained;
    geo_isolate_sync();
  }
}

@end