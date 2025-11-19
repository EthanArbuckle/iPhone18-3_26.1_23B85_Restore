@interface ICArchiveWriter
- (BOOL)finish:(id *)a3;
- (BOOL)open:(id *)a3;
- (BOOL)writeURL:(id)a3 isDirectory:(BOOL)a4 error:(id *)a5;
- (BOOL)writeURLs:(id)a3 error:(id *)a4;
- (ICArchiveWriter)initWithDestinationURL:(id)a3 baseURL:(id)a4;
- (void)dealloc;
@end

@implementation ICArchiveWriter

- (ICArchiveWriter)initWithDestinationURL:(id)a3 baseURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = ICArchiveWriter;
  v9 = [(ICArchiveWriter *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_destinationURL, a3);
    v11 = [v8 path];
    v12 = [v11 stringByStandardizingPath];
    basePath = v10->_basePath;
    v10->_basePath = v12;
  }

  return v10;
}

- (void)dealloc
{
  if (self->_archive)
  {
    [(ICArchiveWriter *)self finish:0];
  }

  v3.receiver = self;
  v3.super_class = ICArchiveWriter;
  [(ICArchiveWriter *)&v3 dealloc];
}

- (BOOL)writeURLs:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  if (self->_archive || [(ICArchiveWriter *)self open:a4])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v24 = *v27;
      v9 = *MEMORY[0x1E695DB78];
      v22 = v6;
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
          v12 = [v11 getResourceValue:&v25 forKey:v9 error:{a4, v22}];
          v13 = v25;
          if (!v12)
          {
            goto LABEL_24;
          }

          v14 = [v11 path];
          v15 = [v14 stringByStandardizingPath];

          if (![v13 BOOLValue] || (-[ICArchiveWriter basePath](self, "basePath"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqualToString:", v16), v16, (v17 & 1) == 0))
          {
            if (!-[ICArchiveWriter writeURL:isDirectory:error:](self, "writeURL:isDirectory:error:", v11, [v13 BOOLValue], a4))
            {

LABEL_24:
LABEL_25:
              v20 = 0;
              v6 = v22;
              goto LABEL_26;
            }
          }

          if ([v13 BOOLValue])
          {
            v18 = [MEMORY[0x1E696AC08] defaultManager];
            v19 = [v18 contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:0 options:0 error:a4];

            LODWORD(v18) = [(ICArchiveWriter *)self writeURLs:v19 error:a4];
            if (!v18)
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
        v6 = v22;
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

- (BOOL)finish:(id *)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = archive_write_finish();
  v6 = v5;
  if (a3 && v5)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A578];
    v14[0] = @"Unable to create archive";
    v9 = *MEMORY[0x1E696A588];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", archive_error_string(), v8, v9, @"Unable to create archive"];
    v14[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:2];
    *a3 = [v7 errorWithDomain:@"com.apple.notes" code:v6 userInfo:v11];
  }

  self->_archive = 0;
  return v6 == 0;
}

- (BOOL)open:(id *)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  self->_archive = archive_write_new();
  if ([(ICArchiveWriter *)self usesCompression])
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
    v7 = [(ICArchiveWriter *)self usesCompression]? archive_write_set_format_pax() : archive_write_set_format_zip();
    v6 = v7;
    if (!v7)
    {
      v8 = [(ICArchiveWriter *)self destinationURL];
      v9 = [v8 path];
      [v9 fileSystemRepresentation];
      v6 = archive_write_open_filename();
    }
  }

  if (a3 && v6)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v17[0] = @"Unable to create archive";
    v12 = *MEMORY[0x1E696A588];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", archive_error_string(), v11, v12, @"Unable to create archive"];
    v17[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:2];
    *a3 = [v10 errorWithDomain:@"com.apple.notes" code:v6 userInfo:v14];
  }

  return v6 == 0;
}

- (BOOL)writeURL:(id)a3 isDirectory:(BOOL)a4 error:(id *)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v43 = 0;
  [v7 getResourceValue:&v43 forKey:*MEMORY[0x1E695DBC8] error:a5];
  v8 = v43;
  v9 = [v8 BOOLValue];
  v42 = 0;
  [v7 getResourceValue:&v42 forKey:*MEMORY[0x1E695DB78] error:a5];
  v10 = v42;
  if (!-[ICArchiveWriter flatten](self, "flatten") || ([v10 BOOLValue] & 1) == 0)
  {
    v12 = [v7 path];
    v13 = [v12 stringByStandardizingPath];

    memset(&v41, 0, sizeof(v41));
    if (lstat([v13 fileSystemRepresentation], &v41))
    {
      if (a5)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
        *a5 = v11 = 0;
LABEL_29:

        goto LABEL_30;
      }

LABEL_23:
      v11 = 0;
      goto LABEL_29;
    }

    if ([v13 hasPrefix:@"/private/var/folders/"])
    {
      v14 = [v13 substringFromIndex:{objc_msgSend(@"/private/var/folders/", "length")}];
      v15 = [@"/var/folders/" stringByAppendingString:v14];

      v13 = v15;
    }

    if ([(ICArchiveWriter *)self flatten])
    {
      v16 = [(ICArchiveWriter *)self flattenFolderName];
      v17 = [v16 ic_sanitizedFilenameString];

      v18 = [(__CFString *)v17 length];
      v19 = @"archive";
      if (v18)
      {
        v19 = v17;
      }

      v39 = v8;
      v20 = v10;
      v21 = v9;
      v22 = v19;
      v23 = [v13 lastPathComponent];
      v24 = [(__CFString *)v22 stringByAppendingPathComponent:v23];

      v9 = v21;
      v10 = v20;
      v8 = v39;

      v13 = v23;
    }

    else
    {
      v25 = [(ICArchiveWriter *)self basePath];
      v26 = [v13 hasPrefix:v25];

      if (!v26)
      {
LABEL_16:
        [v13 fileSystemRepresentation];
        archive_entry_new();
        archive_entry_copy_stat();
        if (v9)
        {
          v40 = v9;
          v27 = [v7 path];
          v28 = readlink([v27 fileSystemRepresentation], v46, 0x3FFuLL);

          if (v28 != -1)
          {
            v46[v28] = 0;
            archive_entry_set_symlink();
          }

          LOBYTE(v9) = v40;
        }

        archive_entry_set_pathname();
        v29 = archive_write_header();
        if (!v29)
        {
          if ((v9 & 1) == 0)
          {
            v36 = [v7 path];
            v37 = open([v36 fileSystemRepresentation], 0);

            if (read(v37, v46, 0x2000uLL) >= 1)
            {
              do
              {
                archive_write_data();
              }

              while (read(v37, v46, 0x2000uLL) > 0);
            }

            close(v37);
          }

          archive_entry_free();
          v11 = 1;
          goto LABEL_29;
        }

        if (a5)
        {
          v30 = MEMORY[0x1E696ABC0];
          v31 = v29;
          v32 = *MEMORY[0x1E696A578];
          v45[0] = @"Unable to write archive header";
          v33 = *MEMORY[0x1E696A588];
          v44[0] = v32;
          v44[1] = v33;
          v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", archive_error_string()];
          v45[1] = v34;
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
          *a5 = [v30 errorWithDomain:@"com.apple.notes" code:v31 userInfo:v35];
        }

        goto LABEL_23;
      }

      v17 = [(ICArchiveWriter *)self basePath];
      v24 = [v13 substringFromIndex:{-[__CFString length](v17, "length")}];
    }

    v13 = v24;
    goto LABEL_16;
  }

  v11 = 1;
LABEL_30:

  return v11;
}

@end