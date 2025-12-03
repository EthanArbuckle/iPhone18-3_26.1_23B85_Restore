@interface BDSBookWidgetDataUpdater
- (BDSBookWidgetDataUpdater)initWithWidgetCenterManager:(id)manager managedObjectContext:(id)context;
- (BOOL)_moc_updateAndMonitorProgressForWidgetDatas:(id)datas;
- (BOOL)_moc_updateWidgetDataFromWidgetInfo:(id)info;
- (BOOL)_moc_updateWidgetDatas:(id)datas fromAssetDetails:(id)details;
- (BOOL)isExplicitMaterialAllowed;
- (NSArray)currentWidgetDatas;
- (NSDictionary)currentWidgetDatasByAssetID;
- (float)_roundReadingProgressLikeBooksApp:(float)app isFinished:(BOOL)finished;
- (id)_newWidgetInfoFetchRequest;
- (void)_handleSignificantTimeChangeNotification:(id)notification;
- (void)_moc_updateAndMonitorBookWidgetInfo;
- (void)_readCurrentWidgetDatas;
- (void)_saveCurrentWidgetDatas;
- (void)_saveWidgetDatasWithWidgetDatasHaveChanged:(BOOL)changed;
- (void)_startObserving;
- (void)_stopObserving;
- (void)controller:(id)controller didChangeContentWithDifference:(id)difference;
- (void)dealloc;
- (void)reloadWidgetTimelines;
- (void)restrictionsForExplicitContentAllowedChanged:(BOOL)changed;
- (void)resume;
- (void)setCurrentWidgetDatas:(id)datas;
- (void)setCurrentWidgetDatas:(id)datas currentWidgetDatasByAssetID:(id)d;
@end

@implementation BDSBookWidgetDataUpdater

- (BDSBookWidgetDataUpdater)initWithWidgetCenterManager:(id)manager managedObjectContext:(id)context
{
  managerCopy = manager;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = BDSBookWidgetDataUpdater;
  v9 = [(BDSBookWidgetDataUpdater *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_moc, context);
    currentWidgetDatas = v10->_currentWidgetDatas;
    v10->_currentWidgetDatas = &__NSArray0__struct;

    currentWidgetDatasByAssetID = v10->_currentWidgetDatasByAssetID;
    v10->_currentWidgetDatasByAssetID = &__NSDictionary0__struct;

    v13 = +[BDSBookWidgetDataFile sharedInstance];
    dataFile = v10->_dataFile;
    v10->_dataFile = v13;

    v10->_dataFileDataIsNil = 0;
    v10->_dataLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v10->_widgetCenterManager, manager);
  }

  return v10;
}

- (void)_startObserving
{
  v3 = +[BURestrictionsProvider sharedInstance];
  [v3 addObserver:self];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_handleSignificantTimeChangeNotification:" name:@"BDSNotificationForwarderSignificantTimeChangeNotification" object:0];
}

- (void)_stopObserving
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"BDSNotificationForwarderSignificantTimeChangeNotification" object:0];

  v4 = +[BURestrictionsProvider sharedInstance];
  [v4 removeObserver:self];
}

- (NSArray)currentWidgetDatas
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100019820;
  v15 = sub_100019830;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100019838;
  v8 = &unk_10023F910;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_dataLock);
  v7(v3);
  os_unfair_lock_unlock(&self->_dataLock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (NSDictionary)currentWidgetDatasByAssetID
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100019820;
  v15 = sub_100019830;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100019978;
  v8 = &unk_10023F910;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_dataLock);
  v7(v3);
  os_unfair_lock_unlock(&self->_dataLock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setCurrentWidgetDatas:(id)datas
{
  datasCopy = datas;
  v5 = +[NSMutableDictionary dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = datasCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        assetID = [v11 assetID];
        [v5 setObject:v11 forKeyedSubscript:assetID];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(BDSBookWidgetDataUpdater *)self setCurrentWidgetDatas:v6 currentWidgetDatasByAssetID:v5];
}

- (void)setCurrentWidgetDatas:(id)datas currentWidgetDatasByAssetID:(id)d
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100019BAC;
  v8[3] = &unk_10023F720;
  selfCopy = self;
  datasCopy = datas;
  dCopy = d;
  v6 = dCopy;
  v7 = datasCopy;
  os_unfair_lock_lock(&selfCopy->_dataLock);
  sub_100019BAC(v8);
  os_unfair_lock_unlock(&self->_dataLock);
}

- (void)resume
{
  v3 = os_transaction_create();
  [(BDSBookWidgetDataUpdater *)self _readCurrentWidgetDatas];
  v4 = [(BDSBookWidgetDataUpdater *)self moc];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100019D64;
  v9 = &unk_10023F938;
  v10 = v3;
  selfCopy = self;
  v5 = v3;
  [v4 performBlock:&v6];
  [(BDSBookWidgetDataUpdater *)self _startObserving:v6];
}

- (void)dealloc
{
  [(BDSBookWidgetDataUpdater *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = BDSBookWidgetDataUpdater;
  [(BDSBookWidgetDataUpdater *)&v3 dealloc];
}

- (void)_moc_updateAndMonitorBookWidgetInfo
{
  v3 = os_transaction_create();
  v4 = [NSFetchedResultsController alloc];
  _newWidgetInfoFetchRequest = [(BDSBookWidgetDataUpdater *)self _newWidgetInfoFetchRequest];
  v6 = [(BDSBookWidgetDataUpdater *)self moc];
  v7 = [v4 initWithFetchRequest:_newWidgetInfoFetchRequest managedObjectContext:v6 sectionNameKeyPath:0 cacheName:0];

  [v7 setDelegate:self];
  [(BDSBookWidgetDataUpdater *)self setFetchedResultsController:v7];
  v20 = 0;
  v8 = [v7 performFetch:&v20];
  v9 = v20;
  v10 = sub_10000DE28();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Initial fetch of widget info complete.", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1001BDDF8(v9, v11);
  }

  fetchedObjects = [v7 fetchedObjects];
  v13 = [fetchedObjects count];
  if (v13 >= 3)
  {
    v14 = 3;
  }

  else
  {
    v14 = v13;
  }

  v15 = [fetchedObjects subarrayWithRange:{0, v14}];
  v16 = [(BDSBookWidgetDataUpdater *)self _moc_updateWidgetDataFromWidgetInfo:v15];
  if (v16 || [(BDSBookWidgetDataUpdater *)self dataFileDataIsNil])
  {
    [(BDSBookWidgetDataUpdater *)self _saveWidgetDatasWithWidgetDatasHaveChanged:v16];
  }

  else
  {
    v17 = sub_10000DE28();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No changes at startup, not notifying widget.", v18, 2u);
    }
  }
}

- (id)_newWidgetInfoFetchRequest
{
  v3 = +[NSCalendar currentCalendar];
  v4 = +[NSDate date];
  v5 = [v3 dateByAddingUnit:16 value:-14 toDate:v4 options:0];
  v6 = [v3 startOfDayForDate:v5];

  v7 = +[BDSBookWidgetInfoMO fetchRequest];
  [v7 setFetchBatchSize:3];
  v8 = [NSSortDescriptor sortDescriptorWithKey:@"readingNowDetail.lastEngagedDate" ascending:0];
  v23[0] = v8;
  v9 = [NSSortDescriptor sortDescriptorWithKey:@"title" ascending:1];
  v23[1] = v9;
  v10 = [NSArray arrayWithObjects:v23 count:2];
  [v7 setSortDescriptors:v10];

  v11 = [NSPredicate predicateWithFormat:@"readingNowDetail.isTrackedAsRecent == YES and readingNowDetail.lastEngagedDate >= %@", v6];
  isExplicitMaterialAllowed = [(BDSBookWidgetDataUpdater *)self isExplicitMaterialAllowed];
  if (isExplicitMaterialAllowed)
  {
    v13 = v11;
  }

  else
  {
    v22[0] = v11;
    v14 = +[BDSBookWidgetDataUpdater predicateToExcludeLibraryAssetsWithExplicitContent];
    v22[1] = v14;
    v15 = [NSArray arrayWithObjects:v22 count:2];
    v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v15];
  }

  v16 = sub_10000DE28();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v19 = isExplicitMaterialAllowed ^ 1;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "WidgetDataUpdater: explicitContentRestricted %{BOOL}d predicate:%@", buf, 0x12u);
  }

  [v7 setPredicate:v13];
  return v7;
}

- (BOOL)isExplicitMaterialAllowed
{
  v2 = +[BURestrictionsProvider sharedInstance];
  isExplicitContentAllowed = [v2 isExplicitContentAllowed];

  return isExplicitContentAllowed;
}

- (BOOL)_moc_updateWidgetDataFromWidgetInfo:(id)info
{
  infoCopy = info;
  v27 = +[NSMutableArray array];
  currentWidgetDatas = [(BDSBookWidgetDataUpdater *)self currentWidgetDatas];
  v6 = [infoCopy count];
  v23 = currentWidgetDatas;
  v31 = v6 != [currentWidgetDatas count];
  selfCopy = self;
  currentWidgetDatasByAssetID = [(BDSBookWidgetDataUpdater *)self currentWidgetDatasByAssetID];
  v7 = +[NSMutableDictionary dictionary];
  if ([infoCopy count])
  {
    v8 = 0;
    v24 = v7;
    v25 = infoCopy;
    do
    {
      v9 = [infoCopy objectAtIndexedSubscript:v8];
      assetID = [v9 assetID];
      v11 = [currentWidgetDatasByAssetID objectForKeyedSubscript:assetID];
      v29 = [BDSBookWidgetData alloc];
      title = [v9 title];
      pageProgressionDirection = [v9 pageProgressionDirection];
      coverURL = [v9 coverURL];
      v30 = v11;
      readingProgress = [v11 readingProgress];
      totalDuration = [v9 totalDuration];
      cloudAssetType = [v9 cloudAssetType];
      libraryContentAssetType = [v9 libraryContentAssetType];
      v18 = [(BDSBookWidgetData *)v29 initWithAssetID:assetID title:title pageProgressionDirection:pageProgressionDirection coverURL:coverURL readingProgress:readingProgress totalDuration:totalDuration cloudAssetType:cloudAssetType libraryAssetType:libraryContentAssetType];

      v7 = v24;
      [v27 addObject:v18];
      [v24 setObject:v18 forKeyedSubscript:assetID];
      if ((v31 & 1) != 0 || v8 >= [v23 count])
      {
        v31 = 1;
      }

      else
      {
        v19 = [v23 objectAtIndexedSubscript:v8];
        v31 = [(BDSBookWidgetData *)v18 hasSignificantDifferenceWith:v19];
      }

      infoCopy = v25;

      ++v8;
    }

    while (v8 < [v25 count]);
  }

  v20 = [(BDSBookWidgetDataUpdater *)selfCopy _moc_updateAndMonitorProgressForWidgetDatas:v7]| v31;
  if (v20)
  {
    [(BDSBookWidgetDataUpdater *)selfCopy setCurrentWidgetDatas:v27 currentWidgetDatasByAssetID:v7];
  }

  return v20 & 1;
}

- (void)_saveWidgetDatasWithWidgetDatasHaveChanged:(BOOL)changed
{
  changedCopy = changed;
  [(BDSBookWidgetDataUpdater *)self _saveCurrentWidgetDatas];
  if (changedCopy)
  {
    v5 = sub_10000DE28();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will notify widget of changes", v6, 2u);
    }

    [(BDSBookWidgetDataUpdater *)self reloadWidgetTimelines];
  }
}

- (void)reloadWidgetTimelines
{
  widgetCenterManager = [(BDSBookWidgetDataUpdater *)self widgetCenterManager];
  currentWidgetDatas = [(BDSBookWidgetDataUpdater *)self currentWidgetDatas];
  [widgetCenterManager reloadWidgetTimelinesWithShouldDonateRelevance:{objc_msgSend(currentWidgetDatas, "count") != 0}];
}

- (void)_readCurrentWidgetDatas
{
  dataFile = [(BDSBookWidgetDataUpdater *)self dataFile];
  load = [dataFile load];

  if (load)
  {
    [(BDSBookWidgetDataUpdater *)self setCurrentWidgetDatas:load];
  }

  else
  {
    [(BDSBookWidgetDataUpdater *)self setDataFileDataIsNil:1];
  }
}

- (void)_saveCurrentWidgetDatas
{
  dataFile = [(BDSBookWidgetDataUpdater *)self dataFile];
  currentWidgetDatas = [(BDSBookWidgetDataUpdater *)self currentWidgetDatas];
  [dataFile save:currentWidgetDatas];

  [(BDSBookWidgetDataUpdater *)self setDataFileDataIsNil:0];
}

- (float)_roundReadingProgressLikeBooksApp:(float)app isFinished:(BOOL)finished
{
  v4 = 0.0;
  if (app > 0.0)
  {
    appCopy = 0.99;
    if (finished)
    {
      appCopy = 1.0;
    }

    if (appCopy >= app)
    {
      appCopy = app;
      if (app < 0.01)
      {
        appCopy = 0.01;
      }
    }

    return llround((appCopy * 100.0)) / 100.0;
  }

  return v4;
}

- (BOOL)_moc_updateWidgetDatas:(id)datas fromAssetDetails:(id)details
{
  datasCopy = datas;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = details;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v25 = 0;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        assetID = [v11 assetID];
        v13 = [datasCopy objectForKeyedSubscript:assetID];

        v14 = sub_10000DE28();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          title = [v13 title];
          [v11 readingProgress];
          *buf = 138412546;
          v32 = title;
          v33 = 2048;
          v34 = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Reading progress for %@ is %f", buf, 0x16u);
        }

        [v11 readingProgress];
        v18 = v17;
        isFinished = [v11 isFinished];
        LODWORD(v20) = v18;
        [(BDSBookWidgetDataUpdater *)self _roundReadingProgressLikeBooksApp:isFinished isFinished:v20];
        v21 = [NSNumber numberWithFloat:?];
        if (v21)
        {
          readingProgress = [v13 readingProgress];
          v23 = [readingProgress isEqualToNumber:v21];

          if ((v23 & 1) == 0)
          {
            [v13 setReadingProgress:v21];
            v25 = 1;
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v8);
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

- (BOOL)_moc_updateAndMonitorProgressForWidgetDatas:(id)datas
{
  datasCopy = datas;
  allKeys = [datasCopy allKeys];
  v6 = +[BCAssetDetail fetchRequest];
  v7 = [NSPredicate predicateWithFormat:@"%K in %@", @"assetID", allKeys];
  [v6 setPredicate:v7];

  v24[0] = @"assetID";
  v24[1] = @"readingProgress";
  v8 = [NSArray arrayWithObjects:v24 count:2];
  [v6 setPropertiesToFetch:v8];

  v9 = [NSSortDescriptor sortDescriptorWithKey:@"assetID" ascending:1];
  v23 = v9;
  v10 = [NSArray arrayWithObjects:&v23 count:1];
  [v6 setSortDescriptors:v10];

  v11 = [NSFetchedResultsController alloc];
  v12 = [(BDSBookWidgetDataUpdater *)self moc];
  v13 = [v11 initWithFetchRequest:v6 managedObjectContext:v12 sectionNameKeyPath:0 cacheName:0];

  [v13 setDelegate:self];
  [(BDSBookWidgetDataUpdater *)self setProgressFetchedResultsController:v13];
  v20 = 0;
  v14 = [v13 performFetch:&v20];
  v15 = v20;
  fetchedObjects = sub_10000DE28();
  v17 = os_log_type_enabled(fetchedObjects, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v17)
    {
      *buf = 138412290;
      v22 = allKeys;
      _os_log_impl(&_mh_execute_header, fetchedObjects, OS_LOG_TYPE_DEFAULT, "Started monitoring reading progress for assetIDs %@", buf, 0xCu);
    }

    fetchedObjects = [v13 fetchedObjects];
    v18 = [(BDSBookWidgetDataUpdater *)self _moc_updateWidgetDatas:datasCopy fromAssetDetails:fetchedObjects];
  }

  else
  {
    if (v17)
    {
      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, fetchedObjects, OS_LOG_TYPE_DEFAULT, "Error starting FRC to monitor reading progress: %@", buf, 0xCu);
    }

    v18 = 0;
  }

  return v18;
}

- (void)controller:(id)controller didChangeContentWithDifference:(id)difference
{
  controllerCopy = controller;
  v6 = os_transaction_create();
  v7 = [(BDSBookWidgetDataUpdater *)self moc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001ADB8;
  v9[3] = &unk_10023F938;
  v10 = controllerCopy;
  selfCopy = self;
  v8 = controllerCopy;
  [v7 performBlockAndWait:v9];
}

- (void)_handleSignificantTimeChangeNotification:(id)notification
{
  v4 = os_transaction_create();
  v5 = sub_10000DE28();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received significant time change. Refreshing book widget info", buf, 2u);
  }

  v6 = [(BDSBookWidgetDataUpdater *)self moc];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001B0F4;
  v8[3] = &unk_10023F938;
  v9 = v4;
  selfCopy = self;
  v7 = v4;
  [v6 performBlock:v8];
}

- (void)restrictionsForExplicitContentAllowedChanged:(BOOL)changed
{
  changedCopy = changed;
  v5 = os_transaction_create();
  v6 = sub_10000DE28();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = changedCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received explicit content change:%{BOOL}d. Refreshing book widget info", buf, 8u);
  }

  v7 = [(BDSBookWidgetDataUpdater *)self moc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001B27C;
  v9[3] = &unk_10023F938;
  v10 = v5;
  selfCopy = self;
  v8 = v5;
  [v7 performBlock:v9];
}

@end