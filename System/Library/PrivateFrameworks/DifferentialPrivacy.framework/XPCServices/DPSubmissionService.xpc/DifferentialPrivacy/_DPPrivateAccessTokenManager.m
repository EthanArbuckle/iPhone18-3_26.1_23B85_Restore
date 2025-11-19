@interface _DPPrivateAccessTokenManager
- (BOOL)allowOnDemandFetchingForDate:(id)a3 maxDailyOnDemand:(unint64_t)a4 onDemandCoolDownSeconds:(unint64_t)a5 withError:(id *)a6;
- (BOOL)updateTokenFileWithTokenArray:(id)a3 inPath:(id)a4;
- (_DPPrivateAccessTokenManager)init;
- (_DPPrivateAccessTokenManager)initWithTokenPath:(id)a3;
- (id)onDemandReportAuthForAggregator:(id)a3;
- (id)randomFile;
- (id)randomToken;
- (id)reportAuthForAggregator:(id)a3 withError:(id *)a4;
@end

@implementation _DPPrivateAccessTokenManager

- (_DPPrivateAccessTokenManager)init
{
  v3 = +[_DPStrings tokensDirectoryPath];
  v4 = [(_DPPrivateAccessTokenManager *)self initWithTokenPath:v3];

  return v4;
}

- (_DPPrivateAccessTokenManager)initWithTokenPath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _DPPrivateAccessTokenManager;
  v6 = [(_DPPrivateAccessTokenManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tokensDirectoryPath, a3);
  }

  return v7;
}

- (id)randomToken
{
  v3 = [(_DPPrivateAccessTokenManager *)self randomFile];
  if (!v3)
  {
    v9 = 0;
    goto LABEL_26;
  }

  v4 = [NSData dataWithContentsOfURL:v3];
  if (![v4 length])
  {
    v6 = +[_DPLog service];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004EBC4(v3);
    }

    v9 = 0;
    goto LABEL_25;
  }

  v20 = 0;
  v5 = [NSJSONSerialization JSONObjectWithData:v4 options:1 error:&v20];
  v6 = v20;
  if ([v5 count])
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = +[_DPLog service];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004EB38(v6);
    }

    v9 = 0;
    goto LABEL_24;
  }

  v10 = arc4random_uniform([v5 count]);
  v11 = [NSData alloc];
  v12 = [v5 objectAtIndexedSubscript:v10];
  v13 = [v12 objectForKeyedSubscript:@"challenge"];
  v8 = [v11 initWithBase64EncodedString:v13 options:0];

  if (![v8 length])
  {
    v17 = +[_DPLog service];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10004EAD0();
    }

    goto LABEL_22;
  }

  v14 = [NSData alloc];
  v15 = [v5 objectAtIndexedSubscript:v10];
  v16 = [v15 objectForKeyedSubscript:@"token"];
  v17 = [v14 initWithBase64EncodedString:v16 options:0];

  if (![v17 length])
  {
    v18 = +[_DPLog service];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10004EA68();
    }

LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

  [v5 removeObjectAtIndex:v10];
  [(_DPPrivateAccessTokenManager *)self updateTokenFileWithTokenArray:v5 inPath:v3];
  v9 = [[TokenChallengePair alloc] initWithChallenge:v8 token:v17];
LABEL_23:

LABEL_24:
LABEL_25:

LABEL_26:

  return v9;
}

- (id)randomFile
{
  v3 = +[NSDate date];
  v29 = [&__NSArray0__struct mutableCopy];
  v4 = +[NSFileManager defaultManager];
  v5 = [(_DPPrivateAccessTokenManager *)self tokensDirectoryPath];
  v6 = [v4 enumeratorAtPath:v5];

  v7 = [v6 nextObject];
  if (v7)
  {
    v8 = v7;
    do
    {
      v9 = +[_DPStrings tokensFilePrefix];
      v10 = [v8 hasPrefix:v9];

      if (v10)
      {
        v11 = [(_DPPrivateAccessTokenManager *)self tokensDirectoryPath];
        v12 = [v11 stringByAppendingPathComponent:v8];

        v13 = [v4 attributesOfItemAtPath:v12 error:0];
        v14 = [v13 fileCreationDate];

        v15 = [v14 dateByAddingTimeInterval:86400.0];
        if ([v15 compare:v3] == 1)
        {
          [NSURL fileURLWithPath:v12];
          v16 = v6;
          v17 = v4;
          v18 = self;
          v20 = v19 = v3;
          [v29 addObject:v20];

          v3 = v19;
          self = v18;
          v4 = v17;
          v6 = v16;
        }
      }

      v21 = [v6 nextObject];

      v8 = v21;
    }

    while (v21);
  }

  if ([v29 count])
  {
    if ([v29 count])
    {
      while (1)
      {
        v22 = arc4random_uniform([v29 count]);
        v23 = [v29 objectAtIndexedSubscript:v22];
        v24 = [v23 path];
        v25 = [v4 attributesOfItemAtPath:v24 error:0];

        if ([v25 fileSize])
        {
          break;
        }

        [v29 removeObjectAtIndex:v22];

        if (![v29 count])
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v22 = 0;
    }

LABEL_17:
    if ([v29 count])
    {
      v27 = [v29 objectAtIndexedSubscript:v22];
      goto LABEL_22;
    }

    v26 = +[_DPLog service];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10004EC50(self);
    }
  }

  else
  {
    v26 = +[_DPLog service];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10004ECDC(self);
    }
  }

  v27 = 0;
LABEL_22:

  return v27;
}

- (BOOL)updateTokenFileWithTokenArray:(id)a3 inPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v14 = 0;
    v7 = [NSJSONSerialization dataWithJSONObject:v5 options:1 error:&v14];
    v8 = v14;
    if (v8)
    {
      v9 = +[_DPLog service];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10004ED68();
      }

LABEL_11:
      v10 = 0;
LABEL_12:

      goto LABEL_13;
    }

    v11 = [v6 path];
    v10 = 1;
    v12 = [v7 writeToFile:v11 atomically:1];

    if ((v12 & 1) == 0)
    {
      v9 = +[_DPLog service];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10004EDD0();
      }

      goto LABEL_11;
    }
  }

  else
  {
    v8 = +[NSFileManager defaultManager];
    v15 = 0;
    v10 = [v8 removeItemAtURL:v6 error:&v15];
    v7 = v15;
    if ((v10 & 1) == 0)
    {
      v9 = +[_DPLog service];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10004EE38(v6, v7);
      }

      goto LABEL_12;
    }
  }

LABEL_13:

  return v10;
}

- (id)reportAuthForAggregator:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  objc_sync_enter(v7);
  v8 = [(_DPPrivateAccessTokenManager *)self randomToken];
  if (!v8)
  {
    v8 = [(_DPPrivateAccessTokenManager *)self onDemandReportAuthForAggregator:v6];
  }

  objc_sync_exit(v7);

  if (v8)
  {
    v9 = [v8 challenge];
    v10 = [v8 token];
    v11 = [[_DPReportAuth alloc] initWithToken:v10 withChallenge:v9];
  }

  else
  {
    v12 = [NSString stringWithFormat:@"Failed to fetch token-challenge pair for aggregator %@", v6];
    v13 = +[_DPLog service];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10004EEE4();
    }

    if (a4)
    {
      *a4 = [_DPDediscoError errorWithCode:801 description:v12];
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)allowOnDemandFetchingForDate:(id)a3 maxDailyOnDemand:(unint64_t)a4 onDemandCoolDownSeconds:(unint64_t)a5 withError:(id *)a6
{
  v9 = a3;
  v10 = objc_alloc_init(NSDateFormatter);
  [v10 setDateFormat:@"YYYY_MM_dd"];
  v11 = [v10 stringFromDate:v9];
  v12 = objc_alloc_init(NSMutableArray);
  v13 = [(_DPPrivateAccessTokenManager *)self tokensDirectoryPath];
  v14 = [(_DPPrivateAccessTokenManager *)self tokensDirectoryPath];
  v15 = [v14 hasSuffix:@"/"];
  v16 = &stru_1000741F0;
  if (!v15)
  {
    v16 = @"/";
  }

  v17 = [NSString stringWithFormat:@"%@%@records_%@.json", v13, v16, v11];

  v70 = 0;
  v18 = [NSData dataWithContentsOfFile:v17 options:0 error:&v70];
  v19 = v70;
  v20 = v19;
  if (!v18)
  {
    if (!v19)
    {
      v36 = [NSString stringWithFormat:@"Unexpected error while checking on-demand token fetching. The record file at %@ appears to be empty", v17];
      v37 = +[_DPLog service];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_10004EEE4();
      }

      if (a6)
      {
        *a6 = [_DPDediscoError errorWithCode:103 description:v36];
      }

      v22 = 0;
      goto LABEL_69;
    }

    v26 = [v19 domain];
    if ([v26 isEqualToString:NSCocoaErrorDomain])
    {
      v61 = a5;
      v27 = [v20 code];

      if (v27 == 260)
      {

        v28 = +[NSFileManager defaultManager];
        [v17 stringByDeletingLastPathComponent];
        v57 = v64[1] = 0;
        v29 = [v28 createDirectoryAtPath:? withIntermediateDirectories:? attributes:? error:?];
        v22 = 0;
        if ((v29 & 1) == 0)
        {
          v51 = a6;
          v52 = +[_DPLog service];
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            sub_10004F01C();
          }

          if (v51)
          {
            v53 = v22;
            *v51 = v22;
          }

LABEL_68:
LABEL_69:
          LOBYTE(a6) = 0;
          goto LABEL_70;
        }

        v60 = v11;

        v30 = 0;
        v31 = 0.0;
LABEL_38:

        if (v30 >= a4)
        {
          v28 = [NSString stringWithFormat:@"On-demand token fetching exceeded daily allowed times of %ld", a4];
          v45 = +[_DPLog service];
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            sub_10004EEE4();
          }

          v11 = v60;
          if (a6)
          {
            *a6 = [_DPDediscoError errorWithCode:104 description:v28];
          }
        }

        else
        {
          v11 = v60;
          if (!v61)
          {
            goto LABEL_42;
          }

          v28 = [NSDate dateWithTimeIntervalSince1970:v31 + v61];
          if ([v9 compare:v28] != -1)
          {

LABEL_42:
            v71 = @"on-demand-tokens";
            [v9 timeIntervalSince1970];
            v41 = [NSNumber numberWithDouble:?];
            v72 = v41;
            v42 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
            [v12 addObject:v42];

            v64[0] = v22;
            v43 = [NSJSONSerialization dataWithJSONObject:v12 options:1 error:v64];
            v20 = v64[0];

            if (v20)
            {
              v44 = +[_DPLog service];
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                sub_10004ED68();
              }

              if (!a6)
              {
                goto LABEL_56;
              }

              v58 = a6;
            }

            else
            {
              v58 = a6;
              v63 = 0;
              LOBYTE(a6) = 1;
              v46 = [v43 writeToFile:v17 options:1 error:&v63];
              v20 = v63;
              if (v46)
              {
LABEL_56:

LABEL_57:
                v22 = v20;
                goto LABEL_70;
              }

              v47 = +[_DPLog service];
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                sub_10004F084();
              }

              if (!v58)
              {
                LOBYTE(a6) = 0;
                goto LABEL_56;
              }
            }

            v48 = v20;
            LOBYTE(a6) = 0;
            *v58 = v20;
            goto LABEL_56;
          }

          v59 = a6;
          v49 = [NSString stringWithFormat:@"On-demand fetching occurring too frequently: disabled until %@", v28];
          v50 = +[_DPLog service];
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            sub_10004EEE4();
          }

          if (v59)
          {
            *v59 = [_DPDediscoError errorWithCode:104 description:v49];
          }
        }

        goto LABEL_68;
      }
    }

    else
    {
    }

    v38 = +[_DPLog service];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_10004EFB4();
    }

    if (a6)
    {
      v39 = v20;
      v40 = a6;
      LOBYTE(a6) = 0;
      *v40 = v20;
    }

    goto LABEL_57;
  }

  v61 = a5;
  v69 = v19;
  v21 = [NSJSONSerialization JSONObjectWithData:v18 options:1 error:&v69];
  v22 = v69;

  if (!v22)
  {
    v60 = v11;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v28 = v21;
    v22 = [v28 countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v22)
    {
      v56 = v9;
      v55 = v17;
      v30 = 0;
      v32 = *v66;
      v31 = 0.0;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v66 != v32)
          {
            objc_enumerationMutation(v28);
          }

          v34 = [*(*(&v65 + 1) + 8 * i) objectForKeyedSubscript:@"on-demand-tokens"];
          if (v34)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              ++v30;
              [v34 doubleValue];
              if (v35 > v31)
              {
                v31 = v35;
              }
            }
          }
        }

        v22 = [v28 countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v22);
      v12 = v28;
      v17 = v55;
      v9 = v56;
    }

    else
    {
      v30 = 0;
      v31 = 0.0;
      v12 = v28;
    }

    goto LABEL_38;
  }

  v23 = +[_DPLog service];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_10004EF4C();
  }

  if (a6)
  {
    v24 = v22;
    v25 = a6;
    LOBYTE(a6) = 0;
    *v25 = v22;
  }

  v12 = v21;
LABEL_70:

  return a6;
}

- (id)onDemandReportAuthForAggregator:(id)a3
{
  v4 = a3;
  v5 = +[NSDate date];
  v6 = +[_DPLog service];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Attempting to fetch PAT on demand for %@", buf, 0xCu);
  }

  v7 = +[_DPPrivateAccessTokenConfig createAndPersist];
  v8 = v7;
  if (!v7)
  {
    v10 = +[_DPLog service];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004F198(v10);
    }

    goto LABEL_12;
  }

  v17 = 0;
  v9 = -[_DPPrivateAccessTokenManager allowOnDemandFetchingForDate:maxDailyOnDemand:onDemandCoolDownSeconds:withError:](self, "allowOnDemandFetchingForDate:maxDailyOnDemand:onDemandCoolDownSeconds:withError:", v5, [v7 maxDailyOnDemand], objc_msgSend(v7, "onDemandCoolDownSeconds"), &v17);
  v10 = v17;
  if ((v9 & 1) == 0)
  {
    v14 = +[_DPLog service];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10004F0EC();
    }

LABEL_12:
    v13 = 0;
    goto LABEL_17;
  }

  v11 = [[_DPTokenFetcherService alloc] initWithTokenConfig:v8];
  v12 = v11;
  if (v11)
  {
    [(_DPTokenFetcherService *)v11 fetchTokens];
    v13 = [(_DPPrivateAccessTokenManager *)self randomToken];
  }

  else
  {
    v15 = +[_DPLog service];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10004F154(v15);
    }

    v13 = 0;
  }

LABEL_17:

  return v13;
}

@end