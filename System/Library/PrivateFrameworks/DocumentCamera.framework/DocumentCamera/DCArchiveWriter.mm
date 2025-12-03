@interface DCArchiveWriter
- (BOOL)finish:(id *)finish;
- (BOOL)open:(id *)open;
- (BOOL)writeURL:(id)l isDirectory:(BOOL)directory error:(id *)error;
- (BOOL)writeURLs:(id)ls error:(id *)error;
- (DCArchiveWriter)initWithDestinationURL:(id)l baseURL:(id)rL;
- (void)dealloc;
@end

@implementation DCArchiveWriter

- (DCArchiveWriter)initWithDestinationURL:(id)l baseURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v15.receiver = self;
  v15.super_class = DCArchiveWriter;
  v9 = [(DCArchiveWriter *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_destinationURL, l);
    path = [rLCopy path];
    stringByStandardizingPath = [path stringByStandardizingPath];
    basePath = v10->_basePath;
    v10->_basePath = stringByStandardizingPath;
  }

  return v10;
}

- (void)dealloc
{
  if (self->_archive)
  {
    [(DCArchiveWriter *)self finish:0];
  }

  v3.receiver = self;
  v3.super_class = DCArchiveWriter;
  [(DCArchiveWriter *)&v3 dealloc];
}

- (BOOL)writeURLs:(id)ls error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  if (error)
  {
    *error = 0;
  }

  if (self->_archive || [(DCArchiveWriter *)self open:error])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = lsCopy;
    v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v24 = *v27;
      v9 = *MEMORY[0x277CBE868];
      v22 = lsCopy;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          v25 = 0;
          v12 = [v11 getResourceValue:&v25 forKey:v9 error:{error, v22}];
          v13 = v25;
          if (!v12)
          {
            goto LABEL_24;
          }

          path = [v11 path];
          stringByStandardizingPath = [path stringByStandardizingPath];

          if (![v13 BOOLValue] || (-[DCArchiveWriter basePath](self, "basePath"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(stringByStandardizingPath, "isEqualToString:", v16), v16, (v17 & 1) == 0))
          {
            if (!-[DCArchiveWriter writeURL:isDirectory:error:](self, "writeURL:isDirectory:error:", v11, [v13 BOOLValue], error))
            {

LABEL_24:
LABEL_25:
              v20 = 0;
              lsCopy = v22;
              goto LABEL_26;
            }
          }

          if ([v13 BOOLValue])
          {
            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            v19 = [defaultManager contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:0 options:0 error:error];

            LODWORD(defaultManager) = [(DCArchiveWriter *)self writeURLs:v19 error:error];
            if (!defaultManager)
            {
              goto LABEL_25;
            }
          }

          else
          {
          }
        }

        v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        v20 = 1;
        lsCopy = v22;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v20 = 1;
    }

LABEL_26:
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)finish:(id *)finish
{
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = archive_write_finish();
  v6 = v5;
  if (finish && v5)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA450];
    v14[0] = @"Unable to create archive";
    v9 = *MEMORY[0x277CCA470];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", archive_error_string(), v8, v9, @"Unable to create archive"];
    v14[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:2];
    *finish = [v7 errorWithDomain:@"com.apple.documentcamera" code:v6 userInfo:v11];
  }

  self->_archive = 0;
  return v6 == 0;
}

- (BOOL)open:(id *)open
{
  v17[2] = *MEMORY[0x277D85DE8];
  self->_archive = archive_write_new();
  if ([(DCArchiveWriter *)self usesCompression])
  {
    v5 = archive_write_set_compression_bzip2();
  }

  else
  {
    v5 = archive_write_set_compression_none();
  }

  v6 = v5;
  if (!v5)
  {
    v7 = [(DCArchiveWriter *)self usesCompression]? archive_write_set_format_pax() : archive_write_set_format_zip();
    v6 = v7;
    if (!v7)
    {
      destinationURL = [(DCArchiveWriter *)self destinationURL];
      path = [destinationURL path];
      [path fileSystemRepresentation];
      v6 = archive_write_open_filename();
    }
  }

  if (open && v6)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v17[0] = @"Unable to create archive";
    v12 = *MEMORY[0x277CCA470];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", archive_error_string(), v11, v12, @"Unable to create archive"];
    v17[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:2];
    *open = [v10 errorWithDomain:@"com.apple.documentcamera" code:v6 userInfo:v14];
  }

  return v6 == 0;
}

- (BOOL)writeURL:(id)l isDirectory:(BOOL)directory error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v42 = 0;
  [lCopy getResourceValue:&v42 forKey:*MEMORY[0x277CBE8B0] error:error];
  v8 = v42;
  bOOLValue = [v8 BOOLValue];
  v41 = 0;
  [lCopy getResourceValue:&v41 forKey:*MEMORY[0x277CBE868] error:error];
  v10 = v41;
  if (!-[DCArchiveWriter flatten](self, "flatten") || ([v10 BOOLValue] & 1) == 0)
  {
    path = [lCopy path];
    stringByStandardizingPath = [path stringByStandardizingPath];

    memset(&v40, 0, sizeof(v40));
    if (lstat([stringByStandardizingPath fileSystemRepresentation], &v40))
    {
      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
        *error = v11 = 0;
LABEL_29:

        goto LABEL_30;
      }

LABEL_23:
      v11 = 0;
      goto LABEL_29;
    }

    if ([stringByStandardizingPath hasPrefix:@"/private/var/folders/"])
    {
      v14 = [stringByStandardizingPath substringFromIndex:{objc_msgSend(@"/private/var/folders/", "length")}];
      v15 = [@"/var/folders/" stringByAppendingString:v14];

      stringByStandardizingPath = v15;
    }

    if ([(DCArchiveWriter *)self flatten])
    {
      flattenFolderName = [(DCArchiveWriter *)self flattenFolderName];
      v17 = [(__CFString *)flattenFolderName length];
      v18 = @"archive";
      if (v17)
      {
        v18 = flattenFolderName;
      }

      v38 = v8;
      v19 = v10;
      v20 = bOOLValue;
      v21 = v18;
      lastPathComponent = [stringByStandardizingPath lastPathComponent];
      v23 = [(__CFString *)v21 stringByAppendingPathComponent:lastPathComponent];

      bOOLValue = v20;
      v10 = v19;
      v8 = v38;

      stringByStandardizingPath = lastPathComponent;
    }

    else
    {
      basePath = [(DCArchiveWriter *)self basePath];
      v25 = [stringByStandardizingPath hasPrefix:basePath];

      if (!v25)
      {
LABEL_16:
        [stringByStandardizingPath fileSystemRepresentation];
        archive_entry_new();
        archive_entry_copy_stat();
        if (bOOLValue)
        {
          v39 = bOOLValue;
          path2 = [lCopy path];
          v27 = readlink([path2 fileSystemRepresentation], v45, 0x3FFuLL);

          if (v27 != -1)
          {
            v45[v27] = 0;
            archive_entry_set_symlink();
          }

          LOBYTE(bOOLValue) = v39;
        }

        archive_entry_set_pathname();
        v28 = archive_write_header();
        if (!v28)
        {
          if ((bOOLValue & 1) == 0)
          {
            path3 = [lCopy path];
            v36 = open([path3 fileSystemRepresentation], 0);

            if (read(v36, v45, 0x2000uLL) >= 1)
            {
              do
              {
                archive_write_data();
              }

              while (read(v36, v45, 0x2000uLL) > 0);
            }

            close(v36);
          }

          archive_entry_free();
          v11 = 1;
          goto LABEL_29;
        }

        if (error)
        {
          v29 = MEMORY[0x277CCA9B8];
          v30 = v28;
          v31 = *MEMORY[0x277CCA450];
          v44[0] = @"Unable to write archive header";
          v32 = *MEMORY[0x277CCA470];
          v43[0] = v31;
          v43[1] = v32;
          v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", archive_error_string()];
          v44[1] = v33;
          v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
          *error = [v29 errorWithDomain:@"com.apple.documentcamera" code:v30 userInfo:v34];
        }

        goto LABEL_23;
      }

      flattenFolderName = [(DCArchiveWriter *)self basePath];
      v23 = [stringByStandardizingPath substringFromIndex:{-[__CFString length](flattenFolderName, "length")}];
    }

    stringByStandardizingPath = v23;
    goto LABEL_16;
  }

  v11 = 1;
LABEL_30:

  return v11;
}

@end