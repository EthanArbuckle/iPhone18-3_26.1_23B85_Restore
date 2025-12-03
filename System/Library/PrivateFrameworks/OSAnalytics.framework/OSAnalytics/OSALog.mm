@interface OSALog
+ (BOOL)isDataVaultEnabled;
+ (BOOL)randomlySelectForRetention:(id)retention;
+ (id)additionalRootsInstalled;
+ (id)commonFieldsForBody:(id)body;
+ (id)createForSubmission:(id)submission metadata:(id)metadata options:(id)options error:(id *)error writing:(id)writing;
+ (id)locallyCreateForSubmission:(id)submission metadata:(id)metadata options:(id)options error:(id *)error writing:(id)writing;
+ (id)logObjForBugType:(id)type;
+ (id)scanProxies:(id)proxies;
+ (unsigned)scanLogs:(id)logs from:(id)from options:(id)options;
+ (void)cleanupForUser:(id)user;
+ (void)cleanupLogs:(id)logs withFilters:(id)filters error:(id *)error;
+ (void)cleanupRetired:(id)retired;
+ (void)createRetiredDirectoriesForUser:(id)user;
+ (void)createRetiredDirectory:(id)directory;
+ (void)iterateLogsWithOptions:(id)options usingBlock:(id)block;
+ (void)markDescriptor:(int)descriptor forKey:(id)key withObj:(id)obj;
+ (void)markDescriptor:(int)descriptor withPairs:(id)pairs andOptions:(id)options;
+ (void)markFile:(id)file withKey:(const char *)key value:(const char *)value;
+ (void)markPurgeableLevel:(unint64_t)level path:(id)path;
+ (void)purgeLogs:(id)logs withReason:(const char *)reason includeRetired:(BOOL)retired deleteOnRetire:(BOOL)retire usingPredicate:(id)predicate;
- (BOOL)isReasonableSize:(int64_t)size forRouting:(id)routing;
- (BOOL)retire:(const char *)retire;
- (OSALog)initWithFilepath:(id)filepath type:(id)type;
- (OSALog)initWithPath:(id)path forRouting:(id)routing options:(id)options;
- (OSALog)initWithPath:(id)path forRouting:(id)routing options:(id)options error:(id *)error;
- (OSALog)initWithPath:(id)path forRouting:(id)routing usingConfig:(id)config options:(id)options error:(id *)error;
- (OSALog)initWithPath:(id)path options:(id)options error:(id *)error;
- (OSALog)initWithType:(id)type filepath:(id)filepath metadata:(id)metadata options:(id)options at:(double)at error:(id *)error;
- (void)closeFileStream;
- (void)dealloc;
- (void)markWithKey:(const char *)key value:(const char *)value;
- (void)rename:(id)rename;
@end

@implementation OSALog

+ (BOOL)isDataVaultEnabled
{
  v2 = +[OSAReport bootArgs];
  if ([v2 containsString:@"-restore"] & 1) != 0 || (objc_msgSend(v2, "containsString:", @"-upgrade"))
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = os_variant_is_darwinos() ^ 1;
  }

  return v3;
}

+ (id)additionalRootsInstalled
{
  v9[1] = *MEMORY[0x1E69E9840];
  v6 = 8;
  v7 = 0;
  v2 = 0;
  if (!sysctlbyname("kern.roots_installed", &v7, &v6, 0, 0))
  {
    v8 = @"roots_installed";
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v7];
    v9[0] = v3;
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)closeFileStream
{
  v15 = *MEMORY[0x1E69E9840];
  stream = self->_stream;
  if (stream)
  {
    if (fclose(stream) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      lastPathComponent = [(NSString *)self->_filepath lastPathComponent];
      v5 = *__error();
      v6 = __error();
      v7 = strerror(*v6);
      v9 = 138412802;
      v10 = lastPathComponent;
      v11 = 1024;
      v12 = v5;
      v13 = 2080;
      v14 = v7;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "WARNING: Failed to close %@. Please do NOT call [NSFileHandle closeFile] errno=%d: %s", &v9, 0x1Cu);
    }

    self->_stream = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(OSALog *)self closeFileStream];
  v3.receiver = self;
  v3.super_class = OSALog;
  [(OSALog *)&v3 dealloc];
}

- (OSALog)initWithPath:(id)path forRouting:(id)routing usingConfig:(id)config options:(id)options error:(id *)error
{
  v116 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  routingCopy = routing;
  configCopy = config;
  optionsCopy = options;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [OSALog initWithPath:forRouting:usingConfig:options:error:];
  }

  v106.receiver = self;
  v106.super_class = OSALog;
  v17 = [(OSALog *)&v106 init];
  if (!v17)
  {
    goto LABEL_87;
  }

  v105 = "rejected";
  v18 = [optionsCopy objectForKeyedSubscript:@"<cleanup>"];
  v17->_deleteOnRetire = [v18 BOOLValue];

  v19 = [optionsCopy objectForKeyedSubscript:@"<preserve>"];
  v17->_preserveFiles = [v19 BOOLValue];

  v20 = [optionsCopy objectForKeyedSubscript:@"<exempt>"];
  bOOLValue = [v20 BOOLValue];

  objc_storeStrong(&v17->_filepath, path);
  v17->_stream = fopen([(NSString *)v17->_filepath fileSystemRepresentation], "r");
  v22 = __error();
  if (v17->_stream)
  {
    memset(&v104, 0, sizeof(v104));
    v23 = fileno(v17->_stream);
    errorCopy = error;
    if (fstat(v23, &v104))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        filepath = v17->_filepath;
        v25 = *__error();
        *buf = 138412546;
        v113 = filepath;
        v114 = 1024;
        LODWORD(st_size) = v25;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Logfile '%@' fstat errno %d", buf, 0x12u);
      }

      v105 = "rejected-fstat";
      fclose(v17->_stream);
      v17->_stream = 0;
      goto LABEL_73;
    }

    pathExtension = [(NSString *)v17->_filepath pathExtension];
    v34 = [pathExtension isEqualToString:@"synced"];
    v35 = v17->_filepath;
    if (v34)
    {
      stringByDeletingPathExtension = [(NSString *)v35 stringByDeletingPathExtension];
    }

    else
    {
      stringByDeletingPathExtension = v35;
    }

    v37 = stringByDeletingPathExtension;

    pathExtension2 = [(NSString *)v37 pathExtension];
    bugType = v17->_bugType;
    v17->_bugType = pathExtension2;

    v103.tv_sec = 0;
    *&v103.tv_usec = 0;
    gettimeofday(&v103, 0);
    if ((bOOLValue & 1) == 0 && v103.tv_sec - v104.st_mtimespec.tv_sec > 2591999)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v60 = v17->_filepath;
        *buf = 138412290;
        v113 = v60;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Logfile '%@' is too old for submission", buf, 0xCu);
      }

      fclose(v17->_stream);
      v17->_stream = 0;
      v105 = "rejected-age";
      goto LABEL_72;
    }

    v40 = [optionsCopy objectForKeyedSubscript:@"<metadata>"];
    v41 = v40;
    if (v40 && ![v40 BOOLValue])
    {
      if ((bOOLValue & 1) != 0 || [(OSALog *)v17 isReasonableSize:v104.st_size forRouting:routingCopy])
      {
        if (([routingCopy isEqualToString:@"anon"] & 1) != 0 || (objc_msgSend(v41, "BOOLValue") & 1) == 0)
        {
          v97 = objc_opt_new();
          if ([routingCopy isEqualToString:@"anon"])
          {
            [(NSString *)v37 stringByDeletingPathExtension];
            v65 = v64 = v41;
            [v65 pathExtension];
            v67 = v66 = v37;

            v41 = v64;
            [(NSDictionary *)v97 setObject:v67 forKeyedSubscript:@"subrouting"];
            v68 = [v67 stringByAppendingPathExtension:v17->_bugType];
            v69 = v17->_bugType;
            v17->_bugType = v68;

            v37 = v66;
          }

          v99 = pathCopy;
          v94 = v41;
          v95 = v37;
          if (initWithPath_forRouting_usingConfig_options_error__onceToken != -1)
          {
            [OSALog initWithPath:forRouting:usingConfig:options:error:];
          }

          v70 = fileno(v17->_stream);
          v71 = flistxattr(v70, buf, 0x1FFuLL, 0);
          if (v71 >= 1)
          {
            v72 = v71;
            buf[v71] = 0;
            v73 = buf;
            do
            {
              v74 = fgetxattr(v70, v73, __ptr, 0x20uLL, 0, 0);
              if (v74 >= 1)
              {
                __ptr[v74] = 0;
                v75 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v73];
                if (([initWithPath_forRouting_usingConfig_options_error__option_xattr_whitelist containsObject:v75] & 1) == 0)
                {
                  v76 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__ptr];
                  [(NSDictionary *)v97 setObject:v76 forKeyedSubscript:v75];
                }
              }

              v73 += strlen(v73) + 1;
            }

            while (v73 - buf < v72);
          }

          metaData = v17->_metaData;
          v17->_metaData = v97;

          pathCopy = v99;
          v41 = v94;
          v37 = v95;
        }

        else
        {
          v61 = v17->_metaData;
          v17->_metaData = MEMORY[0x1E695E0F8];
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v92 = v17->_filepath;
          *buf = 138412546;
          v113 = v92;
          v114 = 2048;
          st_size = v104.st_size;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Logfile '%@' is too large (%lld) for submission", buf, 0x16u);
        }

        v105 = "rejected-rawsize";
        fclose(v17->_stream);
        v17->_stream = 0;
      }

      goto LABEL_71;
    }

    v98 = pathCopy;
    v100 = configCopy;
    v42 = [MEMORY[0x1E695DF88] dataWithCapacity:1024];
    __ptr[0] = 0;
    if (fread(__ptr, 1uLL, 1uLL, v17->_stream) && __ptr[0] != 10)
    {
      v43 = 0;
      do
      {
        [v42 appendBytes:__ptr length:1];
        if (fread(__ptr, 1uLL, 1uLL, v17->_stream))
        {
          v44 = __ptr[0] == 10;
        }

        else
        {
          v44 = 1;
        }

        if (v44)
        {
          break;
        }
      }

      while (v43++ < 0x3FF);
    }

    if (![v42 length])
    {
      if (bOOLValue)
      {
LABEL_70:

        pathCopy = v98;
        configCopy = v100;
LABEL_71:

LABEL_72:
LABEL_73:
        if (v17->_stream)
        {
          goto LABEL_74;
        }

        v58 = v105;
        v59 = errorCopy;
        goto LABEL_80;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v62 = v17->_filepath;
        v63 = *__error();
        *buf = 138412546;
        v113 = v62;
        v114 = 1024;
        LODWORD(st_size) = v63;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Logfile '%@' rejected for submission: missing metadata (or fread errno %d)", buf, 0x12u);
      }

      v105 = "rejected-header";
LABEL_68:
      if (!((v17->_metaData != 0) | bOOLValue & 1))
      {
        fclose(v17->_stream);
        v17->_stream = 0;
      }

      goto LABEL_70;
    }

    v46 = v41;
    v102 = 0;
    v47 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v42 options:0 error:&v102];
    v96 = v102;
    v48 = v17->_metaData;
    v17->_metaData = v47;

    if (v17->_metaData)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v50 = v17->_metaData;
      v51 = v37;
      if (isKindOfClass)
      {
        v52 = [(NSDictionary *)v50 objectForKey:@"bug_type"];
        v53 = v17->_bugType;
        v17->_bugType = v52;

        v41 = v46;
        if ((bOOLValue & 1) == 0)
        {
          v54 = v17->_filepath;
          v55 = v17->_bugType;
          v93 = v104.st_size;
          v56 = [optionsCopy objectForKeyedSubscript:@"<whitelist>"];
          LOBYTE(v55) = [v100 isFile:v54 validForSubmission:v55 reasonableSize:v93 to:routingCopy internalTypes:v56 result:&v105];

          v41 = v46;
          if ((v55 & 1) == 0)
          {
            v57 = v17->_metaData;
            v17->_metaData = 0;
          }
        }

LABEL_67:

        v37 = v51;
        goto LABEL_68;
      }
    }

    else
    {
      v51 = v37;
      v50 = 0;
    }

    v41 = v46;
    v17->_metaData = 0;

    if ((bOOLValue & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v78 = v17->_filepath;
        *buf = 138412546;
        v113 = v78;
        v114 = 2112;
        st_size = v96;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Logfile '%@' rejected for submission: bad metadata (or json error %@)", buf, 0x16u);
      }

      v105 = "rejected-metadata";
    }

    goto LABEL_67;
  }

  errorCopy2 = error;
  v27 = *v22;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v28 = configCopy;
    v29 = v17->_filepath;
    v30 = *__error();
    *buf = 138412546;
    v113 = v29;
    configCopy = v28;
    v114 = 1024;
    LODWORD(st_size) = v30;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Logfile '%@' failed to open (errno %d)", buf, 0x12u);
  }

  v105 = "rejected-fopen";
  if (!v17->_stream)
  {
    if (v27 == 2)
    {
      if (errorCopy2)
      {
        v31 = MEMORY[0x1E696ABC0];
        v107 = *MEMORY[0x1E696A578];
        v108 = @"File doesn't exist";
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
        *errorCopy2 = [v31 errorWithDomain:@"OSALog" code:1 userInfo:v32];
      }

      goto LABEL_85;
    }

    v58 = "rejected-fopen";
    v59 = errorCopy2;
LABEL_80:
    if (v59)
    {
      v86 = MEMORY[0x1E696ABC0];
      v109[0] = *MEMORY[0x1E696A578];
      v87 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v58];
      v109[1] = @"bug_type";
      v110[0] = v87;
      v88 = v17->_bugType;
      if (!v88)
      {
        v88 = @"<unknown>";
      }

      v110[1] = v88;
      v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:2];
      *v59 = [v86 errorWithDomain:@"OSALog" code:2 userInfo:v89];

      v58 = v105;
    }

    [(OSALog *)v17 retire:v58];
LABEL_85:
    v85 = v17;
    v17 = 0;
LABEL_86:

    goto LABEL_87;
  }

LABEL_74:
  v79 = v17->_metaData;
  if (v79)
  {
    v80 = [(NSDictionary *)v79 objectForKeyedSubscript:@"incident_id"];

    if (!v80)
    {
      v81 = [(NSDictionary *)v17->_metaData mutableCopy];
      v82 = [(NSDictionary *)v17->_metaData objectForKeyedSubscript:@"incident_id"];

      if (!v82)
      {
        uUID = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [uUID UUIDString];
        [(NSDictionary *)v81 setObject:uUIDString forKeyedSubscript:@"incident_id"];
      }

      v85 = v17->_metaData;
      v17->_metaData = v81;
      goto LABEL_86;
    }
  }

LABEL_87:

  v90 = *MEMORY[0x1E69E9840];
  return v17;
}

void __60__OSALog_initWithPath_forRouting_usingConfig_options_error___block_invoke()
{
  v3[9] = *MEMORY[0x1E69E9840];
  v3[0] = @"SubmissionPolicy";
  v3[1] = @"routing";
  v3[2] = @"urgent";
  v3[3] = @"Signature";
  v3[4] = @"LogType";
  v3[5] = @"dialog_displayed";
  v3[6] = @"ReopenPath";
  v3[7] = @"displayName";
  v3[8] = @"priority";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:9];
  v1 = initWithPath_forRouting_usingConfig_options_error__option_xattr_whitelist;
  initWithPath_forRouting_usingConfig_options_error__option_xattr_whitelist = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (OSALog)initWithPath:(id)path forRouting:(id)routing options:(id)options error:(id *)error
{
  optionsCopy = options;
  routingCopy = routing;
  pathCopy = path;
  v13 = +[OSASystemConfiguration sharedInstance];
  v14 = [(OSALog *)self initWithPath:pathCopy forRouting:routingCopy usingConfig:v13 options:optionsCopy error:error];

  return v14;
}

- (OSALog)initWithPath:(id)path forRouting:(id)routing options:(id)options
{
  optionsCopy = options;
  routingCopy = routing;
  pathCopy = path;
  v11 = +[OSASystemConfiguration sharedInstance];
  v12 = [(OSALog *)self initWithPath:pathCopy forRouting:routingCopy usingConfig:v11 options:optionsCopy error:0];

  return v12;
}

- (OSALog)initWithPath:(id)path options:(id)options error:(id *)error
{
  if (options)
  {
    pathCopy = path;
    v10 = [options mutableCopy];
  }

  else
  {
    pathCopy2 = path;
    v10 = objc_opt_new();
  }

  v12 = v10;
  [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"<exempt>"];
  v13 = [(OSALog *)self initWithPath:path forRouting:&stru_1F2411100 options:v12 error:error];

  return v13;
}

- (void)rename:(id)rename
{
  renameCopy = rename;
  if (renameCopy)
  {
    objc_storeStrong(&self->_filepath, rename);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [OSALog rename:?];
  }
}

+ (id)logObjForBugType:(id)type
{
  typeCopy = type;
  if (typeCopy && ([&unk_1F241F200 containsObject:typeCopy] & 1) != 0)
  {
    v4 = +[OSASystemConfiguration sharedInstance];
    logDomain = [v4 logDomain];
  }

  else
  {
    logDomain = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  return logDomain;
}

- (OSALog)initWithType:(id)type filepath:(id)filepath metadata:(id)metadata options:(id)options at:(double)at error:(id *)error
{
  v58 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  filepathCopy = filepath;
  metadataCopy = metadata;
  optionsCopy = options;
  v50.receiver = self;
  v50.super_class = OSALog;
  v17 = [(OSALog *)&v50 init];
  if (!v17)
  {
    goto LABEL_22;
  }

  v47 = umask(0);
  objc_storeStrong(&v17->_filepath, filepath);
  v18 = [OSALog logObjForBugType:typeCopy];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v55 = typeCopy;
    v56 = 2114;
    v57 = filepathCopy;
    _os_log_impl(&dword_1AE4F7000, v18, OS_LOG_TYPE_DEFAULT, "creating type %{public}@ as %{public}@", buf, 0x16u);
  }

  v19 = filepathCopy;
  v20 = open_dprotected_np([filepathCopy UTF8String], 536873473, 4, 0, 432);
  if ((v20 & 0x80000000) == 0)
  {
    [OSASystemConfiguration ensureConformanceOfFile:v20 options:optionsCopy];
    v21 = +[OSASystemConfiguration sharedInstance];
    v22 = [v21 createReportMetadata:typeCopy with:metadataCopy at:optionsCopy usingOptions:at];
    metaData = v17->_metaData;
    v17->_metaData = v22;

    v24 = v17->_metaData;
    v53 = @"bug_type";
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
    v26 = [(NSDictionary *)v24 dictionaryWithValuesForKeys:v25];

    v27 = v17->_metaData;
    v49 = 0;
    v28 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v27 options:0 error:&v49];
    v29 = v49;
    v30 = v29;
    if (v28)
    {
      v46 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v20 closeOnDealloc:0];
      v31 = [optionsCopy objectForKeyedSubscript:@"alt-metadata"];
      v32 = v31 == 0;

      if (v32)
      {
        [v46 writeData:v28];
        v33 = [MEMORY[0x1E695DEF0] dataWithBytes:"\n" length:1];
        [v46 writeData:v33];
      }

      if ((v20 & 0x80000000) == 0)
      {
        [OSALog markDescriptor:v20 withPairs:v26 andOptions:optionsCopy];
        v17->_stream = fdopen(v20, "w");
        goto LABEL_20;
      }
    }

    else
    {
      if (error)
      {
        v40 = v29;
        *error = v30;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v55 = 0;
        v56 = 2114;
        v57 = v30;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Error while serializing ips metadata %{public}@. Error: %{public}@", buf, 0x16u);
      }

      close(v20);
    }

    v41 = filepathCopy;
    unlink([filepathCopy UTF8String]);
    goto LABEL_20;
  }

  v34 = *__error();
  v35 = __error();
  v36 = strerror(*v35);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v55 = filepathCopy;
    v56 = 2082;
    v57 = v36;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Error creating file %{public}@, %{public}s", buf, 0x16u);
  }

  if (!error)
  {
    goto LABEL_21;
  }

  v37 = objc_alloc(MEMORY[0x1E696ABC0]);
  v51[0] = *MEMORY[0x1E696A578];
  v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v36];
  v51[1] = @"errno";
  v52[0] = v26;
  v38 = [MEMORY[0x1E696AD98] numberWithInt:v34];
  v52[1] = v38;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:2];
  *error = [v37 initWithDomain:@"OSALog" code:13 userInfo:v39];

LABEL_20:
LABEL_21:
  umask(v47);
LABEL_22:
  if (v17->_stream)
  {
    v42 = v17;
  }

  else
  {
    v42 = 0;
  }

  v43 = v42;

  v44 = *MEMORY[0x1E69E9840];
  return v43;
}

- (OSALog)initWithFilepath:(id)filepath type:(id)type
{
  filepathCopy = filepath;
  typeCopy = type;
  v12.receiver = self;
  v12.super_class = OSALog;
  v9 = [(OSALog *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bugType, type);
    objc_storeStrong(&v10->_filepath, filepath);
  }

  return v10;
}

+ (void)markPurgeableLevel:(unint64_t)level path:(id)path
{
  levelCopy = level;
  pathCopy = path;
  if (fsctl([pathCopy fileSystemRepresentation], 0xC0084A44uLL, &levelCopy, 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [OSALog markPurgeableLevel:pathCopy path:&levelCopy];
  }
}

+ (BOOL)randomlySelectForRetention:(id)retention
{
  retentionCopy = retention;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (randomlySelectForRetention__onceToken != -1)
  {
    +[OSALog randomlySelectForRetention:];
  }

  v4 = randomlySelectForRetention__logRetentionCountQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__OSALog_randomlySelectForRetention___block_invoke_2;
  v7[3] = &unk_1E7A27698;
  v8 = retentionCopy;
  v9 = &v10;
  v5 = retentionCopy;
  dispatch_sync(v4, v7);
  LOBYTE(v4) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v4;
}

uint64_t __37__OSALog_randomlySelectForRetention___block_invoke()
{
  randomlySelectForRetention__logRetentionCountQueue = dispatch_queue_create("com.apple.osanalytics.logRetentionCount", 0);

  return MEMORY[0x1EEE66BB8]();
}

void __37__OSALog_randomlySelectForRetention___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [[OSADateCounter alloc] initWithIdentifier:@"logLimit_309"];
  if ([*(a1 + 32) isEqualToString:@"309"])
  {
    if ([(OSADateCounter *)v2 count]<= 0x31 && OSARandomSelection(0x1F4uLL, @"logLimitRate_309"))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      [(OSADateCounter *)v2 increment];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(a1 + 32);
        v5 = 138543362;
        v6 = v3;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Retaining additional log with bug type %{public}@", &v5, 0xCu);
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)locallyCreateForSubmission:(id)submission metadata:(id)metadata options:(id)options error:(id *)error writing:(id)writing
{
  v136[1] = *MEMORY[0x1E69E9840];
  submissionCopy = submission;
  metadataCopy = metadata;
  optionsCopy = options;
  writingCopy = writing;
  v119 = 0;
  v120 = &v119;
  v121 = 0x3032000000;
  v122 = __Block_byref_object_copy__4;
  v123 = __Block_byref_object_dispose__4;
  v124 = 0;
  v113 = 0;
  v114 = &v113;
  v115 = 0x3032000000;
  v116 = __Block_byref_object_copy__4;
  v117 = __Block_byref_object_dispose__4;
  v118 = 0;
  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = __Block_byref_object_copy__4;
  v111 = __Block_byref_object_dispose__4;
  v112 = @"Undescribed error";
  v12 = [optionsCopy objectForKeyedSubscript:@"LogType"];
  if (![v12 length])
  {
    v13 = submissionCopy;

    v12 = v13;
  }

  v105 = 0;
  v106 = 0;
  v102 = 0;
  v103 = &v102;
  v104 = 0x2020000000;
  v14 = [optionsCopy objectForKeyedSubscript:@"override-filePath"];

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults addSuiteNamed:@"com.apple.osanalytics.factoryproxysync"];
  if (OSAIsConfiguredRSDDevice() && [standardUserDefaults BOOLForKey:@"disableLogLimits"])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      +[OSALog locallyCreateForSubmission:metadata:options:error:writing:];
    }

    goto LABEL_8;
  }

  if (v14)
  {
LABEL_8:
    v16 = 1;
LABEL_13:
    v21 = metadataCopy;
    v22 = [v21 objectForKeyedSubscript:@"roots_installed"];
    v23 = v22 == 0;

    if (v23)
    {
      v25 = +[OSALog additionalRootsInstalled];
      if (v25)
      {
        v24 = [v21 mutableCopy];
        [v24 addEntriesFromDictionary:v25];
      }

      else
      {
        v24 = v21;
      }
    }

    else
    {
      v24 = v21;
    }

    v26 = +[OSASystemConfiguration sharedInstance];
    isInDeviceRecoveryEnvironment = [v26 isInDeviceRecoveryEnvironment];

    if (isInDeviceRecoveryEnvironment)
    {
      v28 = [v24 mutableCopy];
      v29 = +[OSASystemConfiguration sharedInstance];
      recoveryModeReason = [v29 recoveryModeReason];
      [v28 setObject:recoveryModeReason forKeyedSubscript:@"device_in_recovery_mode_with_reason"];
    }

    else
    {
      v28 = v24;
    }

    v31 = [optionsCopy objectForKeyedSubscript:@"capture-time"];
    [v31 doubleValue];
    v33 = v32;

    v34 = +[OSASystemConfiguration sharedInstance];
    v35 = [v34 logPathForType:submissionCopy at:optionsCopy options:v33];

    if (v35)
    {
      v36 = [optionsCopy objectForKeyedSubscript:@"move-file"];
      v86[0] = MEMORY[0x1E69E9820];
      v86[1] = 3221225472;
      v86[2] = __68__OSALog_locallyCreateForSubmission_metadata_options_error_writing___block_invoke;
      v86[3] = &unk_1E7A276C0;
      v37 = v36;
      v87 = v37;
      v88 = v35;
      v94 = &v119;
      v89 = submissionCopy;
      v90 = v28;
      v91 = optionsCopy;
      v98 = v33;
      v93 = writingCopy;
      v95 = &v107;
      v100 = v16;
      v96 = &v113;
      v97 = &v102;
      v92 = v12;
      v99 = v106;
      __68__OSALog_locallyCreateForSubmission_metadata_options_error_writing___block_invoke(v86);

      v38 = v87;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v130 = submissionCopy;
        v131 = 2112;
        v132 = v12;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Report of type '%{public}@(%@)' not saved because the destination is unavailable", buf, 0x16u);
      }

      v39 = v108[5];
      v108[5] = @"Destination unavailable";

      v40 = MEMORY[0x1E696ABC0];
      v41 = v108[5];
      v135 = *MEMORY[0x1E696A578];
      v136[0] = v41;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v136 forKeys:&v135 count:1];
      v42 = [v40 errorWithDomain:@"OSALog" code:5 userInfo:v37];
      v38 = v114[5];
      v114[5] = v42;
    }

    goto LABEL_28;
  }

  v17 = +[OSALogTrackerObject sharedTrackers];
  v18 = (v108 + 5);
  obj = v108[5];
  v19 = [v17 osa_logTracker_isLog:submissionCopy byKey:v12 count:v103 + 3 withinLimit:&v106 withOptions:optionsCopy errorDescription:&obj];
  objc_storeStrong(v18, obj);
  if (v19)
  {

LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  v20 = [OSALog randomlySelectForRetention:submissionCopy];

  if (v20)
  {
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v130 = submissionCopy;
    v131 = 2112;
    v132 = v12;
    v133 = 2048;
    v134 = v106;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Report of type '%{public}@(%@)' not saved because the limit of %lu logs has been reached", buf, 0x20u);
  }

  v73 = MEMORY[0x1E696ABC0];
  v74 = v108[5];
  v127 = *MEMORY[0x1E696A578];
  v128 = v74;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
  v75 = [v73 errorWithDomain:@"OSALog" code:4 userInfo:v28];
  v35 = v114[5];
  v114[5] = v75;
LABEL_28:

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:submissionCopy forKeyedSubscript:@"bug_type"];
  v44 = [MEMORY[0x1E696AD98] numberWithInt:v108[5] == 0];
  [dictionary setObject:v44 forKeyedSubscript:@"saved"];

  v45 = v114[5];
  if (v45)
  {
    userInfo = [v45 userInfo];
    v47 = [userInfo objectForKeyedSubscript:@"errno"];
    intValue = [v47 intValue];

    v49 = MEMORY[0x1E696AEC0];
    v50 = v108[5];
    domain = [v114[5] domain];
    v52 = [v49 stringWithFormat:@"%@ (%@:%ld:%d)", v50, domain, objc_msgSend(v114[5], "code"), intValue];
    [dictionary setObject:v52 forKeyedSubscript:@"error"];

    if (intValue)
    {
      userInfo2 = [v114[5] userInfo];
      v54 = [userInfo2 objectForKeyedSubscript:@"errno"];
      [dictionary setObject:v54 forKeyedSubscript:@"errno"];
    }
  }

  else
  {
    [dictionary setObject:v108[5] forKeyedSubscript:@"error"];
  }

  AnalyticsSendEvent();
  if ([(__CFString *)submissionCopy isEqualToString:@"211"])
  {
    [OSAStateMonitor recordEvent:@"ca-log-written"];
    if (v108[5])
    {
      v125[0] = @"crk";
      v55 = +[OSASystemConfiguration sharedInstance];
      crashReporterKey = [v55 crashReporterKey];
      v57 = crashReporterKey;
      if (submissionCopy)
      {
        v58 = submissionCopy;
      }

      else
      {
        v58 = @"<unknown>";
      }

      v126[0] = crashReporterKey;
      v126[1] = v58;
      v125[1] = @"bug_type";
      v125[2] = @"error";
      v59 = [dictionary objectForKeyedSubscript:?];
      v60 = v59;
      if (v59)
      {
        v61 = v59;
      }

      else
      {
        v61 = @"<unknown>";
      }

      v126[2] = v61;
      v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v126 forKeys:v125 count:3];
      rtcsc_send(2003, 2003, v62);
    }
  }

  if (+[OSALog isDataVaultEnabled])
  {
    lastPathComponent = [optionsCopy objectForKeyedSubscript:@"datavault-filePath"];
    if (![lastPathComponent BOOLValue] || v108[5])
    {
LABEL_53:

      goto LABEL_54;
    }

    filepath = [v120[5] filepath];
    v65 = filepath == 0;

    if (!v65)
    {
      filepath2 = [v120[5] filepath];
      lastPathComponent = [filepath2 lastPathComponent];

      v67 = +[OSASystemConfiguration sharedInstance];
      pathSubmission = [v67 pathSubmission];
      v69 = [pathSubmission stringByAppendingPathComponent:lastPathComponent];

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      filepath3 = [v120[5] filepath];
      v85 = 0;
      v72 = [defaultManager copyItemAtPath:filepath3 toPath:v69 error:&v85];
      v81 = v85;

      if (v72)
      {
        [OSALog markFile:v69 withKey:"DoNotSubmit" value:"1"];
        [v120[5] setOldFilePath:v69];
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        +[OSALog locallyCreateForSubmission:metadata:options:error:writing:];
      }

      filepath4 = [v120[5] filepath];
      [OSALog markPurgeableLevel:98308 path:filepath4];

      goto LABEL_53;
    }
  }

LABEL_54:
  if (error)
  {
    v77 = v114[5];
    if (v77)
    {
      *error = v77;
    }
  }

  v78 = v120[5];

  _Block_object_dispose(&v102, 8);
  _Block_object_dispose(&v107, 8);

  _Block_object_dispose(&v113, 8);
  _Block_object_dispose(&v119, 8);

  v79 = *MEMORY[0x1E69E9840];

  return v78;
}

void __68__OSALog_locallyCreateForSubmission_metadata_options_error_writing___block_invoke(uint64_t a1)
{
  v98[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v2 = *(a1 + 32);
      *buf = 138543362;
      v86 = v2;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Moving source file '%{public}@' into submission directory", buf, 0xCu);
    }

    v3 = fopen([*(a1 + 32) fileSystemRepresentation], "r");
    if (v3)
    {
      v4 = v3;
      [OSASystemConfiguration ensureConformanceOfFile:fileno(v3) options:*(a1 + 64)];
      [OSALog markDescriptor:fileno(v4) withPairs:*(a1 + 56) andOptions:*(a1 + 64)];
      fclose(v4);
      v5 = [[OSALog alloc] initWithFilepath:*(a1 + 32) type:*(a1 + 48)];
      v6 = *(*(a1 + 88) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      if (*(*(*(a1 + 88) + 8) + 40))
      {
        goto LABEL_18;
      }

      v8 = *(*(a1 + 96) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = @"Unable to access log from existing file";

      v10 = MEMORY[0x1E696ABC0];
      v11 = *(*(*(a1 + 96) + 8) + 40);
      v97 = *MEMORY[0x1E696A578];
      v98[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:&v97 count:1];
      v13 = [v10 errorWithDomain:@"OSALog" code:6 userInfo:v12];
      v14 = *(*(a1 + 104) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }

    else
    {
      v32 = MEMORY[0x1E696AEC0];
      v33 = *(a1 + 32);
      v34 = *__error();
      v35 = __error();
      v12 = [v32 stringWithFormat:@"Unable to open file '%@': [%d] %s", v33, v34, strerror(*v35)];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v86 = v12;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      v36 = *(*(a1 + 96) + 8);
      v37 = *(v36 + 40);
      *(v36 + 40) = @"Unable to open file";

      v38 = MEMORY[0x1E696ABC0];
      v95 = *MEMORY[0x1E696A578];
      v96 = v12;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
      v39 = [v38 errorWithDomain:@"OSALog" code:3 userInfo:v15];
      v40 = *(*(a1 + 104) + 8);
      v41 = *(v40 + 40);
      *(v40 + 40) = v39;
    }
  }

  else
  {
    v16 = [*(a1 + 40) stringByDeletingLastPathComponent];
    v17 = [*(a1 + 40) lastPathComponent];
    v18 = [@"." stringByAppendingString:v17];
    v12 = [v16 stringByAppendingPathComponent:v18];

    v19 = [OSALog alloc];
    v20 = *(a1 + 48);
    v21 = *(a1 + 56);
    v22 = *(a1 + 64);
    v23 = *(a1 + 120);
    v82 = 0;
    v24 = [(OSALog *)v19 initWithType:v20 filepath:v12 metadata:v21 options:v22 at:&v82 error:v23];
    v25 = v82;
    v26 = *(*(a1 + 88) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v24;

    v28 = *(*(*(a1 + 88) + 8) + 40);
    if (v28)
    {
      v29 = *(a1 + 80);
      v30 = fileno([v28 stream]);
      v81 = v25;
      v31 = (*(v29 + 16))(v29, v30, &v81);
      v15 = v81;

      if (v31)
      {
        [*(*(*(a1 + 88) + 8) + 40) closeFileStream];
      }

      else
      {
        unlink([v12 UTF8String]);
        v42 = *(*(a1 + 88) + 8);
        v43 = *(v42 + 40);
        *(v42 + 40) = 0;
      }
    }

    else
    {
      v15 = v25;
    }

    if (!*(*(*(a1 + 88) + 8) + 40))
    {
      v44 = *(*(a1 + 96) + 8);
      v45 = *(v44 + 40);
      *(v44 + 40) = @"Unable to create a new log file";

      objc_storeStrong((*(*(a1 + 104) + 8) + 40), v15);
    }
  }

LABEL_18:
  v46 = a1 + 88;
  if (*(*(*(a1 + 88) + 8) + 40))
  {
    if (*(a1 + 32))
    {
      v47 = [MEMORY[0x1E696AC08] defaultManager];
      v48 = [*(*(*(a1 + 88) + 8) + 40) filepath];
      v49 = *(a1 + 40);
      v79 = 0;
      v50 = [v47 moveItemAtPath:v48 toPath:v49 error:&v79];
      v51 = v79;

      if (v50)
      {
LABEL_21:
        [*(*(*(a1 + 88) + 8) + 40) rename:*(a1 + 40)];
        if ((*(a1 + 136) & 1) == 0)
        {
          ++*(*(*(a1 + 112) + 8) + 24);
          v52 = +[OSALogTrackerObject sharedTrackers];
          v53 = *(a1 + 72);
          v54 = [*(a1 + 64) objectForKeyedSubscript:@"Signature"];
          [v52 osa_logTracker_incrementForSubtype:v53 signature:v54 filepath:{objc_msgSend(*(a1 + 40), "fileSystemRepresentation")}];
        }

        v55 = [*(a1 + 64) objectForKeyedSubscript:@"optinOverride"];
        v56 = [v55 BOOLValue];

        if (v56)
        {
          v57 = [*(*(*v46 + 8) + 40) filepath];
          [OSALog markFile:v57 withKey:"DnUOverride" value:"1"];
        }

        [OSABridgeLinkProxy transfer:*(a1 + 40) key:*(a1 + 72)];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v58 = *(a1 + 72);
          v59 = *(*(*(a1 + 112) + 8) + 24);
          v60 = *(a1 + 128);
          v62 = *(a1 + 40);
          v61 = *(a1 + 48);
          *buf = 138544386;
          v86 = v61;
          v87 = 2112;
          v88 = v58;
          v89 = 2048;
          v90 = v59;
          v91 = 2048;
          v92 = v60;
          v93 = 2114;
          v94 = v62;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Saved type '%{public}@(%@)' report (%lu of max %lu) at %{public}@", buf, 0x34u);
        }

        v63 = 0;
        v46 = a1 + 96;
        goto LABEL_36;
      }
    }

    else
    {
      v68 = objc_alloc(MEMORY[0x1E695DFF8]);
      v69 = [*(*(*(a1 + 88) + 8) + 40) filepath];
      v70 = [v68 initWithString:v69];
      v71 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:*(a1 + 40)];
      v80 = 0;
      v72 = OSASafeMoveItemAtURL(v70, v71, &v80);
      v51 = v80;

      if (v72)
      {
        goto LABEL_21;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v73 = [*(*(*v46 + 8) + 40) filepath];
      *buf = 138543618;
      v86 = v73;
      v87 = 2114;
      v88 = v51;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to move tmp file '%{public}@': %{public}@", buf, 0x16u);
    }

    v74 = *(*(a1 + 96) + 8);
    v75 = *(v74 + 40);
    *(v74 + 40) = @"Unable to move tmp file";

    objc_storeStrong((*(*(a1 + 104) + 8) + 40), v51);
    v63 = 0;
    goto LABEL_36;
  }

  v64 = *(*(a1 + 96) + 8);
  if (!*(v64 + 40))
  {
    *(v64 + 40) = @"Failed to create log";
  }

  v66 = *(a1 + 104);
  v65 = a1 + 104;
  if (!*(*(v66 + 8) + 40))
  {
    v67 = MEMORY[0x1E696ABC0];
    v83 = *MEMORY[0x1E696A578];
    v84 = @"datawriter returned with negative response";
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
    v63 = [v67 errorWithDomain:@"OSALog" code:14 userInfo:v51];
    v46 = v65;
LABEL_36:
    v76 = *(*v46 + 8);
    v77 = *(v76 + 40);
    *(v76 + 40) = v63;
  }

  v78 = *MEMORY[0x1E69E9840];
}

+ (id)createForSubmission:(id)submission metadata:(id)metadata options:(id)options error:(id *)error writing:(id)writing
{
  v120 = *MEMORY[0x1E69E9840];
  submissionCopy = submission;
  metadataCopy = metadata;
  optionsCopy = options;
  writingCopy = writing;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v66 = MEMORY[0x1B2703360](writingCopy);
    v67 = NSUserName();
    *v117 = 138413314;
    *&v117[4] = submissionCopy;
    *&v117[12] = 2112;
    *&v117[14] = metadataCopy;
    *&v117[22] = 2112;
    v118 = optionsCopy;
    *v119 = 2048;
    *&v119[2] = v66;
    *&v119[10] = 2112;
    *&v119[12] = v67;
    _os_log_debug_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "createForSubmission: %@ metadata: %@ options: %@ block: %p (by %@)", v117, 0x34u);
  }

  if (optionsCopy)
  {
    v13 = [optionsCopy mutableCopy];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;
  v15 = objc_opt_new();
  if (metadataCopy)
  {
    v16 = [optionsCopy objectForKeyedSubscript:@"nestedMetadata"];
    bOOLValue = [v16 BOOLValue];

    if (bOOLValue)
    {
      [v15 setObject:metadataCopy forKeyedSubscript:@"custom_headers"];
    }

    else
    {
      [v15 addEntriesFromDictionary:metadataCopy];
    }
  }

  v18 = [optionsCopy objectForKeyedSubscript:@"capture-time"];
  v19 = v18 == 0;

  if (v19)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithDouble:CFAbsoluteTimeGetCurrent()];
    [v14 setObject:v20 forKeyedSubscript:@"capture-time"];
  }

  v21 = [metadataCopy objectForKeyedSubscript:@"incident_id"];
  v22 = v21 == 0;

  if (v22)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [v15 setObject:uUIDString forKeyedSubscript:@"incident_id"];
  }

  v25 = [optionsCopy objectForKeyedSubscript:@"LogType"];
  v26 = [v25 length] == 0;

  if (v26)
  {
    [v14 setObject:submissionCopy forKeyedSubscript:@"LogType"];
  }

  v27 = geteuid();
  if (v27 >= 0x1F4)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v27];
    [v14 setObject:v28 forKeyedSubscript:@"file-owner-uid"];
  }

  v29 = [optionsCopy objectForKeyedSubscript:@"observer_info"];
  v30 = v29 == 0;

  if (v30)
  {
    v31 = [MEMORY[0x1E695DF90] dictionaryWithObject:submissionCopy forKey:@"bug_type"];
    [v14 setObject:v31 forKeyedSubscript:@"observer_info"];
  }

  else
  {
    v31 = [v14 objectForKeyedSubscript:@"observer_info"];
    [v31 setObject:submissionCopy forKeyedSubscript:@"bug_type"];
  }

  v32 = +[OSASystemConfiguration sharedInstance];
  v33 = [v32 usesLegacySubmission:submissionCopy];

  if (v33)
  {
    [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"alt-metadata"];
  }

  if (+[OSALog isDataVaultEnabled](OSALog, "isDataVaultEnabled") && [submissionCopy isEqualToString:@"309"])
  {
    [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"datavault-filePath"];
  }

  *v117 = 0;
  *&v117[8] = v117;
  *&v117[16] = 0x3032000000;
  v118 = __Block_byref_object_copy__4;
  *v119 = __Block_byref_object_dispose__4;
  *&v119[8] = 0;
  v34 = [optionsCopy objectForKeyedSubscript:@"override-filePath"];

  if (!v34)
  {
    context = objc_autoreleasePoolPush();
    mach_service = xpc_connection_create_mach_service("com.apple.osanalytics.osanalyticshelper", 0, 2uLL);
    connection = mach_service;
    if (!mach_service)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        +[OSALog createForSubmission:metadata:options:error:writing:];
      }

      v57 = MEMORY[0x1E696ABC0];
      v104 = *MEMORY[0x1E696A578];
      v105 = @"Couldn't get XPC connection";
      v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
      v59 = [v57 errorWithDomain:@"OSALog" code:17 userInfo:v58];
      v94 = v58;
      v38 = 0;
      v60 = *(*&v117[8] + 40);
      *(*&v117[8] + 40) = v59;
      goto LABEL_106;
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __61__OSALog_createForSubmission_metadata_options_error_writing___block_invoke_284;
    handler[3] = &unk_1E7A27258;
    handler[4] = v117;
    xpc_connection_set_event_handler(mach_service, handler);
    v42 = xpc_connection_create(0, 0);
    v94 = v42;
    if (!v42)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v116 = 0;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Couldn't config private XPC connection", v116, 2u);
      }

      v62 = MEMORY[0x1E696ABC0];
      v106 = *MEMORY[0x1E696A578];
      v107 = @"Couldn't config private XPC connection";
      v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
      v64 = [v62 errorWithDomain:@"OSALog" code:16 userInfo:v63];
      v65 = *(*&v117[8] + 40);
      *(*&v117[8] + 40) = v64;

      v38 = 0;
      goto LABEL_98;
    }

    v98[0] = MEMORY[0x1E69E9820];
    v98[1] = 3221225472;
    v98[2] = __61__OSALog_createForSubmission_metadata_options_error_writing___block_invoke_289;
    v98[3] = &unk_1E7A27738;
    v99 = writingCopy;
    xpc_connection_set_event_handler(v42, v98);
    value = xpc_endpoint_create(v42);
    xpc_connection_resume(v42);
    xpc_connection_resume(connection);
    v43 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v43, "datawriter_endpoint", value);
    memset(v116, 0, sizeof(v116));
    v44 = getprogname();
    if (!v44)
    {
      v45 = getpid();
      v44 = v116;
      __sprintf_chk(v116, 0, 0x20uLL, "%d", v45);
    }

    xpc_dictionary_set_string(v43, "caller", v44);
    xpc_dictionary_set_uint64(v43, "operation", 6uLL);
    uTF8String = [@"bug_type" UTF8String];
    v47 = submissionCopy;
    xpc_dictionary_set_string(v43, uTF8String, [submissionCopy UTF8String]);
    if ([v15 count])
    {
      v48 = ns2xpc(v15);
      xpc_dictionary_set_value(v43, "additionalHeaders", v48);
    }

    if ([v14 count])
    {
      v49 = ns2xpc(v14);
      xpc_dictionary_set_value(v43, "options", v49);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v115 = submissionCopy;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "C1. request '%@' report service via XPC/osanalyticshelper", buf, 0xCu);
    }

    v50 = xpc_connection_send_message_with_reply_sync(connection, v43);
    v51 = v50;
    if (v50)
    {
      if (xpc_dictionary_get_BOOL(v50, "result"))
      {
        xdict = v51;
        string = xpc_dictionary_get_string(v51, "filePath");
        if (string)
        {
          v53 = [OSALog alloc];
          v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
          v38 = [(OSALog *)v53 initWithFilepath:v54 type:submissionCopy];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v115 = string;
            _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "C6. report request completed: %s", buf, 0xCu);
          }

          v51 = xdict;
          v55 = xpc_dictionary_get_string(xdict, "oldFilePath");
          if (!v55)
          {
            goto LABEL_97;
          }

          v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v55];
          [(OSALog *)v38 setOldFilePath:v56];
          goto LABEL_96;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          +[OSALog createForSubmission:metadata:options:error:writing:];
        }

        v51 = xdict;
        if (!*(*&v117[8] + 40))
        {
          v75 = MEMORY[0x1E696ABC0];
          v112 = *MEMORY[0x1E696A578];
          v113 = @"Incomplete XPC result -- no filename";
          v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
          v69 = [v75 errorWithDomain:@"OSALog" code:7 userInfo:v56];
          goto LABEL_81;
        }
      }

      else
      {
        if (v51 == MEMORY[0x1E69E9E20] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          +[OSALog createForSubmission:metadata:options:error:writing:];
        }

        v70 = MEMORY[0x1B2703A40](v51);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v115 = v70;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "XPC Response: '%s'", buf, 0xCu);
        }

        if (v70)
        {
          free(v70);
        }

        uTF8String2 = xpc_dictionary_get_string(v51, "error_desc");
        if (!uTF8String2)
        {
          v72 = *(*&v117[8] + 40);
          if (v72)
          {
            localizedDescription = [v72 localizedDescription];
            v74 = localizedDescription;
            uTF8String2 = [localizedDescription UTF8String];
          }

          else
          {
            uTF8String2 = 0;
          }
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v115 = uTF8String2;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "C6. report request failed: %s", buf, 0xCu);
        }

        if (!*(*&v117[8] + 40))
        {
          xdicta = xpc_dictionary_get_string(v51, "error_domain");
          uint64 = xpc_dictionary_get_uint64(v51, "error_code");
          v88 = MEMORY[0x1E696ABC0];
          if (xdicta)
          {
            v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
          }

          else
          {
            v56 = @"OSALog";
          }

          v110 = *MEMORY[0x1E696A578];
          if (uTF8String2)
          {
            v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:uTF8String2];
          }

          else
          {
            v77 = @"<unknown>";
          }

          v87 = v77;
          v111 = v77;
          v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
          v79 = [v88 errorWithDomain:v56 code:uint64 userInfo:v78];
          v80 = *(*&v117[8] + 40);
          *(*&v117[8] + 40) = v79;

          if (uTF8String2)
          {
          }

          v38 = 0;
          if (!xdicta)
          {
            goto LABEL_97;
          }

          goto LABEL_96;
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Invalid XPC response", buf, 2u);
      }

      if (!*(*&v117[8] + 40))
      {
        v68 = MEMORY[0x1E696ABC0];
        v108 = *MEMORY[0x1E696A578];
        v109 = @"Invalid XPC response";
        v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
        v69 = [v68 errorWithDomain:@"OSALog" code:15 userInfo:v56];
        xdict = 0;
LABEL_81:
        v76 = *(*&v117[8] + 40);
        *(*&v117[8] + 40) = v69;

        v38 = 0;
        v51 = xdict;
LABEL_96:

        goto LABEL_97;
      }
    }

    v38 = 0;
LABEL_97:

    v63 = v99;
LABEL_98:

    v60 = [OSALog logObjForBugType:submissionCopy];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      if (v38)
      {
        v81 = @"success";
      }

      else
      {
        v81 = @"FAILED";
      }

      if (*(*&v117[8] + 40))
      {
        [*(*&v117[8] + 40) localizedDescription];
      }

      else
      {
        [(OSALog *)v38 filepath];
      }
      v82 = ;
      *v116 = 138543874;
      *&v116[4] = submissionCopy;
      *&v116[12] = 2112;
      *&v116[14] = v81;
      *&v116[22] = 2114;
      *&v116[24] = v82;
      _os_log_impl(&dword_1AE4F7000, v60, OS_LOG_TYPE_DEFAULT, "client log create type %{public}@ result %@: %{public}@", v116, 0x20u);
    }

LABEL_106:

    objc_autoreleasePoolPop(context);
    goto LABEL_107;
  }

  v35 = [v14 objectForKeyedSubscript:@"optinOverride"];
  bOOLValue2 = [v35 BOOLValue];

  if (bOOLValue2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[OSALog createForSubmission:metadata:options:error:writing:];
    }

    [v14 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"optinOverride"];
  }

  v37 = *&v117[8];
  obj = *(*&v117[8] + 40);
  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 3221225472;
  v101[2] = __61__OSALog_createForSubmission_metadata_options_error_writing___block_invoke;
  v101[3] = &unk_1E7A276E8;
  v102 = writingCopy;
  v38 = [OSALog locallyCreateForSubmission:submissionCopy metadata:v15 options:v14 error:&obj writing:v101];
  objc_storeStrong((v37 + 40), obj);
  v39 = [OSALog logObjForBugType:submissionCopy];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    if (v38)
    {
      v40 = @"success";
    }

    else
    {
      v40 = @"FAILED";
    }

    if (*(*&v117[8] + 40))
    {
      [*(*&v117[8] + 40) localizedDescription];
    }

    else
    {
      [(OSALog *)v38 filepath];
    }
    v61 = ;
    *v116 = 138543874;
    *&v116[4] = submissionCopy;
    *&v116[12] = 2112;
    *&v116[14] = v40;
    *&v116[22] = 2114;
    *&v116[24] = v61;
    _os_log_impl(&dword_1AE4F7000, v39, OS_LOG_TYPE_DEFAULT, "local log create type %{public}@ result %@: %{public}@", v116, 0x20u);
  }

LABEL_107:
  if (error)
  {
    v83 = *(*&v117[8] + 40);
    if (v83)
    {
      *error = v83;
    }
  }

  v84 = v38;
  _Block_object_dispose(v117, 8);

  v85 = *MEMORY[0x1E69E9840];

  return v84;
}

uint64_t __61__OSALog_createForSubmission_metadata_options_error_writing___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:a2];
    (*(v2 + 16))(v2, v3);
  }

  result = 1;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __61__OSALog_createForSubmission_metadata_options_error_writing___block_invoke_284(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 != MEMORY[0x1E69E9E18] && MEMORY[0x1B2703B90](v3) == MEMORY[0x1E69E9E98])
  {
    string = xpc_dictionary_get_string(v4, *MEMORY[0x1E69E9E28]);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "com.apple.osanalytics.osanalyticshelper";
      v17 = 2080;
      v18 = string;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Got xpc error message from %s: %s\n", buf, 0x16u);
    }

    v6 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"XPC Error: %s", string];
    v14 = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v9 = [v6 errorWithDomain:@"OSALog" code:8 userInfo:v8];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __61__OSALog_createForSubmission_metadata_options_error_writing___block_invoke_289(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x1B2703B90]() == MEMORY[0x1E69E9E68])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "C3. private back-channel connection established", buf, 2u);
    }

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __61__OSALog_createForSubmission_metadata_options_error_writing___block_invoke_290;
    v5[3] = &unk_1E7A27710;
    v7 = *(a1 + 32);
    v4 = v3;
    v6 = v4;
    xpc_connection_set_event_handler(v4, v5);
    xpc_connection_resume(v4);
  }
}

void __61__OSALog_createForSubmission_metadata_options_error_writing___block_invoke_290(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MEMORY[0x1B2703B90]() == MEMORY[0x1E69E9E80])
  {
    reply = xpc_dictionary_create_reply(v3);
    if (reply)
    {
      v5 = xpc_dictionary_dup_fd(v3, "fileDesc");
      if (v5)
      {
        v6 = v5;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          v11 = 67109120;
          v12 = v6;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "C4. write payload using file descriptor (%d)", &v11, 8u);
        }

        v7 = *(a1 + 40);
        if (v7)
        {
          v8 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v6];
          (*(v7 + 16))(v7, v8);
        }

        v9 = 1;
        close(v6);
      }

      else
      {
        v9 = 0;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v11 = 67109120;
          v12 = 0;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "C4. ERROR no file descriptor (%d)", &v11, 8u);
          v9 = 0;
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v11 = 67109120;
        v12 = v9;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "C5. payload writing complete, return status %d", &v11, 8u);
      }

      xpc_dictionary_set_BOOL(reply, "result", v9);
      xpc_connection_send_message(*(a1 + 32), reply);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "C4. ERROR Unable to reply", &v11, 2u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)isReasonableSize:(int64_t)size forRouting:(id)routing
{
  v6 = [(NSString *)self->_filepath lastPathComponent:size];
  if ([v6 hasSuffix:@".pll.anon"])
  {
  }

  else
  {
    v7 = [(NSString *)self->_filepath hasSuffix:@".mss.anon"];

    if (!v7)
    {
      v8 = 0x100000;
      return v8 >= size;
    }
  }

  v8 = 104857600;
  return v8 >= size;
}

- (void)markWithKey:(const char *)key value:(const char *)value
{
  p_filepath = &self->_filepath;
  uTF8String = [(NSString *)self->_filepath UTF8String];
  v8 = strlen(value);
  if (setxattr(uTF8String, key, value, v8 + 1, 0, 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [OSALog markWithKey:? value:?];
    }
  }
}

+ (void)markFile:(id)file withKey:(const char *)key value:(const char *)value
{
  fileCopy = file;
  uTF8String = [fileCopy UTF8String];
  v9 = strlen(value);
  if (setxattr(uTF8String, key, value, v9 + 1, 0, 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[OSALog markFile:withKey:value:];
  }
}

+ (void)markDescriptor:(int)descriptor forKey:(id)key withObj:(id)obj
{
  v23 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  objCopy = obj;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uTF8String = [objCopy UTF8String];
    bytes = uTF8String;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bytes = [objCopy bytes];
      v11 = [objCopy length];
      goto LABEL_6;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_13;
    }

    stringValue = [objCopy stringValue];
    bytes = [stringValue UTF8String];

    uTF8String = bytes;
  }

  v11 = strlen(uTF8String);
LABEL_6:
  if (bytes && v11)
  {
    if (fsetxattr(descriptor, [keyCopy UTF8String], bytes, v11, 0, 0) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *__error();
      v13 = __error();
      v14 = strerror(*v13);
      v17 = 138412802;
      v18 = keyCopy;
      v19 = 1024;
      v20 = v12;
      v21 = 2080;
      v22 = v14;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unable to set xattr '%@', errno=%d: %s", &v17, 0x1Cu);
    }

    goto LABEL_15;
  }

LABEL_13:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[OSALog markDescriptor:forKey:withObj:];
  }

LABEL_15:

  v16 = *MEMORY[0x1E69E9840];
}

+ (void)markDescriptor:(int)descriptor withPairs:(id)pairs andOptions:(id)options
{
  v7 = markDescriptor_withPairs_andOptions__onceToken;
  optionsCopy = options;
  pairsCopy = pairs;
  if (v7 != -1)
  {
    +[OSALog markDescriptor:withPairs:andOptions:];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__OSALog_markDescriptor_withPairs_andOptions___block_invoke_2;
  v12[3] = &__block_descriptor_36_e15_v32__0_8_16_B24l;
  descriptorCopy = descriptor;
  [pairsCopy enumerateKeysAndObjectsUsingBlock:v12];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__OSALog_markDescriptor_withPairs_andOptions___block_invoke_3;
  v10[3] = &__block_descriptor_36_e15_v32__0_8_16_B24l;
  descriptorCopy2 = descriptor;
  [optionsCopy enumerateKeysAndObjectsUsingBlock:v10];
}

void __46__OSALog_markDescriptor_withPairs_andOptions___block_invoke()
{
  v3[9] = *MEMORY[0x1E69E9840];
  v3[0] = @"SubmissionPolicy";
  v3[1] = @"routing";
  v3[2] = @"urgent";
  v3[3] = @"Signature";
  v3[4] = @"LogType";
  v3[5] = @"dialog_displayed";
  v3[6] = @"ReopenPath";
  v3[7] = @"displayName";
  v3[8] = @"priority";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:9];
  v1 = markDescriptor_withPairs_andOptions__option_xattr_whitelist;
  markDescriptor_withPairs_andOptions__option_xattr_whitelist = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void __46__OSALog_markDescriptor_withPairs_andOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [OSALog markDescriptor:*(a1 + 32) forKey:v6 withObj:v5];
  }
}

void __46__OSALog_markDescriptor_withPairs_andOptions___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [markDescriptor_withPairs_andOptions__option_xattr_whitelist containsObject:v6])
  {
    [OSALog markDescriptor:*(a1 + 32) forKey:v6 withObj:v5];
  }
}

- (BOOL)retire:(const char *)retire
{
  v73 = *MEMORY[0x1E69E9840];
  p_filepath = &self->_filepath;
  filepath = self->_filepath;
  if (filepath)
  {
    v7 = [(NSString *)filepath copy];
    [(OSALog *)self closeFileStream];
    if (self->_preserveFiles)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v8 = *p_filepath;
        *buf = 136315394;
        retireCopy2 = retire;
        v67 = 2114;
        retireCopy3 = v8;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Sparing %s '%{public}@'", buf, 0x16u);
      }

      v9 = 0;
      LOBYTE(v10) = 1;
LABEL_48:

      goto LABEL_49;
    }

    v54 = v7;
    if (self->_deleteOnRetire)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *p_filepath;
        *buf = 136315394;
        retireCopy2 = retire;
        v67 = 2114;
        retireCopy3 = v11;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Cleanup %s '%{public}@'", buf, 0x16u);
      }

      v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:*p_filepath];
      v58 = 0;
      v13 = OSASafeRemoveFileAtURL(v12, &v58);
      v9 = v58;

      if ((v13 & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [OSALog retire:?];
        }

LABEL_31:
        v10 = 0;
        goto LABEL_32;
      }

      goto LABEL_28;
    }

    v14 = +[OSASystemConfiguration sharedInstance];
    if ([v14 appleInternal])
    {
      if ([*p_filepath hasSuffix:@"pll.anon"])
      {

        goto LABEL_25;
      }

      v22 = [*p_filepath hasSuffix:@"mss.anon"];

      if (v22)
      {
LABEL_25:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v23 = *p_filepath;
          *buf = 138543362;
          retireCopy2 = v23;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Auto deletion of '%{public}@'", buf, 0xCu);
        }

        v24 = [MEMORY[0x1E695DFF8] fileURLWithPath:*p_filepath];
        v57 = 0;
        v25 = OSASafeRemoveFileAtURL(v24, &v57);
        v9 = v57;

        if ((v25 & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [OSALog retire:?];
          }

          goto LABEL_31;
        }

LABEL_28:
        v10 = 1;
LABEL_32:
        v26 = [OSALog logObjForBugType:self->_bugType];
        v27 = @"<unknown>";
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          bugType = self->_bugType;
          if (!bugType)
          {
            bugType = @"<unknown>";
          }

          v29 = "failed";
          v30 = self->_filepath;
          *buf = 138544130;
          if (v10)
          {
            v29 = "success";
          }

          retireCopy2 = bugType;
          v67 = 2082;
          retireCopy3 = retire;
          v69 = 2114;
          v70 = v30;
          v71 = 2080;
          v72 = v29;
          _os_log_impl(&dword_1AE4F7000, v26, OS_LOG_TYPE_DEFAULT, "Retiring (%{public}@) %{public}s '%{public}@': %s", buf, 0x2Au);
        }

        v31 = self->_bugType;
        if (!v31)
        {
          v31 = @"<unknown>";
        }

        v64[0] = v31;
        v63[0] = @"bug_type";
        v63[1] = @"reason";
        if (retire)
        {
          v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:retire];
        }

        else
        {
          v32 = @"<unknown>";
        }

        v64[1] = v32;
        v63[2] = @"proxied";
        v33 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*p_filepath, "containsString:", @"ProxiedDevice-"}];
        v64[2] = v33;
        v63[3] = @"success";
        v34 = [MEMORY[0x1E696AD98] numberWithBool:v10];
        v64[3] = v34;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:4];
        AnalyticsSendEvent();

        if (retire)
        {
        }

        if (-[NSString isEqualToString:](self->_bugType, "isEqualToString:", @"211") && ([*p_filepath containsString:@"ProxiedDevice-"] & 1) == 0 && ((objc_msgSend(*p_filepath, "containsString:", @"Analytics-Never") & 1) != 0 || objc_msgSend(*p_filepath, "containsString:", @"Analytics-2")))
        {
          v61[0] = @"crk";
          v53 = +[OSASystemConfiguration sharedInstance];
          crashReporterKey = [v53 crashReporterKey];
          v39 = crashReporterKey;
          v40 = self->_bugType;
          if (!v40)
          {
            v40 = @"<unknown>";
          }

          v62[0] = crashReporterKey;
          v62[1] = v40;
          v61[1] = @"bug_type";
          v61[2] = @"incident_id";
          v41 = [(NSDictionary *)self->_metaData objectForKeyedSubscript:?];
          v42 = v41;
          if (v41)
          {
            v43 = v41;
          }

          else
          {
            v43 = @"<unknown>";
          }

          v62[2] = v43;
          v61[3] = @"timestamp";
          v44 = [(NSDictionary *)self->_metaData objectForKeyedSubscript:?];
          v45 = v44;
          if (v44)
          {
            v46 = v44;
          }

          else
          {
            v46 = @"<unknown>";
          }

          v62[3] = v46;
          v61[4] = @"reason";
          if (retire)
          {
            v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:retire];
          }

          v62[4] = v27;
          v61[5] = @"optInStatus";
          v47 = MEMORY[0x1E696AD98];
          v48 = +[OSASystemConfiguration sharedInstance];
          v49 = [v47 numberWithBool:{objc_msgSend(v48, "optInApple")}];
          v62[5] = v49;
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:6];
          rtcsc_send(2001, 2001, v50);

          if (retire)
          {
          }

          v60[0] = v54;
          v59[0] = @"logPath";
          v59[1] = @"retiredReason";
          if (retire)
          {
            v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:retire];
          }

          else
          {
            v51 = @"<unknown>";
          }

          v60[1] = v51;
          v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
          [OSAStateMonitor recordEvent:@"ca-log-retired" with:v52];

          if (retire)
          {
          }

          v7 = v54;
        }

        else
        {
          v7 = v54;
        }

        goto LABEL_48;
      }
    }

    else
    {
    }

    stringByDeletingLastPathComponent = [*p_filepath stringByDeletingLastPathComponent];
    v16 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:@"Retired"];
    lastPathComponent = [*p_filepath lastPathComponent];
    v18 = [v16 stringByAppendingPathComponent:lastPathComponent];

    v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:*p_filepath];
    v20 = [MEMORY[0x1E695DFF8] fileURLWithPath:v18];
    v56 = 0;
    v10 = OSASafeMoveItemAtURL(v19, v20, &v56);
    v9 = v56;

    if (v10)
    {
      objc_storeStrong(p_filepath, v18);
      [(OSALog *)self markWithKey:"retired-reason" value:retire];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [OSALog retire:?];
    }

    if ([(NSString *)self->_bugType isEqualToString:@"211"])
    {
      fileSystemRepresentation = [(NSString *)self->_filepath fileSystemRepresentation];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __17__OSALog_retire___block_invoke;
      v55[3] = &unk_1E7A27780;
      v55[4] = self;
      OSASafeOpenReadOnly(fileSystemRepresentation, v55);
    }

    goto LABEL_32;
  }

  LOBYTE(v10) = 1;
LABEL_49:
  v36 = *MEMORY[0x1E69E9840];
  return v10;
}

void __17__OSALog_retire___block_invoke(uint64_t a1, int a2)
{
  if (fcntl(a2, 64, 2) == -1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __17__OSALog_retire___block_invoke_cold_1(a1);
  }
}

+ (void)cleanupRetired:(id)retired
{
  v15 = *MEMORY[0x1E69E9840];
  retiredCopy = retired;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = retiredCopy;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Cleaning up retired logs (in %@)", buf, 0xCu);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [retiredCopy stringByAppendingPathComponent:@"Retired"];
  fileSystemRepresentation = [v5 fileSystemRepresentation];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __25__OSALog_cleanupRetired___block_invoke;
  v10[3] = &unk_1E7A277A8;
  v11 = v5;
  v12 = defaultManager;
  v7 = defaultManager;
  v8 = v5;
  osa_scanDir(fileSystemRepresentation, 129, v10, 0);

  v9 = *MEMORY[0x1E69E9840];
}

void __25__OSALog_cleanupRetired___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  v4 = [v2 stringByAppendingPathComponent:v3];

  v5 = *(a1 + 40);
  v16 = 0;
  v6 = [v5 attributesOfItemAtPath:v4 error:&v16];
  v7 = v16;
  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v18 = v4;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Failed to get attrs for retired log '%@': %@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v8 = [v6 fileModificationDate];
  [v8 timeIntervalSinceNow];
  v10 = fabs(v9);

  if (v10 <= 604800.0)
  {
LABEL_10:
    v13 = v7;
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Removing old retired log '%@'", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
  v15 = v7;
  v12 = OSASafeRemoveFileAtURL(v11, &v15);
  v13 = v15;

  if ((v12 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v4;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to remove retired log '%@': %@", buf, 0x16u);
  }

LABEL_11:

  v14 = *MEMORY[0x1E69E9840];
}

+ (void)cleanupForUser:(id)user
{
  v38 = *MEMORY[0x1E69E9840];
  userCopy = user;
  v4 = [MEMORY[0x1E695DF70] arrayWithObject:&stru_1F2411100];
  v5 = v4;
  if (userCopy)
  {
    [v4 addObject:userCopy];
  }

  v24 = userCopy;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x1E695E118];
    v9 = *v33;
    do
    {
      v10 = 0;
      do
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * v10);
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [dictionary setObject:v8 forKeyedSubscript:@"include-hidden"];
        [dictionary setObject:v8 forKeyedSubscript:@"include-proxies"];
        if (+[OSALog isDataVaultEnabled])
        {
          [dictionary setObject:v8 forKeyedSubscript:@"datavault-filePath"];
        }

        if ([v11 length])
        {
          [dictionary setObject:v11 forKeyedSubscript:@"file-owner"];
        }

        [OSALog createRetiredDirectoriesForUser:v11];
        [OSALog iterateLogsWithOptions:dictionary usingBlock:&__block_literal_global_367];

        ++v10;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v7);
  }

  v13 = objc_opt_new();
  v14 = +[OSASystemConfiguration sharedInstance];
  pathSubmission = [v14 pathSubmission];
  fileSystemRepresentation = [pathSubmission fileSystemRepresentation];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __25__OSALog_cleanupForUser___block_invoke_2;
  v30[3] = &unk_1E7A27810;
  v17 = v13;
  v31 = v17;
  osa_scanDir(fileSystemRepresentation, 0, &__block_literal_global_376, v30);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      v22 = 0;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        osa_scanDir([*(*(&v26 + 1) + 8 * v22++) fileSystemRepresentation], 0, &__block_literal_global_379, 0);
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v20);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __25__OSALog_cleanupForUser___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 pathExtension];
  v4 = [v3 isEqualToString:@"proxy"];

  if ((v4 & 1) == 0)
  {
    v27 = 0;
    v5 = *MEMORY[0x1E695DAA8];
    v26 = 0;
    v6 = [v2 getResourceValue:&v27 forKey:v5 error:&v26];
    v7 = v27;
    v8 = v26;
    if (v6)
    {
      v9 = [v2 URLByDeletingLastPathComponent];
      v10 = [v9 lastPathComponent];
      v11 = [v10 isEqualToString:@"Retired"];

      if (v11)
      {
        v12 = 604800.0;
      }

      else
      {
        v13 = [v2 lastPathComponent];
        v14 = [v13 hasPrefix:@"."];

        if (v14)
        {
          v12 = 86400.0;
        }

        else
        {
          v12 = 2592000.0;
        }
      }

      [v7 timeIntervalSinceNow];
      if (fabs(v15) > v12)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v2 path];
          *buf = 138412290;
          v29 = v16;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Removing old log '%@'", buf, 0xCu);
        }

        if (v11)
        {
          v24 = v8;
          v17 = OSASafeRemoveFileAtURL(v2, &v24);
          v18 = v24;

          if ((v17 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v2 path];
            *buf = 138412546;
            v29 = v19;
            v30 = 2112;
            v31 = v18;
            _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to remove old log '%@': %@", buf, 0x16u);
          }
        }

        else
        {
          v21 = [OSALog alloc];
          v22 = [v2 path];
          v25 = v8;
          v23 = [(OSALog *)v21 initWithPath:v22 options:&unk_1F241F0D0 error:&v25];
          v18 = v25;

          [(OSALog *)v23 retire:"expired"];
        }

        goto LABEL_18;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __25__OSALog_cleanupForUser___block_invoke_cold_1(v2);
    }

    v18 = v8;
LABEL_18:
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __25__OSALog_cleanupForUser___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  if ([v6 isEqualToString:@"Retired"])
  {
    goto LABEL_4;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
  v8 = [v7 hasPrefix:@"ProxiedDevice-"];

  if ((v8 & 1) == 0)
  {
    v9 = *(a1 + 32);
    v10 = MEMORY[0x1E696AEC0];
    v11 = MEMORY[0x1E695DEC8];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
    v13 = [v11 arrayWithObjects:{v6, v12, 0}];
    v14 = [v10 pathWithComponents:v13];
    [v9 addObject:v14];

LABEL_4:
  }

  return 0;
}

void __25__OSALog_cleanupForUser___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFF8];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v28[0] = v5;
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
  v28[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v8 = [v4 fileURLWithPathComponents:v7];

  v23 = 0;
  v9 = *MEMORY[0x1E695DAA8];
  v22 = 0;
  LODWORD(v6) = [v8 getResourceValue:&v23 forKey:v9 error:&v22];
  v10 = v23;
  v11 = v22;
  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __25__OSALog_cleanupForUser___block_invoke_cold_1(v8);
    }

    goto LABEL_12;
  }

  [v10 timeIntervalSinceNow];
  v13 = fabs(v12);
  v14 = [v8 pathExtension];
  v15 = [v14 isEqualToString:@"synced"];

  v16 = 2592000.0;
  if (v15)
  {
    v16 = 86400.0;
  }

  if (v13 <= v16)
  {
LABEL_12:
    v18 = v11;
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v8;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Removing old log '%@'", buf, 0xCu);
  }

  v21 = v11;
  v17 = OSASafeRemoveFileAtURL(v8, &v21);
  v18 = v21;

  if ((v17 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v8 path];
    *buf = 138412546;
    v25 = v19;
    v26 = 2112;
    v27 = v18;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to remove old log '%@': %@", buf, 0x16u);
  }

LABEL_13:

  v20 = *MEMORY[0x1E69E9840];
}

+ (id)scanProxies:(id)proxies
{
  proxiesCopy = proxies;
  array = [MEMORY[0x1E695DF70] array];
  v5 = opendir([proxiesCopy fileSystemRepresentation]);
  if (v5)
  {
    v6 = v5;
    for (i = readdir(v5); i; i = readdir(v6))
    {
      if (i->d_type == 4)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:i->d_name];
        if ([v8 hasPrefix:@"ProxiedDevice-"])
        {
          v9 = [proxiesCopy stringByAppendingPathComponent:v8];
          [array addObject:v9];
        }
      }
    }

    closedir(v6);
  }

  return array;
}

+ (unsigned)scanLogs:(id)logs from:(id)from options:(id)options
{
  v109 = *MEMORY[0x1E69E9840];
  logsCopy = logs;
  fromCopy = from;
  optionsCopy = options;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v100 = 0;
  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  v64 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  v55 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = logsCopy;
  v9 = [obj countByEnumeratingWithState:&v93 objects:v108 count:16];
  if (v9)
  {
    v57 = *v94;
    v10 = MEMORY[0x1E69E9C10];
    do
    {
      v61 = 0;
      v53 = v9;
      do
      {
        if (*v94 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v59 = *(*(&v93 + 1) + 8 * v61);
        v11 = [v59 objectForKeyedSubscript:@"<inactive>"];
        v12 = v11 == 0;

        if (v12)
        {
          v13 = [v59 objectForKeyedSubscript:@"logs"];
          if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            v14 = v13;
            v15 = [v14 countByEnumeratingWithState:&v89 objects:v107 count:16];
            if (v15)
            {
              v16 = *v90;
              do
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v90 != v16)
                  {
                    objc_enumerationMutation(v14);
                  }

                  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
                  {
                    v18 = *(*(&v89 + 1) + 8 * i);
                    *buf = 138412290;
                    v106 = v18;
                    _os_log_impl(&dword_1AE4F7000, v10, OS_LOG_TYPE_INFO, "scan: including '%@' (explicitly added)", buf, 0xCu);
                  }
                }

                v15 = [v14 countByEnumeratingWithState:&v89 objects:v107 count:16];
              }

              while (v15);
            }

            v19 = [v14 count];
            *(v98 + 6) += v19;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v20 = [v14 mutableCopy];
              [v59 setObject:v20 forKeyedSubscript:@"logs"];
            }
          }

          else
          {
            v14 = objc_opt_new();

            [v59 setObject:v14 forKeyedSubscript:@"logs"];
          }

          v21 = [v59 objectForKeyedSubscript:@"extensions"];
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v22 = v21;
          v23 = [v22 countByEnumeratingWithState:&v85 objects:v104 count:16];
          if (v23)
          {
            v24 = *v86;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v86 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                [v8 setObject:v14 forKeyedSubscript:*(*(&v85 + 1) + 8 * j)];
              }

              v23 = [v22 countByEnumeratingWithState:&v85 objects:v104 count:16];
            }

            while (v23);
          }

          v9 = v53;
          v26 = [v59 objectForKeyedSubscript:@"<descend>"];
          bOOLValue = [v26 BOOLValue];

          if (bOOLValue)
          {
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v28 = v22;
            v29 = [v28 countByEnumeratingWithState:&v81 objects:v103 count:16];
            if (v29)
            {
              v30 = *v82;
              do
              {
                for (k = 0; k != v29; ++k)
                {
                  if (*v82 != v30)
                  {
                    objc_enumerationMutation(v28);
                  }

                  [v64 setObject:v14 forKeyedSubscript:*(*(&v81 + 1) + 8 * k)];
                }

                v29 = [v28 countByEnumeratingWithState:&v81 objects:v103 count:16];
              }

              while (v29);
            }

            v9 = v53;
          }

          v32 = [v59 objectForKeyedSubscript:@"routing"];
          [v55 setObject:v14 forKeyedSubscript:v32];
        }

        ++v61;
      }

      while (v61 != v9);
      v9 = [obj countByEnumeratingWithState:&v93 objects:v108 count:16];
    }

    while (v9);
  }

  v33 = [optionsCopy objectForKeyedSubscript:@"only-urgent"];
  bOOLValue2 = [v33 BOOLValue];

  v35 = 324;
  v79 = 0u;
  v80 = 0u;
  if (bOOLValue2)
  {
    v35 = 836;
  }

  v58 = v35;
  v77 = 0uLL;
  v78 = 0uLL;
  v54 = fromCopy;
  v62 = [v54 countByEnumeratingWithState:&v77 objects:v102 count:16];
  if (v62)
  {
    v60 = *v78;
    do
    {
      for (m = 0; m != v62; ++m)
      {
        if (*v78 != v60)
        {
          objc_enumerationMutation(v54);
        }

        v36 = *(*(&v77 + 1) + 8 * m);
        v37 = [v36 length];
        v38 = [v64 count] == 0;
        if (([v8 count] || objc_msgSend(v55, "count")) && objc_msgSend(v36, "length"))
        {
          v39 = v36;
          fileSystemRepresentation = [v36 fileSystemRepresentation];
          v71[0] = MEMORY[0x1E69E9820];
          v71[1] = 3221225472;
          v71[2] = __32__OSALog_scanLogs_from_options___block_invoke;
          v71[3] = &unk_1E7A27838;
          v72 = v55;
          v76 = v37;
          v73 = v8;
          v74 = v64;
          v75 = &v97;
          osa_scanDir(fileSystemRepresentation, v58 | v38, v71, &__block_literal_global_400);
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v41 = obj;
          v42 = [v41 countByEnumeratingWithState:&v67 objects:v101 count:16];
          if (v42)
          {
            v43 = *v68;
            do
            {
              for (n = 0; n != v42; ++n)
              {
                if (*v68 != v43)
                {
                  objc_enumerationMutation(v41);
                }

                v45 = *(*(&v67 + 1) + 8 * n);
                v46 = [v45 objectForKeyedSubscript:@"<sort>"];
                if ([v46 length])
                {
                  v47 = [v45 objectForKeyedSubscript:@"logs"];
                  v65[0] = MEMORY[0x1E69E9820];
                  v65[1] = 3221225472;
                  v65[2] = __32__OSALog_scanLogs_from_options___block_invoke_2;
                  v65[3] = &unk_1E7A27880;
                  v66 = v46;
                  [v47 sortUsingComparator:v65];
                }
              }

              v42 = [v41 countByEnumeratingWithState:&v67 objects:v101 count:16];
            }

            while (v42);
          }
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "no reason to scan", buf, 2u);
        }
      }

      v62 = [v54 countByEnumeratingWithState:&v77 objects:v102 count:16];
    }

    while (v62);
  }

  v48 = *(v98 + 6);
  _Block_object_dispose(&v97, 8);

  v49 = *MEMORY[0x1E69E9840];
  return v48;
}

void __32__OSALog_scanLogs_from_options___block_invoke(void *a1, const char *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v6 = [v5 stringByAppendingPathComponent:v4];

  v21 = 0;
  memset(value, 0, sizeof(value));
  if (getxattr([v6 fileSystemRepresentation], objc_msgSend(@"routing", "UTF8String"), value, 0x40uLL, 0, 0) >= 1)
  {
    v7 = a1[4];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:value];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
LABEL_12:
      if ([v9 count] > 0x3E7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          __32__OSALog_scanLogs_from_options___block_invoke_cold_1();
        }
      }

      else
      {
        [v9 addObject:v6];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          v18 = 138412290;
          v19 = v6;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "scan: including '%@'", &v18, 0xCu);
        }

        ++*(*(a1[7] + 8) + 24);
      }

      goto LABEL_22;
    }
  }

  if ([v4 hasSuffix:@".synced"])
  {
    v10 = [v4 stringByDeletingPathExtension];
  }

  else
  {
    v10 = v4;
  }

  v11 = v10;
  v12 = [v10 pathExtension];
  if (v12)
  {
    v13 = v12;
    v14 = strlen(a2);
    v15 = 6;
    if (v14 == a1[8])
    {
      v15 = 5;
    }

    v16 = a1[v15];
    v9 = [v16 objectForKeyedSubscript:v13];
    if (!v9)
    {
      v9 = [v16 objectForKeyedSubscript:@"<*>"];
    }

    if (v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __32__OSALog_scanLogs_from_options___block_invoke_cold_2();
  }

LABEL_22:

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __32__OSALog_scanLogs_from_options___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 lastPathComponent];
  v7 = [v6 hasPrefix:*(a1 + 32)];

  v8 = [v5 lastPathComponent];

  v9 = [v8 hasPrefix:*(a1 + 32)];
  if (v7)
  {
    return v9 - 1;
  }

  else
  {
    return v9;
  }
}

+ (void)cleanupLogs:(id)logs withFilters:(id)filters error:(id *)error
{
  v55[1] = *MEMORY[0x1E69E9840];
  logsCopy = logs;
  filtersCopy = filters;
  v9 = objc_autoreleasePoolPush();
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v10, "operation", 9uLL);
  xpc_dictionary_set_string(v10, [@"bug_type" UTF8String], objc_msgSend(logsCopy, "UTF8String"));
  v11 = [filtersCopy objectForKeyedSubscript:@"filterByLogAge"];

  if (v11)
  {
    v12 = [filtersCopy objectForKeyedSubscript:@"filterByLogAge"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v12 doubleValue], v13 == 0.0))
    {
      v28 = MEMORY[0x1E696ABC0];
      v54 = *MEMORY[0x1E696A578];
      v55[0] = @"Log age filter incorrectly formatted";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
      v29 = v28;
      v30 = 1;
LABEL_19:
      v33 = [v29 errorWithDomain:@"OSALogCleanup" code:v30 userInfo:v20];
      goto LABEL_28;
    }

    [v12 doubleValue];
    xpc_dictionary_set_double(v10, "filterByLogAge", v14);
  }

  v15 = [filtersCopy objectForKeyedSubscript:@"filterByHeaders"];

  if (!v15)
  {
    goto LABEL_9;
  }

  v12 = [filtersCopy objectForKeyedSubscript:@"filterByHeaders"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = MEMORY[0x1E696ABC0];
    v50 = *MEMORY[0x1E696A578];
    v51 = @"Log header filter incorrectly formatted";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v29 = v31;
    v30 = 3;
    goto LABEL_19;
  }

  v16 = ns2xpc(v12);
  if (!v16)
  {
    v35 = MEMORY[0x1E696ABC0];
    v52 = *MEMORY[0x1E696A578];
    v53 = @"Log header filter incorrectly formatted";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v29 = v35;
    v30 = 2;
    goto LABEL_19;
  }

  v17 = v16;
  xpc_dictionary_set_value(v10, "filterByHeaders", v16);

LABEL_9:
  v18 = OSAnalyticsHelperServiceConnection();
  v12 = v18;
  if (!v18)
  {
    v32 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Couldn't get XPC connection to %s", "com.apple.osanalytics.osanalyticshelper"];
    v41 = v20;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v33 = [v32 errorWithDomain:@"OSALogCleanup" code:8 userInfo:v24];
LABEL_27:

    goto LABEL_28;
  }

  v19 = xpc_connection_send_message_with_reply_sync(v18, v10);
  v20 = v19;
  if (!v19)
  {
    v34 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E696A578];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid XPC response from %s", "com.apple.osanalytics.osanalyticshelper"];
    v43 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v26 = v34;
    v27 = 7;
LABEL_26:
    v33 = [v26 errorWithDomain:@"OSALogCleanup" code:v27 userInfo:v25];

    goto LABEL_27;
  }

  v21 = MEMORY[0x1B2703B90](v19);
  if (v21 != MEMORY[0x1E69E9E80])
  {
    v22 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    if (v21 == MEMORY[0x1E69E9E98])
    {
      v46 = *MEMORY[0x1E696A578];
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Connection error to %s: %s", "com.apple.osanalytics.osanalyticshelper", xpc_dictionary_get_string(v20, *MEMORY[0x1E69E9E28])];
      v47 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v26 = v22;
      v27 = 5;
    }

    else
    {
      v44 = *MEMORY[0x1E696A578];
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected reply from %s", "com.apple.osanalytics.osanalyticshelper"];
      v45 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v26 = v22;
      v27 = 6;
    }

    goto LABEL_26;
  }

  if (!xpc_dictionary_get_BOOL(v20, "result"))
  {
    v36 = MEMORY[0x1E696ABC0];
    v48 = *MEMORY[0x1E696A578];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Log cleanup request failed. Error: %s", xpc_dictionary_get_string(v20, "error_desc")];
    v49 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v26 = v36;
    v27 = 4;
    goto LABEL_26;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Log cleanup request successfully completed", buf, 2u);
  }

  v33 = 0;
LABEL_28:

  objc_autoreleasePoolPop(v9);
  if (error && v33)
  {
    v37 = v33;
    *error = v33;
  }

  v38 = *MEMORY[0x1E69E9840];
}

+ (void)purgeLogs:(id)logs withReason:(const char *)reason includeRetired:(BOOL)retired deleteOnRetire:(BOOL)retire usingPredicate:(id)predicate
{
  retiredCopy = retired;
  logsCopy = logs;
  predicateCopy = predicate;
  if ([logsCopy length])
  {
    v13 = !retiredCopy;
    if (retiredCopy)
    {
      v14 = 0;
    }

    else
    {
      v14 = 65;
    }

    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = &__block_literal_global_432;
    }

    fileSystemRepresentation = [logsCopy fileSystemRepresentation];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76__OSALog_purgeLogs_withReason_includeRetired_deleteOnRetire_usingPredicate___block_invoke_2;
    v17[3] = &unk_1E7A278A8;
    retireCopy = retire;
    v18 = predicateCopy;
    reasonCopy = reason;
    osa_scanDir(fileSystemRepresentation, v14, v17, v15);
  }
}

uint64_t __76__OSALog_purgeLogs_withReason_includeRetired_deleteOnRetire_usingPredicate___block_invoke()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  v1 = [v0 isEqualToString:@"Retired"];

  return v1;
}

void __76__OSALog_purgeLogs_withReason_includeRetired_deleteOnRetire_usingPredicate___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  v7 = [v6 pathExtension];
  v8 = [v7 isEqualToString:@"proxy"];

  if ((v8 & 1) == 0)
  {
    v9 = [OSALog alloc];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    v11 = [v10 stringByAppendingPathComponent:v6];
    v21 = 0;
    v12 = [(OSALog *)v9 initWithPath:v11 options:0 error:&v21];
    v13 = v21;

    if (v12)
    {
      if (!(*(*(a1 + 32) + 16))())
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v23 = a2;
          v24 = 2080;
          v25 = a3;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Not purging %s/%s: log did not meet criteria", buf, 0x16u);
        }

        goto LABEL_17;
      }

      if (*(a1 + 48) == 1)
      {
        [(OSALog *)v12 setDeleteOnRetire:1];
      }

      if ([(OSALog *)v12 retire:*(a1 + 40)])
      {
LABEL_17:

        goto LABEL_18;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __76__OSALog_purgeLogs_withReason_includeRetired_deleteOnRetire_usingPredicate___block_invoke_2_cold_1();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __76__OSALog_purgeLogs_withReason_includeRetired_deleteOnRetire_usingPredicate___block_invoke_2_cold_2();
    }

    v14 = MEMORY[0x1E695DFF8];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    v16 = [v14 fileURLWithPath:v15];
    v20 = v13;
    v17 = OSASafeRemoveFileAtURL(v16, &v20);
    v18 = v20;

    if ((v17 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __76__OSALog_purgeLogs_withReason_includeRetired_deleteOnRetire_usingPredicate___block_invoke_2_cold_3();
    }

    v13 = v18;
    goto LABEL_17;
  }

LABEL_18:

  v19 = *MEMORY[0x1E69E9840];
}

+ (void)iterateLogsWithOptions:(id)options usingBlock:(id)block
{
  v51 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  blockCopy = block;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_opt_new();
  v8 = [optionsCopy objectForKeyedSubscript:@"override-filePath"];
  v9 = +[OSASystemConfiguration sharedInstance];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 isWhitelisted:v8 forDomain:@"transfer_paths"];

    if (v11)
    {
      [v7 addObject:v8];
    }

    else
    {
      bOOLValue2 = 0;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 138412290;
      v50 = v8;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "path is not whitelisted for listing: %@", buf, 0xCu);
    }

    bOOLValue2 = 0;
  }

  else
  {
    v12 = [optionsCopy objectForKeyedSubscript:@"file-owner"];
    v13 = [v10 pathSubmissionForOwner:v12];

    if (v13)
    {
      [v7 addObject:v13];
    }

    v14 = [optionsCopy objectForKeyedSubscript:@"datavault-filePath"];
    bOOLValue = [v14 BOOLValue];

    if (bOOLValue)
    {
      v16 = +[OSASystemConfiguration sharedInstance];
      pathSubmissionDataVault = [v16 pathSubmissionDataVault];

      if (pathSubmissionDataVault)
      {
        [v7 addObject:pathSubmissionDataVault];
        v13 = pathSubmissionDataVault;
      }

      else
      {
        v13 = 0;
      }
    }

    v18 = [optionsCopy objectForKeyedSubscript:@"include-proxies"];
    bOOLValue2 = [v18 BOOLValue];
  }

LABEL_14:
  if ([v7 count])
  {
    v19 = [optionsCopy objectForKeyedSubscript:@"include-hidden"];
    bOOLValue3 = [v19 BOOLValue];

    if (bOOLValue3)
    {
      v21 = 0;
    }

    else
    {
      v21 = 4;
    }

    v22 = [optionsCopy objectForKeyedSubscript:@"exclude-retired"];
    bOOLValue4 = [v22 BOOLValue];

    if (bOOLValue4)
    {
      v21 |= 0x40uLL;
    }

    else
    {
      v24 = [optionsCopy objectForKeyedSubscript:@"only-retired"];
      bOOLValue5 = [v24 BOOLValue];

      if (bOOLValue5)
      {
        v21 |= 0x80uLL;
      }
    }

    v36 = optionsCopy;
    v26 = [optionsCopy objectForKeyedSubscript:{@"only-urgent", v8}];
    bOOLValue6 = [v26 BOOLValue];

    v47 = 0u;
    v45 = 0u;
    v46 = 0u;
    if (bOOLValue6)
    {
      v28 = v21 | 0x200;
    }

    else
    {
      v28 = v21;
    }

    v44 = 0uLL;
    obj = v7;
    v29 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v45;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v45 != v31)
          {
            objc_enumerationMutation(obj);
          }

          fileSystemRepresentation = [*(*(&v44 + 1) + 8 * i) fileSystemRepresentation];
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __44__OSALog_iterateLogsWithOptions_usingBlock___block_invoke;
          v42[3] = &unk_1E7A278D0;
          v43 = blockCopy;
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __44__OSALog_iterateLogsWithOptions_usingBlock___block_invoke_2;
          v40[3] = &__block_descriptor_41_e13_B24__0r_8r_16l;
          v40[4] = v28;
          v41 = bOOLValue2;
          osa_scanDir(fileSystemRepresentation, v28, v42, v40);
        }

        v30 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v30);
    }

    optionsCopy = v36;
    v8 = v35;
  }

  objc_autoreleasePoolPop(v6);
  v34 = *MEMORY[0x1E69E9840];
}

void __44__OSALog_iterateLogsWithOptions_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E695DFF8];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v11[0] = v6;
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [v5 fileURLWithPathComponents:v8];
  (*(v4 + 16))(v4, v9);

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __44__OSALog_iterateLogsWithOptions_usingBlock___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  v3 = v2;
  if ((*(a1 + 32) & 0x40) != 0 || ([v2 isEqualToString:@"Retired"] & 1) == 0)
  {
    if (*(a1 + 40) == 1)
    {
      v4 = [v3 hasPrefix:@"ProxiedDevice-"];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (id)commonFieldsForBody:(id)body
{
  v14[1] = *MEMORY[0x1E69E9840];
  bodyCopy = body;
  v13 = @"bug_type";
  v14[0] = bodyCopy;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v5 = [v4 mutableCopy];

  v6 = +[OSALog additionalRootsInstalled];
  if (v6)
  {
    [v5 addEntriesFromDictionary:v6];
  }

  v7 = +[OSASystemConfiguration sharedInstance];
  isInDeviceRecoveryEnvironment = [v7 isInDeviceRecoveryEnvironment];

  if (isInDeviceRecoveryEnvironment)
  {
    v9 = +[OSASystemConfiguration sharedInstance];
    recoveryModeReason = [v9 recoveryModeReason];
    [v5 setObject:recoveryModeReason forKeyedSubscript:@"device_in_recovery_mode_with_reason"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (void)createRetiredDirectory:(id)directory
{
  v11 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = directoryCopy;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Creating Retired directory in %@", buf, 0xCu);
  }

  fileSystemRepresentation = [directoryCopy fileSystemRepresentation];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__OSALog_createRetiredDirectory___block_invoke;
  v7[3] = &unk_1E7A27780;
  v8 = directoryCopy;
  v5 = directoryCopy;
  OSASafeOpenReadOnly(fileSystemRepresentation, v7);

  v6 = *MEMORY[0x1E69E9840];
}

void __33__OSALog_createRetiredDirectory___block_invoke(uint64_t a1, int a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  memset(&v7, 0, sizeof(v7));
  if (fstat(a2, &v7))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __33__OSALog_createRetiredDirectory___block_invoke_cold_1(a1);
    }

    v3 = 0;
  }

  else
  {
    v8 = @"file-owner-uid";
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7.st_uid];
    v9[0] = v4;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  v5 = [OSASystemConfiguration ensureUsablePath:*(a1 + 32) component:@"Retired" options:v3];
  [OSALog markPurgeableLevel:75780 path:v5];

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)createRetiredDirectoriesForUser:(id)user
{
  v35 = *MEMORY[0x1E69E9840];
  userCopy = user;
  array = [MEMORY[0x1E695DF70] array];
  v5 = +[OSASystemConfiguration sharedInstance];
  pathSubmission = [v5 pathSubmission];

  if ([pathSubmission length])
  {
    [array addObject:pathSubmission];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[OSALog createRetiredDirectoriesForUser:];
  }

  if (+[OSALog isDataVaultEnabled])
  {
    v7 = +[OSASystemConfiguration sharedInstance];
    pathSubmissionDataVault = [v7 pathSubmissionDataVault];

    if ([pathSubmissionDataVault length])
    {
      [array addObject:pathSubmissionDataVault];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[OSALog createRetiredDirectoriesForUser:];
    }
  }

  if (userCopy)
  {
    v9 = +[OSASystemConfiguration sharedInstance];
    v10 = [v9 pathSubmissionForOwner:userCopy];

    if ([v10 length])
    {
      [array addObject:v10];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[OSALog createRetiredDirectoriesForUser:];
    }
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = array;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        [array2 addObject:v17];
        v18 = [OSALog scanProxies:v17];
        [array2 addObjectsFromArray:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v14);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = array2;
  v20 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [OSALog createRetiredDirectory:*(*(&v25 + 1) + 8 * j), v25];
      }

      v21 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v21);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)initWithPath:forRouting:usingConfig:options:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)rename:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)markPurgeableLevel:(void *)a1 path:(uint64_t *)a2 .cold.1(void *a1, uint64_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  [a1 UTF8String];
  v3 = __error();
  strerror(*v3);
  v10 = *a2;
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
  v9 = *MEMORY[0x1E69E9840];
}

+ (void)locallyCreateForSubmission:metadata:options:error:writing:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)createForSubmission:metadata:options:error:writing:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)createForSubmission:metadata:options:error:writing:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "com.apple.osanalytics.osanalyticshelper";
  _os_log_fault_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Invalid connection to %s. Caller may need sandbox exception.", &v1, 0xCu);
  v0 = *MEMORY[0x1E69E9840];
}

+ (void)createForSubmission:metadata:options:error:writing:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "com.apple.osanalytics.osanalyticshelper";
  _os_log_fault_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Couldn't get XPC connection to %s", &v1, 0xCu);
  v0 = *MEMORY[0x1E69E9840];
}

void __61__OSALog_createForSubmission_metadata_options_error_writing___block_invoke_cold_1(void *a1, uint8_t *buf)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error while writing file: %{public}@", buf, 0xCu);
}

- (void)markWithKey:(uint64_t *)a1 value:.cold.1(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = *__error();
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
  v9 = *MEMORY[0x1E69E9840];
}

+ (void)markFile:withKey:value:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)markDescriptor:forKey:withObj:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  v1 = v0;
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)retire:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)retire:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __17__OSALog_retire___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 32);
  v2 = __error();
  strerror(*v2);
  v9 = *__error();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
  v8 = *MEMORY[0x1E69E9840];
}

void __25__OSALog_cleanupForUser___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 path];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __32__OSALog_scanLogs_from_options___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __32__OSALog_scanLogs_from_options___block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __76__OSALog_purgeLogs_withReason_includeRetired_deleteOnRetire_usingPredicate___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __76__OSALog_purgeLogs_withReason_includeRetired_deleteOnRetire_usingPredicate___block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void __76__OSALog_purgeLogs_withReason_includeRetired_deleteOnRetire_usingPredicate___block_invoke_2_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void __33__OSALog_createRetiredDirectory___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)createRetiredDirectoriesForUser:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end