@interface MAAssetQuery
- (BOOL)isCatalogFetchedWithinThePastFewDays:(int)days;
- (MAAssetQuery)initWithType:(id)type andPurpose:(id)purpose;
- (id)description;
- (int64_t)addKeyValueArray:(id)array with:(id)with;
- (int64_t)addKeyValueNull:(id)null;
- (int64_t)addKeyValuePair:(id)pair with:(id)with;
- (int64_t)queryInstalledAssetIds;
- (int64_t)queryMetaDataSync;
- (void)getResultsFromMessage:(id)message;
- (void)queryMetaData:(id)data;
- (void)queryMetaDataWithError:(id)error;
@end

@implementation MAAssetQuery

- (int64_t)queryMetaDataSync
{
  v24 = *MEMORY[0x1E69E9840];
  self->_isDone = 0;
  v3 = objc_autoreleasePoolPush();
  v4 = xpc_dictionary_create(0, 0, 0);
  if (!v4)
  {
    v13 = 0;
    v8 = 0;
    assetType = 0;
    v15 = 0;
    v16 = 6;
    goto LABEL_21;
  }

  assetType = [(MAAssetQuery *)self assetType];

  if (!assetType)
  {
    v13 = 0;
    v8 = 0;
    v15 = 0;
    v16 = 7;
    goto LABEL_21;
  }

  assetType = [(MAAssetQuery *)self queryParams];

  if (!assetType)
  {
    goto LABEL_7;
  }

  v6 = MEMORY[0x1E696ACC8];
  queryParams = [(MAAssetQuery *)self queryParams];
  v21 = 0;
  assetType = [v6 archivedDataWithRootObject:queryParams requiringSecureCoding:1 error:&v21];
  v8 = v21;

  if (assetType && !v8)
  {
    xpc_dictionary_set_data(v4, [@"QueryParams" UTF8String], objc_msgSend(assetType, "bytes"), objc_msgSend(assetType, "length"));
LABEL_7:
    if (self->_purpose)
    {
      v9 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        purpose = self->_purpose;
        *buf = 138543362;
        v23 = purpose;
        _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_DEFAULT, "Querying with purpose: %{public}@", buf, 0xCu);
      }

      xpc_dictionary_set_string(v4, "Purpose", [(NSString *)self->_purpose UTF8String]);
    }

    assetType2 = [(MAAssetQuery *)self assetType];
    xpc_dictionary_set_string(v4, "AssetType", [assetType2 UTF8String]);

    xpc_dictionary_set_uint64(v4, "messageAction", 1uLL);
    xpc_dictionary_set_uint64(v4, "returnAssetTypes", [(MAAssetQuery *)self returnTypes]);
    xpc_dictionary_set_BOOL(v4, "doNotBlockBeforeFirstUnlock", [(MAAssetQuery *)self doNotBlockBeforeFirstUnlock]);
    xpc_dictionary_set_BOOL(v4, "doNotBlockOnNetworkStatus", [(MAAssetQuery *)self doNotBlockOnNetworkStatus]);
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", getprogname()];
    v13 = v12;
    if (v12)
    {
      xpc_dictionary_set_string(v4, "clientName", [v12 UTF8String]);
    }

    v20 = 12;
    v14 = _getCommsManager();
    v15 = [v14 sendSync:v4 gettingResponseCode:&v20 codeForXpcError:1 loggingName:@"queryMetaDataSync"];

    v16 = v20;
    if (v15)
    {
      [(MAAssetQuery *)self getResultsFromMessage:v15];
    }

    v8 = 0;
    goto LABEL_21;
  }

  v17 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v8;
    _os_log_impl(&dword_197AD5000, v17, OS_LOG_TYPE_DEFAULT, "Discarding params as they could not be encoded: %{public}@", buf, 0xCu);
  }

  v13 = 0;
  v15 = 0;
  v16 = 8;
LABEL_21:
  self->_isDone = 1;

  objc_autoreleasePoolPop(v3);
  self->_resultCode = v16;
  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

- (MAAssetQuery)initWithType:(id)type andPurpose:(id)purpose
{
  typeCopy = type;
  purposeCopy = purpose;
  v18.receiver = self;
  v18.super_class = MAAssetQuery;
  v9 = [(MAAssetQuery *)&v18 init];
  v10 = v9;
  if (v9)
  {
    v9->_isDone = 0;
    v11 = objc_opt_new();
    queryParams = v10->_queryParams;
    v10->_queryParams = v11;

    objc_storeStrong(&v10->_assetType, type);
    results = v10->_results;
    v10->_results = 0;

    v10->_returnTypes = 0;
    postedDate = v10->_postedDate;
    v10->_resultCode = 12;
    v10->_postedDate = 0;

    lastFetchDate = v10->_lastFetchDate;
    v10->_lastFetchDate = 0;

    v10->_isPallasResult = 0;
    assetIds = v10->_assetIds;
    v10->_assetIds = 0;

    v10->_doNotBlockBeforeFirstUnlock = 0;
    objc_storeStrong(&v10->_purpose, purpose);
  }

  return v10;
}

- (int64_t)addKeyValueArray:(id)array with:(id)with
{
  v30 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  withCopy = with;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    selfCopy = self;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = withCopy;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * v12);
          null = [MEMORY[0x1E695DFB0] null];
          v15 = null;
          if (v13 == null)
          {
          }

          else
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) == 0)
            {
              v19 = _MAClientLog(@"V2");
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_197AD5000, v19, OS_LOG_TYPE_DEFAULT, "Skipping due to bad value in array", buf, 2u);
              }

              v18 = 1;
              goto LABEL_19;
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v17 = objc_opt_new();
    [v17 setValue:v8 forKey:@"queryValue"];
    [v17 setValue:arrayCopy forKey:@"queryKey"];
    [(NSMutableArray *)selfCopy->_queryParams addObject:v17];
    v18 = 0;
    v8 = v17;
LABEL_19:
  }

  else
  {
    v18 = 1;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

- (int64_t)addKeyValueNull:(id)null
{
  nullCopy = null;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_opt_new();
    null = [MEMORY[0x1E695DFB0] null];
    [v5 addObject:null];

    v7 = [(MAAssetQuery *)self addKeyValueArray:nullCopy with:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (int64_t)addKeyValuePair:(id)pair with:(id)with
{
  pairCopy = pair;
  withCopy = with;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = objc_opt_new();
    [v8 addObject:withCopy];
    v9 = [(MAAssetQuery *)self addKeyValueArray:pairCopy with:v8];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)getResultsFromMessage:(id)message
{
  v67 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  int64 = xpc_dictionary_get_int64(messageCopy, "Result");
  results = self->_results;
  self->_resultCode = int64;
  self->_results = 0;

  v7 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    assetType = [(MAAssetQuery *)self assetType];
    resultCode = self->_resultCode;
    *buf = 138543618;
    v64 = assetType;
    v65 = 2048;
    v66 = resultCode;
    _os_log_impl(&dword_197AD5000, v7, OS_LOG_TYPE_DEFAULT, "Got the query meta data reply for: %{public}@, response: %ld", buf, 0x16u);
  }

  length = 0;
  v10 = objc_autoreleasePoolPush();
  data = xpc_dictionary_get_data(messageCopy, [@"xmlData" UTF8String], &length);
  if (!data)
  {
    v22 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v23 = "rawData is null skipping";
LABEL_14:
      _os_log_impl(&dword_197AD5000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
    }

LABEL_15:

    objc_autoreleasePoolPop(v10);
    goto LABEL_45;
  }

  v12 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:data length:length freeWhenDone:0];
  if (!v12)
  {
    v22 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v23 = "data is nil, skipping";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v13 = v12;
  v60 = 0;
  v14 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v12 error:&v60];
  v15 = v60;
  if (v15)
  {
    v16 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_44:

      objc_autoreleasePoolPop(v10);
      goto LABEL_45;
    }

    v17 = [v15 description];
    *buf = 138543362;
    v64 = v17;
    v18 = "Unable to initialize keyed unarchiver, error: %{public}@";
    v19 = v16;
    v20 = OS_LOG_TYPE_ERROR;
    v21 = 12;
    goto LABEL_8;
  }

  if (!v14)
  {
    v16 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v48 = "Keyed archive is nil, skipping.";
    v49 = v16;
    v50 = OS_LOG_TYPE_ERROR;
LABEL_43:
    _os_log_impl(&dword_197AD5000, v49, v50, v48, buf, 2u);
    goto LABEL_44;
  }

  v16 = [v14 decodePropertyListForKey:*MEMORY[0x1E696A508]];
  [v14 finishDecoding];
  if (!v16)
  {
    v16 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v48 = "allData is nil, skipping";
    v49 = v16;
    v50 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_43;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = _MAClientLog(@"V2");
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v18 = "allData is not a dictionary, skipping";
    v19 = v17;
    v20 = OS_LOG_TYPE_DEFAULT;
    v21 = 2;
LABEL_8:
    _os_log_impl(&dword_197AD5000, v19, v20, v18, buf, v21);
LABEL_9:

    goto LABEL_44;
  }

  objc_autoreleasePoolPop(v10);
  v24 = objc_autoreleasePoolPush();
  v25 = [v16 objectForKey:@"metaToFrameWork"];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 objectForKey:@"lastTimeChecked"];
    lastFetchDate = self->_lastFetchDate;
    self->_lastFetchDate = v27;

    v29 = [v26 objectForKey:@"postedDate"];
    postedDate = self->_postedDate;
    self->_postedDate = v29;
  }

  v31 = [v16 objectForKey:@"catalogInfoToFrameWork"];
  if (v31)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [v31 objectForKey:@"isLiveServer"];
      if (v32)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v32 BOOLValue])
          {
            self->_isPallasResult = 1;
          }
        }
      }
    }
  }

  v33 = [v16 objectForKey:@"assetsToFrameWork"];
  if (v33)
  {
    v34 = v33;
    v54 = v16;
    v55 = messageCopy;

    objc_autoreleasePoolPop(v24);
    context = objc_autoreleasePoolPush();
    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v36 = objc_opt_new();
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v37 = v34;
    v38 = [v37 countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v57;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v57 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v56 + 1) + 8 * i);
          v43 = objc_autoreleasePoolPush();
          v44 = [[MAAsset alloc] initWithAttributes:v42];
          [v36 addObject:v44];
          assetId = [(MAAsset *)v44 assetId];
          [v35 addObject:assetId];

          objc_autoreleasePoolPop(v43);
        }

        v39 = [v37 countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v39);
    }

    if (v35)
    {
      v46 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v35];
      assetIds = self->_assetIds;
      self->_assetIds = v46;
    }

    objc_storeStrong(&self->_results, v36);

    objc_autoreleasePoolPop(context);
    messageCopy = v55;
  }

  else
  {
    v52 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v52, OS_LOG_TYPE_DEFAULT, "attributes is nil", buf, 2u);
    }

    objc_autoreleasePoolPop(v24);
  }

LABEL_45:

  v51 = *MEMORY[0x1E69E9840];
}

- (void)queryMetaData:(id)data
{
  dataCopy = data;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__MAAssetQuery_queryMetaData___block_invoke;
  v6[3] = &unk_1E74CA4A0;
  v7 = dataCopy;
  v5 = dataCopy;
  [(MAAssetQuery *)self queryMetaDataWithError:v6];
}

uint64_t __30__MAAssetQuery_queryMetaData___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)queryMetaDataWithError:(id)error
{
  errorCopy = error;
  v5 = objc_autoreleasePoolPush();
  self->_isDone = 0;
  assetType = self->_assetType;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__MAAssetQuery_queryMetaDataWithError___block_invoke;
  v8[3] = &unk_1E74CA4F0;
  v8[4] = self;
  v7 = errorCopy;
  v9 = v7;
  _MAsendQueryMetaData(assetType, self, v8);

  objc_autoreleasePoolPop(v5);
}

void __39__MAAssetQuery_queryMetaDataWithError___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  if (MEMORY[0x19A8EC930]() == MEMORY[0x1E69E9E98])
  {
    int64 = 1;
    v4 = errorStringForMAQueryResult(1uLL);
    MAError(@"com.apple.MobileAssetError.Query", 1, @"%@ due to XPC_TYPE_ERROR", v10, v11, v12, v13, v14, v4);
    goto LABEL_5;
  }

  int64 = xpc_dictionary_get_int64(xdict, "Result");
  if (isQueryResultFailure(int64))
  {
    v4 = errorStringForMAQueryResult(int64);
    MAError(@"com.apple.MobileAssetError.Query", int64, @"%@", v5, v6, v7, v8, v9, v4);
    v15 = LABEL_5:;

    goto LABEL_7;
  }

  [*(a1 + 32) getResultsFromMessage:xdict];
  v15 = 0;
LABEL_7:
  *(*(a1 + 32) + 9) = 1;
  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, int64, v15);
  }
}

- (int64_t)queryInstalledAssetIds
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = xpc_dictionary_create(0, 0, 0);
  length = 0;
  if (v4)
  {
    assetType = [(MAAssetQuery *)self assetType];

    if (assetType)
    {
      assetType2 = [(MAAssetQuery *)self assetType];
      xpc_dictionary_set_string(v4, "AssetType", [assetType2 UTF8String]);

      xpc_dictionary_set_uint64(v4, "messageAction", 0x12uLL);
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", getprogname()];
      v8 = v7;
      if (v7)
      {
        xpc_dictionary_set_string(v4, "clientName", [v7 UTF8String]);
      }

      v29 = 12;
      v9 = _getCommsManager();
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MAAssetQuery queryInstalledAssetIds]"];
      v11 = [v9 sendSync:v4 gettingResponseCode:&v29 codeForXpcError:1 loggingName:v10];

      if (MAIsQueryResultFailure(v29))
      {
        v12 = _MAClientLog(@"V2");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v32 = 3;
          v13 = "queryInstalledAssetIds failure server side: %ld";
          v14 = v12;
          v15 = 12;
LABEL_24:
          _os_log_impl(&dword_197AD5000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
        }

LABEL_25:

LABEL_26:
        v16 = 3;
        goto LABEL_27;
      }

      data = xpc_dictionary_get_data(v11, [@"QueryAssetIdsResponse" UTF8String], &length);
      if (data)
      {
        v18 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:data length:length freeWhenDone:0];
        if (v18)
        {
          v19 = v18;
          v20 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v18 error:0];
          v21 = queryDecodeClasses();
          v22 = [v20 decodeObjectOfClasses:v21 forKey:*MEMORY[0x1E696A508]];

          [v20 finishDecoding];
          if (v22)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [v22 objectForKey:@"QueryAssetIds"];
              assetIds = self->_assetIds;
              self->_assetIds = v23;

              v16 = 0;
              goto LABEL_27;
            }

            v28 = _MAClientLog(@"V2");
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_197AD5000, v28, OS_LOG_TYPE_DEFAULT, "queryInstalledAssetIds allData is not a dictionary skipping", buf, 2u);
            }
          }

          else
          {
            v27 = _MAClientLog(@"V2");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_197AD5000, v27, OS_LOG_TYPE_DEFAULT, "queryInstalledAssetIds allData is null skipping", buf, 2u);
            }
          }

          goto LABEL_26;
        }

        v12 = _MAClientLog(@"V2");
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        *buf = 0;
        v13 = "queryInstalledAssetIds data is null skipping";
      }

      else
      {
        v12 = _MAClientLog(@"V2");
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        *buf = 0;
        v13 = "queryInstalledAssetIds rawData is null skipping";
      }

      v14 = v12;
      v15 = 2;
      goto LABEL_24;
    }

    v11 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v11, OS_LOG_TYPE_DEFAULT, "queryInstalledAssetIds failure due to nil asset type", buf, 2u);
    }

    v16 = 7;
  }

  else
  {
    v11 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v11, OS_LOG_TYPE_DEFAULT, "Could not create message for queryInstalledAssetIds", buf, 2u);
    }

    v16 = 6;
  }

LABEL_27:

  objc_autoreleasePoolPop(v3);
  v25 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)isCatalogFetchedWithinThePastFewDays:(int)days
{
  v3 = 0;
  if (days >= 1 && self->_lastFetchDate)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    lastFetchDate = self->_lastFetchDate;
    date = [MEMORY[0x1E695DF00] date];
    v9 = [currentCalendar components:16 fromDate:lastFetchDate toDate:date options:0];

    v3 = v9 && [v9 day] < days && objc_msgSend(v9, "day") > -days;
  }

  return v3;
}

- (id)description
{
  anyObject = [(NSSet *)self->_assetIds anyObject];
  v4 = anyObject;
  if (anyObject)
  {
    v5 = anyObject;
  }

  else
  {
    v5 = &stru_1F0C1B388;
  }

  v6 = v5;

  v7 = [(NSSet *)self->_assetIds count];
  v8 = @"...";
  if (v7 <= 1)
  {
    v8 = &stru_1F0C1B388;
  }

  v9 = MEMORY[0x1E696AEC0];
  returnTypes = self->_returnTypes;
  v11 = v8;
  v12 = stringForMAQueryReturnTypes(returnTypes);
  resultCode = self->_resultCode;
  v14 = stringForMAQueryResult(resultCode);
  v15 = [v9 stringWithFormat:@"query returnTypes: %ld (%@) result: %ld (%@) count: %ld (%@%@)", returnTypes, v12, resultCode, v14, -[NSArray count](self->_results, "count"), v6, v11];

  return v15;
}

@end