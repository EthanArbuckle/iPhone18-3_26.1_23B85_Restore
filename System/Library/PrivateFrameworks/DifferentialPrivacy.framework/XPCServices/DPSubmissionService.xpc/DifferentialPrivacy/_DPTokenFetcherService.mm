@interface _DPTokenFetcherService
- (BOOL)saveTokens:(id)a3 toFileInPath:(id)a4;
- (_DPTokenFetcherService)init;
- (_DPTokenFetcherService)initWithTokenConfig:(id)a3;
- (id)extractTokenFieldsFromConfig:(id)a3;
- (id)fetchMultipleChallengeTokenPair;
- (unint64_t)donateTokenCountToBitacoraForDirPath:(id)a3;
- (void)fetchTokens;
@end

@implementation _DPTokenFetcherService

- (_DPTokenFetcherService)init
{
  v3 = +[_DPPrivateAccessTokenConfig createAndPersist];
  if (v3)
  {
    self = [(_DPTokenFetcherService *)self initWithTokenConfig:v3];
    v4 = self;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_DPTokenFetcherService)initWithTokenConfig:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = _DPTokenFetcherService;
  v6 = [(_DPTokenFetcherService *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.DifferentialPrivacy.tokens", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v11 = +[_DPStrings tokensDirectoryPath];
    tokensDirectoryPath = v7->_tokensDirectoryPath;
    v7->_tokensDirectoryPath = v11;
  }

  return v7;
}

- (id)fetchMultipleChallengeTokenPair
{
  v41 = [(_DPTokenFetcherService *)self tokenFields];
  v39 = [v41 objectForKeyedSubscript:@"tokenKey"];
  v38 = [v41 objectForKeyedSubscript:@"originNameKey"];
  v2 = [(_DPTokenFetcherService *)self config];
  v3 = [v2 issuerURL];
  v4 = [NSURL URLWithString:v3];
  v37 = [v4 host];

  v36 = [[_DPPrivateAccessTokenChallenge alloc] initWithIssuer:v37 redemptionContext:0];
  v5 = [v41 objectForKeyedSubscript:@"tokenType"];
  if ([v5 unsignedIntegerValue] == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  v40 = [(_DPPrivateAccessTokenChallenge *)v36 synthesizeWithTokenType:v6];

  v7 = [[NSPPrivateAccessTokenFetcher alloc] initWithChallenge:v40 tokenKey:v39 originNameKey:v38];
  v44 = v7;
  if (v7)
  {
    v8 = v7;
    [v7 setSystemClient:1];
    [v8 setBundleID:@"com.apple.DPSubmissionService"];
    v9 = [(_DPTokenFetcherService *)self config];
    v10 = [v9 tokensPerRefresh];

    v43 = v10;
    v42 = [&__NSArray0__struct mutableCopy];
    if (v10)
    {
      v11 = 0;
      v12 = 0;
      v13 = &stru_1000741F0;
      while (1)
      {
        *&v60 = 0;
        *(&v60 + 1) = &v60;
        v61 = 0x3032000000;
        v62 = sub_100006D48;
        v63 = sub_100006D58;
        v64 = 0;
        v50 = 0;
        v51 = &v50;
        v52 = 0x3032000000;
        v53 = sub_100006D48;
        v54 = sub_100006D58;
        v55 = 0;
        v14 = dispatch_semaphore_create(0);
        v15 = +[NSProcessInfo processInfo];
        [v15 systemUptime];

        v16 = [(_DPTokenFetcherService *)self queue];
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_100006D60;
        v46[3] = &unk_1000710F8;
        v48 = &v50;
        v49 = &v60;
        v17 = v14;
        v47 = v17;
        [v44 fetchTokenWithQueue:v16 completionHandler:v46];

        v18 = dispatch_time(0, 30000000000);
        if (dispatch_semaphore_wait(v17, v18))
        {
          v19 = [NSString stringWithFormat:@"Token fetching timeout after %lld sec.", 30];
          v20 = [_DPDediscoError errorWithCode:200 description:v19];
        }

        else
        {
          v20 = v51[5];
        }

        reportCoreAnalyticsUploadEvent();
        if (v20 || !*(*(&v60 + 1) + 40))
        {
          v21 = [(__CFString *)v13 stringByAppendingFormat:@"%@", v20];;

          v22 = +[_DPLog service];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v59 = v20;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to fetch a token with error: %@.", buf, 0xCu);
          }

          v23 = v11 + 1;
          if (v11 < 1)
          {
            v24 = 3;
            ++v11;
            v13 = v21;
            goto LABEL_19;
          }

          v13 = [(__CFString *)v21 stringByAppendingFormat:@"Abort after %d consecutive errors", (v11 + 1)];
          v24 = 2;
        }

        else
        {
          v21 = [v40 base64EncodedStringWithOptions:0];
          v25 = [*(*(&v60 + 1) + 40) base64EncodedStringWithOptions:0];
          v56[0] = @"challenge";
          v56[1] = @"token";
          v57[0] = v21;
          v57[1] = v25;
          v26 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:2];
          [v42 addObject:v26];

          v23 = 0;
          v24 = 0;
          ++v12;
        }

        v11 = v23;
LABEL_19:

        _Block_object_dispose(&v50, 8);
        _Block_object_dispose(&v60, 8);

        if (v24 != 3 && v24 || v43 <= v12)
        {
          goto LABEL_26;
        }
      }
    }

    v13 = &stru_1000741F0;
LABEL_26:
    v30 = +[_DPLog service];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v42 count];
      LODWORD(v60) = 134217984;
      *(&v60 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Fetched %lu tokens", &v60, 0xCu);
    }

    if ([v42 count]< v43)
    {
      v32 = [NSString stringWithFormat:@"Failed to fetch %ld tokens out of %ld with errors: %@", v43 - [v42 count], v43, v13];
      LOBYTE(v35) = 1;
      LODWORD(v34) = 3;
      HIDWORD(v34) = [v42 count];
      [_DPLHBitacoraLogger donateEventToBitacoraForKey:@"fedstats:com.apple.Bitacora.TokenFetcher:000:000:iOS" eventPhase:1 uuid:0 succeeded:0 errorCode:105 errorMessage:v32 aggregateFunction:v34 count:v35 telemetryAllowed:?];
    }

    v29 = [v42 copy];

    v28 = v42;
  }

  else
  {
    v27 = +[_DPLog service];
    v28 = v27;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10004DCD0();
      v29 = 0;
      v28 = v27;
    }

    else
    {
      v29 = 0;
    }
  }

  return v29;
}

- (id)extractTokenFieldsFromConfig:(id)a3
{
  v37 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:a3 options:0 error:&v37];
  v5 = v37;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v29 = self;
    v30 = v5;
    v31 = v4;
    v10 = [v4 objectForKeyedSubscript:@"token-keys"];
    v32 = [&__NSDictionary0__struct mutableCopy];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = v10;
    v11 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          v16 = [v15 objectForKeyedSubscript:@"token-key"];
          if ([v16 length])
          {
            v17 = [v15 objectForKeyedSubscript:@"not-before"];
            if (!v17 || (+[NSDate date](NSDate, "date"), v18 = objc_claimAutoreleasedReturnValue(), [v18 timeIntervalSince1970], v20 = v19, v18, objc_msgSend(v17, "doubleValue"), v20 > v21))
            {
              v22 = [v15 objectForKeyedSubscript:@"version"];
              if (v22)
              {
                v23 = v22;
              }

              else
              {
                v23 = @"unspecified";
              }

              v24 = [v16 stringByReplacingOccurrencesOfString:@"-" withString:@"+"];
              v25 = [v24 stringByReplacingOccurrencesOfString:@"_" withString:@"/"];

              v26 = [[NSData alloc] initWithBase64EncodedString:v25 options:1];
              if (v26)
              {
                [v32 setObject:v26 forKeyedSubscript:@"tokenKey"];
                [v32 setObject:v23 forKeyedSubscript:@"version"];
                v27 = [v15 objectForKeyedSubscript:@"token-type"];
                [v32 setObject:v27 forKeyedSubscript:@"tokenType"];
              }

              else
              {
                v27 = +[_DPLog service];
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  sub_10004DD10();
                }
              }

              goto LABEL_28;
            }
          }
        }

        v12 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_28:

    v9 = v32;
    [(_DPTokenFetcherService *)v29 setTokenFields:v32];
    v6 = v30;
    v4 = v31;
  }

  else
  {
    v8 = +[_DPLog service];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004DD80(v6, v8);
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)saveTokens:(id)a3 toFileInPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(_DPTokenFetcherService *)self tokensDirectoryPath];
  }

  v10 = v9;
  v11 = +[NSFileManager defaultManager];
  v35 = 0;
  v12 = [v11 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v35];
  v13 = v35;
  v14 = v13;
  if (v12)
  {
    v30 = v13;
    v15 = objc_opt_new();
    [v15 setDateFormat:@"dd_MM_yyyy_HH_mm_ss"];
    v16 = +[NSDate date];
    v17 = [v15 stringFromDate:v16];

    v18 = +[_DPStrings tokensFilePrefix];
    v29 = v17;
    v19 = [NSString stringWithFormat:@"%@_%@.pat", v18, v17];

    v20 = [v10 stringByAppendingPathComponent:v19];
    v34 = 0;
    v21 = [NSJSONSerialization dataWithJSONObject:v6 options:1 error:&v34];
    v22 = v34;
    v31 = v20;
    if (v22)
    {
      v23 = v22;
      v24 = +[_DPLog service];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10004DE88();
      }
    }

    else
    {
      v33 = 0;
      v26 = [v21 writeToFile:v20 options:268435457 error:&v33];
      v23 = v33;
      v27 = +[_DPLog service];
      v24 = v27;
      if (v26)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Successfully saved tokens to file.", buf, 2u);
        }

        v25 = 1;
        goto LABEL_18;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10004DEF8();
      }
    }

    v25 = 0;
LABEL_18:

    v14 = v30;
    goto LABEL_19;
  }

  v15 = +[_DPLog service];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10004DE14();
  }

  v25 = 0;
LABEL_19:

  return v25;
}

- (void)fetchTokens
{
  v3 = +[_DPLog service];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(_DPTokenFetcherService *)self config];
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Fetching tokens as per configuration: %@", &v16, 0xCu);
  }

  v5 = [(_DPTokenFetcherService *)self config];
  v6 = [v5 issuerURL];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [_DPDediscoBackgroundDownloaderService alloc];
    v9 = [NSURL URLWithString:v6];
    v10 = [(_DPDediscoBackgroundDownloaderService *)v8 initWithURL:v9];

    v11 = [(_DPDediscoBackgroundDownloaderService *)v10 downloadConfigSynchronously];

    objc_autoreleasePoolPop(v7);
    if ([v11 length])
    {
      v12 = [(_DPTokenFetcherService *)self extractTokenFieldsFromConfig:v11];
      if (v12)
      {
        v13 = objc_autoreleasePoolPush();
        [(_DPTokenFetcherService *)self donateTokenCountToBitacoraForDirPath:0];
        v14 = [(_DPTokenFetcherService *)self fetchMultipleChallengeTokenPair];
        if ([v14 count])
        {
          [(_DPTokenFetcherService *)self saveTokens:v14 toFileInPath:0];
        }

        objc_autoreleasePoolPop(v13);
      }

      else
      {
        v15 = +[_DPLog service];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10004DF6C();
        }
      }
    }

    else
    {
      v12 = +[_DPLog service];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10004DFAC();
      }
    }
  }

  else
  {
    v11 = +[_DPLog service];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Missing issue URL. Skipping token fetching", &v16, 2u);
    }
  }
}

- (unint64_t)donateTokenCountToBitacoraForDirPath:(id)a3
{
  v4 = a3;
  v25 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [(_DPTokenFetcherService *)self tokensDirectoryPath];
  }

  v6 = v5;
  v7 = +[_DPStrings tokensFilePrefix];
  v24 = v6;
  v8 = [_DPTokenFetcherHelper filesInDirectory:v6 withPrefix:v7];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v26 = 0;
    v12 = *v29;
    v13 = &stru_1000741F0;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [NSData dataWithContentsOfURL:*(*(&v28 + 1) + 8 * i)];
        if ([v15 length])
        {
          v27 = 0;
          v16 = [NSJSONSerialization JSONObjectWithData:v15 options:1 error:&v27];
          v17 = v27;
          v18 = v17;
          if (v17)
          {
            v19 = [(__CFString *)v13 stringByAppendingFormat:@"%@ ", v17];;

            v13 = v19;
          }

          else
          {
            v26 += [v16 count];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  else
  {
    v26 = 0;
    v13 = &stru_1000741F0;
  }

  v20 = [NSString stringWithFormat:@"Token count: %lu %@", v26, v13];;

  LOBYTE(v23) = 1;
  LODWORD(v22) = 3;
  HIDWORD(v22) = v26;
  [_DPLHBitacoraLogger donateEventToBitacoraForKey:@"fedstats:com.apple.Bitacora.TokenFetcher:000:000:iOS" eventPhase:1 uuid:0 succeeded:0 errorCode:107 errorMessage:v20 aggregateFunction:v22 count:v23 telemetryAllowed:?];

  return v26;
}

@end