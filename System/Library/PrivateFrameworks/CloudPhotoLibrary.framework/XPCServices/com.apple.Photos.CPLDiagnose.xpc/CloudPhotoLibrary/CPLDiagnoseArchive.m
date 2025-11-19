@interface CPLDiagnoseArchive
- (CPLDiagnoseArchive)initWithPath:(id)a3 shouldCompress:(BOOL)a4;
- (int)addDirectoryToArchive:(id)a3 withDirName:(id)a4;
- (int)addFileToArchive:(id)a3 withFileName:(id)a4;
- (void)closeArchive;
@end

@implementation CPLDiagnoseArchive

- (CPLDiagnoseArchive)initWithPath:(id)a3 shouldCompress:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CPLDiagnoseArchive;
  v7 = [(CPLDiagnoseArchive *)&v13 init];
  if (v7)
  {
    v7->_archive = archive_write_new();
    v7->_archiveFd = -1;
    if (v4)
    {
      archive_write_add_filter_gzip();
    }

    else
    {
      archive_write_add_filter_none();
    }

    archive = v7->_archive;
    archive_write_set_format_pax();
    v9 = open_dprotected_np([v6 UTF8String], 514, 3, 0, 416);
    if (v9 < 0)
    {
      v9 = open_dprotected_np([v6 UTF8String], 514, 2, 0, 416);
    }

    v10 = v7->_archive;
    v11 = archive_write_open_fd();
    if (v11)
    {
      NSLog(@"Error creating archive at path %@ %d", v6, v11);

      v7 = 0;
    }

    else
    {
      v7->_archiveFd = v9;
    }
  }

  return v7;
}

- (int)addFileToArchive:(id)a3 withFileName:(id)a4
{
  v6 = a3;
  v7 = a4;
  memset(&v26, 0, sizeof(v26));
  v8 = [v6 UTF8String];
  if (!v8)
  {
    NSLog(@"No filename!");
LABEL_7:
    LODWORD(v12) = -1;
    goto LABEL_8;
  }

  v9 = v8;
  stat(v8, &v26);
  if (!archive_entry_new())
  {
    NSLog(@"archive_entry_new() failed!");
    goto LABEL_7;
  }

  archive_entry_copy_stat();
  [v7 UTF8String];
  archive_entry_set_pathname();
  archive = self->_archive;
  if (archive_write_header())
  {
    v11 = self->_archive;
    v12 = archive_errno();
    v13 = [v7 UTF8String];
    v14 = self->_archive;
    v15 = archive_error_string();
    NSLog(@"failed to write header for file, %s, status, %d, reason: %s", v13, v12, v15);
    archive_entry_free();
    goto LABEL_8;
  }

  v17 = open(v9, 0);
  if (v17 == -1)
  {
    v22 = __error();
    v23 = strerror(*v22);
    v24 = __error();
    NSLog(@"Error opening file %@:%s (%d)", v6, v23, *v24);
    archive_entry_free();
    goto LABEL_7;
  }

  v18 = v17;
  v19 = read(v17, v27, 0x2000uLL);
  if (v19 < 1)
  {
LABEL_14:
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = v19;
    while (1)
    {
      v20 = self->_archive;
      v21 = archive_write_data();
      if (v21 != v12)
      {
        break;
      }

      v12 = read(v18, v27, 0x2000uLL);
      if (v12 <= 0)
      {
        goto LABEL_14;
      }
    }

    NSLog(@"Error writing file %@: request to write %ld bytes but wrote %ld bytes", v6, v12, v21);
    v25 = self->_archive;
    LODWORD(v12) = archive_errno();
  }

  archive_entry_free();
  close(v18);
LABEL_8:

  return v12;
}

- (int)addDirectoryToArchive:(id)a3 withDirName:(id)a4
{
  v5 = a3;
  v26 = a4;
  v6 = +[NSFileManager defaultManager];
  v7 = [v6 contentsOfDirectoryAtPath:v5 error:0];

  if ([v7 count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v24 = v7;
      v11 = *v29;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          v27 = 0;
          v15 = [v5 stringByAppendingPathComponent:v13];
          v16 = +[NSFileManager defaultManager];
          v17 = [v16 fileExistsAtPath:v15 isDirectory:&v27];

          if (v17)
          {
            v18 = [v13 lastPathComponent];
            v19 = [v26 stringByAppendingPathComponent:v18];

            v20 = v27 == 1 ? [(CPLDiagnoseArchive *)self addDirectoryToArchive:v15 withDirName:v19]: [(CPLDiagnoseArchive *)self addFileToArchive:v15 withFileName:v19];
            v21 = v20;

            if (v21 == -30)
            {

              objc_autoreleasePoolPop(v14);
              v22 = -30;
              goto LABEL_17;
            }
          }

          objc_autoreleasePoolPop(v14);
        }

        v10 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v22 = 0;
LABEL_17:
      v7 = v24;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)closeArchive
{
  archive = self->_archive;
  archive_write_free();
  archiveFd = self->_archiveFd;
  if ((archiveFd & 0x80000000) == 0)
  {

    close(archiveFd);
  }
}

@end