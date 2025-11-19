@interface MCPOIBusynessLocationOfInterestManager
+ (MCPOIBusynessLocationOfInterestManager)sharedLocationOfInterestManagerInstance;
- (BOOL)isUserAtSuppressedLocationsOfInterest:(id)a3;
- (MCPOIBusynessLocationOfInterestManager)init;
- (id)suppressedLocationsOfInterestUUIDs;
- (void)_fetchLocationsOfInterest:(int64_t)a3 completionBlock:(id)a4;
- (void)fetchSuppressedLocationsOfInterestWithCompletionBlock:(id)a3;
@end

@implementation MCPOIBusynessLocationOfInterestManager

+ (MCPOIBusynessLocationOfInterestManager)sharedLocationOfInterestManagerInstance
{
  if (qword_1000232C8 != -1)
  {
    sub_10000F948();
  }

  v3 = qword_1000232C0;

  return v3;
}

- (MCPOIBusynessLocationOfInterestManager)init
{
  v7.receiver = self;
  v7.super_class = MCPOIBusynessLocationOfInterestManager;
  v2 = [(MCPOIBusynessLocationOfInterestManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.geocorrectiond.poibusynessloimanager", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;
  }

  return v2;
}

- (void)_fetchLocationsOfInterest:(int64_t)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "MCPOIBusynessLOIManager: fetching lois of type %d", buf, 8u);
  }

  dispatchQueue = self->_dispatchQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005050;
  v10[3] = &unk_10001C948;
  v11 = v6;
  v12 = a3;
  v9 = v6;
  dispatch_async(dispatchQueue, v10);
}

- (void)fetchSuppressedLocationsOfInterestWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = geo_isolater_create();
  v6 = +[NSMutableArray array];
  v7 = dispatch_group_create();
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000053B0;
  v20[3] = &unk_10001C970;
  v8 = v5;
  v21 = v8;
  v9 = v6;
  v22 = v9;
  v10 = v7;
  v23 = v10;
  v11 = objc_retainBlock(v20);
  for (i = 0; i != 3; ++i)
  {
    dispatch_group_enter(v10);
    [(MCPOIBusynessLocationOfInterestManager *)self _fetchLocationsOfInterest:qword_100013D48[i] completionBlock:v11];
  }

  dispatchQueue = self->_dispatchQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100005474;
  v16[3] = &unk_10001C8D8;
  v17 = v9;
  v18 = self;
  v19 = v4;
  v14 = v4;
  v15 = v9;
  dispatch_group_notify(v10, dispatchQueue, v16);
}

- (id)suppressedLocationsOfInterestUUIDs
{
  v3 = [NSMutableArray arrayWithCapacity:[(NSArray *)self->_suppressedLocationsOfInterest count]];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_suppressedLocationsOfInterest;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) identifier];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)isUserAtSuppressedLocationsOfInterest:(id)a3
{
  v4 = a3;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = self->_suppressedLocationsOfInterest;
  v42 = [(NSArray *)obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v42)
  {
    v41 = *v44;
    *&v5 = 134283777;
    v39 = v5;
    while (2)
    {
      for (i = 0; i != v42; i = i + 1)
      {
        if (*v44 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v43 + 1) + 8 * i);
        v8 = [v7 location];
        [v8 latitude];
        v10 = v9;
        v11 = [v7 location];
        [v11 longitude];
        v13 = CLLocationCoordinate2DMake(v10, v12);

        v14 = [CLLocation alloc];
        v15 = [v7 location];
        [v15 altitude];
        v17 = v16;
        v18 = [v7 location];
        [v18 horizontalUncertainty];
        v20 = v19;
        v21 = [v7 location];
        [v21 verticalUncertainty];
        v23 = v22;
        v24 = [v7 location];
        v25 = [v24 date];
        v26 = [v7 location];
        v27 = [v14 initWithCoordinate:v25 altitude:objc_msgSend(v26 horizontalAccuracy:"referenceFrame") verticalAccuracy:v13.latitude timestamp:v13.longitude referenceFrame:{v17, v20, v23}];

        [v27 distanceFromLocation:v4];
        v29 = v28;
        [v27 horizontalAccuracy];
        v31 = v30;
        [v4 horizontalAccuracy];
        v33 = v31 + v32;
        v34 = GEOGetPOIBusynessLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = v39;
          v48 = v29;
          v49 = 2049;
          v50 = v33;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "MCPOIBusynessLOIManager: distance: %{private}f accuracy: %{private}f", buf, 0x16u);
        }

        if (v29 <= v33)
        {
          v35 = 1;
          goto LABEL_13;
        }
      }

      v42 = [(NSArray *)obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (v42)
      {
        continue;
      }

      break;
    }
  }

  v35 = 0;
LABEL_13:

  v36 = GEOGetPOIBusynessLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = "NO";
    if (v35)
    {
      v37 = "YES";
    }

    *buf = 136380675;
    v48 = *&v37;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "MCPOIBusynessLOIManager: isUserAtSuppressedLocationsOfInterest : %{private}s", buf, 0xCu);
  }

  return v35;
}

@end