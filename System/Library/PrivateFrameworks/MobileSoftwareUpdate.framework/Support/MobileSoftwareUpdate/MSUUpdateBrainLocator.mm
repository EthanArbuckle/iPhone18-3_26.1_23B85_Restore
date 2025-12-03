@interface MSUUpdateBrainLocator
+ (id)brainLocatorWithUpdateAttributes:(id)attributes;
+ (id)locatorsDictionary;
+ (id)locatorsStateQueue;
+ (id)newBrainAssetName:(id)name;
+ (id)stateSummary:(id)summary;
- (BOOL)_purgeInstalledUpdateBrains:(id *)brains;
- (BOOL)cancelAllDownloadsExcept:(id)except error:(id *)error;
- (BOOL)cancelInstall:(id *)install;
- (BOOL)purgeInstalledUpdateBrains:(id *)brains;
- (MSUUpdateBrainLocator)initWithUpdateAssetAttributes:(id)attributes;
- (NSString)deviceType;
- (char)copyUpdateBrainPath:(id *)path;
- (id)newBestAssetFromResults:(id)results error:(id *)error;
- (id)newBrainAsset:(id *)asset;
- (id)newBrainQuery;
- (id)newFilteredBrainQuery;
- (void)_clientRequestBegin:(id)begin;
- (void)_clientRequestComplete:(id)complete nameForNumber:(id)number valueForNumber:(int64_t)forNumber withError:(id)error handler:(id)handler;
- (void)_clientRequestComplete:(id)complete withError:(id)error;
- (void)_clientRequestComplete:(id)complete withError:(id)error handler:(id)handler;
- (void)_clientRequestComplete:(id)complete withError:(id)error wasSuccessful:(BOOL)successful;
- (void)adjustDownloadOptions:(id)options handler:(id)handler;
- (void)adjustMADownloadOptions:(id)options callback:(id)callback;
- (void)appendCatalogDownloadOptionsToExistingOptions:(id)options;
- (void)createBestAsset:(id)asset;
- (void)dealloc;
- (void)downloadBrainAsset:(id)asset handler:(id)handler;
- (void)installMAUpdateBrain:(id)brain handler:(id)handler;
- (void)requiredDiskSpace:(id)space;
@end

@implementation MSUUpdateBrainLocator

+ (id)brainLocatorWithUpdateAttributes:(id)attributes
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  if (os_variant_allows_internal_security_policies())
  {
    v4 = _MSUPreferencesCopyValue(@"MSUUpdateBrainLocationOverride");
    v5 = v4;
    if (v4)
    {
      v6 = CFGetTypeID(v4);
      if (v6 == CFStringGetTypeID())
      {
        v7 = attributes ? CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, attributes) : CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v8 = v7;
        if (v7)
        {
          CFDictionarySetValue(v7, @"__msu_brain-location_key", v5);
          v9 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v20 = @"MSUUpdateBrainLocationOverride";
            v21 = 2114;
            v22 = @"com.apple.MobileSoftwareUpdate";
            v23 = 2114;
            v24 = v5;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] WARNING WARNING WARNING: '%{public}@' default is defined in '%{public}@' domain with path {%{public}@}. Will attempt to use specified custom brain path.", buf, 0x20u);
          }

          attributes = v8;
        }
      }

      CFRelease(v5);
    }
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __58__MSUUpdateBrainLocator_brainLocatorWithUpdateAttributes___block_invoke;
  v12[3] = &unk_100049288;
  v12[4] = attributes;
  v12[5] = &v13;
  dispatch_sync(+[MSUUpdateBrainLocator locatorsStateQueue], v12);
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);
  return v10;
}

void __58__MSUUpdateBrainLocator_brainLocatorWithUpdateAttributes___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v2 = +[NSNull null];
  }

  *(*(*(a1 + 40) + 8) + 40) = [+[MSUUpdateBrainLocator locatorsDictionary](MSUUpdateBrainLocator "locatorsDictionary")];
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    *(*(*(a1 + 40) + 8) + 40) = [[MSUUpdateBrainLocator alloc] initWithUpdateAssetAttributes:*(a1 + 32)];
    [+[MSUUpdateBrainLocator locatorsDictionary](MSUUpdateBrainLocator "locatorsDictionary")];
    v3 = *(*(*(a1 + 40) + 8) + 40);
  }
}

+ (id)locatorsStateQueue
{
  if (locatorsStateQueue_queueOnce != -1)
  {
    +[MSUUpdateBrainLocator locatorsStateQueue];
  }

  return locatorsStateQueue_queue;
}

+ (id)locatorsDictionary
{
  if (locatorsDictionary_locatorsOnce != -1)
  {
    +[MSUUpdateBrainLocator locatorsDictionary];
  }

  return locatorsDictionary_locators;
}

- (MSUUpdateBrainLocator)initWithUpdateAssetAttributes:(id)attributes
{
  v6.receiver = self;
  v6.super_class = MSUUpdateBrainLocator;
  v4 = [(MSUUpdateBrainLocator *)&v6 init];
  if (v4)
  {
    v4->_updateAssetAttributes = attributes;
    v4->_brainAsset = 0;
    v4->_brainVersion = 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MSUUpdateBrainLocator;
  [(MSUUpdateBrainLocator *)&v3 dealloc];
}

- (NSString)deviceType
{
  v2 = MGCopyAnswer();

  return v2;
}

- (char)copyUpdateBrainPath:(id *)path
{
  v24 = 0;
  [(MSUUpdateBrainLocator *)self _clientRequestBegin:@"copyUpdateBrainPath"];
  if (-[MSUUpdateBrainLocator updateAssetAttributes](self, "updateAssetAttributes") && (v5 = -[NSDictionary objectForKey:](-[MSUUpdateBrainLocator updateAssetAttributes](self, "updateAssetAttributes"), "objectForKey:", @"__msu_brain-location_key")) != 0 && (v6 = v5, [v5 UTF8String]))
  {
    v7 = strdup([v6 UTF8String]);
    v8 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v26 = @"copyUpdateBrainPath";
      v27 = 2082;
      v28 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {%{public}@} | Using provided local brain location at: %{public}s", buf, 0x16u);
    }

    newFilteredBrainQuery = 0;
    v10 = 0;
  }

  else
  {
    newFilteredBrainQuery = [(MSUUpdateBrainLocator *)self newFilteredBrainQuery];
    [newFilteredBrainQuery returnTypes:1];
    [newFilteredBrainQuery setDoNotBlockOnNetworkStatus:1];
    v11 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = @"copyUpdateBrainPath";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {%{public}@} | queryMetaDataSync...", buf, 0xCu);
    }

    if ([newFilteredBrainQuery queryMetaDataSync])
    {
      v12 = MAStringForMAQueryResult();
      v24 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 35, 0, 0, @"Failed to query for update brain asset, result:%@", v13, v14, v15, v12);
      if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
      {
        [MSUUpdateBrainLocator copyUpdateBrainPath:];
      }
    }

    else
    {
      v16 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = MAStringForMAQueryResult();
        *buf = 138543618;
        v26 = @"copyUpdateBrainPath";
        v27 = 2114;
        v28 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {%{public}@} | ...queryMetaDataSync | SUCCESS | MAQueryResult:%{public}@", buf, 0x16u);
      }

      v18 = -[MSUUpdateBrainLocator newBestAssetFromResults:error:](self, "newBestAssetFromResults:error:", [newFilteredBrainQuery results], &v24);
      if (v18)
      {
        v10 = v18;
        v7 = strdup([objc_msgSend(objc_msgSend(v18 "getLocalUrl")]);
        goto LABEL_17;
      }

      if (!v24)
      {
        v10 = 0;
        v7 = 0;
        v24 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 35, 0, 0, @"Could not find best update brain asset from results", v19, v20, v21, v23);
        goto LABEL_17;
      }
    }

    v10 = 0;
    v7 = 0;
  }

LABEL_17:

  [(MSUUpdateBrainLocator *)self _clientRequestComplete:@"copyUpdateBrainPath" withError:v24 wasSuccessful:v7 != 0];
  if (path && v24)
  {
    *path = v24;
  }

  return v7;
}

- (id)newFilteredBrainQuery
{
  v3 = +[NSNull null];
  v4 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = 20;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {newFilteredBrainQuery} | Using standard _CompatibilityVersion=%d", buf, 8u);
  }

  v5 = [NSString stringWithFormat:@"%d", 20];
  v6 = [MAAssetQuery alloc];
  v7 = [v6 initWithType:MSUBrainAssetType[0]];
  [v7 addKeyValuePair:ASAttributeCompatibilityVersion with:v5];
  [v7 addKeyValueArray:MSUBrainAttributeSupportedDevicesKey with:{+[NSMutableArray arrayWithObjects:](NSMutableArray, "arrayWithObjects:", v3, -[MSUUpdateBrainLocator deviceType](self, "deviceType"), 0)}];
  return v7;
}

- (id)newBestAssetFromResults:(id)results error:(id *)error
{
  v7 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v41 = [results count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {newBestAssetFromResults} | starting with: %lu query results", buf, 0xCu);
  }

  if (!results || ![results count])
  {
    v28 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 803, 0, 0, @"Query resulted in no update brain assets", v8, v9, v10, v31);
    v29 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {newBestAssetFromResults} | Nil array or zero assets from brain query, aborting", buf, 2u);
    }

    goto LABEL_18;
  }

  v11 = [results sortedArrayUsingComparator:&__block_literal_global_37];
  v12 = [objc_msgSend(v11 "lastObject")];
  v13 = [v12 objectForKey:ASAttributeContentVersion];
  v14 = [objc_msgSend(v11 "lastObject")];
  v15 = [v14 objectForKey:ASAttributeMasteredVersion];
  v16 = +[NSMutableArray array];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = __55__MSUUpdateBrainLocator_newBestAssetFromResults_error___block_invoke_42;
  v37[3] = &unk_100049330;
  v37[4] = v13;
  v37[5] = v15;
  v37[6] = v16;
  [v11 enumerateObjectsUsingBlock:v37];
  v17 = +[NSMutableArray array];
  v18 = +[NSMutableArray array];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = __55__MSUUpdateBrainLocator_newBestAssetFromResults_error___block_invoke_2;
  v36[3] = &unk_100049330;
  v36[4] = v17;
  v36[5] = self;
  v36[6] = v18;
  [v16 enumerateObjectsUsingBlock:v36];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v38[0] = v17;
  v38[1] = v18;
  v19 = [NSArray arrayWithObjects:v38 count:2];
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v20)
  {
    v21 = *v33;
    do
    {
      v22 = 0;
      do
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v32 + 1) + 8 * v22) sortUsingComparator:&__block_literal_global_46];
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [(NSArray *)v19 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v20);
  }

  if (![v18 count] && (v18 = v17, !objc_msgSend(v17, "count")) || (v26 = objc_msgSend(v18, "lastObject"), v27 = v26, !v26))
  {
    v28 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 805, 0, 0, @"No matching update brains found", v23, v24, v25, v31);
LABEL_18:
    v26 = 0;
    if (error && v28)
    {
      v26 = 0;
      *error = v28;
    }
  }

  return v26;
}

int64_t __55__MSUUpdateBrainLocator_newBestAssetFromResults_error___block_invoke(id a1, MAAsset *a2, MAAsset *a3)
{
  v5 = [(MAAsset *)a2 attributes];
  result = [objc_msgSend(v5 objectForKey:{ASAttributeContentVersion), "compare:", objc_msgSend(-[MAAsset attributes](a3, "attributes"), "objectForKey:", ASAttributeContentVersion)}];
  if (!result)
  {
    v7 = [(MAAsset *)a2 attributes];
    v8 = ASAttributeMasteredVersion;
    if ([v7 objectForKey:ASAttributeMasteredVersion] || (result = objc_msgSend(-[MAAsset attributes](a3, "attributes"), "objectForKey:", v8)) != 0)
    {
      if ([-[MAAsset attributes](a2 "attributes")])
      {
        if ([-[MAAsset attributes](a3 "attributes")])
        {
          v9 = objc_alloc_init(NSNumberFormatter);
          [v9 setFormatterBehavior:{+[NSNumberFormatter defaultFormatterBehavior](NSNumberFormatter, "defaultFormatterBehavior")}];
          v10 = [v9 numberFromString:{objc_msgSend(-[MAAsset attributes](a2, "attributes"), "objectForKey:", v8)}];
          v11 = [v9 numberFromString:{objc_msgSend(-[MAAsset attributes](a3, "attributes"), "objectForKey:", v8)}];

          return [v10 compare:v11];
        }

        else
        {
          return 1;
        }
      }

      else
      {
        return -1;
      }
    }
  }

  return result;
}

id __55__MSUUpdateBrainLocator_newBestAssetFromResults_error___block_invoke_42(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 attributes];
  result = [objc_msgSend(v7 objectForKey:{ASAttributeContentVersion), "isEqualToNumber:", *(a1 + 32)}];
  if (result)
  {
    if (!*(a1 + 40) || (v9 = [a2 attributes], result = objc_msgSend(objc_msgSend(v9, "objectForKey:", ASAttributeMasteredVersion), "isEqualToString:", *(a1 + 40)), result))
    {
      result = [*(a1 + 48) addObject:a2];
    }
  }

  *a4 = 0;
  return result;
}

id __55__MSUUpdateBrainLocator_newBestAssetFromResults_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 attributes];
  if (![v7 objectForKey:MSUBrainAttributeSupportedDevicesKey])
  {
    v10 = 32;
    goto LABEL_5;
  }

  v8 = [a2 attributes];
  result = [objc_msgSend(v8 objectForKey:{MSUBrainAttributeSupportedDevicesKey), "containsObject:", objc_msgSend(*(a1 + 40), "deviceType")}];
  if (result)
  {
    v10 = 48;
LABEL_5:
    result = [*(a1 + v10) addObject:a2];
  }

  *a4 = 0;
  return result;
}

int64_t __55__MSUUpdateBrainLocator_newBestAssetFromResults_error___block_invoke_3(id a1, MAAsset *a2, MAAsset *a3)
{
  v4 = [NSNumber numberWithInt:dword_100032B18[[(MAAsset *)a2 state]]];
  v5 = [NSNumber numberWithInt:dword_100032B18[[(MAAsset *)a3 state]]];

  return [(NSNumber *)v4 compare:v5];
}

- (void)installMAUpdateBrain:(id)brain handler:(id)handler
{
  [(MSUUpdateBrainLocator *)self _clientRequestBegin:@"installMAUpdateBrain"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __54__MSUUpdateBrainLocator_installMAUpdateBrain_handler___block_invoke;
  v7[3] = &unk_100049418;
  v7[4] = self;
  v7[5] = @"installMAUpdateBrain";
  v7[6] = brain;
  v7[7] = handler;
  [(MSUUpdateBrainLocator *)self downloadBrainAsset:brain handler:v7];
}

void __54__MSUUpdateBrainLocator_installMAUpdateBrain_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[MSUUpdateBrainLocator locatorsStateQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __54__MSUUpdateBrainLocator_installMAUpdateBrain_handler___block_invoke_2;
  v8[3] = &unk_1000493F0;
  v8[4] = a3;
  v8[5] = a2;
  v7 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v7;
  dispatch_sync(v6, v8);
}

id __54__MSUUpdateBrainLocator_installMAUpdateBrain_handler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 32))
  {
LABEL_2:
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 72);

    return [v9 _clientRequestComplete:v10 reportingState:0 withError:? moreToCome:? handler:?];
  }

  if (!*(a1 + 40))
  {
    _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 806, 0, 0, @"Unable to download update brain asset", a6, a7, a8, v36);
    goto LABEL_2;
  }

  v13 = [MSUUpdateBrainLocator newBrainAssetName:?];
  [*(a1 + 40) logAsset];

  *(*(a1 + 48) + 8) = [objc_msgSend(objc_msgSend(*(a1 + 40) "attributes")];
  if ([*(a1 + 40) state] == 2)
  {
    *(*(a1 + 48) + 24) = 0;
    v14 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 56);
      *buf = 138543618;
      v47 = v15;
      v48 = 2114;
      v49 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[BRAIN LOCATOR] {%{public}@} | No need to download %{public}@ - it is already installed", buf, 0x16u);
    }

    return [*(a1 + 48) _clientRequestComplete:*(a1 + 56) reportingState:0 withError:0 moreToCome:0 handler:*(a1 + 72)];
  }

  else
  {
    *(*(a1 + 48) + 24) = *(a1 + 40);
    v16 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 56);
      v18 = *(*(a1 + 48) + 8);
      *buf = 138543874;
      v47 = v17;
      v48 = 2114;
      v49 = v18;
      v50 = 2114;
      v51 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {%{public}@} | We have found a brain (%{public}@) we need to download %{public}@, we will commit self-destruction", buf, 0x20u);
    }

    v44 = @"CommitSelfDestruct";
    v45 = &__kCFBooleanTrue;
    v19 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v43 = 0;
    v20 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 56);
      *buf = 138543362;
      v47 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {%{public}@} | Attempting purge of old assets", buf, 0xCu);
    }

    v22 = [*(a1 + 48) _purgeInstalledUpdateBrains:&v43];
    v23 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    v24 = v23;
    if (v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 56);
        *buf = 138543362;
        v47 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {%{public}@} | SUCCESS | old assets purged", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __54__MSUUpdateBrainLocator_installMAUpdateBrain_handler___block_invoke_2_cold_1(a1, &v43);
    }

    v26 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 56);
      *buf = 138543362;
      v47 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {%{public}@} | Attempting to cancel other downloads", buf, 0xCu);
    }

    if (([*(a1 + 48) cancelAllDownloadsExcept:*(a1 + 40) error:&v43] & 1) == 0)
    {
      v28 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(a1 + 56);
        *buf = 138543618;
        v47 = v29;
        v48 = 2114;
        v49 = v43;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {%{public}@} | Cancel failed, error:%{public}@", buf, 0x16u);
      }
    }

    v30 = *(a1 + 40);
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = __54__MSUUpdateBrainLocator_installMAUpdateBrain_handler___block_invoke_64;
    v42[3] = &unk_100049378;
    v42[4] = *(a1 + 56);
    [v30 attachProgressCallBack:v42];
    v31 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 56);
      *buf = 138543618;
      v47 = v32;
      v48 = 2114;
      v49 = v13;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {%{public}@} | %{public}@ | startDownload...", buf, 0x16u);
    }

    v33 = *(a1 + 40);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = __54__MSUUpdateBrainLocator_installMAUpdateBrain_handler___block_invoke_72;
    v37[3] = &unk_1000493C8;
    v38 = *(a1 + 48);
    v34 = *(a1 + 64);
    v35 = *(a1 + 72);
    v40 = v19;
    v41 = v35;
    v39 = v13;
    return [v33 startDownload:v34 then:v37];
  }
}

void __54__MSUUpdateBrainLocator_installMAUpdateBrain_handler___block_invoke_64(uint64_t a1, void *a2)
{
  v4 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [a2 totalWritten];
    v7 = [a2 totalExpected];
    v8 = [a2 isStalled];
    v9 = @"NO";
    v10 = 138544130;
    v11 = v5;
    v12 = 2048;
    if (v8)
    {
      v9 = @"YES";
    }

    v13 = v6;
    v14 = 2048;
    v15 = v7;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {%{public}@} | Brain download progress: written:%lld, expected:%lld, stalled:%{public}@", &v10, 0x2Au);
  }
}

void __54__MSUUpdateBrainLocator_installMAUpdateBrain_handler___block_invoke_72(uint64_t a1, uint64_t a2)
{
  v4 = +[MSUUpdateBrainLocator locatorsStateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __54__MSUUpdateBrainLocator_installMAUpdateBrain_handler___block_invoke_2_73;
  v6[3] = &unk_1000493A0;
  v9 = *(a1 + 64);
  v10 = a2;
  v5 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = v5;
  dispatch_sync(v4, v6);
}

void __54__MSUUpdateBrainLocator_installMAUpdateBrain_handler___block_invoke_2_73(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = v2 == 10;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = *(a1 + 72);
      *buf = 138543874;
      v20 = v5;
      v21 = 2114;
      v22 = v6;
      v23 = 2114;
      v24 = MAStringForMADownloadResult();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {%{public}@} | %{public}@ | ...startDownload | SUCCESS | MADownLoadResult:%{public}@", buf, 0x20u);
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = 0;
  }

  else
  {
    v13 = MAStringForMADownloadResult();
    v17 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 806, 0, 0, @"Failed to download update brain asset, MADownLoadResult:%@", v14, v15, v16, v13);
    if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      __54__MSUUpdateBrainLocator_installMAUpdateBrain_handler___block_invoke_2_73_cold_1(a1, (a1 + 72));
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(a1 + 64);
    v10 = 0;
    v12 = v17;
  }

  [v8 _clientRequestComplete:v9 reportingState:v10 withError:v12 moreToCome:0 handler:v11];
}

- (void)adjustMADownloadOptions:(id)options callback:(id)callback
{
  [(MSUUpdateBrainLocator *)self _clientRequestBegin:@"adjustMADownloadOptions"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __58__MSUUpdateBrainLocator_adjustMADownloadOptions_callback___block_invoke;
  v7[3] = &unk_100049440;
  v7[4] = self;
  v7[5] = @"adjustMADownloadOptions";
  v7[6] = options;
  v7[7] = callback;
  dispatch_sync(+[MSUUpdateBrainLocator locatorsStateQueue], v7);
}

id __58__MSUUpdateBrainLocator_adjustMADownloadOptions_callback___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) brainAsset])
  {
    if (([objc_msgSend(*(a1 + 32) "brainAsset")] & 1) == 0)
    {
      v5 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __58__MSUUpdateBrainLocator_adjustMADownloadOptions_callback___block_invoke_cold_1(a1, v5);
      }
    }

    v6 = +[MSUUpdateBrainLocator newBrainAssetName:](MSUUpdateBrainLocator, "newBrainAssetName:", [*(a1 + 32) brainAsset]);
    if ([objc_msgSend(*(a1 + 32) "brainAsset")] == 4)
    {
      v10 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        *buf = 138543618;
        v30 = v11;
        v31 = 2114;
        v32 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {%{public}@} | %{public}@ | configDownloadSync...", buf, 0x16u);
      }

      if ([objc_msgSend(*(a1 + 32) "brainAsset")])
      {
        v12 = MAStringForMAOperationResult();
        v16 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 808, 0, 0, @"Failed to adjust download configuration, MAOperationResult:%@", v13, v14, v15, v12);
        v17 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 40);
          v19 = MAStringForMAOperationResult();
          *buf = 138543874;
          v30 = v18;
          v31 = 2114;
          v32 = v6;
          v33 = 2114;
          v34 = v19;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {%{public}@} | %{public}@ | ...configDownloadSync | FAILURE | MAOperationResult:%{public}@", buf, 0x20u);
        }
      }

      else
      {
        v25 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(a1 + 40);
          v27 = MAStringForMAOperationResult();
          *buf = 138543874;
          v30 = v26;
          v31 = 2114;
          v32 = v6;
          v33 = 2114;
          v34 = v27;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {%{public}@} | %{public}@ | ...configDownloadSync | SUCCESS | MAOperationResult:%{public}@", buf, 0x20u);
        }

        v16 = 0;
      }
    }

    else
    {
      v16 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 809, 0, 0, @"Not adjusting configuration since asset is not in downloading state", v7, v8, v9, v28);
      if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
      {
        __58__MSUUpdateBrainLocator_adjustMADownloadOptions_callback___block_invoke_cold_2(a1);
      }
    }

    return [*(a1 + 32) _clientRequestComplete:*(a1 + 40) withError:v16 handler:*(a1 + 56)];
  }

  else
  {
    v20 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 807, 0, 0, @"Attempted to change download priority of a nil asset", v2, v3, v4, v28);
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v23 = *(a1 + 56);

    return [v21 _clientRequestComplete:v22 withError:v20 handler:v23];
  }
}

- (void)adjustDownloadOptions:(id)options handler:(id)handler
{
  v6 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    safeSummary = [options safeSummary];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {adjustDownloadOptions} | Ignored options are: %{public}@", &v7, 0xCu);
  }

  (*(handler + 2))(handler, 0);
}

- (BOOL)cancelInstall:(id *)install
{
  v26 = 0;
  [(MSUUpdateBrainLocator *)self _clientRequestBegin:@"cancelInstall"];
  v8 = [(MSUUpdateBrainLocator *)self newBrainAsset:&v26];
  if (v8)
  {
    v9 = [MSUUpdateBrainLocator newBrainAssetName:v8];
    state = [v8 state];
    v11 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (state == 4)
    {
      if (v12)
      {
        *buf = 138543618;
        v28 = @"cancelInstall";
        v29 = 2114;
        v30 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {%{public}@} | %{public}@ | cancelDownloadSync...", buf, 0x16u);
      }

      if ([v8 cancelDownloadSync])
      {
        MAStringForMACancelDownloadResult();
        v26 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 810, 0, 0, @"Could not cancel update brain download on %@, MACancelDownloadResult:%@", v13, v14, v15, v8);
        v16 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = MAStringForMACancelDownloadResult();
          *buf = 138544130;
          v28 = @"cancelInstall";
          v29 = 2114;
          v30 = v9;
          v31 = 2114;
          v32 = v17;
          v33 = 2114;
          v34 = v26;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[BRAIN_LOCATOR] {%{public}@} | %{public}@ | ...cancelDownloadSync | FAILURE | MACancelDownloadResult:%{public}@, error:%{public}@", buf, 0x2Au);
        }

        goto LABEL_10;
      }

      v22 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = MAStringForMACancelDownloadResult();
        *buf = 138543874;
        v28 = @"cancelInstall";
        v29 = 2114;
        v30 = v9;
        v31 = 2114;
        v32 = v23;
        v19 = "[BRAIN_LOCATOR] {%{public}@} | %{public}@ | ...cancelDownloadSync | SUCCESS | MACancelDownloadResult:%{public}@";
        v20 = v22;
        v21 = 32;
        goto LABEL_16;
      }
    }

    else if (v12)
    {
      *buf = 138543618;
      v28 = @"cancelInstall";
      v29 = 2114;
      v30 = v9;
      v19 = "[BRAIN_LOCATOR] {%{public}@} | Skipping cancel as %{public}@ is not downloading";
      v20 = v11;
      v21 = 22;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
    }

    v18 = 1;
    goto LABEL_18;
  }

  if (!v26)
  {
    v9 = 0;
    v18 = 0;
    v26 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 807, 0, 0, @"Could not locate any available update brain asset", v5, v6, v7, v25);
    goto LABEL_18;
  }

  v9 = 0;
LABEL_10:
  v18 = 0;
LABEL_18:

  [(MSUUpdateBrainLocator *)self _clientRequestComplete:@"cancelInstall" withError:v26 wasSuccessful:v18];
  if (install && v26)
  {
    *install = v26;
  }

  return v18;
}

- (void)createBestAsset:(id)asset
{
  v15 = 0;
  newFilteredBrainQuery = [(MSUUpdateBrainLocator *)self newFilteredBrainQuery];
  [newFilteredBrainQuery returnTypes:0];
  v6 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {createBestAsset} | queryMetaDataSync...", buf, 2u);
  }

  if ([newFilteredBrainQuery queryMetaDataSync])
  {
    v7 = MAStringForMAQueryResult();
    v11 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 811, 0, 0, @"Failed to query for assets, MAQueryResult:%@", v8, v9, v10, v7);
    v15 = v11;
    if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      [MSUUpdateBrainLocator createBestAsset:];
    }

    (*(asset + 2))(asset, 0, v11);
  }

  else
  {
    v12 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = MAStringForMAQueryResult();
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {createBestAsset} | ...queryMetaDataSync | SUCCESS | MAQueryResult:%{public}@", buf, 0xCu);
    }

    v14 = -[MSUUpdateBrainLocator newBestAssetFromResults:error:](self, "newBestAssetFromResults:error:", [newFilteredBrainQuery results], &v15);
    (*(asset + 2))(asset, v14, 0);
  }
}

- (void)appendCatalogDownloadOptionsToExistingOptions:(id)options
{
  if (options)
  {
    v5 = objc_opt_new();
    v6 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = 20;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {appendCatalogDownloadOptionsToExistingOptions} | Using standard _CompatibilityVersion=%d", buf, 8u);
    }

    [v5 setObject:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%d", 20), @"CompatibilityVersion"}];
    v7 = [(NSDictionary *)[(MSUUpdateBrainLocator *)self updateAssetAttributes] objectForKey:@"Build"];
    if (v7)
    {
      v8 = v7;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 setObject:v8 forKey:@"TargetBuildVersion"];
      }
    }

    [options setAdditionalServerParams:v5];
  }

  else
  {
    v9 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MSUUpdateBrainLocator appendCatalogDownloadOptionsToExistingOptions:v9];
    }
  }
}

- (void)downloadBrainAsset:(id)asset handler:(id)handler
{
  if (asset)
  {
    assetCopy = asset;
    assetCopy2 = asset;
  }

  else
  {
    assetCopy2 = objc_opt_new();
    [assetCopy2 setDiscretionary:0];
  }

  [(MSUUpdateBrainLocator *)self appendCatalogDownloadOptionsToExistingOptions:assetCopy2];
  v9 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"client provided";
    if (!asset)
    {
      v10 = @"default";
    }

    *buf = 138543618;
    v14 = v10;
    v15 = 2114;
    v16 = assetCopy2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {downloadBrainAsset} | Using %{public}@ downloadOptions for brainAssetDownload, options:%{public}@", buf, 0x16u);
  }

  v11 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {downloadBrainAsset} | startCatalogDownload...", buf, 2u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __52__MSUUpdateBrainLocator_downloadBrainAsset_handler___block_invoke;
  v12[3] = &unk_100049468;
  v12[5] = assetCopy2;
  v12[6] = handler;
  v12[4] = self;
  [MAAsset startCatalogDownload:MSUBrainAssetType[0] options:assetCopy2 completionWithError:v12];
}

void __52__MSUUpdateBrainLocator_downloadBrainAsset_handler___block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  if (a2 != 10 && a2)
  {
    v6 = MAStringForMADownloadResult();
    _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 812, a3, 0, @"Failed to download catalog, MADownloadResult:%@", v7, v8, v9, v6);
    if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      __52__MSUUpdateBrainLocator_downloadBrainAsset_handler___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = MAStringForMADownloadResult();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {downloadBrainAsset} | ...startCatalogDownload | SUCCESS | MADownLoadResult:%{public}@", buf, 0xCu);
    }

    [*(a1 + 32) createBestAsset:*(a1 + 48)];
  }
}

- (id)newBrainAsset:(id *)asset
{
  newFilteredBrainQuery = [(MSUUpdateBrainLocator *)self newFilteredBrainQuery];
  v36 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3052000000;
  v33 = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__3;
  v35 = dispatch_semaphore_create(0);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v6 = objc_opt_new();
  [(MSUUpdateBrainLocator *)self appendCatalogDownloadOptionsToExistingOptions:v6];
  [v6 setDiscretionary:0];
  v7 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {newBrainAsset} | startCatalogDownload...", buf, 2u);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __39__MSUUpdateBrainLocator_newBrainAsset___block_invoke;
  v22[3] = &unk_100049490;
  v22[4] = newFilteredBrainQuery;
  v22[5] = v6;
  v22[6] = &v24;
  v22[7] = &v30;
  [MAAsset startCatalogDownload:MSUBrainAssetType[0] options:v6 then:v22];
  v8 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {newBrainAsset} | BEGIN WAIT | startCatalogDownload", buf, 2u);
  }

  v9 = v31[5];
  v10 = dispatch_time(0, 1200000000000);
  dispatch_semaphore_wait(v9, v10);
  v11 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {newBrainAsset} | END WAIT | startCatalogDownload", buf, 2u);
  }

  dispatch_release(v31[5]);

  v15 = v25[5];
  if (!v15)
  {
    v20 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 803, 0, 0, @"Could not get assets of type %@", v12, v13, v14, MSUBrainAssetType[0]);
    goto LABEL_11;
  }

  v16 = [(MSUUpdateBrainLocator *)self newBestAssetFromResults:v15 error:&v36];

  v20 = v36;
  if (!(v16 | v36))
  {
    v20 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 805, 0, 0, @"Could not determine best update brain asset of type %@", v17, v18, v19, MSUBrainAssetType[0]);
LABEL_11:
    v16 = 0;
    v36 = v20;
  }

  if (asset && v20)
  {
    *asset = v20;
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
  return v16;
}

intptr_t __39__MSUUpdateBrainLocator_newBrainAsset___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 != 10 && a2)
  {
    if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      __39__MSUUpdateBrainLocator_newBrainAsset___block_invoke_cold_2();
    }
  }

  else
  {
    v3 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = MAStringForMADownloadResult();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {newBrainAsset} | ...startCatalogDownload | SUCCESS | MADownLoadResult:%{public}@", &v9, 0xCu);
    }

    v4 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {newBrainAsset} | queryMetaDataSync...", &v9, 2u);
    }

    v5 = [*(a1 + 32) queryMetaDataSync];
    v6 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __39__MSUUpdateBrainLocator_newBrainAsset___block_invoke_cold_1();
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {newBrainAsset} | ...queryMetaDataSync | SUCCESS", &v9, 2u);
      }

      *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) results];
    }
  }

  return dispatch_semaphore_signal(*(*(*(a1 + 56) + 8) + 40));
}

- (id)newBrainQuery
{
  v2 = [MAAssetQuery alloc];
  v3 = MSUBrainAssetType[0];

  return [v2 initWithType:v3];
}

- (BOOL)purgeInstalledUpdateBrains:(id *)brains
{
  v7 = 0;
  [(MSUUpdateBrainLocator *)self _clientRequestBegin:@"purgeInstalledUpdateBrains"];
  v5 = [(MSUUpdateBrainLocator *)self _purgeInstalledUpdateBrains:&v7];
  [(MSUUpdateBrainLocator *)self _clientRequestComplete:@"purgeInstalledUpdateBrains" withError:v7 wasSuccessful:v5];
  if (brains && v7)
  {
    *brains = v7;
  }

  return v5;
}

- (BOOL)_purgeInstalledUpdateBrains:(id *)brains
{
  newBrainQuery = [(MSUUpdateBrainLocator *)self newBrainQuery];
  [newBrainQuery returnTypes:1];
  [newBrainQuery setDoNotBlockOnNetworkStatus:1];
  v5 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38 = @"purgeInstalledUpdateBrains";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {%{public}@} | queryMetaDataSync...", buf, 0xCu);
  }

  v29 = newBrainQuery;
  brainsCopy = brains;
  if ([newBrainQuery queryMetaDataSync])
  {
    v31 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 811, 0, 0, @"Failed to query for installed update brains", v6, v7, v8, v28);
    if (os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      [MSUUpdateBrainLocator _purgeInstalledUpdateBrains:];
    }

    goto LABEL_6;
  }

  results = [newBrainQuery results];
  v11 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MAStringForMAQueryResult();
    *buf = 138543618;
    v38 = @"purgeInstalledUpdateBrains";
    v39 = 2114;
    v40 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {%{public}@} | ...queryMetaDataSync | SUCCESS | MAQueryResult:%{public}@", buf, 0x16u);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = [results countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v13)
  {
    v31 = 0;
LABEL_6:
    v9 = 1;
    goto LABEL_26;
  }

  v14 = v13;
  v31 = 0;
  v15 = *v33;
  v9 = 1;
  do
  {
    v16 = 0;
    do
    {
      if (*v33 != v15)
      {
        objc_enumerationMutation(results);
      }

      v17 = *(*(&v32 + 1) + 8 * v16);
      v18 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v38 = @"purgeInstalledUpdateBrains";
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {%{public}@} | purgeSync...", buf, 0xCu);
      }

      if ([v17 purgeSync])
      {
        if (v9)
        {
          v19 = MAStringForMAPurgeResult();
          v31 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 813, 0, 0, @"Failed to purge update brain asset: %@", v20, v21, v22, v19);
        }

        v23 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v26 = MAStringForMAPurgeResult();
          *buf = 138543618;
          v38 = @"purgeInstalledUpdateBrains";
          v39 = 2114;
          v40 = v26;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[BRAIN_LOCATOR] {%{public}@} | ...purgeSync | FAILURE | MAPurgeResult:%{public}@", buf, 0x16u);
        }

        v9 = 0;
      }

      else
      {
        v24 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = MAStringForMAPurgeResult();
          *buf = 138543618;
          v38 = @"purgeInstalledUpdateBrains";
          v39 = 2114;
          v40 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {%{public}@} | ...purgeSync | SUCCESS | MAPurgeResult:%{public}@", buf, 0x16u);
        }
      }

      v16 = v16 + 1;
    }

    while (v14 != v16);
    v14 = [results countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v14);
LABEL_26:

  if (brainsCopy && v31)
  {
    *brainsCopy = v31;
  }

  return v9;
}

- (void)requiredDiskSpace:(id)space
{
  [(MSUUpdateBrainLocator *)self _clientRequestBegin:@"requiredDiskSpace"];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __43__MSUUpdateBrainLocator_requiredDiskSpace___block_invoke;
  v5[3] = &unk_1000494B8;
  v5[4] = self;
  v5[5] = @"requiredDiskSpace";
  v5[6] = space;
  [(MSUUpdateBrainLocator *)self downloadBrainAsset:0 handler:v5];
}

id __43__MSUUpdateBrainLocator_requiredDiskSpace___block_invoke(void *a1, void *a2, __CFError *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  if (!a2 || a3)
  {
    if (!a3)
    {
      v8 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 806, 0, 0, @"Failed to download update brain asset", 0, a7, a8, v25);
    }

    v11 = a1[4];
    v12 = a1[5];
    v13 = a1[6];
    v14 = 0;
    goto LABEL_8;
  }

  if ([a2 state] == 2)
  {
    v11 = a1[4];
    v12 = a1[5];
    v13 = a1[6];
    v14 = @"requiredSpace";
    v8 = 0;
LABEL_8:

    return [v11 _clientRequestComplete:v12 nameForNumber:v14 valueForNumber:0 withError:v8 handler:v13];
  }

  v26 = 0;
  if ([a2 spaceCheck:&v26])
  {
    v19 = a1[4];
    v20 = a1[5];
    v21 = v26;
    v22 = a1[6];
    v23 = @"requiredSpace";
    v24 = 0;
  }

  else
  {
    v24 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 814, 0, 0, @"Could not determine disk space requirements for update brain asset", v16, v17, v18, v25);
    v19 = a1[4];
    v20 = a1[5];
    v22 = a1[6];
    v23 = 0;
    v21 = 0;
  }

  return [v19 _clientRequestComplete:v20 nameForNumber:v23 valueForNumber:v21 withError:v24 handler:v22];
}

- (BOOL)cancelAllDownloadsExcept:(id)except error:(id *)error
{
  v7 = [MSUUpdateBrainLocator newBrainAssetName:?];
  v8 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v45 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {cancelAllDownloadsExcept} | %{public}@", buf, 0xCu);
  }

  newBrainQuery = [(MSUUpdateBrainLocator *)self newBrainQuery];
  [newBrainQuery returnTypes:0];
  v36 = newBrainQuery;
  errorCopy = error;
  if ([newBrainQuery queryMetaDataSync])
  {
    v39 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 811, 0, 0, @"Failed to query for update brains", v10, v11, v12, v35);
    v38 = 0;
    goto LABEL_28;
  }

  results = [newBrainQuery results];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v14 = [results countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (!v14)
  {
    v39 = 0;
    v38 = 1;
    goto LABEL_28;
  }

  v15 = v14;
  v39 = 0;
  v16 = *v41;
  v38 = 1;
  do
  {
    v17 = 0;
    do
    {
      if (*v41 != v16)
      {
        objc_enumerationMutation(results);
      }

      v18 = *(*(&v40 + 1) + 8 * v17);
      v19 = [MSUUpdateBrainLocator newBrainAssetName:v18];
      if (([objc_msgSend(v18 "assetId")] & 1) != 0 || objc_msgSend(v18, "state") != 4)
      {
        v26 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        *buf = 138543362;
        v45 = v19;
        v27 = v26;
        v28 = "[BRAIN_LOCATOR] {cancelAllDownloadsExcept} | %{public}@ | not canceling";
        v29 = 12;
        goto LABEL_20;
      }

      v20 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v45 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] {cancelAllDownloadsExcept} | %{public}@ | cancelDownloadSync...", buf, 0xCu);
      }

      if ([v18 cancelDownloadSync])
      {
        v21 = MAStringForMACancelDownloadResult();
        v39 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 815, 0, 0, @"Failed to cancel asset download, MACancelDownloadResult:%@", v22, v23, v24, v21);
        v25 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v32 = MAStringForMACancelDownloadResult();
          *buf = 138543874;
          v45 = v19;
          v46 = 2114;
          v47 = v32;
          v48 = 2114;
          v49 = v39;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[BRAIN_LOCATOR] {cancelAllDownloadsExcept} | %{public}@ | ...cancelDownloadSync | FAILURE | MACancelDownloadResult:%{public}@, error:%{public}@", buf, 0x20u);
        }

        v38 = 0;
      }

      else
      {
        v30 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = MAStringForMACancelDownloadResult();
          *buf = 138543618;
          v45 = v19;
          v46 = 2114;
          v47 = v31;
          v27 = v30;
          v28 = "[BRAIN_LOCATOR] {cancelAllDownloadsExcept} | %{public}@ | ...cancelDownloadSync | SUCCESS | MACancelDownloadResult:%{public}@";
          v29 = 22;
LABEL_20:
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, buf, v29);
        }
      }

LABEL_21:

      v17 = v17 + 1;
    }

    while (v15 != v17);
    v33 = [results countByEnumeratingWithState:&v40 objects:v50 count:16];
    v15 = v33;
  }

  while (v33);
LABEL_28:

  if (errorCopy && v39)
  {
    *errorCopy = v39;
  }

  return v38;
}

- (void)_clientRequestBegin:(id)begin
{
  v4 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    beginCopy = begin;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] | %{public}@ | BEGIN client request", &v5, 0xCu);
  }
}

- (void)_clientRequestComplete:(id)complete withError:(id)error
{
  v6 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  v7 = v6;
  if (error)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MSUUpdateBrainLocator _clientRequestComplete:withError:];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    completeCopy = complete;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] | %{public}@ | END client request | SUCCESS", &v8, 0xCu);
  }
}

- (void)_clientRequestComplete:(id)complete withError:(id)error wasSuccessful:(BOOL)successful
{
  successfulCopy = successful;
  v8 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  v9 = v8;
  if (error)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (successfulCopy)
    {
      if (v10)
      {
        [MSUUpdateBrainLocator _clientRequestComplete:withError:wasSuccessful:];
      }
    }

    else if (v10)
    {
      [MSUUpdateBrainLocator _clientRequestComplete:withError:];
    }
  }

  else
  {
    v11 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (successfulCopy)
    {
      if (!v11)
      {
        return;
      }

      v13 = 138543362;
      completeCopy2 = complete;
      v12 = "[BRAIN_LOCATOR] | %{public}@ | END client request | SUCCESS";
    }

    else
    {
      if (!v11)
      {
        return;
      }

      v13 = 138543362;
      completeCopy2 = complete;
      v12 = "[BRAIN_LOCATOR] | %{public}@ | END client request | FAILURE | no error provided";
    }

    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v12, &v13, 0xCu);
  }
}

- (void)_clientRequestComplete:(id)complete withError:(id)error handler:(id)handler
{
  v8 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
  v9 = v8;
  if (handler)
  {
    if (error)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [MSUUpdateBrainLocator _clientRequestComplete:withError:handler:];
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      completeCopy2 = complete;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] | %{public}@ | END client request (calling completion handler) | SUCCESS", &v10, 0xCu);
    }

    (*(handler + 2))(handler, error);
  }

  else if (error)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MSUUpdateBrainLocator _clientRequestComplete:withError:handler:];
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    completeCopy2 = complete;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] | %{public}@ | END client request (no completion handler) | SUCCESS", &v10, 0xCu);
  }
}

- (void)_clientRequestComplete:(id)complete nameForNumber:(id)number valueForNumber:(int64_t)forNumber withError:(id)error handler:(id)handler
{
  if (error)
  {
    v10 = os_log_type_enabled([+[SUCoreLog sharedLogger](SUCoreLog sharedLogger], OS_LOG_TYPE_ERROR);
    if (handler)
    {
      if (v10)
      {
        [MSUUpdateBrainLocator _clientRequestComplete:withError:handler:];
      }

      v11 = 0;
LABEL_9:
      (*(handler + 2))(handler, v11, error);
      return;
    }

    if (v10)
    {
      [MSUUpdateBrainLocator _clientRequestComplete:withError:handler:];
    }
  }

  else
  {
    v11 = [NSNumber numberWithLongLong:forNumber];
    v14 = [+[SUCoreLog sharedLogger](SUCoreLog "sharedLogger")];
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (handler)
    {
      if (v15)
      {
        v16 = 138543874;
        completeCopy2 = complete;
        v18 = 2114;
        numberCopy2 = number;
        v20 = 2048;
        forNumberCopy2 = forNumber;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] | %{public}@ | END client request (calling completion handler) | SUCCESS | %{public}@=%llu", &v16, 0x20u);
      }

      goto LABEL_9;
    }

    if (v15)
    {
      v16 = 138543874;
      completeCopy2 = complete;
      v18 = 2114;
      numberCopy2 = number;
      v20 = 2048;
      forNumberCopy2 = forNumber;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOCATOR] | %{public}@ | END client request (no completion handler) | SUCCESS | %{public}@=%lld", &v16, 0x20u);
    }
  }
}

+ (id)stateSummary:(id)summary
{
  if (!summary)
  {
    return @"NONE";
  }

  v4 = @"CommitSelfDestruct";
  if ([summary objectForKeyedSubscript:@"CommitSelfDestruct"])
  {
    return v4;
  }

  return [summary safeSummary];
}

+ (id)newBrainAssetName:(id)name
{
  v4 = [NSString alloc];
  assetId = [name assetId];
  [name state];
  return [v4 initWithFormat:@"brainAsset[%@](%@)", assetId, MAStringForMAAssetState()];
}

- (void)copyUpdateBrainPath:.cold.1()
{
  OUTLINED_FUNCTION_5();
  MAStringForMAQueryResult();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __54__MSUUpdateBrainLocator_installMAUpdateBrain_handler___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  LODWORD(v6) = 138543618;
  *(&v6 + 4) = *(a1 + 56);
  OUTLINED_FUNCTION_4();
  *v7 = v3;
  OUTLINED_FUNCTION_2(&_mh_execute_header, v4, v5, "[BRAIN_LOCATOR] {%{public}@} | FAILURE | Purge failed, error:%{public}@", v6, DWORD2(v6), *&v7[2]);
}

void __54__MSUUpdateBrainLocator_installMAUpdateBrain_handler___block_invoke_2_73_cold_1(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *a2;
  MAStringForMADownloadResult();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void __58__MSUUpdateBrainLocator_adjustMADownloadOptions_callback___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[BRAIN_LOCATOR] {%{public}@} | Could not determine state of asset while trying to adjust priority, attempting anyway", &v3, 0xCu);
}

void __58__MSUUpdateBrainLocator_adjustMADownloadOptions_callback___block_invoke_cold_2(uint64_t a1)
{
  LODWORD(v3) = 138543618;
  *(&v3 + 4) = *(a1 + 40);
  OUTLINED_FUNCTION_4();
  *v4 = v1;
  OUTLINED_FUNCTION_2(&_mh_execute_header, v1, v2, "[BRAIN_LOCATOR] {%{public}@} | %{public}@ | Not adjusting configuration since asset is not in downloading state", v3, DWORD2(v3), *&v4[2]);
}

- (void)createBestAsset:.cold.1()
{
  OUTLINED_FUNCTION_5();
  MAStringForMAQueryResult();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __52__MSUUpdateBrainLocator_downloadBrainAsset_handler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  MAStringForMADownloadResult();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __39__MSUUpdateBrainLocator_newBrainAsset___block_invoke_cold_1()
{
  MAStringForMAQueryResult();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __39__MSUUpdateBrainLocator_newBrainAsset___block_invoke_cold_2()
{
  MAStringForMADownloadResult();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_purgeInstalledUpdateBrains:.cold.1()
{
  OUTLINED_FUNCTION_5();
  MAStringForMAQueryResult();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

@end