@interface SIAnalytics
+ (void)setResourcesCallback:(id)a3;
- (BOOL)incrementPerIndexHeartbeatCount:(int64_t)a3 forKey:(id)a4 withError:(id *)a5;
- (BOOL)readFromHeartbeatFileWithError:(id *)a3;
- (BOOL)refreshPerIndexHeartbeatFieldsForIndex:(__SI *)a3 protectionClass:(id)a4 withError:(id *)a5;
- (BOOL)refreshSharedHeartbeatFieldsWithError:(id *)a3;
- (BOOL)setPerIndexHeartbeatTimestamp:(double)a3 forKey:(id)a4 withError:(id *)a5;
- (BOOL)setSharedHeartbeatTimestamp:(double)a3 forKey:(id)a4 withError:(id *)a5;
- (BOOL)writeToHeartbeatFileWithError:(id *)a3;
- (SIAnalytics)initWithParentDirectoryPath:(id)a3 corespotlight:(BOOL)a4 heartbeatIndex:(BOOL)a5;
@end

@implementation SIAnalytics

- (BOOL)incrementPerIndexHeartbeatCount:(int64_t)a3 forKey:(id)a4 withError:(id *)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = [a4 hasPrefix:@"count_"];
  if ((v7 & 1) == 0)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(21);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "[SIAnalytics incrementPerIndexHeartbeatCount:forKey:withError:]";
      v14 = 1024;
      v15 = 721;
      v16 = 2112;
      v17 = a4;
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a counter field", &v12, 0x1Cu);
    }

    *__error() = v8;
    if (a5)
    {
      *a5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SIAnalyticsError" code:16 userInfo:0];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)setPerIndexHeartbeatTimestamp:(double)a3 forKey:(id)a4 withError:(id *)a5
{
  v18 = *MEMORY[0x1E69E9840];
  if ([a4 hasPrefix:{@"age_", a3}] & 1) != 0 || (objc_msgSend(a4, "hasPrefix:", @"time_since_"))
  {
    result = 1;
  }

  else
  {
    v9 = *__error();
    v10 = _SILogForLogForCategory(21);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "[SIAnalytics setPerIndexHeartbeatTimestamp:forKey:withError:]";
      v14 = 1024;
      v15 = 708;
      v16 = 2112;
      v17 = a4;
      _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a timestamp field", &v12, 0x1Cu);
    }

    *__error() = v9;
    if (a5)
    {
      v11 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SIAnalyticsError" code:16 userInfo:0];
      result = 0;
      *a5 = v11;
    }

    else
    {
      result = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)refreshPerIndexHeartbeatFieldsForIndex:(__SI *)a3 protectionClass:(id)a4 withError:(id *)a5
{
  v29 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a4)
    {
      if (![&unk_1F428F468 objectForKeyedSubscript:{a4, a4, a5}])
      {
        v7 = *__error();
        v8 = _SILogForLogForCategory(21);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v23 = 136315650;
          v24 = "prefixForProtectionClass";
          v25 = 1024;
          v26 = 234;
          v27 = 2112;
          v28 = a4;
          _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: Invalid pc %@", &v23, 0x1Cu);
        }

        *__error() = v7;
      }
    }

    else
    {
      var6 = a3->var6;
      if ((var6 | 2) != 3)
      {
        v15 = var6 >> 1;
        if (var6)
        {
          v15 = 3;
        }

        v16 = v15 > 7;
        v17 = (1 << v15) & 0x8E;
        if (v16 || v17 == 0)
        {
          v21 = *__error();
          v22 = _SILogForLogForCategory(21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = 136315650;
            v24 = "prefixForPCPriority";
            v25 = 1024;
            v26 = 268;
            v27 = 1024;
            LODWORD(v28) = var6;
            _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: Invalid pc %u", &v23, 0x18u);
          }

          *__error() = v21;
        }
      }
    }
  }

  else
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(21);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315394;
      v24 = "[SIAnalytics refreshPerIndexHeartbeatFieldsForIndex:protectionClass:withError:]";
      v25 = 1024;
      v26 = 685;
      _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: No index", &v23, 0x12u);
    }

    *__error() = v11;
    v13 = self->_errorFlags | 8;
    self->_errorFlags = v13;
    if (a5)
    {
      *a5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SIAnalyticsError" code:v13 userInfo:0];
    }
  }

  result = a3 != 0;
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)setSharedHeartbeatTimestamp:(double)a3 forKey:(id)a4 withError:(id *)a5
{
  v18 = *MEMORY[0x1E69E9840];
  if ([a4 hasPrefix:{@"age_", a3}] & 1) != 0 || (objc_msgSend(a4, "hasPrefix:", @"time_since_"))
  {
    result = 1;
  }

  else
  {
    v9 = *__error();
    v10 = _SILogForLogForCategory(21);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "[SIAnalytics setSharedHeartbeatTimestamp:forKey:withError:]";
      v14 = 1024;
      v15 = 668;
      v16 = 2112;
      v17 = a4;
      _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a timestamp field", &v12, 0x1Cu);
    }

    *__error() = v9;
    if (a5)
    {
      v11 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SIAnalyticsError" code:16 userInfo:0];
      result = 0;
      *a5 = v11;
    }

    else
    {
      result = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)refreshSharedHeartbeatFieldsWithError:(id *)a3
{
  v75 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_heartbeatLock);
  if (!self->_heartbeatData)
  {
    isCoreSpotlight = self->_isCoreSpotlight;
    if (dword_1EBF46B20 >= 5)
    {
      v55 = *__error();
      v56 = _SILogForLogForCategory(21);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.f_bsize) = 0;
        _os_log_impl(&dword_1C278D000, v56, OS_LOG_TYPE_DEFAULT, "Initializing shared heartbeat fields", &buf, 2u);
      }

      *__error() = v55;
    }

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    -[NSMutableDictionary setObject:forKeyedSubscript:](v6, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithDouble:CFAbsoluteTimeGetCurrent()], @"age_heartbeat");
    if (isCoreSpotlight)
    {
      [(NSMutableDictionary *)v6 setObject:&unk_1F428F428 forKeyedSubscript:@"age_corespotlight_index"];
    }

    [(NSMutableDictionary *)v6 setObject:&stru_1F4284FD0 forKeyedSubscript:@"version_spotlight"];
    [(NSMutableDictionary *)v6 setObject:&stru_1F4284FD0 forKeyedSubscript:@"version_build"];
    [(NSMutableDictionary *)v6 setObject:&unk_1F428F428 forKeyedSubscript:@"time_since_software_update"];
    [(NSMutableDictionary *)v6 setObject:&stru_1F4284FD0 forKeyedSubscript:@"config_locale"];
    [(NSMutableDictionary *)v6 setObject:&unk_1F428F440 forKeyedSubscript:@"config_feature_flags"];
    [(NSMutableDictionary *)v6 setObject:&stru_1F4284FD0 forKeyedSubscript:@"system_fs_type"];
    [(NSMutableDictionary *)v6 setObject:&unk_1F428F440 forKeyedSubscript:@"system_fs_mount_flags"];
    [(NSMutableDictionary *)v6 setObject:&unk_1F428F440 forKeyedSubscript:@"system_volume_flags"];
    [(NSMutableDictionary *)v6 setObject:&unk_1F428F428 forKeyedSubscript:@"system_total_ram_gb"];
    [(NSMutableDictionary *)v6 setObject:&unk_1F428F428 forKeyedSubscript:@"system_fs_total_space_bytes"];
    [(NSMutableDictionary *)v6 setObject:&unk_1F428F428 forKeyedSubscript:@"system_fs_free_space_bytes"];
    self->_heartbeatData = v6;
  }

  memset(&v64, 0, sizeof(v64));
  v7 = stat([(NSString *)self->_parentDirectoryPath UTF8String], &v64);
  v8 = *__error();
  v9 = v7 == 0;
  if (v7)
  {
    v10 = *__error();
    v11 = _SILogForLogForCategory(21);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      buf.f_bsize = 136315650;
      *&buf.f_iosize = "[SIAnalytics refreshSharedHeartbeatFieldsWithError:]";
      WORD2(buf.f_blocks) = 1024;
      *(&buf.f_blocks + 6) = 523;
      WORD1(buf.f_bfree) = 1024;
      HIDWORD(buf.f_bfree) = v8;
      _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: stat on index directory failed with error: %d", &buf, 0x18u);
    }

    *__error() = v10;
    self->_errorFlags |= 0x40uLL;
  }

  else
  {
    if (self->_isCoreSpotlight)
    {
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_heartbeatData, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithLong:v64.st_birthtimespec.tv_sec], @"age_corespotlight_index");
    }

    if (dword_1EBF46B20 >= 5)
    {
      v57 = *__error();
      v58 = _SILogForLogForCategory(21);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        buf.f_bsize = 134217984;
        *&buf.f_iosize = v64.st_birthtimespec.tv_sec;
        _os_log_impl(&dword_1C278D000, v58, OS_LOG_TYPE_DEFAULT, "Got index directory birthtime %ld", &buf, 0xCu);
      }

      *__error() = v57;
    }
  }

  *__error() = v8;
  if (dword_1EBF46B20 >= 5)
  {
    v49 = *__error();
    v50 = _SILogForLogForCategory(21);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      buf.f_bsize = 136315138;
      *&buf.f_iosize = "2400.14.100";
      _os_log_impl(&dword_1C278D000, v50, OS_LOG_TYPE_DEFAULT, "Spotlight-%s", &buf, 0xCu);
    }

    *__error() = v49;
  }

  if ([@"2400.14.100" isEqualToString:@"9999.99.99"])
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(21);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.f_bsize) = 0;
      _os_log_impl(&dword_1C278D000, v13, OS_LOG_TYPE_DEFAULT, "Spotlight roots are installed!", &buf, 2u);
    }

    *__error() = v12;
  }

  v14 = [(NSMutableDictionary *)self->_heartbeatData objectForKeyedSubscript:@"version_spotlight"];
  if ([v14 length] && (objc_msgSend(@"2400.14.100", "isEqualToString:", v14) & 1) == 0)
  {
    [(NSMutableDictionary *)self->_heartbeatData setObject:@"2400.14.100" forKeyedSubscript:@"version_spotlight"];
    [(NSMutableDictionary *)self->_heartbeatData setObject:v14 forKeyedSubscript:@"version_spotlight_previous"];
    v15 = *__error();
    v16 = _SILogForLogForCategory(21);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      buf.f_bsize = 138412546;
      *&buf.f_iosize = v14;
      WORD2(buf.f_blocks) = 2080;
      *(&buf.f_blocks + 6) = "2400.14.100";
      _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "Spotlight version changed %@ -> %s", &buf, 0x16u);
    }

    *__error() = v15;
  }

  v17 = _CFCopySystemVersionDictionary();
  if (!v17)
  {
    v28 = *__error();
    v29 = _SILogForLogForCategory(21);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
LABEL_40:
      v9 = 0;
      *__error() = v28;
      v27 = self->_errorFlags | 0x200;
      goto LABEL_41;
    }

    buf.f_bsize = 136315394;
    *&buf.f_iosize = "[SIAnalytics refreshSharedHeartbeatFieldsWithError:]";
    WORD2(buf.f_blocks) = 1024;
    *(&buf.f_blocks + 6) = 558;
    v30 = "%s:%d: Failed to get system version dictionary";
LABEL_69:
    _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, v30, &buf, 0x12u);
    goto LABEL_40;
  }

  v18 = v17;
  Value = CFDictionaryGetValue(v17, @"ProductBuildVersion");
  CFRelease(v18);
  if (!Value)
  {
    v28 = *__error();
    v29 = _SILogForLogForCategory(21);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    buf.f_bsize = 136315394;
    *&buf.f_iosize = "[SIAnalytics refreshSharedHeartbeatFieldsWithError:]";
    WORD2(buf.f_blocks) = 1024;
    *(&buf.f_blocks + 6) = 565;
    v30 = "%s:%d: Build is null";
    goto LABEL_69;
  }

  if (dword_1EBF46B20 >= 5)
  {
    v53 = *__error();
    v54 = _SILogForLogForCategory(21);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      buf.f_bsize = 138412290;
      *&buf.f_iosize = Value;
      _os_log_impl(&dword_1C278D000, v54, OS_LOG_TYPE_DEFAULT, "Build: %@", &buf, 0xCu);
    }

    *__error() = v53;
  }

  v20 = [(NSMutableDictionary *)self->_heartbeatData objectForKeyedSubscript:@"version_build"];
  if ([v20 length] && (objc_msgSend(v20, "isEqualToString:", Value) & 1) == 0)
  {
    [(NSMutableDictionary *)self->_heartbeatData setObject:Value forKeyedSubscript:@"version_build"];
    [(NSMutableDictionary *)self->_heartbeatData setObject:v20 forKeyedSubscript:@"version_build_previous"];
    v21 = *__error();
    v22 = _SILogForLogForCategory(21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      buf.f_bsize = 138412546;
      *&buf.f_iosize = v20;
      WORD2(buf.f_blocks) = 2112;
      *(&buf.f_blocks + 6) = Value;
      _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "Build changed: %@ -> %@", &buf, 0x16u);
    }

    *__error() = v21;
    v23 = [Value substringToIndex:3];
    v24 = [v14 substringToIndex:3];
    if ([v23 length] && objc_msgSend(v24, "length") && (objc_msgSend(v24, "isEqualToString:", v23) & 1) == 0)
    {
      [(NSMutableDictionary *)self->_heartbeatData setObject:v20 forKeyedSubscript:@"version_train_previous"];
      v25 = *__error();
      v26 = _SILogForLogForCategory(21);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        buf.f_bsize = 138412546;
        *&buf.f_iosize = v24;
        WORD2(buf.f_blocks) = 2112;
        *(&buf.f_blocks + 6) = v23;
        _os_log_impl(&dword_1C278D000, v26, OS_LOG_TYPE_DEFAULT, "Train changed: %@ -> %@", &buf, 0x16u);
      }

      *__error() = v25;
    }
  }

  v27 = self->_errorFlags & 0xFFFFFFFFFFFFFDFFLL;
LABEL_41:
  self->_errorFlags = v27;
  v31 = [objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
  if ([v31 length])
  {
    [(NSMutableDictionary *)self->_heartbeatData setObject:v31 forKeyedSubscript:@"config_locale"];
  }

  if (sResourcesCallback)
  {
    *v65 = 0;
    (*(sResourcesCallback + 16))();
    [(NSMutableDictionary *)self->_heartbeatData setObject:*v65 forKeyedSubscript:@"config_ota_version"];
    [(NSMutableDictionary *)self->_heartbeatData setObject:0 forKeyedSubscript:@"config_trial_treatment_id"];
    [(NSMutableDictionary *)self->_heartbeatData setObject:0 forKeyedSubscript:@"config_trial_rollout_id"];
    if (dword_1EBF46B20 >= 5)
    {
      v51 = *__error();
      v52 = _SILogForLogForCategory(21);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        buf.f_bsize = 138412802;
        *&buf.f_iosize = *v65;
        WORD2(buf.f_blocks) = 2112;
        *(&buf.f_blocks + 6) = 0;
        HIWORD(buf.f_bfree) = 2112;
        buf.f_bavail = 0;
        _os_log_impl(&dword_1C278D000, v52, OS_LOG_TYPE_DEFAULT, "SpotlightResources config: (%@, %@, %@)", &buf, 0x20u);
      }

      *__error() = v51;
    }

    v32 = self->_errorFlags & 0xFFFFFFFFFFFFFFDFLL;
  }

  else
  {
    v33 = *__error();
    v34 = _SILogForLogForCategory(21);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      buf.f_bsize = 136315394;
      *&buf.f_iosize = "[SIAnalytics refreshSharedHeartbeatFieldsWithError:]";
      WORD2(buf.f_blocks) = 1024;
      *(&buf.f_blocks + 6) = 599;
      _os_log_error_impl(&dword_1C278D000, v34, OS_LOG_TYPE_ERROR, "%s:%d: Skipping updating resources fields since callback has not been set", &buf, 0x12u);
    }

    v9 = 0;
    *__error() = v33;
    v32 = self->_errorFlags | 0x20;
  }

  self->_errorFlags = v32;
  bzero(&buf, 0x878uLL);
  v35 = statfs([(NSString *)self->_parentDirectoryPath UTF8String], &buf);
  v36 = *__error();
  if (v35)
  {
    v37 = *__error();
    v38 = _SILogForLogForCategory(21);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *v65 = 136315650;
      *&v65[4] = "[SIAnalytics refreshSharedHeartbeatFieldsWithError:]";
      v66 = 1024;
      f_flags = 620;
      v68 = 1024;
      LODWORD(v69) = v36;
      _os_log_error_impl(&dword_1C278D000, v38, OS_LOG_TYPE_ERROR, "%s:%d: statfs on index directory failed with error: %d", v65, 0x18u);
    }

    v9 = 0;
    *__error() = v37;
    v39 = self->_errorFlags | 0x80;
  }

  else
  {
    v63 = a3;
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_heartbeatData, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AEC0] stringWithUTF8String:buf.f_fstypename], @"system_fs_type");
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_heartbeatData, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:buf.f_flags], @"system_fs_mount_flags");
    f_bsize = buf.f_bsize;
    f_blocks = buf.f_blocks;
    f_bfree = buf.f_bfree;
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_heartbeatData, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:buf.f_blocks * buf.f_bsize], @"system_fs_total_space_bytes");
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_heartbeatData, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:f_bfree * f_bsize], @"system_fs_free_space_bytes");
    if (dword_1EBF46B20 >= 5)
    {
      v59 = *__error();
      log = _SILogForLogForCategory(21);
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *v65 = 136316162;
        *&v65[4] = buf.f_fstypename;
        v66 = 1024;
        f_flags = buf.f_flags;
        v68 = 2048;
        v69 = f_bsize;
        v70 = 2048;
        v71 = f_blocks;
        v72 = 2048;
        v73 = f_bfree;
        _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "statfs: (%s, flags:0x%x, blockSize:0x%llx, blocks:0x%llx, free:0x%llx)", v65, 0x30u);
      }

      *__error() = v59;
    }

    v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{buf.f_mntonname, log}];
    a3 = v63;
    if (v43 && [MEMORY[0x1E695DFF8] fileURLWithPath:v43])
    {
      if (_CFURLGetVolumePropertyFlags())
      {
        -[NSMutableDictionary setObject:forKeyedSubscript:](self->_heartbeatData, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0], @"system_volume_flags");
        if (dword_1EBF46B20 >= 5)
        {
          v60 = *__error();
          v61 = _SILogForLogForCategory(21);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            *v65 = 134217984;
            *&v65[4] = 0;
            _os_log_impl(&dword_1C278D000, v61, OS_LOG_TYPE_DEFAULT, "Volume property flags: 0x%llx", v65, 0xCu);
          }

          *__error() = v60;
          a3 = v63;
        }

        v44 = self->_errorFlags & 0xFFFFFFFFFFFFFEFFLL;
      }

      else
      {
        v45 = *__error();
        v46 = _SILogForLogForCategory(21);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *v65 = 136315650;
          *&v65[4] = "[SIAnalytics refreshSharedHeartbeatFieldsWithError:]";
          v66 = 1024;
          f_flags = 642;
          v68 = 2112;
          v69 = 0;
          _os_log_error_impl(&dword_1C278D000, v46, OS_LOG_TYPE_ERROR, "%s:%d: Failed to get volume property flags with error: %@", v65, 0x1Cu);
        }

        v9 = 0;
        *__error() = v45;
        v44 = self->_errorFlags | 0x100;
      }

      self->_errorFlags = v44;
    }

    v39 = self->_errorFlags & 0xFFFFFFFFFFFFFF7FLL;
  }

  self->_errorFlags = v39;
  *__error() = v36;
  os_unfair_lock_unlock(&self->_heartbeatLock);
  if (a3 && !v9)
  {
    *a3 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SIAnalyticsError" code:self->_errorFlags userInfo:0];
  }

  v47 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)writeToHeartbeatFileWithError:(id *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  os_unfair_lock_lock(&self->_heartbeatLock);
  [v5 setObject:-[NSMutableDictionary copy](self->_heartbeatData forKeyedSubscript:{"copy"), @"shared"}];
  os_unfair_lock_unlock(&self->_heartbeatLock);
  os_unfair_lock_lock(&self->_indexesLock);
  indexesData = self->_indexesData;
  os_unfair_lock_unlock(&self->_indexesLock);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__SIAnalytics_writeToHeartbeatFileWithError___block_invoke;
  v15[3] = &unk_1E8193250;
  v15[4] = v5;
  [(NSMutableDictionary *)indexesData enumerateKeysAndObjectsUsingBlock:v15];
  v7 = [v5 writeToURL:objc_msgSend(MEMORY[0x1E695DFF8] error:{"fileURLWithPath:", self->_heartbeatPath), &v16}];
  if (v7)
  {
    if (dword_1EBF46B20 >= 5)
    {
      v13 = *__error();
      v14 = _SILogForLogForCategory(21);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v14, OS_LOG_TYPE_DEFAULT, "Wrote to heartbeat file", buf, 2u);
      }

      *__error() = v13;
    }

    v8 = self->_errorFlags & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    if (a3)
    {
      *a3 = v16;
    }

    v9 = *__error();
    v10 = _SILogForLogForCategory(21);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v18 = "[SIAnalytics writeToHeartbeatFileWithError:]";
      v19 = 1024;
      v20 = 501;
      v21 = 2112;
      v22 = v16;
      _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: Write heartbeat file error: %@", buf, 0x1Cu);
    }

    *__error() = v9;
    v8 = self->_errorFlags | 4;
  }

  self->_errorFlags = v8;
  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __45__SIAnalytics_writeToHeartbeatFileWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 heartbeatData];
  v6 = *(a1 + 32);

  return [v6 setObject:v5 forKeyedSubscript:a2];
}

- (BOOL)readFromHeartbeatFileWithError:(id *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (![objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
  {
    v10 = *__error();
    v11 = _SILogForLogForCategory(21);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "Read heartbeat file failed: no file", buf, 2u);
    }

    v6 = 0;
    *__error() = v10;
    goto LABEL_12;
  }

  v17 = 0;
  v5 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:objc_msgSend(MEMORY[0x1E695DFF8] error:{"fileURLWithPath:", self->_heartbeatPath), &v17), "mutableCopy"}];
  v6 = v17 == 0;
  if (!v17)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __46__SIAnalytics_readFromHeartbeatFileWithError___block_invoke;
    v16[3] = &unk_1E8193228;
    v16[4] = self;
    [v5 enumerateKeysAndObjectsUsingBlock:v16];
    if (dword_1EBF46B20 >= 5)
    {
      v14 = *__error();
      v15 = _SILogForLogForCategory(21);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "Read from heartbeat file", buf, 2u);
      }

      *__error() = v14;
    }

LABEL_12:
    v9 = self->_errorFlags & 0xFFFFFFFFFFFFFFFDLL;
    goto LABEL_13;
  }

  if (a3)
  {
    *a3 = v17;
  }

  v7 = *__error();
  v8 = _SILogForLogForCategory(21);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v19 = "[SIAnalytics readFromHeartbeatFileWithError:]";
    v20 = 1024;
    v21 = 470;
    v22 = 2112;
    v23 = v17;
    _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: Read heartbeat file error: %@", buf, 0x1Cu);
  }

  *__error() = v7;
  v9 = self->_errorFlags | 2;
LABEL_13:
  self->_errorFlags = v9;
  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

void __46__SIAnalytics_readFromHeartbeatFileWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = [a2 isEqualToString:@"shared"];
  v7 = *(a1 + 32);
  if (v6)
  {
    os_unfair_lock_lock(v7 + 8);
    *(*(a1 + 32) + 16) = [a3 mutableCopy];
    v8 = 32;
  }

  else
  {
    os_unfair_lock_lock(v7 + 12);
    [*(*(a1 + 32) + 40) setObject:-[SIAnalyticsIndexData initWithPrefix:data:]([SIAnalyticsIndexData alloc] forKeyedSubscript:{"initWithPrefix:data:", a2, a3), a2}];
    v8 = 48;
  }

  v9 = (*(a1 + 32) + v8);

  os_unfair_lock_unlock(v9);
}

- (SIAnalytics)initWithParentDirectoryPath:(id)a3 corespotlight:(BOOL)a4 heartbeatIndex:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v26 = *MEMORY[0x1E69E9840];
  v9 = *__error();
  v10 = _SILogForLogForCategory(21);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v21 = "[SIAnalytics initWithParentDirectoryPath:corespotlight:heartbeatIndex:]";
    v22 = 1024;
    v23 = 426;
    _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: ARC disabled in SIAnalytics", buf, 0x12u);
  }

  *__error() = v9;
  v19.receiver = self;
  v19.super_class = SIAnalytics;
  v11 = [(SIAnalytics *)&v19 init];
  v12 = v11;
  if (v11)
  {
    v11->_parentDirectoryPath = a3;
    v11->_isCoreSpotlight = v6;
    v11->_isHeartbeatIndex = v5;
    v13 = [a3 stringByAppendingPathComponent:@"heartbeat.plist"];
    v12->_heartbeatData = 0;
    v12->_errorFlags = 0;
    v12->_heartbeatPath = v13;
    v12->_heartbeatLock._os_unfair_lock_opaque = 0;
    if (dword_1EBF46B20 >= 5)
    {
      v16 = *__error();
      v17 = _SILogForLogForCategory(21);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        parentDirectoryPath = v12->_parentDirectoryPath;
        *buf = 138412802;
        v21 = parentDirectoryPath;
        v22 = 1024;
        v23 = v6;
        v24 = 1024;
        v25 = v5;
        _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "init:%@, cs:%d, hb:%d", buf, 0x18u);
      }

      *__error() = v16;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (void)setResourcesCallback:(id)a3
{
  sResourcesCallback = [a3 copy];
  if (dword_1EBF46B20 >= 5)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(21);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1C278D000, v4, OS_LOG_TYPE_DEFAULT, "Set SpotlightResources callback", v5, 2u);
    }

    *__error() = v3;
  }
}

@end