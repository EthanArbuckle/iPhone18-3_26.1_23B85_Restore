@interface WFArchiveWriter
- (BOOL)finishWithError:(id *)a3;
- (BOOL)writeArchiveEntry:(id)a3 error:(id *)a4;
- (WFArchiveWriter)initWithDestinationURL:(id)a3 format:(id)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation WFArchiveWriter

- (void)dealloc
{
  archive_write_finish();
  v3.receiver = self;
  v3.super_class = WFArchiveWriter;
  [(WFArchiveWriter *)&v3 dealloc];
}

- (BOOL)finishWithError:(id *)a3
{
  v4 = archive_write_close();
  v5 = v4;
  if (a3 && v4)
  {
    *a3 = WFLastArchiveError();
  }

  return v5 == 0;
}

- (BOOL)writeArchiveEntry:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [v5 entry];
  archive_write_header();
  v6 = [v5 dataProvider];
  if (v6)
  {
    v7 = getWFLibArchiveLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = WFPathFromArchiveEntry();
      v19 = 136315394;
      v20 = "[WFArchiveWriter writeArchiveEntry:error:]";
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_21E1BD000, v7, OS_LOG_TYPE_DEFAULT, "%s Writing archive entry for %@", &v19, 0x16u);
    }

    v9 = v6[2](v6);
    if (v9)
    {
      v10 = archive_entry_size();
      v11 = v10;
      if (v10 >= 0x4000)
      {
        v12 = 0x4000;
      }

      else
      {
        v12 = v10;
      }

      v13 = malloc_type_malloc(v12, 0x3436D47CuLL);
      [v9 open];
      v14 = 0;
      while (v14 < v11)
      {
        v15 = [v9 read:v13 maxLength:v12];
        if (v15 < 1)
        {
          break;
        }

        v14 += v15;
        if (archive_write_data() == -1)
        {
          if (a4)
          {
            *a4 = WFLastArchiveError();
          }

          free(v13);
          goto LABEL_20;
        }
      }

      free(v13);
      v17 = [v9 streamError];

      if (!v17)
      {
        [v9 close];
        v16 = 1;
        goto LABEL_21;
      }

      if (a4)
      {
        *a4 = [v9 streamError];
      }

      [v9 close];
    }

LABEL_20:
    v16 = 0;
LABEL_21:
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (WFArchiveWriter)initWithDestinationURL:(id)a3 format:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFLibArchive.m" lineNumber:208 description:{@"Invalid parameter not satisfying: %@", @"fileURL"}];
  }

  v22.receiver = self;
  v22.super_class = WFArchiveWriter;
  v11 = [(WFArchiveWriter *)&v22 init];
  if (!v11)
  {
    goto LABEL_23;
  }

  v11->_archive = archive_write_new();
  v12 = v10;
  if (([v12 isEqualToString:@"gz"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"tar.gz"))
  {
    v13 = archive_write_set_compression_gzip();
  }

  else if (([v12 isEqualToString:@"xz"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"tar.xz"))
  {
    v13 = archive_write_set_compression_xz();
  }

  else
  {
    if (([v12 isEqualToString:@"tar.bz2"] & 1) == 0)
    {

      goto LABEL_15;
    }

    v13 = archive_write_set_compression_bzip2();
  }

  v14 = v13;

  if (v14)
  {

    goto LABEL_21;
  }

LABEL_15:
  v15 = v12;
  if (([v15 isEqualToString:@"tar"] & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @"tar.gz") & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @"tar.bz2") & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @"tar.xz") & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @"zip") & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @"cpio") & 1) == 0)
  {
    [v15 isEqualToString:@"iso"];
  }

  v16 = archive_write_set_format();
  if (!v16)
  {
    v17 = [v9 path];
    [v17 fileSystemRepresentation];
    v18 = archive_write_open_filename();

    if (!v18)
    {
      v19 = v11;
      goto LABEL_24;
    }
  }

LABEL_21:
  if (!a5)
  {
LABEL_23:
    v19 = 0;
    goto LABEL_24;
  }

  WFLastArchiveError();
  *a5 = v19 = 0;
LABEL_24:

  return v19;
}

@end