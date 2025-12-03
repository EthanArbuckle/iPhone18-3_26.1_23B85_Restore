@interface NNChangeSerializer
- (id)changeFromData:(id)data ofType:(int64_t)type;
- (id)dataFromChange:(id)change;
@end

@implementation NNChangeSerializer

- (id)dataFromChange:(id)change
{
  changeCopy = change;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    result = changeCopy;
    v7 = +[NSMutableDictionary dictionary];
    resultIdentifier = [result resultIdentifier];
    if (resultIdentifier)
    {
      [v7 setObject:resultIdentifier forKeyedSubscript:@"identifier"];
    }

    requestDate = [result requestDate];
    if (requestDate)
    {
      [v7 setObject:requestDate forKeyedSubscript:@"date"];
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

    result = [changeCopy result];
    v10 = NNHeadlineSyncableResultFromResult(result, 1);
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
    v18 = changeCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Couldn't make data for change %@", buf, 0xCu);
  }

  v12 = 0;
LABEL_19:

  return v12;
}

- (id)changeFromData:(id)data ofType:(int64_t)type
{
  dataCopy = data;
  v28 = 0;
  v6 = [NSPropertyListSerialization propertyListWithData:dataCopy options:0 format:0 error:&v28];
  v7 = v28;
  if (!v6)
  {
    v8 = NNSetupCompanionSyncLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100008F70(dataCopy, v7, v8);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
    if ([v9 count]!= 1)
    {
      firstObject = NNSetupCompanionSyncLog();
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v30 = v9;
        _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_INFO, "Expected a dictionary, got a %@", buf, 0xCu);
      }

      goto LABEL_23;
    }

    allKeys = [v9 allKeys];
    firstObject = [allKeys firstObject];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = NNSetupCompanionSyncLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v30 = firstObject;
        v31 = 2112;
        typeCopy = v9;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Invalid objects for ClassName %@ and Dictionary %@", buf, 0x16u);
      }

      goto LABEL_23;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [firstObject isEqualToString:v13];

    if (v14)
    {
      allValues = [v9 allValues];
      firstObject2 = [allValues firstObject];

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
      v24 = [firstObject isEqualToString:v23];

      if (!v24)
      {
        goto LABEL_23;
      }

      allValues2 = [v9 allValues];
      firstObject2 = [allValues2 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [[NNHeadlineResultChange alloc] initWithHeadlineResult:firstObject2];
        goto LABEL_35;
      }

      v26 = NNSetupCompanionSyncLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v30 = firstObject2;
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
    v30 = dataCopy;
    v31 = 2048;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Expected a data object, got a %@ with type %ld", buf, 0x16u);
  }

  v19 = 0;
LABEL_25:

  return v19;
}

@end