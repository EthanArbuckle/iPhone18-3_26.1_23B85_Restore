@interface _EARLmBuilder
+ (id)buildLmWithConfig:(id)config root:(id)root data:(id)data dir:(id)dir shouldStop:(id)stop;
+ (id)generateNgramCountsWithConfig:(id)config root:(id)root data:(id)data;
+ (id)loadLmFromDir:(id)dir;
+ (void)removeLmDir:(id)dir;
@end

@implementation _EARLmBuilder

+ (id)buildLmWithConfig:(id)config root:(id)root data:(id)data dir:(id)dir shouldStop:(id)stop
{
  v22 = *MEMORY[0x1E69E9840];
  configCopy = config;
  rootCopy = root;
  dataCopy = data;
  dirCopy = dir;
  stopCopy = stop;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v17 = [defaultManager fileExistsAtPath:configCopy];

  if (v17)
  {
    if (configCopy)
    {
      [configCopy ear_toString];
      if (!rootCopy)
      {
        goto LABEL_9;
      }
    }

    else
    {
      buf = 0uLL;
      v21 = 0;
      if (!rootCopy)
      {
LABEL_9:
        quasar::makeLmBuildConfig();
      }
    }

    [rootCopy ear_toString];
    goto LABEL_9;
  }

  v18 = EarLmLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = configCopy;
    _os_log_impl(&dword_1B501D000, v18, OS_LOG_TYPE_DEFAULT, "File does not exist %@", &buf, 0xCu);
  }

  return 0;
}

+ (id)loadLmFromDir:(id)dir
{
  v17 = *MEMORY[0x1E69E9840];
  dirCopy = dir;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  LOBYTE(v9) = 0;
  v11 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:dirCopy];

  if (v5)
  {
    if (dirCopy)
    {
      [dirCopy ear_toString];
    }

    else
    {
      buf = 0uLL;
      v13 = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    quasar::loadLmFromDirectory(&buf);
  }

  v6 = EarLmLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = dirCopy;
    _os_log_impl(&dword_1B501D000, v6, OS_LOG_TYPE_DEFAULT, "File does not exist %@", &buf, 0xCu);
  }

  if (v11 == 1 && v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v14);
  }

  return 0;
}

+ (void)removeLmDir:(id)dir
{
  __p[3] = *MEMORY[0x1E69E9840];
  dirCopy = dir;
  if (dirCopy)
  {
    [dirCopy ear_toString];
  }

  else
  {
    memset(__p, 0, 24);
  }

  quasar::removeLm(__p);
}

+ (id)generateNgramCountsWithConfig:(id)config root:(id)root data:(id)data
{
  configCopy = config;
  rootCopy = root;
  dataCopy = data;
  if (configCopy)
  {
    [configCopy ear_toString];
    if (!rootCopy)
    {
      goto LABEL_5;
    }
  }

  else if (!rootCopy)
  {
LABEL_5:
    quasar::makeLmBuildConfig();
  }

  [rootCopy ear_toString];
  goto LABEL_5;
}

@end