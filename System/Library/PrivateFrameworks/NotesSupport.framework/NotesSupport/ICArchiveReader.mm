@interface ICArchiveReader
- (BOOL)moveContentsOfDirectory:(id)directory toDirectory:(id)toDirectory resultURLs:(id *)ls error:(id *)error;
- (BOOL)unarchiveResultURLs:(id *)ls error:(id *)error;
- (BOOL)unarchiveSourcePath:(id)path toDestinationPath:(id)destinationPath error:(id *)error;
- (ICArchiveReader)initWithSourceURL:(id)l destinationURL:(id)rL;
- (id)incrementalPathInDirectory:(id)directory withFilename:(id)filename andExtension:(id)extension;
- (id)temporaryDirectoryWithError:(id *)error;
@end

@implementation ICArchiveReader

- (ICArchiveReader)initWithSourceURL:(id)l destinationURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v14.receiver = self;
  v14.super_class = ICArchiveReader;
  v8 = [(ICArchiveReader *)&v14 init];
  if (v8)
  {
    path = [lCopy path];
    sourcePath = v8->_sourcePath;
    v8->_sourcePath = path;

    path2 = [rLCopy path];
    destinationPath = v8->_destinationPath;
    v8->_destinationPath = path2;

    v8->_writesTemporaryFilesInsideDestination = 1;
  }

  return v8;
}

- (BOOL)unarchiveResultURLs:(id *)ls error:(id *)error
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  destinationPath = [(ICArchiveReader *)self destinationPath];
  v9 = [defaultManager createDirectoryAtPath:destinationPath withIntermediateDirectories:1 attributes:0 error:error];

  if (v9)
  {
    v10 = [(ICArchiveReader *)self temporaryDirectoryWithError:error];
    if (v10 && [defaultManager createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:error])
    {
      sourcePath = [(ICArchiveReader *)self sourcePath];
      v12 = [(ICArchiveReader *)self unarchiveSourcePath:sourcePath toDestinationPath:v10 error:error];

      if (v12)
      {
        destinationPath2 = [(ICArchiveReader *)self destinationPath];
        v14 = [(ICArchiveReader *)self moveContentsOfDirectory:v10 toDirectory:destinationPath2 resultURLs:ls error:error];
      }

      else
      {
        v14 = 0;
      }

      [defaultManager removeItemAtPath:v10 error:0];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)temporaryDirectoryWithError:(id *)error
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  if ([(ICArchiveReader *)self writesTemporaryFilesInsideDestination])
  {
    destinationPath = [(ICArchiveReader *)self destinationPath];
    destinationPath2 = [MEMORY[0x1E696AEC0] stringWithFormat:@".%@", uUIDString];
    path = [destinationPath stringByAppendingPathComponent:destinationPath2];
  }

  else
  {
    destinationPath = [MEMORY[0x1E696AC08] defaultManager];
    v10 = MEMORY[0x1E695DFF8];
    destinationPath2 = [(ICArchiveReader *)self destinationPath];
    v11 = [v10 fileURLWithPath:destinationPath2];
    v12 = [destinationPath URLForDirectory:99 inDomain:1 appropriateForURL:v11 create:1 error:error];
    path = [v12 path];
  }

  return path;
}

- (BOOL)unarchiveSourcePath:(id)path toDestinationPath:(id)destinationPath error:(id *)error
{
  v63[2] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  destinationPathCopy = destinationPath;
  archive_read_new();
  archive_read_support_compression_all();
  archive_read_support_format_all();
  archive_write_disk_new();
  archive_write_disk_set_standard_lookup();
  skipsInvisibleHeaders = [(ICArchiveReader *)self skipsInvisibleHeaders];
  [pathCopy fileSystemRepresentation];
  [pathCopy length];
  open_filename = archive_read_open_filename();
  if (open_filename)
  {
    v12 = open_filename;
    v13 = MEMORY[0x1E696ABC0];
    v14 = open_filename;
    v55[0] = @"Unable to open archive";
    v15 = *MEMORY[0x1E696A588];
    v54[0] = *MEMORY[0x1E696A578];
    v54[1] = v15;
    v16 = pathCopy;
    errorCopy = error;
    v18 = destinationPathCopy;
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", archive_error_string()];
    v55[1] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
    v21 = [v13 errorWithDomain:@"com.apple.notes" code:v14 userInfo:v20];

    destinationPathCopy = v18;
    error = errorCopy;
    pathCopy = v16;
  }

  else
  {
    next_header = archive_read_next_header();
    if (next_header)
    {
      v12 = next_header;
      v21 = 0;
    }

    else
    {
      v49 = *MEMORY[0x1E696A578];
      v50 = *MEMORY[0x1E696A588];
      v23 = 0x1E696A000uLL;
      while (1)
      {
        context = objc_autoreleasePoolPush();
        v24 = v23;
        v25 = [*(v23 + 3776) stringWithUTF8String:archive_entry_pathname()];
        v26 = [destinationPathCopy stringByAppendingPathComponent:v25];
        [v26 fileSystemRepresentation];
        archive_entry_set_pathname();
        if (!skipsInvisibleHeaders || ([v25 hasPrefix:@"/."] & 1) == 0)
        {
          break;
        }

LABEL_16:

        objc_autoreleasePoolPop(context);
        v12 = archive_read_next_header();
        v21 = 0;
        v23 = v24;
        if (v12)
        {
          goto LABEL_21;
        }
      }

      v51 = v26;
      v52 = v25;
      v27 = archive_write_header();
      if (v27)
      {
        v12 = v27;
        v41 = MEMORY[0x1E696ABC0];
        v42 = v27;
        v56[0] = v49;
        v56[1] = v50;
        v57[0] = @"Unable to write header";
        v43 = [*(v24 + 3776) stringWithFormat:@"%s", archive_error_string()];
        v57[1] = v43;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];
        v44 = pathCopy;
        errorCopy2 = error;
        v47 = v46 = destinationPathCopy;
        v21 = [v41 errorWithDomain:@"com.apple.notes" code:v42 userInfo:v47];

        destinationPathCopy = v46;
        error = errorCopy2;
        pathCopy = v44;
      }

      else
      {
        v28 = v24;
        while (1)
        {
          data_block = archive_read_data_block();
          v12 = data_block;
          if (data_block)
          {
            break;
          }

          if (archive_write_data_block())
          {
            v30 = MEMORY[0x1E696ABC0];
            v62[0] = v49;
            v62[1] = v50;
            v63[0] = @"Unable to write data";
            v31 = [*(v24 + 3776) stringWithFormat:@"%s", archive_error_string()];
            v63[1] = v31;
            v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];
            v33 = [v30 errorWithDomain:@"com.apple.notes" code:-25 userInfo:v32];

            v28 = v24;
LABEL_18:
            v34 = MEMORY[0x1E696ABC0];
            v60[0] = v49;
            v60[1] = v50;
            v61[0] = @"Unable to read data";
            v35 = [*(v28 + 3776) stringWithFormat:@"%s", archive_error_string()];
            v61[1] = v35;
            v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];
            v37 = v34;
            v38 = v12;
            goto LABEL_19;
          }
        }

        if (data_block != 1)
        {
          goto LABEL_18;
        }

        if (!archive_write_finish_entry())
        {
          v26 = v51;
          v25 = v52;
          goto LABEL_16;
        }

        v48 = MEMORY[0x1E696ABC0];
        v58[0] = v49;
        v58[1] = v50;
        v59[0] = @"Unable to finish writing data";
        v35 = [*(v24 + 3776) stringWithFormat:@"%s", archive_error_string()];
        v59[1] = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
        v37 = v48;
        v38 = 1;
LABEL_19:
        v21 = [v37 errorWithDomain:@"com.apple.notes" code:v38 userInfo:v36];
      }

      objc_autoreleasePoolPop(context);
    }
  }

LABEL_21:
  archive_read_close();
  archive_read_finish();
  archive_write_close();
  archive_write_finish();
  if (error)
  {
    v39 = v21;
    *error = v21;
  }

  return v12 < 2;
}

- (BOOL)moveContentsOfDirectory:(id)directory toDirectory:(id)toDirectory resultURLs:(id *)ls error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  toDirectoryCopy = toDirectory;
  [MEMORY[0x1E696AC08] defaultManager];
  v40 = v39 = directoryCopy;
  v12 = [v40 contentsOfDirectoryAtPath:directoryCopy error:error];
  v13 = v12;
  errorCopy = error;
  if (*error)
  {
    v14 = 0;
  }

  else
  {
    lsCopy = ls;
    if (ls)
    {
      v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    }

    else
    {
      v15 = 0;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v33 = v13;
    obj = v13;
    v37 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v37)
    {
      v36 = *v43;
      v34 = v15;
      while (2)
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v43 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v42 + 1) + 8 * i);
          v18 = [v39 stringByAppendingPathComponent:{v17, lsCopy}];
          v19 = [toDirectoryCopy stringByAppendingPathComponent:v17];
          if ([(ICArchiveReader *)self overwrite])
          {
            v20 = v18;
            v21 = [MEMORY[0x1E695DFF8] fileURLWithPath:v18];
            v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:v19];
            v41 = 0;
            v23 = [v40 replaceItemAtURL:v22 withItemAtURL:v21 backupItemName:0 options:1 resultingItemURL:&v41 error:errorCopy];
            v24 = v41;
            v25 = v24;
            if (!v23)
            {

              path = v19;
              v15 = v34;
LABEL_21:

              v14 = 0;
              goto LABEL_22;
            }

            path = [v24 path];

            v15 = v34;
          }

          else
          {
            stringByDeletingPathExtension = [v17 stringByDeletingPathExtension];
            pathExtension = [v17 pathExtension];
            [(ICArchiveReader *)self incrementalPathInDirectory:toDirectoryCopy withFilename:stringByDeletingPathExtension andExtension:pathExtension];
            path = v20 = v18;

            if (([v40 moveItemAtPath:v18 toPath:path error:errorCopy] & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          v29 = [MEMORY[0x1E695DFF8] fileURLWithPath:path];
          [v15 addObject:v29];
        }

        v37 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v37)
        {
          continue;
        }

        break;
      }
    }

    if (v15)
    {
      v30 = v15;
      *lsCopy = v15;
    }

    v14 = 1;
LABEL_22:
    v13 = v33;
  }

  return v14;
}

- (id)incrementalPathInDirectory:(id)directory withFilename:(id)filename andExtension:(id)extension
{
  directoryCopy = directory;
  filenameCopy = filename;
  extensionCopy = extension;
  v10 = [directoryCopy stringByAppendingPathComponent:filenameCopy];
  if ([extensionCopy length])
  {
    v11 = [v10 stringByAppendingPathExtension:extensionCopy];

    v10 = v11;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:v10])
  {
    v13 = 2;
    do
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %lu", filenameCopy, v13];
      v15 = [directoryCopy stringByAppendingPathComponent:v14];

      if ([extensionCopy length])
      {
        v16 = [v15 stringByAppendingPathExtension:extensionCopy];

        v15 = v16;
      }

      ++v13;
      v10 = v15;
    }

    while (([defaultManager fileExistsAtPath:v15] & 1) != 0);
  }

  else
  {
    v15 = v10;
  }

  return v15;
}

@end