@interface MDAnnouncementsManager
- (BOOL)_announcementRegionContainsCoordinate:(id)a3 coordinate:(id)a4;
- (BOOL)_announcementsDocumentNeedsUpdate:(id)a3 announcementsURL:(id)a4;
- (BOOL)_pointInPolygon:(CLLocationCoordinate2D)a3 polygonPoints:(CLLocationCoordinate2D *)a4 numberOfPolygonPoints:(unint64_t)a5;
- (MDAnnouncementsManager)initWithState:(id)a3;
- (id)_announcementsFilePath;
- (id)_announcementsFromDisk;
- (id)_announcementsURLPath;
- (id)_getAnnouncementWithID:(id)a3 announcementID:(id)a4;
- (void)_updateAnnouncementIfNecessary:(id)a3 withCompletionHandler:(id)a4;
- (void)_updateAnnouncementsDocumentFromURL:(id)a3 announcementsFromDisk:(id)a4 withCompletionHandler:(id)a5;
- (void)clearCurrentAnnouncement;
- (void)fetchActiveAnnouncement:(id)a3;
- (void)reset;
- (void)taskExpired;
- (void)update:(id)a3;
@end

@implementation MDAnnouncementsManager

- (id)_announcementsFromDisk
{
  v3 = [NSData alloc];
  v4 = [(MDAnnouncementsManager *)self _announcementsFilePath];
  v5 = [v3 initWithContentsOfURL:v4];

  if (v5)
  {
    v6 = [[GEOAvailableAnnouncements alloc] initWithData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_announcementsFilePath
{
  v2 = [NSFileManager alloc];
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Maps"];

  v4 = [v3 URLByAppendingPathComponent:@"Library/Caches/Announcements.pbd"];

  return v4;
}

- (MDAnnouncementsManager)initWithState:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MDAnnouncementsManager;
  v6 = [(MDAnnouncementsManager *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("MDAnnouncementsManagerQueue", v7);
    announcementsQueue = v6->_announcementsQueue;
    v6->_announcementsQueue = v8;

    objc_storeStrong(&v6->_state, a3);
  }

  return v6;
}

- (void)fetchActiveAnnouncement:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  announcementsQueue = self->_announcementsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000171B8;
  block[3] = &unk_10003D2B8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(announcementsQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)clearCurrentAnnouncement
{
  objc_initWeak(&location, self);
  announcementsQueue = self->_announcementsQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000173DC;
  v4[3] = &unk_10003CCB8;
  objc_copyWeak(&v5, &location);
  dispatch_async(announcementsQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)reset
{
  objc_initWeak(&location, self);
  announcementsQueue = self->_announcementsQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100017514;
  v4[3] = &unk_10003CCB8;
  objc_copyWeak(&v5, &location);
  dispatch_async(announcementsQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)update:(id)a3
{
  v4 = a3;
  if (([GEOKeyBagNotification canAccessFilesWithProtection:3]& 1) != 0)
  {
    objc_initWeak(location, self);
    announcementsQueue = self->_announcementsQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000178FC;
    v7[3] = &unk_10003D2B8;
    objc_copyWeak(&v9, location);
    v8 = v4;
    dispatch_async(announcementsQueue, v7);

    objc_destroyWeak(&v9);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot update announcements, the device has not been unlocked since boot", location, 2u);
    }

    v4[2](v4);
  }
}

- (void)_updateAnnouncementsDocumentFromURL:(id)a3 announcementsFromDisk:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = GEOFindOrCreateLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v12)
    {
      *buf = 138412290;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Fetch announcements from server @: %@", buf, 0xCu);
    }

    v13 = [[NSMutableURLRequest alloc] initWithURL:v8];
    [v13 setHTTPShouldHandleCookies:0];
    v14 = [MDState getDefault:@"AnnouncementsETag"];
    if (v14)
    {
      [v13 setValue:v14 forHTTPHeaderField:@"If-None-Match"];
    }

    v15 = +[NSURLSession sharedSession];
    v16 = MapsAppBundleId;
    v17 = [v15 configuration];
    [v17 set_sourceApplicationBundleIdentifier:v16];

    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100017C34;
    v23 = &unk_10003D300;
    v27 = v10;
    v24 = self;
    v25 = v9;
    v26 = v8;
    v18 = [v15 dataTaskWithRequest:v13 completionHandler:&v20];
    urlTask = self->_urlTask;
    self->_urlTask = v18;

    [(NSURLSessionDataTask *)self->_urlTask resume:v20];
  }

  else
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "No announcements URL present. Not updating announcements document", buf, 2u);
    }

    v10[2](v10);
  }
}

- (void)_updateAnnouncementIfNecessary:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Checking file for new announcements", buf, 2u);
  }

  GEOConfigGetDouble();
  v10 = v9;
  v11 = [(MDState *)self->_state locationManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000182D0;
  v14[3] = &unk_10003D328;
  v15 = v6;
  v16 = v7;
  v14[4] = self;
  v12 = v6;
  v13 = v7;
  [v11 fetchSingleLocationWithAccuracy:v14 timeout:v10 completionHandler:5.0];
}

- (BOOL)_announcementsDocumentNeedsUpdate:(id)a3 announcementsURL:(id)a4
{
  if (!a3)
  {
    return 1;
  }

  v4 = a4;
  v5 = [MDState getDefault:@"LastAnnouncementsURL"];
  v6 = [v4 absoluteString];

  LODWORD(v4) = [v6 isEqualToString:v5];
  if (v4)
  {
    v7 = [MDState getDefault:@"AnnouncementsLastUpdated"];
    [v7 doubleValue];
    v9 = v8;

    v10 = CFAbsoluteTimeGetCurrent() - v9;
    GEOConfigGetDouble();
    v12 = v10 > v11;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)_announcementRegionContainsCoordinate:(id)a3 coordinate:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = a3;
  v8 = v7;
  if (!v7 || ![v7 containsCoordinate:{var0, var1}])
  {
    goto LABEL_15;
  }

  if (![v8 vertexsCount] || !GEOConfigGetBOOL())
  {
LABEL_14:
    LOBYTE(v20) = 1;
    goto LABEL_16;
  }

  v22 = malloc_type_malloc(16 * [v8 vertexsCount], 0x1000040451B5BE8uLL);
  if (!v22)
  {
LABEL_15:
    LOBYTE(v20) = 0;
    goto LABEL_16;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [v8 vertexs];
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v24;
    do
    {
      v14 = 0;
      v15 = v22 + 16 * v12 + 8;
      v12 += v11;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v23 + 1) + 8 * v14);
        [v16 lat];
        v18 = v17;
        [v16 lng];
        *(v15 - 8) = CLLocationCoordinate2DMake(v18, v19);
        v14 = v14 + 1;
        v15 += 16;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v20 = -[MDAnnouncementsManager _pointInPolygon:polygonPoints:numberOfPolygonPoints:](self, "_pointInPolygon:polygonPoints:numberOfPolygonPoints:", v22, [v8 vertexsCount], var0, var1);
  free(v22);
  if (v20)
  {
    goto LABEL_14;
  }

LABEL_16:

  return v20;
}

- (id)_getAnnouncementWithID:(id)a3 announcementID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 unsignedIntValue];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v5 announcements];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if ([v14 announcementID] == v8)
          {
            v15 = v14;
            goto LABEL_12;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_12:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_announcementsURLPath
{
  v2 = GEOURLString();
  if ([v2 length])
  {
    v3 = +[GEOPlatform sharedPlatform];
    v4 = [v3 osVersion];

    v5 = +[GEOPlatform sharedPlatform];
    v6 = [v5 buildVersion];

    v7 = +[GEOPlatform sharedPlatform];
    v8 = [v7 hardwareIdentifier];

    if (v4 && v6 && v8)
    {
      v9 = +[NSLocale preferredLanguages];
      v10 = +[GEOResourceManifestManager modernManager];
      v11 = [v10 activeTileGroup];
      v12 = [v11 announcementsSupportedLanguages];

      v35 = v12;
      v13 = [NSLocale mostPreferredLanguageOf:v12 withPreferredLanguages:v9 forUsage:1 options:0];
      if (!v13)
      {
        v13 = [v9 firstObject];
        if (!v13)
        {
          v14 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "No preferredLanguages list found. Falling back to 'en'", buf, 2u);
          }

          v13 = @"en";
        }
      }

      v49[0] = @"os";
      v49[1] = @"os_version";
      v50[0] = @"ios";
      v50[1] = v4;
      v49[2] = @"os_build";
      v49[3] = @"hardware";
      v50[2] = v6;
      v50[3] = v8;
      v49[4] = @"lang";
      v34 = v13;
      v50[4] = v13;
      v42 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:5];
      v38 = v6;
      v39 = v4;
      v36 = v9;
      v37 = v8;
      if (qword_10004AC88 != -1)
      {
        sub_100021B94();
      }

      v15 = +[NSMutableString string];
      v40 = v2;
      [v2 rangeOfString:@"?"];
      v16 = @"&";
      if (!v17)
      {
        v16 = @"?";
      }

      v18 = v16;
      v19 = [v42 allKeys];
      v20 = [v19 sortedArrayUsingComparator:&stru_10003D388];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = v20;
      v21 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v44;
        v24 = 1;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v44 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v43 + 1) + 8 * i);
            v27 = [v42 objectForKey:v26];
            v28 = [v27 stringByAddingPercentEncodingWithAllowedCharacters:qword_10004AC80];

            v29 = @"&";
            if (v24)
            {
              v29 = v18;
            }

            [v15 appendFormat:@"%@%@=%@", v29, v26, v28];

            v24 = 0;
          }

          v22 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
          v24 = 0;
        }

        while (v22);
      }

      v30 = [v40 stringByAppendingString:v15];

      v31 = [NSURL URLWithString:v30];

      v2 = v30;
      v6 = v38;
      v4 = v39;
      v32 = v36;
      v8 = v37;
    }

    else
    {
      v32 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Device details could not be determined", buf, 2u);
      }

      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (BOOL)_pointInPolygon:(CLLocationCoordinate2D)a3 polygonPoints:(CLLocationCoordinate2D *)a4 numberOfPolygonPoints:(unint64_t)a5
{
  v5 = 0;
  if (a5)
  {
    v6 = 0;
    p_longitude = &a4->longitude;
    do
    {
      if (v6 < a5 - 1)
      {
        v8 = v6 + 1;
      }

      else
      {
        v8 = 0;
      }

      v9 = &a4[v8];
      longitude = v9->longitude;
      if (*p_longitude > longitude || *p_longitude == longitude && *(p_longitude - 1) > v9->latitude)
      {
        v11 = v8;
        v8 = v6;
      }

      else
      {
        longitude = *p_longitude;
        v11 = v6;
      }

      if (a3.longitude >= longitude)
      {
        v12 = &a4[v8];
        v13 = v12->longitude;
        if (a3.longitude < v13)
        {
          v14 = v13 - longitude;
          if (v14 != 0.0 && a3.latitude < (v12->latitude - a4[v11].latitude) * (a3.longitude - longitude) / v14 + a4[v11].latitude)
          {
            v5 ^= 1u;
          }
        }
      }

      ++v6;
      p_longitude += 2;
    }

    while (a5 != v6);
  }

  return v5 & 1;
}

- (void)taskExpired
{
  [(NSURLSessionDataTask *)self->_urlTask cancel];
  v3 = [(MDState *)self->_state locationManager];
  [v3 cancelSingleLocationFetch];
}

@end