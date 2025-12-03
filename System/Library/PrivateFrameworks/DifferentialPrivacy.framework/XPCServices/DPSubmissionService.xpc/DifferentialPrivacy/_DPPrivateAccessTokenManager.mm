@interface _DPPrivateAccessTokenManager
- (BOOL)allowOnDemandFetchingForDate:(id)date maxDailyOnDemand:(unint64_t)demand onDemandCoolDownSeconds:(unint64_t)seconds withError:(id *)error;
- (BOOL)updateTokenFileWithTokenArray:(id)array inPath:(id)path;
- (_DPPrivateAccessTokenManager)init;
- (_DPPrivateAccessTokenManager)initWithTokenPath:(id)path;
- (id)onDemandReportAuthForAggregator:(id)aggregator;
- (id)randomFile;
- (id)randomToken;
- (id)reportAuthForAggregator:(id)aggregator withError:(id *)error;
@end

@implementation _DPPrivateAccessTokenManager

- (_DPPrivateAccessTokenManager)init
{
  v3 = +[_DPStrings tokensDirectoryPath];
  v4 = [(_DPPrivateAccessTokenManager *)self initWithTokenPath:v3];

  return v4;
}

- (_DPPrivateAccessTokenManager)initWithTokenPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = _DPPrivateAccessTokenManager;
  v6 = [(_DPPrivateAccessTokenManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tokensDirectoryPath, path);
  }

  return v7;
}

- (id)randomToken
{
  randomFile = [(_DPPrivateAccessTokenManager *)self randomFile];
  if (!randomFile)
  {
    v9 = 0;
    goto LABEL_26;
  }

  v4 = [NSData dataWithContentsOfURL:randomFile];
  if (![v4 length])
  {
    v6 = +[_DPLog service];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004EBC4(randomFile);
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
  [(_DPPrivateAccessTokenManager *)self updateTokenFileWithTokenArray:v5 inPath:randomFile];
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
  tokensDirectoryPath = [(_DPPrivateAccessTokenManager *)self tokensDirectoryPath];
  v6 = [v4 enumeratorAtPath:tokensDirectoryPath];

  nextObject = [v6 nextObject];
  if (nextObject)
  {
    v8 = nextObject;
    do
    {
      v9 = +[_DPStrings tokensFilePrefix];
      v10 = [v8 hasPrefix:v9];

      if (v10)
      {
        tokensDirectoryPath2 = [(_DPPrivateAccessTokenManager *)self tokensDirectoryPath];
        v12 = [tokensDirectoryPath2 stringByAppendingPathComponent:v8];

        v13 = [v4 attributesOfItemAtPath:v12 error:0];
        fileCreationDate = [v13 fileCreationDate];

        v15 = [fileCreationDate dateByAddingTimeInterval:86400.0];
        if ([v15 compare:v3] == 1)
        {
          [NSURL fileURLWithPath:v12];
          v16 = v6;
          v17 = v4;
          selfCopy = self;
          v20 = v19 = v3;
          [v29 addObject:v20];

          v3 = v19;
          self = selfCopy;
          v4 = v17;
          v6 = v16;
        }
      }

      nextObject2 = [v6 nextObject];

      v8 = nextObject2;
    }

    while (nextObject2);
  }

  if ([v29 count])
  {
    if ([v29 count])
    {
      while (1)
      {
        v22 = arc4random_uniform([v29 count]);
        v23 = [v29 objectAtIndexedSubscript:v22];
        path = [v23 path];
        v25 = [v4 attributesOfItemAtPath:path error:0];

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

- (BOOL)updateTokenFileWithTokenArray:(id)array inPath:(id)path
{
  arrayCopy = array;
  pathCopy = path;
  if ([arrayCopy count])
  {
    v14 = 0;
    v7 = [NSJSONSerialization dataWithJSONObject:arrayCopy options:1 error:&v14];
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

    path = [pathCopy path];
    v10 = 1;
    v12 = [v7 writeToFile:path atomically:1];

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
    v10 = [v8 removeItemAtURL:pathCopy error:&v15];
    v7 = v15;
    if ((v10 & 1) == 0)
    {
      v9 = +[_DPLog service];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10004EE38(pathCopy, v7);
      }

      goto LABEL_12;
    }
  }

LABEL_13:

  return v10;
}

- (id)reportAuthForAggregator:(id)aggregator withError:(id *)error
{
  aggregatorCopy = aggregator;
  v7 = objc_opt_class();
  objc_sync_enter(v7);
  randomToken = [(_DPPrivateAccessTokenManager *)self randomToken];
  if (!randomToken)
  {
    randomToken = [(_DPPrivateAccessTokenManager *)self onDemandReportAuthForAggregator:aggregatorCopy];
  }

  objc_sync_exit(v7);

  if (randomToken)
  {
    challenge = [randomToken challenge];
    token = [randomToken token];
    v11 = [[_DPReportAuth alloc] initWithToken:token withChallenge:challenge];
  }

  else
  {
    aggregatorCopy = [NSString stringWithFormat:@"Failed to fetch token-challenge pair for aggregator %@", aggregatorCopy];
    v13 = +[_DPLog service];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10004EEE4();
    }

    if (error)
    {
      *error = [_DPDediscoError errorWithCode:801 description:aggregatorCopy];
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)allowOnDemandFetchingForDate:(id)date maxDailyOnDemand:(unint64_t)demand onDemandCoolDownSeconds:(unint64_t)seconds withError:(id *)error
{
  dateCopy = date;
  v10 = objc_alloc_init(NSDateFormatter);
  [v10 setDateFormat:@"YYYY_MM_dd"];
  v11 = [v10 stringFromDate:dateCopy];
  v12 = objc_alloc_init(NSMutableArray);
  tokensDirectoryPath = [(_DPPrivateAccessTokenManager *)self tokensDirectoryPath];
  tokensDirectoryPath2 = [(_DPPrivateAccessTokenManager *)self tokensDirectoryPath];
  v15 = [tokensDirectoryPath2 hasSuffix:@"/"];
  v16 = &stru_1000741F0;
  if (!v15)
  {
    v16 = @"/";
  }

  v17 = [NSString stringWithFormat:@"%@%@records_%@.json", tokensDirectoryPath, v16, v11];

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

      if (error)
      {
        *error = [_DPDediscoError errorWithCode:103 description:v36];
      }

      v22 = 0;
      goto LABEL_69;
    }

    domain = [v19 domain];
    if ([domain isEqualToString:NSCocoaErrorDomain])
    {
      secondsCopy2 = seconds;
      code = [v20 code];

      if (code == 260)
      {

        demand = +[NSFileManager defaultManager];
        [v17 stringByDeletingLastPathComponent];
        v57 = v64[1] = 0;
        v29 = [demand createDirectoryAtPath:? withIntermediateDirectories:? attributes:? error:?];
        v22 = 0;
        if ((v29 & 1) == 0)
        {
          errorCopy = error;
          v52 = +[_DPLog service];
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            sub_10004F01C();
          }

          if (errorCopy)
          {
            v53 = v22;
            *errorCopy = v22;
          }

LABEL_68:
LABEL_69:
          LOBYTE(error) = 0;
          goto LABEL_70;
        }

        v60 = v11;

        v30 = 0;
        v31 = 0.0;
LABEL_38:

        if (v30 >= demand)
        {
          demand = [NSString stringWithFormat:@"On-demand token fetching exceeded daily allowed times of %ld", demand];
          v45 = +[_DPLog service];
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            sub_10004EEE4();
          }

          v11 = v60;
          if (error)
          {
            *error = [_DPDediscoError errorWithCode:104 description:demand];
          }
        }

        else
        {
          v11 = v60;
          if (!secondsCopy2)
          {
            goto LABEL_42;
          }

          demand = [NSDate dateWithTimeIntervalSince1970:v31 + secondsCopy2];
          if ([dateCopy compare:demand] != -1)
          {

LABEL_42:
            v71 = @"on-demand-tokens";
            [dateCopy timeIntervalSince1970];
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

              if (!error)
              {
                goto LABEL_56;
              }

              errorCopy3 = error;
            }

            else
            {
              errorCopy3 = error;
              v63 = 0;
              LOBYTE(error) = 1;
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

              if (!errorCopy3)
              {
                LOBYTE(error) = 0;
                goto LABEL_56;
              }
            }

            v48 = v20;
            LOBYTE(error) = 0;
            *errorCopy3 = v20;
            goto LABEL_56;
          }

          errorCopy4 = error;
          v49 = [NSString stringWithFormat:@"On-demand fetching occurring too frequently: disabled until %@", demand];
          v50 = +[_DPLog service];
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            sub_10004EEE4();
          }

          if (errorCopy4)
          {
            *errorCopy4 = [_DPDediscoError errorWithCode:104 description:v49];
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

    if (error)
    {
      v39 = v20;
      errorCopy5 = error;
      LOBYTE(error) = 0;
      *errorCopy5 = v20;
    }

    goto LABEL_57;
  }

  secondsCopy2 = seconds;
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
    demand = v21;
    v22 = [demand countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v22)
    {
      v56 = dateCopy;
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
            objc_enumerationMutation(demand);
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

        v22 = [demand countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v22);
      v12 = demand;
      v17 = v55;
      dateCopy = v56;
    }

    else
    {
      v30 = 0;
      v31 = 0.0;
      v12 = demand;
    }

    goto LABEL_38;
  }

  v23 = +[_DPLog service];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_10004EF4C();
  }

  if (error)
  {
    v24 = v22;
    errorCopy6 = error;
    LOBYTE(error) = 0;
    *errorCopy6 = v22;
  }

  v12 = v21;
LABEL_70:

  return error;
}

- (id)onDemandReportAuthForAggregator:(id)aggregator
{
  aggregatorCopy = aggregator;
  v5 = +[NSDate date];
  v6 = +[_DPLog service];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = aggregatorCopy;
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
    randomToken = 0;
    goto LABEL_17;
  }

  v11 = [[_DPTokenFetcherService alloc] initWithTokenConfig:v8];
  v12 = v11;
  if (v11)
  {
    [(_DPTokenFetcherService *)v11 fetchTokens];
    randomToken = [(_DPPrivateAccessTokenManager *)self randomToken];
  }

  else
  {
    v15 = +[_DPLog service];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10004F154(v15);
    }

    randomToken = 0;
  }

LABEL_17:

  return randomToken;
}

@end