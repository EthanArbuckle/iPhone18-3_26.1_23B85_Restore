@interface _EARLmBuilder
+ (id)buildLmWithConfig:(id)a3 root:(id)a4 data:(id)a5 dir:(id)a6 shouldStop:(id)a7;
+ (id)generateNgramCountsWithConfig:(id)a3 root:(id)a4 data:(id)a5;
+ (id)loadLmFromDir:(id)a3;
+ (void)removeLmDir:(id)a3;
@end

@implementation _EARLmBuilder

+ (id)buildLmWithConfig:(id)a3 root:(id)a4 data:(id)a5 dir:(id)a6 shouldStop:(id)a7
{
  v22 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [MEMORY[0x1E696AC08] defaultManager];
  v17 = [v16 fileExistsAtPath:v11];

  if (v17)
  {
    if (v11)
    {
      [v11 ear_toString];
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
      buf = 0uLL;
      v21 = 0;
      if (!v12)
      {
LABEL_9:
        quasar::makeLmBuildConfig();
      }
    }

    [v12 ear_toString];
    goto LABEL_9;
  }

  v18 = EarLmLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1B501D000, v18, OS_LOG_TYPE_DEFAULT, "File does not exist %@", &buf, 0xCu);
  }

  return 0;
}

+ (id)loadLmFromDir:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  LOBYTE(v9) = 0;
  v11 = 0;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    if (v3)
    {
      [v3 ear_toString];
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
    *(&buf + 4) = v3;
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

+ (void)removeLmDir:(id)a3
{
  __p[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    [v3 ear_toString];
  }

  else
  {
    memset(__p, 0, 24);
  }

  quasar::removeLm(__p);
}

+ (id)generateNgramCountsWithConfig:(id)a3 root:(id)a4 data:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    [v7 ear_toString];
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  else if (!v8)
  {
LABEL_5:
    quasar::makeLmBuildConfig();
  }

  [v8 ear_toString];
  goto LABEL_5;
}

@end