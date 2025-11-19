@interface NUFlexRangeProperties
@end

@implementation NUFlexRangeProperties

id __65___NUFlexRangeProperties_flexRangePropertiesWithGainMapMetadata___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"HDRToneMap", a2];
  v4 = CGImageMetadataCopyTagWithPath(*(a1 + 32), 0, v3);
  v5 = v4;
  if (v4)
  {
    v6 = CGImageMetadataTagCopyValue(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

float __65___NUFlexRangeProperties_flexRangePropertiesWithGainMapMetadata___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = (*(*(a1 + 32) + 16))();
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v4 floatValue];
    v6 = v5;
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
    }

    v7 = _NULogger;
    v6 = 0.0;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      v9 = v3;
      v10 = v7;
      v11 = [v3 UTF8String];
      v12 = [v4 description];
      v13 = 136315394;
      v14 = v11;
      v15 = 2080;
      v16 = [v12 UTF8String];
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Invalid '%s' tag value: %s", &v13, 0x16u);
    }
  }

  return v6;
}

uint64_t __65___NUFlexRangeProperties_flexRangePropertiesWithGainMapMetadata___block_invoke_378(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = (*(*(a1 + 32) + 16))();
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      a3 = [v6 BOOLValue];
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
      }

      v7 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        v9 = v5;
        v10 = v7;
        v11 = [v5 UTF8String];
        v12 = [v6 description];
        v13 = 136315394;
        v14 = v11;
        v15 = 2080;
        v16 = [v12 UTF8String];
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Invalid '%s' tag value: %s", &v13, 0x16u);
      }
    }
  }

  return a3;
}

id __65___NUFlexRangeProperties_flexRangePropertiesWithGainMapMetadata___block_invoke_380(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = (*(*(a1 + 32) + 16))();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_684);
    }

    v6 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      v8 = v3;
      v9 = v6;
      v10 = [v3 UTF8String];
      v11 = [v4 description];
      v12 = 136315394;
      v13 = v10;
      v14 = 2080;
      v15 = [v11 UTF8String];
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Invalid '%s' tag value: %s", &v12, 0x16u);
    }

    v5 = 0;
  }

  return v5;
}

float __65___NUFlexRangeProperties_flexRangePropertiesWithGainMapMetadata___block_invoke_383(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%lu].%@", @"ChannelMetadata", a3, a2];
  v5 = (*(*(a1 + 32) + 16))();

  return v5;
}

@end