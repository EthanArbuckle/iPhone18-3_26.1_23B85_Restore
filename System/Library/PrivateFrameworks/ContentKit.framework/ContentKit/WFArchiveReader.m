@interface WFArchiveReader
- (WFArchiveReader)initWithArchiveFile:(id)a3 error:(id *)a4;
- (id)enumerateArchiveFilePathsWithError:(id *)a3;
- (id)extractArchiveToDestinationURL:(id)a3 error:(id *)a4;
@end

@implementation WFArchiveReader

- (id)enumerateArchiveFilePathsWithError:(id *)a3
{
  v4 = objc_opt_new();
  while (1)
  {
    next_header = archive_read_next_header();
    if (next_header)
    {
      break;
    }

    v6 = WFPathFromArchiveEntry();
    [v4 addObject:v6];
  }

  if (next_header == 1)
  {
    v7 = v4;
  }

  else if (a3)
  {
    WFLastArchiveError();
    *a3 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)extractArchiveToDestinationURL:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = objc_opt_new();
  v25 = *MEMORY[0x277CCA050];
  v24 = *MEMORY[0x277CCA450];
  while (1)
  {
    next_header = archive_read_next_header();
    if (next_header)
    {
      break;
    }

    v6 = WFPathFromArchiveEntry();
    v7 = [v6 lastPathComponent];
    if (([v7 hasPrefix:@"__MACOSX"] & 1) != 0 || (objc_msgSend(v7, "lastPathComponent"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @".DS_Store"), v8, v9))
    {
      archive_read_data_skip();
      goto LABEL_23;
    }

    v10 = getWFLibArchiveLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v31 = "[WFArchiveReader extractArchiveToDestinationURL:error:]";
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_21E1BD000, v10, OS_LOG_TYPE_DEFAULT, "%s Reading archive entry for %@", buf, 0x16u);
    }

    if (!v6)
    {
      v12 = 0;
LABEL_31:
      if (a4)
      {
        v20 = MEMORY[0x277CCA9B8];
        v28 = v24;
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"The item couldn't be extracted because the file path %@ is invalid.", v6];
        v29 = v21;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        *a4 = [v20 errorWithDomain:v25 code:514 userInfo:v22];
      }

LABEL_35:
      v18 = v27;

      v19 = 0;
      goto LABEL_36;
    }

    v11 = [v4 URLByAppendingPathComponent:v6];
    v12 = v11;
    if (!v11 || ([v11 wf_proposedFileIsContainedByDirectoryAtURL:v4] & 1) == 0)
    {
      goto LABEL_31;
    }

    v13 = [v12 path];
    [v13 fileSystemRepresentation];
    archive_entry_set_pathname();

    if (archive_read_extract())
    {
      if (a4)
      {
        *a4 = WFLastArchiveError();
      }

      goto LABEL_35;
    }

    v14 = [v6 pathComponents];
    v15 = [v14 firstObject];
    if ([v15 isEqualToString:@"/"])
    {
      if ([v14 count] < 2)
      {

        v15 = 0;
        goto LABEL_21;
      }

      v16 = [v14 objectAtIndex:1];

      v15 = v16;
    }

    if (v15)
    {
      v17 = [v4 URLByAppendingPathComponent:v15];
      if (v17)
      {
        if (([v27 containsObject:v17] & 1) == 0)
        {
          [v27 addObject:v17];
        }
      }

      goto LABEL_22;
    }

LABEL_21:
    v17 = 0;
LABEL_22:

LABEL_23:
  }

  if (next_header == 1)
  {
    v18 = v27;
    v19 = v27;
  }

  else
  {
    if (a4)
    {
      WFLastArchiveError();
      *a4 = v19 = 0;
    }

    else
    {
      v19 = 0;
    }

    v18 = v27;
  }

LABEL_36:

  return v19;
}

- (WFArchiveReader)initWithArchiveFile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v23.receiver = self;
  v23.super_class = WFArchiveReader;
  v7 = [(WFArchiveReader *)&v23 init];
  if (v7)
  {
    v7->_archive = archive_read_new();
    archive_read_support_compression_all();
    v8 = [v6 filename];
    v9 = [v8 pathExtension];
    if (([v9 isEqualToString:@"gz"] & 1) == 0 && !objc_msgSend(v9, "isEqualToString:", @"xz"))
    {
      goto LABEL_6;
    }

    v10 = [v8 stringByDeletingPathExtension];
    v11 = [v10 pathExtension];
    if ([v11 length])
    {
      v12 = MEMORY[0x277D79F68];
      v13 = [v8 stringByDeletingPathExtension];
      v14 = [v12 typeFromFilename:v13];
      v15 = [v14 conformsToUTType:*MEMORY[0x277CE1CF8]];

      if (v15)
      {
LABEL_6:
        archive_read_support_format_all();
        goto LABEL_10;
      }
    }

    else
    {
    }

    archive_read_support_format_raw();
LABEL_10:
    v17 = [v6 representationType];
    if (v17 == 1)
    {
      v19 = [v6 fileURL];
      v20 = [v19 path];
      [v20 fileSystemRepresentation];
      open_filename = archive_read_open_filename();

      if (open_filename)
      {
        if (a4)
        {
          WFLastArchiveError();
          *a4 = v16 = 0;
LABEL_22:

          goto LABEL_23;
        }

LABEL_19:
        v16 = 0;
        goto LABEL_22;
      }
    }

    else if (!v17)
    {
      v18 = [v6 data];
      [v18 bytes];
      [v18 length];
      if (archive_read_open_memory())
      {
        if (a4)
        {
          *a4 = WFLastArchiveError();
        }

        goto LABEL_19;
      }
    }

    v16 = v7;
    goto LABEL_22;
  }

  v16 = 0;
LABEL_23:

  return v16;
}

@end