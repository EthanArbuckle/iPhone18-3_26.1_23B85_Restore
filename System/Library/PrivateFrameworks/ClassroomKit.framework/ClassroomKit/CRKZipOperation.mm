@interface CRKZipOperation
- (BOOL)createDestinationDirectoryWithError:(id *)error;
- (BOOL)populateArchive:(archive *)archive error:(id *)error;
- (BOOL)populateArchive:(archive *)archive usingDisk:(archive *)disk error:(id *)error;
- (BOOL)validateParametersWithError:(id *)error;
- (BOOL)writeArchiveOfDirectoryAtURL:(id)l toURL:(id)rL error:(id *)error;
- (BOOL)writeDataForFTSEntry:(id)entry toArchive:(archive *)archive fileDescriptor:(int)descriptor error:(id *)error;
- (BOOL)writeDataFromFileDescriptor:(int)descriptor toArchive:(archive *)archive usingBuffer:(id)buffer error:(id *)error;
- (BOOL)writeFTSEntry:(id)entry toArchive:(archive *)archive usingDisk:(archive *)disk error:(id *)error;
- (BOOL)writeHeaderForFTSEntry:(id)entry toArchive:(archive *)archive usingDisk:(archive *)disk fileDescriptor:(int)descriptor error:(id *)error;
- (CRKZipOperation)initWithDirectoryURL:(id)l;
- (CRKZipOperation)initWithDirectoryURL:(id)l destinationZipName:(id)name;
- (CRKZipOperation)initWithDirectoryURL:(id)l destinationZipURL:(id)rL;
- (archive)makeArchiveWithError:(id *)error;
- (const)relativePathForPathOnDisk:(id)disk;
- (id)errorFromArchive:(archive *)archive;
- (int64_t)lengthOfBufferForFileDescriptor:(int)descriptor stat:(stat *)stat;
- (void)finalizeArchive:(archive *)archive;
- (void)main;
@end

@implementation CRKZipOperation

- (CRKZipOperation)initWithDirectoryURL:(id)l
{
  v4 = MEMORY[0x277CCAD78];
  lCopy = l;
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];
  v8 = [uUIDString stringByAppendingPathExtension:@"zip"];

  v9 = [(CRKZipOperation *)self initWithDirectoryURL:lCopy destinationZipName:v8];
  return v9;
}

- (CRKZipOperation)initWithDirectoryURL:(id)l destinationZipName:(id)name
{
  nameCopy = name;
  lCopy = l;
  if (![nameCopy length])
  {
    [CRKZipOperation initWithDirectoryURL:a2 destinationZipName:self];
  }

  crk_uniqueTemporaryDirectoryURL = [MEMORY[0x277CBEBC0] crk_uniqueTemporaryDirectoryURL];
  v10 = [crk_uniqueTemporaryDirectoryURL URLByAppendingPathComponent:nameCopy];

  v11 = [(CRKZipOperation *)self initWithDirectoryURL:lCopy destinationZipURL:v10];
  return v11;
}

- (CRKZipOperation)initWithDirectoryURL:(id)l destinationZipURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v10 = rLCopy;
  if (lCopy)
  {
    if (rLCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CRKZipOperation initWithDirectoryURL:a2 destinationZipURL:self];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [CRKZipOperation initWithDirectoryURL:a2 destinationZipURL:self];
LABEL_3:
  v14.receiver = self;
  v14.super_class = CRKZipOperation;
  v11 = [(CRKZipOperation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_directoryURL, l);
    objc_storeStrong(&v12->_destinationZipFileURL, rL);
  }

  return v12;
}

- (void)main
{
  v14 = 0;
  v3 = [(CRKZipOperation *)self validateParametersWithError:&v14];
  v4 = v14;
  v5 = v4;
  if (!v3)
  {
    goto LABEL_5;
  }

  v13 = v4;
  v6 = [(CRKZipOperation *)self createDestinationDirectoryWithError:&v13];
  v7 = v13;

  if (!v6)
  {
    [(CRKZipOperation *)self endOperationWithError:v7];
    v5 = v7;
    goto LABEL_7;
  }

  directoryURL = [(CRKZipOperation *)self directoryURL];
  destinationZipFileURL = [(CRKZipOperation *)self destinationZipFileURL];
  v12 = v7;
  v10 = [(CRKZipOperation *)self writeArchiveOfDirectoryAtURL:directoryURL toURL:destinationZipFileURL error:&v12];
  v5 = v12;

  if (v10)
  {
    destinationZipFileURL2 = [(CRKZipOperation *)self destinationZipFileURL];
    [(CRKZipOperation *)self endOperationWithResultObject:destinationZipFileURL2];
  }

  else
  {
LABEL_5:
    [(CRKZipOperation *)self endOperationWithError:v5];
  }

LABEL_7:
}

- (BOOL)validateParametersWithError:(id *)error
{
  directoryURL = [(CRKZipOperation *)self directoryURL];
  fileSystemRepresentation = [directoryURL fileSystemRepresentation];

  if (fileSystemRepresentation)
  {
    destinationZipFileURL = [(CRKZipOperation *)self destinationZipFileURL];
    fileSystemRepresentation2 = [destinationZipFileURL fileSystemRepresentation];

    result = fileSystemRepresentation2 != 0;
    if (error && !fileSystemRepresentation2)
    {
      v10 = &unk_285672360;
LABEL_7:
      v11 = CRKErrorWithCodeAndUserInfo(2, v10);
      v12 = v11;
      result = 0;
      *error = v11;
    }
  }

  else
  {
    if (error)
    {
      v10 = &unk_285672338;
      goto LABEL_7;
    }

    return 0;
  }

  return result;
}

- (BOOL)createDestinationDirectoryWithError:(id *)error
{
  destinationZipFileURL = [(CRKZipOperation *)self destinationZipFileURL];
  uRLByDeletingLastPathComponent = [destinationZipFileURL URLByDeletingLastPathComponent];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(error) = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:error];

  return error;
}

- (BOOL)writeArchiveOfDirectoryAtURL:(id)l toURL:(id)rL error:(id *)error
{
  v7 = [(CRKZipOperation *)self makeArchiveWithError:error, rL];
  if (v7)
  {
    v8 = v7;
    v9 = [(CRKZipOperation *)self populateArchive:v7 error:error];
    [(CRKZipOperation *)self finalizeArchive:v8];
    LOBYTE(v7) = v9;
  }

  return v7;
}

- (archive)makeArchiveWithError:(id *)error
{
  v5 = archive_write_new();
  archive_write_set_format_zip();
  if (archive_write_set_options())
  {
    v6 = _CRKLogGeneral_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CRKZipOperation *)self makeArchiveWithError:v5];
    }
  }

  destinationZipFileURL = [(CRKZipOperation *)self destinationZipFileURL];
  [destinationZipFileURL fileSystemRepresentation];
  v8 = archive_write_open_filename();

  if (v8)
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    }

    free(v5);
    return 0;
  }

  return v5;
}

- (void)finalizeArchive:(archive *)archive
{
  if (archive_write_free())
  {
    v5 = _CRKLogGeneral_0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CRKZipOperation *)self finalizeArchive:archive];
    }
  }
}

- (BOOL)populateArchive:(archive *)archive error:(id *)error
{
  disk_new = archive_read_disk_new();
  archive_read_disk_set_standard_lookup();
  v8 = [(CRKZipOperation *)self populateArchive:archive usingDisk:disk_new error:error];
  if (archive_read_free())
  {
    v9 = _CRKLogGeneral_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CRKZipOperation populateArchive:disk_new error:?];
    }
  }

  return v8;
}

- (BOOL)populateArchive:(archive *)archive usingDisk:(archive *)disk error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = [CRKFTSEnumeration alloc];
  directoryURL = [(CRKZipOperation *)self directoryURL];
  path = [directoryURL path];
  v12 = [(CRKFTSEnumeration *)v9 initWithDirectoryPath:path];

  v13 = [(CRKFTSEnumeration *)v12 entriesWithError:error];
  v14 = v13;
  if (v13)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v13;
    v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v26 = v14;
      v27 = v12;
      errorCopy = error;
      v17 = 0;
      v18 = *v32;
      while (2)
      {
        v19 = 0;
        v20 = v17;
        do
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v31 + 1) + 8 * v19);
          v22 = objc_autoreleasePoolPush();
          v30 = v20;
          LODWORD(v21) = [(CRKZipOperation *)self writeFTSEntry:v21 toArchive:archive usingDisk:disk error:&v30];
          v17 = v30;

          objc_autoreleasePoolPop(v22);
          if (!v21)
          {
            v23 = 0;
            goto LABEL_12;
          }

          ++v19;
          v20 = v17;
        }

        while (v16 != v19);
        v16 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

      v23 = 1;
LABEL_12:
      v12 = v27;
      error = errorCopy;
      v14 = v26;
    }

    else
    {
      v17 = 0;
      v23 = 1;
    }

    if (error)
    {
      v24 = v17;
      *error = v17;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)writeFTSEntry:(id)entry toArchive:(archive *)archive usingDisk:(archive *)disk error:(id *)error
{
  entryCopy = entry;
  v11 = MEMORY[0x277CCA9F8];
  v12 = MEMORY[0x277CBEBC0];
  path = [entryCopy path];
  v14 = [v12 fileURLWithPath:path];
  v15 = [v11 fileHandleForReadingFromURL:v14 error:error];

  v17 = v15 && (v16 = [v15 fileDescriptor], -[CRKZipOperation writeHeaderForFTSEntry:toArchive:usingDisk:fileDescriptor:error:](self, "writeHeaderForFTSEntry:toArchive:usingDisk:fileDescriptor:error:", entryCopy, archive, disk, v16, error)) && -[CRKZipOperation writeDataForFTSEntry:toArchive:fileDescriptor:error:](self, "writeDataForFTSEntry:toArchive:fileDescriptor:error:", entryCopy, archive, v16, error);
  return v17;
}

- (BOOL)writeHeaderForFTSEntry:(id)entry toArchive:(archive *)archive usingDisk:(archive *)disk fileDescriptor:(int)descriptor error:(id *)error
{
  entryCopy = entry;
  archive_entry_new();
  path = [entryCopy path];
  [(CRKZipOperation *)self relativePathForPathOnDisk:path];
  archive_entry_set_pathname();

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  if (entryCopy)
  {
    [entryCopy stat];
  }

  if (!archive_read_disk_entry_from_file())
  {
    if (!archive_write_header())
    {
      v13 = 1;
      goto LABEL_10;
    }

    disk = archive;
    if (error)
    {
      goto LABEL_5;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_10;
  }

  if (!error)
  {
    goto LABEL_8;
  }

LABEL_5:
  [(CRKZipOperation *)self errorFromArchive:disk, v15, v16, v17, v18, v19, v20, v21, v22, v23];
  *error = v13 = 0;
LABEL_10:
  archive_entry_free();

  return v13;
}

- (const)relativePathForPathOnDisk:(id)disk
{
  diskCopy = disk;
  fileSystemRepresentation = [disk fileSystemRepresentation];
  directoryURL = [(CRKZipOperation *)self directoryURL];
  path = [directoryURL path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
  v10 = strlen([stringByDeletingLastPathComponent fileSystemRepresentation]);

  return (fileSystemRepresentation + v10 + 1);
}

- (BOOL)writeDataForFTSEntry:(id)entry toArchive:(archive *)archive fileDescriptor:(int)descriptor error:(id *)error
{
  v7 = *&descriptor;
  if (entry)
  {
    [entry stat];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  v10 = [(CRKZipOperation *)self lengthOfBufferForFileDescriptor:v7 stat:v14];
  v11 = [MEMORY[0x277CBEB28] dataWithLength:v10];
  v12 = [(CRKZipOperation *)self writeDataFromFileDescriptor:v7 toArchive:archive usingBuffer:v11 error:error];

  return v12;
}

- (int64_t)lengthOfBufferForFileDescriptor:(int)descriptor stat:(stat *)stat
{
  v5 = [CRKChunkedFile preferredChunkSizeForFileDescriptor:*&descriptor];
  if (v5 >= stat->st_size)
  {
    st_size = stat->st_size;
  }

  else
  {
    st_size = v5;
  }

  if (v5 <= 0)
  {
    return stat->st_size;
  }

  else
  {
    return st_size;
  }
}

- (BOOL)writeDataFromFileDescriptor:(int)descriptor toArchive:(archive *)archive usingBuffer:(id)buffer error:(id *)error
{
  v8 = *&descriptor;
  bufferCopy = buffer;
  v11 = [[CRKChunkedFile alloc] initWithFileDescriptor:v8];
  do
  {
    v12 = [(CRKChunkedFile *)v11 readNextChunkIntoBuffer:bufferCopy error:error];
    if (v12 < 1)
    {
      v13 = v12 == 0;
      goto LABEL_8;
    }

    [bufferCopy bytes];
  }

  while (archive_write_data() != -1);
  if (error)
  {
    [(CRKZipOperation *)self errorFromArchive:archive];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_8:

  return v13;
}

- (id)errorFromArchive:(archive *)archive
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = archive_errno();
  v4 = archive_error_string();
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
    v6 = v5;
    if (v5)
    {
      v10 = *MEMORY[0x277CCA450];
      v11[0] = v5;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v3 userInfo:v7];

  return v8;
}

- (void)initWithDirectoryURL:(uint64_t)a1 destinationZipName:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKZipOperation.m" lineNumber:38 description:@"Empty zip file name"];
}

- (void)initWithDirectoryURL:(uint64_t)a1 destinationZipURL:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKZipOperation.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"directoryURL"}];
}

- (void)initWithDirectoryURL:(uint64_t)a1 destinationZipURL:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKZipOperation.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"zipURL"}];
}

- (void)makeArchiveWithError:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v2 = [a1 errorFromArchive:a2];
  OUTLINED_FUNCTION_0_3(&dword_243550000, v3, v4, "Failed to set compression type to deflate: %{public}@", v5, v6, v7, v8, 2u);
}

- (void)finalizeArchive:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v2 = [a1 errorFromArchive:a2];
  v3 = [v2 verboseDescription];
  OUTLINED_FUNCTION_0_3(&dword_243550000, v4, v5, "Failed to finalize archive: %{public}@", v6, v7, v8, v9, 2u);
}

- (void)populateArchive:(void *)a1 error:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v2 = [a1 errorFromArchive:a2];
  v3 = [v2 verboseDescription];
  OUTLINED_FUNCTION_0_3(&dword_243550000, v4, v5, "Failed to close disk archive: %{public}@", v6, v7, v8, v9, 2u);
}

@end