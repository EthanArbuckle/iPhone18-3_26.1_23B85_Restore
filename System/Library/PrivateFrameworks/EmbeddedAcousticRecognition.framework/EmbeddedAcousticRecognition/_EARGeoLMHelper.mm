@interface _EARGeoLMHelper
- (_EARGeoLMHelper)initWithConfiguration:(id)a3;
- (_EARGeoLMHelper)initWithLocale:(id)a3 config:(id)a4;
- (id)regionIdForLatitude:(double)a3 longitude:(double)a4;
- (id)regionIdForLocale:(id)a3 latitude:(double)a4 longitude:(double)a5;
@end

@implementation _EARGeoLMHelper

- (_EARGeoLMHelper)initWithLocale:(id)a3 config:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([(__CFString *)v7 length]&& [(__CFString *)v8 length])
  {
    v19.receiver = self;
    v19.super_class = _EARGeoLMHelper;
    v9 = [(_EARGeoLMHelper *)&v19 init];
    if (v9)
    {
      v10 = EarGeoLMHelperLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [_EARGeoLMHelper initWithLocale:config:];
      }

      objc_storeStrong(&v9->_locale, a3);
      v18 = &unk_1F2D13EE8;
      operator new();
    }

    self = 0;
    v12 = self;
  }

  else
  {
    v11 = EarGeoLMHelperLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = [(__CFString *)v7 length];
      v15 = [(__CFString *)v8 length];
      v16 = @"(none)";
      if (v14)
      {
        v17 = v7;
      }

      else
      {
        v17 = @"(none)";
      }

      if (v15)
      {
        v16 = v8;
      }

      __p = 138412546;
      __p_4 = v17;
      v22 = 2112;
      v23 = v16;
      _os_log_error_impl(&dword_1B501D000, v11, OS_LOG_TYPE_ERROR, "GeoLM: Cannot initialize helper with locale: %@, config: %@", &__p, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

- (id)regionIdForLocale:(id)a3 latitude:(double)a4 longitude:(double)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(__CFString *)v8 isEqualToString:self->_locale];
  if (v9)
  {
    quasar::Location::makeAny(v9, a4, a5);
    __p[5] = v10;
    __p[6] = v11;
    memset(buf, 0, sizeof(buf));
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    quasar::Geography::getGeoContext();
  }

  v12 = EarGeoLMHelperLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    locale = self->_locale;
    v15 = [(__CFString *)v8 length];
    v16 = @"(none)";
    if (v15)
    {
      v16 = v8;
    }

    *buf = 138412546;
    *&buf[4] = locale;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    _os_log_error_impl(&dword_1B501D000, v12, OS_LOG_TYPE_ERROR, "GeoLM: This helper only supports %@, not %@", buf, 0x16u);
  }

  return 0;
}

- (_EARGeoLMHelper)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v10.receiver = self;
    v10.super_class = _EARGeoLMHelper;
    if ([(_EARGeoLMHelper *)&v10 init])
    {
      v6 = EarGeoLMHelperLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [_EARGeoLMHelper initWithConfiguration:];
      }

      v9 = &unk_1F2D13EE8;
      operator new();
    }

    self = 0;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)regionIdForLatitude:(double)a3 longitude:(double)a4
{
  v13 = *MEMORY[0x1E69E9840];
  quasar::Location::makeAny(self, a3, a4);
  v11 = v4;
  v12 = v5;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  quasar::Geography::getGeoContext();
}

- (void)initWithLocale:config:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1B501D000, v1, OS_LOG_TYPE_DEBUG, "GeoLM: Initializing helper with locale: %@, config: %@", v2, 0x16u);
}

- (void)initWithLocale:config:.cold.3()
{
  OUTLINED_FUNCTION_0_2();
  (*(v0 + 16))();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3(&dword_1B501D000, v1, v2, "GeoLM: Internal C++ exception: %s", v3, v4, v5, v6, v7);
}

- (void)regionIdForLocale:latitude:longitude:.cold.3()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(&dword_1B501D000, v0, OS_LOG_TYPE_DEBUG, "GeoLM: Resolved regionId: %@", v1, 0xCu);
}

- (void)initWithConfiguration:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(&dword_1B501D000, v0, OS_LOG_TYPE_DEBUG, "GeoLM: geo config path: %@", v1, 0xCu);
}

- (void)regionIdForLatitude:(os_log_t)log longitude:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1B501D000, log, OS_LOG_TYPE_DEBUG, "GeoLM: selected regionId: %@", buf, 0xCu);
}

@end