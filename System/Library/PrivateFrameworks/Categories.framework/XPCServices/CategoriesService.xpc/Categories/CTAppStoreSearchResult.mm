@interface CTAppStoreSearchResult
+ (id)appStoreSearchResultsWithResultData:(id)a3 platform:(id)a4 error:(id *)a5;
- (CTAppStoreSearchResult)initWithBundleID:(id)a3 platform:(id)a4;
- (CTAppStoreSearchResult)initWithSearchResultRecord:(id)a3 platform:(id)a4;
@end

@implementation CTAppStoreSearchResult

+ (id)appStoreSearchResultsWithResultData:(id)a3 platform:(id)a4 error:(id *)a5
{
  v28 = a4;
  v8 = [NSJSONSerialization JSONObjectWithData:a3 options:0 error:a5];
  if (!v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100003BE0(a5, v18, v19, v20, v21, v22, v23, v24);
    }

    goto LABEL_31;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a5)
    {
      *a5 = [NSError errorWithDomain:CTErrorDomain code:2002 userInfo:0];
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100003A1C();
    }

LABEL_31:
    v10 = 0;
    goto LABEL_38;
  }

  v9 = [v8 objectForKeyedSubscript:@"results"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = v8;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v41 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "CTAppStoreSearchResult results: %{private}@", buf, 0xCu);
    }

    v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = v9;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        v15 = 0;
        do
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v29 + 1) + 8 * v15);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [[a1 alloc] initWithSearchResultRecord:v16 platform:v28];
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
            {
              *buf = 138477827;
              v41 = v17;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "CTAppStoreSearchResult searchResult: %{private}@", buf, 0xCu);
            }

            if (v17)
            {
              [v10 addObject:v17];
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                sub_100003B48(v37, v17, &v38);
              }
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_100003B94(v35, v16, &v36);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100003AFC(v33, v16, &v34);
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v13);
    }

    v9 = v26;
    v8 = v27;
  }

  else
  {
    if (a5)
    {
      *a5 = [NSError errorWithDomain:CTErrorDomain code:2002 userInfo:0];
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100003A8C();
    }

    v10 = 0;
  }

LABEL_38:

  return v10;
}

- (CTAppStoreSearchResult)initWithSearchResultRecord:(id)a3 platform:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"bundleId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v6 objectForKeyedSubscript:@"genreIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v9;
      v24 = v7;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v27;
        while (2)
        {
          v14 = 0;
          do
          {
            if (*v27 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v26 + 1) + 8 * v14);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_100003D38();
              }

              v21 = 0;
              goto LABEL_21;
            }

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v25.receiver = self;
      v25.super_class = CTAppStoreSearchResult;
      v16 = [(CTAppStoreSearchResult *)&v25 init];
      v17 = [v8 copy];
      bundleID = v16->_bundleID;
      v16->_bundleID = v17;

      v19 = [v10 copy];
      genreIDs = v16->_genreIDs;
      v16->_genreIDs = v19;

      objc_storeStrong(&v16->_platform, a4);
      self = v16;
      v21 = self;
LABEL_21:
      v9 = v23;
      v7 = v24;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100003CC8();
      }

      v21 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100003C58();
    }

    v21 = 0;
  }

  return v21;
}

- (CTAppStoreSearchResult)initWithBundleID:(id)a3 platform:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = CTAppStoreSearchResult;
  v7 = a3;
  v8 = [(CTAppStoreSearchResult *)&v14 init];
  v9 = [v7 copy];

  bundleID = v8->_bundleID;
  v8->_bundleID = v9;

  genreIDs = v8->_genreIDs;
  v8->_genreIDs = &__NSArray0__struct;

  platform = v8->_platform;
  v8->_platform = v6;

  return v8;
}

@end