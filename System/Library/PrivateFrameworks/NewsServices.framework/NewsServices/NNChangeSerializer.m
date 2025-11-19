@interface NNChangeSerializer
- (id)changeFromData:(id)a3 ofType:(int64_t)a4;
- (id)dataFromChange:(id)a3;
@end

@implementation NNChangeSerializer

- (id)dataFromChange:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v3;
    v7 = +[NSMutableDictionary dictionary];
    v8 = [v6 resultIdentifier];
    if (v8)
    {
      [v7 setObject:v8 forKeyedSubscript:@"identifier"];
    }

    v9 = [v6 requestDate];
    if (v9)
    {
      [v7 setObject:v9 forKeyedSubscript:@"date"];
    }

    v10 = [v7 copy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = 0;
      goto LABEL_16;
    }

    v6 = [v3 result];
    v10 = NNHeadlineSyncableResultFromResult(v6, 1);
  }

  if (v5 && v10)
  {
    v19 = v5;
    v20 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v16 = 0;
    v12 = [NSPropertyListSerialization dataWithPropertyList:v11 format:200 options:0 error:&v16];
    v13 = v16;

    if (!v12)
    {
      v14 = NNSetupCompanionSyncLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100008EF8(v13, v14);
      }
    }

    goto LABEL_19;
  }

LABEL_16:
  v13 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Couldn't make data for change %@", buf, 0xCu);
  }

  v12 = 0;
LABEL_19:

  return v12;
}

- (id)changeFromData:(id)a3 ofType:(int64_t)a4
{
  v5 = a3;
  v28 = 0;
  v6 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:&v28];
  v7 = v28;
  if (!v6)
  {
    v8 = NNSetupCompanionSyncLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100008F70(v5, v7, v8);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
    if ([v9 count]!= 1)
    {
      v11 = NNSetupCompanionSyncLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v30 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Expected a dictionary, got a %@", buf, 0xCu);
      }

      goto LABEL_23;
    }

    v10 = [v9 allKeys];
    v11 = [v10 firstObject];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = NNSetupCompanionSyncLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v30 = v11;
        v31 = 2112;
        v32 = v9;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Invalid objects for ClassName %@ and Dictionary %@", buf, 0x16u);
      }

      goto LABEL_23;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 isEqualToString:v13];

    if (v14)
    {
      v15 = [v9 allValues];
      v16 = [v15 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v9 objectForKeyedSubscript:@"identifier"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v17 = 0;
        }

        v18 = [v9 objectForKeyedSubscript:@"date"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v18 = 0;
        }

        v19 = [[NNHeadlineRequestChange alloc] initWithResultIdentifier:v17 requestDate:v18];

        goto LABEL_35;
      }
    }

    else
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = [v11 isEqualToString:v23];

      if (!v24)
      {
        goto LABEL_23;
      }

      v25 = [v9 allValues];
      v16 = [v25 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [[NNHeadlineResultChange alloc] initWithHeadlineResult:v16];
        goto LABEL_35;
      }

      v26 = NNSetupCompanionSyncLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v30 = v16;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Why does this change have an invalid result %@?", buf, 0xCu);
      }
    }

    v19 = 0;
LABEL_35:

    if (!v19 || ([(NNHeadlineRequestChange *)v19 conformsToProtocol:&OBJC_PROTOCOL___SYChange]& 1) != 0)
    {
      goto LABEL_24;
    }

    v27 = NNSetupCompanionSyncLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v19;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Invalid change %@", buf, 0xCu);
    }

LABEL_23:
    v19 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v9 = NNSetupCompanionSyncLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v30 = v5;
    v31 = 2048;
    v32 = a4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Expected a data object, got a %@ with type %ld", buf, 0x16u);
  }

  v19 = 0;
LABEL_25:

  return v19;
}

@end