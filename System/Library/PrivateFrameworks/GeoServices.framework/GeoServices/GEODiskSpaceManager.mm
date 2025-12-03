@interface GEODiskSpaceManager
+ (GEODiskSpaceManager)sharedManager;
- (GEODiskSpaceManager)init;
- (GEODiskSpaceManager)initWithCacheDeleteID:(id)d;
- (id)_validVolume:(id)volume;
- (id)diskSpaceProviderForIdentifier:(id)identifier;
- (unint64_t)freePurgableDiskSpace:(unint64_t)space urgency:(int)urgency;
- (unint64_t)purgableDiskSpaceForUrgency:(int)urgency;
- (void)_registerCacheDeleteCallbacks;
- (void)addDiskSpaceProvider:(id)provider;
- (void)reportSignificantPurgableDiskSpaceUpdate;
@end

@implementation GEODiskSpaceManager

- (unint64_t)freePurgableDiskSpace:(unint64_t)space urgency:(int)urgency
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_freePurgableInProgress)
  {
    objc_sync_exit(selfCopy);

    v7 = 0;
  }

  else
  {
    selfCopy->_freePurgableInProgress = 1;
    objc_sync_exit(selfCopy);

    diskSpaceProviders = selfCopy->_diskSpaceProviders;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000322B4;
    v11[3] = &unk_100082900;
    v11[5] = &v13;
    v11[6] = space;
    urgencyCopy = urgency;
    v11[4] = selfCopy;
    [(NSMutableArray *)diskSpaceProviders enumerateObjectsWithOptions:1 usingBlock:v11];
    v9 = selfCopy;
    objc_sync_enter(v9);
    selfCopy->_freePurgableInProgress = 0;
    objc_sync_exit(v9);

    v7 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  return v7;
}

- (unint64_t)purgableDiskSpaceForUrgency:(int)urgency
{
  Current = CFAbsoluteTimeGetCurrent();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedPurgableTime = selfCopy->_cachedPurgableTime;
  if (Current - selfCopy->_cachedPurgableTime[urgency] < 60.0)
  {
    v10 = selfCopy->_cachedPurgableSpace[urgency];
    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);

    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    diskSpaceProviders = selfCopy->_diskSpaceProviders;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000324B0;
    v12[3] = &unk_1000828D8;
    urgencyCopy = urgency;
    v12[4] = selfCopy;
    v12[5] = &v14;
    [(NSMutableArray *)diskSpaceProviders enumerateObjectsWithOptions:1 usingBlock:v12];
    v9 = selfCopy;
    objc_sync_enter(v9);
    cachedPurgableTime[urgency] = Current;
    v9->_cachedPurgableSpace[urgency] = v15[3];
    objc_sync_exit(v9);

    v10 = v15[3];
    _Block_object_dispose(&v14, 8);
  }

  return v10;
}

- (void)reportSignificantPurgableDiskSpaceUpdate
{
  obj = self;
  objc_sync_enter(obj);
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - obj->_lastSignificantUpdate < 60.0)
  {
    objc_sync_exit(obj);
  }

  else
  {
    obj->_lastSignificantUpdate = Current;
    obj->_cachedPurgableTime[0] = 2.56734753e-289;
    objc_sync_exit(obj);

    v3 = [(GEODiskSpaceManager *)obj _validVolume:0];
    v4 = +[NSMutableDictionary dictionary];
    v5 = 1;
    do
    {
      v6 = [(GEODiskSpaceManager *)obj purgableDiskSpaceForUrgency:v5, obj];
      if (v6)
      {
        v7 = [NSNumber numberWithUnsignedLongLong:v6];
        v8 = [NSNumber numberWithInt:v5];
        [v4 setObject:v7 forKey:v8];
      }

      v5 = (v5 + 1);
    }

    while (v5 != 5);
    cacheDeleteID = obj->_cacheDeleteID;
    v12[0] = @"CACHE_DELETE_ID";
    v12[1] = @"CACHE_DELETE_VOLUME";
    v13[0] = cacheDeleteID;
    v13[1] = v3;
    v12[2] = @"CACHE_DELETE_AMOUNT";
    v13[2] = v4;
    v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
    CacheDeleteUpdatePurgeable();
  }
}

- (id)diskSpaceProviderForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = selfCopy->_diskSpaceProviders;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:identifierCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)addDiskSpaceProvider:(id)provider
{
  providerCopy = provider;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  diskSpaceProviders = selfCopy->_diskSpaceProviders;
  if (!diskSpaceProviders)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = selfCopy->_diskSpaceProviders;
    selfCopy->_diskSpaceProviders = v6;

    diskSpaceProviders = selfCopy->_diskSpaceProviders;
  }

  [(NSMutableArray *)diskSpaceProviders addObject:providerCopy];
  selfCopy->_cachedPurgableTime[0] = 2.56734753e-289;
  objc_sync_exit(selfCopy);
}

- (void)_registerCacheDeleteCallbacks
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Registering cache delete callbacks.", buf, 2u);
  }

  objc_initWeak(buf, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100032B98;
  v14[3] = &unk_1000828B0;
  objc_copyWeak(&v15, buf);
  v4 = objc_retainBlock(v14);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100032D28;
  v12[3] = &unk_1000828B0;
  objc_copyWeak(&v13, buf);
  v5 = objc_retainBlock(v12);
  cacheDeleteID = self->_cacheDeleteID;
  if (CacheDeleteRegisterInfoCallbacks())
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      v8 = "Cache delete callback registration failed!";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v9, v10, v8, v11, 2u);
    }
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      v8 = "Cache delete callback registration succeeded.";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEBUG;
      goto LABEL_8;
    }
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (id)_validVolume:(id)volume
{
  volumeCopy = volume;
  v4 = [GEOFilePaths urlFor:4];
  v5 = v4;
  if (v4)
  {
    v13 = 0;
    v6 = [v4 getResourceValue:&v13 forKey:NSURLVolumeURLKey error:0];
    v7 = v13;
    if (v6)
    {
      v8 = [volumeCopy objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
      v9 = [NSURL fileURLWithPath:v8];
      if ([v9 isEqual:v7])
      {
        v10 = v8;
      }

      else
      {
        v11 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138477827;
          v15 = v8;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Asked about a volume (%{private}@) we don't control.", buf, 0xCu);
        }

        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (GEODiskSpaceManager)initWithCacheDeleteID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = GEODiskSpaceManager;
  v5 = [(GEODiskSpaceManager *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    cacheDeleteID = v5->_cacheDeleteID;
    v5->_cacheDeleteID = v6;

    [(GEODiskSpaceManager *)v5 _registerCacheDeleteCallbacks];
  }

  return v5;
}

- (GEODiskSpaceManager)init
{
  result = [NSException raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

+ (GEODiskSpaceManager)sharedManager
{
  if (qword_100096098 != -1)
  {
    dispatch_once(&qword_100096098, &stru_100082888);
  }

  v3 = qword_100096090;

  return v3;
}

@end