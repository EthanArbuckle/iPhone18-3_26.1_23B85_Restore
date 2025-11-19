@interface CPLEngineWrapperArray
+ (void)setTimeToWaitForRegisteredWrapper:(double)a3;
- (BOOL)_autoCloseOneWrapper;
- (BOOL)_autoCloseWrapper:(id)a3;
- (BOOL)_canAutoCloseWrapper:(id)a3;
- (BOOL)_canReallyOpenWrapper:(id)a3 error:(id *)a4;
- (BOOL)_shouldAutoOpenWrapper:(id)a3 error:(id *)a4;
- (BOOL)isWrapperOpened:(id)a3;
- (CPLConfigurationDictionary)mostRecentConfigurationDictionary;
- (CPLConfigurationDictionary)oldestConfigurationDictionary;
- (CPLEngineWrapperArray)initWithParametersStorage:(id)a3 queue:(id)a4;
- (CPLEngineWrapperArrayDelegate)delegate;
- (NSArray)registeredLibraryIdentifiers;
- (NSArray)wrapperStatuses;
- (id)_loadWrapperWithIdentifier:(id)a3 error:(id *)a4;
- (id)_wrappersLibraryIdentifierEnumerator;
- (id)openedWrapperWithLibraryIdentifier:(id)a3;
- (id)registeredWrapperCreateIfNecessaryWithParameters:(id)a3 error:(id *)a4;
- (id)registeredWrapperWithLibraryIdentifier:(id)a3 error:(id *)a4;
- (unint64_t)_countOfUltimatelyOpenedWrappers;
- (void)_addEngineWrapperOpenObserver:(id)a3 withIdentifier:(id)a4;
- (void)_callStopAllBlocks;
- (void)_executeMaintenanceWithEnumerator:(id)a3 progress:(id)a4 completionHandler:(id)a5;
- (void)_registerOpenError:(id)a3 forWrapper:(id)a4;
- (void)_removeEngineWrapperOpenObserverWithIdentifier:(id)a3;
- (void)cancelConfigurationDictionariesRefresh;
- (void)configurationFetcher:(id)a3 didUpdateConfigurationDictionary:(id)a4 configurationHasChanged:(BOOL)a5;
- (void)enumerateOpenedWrappersWithBlock:(id)a3;
- (void)enumerateWrappersWithBlock:(id)a3;
- (void)executeMaintenanceWithCompletionHandler:(id)a3;
- (void)executePeriodicUploadOfComputeStatesWithCompletionHandler:(id)a3;
- (void)loadRegisteredWrappers;
- (void)refreshAllConfigurationDictionariesWithCompletionHandler:(id)a3;
- (void)requestRegisteredWrapperWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)stopAllWithCompletionHandler:(id)a3;
- (void)wipeEnginesIfNecessary;
- (void)wrapper:(id)a3 getStatusDictionaryWithCompletionHandler:(id)a4;
- (void)wrapper:(id)a3 getStatusWithCompletionHandler:(id)a4;
- (void)wrapper:(id)a3 libraryDidOpenWithError:(id)a4;
- (void)wrapperDidCompleteInitialSyncOfMainScope:(id)a3;
- (void)wrapperEmergencyExit:(id)a3;
- (void)wrapperLibraryDidClose:(id)a3;
- (void)wrapperNeedsInitialDownloadOfMainScope:(id)a3;
- (void)wrapperShouldBeDropped:(id)a3;
@end

@implementation CPLEngineWrapperArray

+ (void)setTimeToWaitForRegisteredWrapper:(double)a3
{
  if (*&qword_1002BEA70 == 0.0)
  {
    a3 = 60.0;
  }

  qword_1002BEA70 = *&a3;
}

- (CPLEngineWrapperArray)initWithParametersStorage:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = CPLEngineWrapperArray;
  v9 = [(CPLEngineWrapperArray *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parametersStorage, a3);
    objc_storeStrong(&v10->_queue, a4);
    v11 = objc_alloc_init(NSMutableDictionary);
    wrappers = v10->_wrappers;
    v10->_wrappers = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    unopenedWrappers = v10->_unopenedWrappers;
    v10->_unopenedWrappers = v13;

    v15 = objc_alloc_init(NSMutableDictionary);
    autoClosingWrappers = v10->_autoClosingWrappers;
    v10->_autoClosingWrappers = v15;
  }

  return v10;
}

- (void)loadRegisteredWrappers
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(CPLEngineParametersStorage *)self->_parametersStorage allDefinedParameters];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v14;
    *&v5 = 138412290;
    v12 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) libraryIdentifier];
        v10 = [(CPLEngineWrapperArray *)self _loadWrapperWithIdentifier:v9 error:0];

        if (v10 && (_CPLSilentLogging & 1) == 0)
        {
          v11 = sub_100013FC4();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v12;
            v18 = v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found %@ at launch", buf, 0xCu);
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }
}

- (BOOL)_shouldAutoOpenWrapper:(id)a3 error:(id *)a4
{
  v6 = [a3 libraryIdentifier];
  v7 = [v6 isEqualToString:CPLLibraryIdentifierSystemLibrary];

  if (v7)
  {
    return 1;
  }

  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = [v9 BOOLForKey:@"CPLDontAutoOpenAppLibraries"];

  if (v10)
  {
    if (a4)
    {
      v11 = +[CPLErrors libraryDoesNotAutoOpenError];
LABEL_9:
      v12 = v11;
      v13 = v11;
      result = 0;
      *a4 = v12;
      return result;
    }
  }

  else
  {
    if ([(NSMutableDictionary *)self->_wrappers count]< 0xA)
    {
      return 1;
    }

    if (a4)
    {
      v11 = +[CPLErrors tooManyOpenedEnginesError];
      goto LABEL_9;
    }
  }

  return 0;
}

- (BOOL)_canAutoCloseWrapper:(id)a3
{
  v3 = [a3 libraryIdentifier];
  v4 = [v3 isEqualToString:CPLLibraryIdentifierSystemLibrary];

  return v4 ^ 1;
}

- (BOOL)_autoCloseWrapper:(id)a3
{
  v4 = a3;
  v5 = [v4 libraryIdentifier];
  v6 = [(NSMutableDictionary *)self->_autoClosingWrappers objectForKeyedSubscript:v5];
  if (v6)
  {
  }

  else if ([(CPLEngineWrapperArray *)self _canAutoCloseWrapper:v4])
  {
    v7 = [(CPLEngineWrapperArray *)self delegate];
    v8 = [v7 wrapperArray:self countOfClientsForWrapper:v4];

    if (!v8)
    {
      [(NSMutableDictionary *)self->_autoClosingWrappers setObject:v4 forKeyedSubscript:v5];
      [v4 stop];
      v9 = 1;
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (BOOL)_autoCloseOneWrapper
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  wrappers = self->_wrappers;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000142BC;
  v5[3] = &unk_100272858;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableDictionary *)wrappers enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_canReallyOpenWrapper:(id)a3 error:(id *)a4
{
  v6 = [a3 libraryIdentifier];
  v7 = [v6 isEqualToString:CPLLibraryIdentifierSystemLibrary];

  if (v7)
  {
    return 1;
  }

  if ([(NSMutableDictionary *)self->_wrappers count]>= 0xF)
  {
    if (!a4)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v9 = [(NSMutableDictionary *)self->_wrappers count];
  if (v9 < [(NSMutableDictionary *)self->_autoClosingWrappers count]+ 10)
  {
    return 1;
  }

  result = [(CPLEngineWrapperArray *)self _autoCloseOneWrapper];
  if (a4 && !result)
  {
LABEL_9:
    v10 = +[CPLErrors tooManyOpenedEnginesError];
    v11 = v10;
    result = 0;
    *a4 = v10;
  }

  return result;
}

- (id)_loadWrapperWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLEngineParametersStorage *)self->_parametersStorage parametersForLibraryIdentifier:v6];
  if (v7)
  {
    v12 = 0;
    v8 = [(CPLEngineWrapperArray *)self _instantiateWrapperWithParameters:v7 createIfNecessary:0 error:&v12];
    v9 = v12;
    if (!v8)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_10018A754();
      }

      if (a4)
      {
        v10 = v9;
        *a4 = v9;
      }

      [(CPLEngineParametersStorage *)self->_parametersStorage removeParametersWithLibraryIdentifier:v6 error:0];
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_10018A7E8(v6);
    }

    if (a4)
    {
      [CPLErrors cplErrorWithCode:2006 description:@"%@ has not been configured yet", v6];
      *a4 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)_callStopAllBlocks
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_stopAllBlocks;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v9 + 1) + 8 * v7) + 16))(*(*(&v9 + 1) + 8 * v7));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  stopAllBlocks = self->_stopAllBlocks;
  self->_stopAllBlocks = 0;
}

- (void)_addEngineWrapperOpenObserver:(id)a3 withIdentifier:(id)a4
{
  v12 = a3;
  queue = self->_queue;
  v7 = a4;
  dispatch_assert_queue_V2(queue);
  if (!self->_openObservers)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    openObservers = self->_openObservers;
    self->_openObservers = v8;
  }

  v10 = [v12 copy];
  v11 = objc_retainBlock(v10);
  [(NSMutableDictionary *)self->_openObservers setObject:v11 forKeyedSubscript:v7];
}

- (void)_removeEngineWrapperOpenObserverWithIdentifier:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  [(NSMutableDictionary *)self->_openObservers removeObjectForKey:v5];
}

- (void)stopAllWithCompletionHandler:(id)a3
{
  stopAllBlocks = self->_stopAllBlocks;
  if (stopAllBlocks)
  {
    v4 = a3;
    v14 = [v4 copy];

    v5 = objc_retainBlock(v14);
    [(NSMutableArray *)stopAllBlocks addObject:v5];
  }

  else
  {
    v7 = a3;
    v8 = objc_alloc_init(NSMutableArray);
    v9 = self->_stopAllBlocks;
    self->_stopAllBlocks = v8;

    v10 = self->_stopAllBlocks;
    v11 = [v7 copy];

    v12 = objc_retainBlock(v11);
    [(NSMutableArray *)v10 addObject:v12];

    if ([(NSMutableDictionary *)self->_wrappers count])
    {
      wrappers = self->_wrappers;

      [(NSMutableDictionary *)wrappers enumerateKeysAndObjectsUsingBlock:&stru_100272898];
    }

    else
    {

      [(CPLEngineWrapperArray *)self _callStopAllBlocks];
    }
  }
}

- (unint64_t)_countOfUltimatelyOpenedWrappers
{
  v4 = [(NSMutableDictionary *)self->_wrappers count];
  v5 = [(NSMutableDictionary *)self->_autoClosingWrappers count];
  v6 = v4 >= v5;
  result = v4 - v5;
  if (!v6)
  {
    sub_10018A9E8(a2, self);
  }

  return result;
}

- (NSArray)registeredLibraryIdentifiers
{
  v2 = [(NSMutableDictionary *)self->_wrappers allKeys];
  v3 = [v2 sortedArrayUsingComparator:&stru_1002728F8];

  return v3;
}

- (id)registeredWrapperCreateIfNecessaryWithParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 libraryIdentifier];
  v8 = [(NSMutableDictionary *)self->_previousOpenErrors objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8 && ([v8 shouldTryReopening] & 1) == 0)
  {
    if (a4)
    {
      [v9 openError];
      *a4 = v11 = 0;
      goto LABEL_30;
    }

    goto LABEL_12;
  }

  v10 = [(NSMutableDictionary *)self->_wrappers objectForKeyedSubscript:v7];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 parameters];
    v13 = [v12 matchesParameters:v6];

    if (v13)
    {
      goto LABEL_30;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_10018AABC();
    }

    if (a4)
    {
      v14 = [v6 libraryIdentifier];
      *a4 = [CPLErrors cplErrorWithCode:2005 description:@"Incorrect parameters for %@", v14];
    }

LABEL_12:
    v11 = 0;
    goto LABEL_30;
  }

  v15 = [(CPLEngineWrapperArray *)self mostRecentConfigurationDictionary];
  v28 = 0;
  v11 = [(CPLEngineWrapperArray *)self _instantiateWrapperWithParameters:v6 createIfNecessary:1 error:&v28];
  v16 = v28;
  v17 = v16;
  if (v11)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = sub_100013FC4();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v30 = v11;
        v31 = 2112;
        v32 = v6;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Created %@ for %@", buf, 0x16u);
      }
    }

    parametersStorage = self->_parametersStorage;
    v27 = 0;
    v20 = [(CPLEngineParametersStorage *)parametersStorage saveParameters:v6 error:&v27];
    v21 = v27;
    if ((v20 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
    {
      v22 = sub_100013FC4();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v30 = v6;
        v31 = 2112;
        v32 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to store %@ for automatic start: %@", buf, 0x16u);
      }
    }

    if (v15)
    {
      v23 = [v11 engine];
      v24 = [v23 configuration];
      [v24 updateConfigurationDictionary:v15];
    }

    else
    {
      [(CPLEngineWrapperArray *)self refreshAllConfigurationDictionaries];
    }
  }

  else if (a4)
  {
    v25 = v16;
    *a4 = v17;
  }

LABEL_30:

  return v11;
}

- (id)registeredWrapperWithLibraryIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_previousOpenErrors objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    if ([v7 shouldTryReopeningWithoutLibrary])
    {
      v9 = [v8 parameters];
      v10 = [(CPLEngineWrapperArray *)self registeredWrapperCreateIfNecessaryWithParameters:v9 error:a4];
    }

    else if (a4)
    {
      [v8 openError];
      *a4 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [(NSMutableDictionary *)self->_wrappers objectForKeyedSubscript:v6];
    if (!v10)
    {
      v11 = [CPLErrors cplErrorWithCode:2006 description:@"%@ has not been configured yet", v6];
      if (a4)
      {
        v11 = v11;
        *a4 = v11;
      }
    }
  }

  return v10;
}

- (id)openedWrapperWithLibraryIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_wrappers objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_unopenedWrappers objectForKeyedSubscript:v4];

    if (v6)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (void)enumerateWrappersWithBlock:(id)a3
{
  v4 = a3;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(CPLEngineWrapperArray *)self registeredLibraryIdentifiers];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [(NSMutableDictionary *)self->_wrappers objectForKeyedSubscript:*(*(&v12 + 1) + 8 * v9)];
      v4[2](v4, v10, &v16);
      v11 = v16;

      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateOpenedWrappersWithBlock:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001554C;
  v4[3] = &unk_100272920;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(CPLEngineWrapperArray *)v5 enumerateWrappersWithBlock:v4];
}

- (BOOL)isWrapperOpened:(id)a3
{
  unopenedWrappers = self->_unopenedWrappers;
  v4 = [a3 libraryIdentifier];
  v5 = [(NSMutableDictionary *)unopenedWrappers objectForKeyedSubscript:v4];
  LOBYTE(unopenedWrappers) = v5 == 0;

  return unopenedWrappers;
}

- (id)_wrappersLibraryIdentifierEnumerator
{
  v2 = [(CPLEngineWrapperArray *)self registeredLibraryIdentifiers];
  v3 = [v2 objectEnumerator];

  return v3;
}

- (void)_executeMaintenanceWithEnumerator:(id)a3 progress:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isCancelled])
  {
    sub_10018AD7C(v10, buf);
    v11 = *buf;
    goto LABEL_12;
  }

  v11 = [v8 nextObject];
  if (!v11)
  {
    sub_10018AD08();
    goto LABEL_12;
  }

  v12 = [(NSMutableDictionary *)self->_wrappers objectForKeyedSubscript:v11];
  if (v12)
  {
    v13 = [(NSMutableDictionary *)self->_unopenedWrappers objectForKeyedSubscript:v11];

    if (!v13)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100015F94;
      v15[3] = &unk_100272568;
      v16 = v12;
      v17 = self;
      v18 = v8;
      v19 = v9;
      v20 = v10;
      [v19 performAsCurrentWithPendingUnitCount:1 usingBlock:v15];

      goto LABEL_11;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = sub_100013FC4();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Requested maintenance for %@ can't be done as it is not fully opened", buf, 0xCu);
      }
    }
  }

  [v9 setCompletedUnitCount:{objc_msgSend(v9, "completedUnitCount") + 1}];
  [(CPLEngineWrapperArray *)self _executeMaintenanceWithEnumerator:v8 progress:v9 completionHandler:v10];
LABEL_11:

LABEL_12:
}

- (void)executeMaintenanceWithCompletionHandler:(id)a3
{
  v4 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100016348;
  v10[3] = &unk_1002729C0;
  v10[4] = self;
  [CPLSimpleUpgradeHistory cleanupUnusedUpgradeHistoriesWithUsedBlock:v10];
  if ([(NSMutableDictionary *)self->_wrappers count])
  {
    v5 = [(CPLEngineWrapperArray *)self _wrappersLibraryIdentifierEnumerator];
    [NSProgress progressWithTotalUnitCount:[(NSMutableDictionary *)self->_wrappers count]];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000163B4;
    v8 = v7[3] = &unk_1002727E8;
    v9 = v4;
    v6 = v8;
    [(CPLEngineWrapperArray *)self _executeMaintenanceWithEnumerator:v5 progress:v6 completionHandler:v7];
  }

  else
  {
    sub_10018AE14();
  }
}

- (void)executePeriodicUploadOfComputeStatesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineWrapperArray *)self openedWrapperWithLibraryIdentifier:CPLLibraryIdentifierSystemLibrary];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 engine];
    v8 = [v7 store];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10018A2A8;
    v11[3] = &unk_1002726D0;
    v12 = v8;
    v13 = v6;
    v9 = v8;
    v10 = [v9 performReadTransactionWithBlock:v11];
  }

  v4[2](v4, 0);
}

- (void)requestRegisteredWrapperWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = self->_queue;
  v9 = [NSProgress progressWithTotalUnitCount:1];
  v10 = +[NSUUID UUID];
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x3032000000;
  v75[3] = sub_100004370;
  v75[4] = sub_10000529C;
  v76 = 0;
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_100016BA4;
  v72[3] = &unk_1002729E8;
  v11 = v8;
  v73 = v11;
  v74 = v75;
  v12 = objc_retainBlock(v72);
  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x2020000000;
  v71 = 0;
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_100016C0C;
  v62[3] = &unk_100272A10;
  v13 = v11;
  v63 = v13;
  v69 = v70;
  v14 = v12;
  v67 = v14;
  v15 = v7;
  v68 = v15;
  v16 = v9;
  v64 = v16;
  v65 = self;
  v39 = v10;
  v66 = v39;
  v17 = objc_retainBlock(v62);
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_100016CD8;
  v55[3] = &unk_100272A60;
  v18 = v13;
  v56 = v18;
  v60 = v70;
  v36 = v14;
  v58 = v36;
  v61 = v75;
  v19 = v6;
  v57 = v19;
  v20 = v17;
  v59 = v20;
  v21 = objc_retainBlock(v55);
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100016E78;
  v51[3] = &unk_100272AB0;
  v40 = v18;
  v52 = v40;
  v54 = a2;
  v22 = v20;
  v53 = v22;
  [v16 setCancellationHandler:v51];
  v23 = [(NSMutableDictionary *)self->_previousOpenErrors objectForKeyedSubscript:v19];
  if (v23 && ([(NSMutableDictionary *)self->_wrappers objectForKeyedSubscript:v19], v24 = objc_claimAutoreleasedReturnValue(), v24, !v24))
  {
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100016F84;
    v48[3] = &unk_100272350;
    v50 = v22;
    v49 = v23;
    v30 = v48;
    block = _NSConcreteStackBlock;
    v78 = 3221225472;
    v79 = sub_1000027DC;
    v80 = &unk_100271E98;
    v81 = v30;
    v31 = v40;
    v32 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v31, v32);

    v25 = v50;
  }

  else
  {
    v38 = v15;
    v25 = [(NSMutableDictionary *)self->_wrappers objectForKeyedSubscript:v19];
    if (v25 && ([(NSMutableDictionary *)self->_unopenedWrappers objectForKeyedSubscript:v19], v26 = objc_claimAutoreleasedReturnValue(), v26, !v26))
    {
      v27 = v16;
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_100016FE4;
      v45[3] = &unk_100272350;
      v28 = &v47;
      v47 = v22;
      v29 = &v46;
      v46 = v25;
      v33 = v45;
      block = _NSConcreteStackBlock;
      v78 = 3221225472;
      v79 = sub_1000027DC;
      v80 = &unk_100271E98;
      v81 = v33;
      v34 = v40;
      v35 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
      dispatch_async(v34, v35);
    }

    else
    {
      (v21[2])(v21);
      CPLRequestClient();
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100016FFC;
      v41[3] = &unk_100272AD8;
      v42 = v40;
      v43 = v19;
      v44 = v22;
      [(CPLEngineWrapperArray *)self _addEngineWrapperOpenObserver:v41 withIdentifier:v39];
      v27 = v16;
      v28 = &v42;
      v29 = &v43;
    }

    v15 = v38;
    v16 = v27;
  }

  _Block_object_dispose(v70, 8);
  _Block_object_dispose(v75, 8);
}

- (void)wipeEnginesIfNecessary
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_alloc_init(NSMutableArray);
  previousOpenErrors = self->_previousOpenErrors;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100017154;
  v6[3] = &unk_100272B00;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [(NSMutableDictionary *)previousOpenErrors enumerateKeysAndObjectsUsingBlock:v6];
}

- (NSArray)wrapperStatuses
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000173DC;
  v14[3] = &unk_100271FD8;
  v15 = self;
  v3 = [[NSMutableArray alloc] initWithCapacity:{-[CPLEngineWrapperArray count](self, "count")}];
  v16 = v3;
  [(CPLEngineWrapperArray *)v15 enumerateWrappersWithBlock:v14];
  previousOpenErrors = self->_previousOpenErrors;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000174BC;
  v11 = &unk_100272B00;
  v12 = self;
  v13 = v3;
  v5 = v3;
  [(NSMutableDictionary *)previousOpenErrors enumerateKeysAndObjectsUsingBlock:&v8];
  v6 = [v5 copy];

  return v6;
}

- (CPLConfigurationDictionary)mostRecentConfigurationDictionary
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100004370;
  v9 = sub_10000529C;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100017690;
  v4[3] = &unk_100272B28;
  v4[4] = &v5;
  [(CPLEngineWrapperArray *)self enumerateWrappersWithBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (CPLConfigurationDictionary)oldestConfigurationDictionary
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100004370;
  v9 = sub_10000529C;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100017870;
  v4[3] = &unk_100272B28;
  v4[4] = &v5;
  [(CPLEngineWrapperArray *)self enumerateWrappersWithBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)refreshAllConfigurationDictionariesWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (WeakRetained && ([WeakRetained allowsConfigurationRefreshForWrapperArray:self] & 1) != 0)
  {
    v7 = [(CPLEngineWrapperArray *)self oldestConfigurationDictionary];
    v8 = v7;
    if (v7 && ((-[NSObject isStale](v7, "isStale") & 1) != 0 || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 BOOLForKey:@"CPLAlwaysFetchConfiguration"], v9, (v10 & 1) != 0)))
    {
      configurationFetcher = self->_configurationFetcher;
      if (!configurationFetcher)
      {
        v12 = [CPLConfigurationFetcher alloc];
        v13 = _CPLConfigurationDefaultURL();
        v14 = [v12 initWithConfigurationURL:v13 delegate:self queue:self->_queue];
        v15 = self->_configurationFetcher;
        self->_configurationFetcher = v14;

        configurationFetcher = self->_configurationFetcher;
      }

      [(CPLConfigurationFetcher *)configurationFetcher fetchConfigurationDictionary:v8 completionHandler:v4];
    }

    else if (v4)
    {
      queue = self->_queue;
      block = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_1000027DC;
      v24 = &unk_100271E98;
      v25 = v4;
      v19 = queue;
      v20 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
      dispatch_async(v19, v20);
    }

    goto LABEL_11;
  }

  if (v4)
  {
    v16 = self->_queue;
    block = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1000027DC;
    v24 = &unk_100271E98;
    v25 = v4;
    v8 = v16;
    v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v8, v17);

LABEL_11:
  }
}

- (void)cancelConfigurationDictionariesRefresh
{
  dispatch_assert_queue_V2(self->_queue);
  [(CPLConfigurationFetcher *)self->_configurationFetcher invalidate];
  configurationFetcher = self->_configurationFetcher;
  self->_configurationFetcher = 0;
}

- (void)configurationFetcher:(id)a3 didUpdateConfigurationDictionary:(id)a4 configurationHasChanged:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  queue = self->_queue;
  v10 = a3;
  dispatch_assert_queue_V2(queue);
  configurationFetcher = self->_configurationFetcher;

  if (configurationFetcher == v10)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100017CCC;
    v14[3] = &unk_100272B50;
    v15 = v8;
    [(CPLEngineWrapperArray *)self enumerateWrappersWithBlock:v14];
    if (v5)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, _CPLConfigurationDidChangeNotification, 0, 0, 0);
    }

    v13 = self->_configurationFetcher;
    self->_configurationFetcher = 0;
  }
}

- (void)_registerOpenError:(id)a3 forWrapper:(id)a4
{
  v15 = a3;
  v6 = a4;
  if (!self->_previousOpenErrors)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    previousOpenErrors = self->_previousOpenErrors;
    self->_previousOpenErrors = v7;
  }

  v9 = [_CPLEngineWrapperOpenError alloc];
  v10 = [v6 parameters];
  v11 = [(_CPLEngineWrapperOpenError *)v9 initWithParameters:v10 openError:v15];
  v12 = self->_previousOpenErrors;
  v13 = [v6 libraryIdentifier];
  [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained wrapperArray:self wrapperShouldBeDropped:v6];
}

- (void)wrapper:(id)a3 libraryDidOpenWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [v6 libraryIdentifier];
  v9 = [(NSMutableDictionary *)self->_unopenedWrappers objectForKeyedSubscript:v8];

  if (v9)
  {
    [(NSMutableDictionary *)self->_unopenedWrappers removeObjectForKey:v8];
    [(NSMutableDictionary *)self->_previousOpenErrors removeObjectForKey:v8];
    if (v7)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = sub_100013FC4();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v20 = v6;
          v21 = 2112;
          v22 = v7;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to open %@: %@", buf, 0x16u);
        }
      }

      [(NSMutableDictionary *)self->_autoClosingWrappers removeObjectForKey:v8];
      sub_10018A008(self, v6);
      [(CPLEngineWrapperArray *)self _registerOpenError:v7 forWrapper:v6];
    }

    openObservers = self->_openObservers;
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100018068;
    v16 = &unk_100272B98;
    v17 = v6;
    v18 = v7;
    [(NSMutableDictionary *)openObservers enumerateKeysAndObjectsUsingBlock:&v13];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained wrapperArrayCountDidChange:{self, v13, v14, v15, v16}];
  }
}

- (void)wrapperLibraryDidClose:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [v4 libraryIdentifier];
  v6 = [(NSMutableDictionary *)self->_wrappers objectForKeyedSubscript:v5];

  if (v6)
  {
    v9 = [(NSMutableDictionary *)self->_unopenedWrappers objectForKeyedSubscript:v5];

    if (v9)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = sub_100013FC4();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412290;
          v13 = v4;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ closed before even being opened", &v12, 0xCu);
        }
      }

      [(NSMutableDictionary *)self->_unopenedWrappers removeObjectForKey:v5];
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      sub_10018B018();
    }

    sub_10018A008(self, v4);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained wrapperArrayCountDidChange:self];
  }

  v7 = [(NSMutableDictionary *)self->_autoClosingWrappers objectForKeyedSubscript:v5];

  if (v7)
  {
    v8 = +[CPLErrors libraryDoesNotAutoOpenError];
    [(CPLEngineWrapperArray *)self _registerOpenError:v8 forWrapper:v4];

    [(NSMutableDictionary *)self->_autoClosingWrappers removeObjectForKey:v5];
  }

  if (![(NSMutableDictionary *)self->_wrappers count]&& self->_stopAllBlocks)
  {
    [(CPLEngineWrapperArray *)self _callStopAllBlocks];
  }
}

- (void)wrapper:(id)a3 getStatusWithCompletionHandler:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained wrapperArray:self getStatusWithCompletionHandler:v5];
  }

  else
  {
    v5[2](v5, &stru_10027C2F0, 0);
  }
}

- (void)wrapper:(id)a3 getStatusDictionaryWithCompletionHandler:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained wrapperArray:self getStatusDictionaryWithCompletionHandler:v5];
  }

  else
  {
    v5[2](v5, &__NSDictionary0__struct, 0);
  }
}

- (void)wrapperNeedsInitialDownloadOfMainScope:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained wrapperArray:self wrapperNeedsInitialDownloadOfMainScope:v4];
}

- (void)wrapperDidCompleteInitialSyncOfMainScope:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained wrapperArray:self wrapperDidCompleteInitialSyncOfMainScope:v4];
}

- (CPLEngineWrapperArrayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)wrapperEmergencyExit:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100013FC4();
    if (sub_100003424(v6))
    {
      sub_1000187DC();
      sub_10000FAA0();
      _os_log_impl(v7, v8, v9, v10, v11, v12);
    }
  }

  [(NSMutableDictionary *)self->_wrappers enumerateKeysAndObjectsUsingBlock:&stru_100272B70];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = sub_100013FC4();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Closing immediately", v16, 2u);
      }
    }

    exit(0);
  }

  v14 = WeakRetained;
  [WeakRetained emergencyExitForWrapperArray:self];
}

- (void)wrapperShouldBeDropped:(id)a3
{
  v4 = a3;
  v5 = [v4 libraryIdentifier];
  parametersStorage = self->_parametersStorage;
  v16 = 0;
  v7 = [(CPLEngineParametersStorage *)parametersStorage removeParametersWithLibraryIdentifier:v5 error:&v16];
  v8 = v16;
  if (v7)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_100013FC4();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v4;
        sub_10000FAA0();
LABEL_8:
        _os_log_impl(v10, v11, v12, v13, v14, v15);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_100013FC4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = v4;
      v19 = 2112;
      v20 = v8;
      v10 = &_mh_execute_header;
      v13 = "Failed to drop parameters for %@: %@";
      v14 = buf;
      v11 = v9;
      v12 = OS_LOG_TYPE_ERROR;
      v15 = 22;
      goto LABEL_8;
    }

LABEL_9:
  }

  sub_10018A008(self, v4);
  [(NSMutableDictionary *)self->_unopenedWrappers removeObjectForKey:v5];
}

@end