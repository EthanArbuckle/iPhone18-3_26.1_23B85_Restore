@interface WFArchiveReader
- (WFArchiveReader)initWithArchiveFile:(id)file error:(id *)error;
- (id)enumerateArchiveFilePathsWithError:(id *)error;
- (id)extractArchiveToDestinationURL:(id)l error:(id *)error;
@end

@implementation WFArchiveReader

- (id)enumerateArchiveFilePathsWithError:(id *)error
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

  else if (error)
  {
    WFLastArchiveError();
    *error = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)extractArchiveToDestinationURL:(id)l error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  lCopy = l;
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
    lastPathComponent = [v6 lastPathComponent];
    if (([lastPathComponent hasPrefix:@"__MACOSX"] & 1) != 0 || (objc_msgSend(lastPathComponent, "lastPathComponent"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @".DS_Store"), v8, v9))
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
      if (error)
      {
        v20 = MEMORY[0x277CCA9B8];
        v28 = v24;
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"The item couldn't be extracted because the file path %@ is invalid.", v6];
        v29 = v21;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        *error = [v20 errorWithDomain:v25 code:514 userInfo:v22];
      }

LABEL_35:
      v18 = v27;

      v19 = 0;
      goto LABEL_36;
    }

    v11 = [lCopy URLByAppendingPathComponent:v6];
    v12 = v11;
    if (!v11 || ([v11 wf_proposedFileIsContainedByDirectoryAtURL:lCopy] & 1) == 0)
    {
      goto LABEL_31;
    }

    path = [v12 path];
    [path fileSystemRepresentation];
    archive_entry_set_pathname();

    if (archive_read_extract())
    {
      if (error)
      {
        *error = WFLastArchiveError();
      }

      goto LABEL_35;
    }

    pathComponents = [v6 pathComponents];
    firstObject = [pathComponents firstObject];
    if ([firstObject isEqualToString:@"/"])
    {
      if ([pathComponents count] < 2)
      {

        firstObject = 0;
        goto LABEL_21;
      }

      v16 = [pathComponents objectAtIndex:1];

      firstObject = v16;
    }

    if (firstObject)
    {
      v17 = [lCopy URLByAppendingPathComponent:firstObject];
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
    if (error)
    {
      WFLastArchiveError();
      *error = v19 = 0;
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

- (WFArchiveReader)initWithArchiveFile:(id)file error:(id *)error
{
  fileCopy = file;
  v23.receiver = self;
  v23.super_class = WFArchiveReader;
  v7 = [(WFArchiveReader *)&v23 init];
  if (v7)
  {
    v7->_archive = archive_read_new();
    archive_read_support_compression_all();
    filename = [fileCopy filename];
    pathExtension = [filename pathExtension];
    if (([pathExtension isEqualToString:@"gz"] & 1) == 0 && !objc_msgSend(pathExtension, "isEqualToString:", @"xz"))
    {
      goto LABEL_6;
    }

    stringByDeletingPathExtension = [filename stringByDeletingPathExtension];
    pathExtension2 = [stringByDeletingPathExtension pathExtension];
    if ([pathExtension2 length])
    {
      v12 = MEMORY[0x277D79F68];
      stringByDeletingPathExtension2 = [filename stringByDeletingPathExtension];
      v14 = [v12 typeFromFilename:stringByDeletingPathExtension2];
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
    representationType = [fileCopy representationType];
    if (representationType == 1)
    {
      fileURL = [fileCopy fileURL];
      path = [fileURL path];
      [path fileSystemRepresentation];
      open_filename = archive_read_open_filename();

      if (open_filename)
      {
        if (error)
        {
          WFLastArchiveError();
          *error = v16 = 0;
LABEL_22:

          goto LABEL_23;
        }

LABEL_19:
        v16 = 0;
        goto LABEL_22;
      }
    }

    else if (!representationType)
    {
      data = [fileCopy data];
      [data bytes];
      [data length];
      if (archive_read_open_memory())
      {
        if (error)
        {
          *error = WFLastArchiveError();
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