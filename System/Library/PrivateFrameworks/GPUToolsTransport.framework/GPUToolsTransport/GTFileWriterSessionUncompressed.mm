@interface GTFileWriterSessionUncompressed
+ (id)sessionWithFileEntries:(id)entries relativeToURL:(id)l options:(id)options error:(id *)error;
- (BOOL)_closeCurrentFileDescriptor:(id *)descriptor;
- (BOOL)_writeUncompressedFileData:(const char *)data length:(unint64_t)length error:(id *)error;
- (BOOL)finish:(id *)finish;
- (GTFileWriterSessionUncompressed)initWithFileEntries:(id)entries relativeToURL:(id)l options:(id)options error:(id *)error;
- (int)_getCurrentFileDescriptor:(id *)descriptor;
- (int)_openNextFile:(id *)file;
- (void)writeFileData:(id)data completionHandler:(id)handler;
@end

@implementation GTFileWriterSessionUncompressed

+ (id)sessionWithFileEntries:(id)entries relativeToURL:(id)l options:(id)options error:(id *)error
{
  optionsCopy = options;
  lCopy = l;
  entriesCopy = entries;
  v13 = [[self alloc] initWithFileEntries:entriesCopy relativeToURL:lCopy options:optionsCopy error:error];

  return v13;
}

- (GTFileWriterSessionUncompressed)initWithFileEntries:(id)entries relativeToURL:(id)l options:(id)options error:(id *)error
{
  v96 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  lCopy = l;
  optionsCopy = options;
  v85.receiver = self;
  v85.super_class = GTFileWriterSessionUncompressed;
  v14 = [(GTFileWriterSessionUncompressed *)&v85 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_53;
  }

  objc_storeStrong(&v14->_fileEntries, entries);
  objc_storeStrong(&v15->_baseURL, l);
  v15->_currentFileIndex = 0;
  v15->_currentFileBytesWritten = 0;
  v15->_fd = -1;
  v16 = entriesCopy;
  v81 = lCopy;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v16;
  v84 = [obj countByEnumeratingWithState:&v87 objects:v91 count:16];
  if (!v84)
  {
    v17 = 0;
    v37 = 1;
    goto LABEL_50;
  }

  errorCopy = error;
  v76 = v15;
  v77 = optionsCopy;
  v78 = lCopy;
  v17 = 0;
  v83 = *v88;
  v18 = *MEMORY[0x277CCA450];
  v79 = *MEMORY[0x277CCA450];
  v80 = *MEMORY[0x277CCA5B8];
  v19 = v81;
  do
  {
    v20 = 0;
    v21 = v17;
    do
    {
      if (*v88 != v83)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v87 + 1) + 8 * v20);
      v23 = objc_autoreleasePoolPush();
      v86 = v21;
      v24 = v22;
      v25 = MEMORY[0x277CBEBC0];
      v26 = v19;
      v27 = [v25 alloc];
      path = [v24 path];
      v29 = [v27 initFileURLWithPath:path isDirectory:0 relativeToURL:v26];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      uRLByDeletingLastPathComponent = [v29 URLByDeletingLastPathComponent];
      LODWORD(v26) = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v86];

      if (!v26)
      {
LABEL_20:
        v37 = 0;
        goto LABEL_44;
      }

      destination = [v24 destination];

      if (destination)
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        path2 = [v29 path];
        destination2 = [v24 destination];
        v36 = [defaultManager2 createSymbolicLinkAtPath:path2 withDestinationPath:destination2 error:&v86];

        if ((v36 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v38 = objc_alloc_init(MEMORY[0x277CBEA90]);
        v39 = [v38 writeToURL:v29 options:0 error:&v86];

        if (!v39)
        {
          goto LABEL_20;
        }

        v40 = open([v29 fileSystemRepresentation], 1, 0);
        if (v40 < 0)
        {
          v45 = *__error();
          if (GTCoreLogUseOsLog())
          {
            v46 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v29;
              v94 = 1024;
              v95 = v45;
              _os_log_error_impl(&dword_24DBC9000, v46, OS_LOG_TYPE_ERROR, "Failed to open file %@ for writing (%d)", buf, 0x12u);
            }
          }

          else
          {
            v50 = *MEMORY[0x277D85DF8];
            v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to open file %@ for writing (%d)", v29, v45];
            fprintf(v50, "%s\n", [v46 UTF8String]);
          }

          v51 = v45;

          v52 = MEMORY[0x277CCA9B8];
          v92 = v79;
          v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to open file %@ for writing", v29];
          *buf = v53;
          v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v92 count:1];
          v55 = v52;
          v56 = v80;
          v57 = v51;
          goto LABEL_41;
        }

        v41 = v40;
        if (ftruncate(v40, [v24 fileSize]) < 0)
        {
          v47 = *__error();
          v74 = entriesCopy;
          if (GTCoreLogUseOsLog())
          {
            v48 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v29;
              v94 = 1024;
              v95 = v47;
              _os_log_error_impl(&dword_24DBC9000, v48, OS_LOG_TYPE_ERROR, "Failed to resize file %@ (%d)", buf, 0x12u);
            }

            v49 = 0x277CCA000;
          }

          else
          {
            v61 = *MEMORY[0x277D85DF8];
            v49 = 0x277CCA000uLL;
            v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to resize file %@ (%d)", v29, v47];
            fprintf(v61, "%s\n", [v48 UTF8String]);
          }

          v62 = v47;

          v63 = MEMORY[0x277CCA9B8];
          v92 = v79;
          v64 = [*(v49 + 3240) stringWithFormat:@"Failed to resize file %@", v29];
          *buf = v64;
          v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v92 count:1];
          v86 = [v63 errorWithDomain:v80 code:v62 userInfo:v65];

          close(v41);
          v37 = 0;
          entriesCopy = v74;
          goto LABEL_43;
        }

        if (fsync(v41) < 0)
        {
          v58 = *__error();
          if (GTCoreLogUseOsLog())
          {
            v59 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v29;
              v94 = 1024;
              v95 = v58;
              _os_log_error_impl(&dword_24DBC9000, v59, OS_LOG_TYPE_ERROR, "Failed to flush file %@ (%d)", buf, 0x12u);
            }

            v60 = 0x277CCA000;
          }

          else
          {
            v66 = *MEMORY[0x277D85DF8];
            v60 = 0x277CCA000uLL;
            v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to flush file %@ (%d)", v29, v58];
            fprintf(v66, "%s\n", [v59 UTF8String]);
          }

          v67 = v58;

          v68 = MEMORY[0x277CCA9B8];
          v92 = v79;
          [*(v60 + 3240) stringWithFormat:@"Failed to flush file %@", v29];
          v53 = LABEL_40:;
          *buf = v53;
          v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v92 count:1];
          v55 = v68;
          v56 = v80;
          v57 = v67;
LABEL_41:
          v86 = [v55 errorWithDomain:v56 code:v57 userInfo:v54];

LABEL_42:
          v37 = 0;
          goto LABEL_43;
        }

        if (close(v41) < 0)
        {
          v42 = *__error();
          if (GTCoreLogUseOsLog())
          {
            v43 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v29;
              v94 = 1024;
              v95 = v42;
              _os_log_error_impl(&dword_24DBC9000, v43, OS_LOG_TYPE_ERROR, "Failed to close file %@ (%d)", buf, 0x12u);
            }

            v44 = 0x277CCA000;
          }

          else
          {
            v69 = *MEMORY[0x277D85DF8];
            v44 = 0x277CCA000uLL;
            v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to close file %@ (%d)", v29, v42];
            fprintf(v69, "%s\n", [v43 UTF8String]);
          }

          v67 = v42;

          v68 = MEMORY[0x277CCA9B8];
          v92 = v79;
          [*(v44 + 3240) stringWithFormat:@"Failed to close file %@", v29];
          goto LABEL_40;
        }
      }

      v37 = 1;
LABEL_43:
      v19 = v81;
LABEL_44:

      v17 = v86;
      objc_autoreleasePoolPop(v23);
      if (!v37)
      {
        goto LABEL_48;
      }

      ++v20;
      v21 = v17;
    }

    while (v84 != v20);
    v84 = [obj countByEnumeratingWithState:&v87 objects:v91 count:16];
  }

  while (v84);
  v37 = 1;
LABEL_48:
  optionsCopy = v77;
  lCopy = v78;
  error = errorCopy;
  v15 = v76;
LABEL_50:

  if (error)
  {
    v70 = v17;
    *error = v17;
  }

  if (v37)
  {
LABEL_53:
    v71 = v15;
  }

  else
  {
    v71 = 0;
  }

  v72 = *MEMORY[0x277D85DE8];
  return v71;
}

- (int)_openNextFile:(id *)file
{
  v33[1] = *MEMORY[0x277D85DE8];
  currentFileIndex = self->_currentFileIndex;
  if (currentFileIndex >= [(NSArray *)self->_fileEntries count])
  {
    v6 = 0;
LABEL_9:
    if (GTCoreLogUseOsLog())
    {
      v10 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [GTFileWriterSessionUncompressed _openNextFile:];
      }

      if (file)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v15 = *MEMORY[0x277D85DF8];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"No more files to write to"];
      fprintf(v15, "%s\n", [v16 UTF8String]);

      if (file)
      {
LABEL_13:
        v11 = MEMORY[0x277CCA9B8];
        v12 = *MEMORY[0x277CCA5B8];
        v32 = *MEMORY[0x277CCA450];
        v33[0] = @"No more files to write to";
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
        *file = [v11 errorWithDomain:v12 code:2 userInfo:v13];
LABEL_14:
        v14 = -1;
        goto LABEL_15;
      }
    }

    v14 = -1;
    goto LABEL_18;
  }

  v6 = 0;
  while (1)
  {
    v7 = v6;
    v6 = [(NSArray *)self->_fileEntries objectAtIndexedSubscript:self->_currentFileIndex];

    destination = [v6 destination];
    if (!destination)
    {
      break;
    }

LABEL_6:
    v9 = self->_currentFileIndex + 1;
    self->_currentFileIndex = v9;
    if (v9 >= [(NSArray *)self->_fileEntries count])
    {
      goto LABEL_9;
    }
  }

  if (![v6 fileSize])
  {
    goto LABEL_6;
  }

  v19 = objc_alloc(MEMORY[0x277CBEBC0]);
  path = [v6 path];
  v13 = [v19 initFileURLWithPath:path isDirectory:0 relativeToURL:self->_baseURL];

  v21 = open([v13 fileSystemRepresentation], 1, 0);
  if (v21 < 0)
  {
    if (GTCoreLogUseOsLog())
    {
      v22 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [GTFileWriterSessionUncompressed _openNextFile:];
      }
    }

    else
    {
      v23 = *MEMORY[0x277D85DF8];
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to open file %@ for writing", v13];
      fprintf(v23, "%s\n", [v24 UTF8String]);
    }

    if (file)
    {
      v25 = MEMORY[0x277CCA9B8];
      v26 = *MEMORY[0x277CCA5B8];
      v27 = *__error();
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to open file %@ for writing", v13, *MEMORY[0x277CCA450]];
      v31 = v28;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      *file = [v25 errorWithDomain:v26 code:v27 userInfo:v29];
    }

    goto LABEL_14;
  }

  v14 = v21;
LABEL_15:

LABEL_18:
  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)writeFileData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v11 = [dataCopy2 length];

  v13 = 0;
  [(GTFileWriterSessionUncompressed *)self _writeUncompressedFileData:bytes length:v11 error:&v13];
  v12 = v13;
  handlerCopy[2](handlerCopy, v12);
}

- (BOOL)_writeUncompressedFileData:(const char *)data length:(unint64_t)length error:(id *)error
{
  v33[1] = *MEMORY[0x277D85DE8];
  if (length)
  {
    v9 = 0;
    while (1)
    {
      v10 = [(GTFileWriterSessionUncompressed *)self _getCurrentFileDescriptor:error];
      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      v11 = v10;
      v12 = length - v9;
      v13 = [(NSArray *)self->_fileEntries objectAtIndexedSubscript:self->_currentFileIndex];
      v14 = [v13 fileSize] - self->_currentFileBytesWritten;

      v15 = 0;
      if (length - v9 >= v14)
      {
        v12 = v14;
      }

      do
      {
        v16 = write(v11, &data[v9 + v15], v12 - v15);
        if (v16 < 0)
        {
          goto LABEL_14;
        }

        v15 += v16;
      }

      while (v15 != v12);
      if ((v12 & 0x8000000000000000) != 0)
      {
        break;
      }

      currentFileIndex = self->_currentFileIndex;
      v18 = self->_currentFileBytesWritten + v12;
      self->_currentFileBytesWritten = v18;
      v19 = [(NSArray *)self->_fileEntries objectAtIndexedSubscript:currentFileIndex];
      fileSize = [v19 fileSize];

      if (v18 == fileSize)
      {
        v21 = [(GTFileWriterSessionUncompressed *)self _closeCurrentFileDescriptor:error];
        if (!v21)
        {
          goto LABEL_22;
        }

        ++self->_currentFileIndex;
        self->_currentFileBytesWritten = 0;
      }

      v9 += v12;
      if (v9 >= length)
      {
        goto LABEL_13;
      }
    }

LABEL_14:
    if (GTCoreLogUseOsLog())
    {
      v22 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [GTFileWriterSessionUncompressed _writeUncompressedFileData:length:error:];
      }

      if (!error)
      {
LABEL_21:
        LOBYTE(v21) = 0;
        goto LABEL_22;
      }
    }

    else
    {
      v23 = *MEMORY[0x277D85DF8];
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to write to fd (%d)", v11];
      fprintf(v23, "%s\n", [v24 UTF8String]);

      if (!error)
      {
        goto LABEL_21;
      }
    }

    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA5B8];
    v27 = *__error();
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to write to fd (%d)", v11, *MEMORY[0x277CCA450]];
    v33[0] = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    *error = [v25 errorWithDomain:v26 code:v27 userInfo:v29];

    goto LABEL_21;
  }

LABEL_13:
  LOBYTE(v21) = 1;
LABEL_22:
  v30 = *MEMORY[0x277D85DE8];
  return v21;
}

- (int)_getCurrentFileDescriptor:(id *)descriptor
{
  result = self->_fd;
  if (result < 0)
  {
    result = [(GTFileWriterSessionUncompressed *)self _openNextFile:descriptor];
    self->_fd = result;
  }

  return result;
}

- (BOOL)finish:(id *)finish
{
  baseURL = self->_baseURL;
  self->_baseURL = 0;

  fileEntries = self->_fileEntries;
  self->_fileEntries = 0;

  self->_currentFileIndex = 0;
  self->_currentFileBytesWritten = 0;

  return [(GTFileWriterSessionUncompressed *)self _closeCurrentFileDescriptor:finish];
}

- (BOOL)_closeCurrentFileDescriptor:(id *)descriptor
{
  v26[1] = *MEMORY[0x277D85DE8];
  fd = self->_fd;
  if ((fd & 0x80000000) != 0)
  {
    goto LABEL_4;
  }

  self->_fd = -1;
  if (fsync(fd) < 0)
  {
    if (GTCoreLogUseOsLog())
    {
      v7 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [GTFileWriterSessionUncompressed _closeCurrentFileDescriptor:];
      }

      if (!descriptor)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v10 = *MEMORY[0x277D85DF8];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to flush fd (%d)", fd];
      fprintf(v10, "%s\n", [v11 UTF8String]);

      if (!descriptor)
      {
        goto LABEL_20;
      }
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA5B8];
    v14 = *__error();
    v25 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to flush fd (%d)", fd];
    v26[0] = v15;
    v16 = MEMORY[0x277CBEAC0];
    v17 = v26;
    v18 = &v25;
LABEL_19:
    v21 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
    *descriptor = [v12 errorWithDomain:v13 code:v14 userInfo:v21];

    goto LABEL_20;
  }

  v5 = close(fd);
  if ((v5 & 0x80000000) != 0)
  {
    v8 = v5;
    if (GTCoreLogUseOsLog())
    {
      v9 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [GTFileWriterSessionUncompressed _closeCurrentFileDescriptor:];
      }

      if (!descriptor)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    v19 = *MEMORY[0x277D85DF8];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to close fd (%d), status %d", fd, v8];
    fprintf(v19, "%s\n", [v20 UTF8String]);

    if (descriptor)
    {
LABEL_18:
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA5B8];
      v14 = *__error();
      v23 = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to close fd (%d), status %d", fd, v8];
      v24 = v15;
      v16 = MEMORY[0x277CBEAC0];
      v17 = &v24;
      v18 = &v23;
      goto LABEL_19;
    }

LABEL_20:
    result = 0;
    goto LABEL_21;
  }

LABEL_4:
  result = 1;
LABEL_21:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_openNextFile:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_writeUncompressedFileData:length:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_closeCurrentFileDescriptor:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_closeCurrentFileDescriptor:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

@end