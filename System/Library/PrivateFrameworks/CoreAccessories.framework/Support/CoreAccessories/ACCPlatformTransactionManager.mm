@interface ACCPlatformTransactionManager
+ (id)sharedManager;
- (ACCPlatformTransactionManager)init;
- (void)addTransactionForConnectionUUID:(id)d;
- (void)dealloc;
- (void)removeTransactionForConnectionUUID:(id)d;
@end

@implementation ACCPlatformTransactionManager

- (ACCPlatformTransactionManager)init
{
  v15.receiver = self;
  v15.super_class = ACCPlatformTransactionManager;
  v2 = [(ACCPlatformTransactionManager *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.accessoryd.transactionsListLock", 0);
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    v5 = +[NSMutableDictionary dictionary];
    v6 = *(v2 + 1);
    *(v2 + 1) = v5;

    v7 = dispatch_queue_create("com.apple.accessoryd.lastTransactionTimerQueue", 0);
    v8 = *(v2 + 3);
    *(v2 + 3) = v7;

    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v2 + 3));
    v10 = *(v2 + 4);
    *(v2 + 4) = v9;

    v11 = *(v2 + 4);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __37__ACCPlatformTransactionManager_init__block_invoke;
    handler[3] = &unk_100225968;
    v14 = v2;
    dispatch_source_set_event_handler(v11, handler);
    dispatch_source_set_timer(*(v2 + 4), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(*(v2 + 4));
  }

  return v2;
}

void __37__ACCPlatformTransactionManager_init__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionsLock];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __37__ACCPlatformTransactionManager_init__block_invoke_2;
  block[3] = &unk_100225968;
  v4 = *(a1 + 32);
  dispatch_sync(v2, block);
}

void __37__ACCPlatformTransactionManager_init__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) transactions];
  v3 = [v2 count];

  if (gLogObjects)
  {
    v4 = gNumLogObjects < 7;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 134217984;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[#Transactions] lastTransactionTimer FIRED!! count: %lu", &v11, 0xCu);
  }

  if (v3 == 1)
  {
    v7 = [*v1 transactions];
    v8 = [NSString stringWithUTF8String:"com.apple.accessoryd.daemonDirty"];
    [v7 removeObjectForKey:v8];
  }

  if (gLogObjects && gNumLogObjects >= 7)
  {
    v9 = *(gLogObjects + 48);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v10 = &_os_log_default;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __37__ACCPlatformTransactionManager_init__block_invoke_2_cold_3(v1);
  }

  dispatch_source_set_timer(*(*v1 + 4), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)dealloc
{
  timerSource = self->_timerSource;
  if (timerSource)
  {
    dispatch_source_cancel(timerSource);
  }

  v4.receiver = self;
  v4.super_class = ACCPlatformTransactionManager;
  [(ACCPlatformTransactionManager *)&v4 dealloc];
}

- (void)addTransactionForConnectionUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    transactionsLock = [(ACCPlatformTransactionManager *)self transactionsLock];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __65__ACCPlatformTransactionManager_addTransactionForConnectionUUID___block_invoke;
    v6[3] = &unk_100225A08;
    v7 = dCopy;
    selfCopy = self;
    dispatch_sync(transactionsLock, v6);
  }
}

void __65__ACCPlatformTransactionManager_addTransactionForConnectionUUID___block_invoke(uint64_t a1)
{
  v2 = [NSMutableString stringWithUTF8String:"com.apple.accessoryd."];
  v3 = (a1 + 32);
  [v2 appendString:*(a1 + 32)];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 7;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v22 = 138412290;
    v23 = v2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[#Transactions] transactionIDKey %@", &v22, 0xCu);
  }

  v8 = *(a1 + 40);
  v7 = (a1 + 40);
  v9 = [v8 transactions];
  v10 = [v9 objectForKey:v2];

  if (v10)
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v11 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v11 = &_os_log_default;
      v12 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __65__ACCPlatformTransactionManager_addTransactionForConnectionUUID___block_invoke_cold_3(v3, v11);
    }
  }

  [v2 UTF8String];
  v13 = os_transaction_create();

  if (v13)
  {
    v14 = [*v7 transactions];
    [v14 setObject:v13 forKey:v2];
  }

  v15 = [*v7 transactions];
  v16 = [v15 count];

  if (v16 == 1)
  {
    v17 = os_transaction_create();
    v18 = [*v7 transactions];
    v19 = [NSString stringWithUTF8String:"com.apple.accessoryd.daemonDirty"];
    [v18 setObject:v17 forKey:v19];
  }

  if (gLogObjects && gNumLogObjects >= 7)
  {
    v20 = *(gLogObjects + 48);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v20 = &_os_log_default;
    v21 = &_os_log_default;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __37__ACCPlatformTransactionManager_init__block_invoke_2_cold_3(v7);
  }
}

- (void)removeTransactionForConnectionUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    transactionsLock = [(ACCPlatformTransactionManager *)self transactionsLock];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __68__ACCPlatformTransactionManager_removeTransactionForConnectionUUID___block_invoke;
    v6[3] = &unk_100225A08;
    v7 = dCopy;
    selfCopy = self;
    dispatch_sync(transactionsLock, v6);
  }
}

void __68__ACCPlatformTransactionManager_removeTransactionForConnectionUUID___block_invoke(uint64_t a1)
{
  v2 = [NSMutableString stringWithUTF8String:"com.apple.accessoryd."];
  v3 = (a1 + 32);
  [v2 appendString:*(a1 + 32)];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 7;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v21 = 138412290;
    v22 = v2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[#Transactions] transactionIDKey %@", &v21, 0xCu);
  }

  v8 = *(a1 + 40);
  v7 = (a1 + 40);
  v9 = [v8 transactions];
  v10 = [v9 objectForKey:v2];

  if (v10)
  {
    v11 = [*v7 transactions];
    [v11 removeObjectForKey:v2];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v11 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v11 = &_os_log_default;
      v12 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __68__ACCPlatformTransactionManager_removeTransactionForConnectionUUID___block_invoke_cold_3(v3, v11);
    }
  }

  v13 = [*v7 transactions];
  v14 = [v13 count];

  if (v14 == 1)
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v15 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v15 = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[#Transactions] starting lastTransactionTimer!!", &v21, 2u);
    }

    v17 = [*v7 timerSource];
    v18 = dispatch_walltime(0, 60000000000);
    dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  if (gLogObjects && gNumLogObjects >= 7)
  {
    v19 = *(gLogObjects + 48);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v19 = &_os_log_default;
    v20 = &_os_log_default;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    __37__ACCPlatformTransactionManager_init__block_invoke_2_cold_3(v7);
  }
}

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __46__ACCPlatformTransactionManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_once_9 != -1)
  {
    dispatch_once(&sharedManager_once_9, block);
  }

  v2 = sharedManager_sharedInstance_9;

  return v2;
}

uint64_t __46__ACCPlatformTransactionManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance_9 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void __37__ACCPlatformTransactionManager_init__block_invoke_2_cold_3(id *a1)
{
  v1 = [*a1 transactions];
  OUTLINED_FUNCTION_6_8(&_mh_execute_header, v2, v3, "[#Transactions] transactions: %@", v4, v5, v6, v7, 2u);
}

void __65__ACCPlatformTransactionManager_addTransactionForConnectionUUID___block_invoke_cold_3(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[#Transactions] Transaction %@ exists", &v3, 0xCu);
}

void __68__ACCPlatformTransactionManager_removeTransactionForConnectionUUID___block_invoke_cold_3(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[#Transactions] Transaction %@ does not exist", &v3, 0xCu);
}

@end