@interface DEArchive
- (BOOL)addFile:(id)a3 withPathName:(id)a4 progressHandler:(id)a5;
- (DEArchive)initWithURL:(id)a3;
- (archive)archiverForUrl:(id)a3;
- (void)closeArchive;
- (void)dealloc;
@end

@implementation DEArchive

- (DEArchive)initWithURL:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = DEArchive;
  v6 = [(DEArchive *)&v14 init];
  if (v6)
  {
    v13 = 0;
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v5 path];
    [v7 fileExistsAtPath:v8 isDirectory:&v13];

    if (v13 == 1)
    {
      [DEUtils tarGzForDirectoryUrl:v5];
    }

    else
    {
      [v5 URLByAppendingPathExtension:@"tar.gz"];
    }
    v9 = ;
    tarGzUrl = v6->_tarGzUrl;
    v6->_tarGzUrl = v9;

    objc_storeStrong(&v6->_sourceDir, a3);
    v6->_hasClosedArchive = 0;
    if (!v6->_tarGzUrl)
    {
      v11 = 0;
      goto LABEL_9;
    }

    v6->_archive = [(DEArchive *)v6 archiverForUrl:?];
  }

  v11 = v6;
LABEL_9:

  return v11;
}

- (BOOL)addFile:(id)a3 withPathName:(id)a4 progressHandler:(id)a5
{
  v5 = MEMORY[0x28223BE20](self, a2, a3, a4, a5);
  v7 = v6;
  v9 = v8;
  v10 = v5;
  v50 = *MEMORY[0x277D85DE8];
  v12 = v11;
  v13 = v9;
  v14 = v7;
  if (!v10[1])
  {
    v18 = +[DELogging fwHandle];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v22 = "archive is nil";
LABEL_15:
    _os_log_impl(&dword_248AB3000, v18, OS_LOG_TYPE_INFO, v22, buf, 2u);
    goto LABEL_16;
  }

  if (!v10[3])
  {
    v18 = +[DELogging fwHandle];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v22 = "tar.gz for archive is nil";
    goto LABEL_15;
  }

  if (v10[4])
  {
    v45 = 0;
    v15 = *MEMORY[0x277CBE868];
    v44 = 0;
    [v12 getResourceValue:&v45 forKey:v15 error:&v44];
    v16 = v45;
    v17 = v44;
    if (v17)
    {
      v18 = v17;
      v19 = +[DELogging fwHandle];
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
LABEL_8:

LABEL_22:
        v23 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v20 = [v18 description];
      *buf = 138412546;
      v47 = v20;
      v48 = 2112;
      v49 = v12;
      v21 = "Error [%@] getting NSURLIsDirectoryKey for url [%@]";
LABEL_7:
      _os_log_impl(&dword_248AB3000, v19, OS_LOG_TYPE_INFO, v21, buf, 0x16u);

      goto LABEL_8;
    }

    if ([v16 BOOLValue])
    {
      v24 = +[DELogging fwHandle];
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
LABEL_21:

        v18 = 0;
        goto LABEL_22;
      }

      *buf = 138412290;
      v47 = v12;
      v25 = "Archiver received a directory [%@]";
LABEL_20:
      _os_log_impl(&dword_248AB3000, v24, OS_LOG_TYPE_INFO, v25, buf, 0xCu);
      goto LABEL_21;
    }

    v43 = 0;
    v28 = [v12 checkResourceIsReachableAndReturnError:&v43];
    v29 = v43;
    if (v29)
    {
      v18 = v29;
      v19 = +[DELogging fwHandle];
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        goto LABEL_8;
      }

      v20 = [v18 description];
      *buf = 138412546;
      v47 = v20;
      v48 = 2112;
      v49 = v12;
      v21 = "Error [%@] getting checkResourceIsReachableAndReturnError for url [%@]";
      goto LABEL_7;
    }

    if ((v28 & 1) == 0)
    {
      v24 = +[DELogging fwHandle];
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      *buf = 138412290;
      v47 = v12;
      v25 = "Error, [%@] is not reachable";
      goto LABEL_20;
    }

    memset(&v42, 0, sizeof(v42));
    v30 = [v12 path];
    stat([v30 UTF8String], &v42);
    if (archive_entry_new())
    {
      archive_entry_copy_stat();
      [v13 UTF8String];
      archive_entry_set_pathname();
      v31 = v10[1];
      if (archive_write_header())
      {
        v32 = v10[1];
        archive_errno();
        v33 = +[DELogging fwHandle];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [DEArchive addFile:v13 withPathName:? progressHandler:?];
        }
      }

      else
      {
        v35 = open([v30 UTF8String], 0);
        if (v35 != -1)
        {
          v36 = v35;
          if (v14)
          {
            v14[2](v14, 0);
          }

          v37 = read(v36, buf, 0x2000uLL);
          if (v37 >= 1)
          {
            v38 = v37;
            v39 = 0;
            do
            {
              v40 = v10[1];
              archive_write_data();
              v39 += v38;
              if (v14)
              {
                v14[2](v14, v39);
              }

              v38 = read(v36, buf, 0x2000uLL);
            }

            while (v38 > 0);
          }

          archive_entry_free();
          close(v36);
          v23 = 1;
          goto LABEL_41;
        }

        v41 = +[DELogging fwHandle];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          [DEArchive addFile:v13 withPathName:? progressHandler:?];
        }
      }

      archive_entry_free();
    }

    else
    {
      v34 = +[DELogging fwHandle];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [DEArchive addFile:v34 withPathName:? progressHandler:?];
      }
    }

    v23 = 0;
LABEL_41:

    v18 = 0;
    goto LABEL_23;
  }

  v18 = +[DELogging fwHandle];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v22 = "sourceDir is nil";
    goto LABEL_15;
  }

LABEL_16:
  v23 = 0;
LABEL_24:

  v26 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)closeArchive
{
  self->_hasClosedArchive = 1;
  if (self->_archive)
  {
    archive_write_close();
    archive = self->_archive;

    MEMORY[0x2821F71A0](archive);
  }
}

- (void)dealloc
{
  if (!self->_hasClosedArchive)
  {
    [(DEArchive *)self closeArchive];
  }

  v3.receiver = self;
  v3.super_class = DEArchive;
  [(DEArchive *)&v3 dealloc];
}

- (archive)archiverForUrl:(id)a3
{
  v4 = a3;
  if ([v4 checkResourceIsReachableAndReturnError:0])
  {
    v5 = +[DELogging fwHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [DEArchive archiverForUrl:v4];
    }

    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0;
    [v6 removeItemAtURL:v4 error:&v14];
    v7 = v14;

    if (v7)
    {
      v8 = +[DELogging fwHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [DEArchive archiverForUrl:v7];
      }
    }
  }

  v9 = archive_write_new();
  archive_write_add_filter_gzip();
  archive_write_set_format_pax();
  v10 = [v4 path];
  [v10 UTF8String];
  v11 = archive_write_open_filename();

  if (v11)
  {
    v12 = +[DELogging fwHandle];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DEArchive archiverForUrl:];
    }

    v9 = 0;
  }

  else
  {
    self->_hasClosedArchive = 0;
  }

  return v9;
}

- (void)addFile:(void *)a1 withPathName:progressHandler:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addFile:(void *)a1 withPathName:progressHandler:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  v7 = *__error();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)archiverForUrl:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)archiverForUrl:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)archiverForUrl:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 1024;
  v5 = v0;
  _os_log_error_impl(&dword_248AB3000, v1, OS_LOG_TYPE_ERROR, "Error creating archive at path %{public}@ %d", v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

@end