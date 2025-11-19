@interface DTConditionInducerSupportService
- (BOOL)_disableConditionInducerWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)_enableConditionInducerWithIdentifier:(id)a3 profileIdentifier:(id)a4 error:(id *)a5;
- (BOOL)_stopActiveConditionInducerWithError:(id *)a3;
- (DTConditionInducerSupportService)initWithConnection:(id)a3;
- (NSXPCConnection)connection;
- (id)_availableConditionInducersWithError:(id *)a3;
- (id)_dictRepresentingConditionWithIdentifier:(id)a3 activeProfileIdentifier:(id)a4 configuration:(id)a5;
- (void)_activeConditionEnded;
- (void)_endTransaction:(id)a3;
- (void)_userStoppedActiveConditions;
- (void)_userTearingDownActiveConditions;
- (void)dealloc;
- (void)disableActiveConditionInducerWithReply:(id)a3;
- (void)disableConditionInducerWithIdentifier:(id)a3 reply:(id)a4;
- (void)enableConditionInducerWithIdentifier:(id)a3 profileIdentifier:(id)a4 reply:(id)a5;
- (void)listAvailableConditionInducersWithReply:(id)a3;
@end

@implementation DTConditionInducerSupportService

- (DTConditionInducerSupportService)initWithConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DTConditionInducerSupportService;
  v5 = [(DTConditionInducerSupportService *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, v4);
  }

  return v6;
}

- (void)dealloc
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v3 = objc_opt_class();
    v4 = v3;
    v5 = [(DTConditionInducerSupportService *)self activeConditionSession];
    *buf = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%@: connection going away, stopping condition: %@", buf, 0x16u);
  }

  v6 = [(DTConditionInducerSupportService *)self activeConditionSession];
  [v6 stopConditionWithCallback:0];

  [(DTConditionInducerSupportService *)self setKeepAliveTransaction:0];
  v7.receiver = self;
  v7.super_class = DTConditionInducerSupportService;
  [(DTConditionInducerSupportService *)&v7 dealloc];
}

- (void)listAvailableConditionInducersWithReply:(id)a3
{
  v4 = a3;
  v12 = 0;
  v5 = [(DTConditionInducerSupportService *)self _availableConditionInducersWithError:&v12];
  v6 = v12;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [v5 count];
    *buf = 138412546;
    v14 = v7;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%@: Found %lu available condition inducers", buf, 0x16u);
  }

  if (v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    v10 = objc_opt_class();
    *buf = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = v6;
    v11 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%@: Failed to list available condition inducers with error: %@", buf, 0x16u);
  }

  if (v4)
  {
    v4[2](v4, v5, v6);
  }
}

- (void)enableConditionInducerWithIdentifier:(id)a3 profileIdentifier:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17 = 0;
  v11 = [(DTConditionInducerSupportService *)self _enableConditionInducerWithIdentifier:v8 profileIdentifier:v9 error:&v17];
  v12 = v17;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v13 = objc_opt_class();
    *buf = 138413058;
    v19 = v13;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    v24 = 1024;
    LODWORD(v25) = v11;
    v14 = v13;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%@: Enable condition inducer %@ / %@ success=%d", buf, 0x26u);
  }

  if (v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    v15 = objc_opt_class();
    *buf = 138413058;
    v19 = v15;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v12;
    v16 = v15;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%@: failed to enable %@ / %@ with error: %@", buf, 0x2Au);
  }

  if (v10)
  {
    v10[2](v10, v11, v12);
  }
}

- (void)disableConditionInducerWithIdentifier:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v8 = [(DTConditionInducerSupportService *)self _disableConditionInducerWithIdentifier:v6 error:&v14];
  v9 = v14;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v10 = objc_opt_class();
    *buf = 138412802;
    v16 = v10;
    v17 = 2112;
    v18 = v6;
    v19 = 1024;
    LODWORD(v20) = v8;
    v11 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%@: Disable condition inducer %@ success=%d", buf, 0x1Cu);
  }

  if (v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    v12 = objc_opt_class();
    *buf = 138412802;
    v16 = v12;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v9;
    v13 = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%@: failed to disable %@ with error: %@", buf, 0x20u);
  }

  if (v7)
  {
    v7[2](v7, v8, v9);
  }
}

- (void)disableActiveConditionInducerWithReply:(id)a3
{
  v4 = a3;
  v11 = 0;
  v5 = [(DTConditionInducerSupportService *)self _stopActiveConditionInducerWithError:&v11];
  v6 = v11;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    *buf = 138412546;
    v13 = v7;
    v14 = 1024;
    LODWORD(v15) = v5;
    v8 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%@: Disable active condition inducer success=%d", buf, 0x12u);
  }

  if (v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    v9 = objc_opt_class();
    *buf = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v6;
    v10 = v9;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%@: failed to disable active condition with error: %@", buf, 0x16u);
  }

  if (v4)
  {
    v4[2](v4, v5, v6);
  }
}

- (id)_availableConditionInducersWithError:(id *)a3
{
  v30 = +[NSMutableArray array];
  v4 = +[COConditionSession listAvailableConditions];
  v31 = +[COConditionSession getActiveConditions];
  v32 = self;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [v31 debugDescription];
    *buf = 138412546;
    v41 = v5;
    v42 = 2112;
    v43 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%@: activeConditions = %@", buf, 0x16u);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    v11 = kCOConditionIdentifierName;
    v34 = kCOConditionBundlePath;
    v29 = kCOConditionCacheClassName;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          v14 = objc_opt_class();
          v15 = v14;
          v16 = [v13 debugDescription];
          *buf = 138412546;
          v41 = v14;
          v42 = 2112;
          v43 = v16;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%@: condition configuration: %@", buf, 0x16u);
        }

        v17 = [v13 objectForKeyedSubscript:{v11, v29}];
        if (v17)
        {
          v18 = [v13 objectForKeyedSubscript:v34];
          if (v18)
          {
            v19 = [v31 objectForKeyedSubscript:v18];
            v20 = [v19 objectForKeyedSubscript:v29];

            v21 = [(DTConditionInducerSupportService *)v32 _dictRepresentingConditionWithIdentifier:v17 activeProfileIdentifier:v20 configuration:v13];
            [v30 addObject:v21];
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v25 = objc_opt_class();
            v26 = v25;
            v27 = [v13 debugDescription];
            *buf = 138412546;
            v41 = v25;
            v42 = 2112;
            v43 = v27;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%@: condition configuration is missing path: %@", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v22 = objc_opt_class();
          v23 = v22;
          v24 = [v13 debugDescription];
          *buf = 138412546;
          v41 = v22;
          v42 = 2112;
          v43 = v24;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%@: condition configuration is missing identifier: %@", buf, 0x16u);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v9);
  }

  return v30;
}

- (id)_dictRepresentingConditionWithIdentifier:(id)a3 activeProfileIdentifier:(id)a4 configuration:(id)a5
{
  v36 = a3;
  v35 = a4;
  v7 = a5;
  v37 = +[NSMutableArray array];
  v34 = v7;
  [v7 objectForKeyedSubscript:kCOConditionBundleArray];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v42 = 0u;
  v8 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
  v9 = kCOConditionUserFriendlyName;
  if (v8)
  {
    v10 = v8;
    v11 = *v40;
    v12 = kCOConditionIdentifierName;
    v13 = kCOConditionDescription;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v39 + 1) + 8 * i);
        v16 = [v15 objectForKeyedSubscript:v12];
        v17 = [v15 objectForKeyedSubscript:v9];
        if ([v16 length] && objc_msgSend(v17, "length"))
        {
          v18 = [v15 objectForKeyedSubscript:v13];
          v45[0] = @"identifier";
          v45[1] = @"name";
          v46[0] = v16;
          v46[1] = v17;
          v45[2] = @"description";
          v46[2] = v18;
          v19 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:3];
          [v37 addObject:v19];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v10);
  }

  v20 = [v34 objectForKeyedSubscript:v9];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v36;
  }

  v23 = v22;

  v24 = [v34 objectForKeyedSubscript:kCOConditionIsDestructive];
  v25 = [v24 BOOLValue];

  v26 = [v34 objectForKeyedSubscript:kCOConditionIsInternal];
  v27 = [v26 BOOLValue];

  v43[0] = @"identifier";
  v43[1] = @"name";
  v44[0] = v36;
  v44[1] = v23;
  v44[2] = v37;
  v43[2] = @"profiles";
  v43[3] = @"isDestructive";
  v28 = [NSNumber numberWithBool:v25];
  v44[3] = v28;
  v43[4] = @"isInternal";
  v29 = [NSNumber numberWithBool:v27];
  v44[4] = v29;
  v43[5] = @"isActive";
  if (v35)
  {
    v30 = v35;
  }

  else
  {
    v30 = &stru_100008410;
  }

  v31 = [NSNumber numberWithBool:v35 != 0];
  v44[5] = v31;
  v44[6] = v30;
  v43[6] = @"activeProfile";
  v43[7] = @"profilesSorted";
  v44[7] = &__kCFBooleanTrue;
  v32 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:8];

  return v32;
}

- (BOOL)_enableConditionInducerWithIdentifier:(id)a3 profileIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(DTConditionInducerSupportService *)self activeConditionSession];

  if (v10)
  {
    v11 = [(DTConditionInducerSupportService *)self activeConditionSession];
    v12 = [v11 hasActiveCondition];

    if (v12)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = v13;
        v15 = [(DTConditionInducerSupportService *)self activeConditionSession];
        *buf = 138412546;
        *&buf[4] = v13;
        *&buf[12] = 2112;
        *&buf[14] = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%@: cannot enable inducer as a condition is already active: %@", buf, 0x16u);
      }

      if (a5)
      {
        v56 = NSLocalizedDescriptionKey;
        v57 = @"A condition is already active.";
        v16 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        *a5 = [NSError errorWithDomain:@"DTConditionInducerSupportService" code:3 userInfo:v16];
      }

      LOBYTE(v17) = 0;
      goto LABEL_22;
    }

    [(DTConditionInducerSupportService *)self setActiveConditionSession:0];
    [(DTConditionInducerSupportService *)self setKeepAliveTransaction:0];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v53 = sub_100002458;
  v54 = sub_100002468;
  v55 = 0;
  v18 = [[COConditionSession alloc] initWithConditionIdentifier:v8 profile:v9];
  objc_initWeak(&location, self);
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100002470;
  v42[3] = &unk_100008258;
  v42[4] = buf;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100002480;
  v40[3] = &unk_100008280;
  objc_copyWeak(&v41, &location);
  v35 = _NSConcreteStackBlock;
  v36 = 3221225472;
  v37 = sub_1000024C0;
  v38 = &unk_1000082A8;
  objc_copyWeak(&v39, &location);
  v17 = [v18 startConditionWithCallback:v42 teardownStartedCallback:v40 teardownFinishedCallback:&v35];
  if (v17)
  {
    v19 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v20 = objc_opt_class();
      *v44 = 138412546;
      v45 = v20;
      v46 = 2112;
      v47 = v18;
      v21 = v20;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%@: condition enabled successfully: %@", v44, 0x16u);
    }

    [(DTConditionInducerSupportService *)self setActiveConditionSession:v18];
    v22 = [NSString stringWithFormat:@"com.apple.dt.DTConditionInducerSupportService.%@.%@", v8, v9, v35, v36, v37, v38];
    v23 = v22;
    [v22 cStringUsingEncoding:4];
    v24 = os_transaction_create();
    [(DTConditionInducerSupportService *)self setKeepAliveTransaction:v24];

    v25 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v26 = objc_opt_class();
      v27 = [(DTConditionInducerSupportService *)self keepAliveTransaction];
      *v44 = 138412546;
      v45 = v26;
      v46 = 2112;
      v47 = v27;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%@: transaction created: %@", v44, 0x16u);
    }
  }

  else
  {
    if (!*(*&buf[8] + 40))
    {
      v50 = NSLocalizedDescriptionKey;
      v51 = @"There was a problem enabling the condition inducer.";
      v28 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v29 = [NSError errorWithDomain:@"DTConditionInducerSupportService" code:3 userInfo:v28];
      v30 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v29;
    }

    v22 = &_os_log_default;
    v31 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v32 = objc_opt_class();
      v33 = [*(*&buf[8] + 40) localizedDescription];
      *v44 = 138412802;
      v45 = v32;
      v46 = 2112;
      v47 = v18;
      v48 = 2112;
      v49 = v33;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%@: failed to enable %@ with error: %@", v44, 0x20u);

      v22 = &_os_log_default;
    }
  }

  if (a5)
  {
    *a5 = *(*&buf[8] + 40);
  }

  objc_destroyWeak(&v39);
  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);

  _Block_object_dispose(buf, 8);
LABEL_22:

  return v17;
}

- (void)_userTearingDownActiveConditions
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = v3;
    v5 = [(DTConditionInducerSupportService *)self activeConditionSession];
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%@: user requested tear down of active condition session: %@", &v8, 0x16u);
  }

  v6 = [(DTConditionInducerSupportService *)self connection];
  v7 = [v6 remoteObjectProxy];

  [v7 activeConditionsWillStop];
}

- (void)_userStoppedActiveConditions
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = v3;
    v5 = [(DTConditionInducerSupportService *)self activeConditionSession];
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%@: user stopped active condition session: %@", &v8, 0x16u);
  }

  v6 = [(DTConditionInducerSupportService *)self connection];
  v7 = [v6 remoteObjectProxy];

  [v7 activeConditionsDidStop];
  [(DTConditionInducerSupportService *)self _activeConditionEnded];
}

- (BOOL)_disableConditionInducerWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(DTConditionInducerSupportService *)self activeConditionSession];
  if (v7)
  {
    v8 = v7;
    v9 = [(DTConditionInducerSupportService *)self activeConditionSession];
    v10 = [v9 selectedCondition];
    v11 = [v10 isEqualToString:v6];

    if (v11)
    {
      v14 = 0;
      v12 = [(DTConditionInducerSupportService *)self _stopActiveConditionInducerWithError:&v14];
      v7 = v14;
      if (!a4)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v7 = 0;
  }

  v12 = 1;
  if (a4)
  {
LABEL_7:
    v7 = v7;
    *a4 = v7;
  }

LABEL_8:

  return v12;
}

- (BOOL)_stopActiveConditionInducerWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100002458;
  v22 = sub_100002468;
  v23 = 0;
  v5 = [(DTConditionInducerSupportService *)self activeConditionSession];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100002AA0;
  v17[3] = &unk_100008258;
  v17[4] = &v18;
  v6 = [v5 stopConditionWithCallback:v17];

  v7 = v19[5];
  v8 = (v7 == 0) & v6;
  if (v8)
  {
    [(DTConditionInducerSupportService *)self _activeConditionEnded];
  }

  else
  {
    if (!v7)
    {
      v30 = NSLocalizedDescriptionKey;
      v31 = @"There was a problem disabling a condition inducer.";
      v9 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v10 = [NSError errorWithDomain:@"DTConditionInducerSupportService" code:4 userInfo:v9];
      v11 = v19[5];
      v19[5] = v10;
    }

    v12 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = [(DTConditionInducerSupportService *)self activeConditionSession];
      v15 = [v19[5] localizedDescription];
      *buf = 138412802;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%@: failed to disable %@ with error: %@", buf, 0x20u);
    }
  }

  if (a3)
  {
    *a3 = v19[5];
  }

  _Block_object_dispose(&v18, 8);

  return v8;
}

- (void)_activeConditionEnded
{
  [(DTConditionInducerSupportService *)self setActiveConditionSession:0];
  v3 = [(DTConditionInducerSupportService *)self keepAliveTransaction];
  v4 = dispatch_time(0, 5000000000);
  v5 = dispatch_get_global_queue(21, 0);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002B90;
  v6[3] = &unk_1000082D0;
  v6[4] = self;
  v6[5] = v3;
  dispatch_after(v4, v5, v6);

  [(DTConditionInducerSupportService *)self setKeepAliveTransaction:0];
}

- (void)_endTransaction:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v4 = a3;
    v5 = objc_opt_class();

    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v4;
    v6 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%@: transaction ending: %@", &v7, 0x16u);
  }
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end