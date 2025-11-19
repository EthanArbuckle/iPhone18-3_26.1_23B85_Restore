id acc_userDefaults_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyStringForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 stringForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyArrayForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 arrayForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyDictionaryForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 dictionaryForKey:a1];

  return v3;
}

id acc_userDefaults_copyIntegerForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 integerForKey:a1];

  return v3;
}

double acc_userDefaults_copyDoubleForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  [v2 doubleForKey:a1];
  v4 = v3;

  return v4;
}

void acc_userDefaults_setArrayForKey(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCUserDefaults sharedDefaults];
  [v4 setObject:a2 forKey:a1];
}

void acc_userDefaults_setIntegerForKey(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCUserDefaults sharedDefaults];
  [v4 setInteger:a2 forKey:a1];
}

void acc_userDefaults_setDoubleForKey(uint64_t a1, double a2)
{
  v4 = +[ACCUserDefaults sharedDefaults];
  [v4 setDouble:a1 forKey:a2];
}

id acc_userDefaultsIapd_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyStringForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 stringForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyArrayForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 arrayForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyDictionaryForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 dictionaryForKey:a1];

  return v3;
}

id acc_userDefaultsIapd_copyIntegerForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 integerForKey:a1];

  return v3;
}

double acc_userDefaultsIapd_copyDoubleForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  [v2 doubleForKey:a1];
  v4 = v3;

  return v4;
}

id acc_userDefaultsLogging_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsLogging];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

int main(int argc, const char **argv, const char **envp)
{
  init_logging();
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void init_logging()
{
  init_logging_modules(&_gLogObjects, 1, _kLoggingModuleEntries);

  init_logging_signposts();
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void init_logging_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __init_logging_modules_block_invoke;
  block[3] = &__block_descriptor_tmp;
  v4 = a2;
  block[4] = a3;
  block[5] = a1;
  if (init_logging_modules_onceToken != -1)
  {
    dispatch_once(&init_logging_modules_onceToken, block);
  }
}

void __init_logging_modules_block_invoke(uint64_t a1)
{
  v2 = "@0:8";
  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + v3);
      if (!v7)
      {
        v7 = "<Undefined>";
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v12) = v4;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
          v6 = *(a1 + 32);
          v7 = "<Undefined>";
        }
      }

      v8 = *(v6 + v3 + 8);
      if (!v8)
      {
        v8 = "<Undefined>";
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __init_logging_modules_block_invoke_cold_1(v15, v4, &v16);
          v8 = "<Undefined>";
        }
      }

      v9 = os_log_create(v7, v8);
      *(*(a1 + 40) + 8 * v4) = v9;
      if (v9)
      {
        ++v5;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v12 = v7;
          v13 = 2080;
          v14 = v8;
          _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = v7;
        v13 = 2080;
        v14 = v8;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v10 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v10);
    v2 = "v16@0:8" + 3;
  }

  else
  {
    LODWORD(v10) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = *(v2 + 15);
    LODWORD(v12) = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v10) = *(a1 + 48);
  }

  gLogObjects = *(a1 + 40);
  gNumLogObjects = v10;
}

void init_logging_signpost_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __init_logging_signpost_modules_block_invoke;
  block[3] = &__block_descriptor_tmp_0;
  v4 = a2;
  block[4] = a3;
  block[5] = a1;
  if (init_logging_signpost_modules_onceToken != -1)
  {
    dispatch_once(&init_logging_signpost_modules_onceToken, block);
  }
}

void __init_logging_signpost_modules_block_invoke(uint64_t a1)
{
  v2 = "@0:8";
  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + v3);
      if (!v7)
      {
        v7 = "<Undefined>";
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v12) = v4;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingSignpostModuleEntry_t table)", buf, 8u);
          v6 = *(a1 + 32);
          v7 = "<Undefined>";
        }
      }

      v8 = *(v6 + v3 + 8);
      if (!v8)
      {
        v8 = "<Undefined>";
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __init_logging_signpost_modules_block_invoke_cold_1(v15, v4, &v16);
          v8 = "<Undefined>";
        }
      }

      v9 = os_log_create(v7, v8);
      *(*(a1 + 40) + 8 * v4) = v9;
      if (v9)
      {
        ++v5;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v12 = v7;
          v13 = 2080;
          v14 = v8;
          _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = v7;
        v13 = 2080;
        v14 = v8;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v10 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v10);
    v2 = "v16@0:8" + 3;
  }

  else
  {
    LODWORD(v10) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = *(v2 + 15);
    LODWORD(v12) = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v10) = *(a1 + 48);
  }

  gLogSignpostObjects = *(a1 + 40);
  gNumLogSignpostObjects = v10;
}

void __init_logging_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
}

void __init_logging_signpost_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingSignpostModuleEntry_t table)", buf, 8u);
}