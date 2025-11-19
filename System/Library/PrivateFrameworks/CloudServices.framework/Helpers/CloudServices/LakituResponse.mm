@interface LakituResponse
- (LakituResponse)initWithError:(id)a3;
- (LakituResponse)initWithResponseDictionary:(id)a3;
- (LakituResponse)initWithURLResponse:(id)a3 data:(id)a4;
- (NSString)requestUUID;
- (id)_parsePlistFromData:(id)a3 error:(id *)a4;
@end

@implementation LakituResponse

- (id)_parsePlistFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!v5)
  {
    v6 = 0;
    goto LABEL_15;
  }

  v13 = 0;
  v6 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:&v13];
  v7 = v13;
  v8 = v7;
  if (!v6)
  {
    if (a4)
    {
      v11 = v7;
      *a4 = v8;
    }

    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000496C4();
    }

    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10004965C();
    }

    v10 = objc_alloc_init(NSMutableDictionary);
    [v10 setObject:@"Escrow response not a dictionary" forKeyedSubscript:NSLocalizedDescriptionKey];
    if (a4)
    {
      *a4 = [NSError errorWithDomain:@"EscrowProxyErrorDomain" code:500 userInfo:v10];
    }

LABEL_13:

    v6 = 0;
  }

LABEL_15:

  return v6;
}

- (LakituResponse)initWithURLResponse:(id)a3 data:(id)a4
{
  v7 = a3;
  v8 = a4;
  v37.receiver = self;
  v37.super_class = LakituResponse;
  v9 = [(LakituResponse *)&v37 init];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v9->_httpResponse, a3);
      v10 = [(NSHTTPURLResponse *)v9->_httpResponse statusCode];
      if (v10 != 200)
      {
        v11 = v10;
        v12 = [NSHTTPURLResponse localizedStringForStatusCode:v10];
        v13 = CloudServicesLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10004972C(v12, v11, v13);
        }

        v14 = +[NSMutableDictionary dictionary];
        [v14 setObject:v12 forKeyedSubscript:NSLocalizedDescriptionKey];
        if (v11 == 503 || v11 == 429)
        {
          v15 = [(NSHTTPURLResponse *)v9->_httpResponse allHeaderFields];
          v16 = [v15 objectForKeyedSubscript:@"Retry-After"];

          if (v16)
          {
            v17 = CloudServicesLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_1000497B4();
            }

            v18 = objc_alloc_init(NSDateFormatter);
            v19 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
            [v18 setLocale:v19];

            [v18 setDateFormat:@"EEE, dd MMM yyyy HH:mm:ss Z"];
            v20 = [v18 dateFromString:v16];
            if (v20 || (v34 = [v16 longLongValue], v34 >= 1) && (+[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", v34), (v20 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v21 = v20;
              v22 = CloudServicesLog();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                sub_10004981C(v21, v22);
              }

              [v14 setObject:v21 forKeyedSubscript:@"retryAfterDate"];
            }
          }
        }

        v23 = [NSError errorWithDomain:@"EscrowProxyErrorDomain" code:v11 userInfo:v14];
        error = v9->_error;
        v9->_error = v23;
      }
    }

    v36 = 0;
    v25 = [(LakituResponse *)v9 _parsePlistFromData:v8 error:&v36];
    v26 = v36;
    v27 = v36;
    responseDictionary = v9->_responseDictionary;
    v9->_responseDictionary = v25;

    if (!v9->_responseDictionary)
    {
      p_error = &v9->_error;
      if (-[NSError code](v9->_error, "code") != 503 && [*p_error code] != 429)
      {
        v30 = [[NSString alloc] initWithData:v8 encoding:4];
        v31 = CloudServicesLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_1000498BC(v9, v30, v31);
        }

        if (sub_1000029CC())
        {
          v32 = +[CloudServicesAnalytics logger];
          v33 = v32;
          if (v27)
          {
            [v32 logUnrecoverableError:v27 forEvent:CloudServicesAnalyticsLakituResponse withAttributes:0];
          }

          else
          {
            [v32 logSuccessForEvent:CloudServicesAnalyticsLakituResponse];
          }
        }

        if (!*p_error)
        {
          objc_storeStrong(&v9->_error, v26);
        }
      }
    }
  }

  return v9;
}

- (LakituResponse)initWithError:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LakituResponse;
  v6 = [(LakituResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, a3);
  }

  return v7;
}

- (LakituResponse)initWithResponseDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LakituResponse;
  v6 = [(LakituResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_responseDictionary, a3);
  }

  return v7;
}

- (NSString)requestUUID
{
  v2 = [(LakituResponse *)self httpResponse];
  v3 = [v2 allHeaderFields];
  v4 = [v3 objectForKeyedSubscript:@"X-Apple-Request-UUID"];

  return v4;
}

@end