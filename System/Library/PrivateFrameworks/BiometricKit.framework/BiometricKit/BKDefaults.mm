@interface BKDefaults
+ (BOOL)setNumber:(id)number forKey:(id)key withError:(id *)error;
+ (BOOL)setString:(id)string forKey:(id)key withError:(id *)error;
+ (id)device;
+ (id)numberForKey:(id)key withError:(id *)error;
+ (id)stringForKey:(id)key withError:(id *)error;
@end

@implementation BKDefaults

+ (id)device
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = +[BKDeviceManager availableDevices];
  firstObject = [v2 firstObject];
  if (firstObject)
  {
    v10 = 0;
    v4 = [BKDevice deviceWithDescriptor:firstObject error:&v10];
    v5 = v10;
    if (!v4)
    {
      v6 = (__osLog ? __osLog : MEMORY[0x1E69E9C10]);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v12 = firstObject;
        v13 = 2112;
        v14 = v5;
        _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_ERROR, "Cannot instantiate device with descriptor %@, error %@\n", buf, 0x16u);
      }
    }
  }

  else
  {
    if (__osLog)
    {
      v7 = __osLog;
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_ERROR, "Cannot find any biometric device\n", buf, 2u);
    }

    v4 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)numberForKey:(id)key withError:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = keyCopy;
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDefaults::numberForKey: %@\n", buf, 0xCu);
  }

  device = [self device];
  v10 = device;
  if (device)
  {
    v11 = *(device + 8);
    v22 = 0;
    v12 = [v11 getPreferencesValue:&v22 forKey:keyCopy];
    v13 = v22;
    v14 = v13;
    if (!v12)
    {
      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        [BKDefaults numberForKey:error withError:?];
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }

      if (__osLogTrace)
      {
        v7 = __osLogTrace;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v16 = *error;
        }

        else
        {
          v16 = 0;
        }

        *buf = 138412802;
        *&buf[4] = keyCopy;
        v25 = 2112;
        v26 = v15;
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_DEFAULT, "BKDefaults::numberForKey: -> (%@: %@), error:%@\n", buf, 0x20u);
      }

      goto LABEL_18;
    }

    +[BKDefaults numberForKey:withError:];
  }

  else
  {
    [BKDefaults numberForKey:buf withError:?];
  }

  v14 = *buf;
  setErrorWithOSStatus(v23, error);
  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v7;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v21 = *error;
    }

    else
    {
      v21 = 0;
    }

    *buf = 138412802;
    *&buf[4] = keyCopy;
    v25 = 2112;
    v26 = 0;
    v27 = 2112;
    v28 = v21;
    _os_log_impl(&dword_1C82AD000, v20, OS_LOG_TYPE_ERROR, "BKDefaults::numberForKey: -> (%@: %@), error:%@\n", buf, 0x20u);
  }

  v15 = 0;
LABEL_18:
  v17 = v15;

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (id)stringForKey:(id)key withError:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = keyCopy;
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDefaults::stringForKey: %@\n", buf, 0xCu);
  }

  device = [self device];
  v10 = device;
  if (device)
  {
    v11 = *(device + 8);
    v22 = 0;
    v12 = [v11 getPreferencesValue:&v22 forKey:keyCopy];
    v13 = v22;
    v14 = v13;
    if (!v12)
    {
      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        [BKDefaults stringForKey:error withError:?];
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }

      if (__osLogTrace)
      {
        v7 = __osLogTrace;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v16 = *error;
        }

        else
        {
          v16 = 0;
        }

        *buf = 138412802;
        *&buf[4] = keyCopy;
        v25 = 2112;
        v26 = v15;
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_DEFAULT, "BKDefaults::stringForKey: -> (%@: %@), error:%@\n", buf, 0x20u);
      }

      goto LABEL_18;
    }

    +[BKDefaults stringForKey:withError:];
  }

  else
  {
    [BKDefaults stringForKey:buf withError:?];
  }

  v14 = *buf;
  setErrorWithOSStatus(v23, error);
  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v7;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v21 = *error;
    }

    else
    {
      v21 = 0;
    }

    *buf = 138412802;
    *&buf[4] = keyCopy;
    v25 = 2112;
    v26 = 0;
    v27 = 2112;
    v28 = v21;
    _os_log_impl(&dword_1C82AD000, v20, OS_LOG_TYPE_ERROR, "BKDefaults::stringForKey: -> (%@: %@), error:%@\n", buf, 0x20u);
  }

  v15 = 0;
LABEL_18:
  v17 = v15;

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (BOOL)setNumber:(id)number forKey:(id)key withError:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  keyCopy = key;
  v10 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = keyCopy;
    v24 = 2112;
    v25 = numberCopy;
    _os_log_impl(&dword_1C82AD000, v11, OS_LOG_TYPE_DEFAULT, "BKDefaults::setNumber:forKey: (%@: %@)\n", &v22, 0x16u);
  }

  device = [self device];
  v13 = device;
  if (device)
  {
    v14 = [*(device + 8) setPreferencesValue:numberCopy forKey:keyCopy];
    if (!v14)
    {
      if (__osLogTrace)
      {
        v15 = __osLogTrace;
      }

      else
      {
        v15 = v10;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v16 = *error;
        }

        else
        {
          v16 = 0;
        }

        v22 = 138413058;
        v23 = keyCopy;
        v24 = 2112;
        v25 = numberCopy;
        v26 = 1024;
        v17 = 1;
        v27 = 1;
        v28 = 2112;
        v29 = v16;
        _os_log_impl(&dword_1C82AD000, v15, OS_LOG_TYPE_DEFAULT, "BKDefaults::setNumber:forKey: (%@: %@) -> %d, error:%@\n", &v22, 0x26u);
      }

      else
      {
        v17 = 1;
      }

      goto LABEL_17;
    }

    [BKDefaults setNumber:v14 forKey:v14 withError:&v22];
  }

  else
  {
    +[BKDefaults setNumber:forKey:withError:];
  }

  setErrorWithOSStatus(v22, error);
  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v10;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v21 = *error;
    }

    else
    {
      v21 = 0;
    }

    v22 = 138413058;
    v23 = keyCopy;
    v24 = 2112;
    v25 = numberCopy;
    v26 = 1024;
    v27 = 0;
    v28 = 2112;
    v29 = v21;
    _os_log_impl(&dword_1C82AD000, v20, OS_LOG_TYPE_ERROR, "BKDefaults::setNumber:forKey: (%@: %@) -> %d, error:%@\n", &v22, 0x26u);
  }

  v17 = 0;
LABEL_17:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (BOOL)setString:(id)string forKey:(id)key withError:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  keyCopy = key;
  v10 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = keyCopy;
    v24 = 2112;
    v25 = stringCopy;
    _os_log_impl(&dword_1C82AD000, v11, OS_LOG_TYPE_DEFAULT, "BKDevice::setString:forKey: (%@: %@)\n", &v22, 0x16u);
  }

  device = [self device];
  v13 = device;
  if (device)
  {
    v14 = [*(device + 8) setPreferencesValue:stringCopy forKey:keyCopy];
    if (!v14)
    {
      if (__osLogTrace)
      {
        v15 = __osLogTrace;
      }

      else
      {
        v15 = v10;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v16 = *error;
        }

        else
        {
          v16 = 0;
        }

        v22 = 138413058;
        v23 = keyCopy;
        v24 = 2112;
        v25 = stringCopy;
        v26 = 1024;
        v17 = 1;
        v27 = 1;
        v28 = 2112;
        v29 = v16;
        _os_log_impl(&dword_1C82AD000, v15, OS_LOG_TYPE_DEFAULT, "BKDevice::setString:forKey: (%@: %@) -> %d, error:%@\n", &v22, 0x26u);
      }

      else
      {
        v17 = 1;
      }

      goto LABEL_17;
    }

    [BKDefaults setString:v14 forKey:v14 withError:&v22];
  }

  else
  {
    +[BKDefaults setString:forKey:withError:];
  }

  setErrorWithOSStatus(v22, error);
  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v10;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v21 = *error;
    }

    else
    {
      v21 = 0;
    }

    v22 = 138413058;
    v23 = keyCopy;
    v24 = 2112;
    v25 = stringCopy;
    v26 = 1024;
    v27 = 0;
    v28 = 2112;
    v29 = v21;
    _os_log_impl(&dword_1C82AD000, v20, OS_LOG_TYPE_ERROR, "BKDevice::setString:forKey: (%@: %@) -> %d, error:%@\n", &v22, 0x26u);
  }

  v17 = 0;
LABEL_17:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (void)numberForKey:withError:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  v12 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_9(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_10_2(&dword_1C82AD000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9, v11);
  }

  *v1 = v3;
  *v0 = v2;
  v10 = *MEMORY[0x1E69E9840];
}

+ (id)numberForKey:(void *)a1 withError:.cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v10);
  }

  result = setErrorWithOSStatus(0x16, a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)numberForKey:(uint64_t)a1 withError:(void *)a2 .cold.3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v3, v4, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v5, v6, v7, v8, v10);
  }

  *a2 = 0;
  OUTLINED_FUNCTION_9_0();
  v9 = *MEMORY[0x1E69E9840];
}

+ (void)stringForKey:withError:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  v12 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_9(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_10_2(&dword_1C82AD000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9, v11);
  }

  *v1 = v3;
  *v0 = v2;
  v10 = *MEMORY[0x1E69E9840];
}

+ (id)stringForKey:(void *)a1 withError:.cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v10);
  }

  result = setErrorWithOSStatus(0x16, a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)stringForKey:(uint64_t)a1 withError:(void *)a2 .cold.3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v3, v4, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v5, v6, v7, v8, v10);
  }

  *a2 = 0;
  OUTLINED_FUNCTION_9_0();
  v9 = *MEMORY[0x1E69E9840];
}

+ (void)setNumber:(uint64_t)a1 forKey:(int)a2 withError:(_DWORD *)a3 .cold.1(uint64_t a1, int a2, _DWORD *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v5, v6, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v7, v8, v9, v10, v12);
  }

  *a3 = a2;
  v11 = *MEMORY[0x1E69E9840];
}

+ (void)setNumber:forKey:withError:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_9_0();
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)setString:(uint64_t)a1 forKey:(int)a2 withError:(_DWORD *)a3 .cold.1(uint64_t a1, int a2, _DWORD *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v5, v6, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v7, v8, v9, v10, v12);
  }

  *a3 = a2;
  v11 = *MEMORY[0x1E69E9840];
}

+ (void)setString:forKey:withError:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_9_0();
  v6 = *MEMORY[0x1E69E9840];
}

@end