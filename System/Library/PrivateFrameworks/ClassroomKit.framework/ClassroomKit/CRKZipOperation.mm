@interface CRKZipOperation
- (BOOL)createDestinationDirectoryWithError:(id *)a3;
- (BOOL)populateArchive:(archive *)a3 error:(id *)a4;
- (BOOL)populateArchive:(archive *)a3 usingDisk:(archive *)a4 error:(id *)a5;
- (BOOL)validateParametersWithError:(id *)a3;
- (BOOL)writeArchiveOfDirectoryAtURL:(id)a3 toURL:(id)a4 error:(id *)a5;
- (BOOL)writeDataForFTSEntry:(id)a3 toArchive:(archive *)a4 fileDescriptor:(int)a5 error:(id *)a6;
- (BOOL)writeDataFromFileDescriptor:(int)a3 toArchive:(archive *)a4 usingBuffer:(id)a5 error:(id *)a6;
- (BOOL)writeFTSEntry:(id)a3 toArchive:(archive *)a4 usingDisk:(archive *)a5 error:(id *)a6;
- (BOOL)writeHeaderForFTSEntry:(id)a3 toArchive:(archive *)a4 usingDisk:(archive *)a5 fileDescriptor:(int)a6 error:(id *)a7;
- (CRKZipOperation)initWithDirectoryURL:(id)a3;
- (CRKZipOperation)initWithDirectoryURL:(id)a3 destinationZipName:(id)a4;
- (CRKZipOperation)initWithDirectoryURL:(id)a3 destinationZipURL:(id)a4;
- (archive)makeArchiveWithError:(id *)a3;
- (const)relativePathForPathOnDisk:(id)a3;
- (id)errorFromArchive:(archive *)a3;
- (int64_t)lengthOfBufferForFileDescriptor:(int)a3 stat:(stat *)a4;
- (void)finalizeArchive:(archive *)a3;
- (void)main;
@end

@implementation CRKZipOperation

- (CRKZipOperation)initWithDirectoryURL:(id)a3
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v8 = [v7 stringByAppendingPathExtension:@"zip"];

  v9 = [(CRKZipOperation *)self initWithDirectoryURL:v5 destinationZipName:v8];
  return v9;
}

- (CRKZipOperation)initWithDirectoryURL:(id)a3 destinationZipName:(id)a4
{
  v7 = a4;
  v8 = a3;
  if (![v7 length])
  {
    [CRKZipOperation initWithDirectoryURL:a2 destinationZipName:self];
  }

  v9 = [MEMORY[0x277CBEBC0] crk_uniqueTemporaryDirectoryURL];
  v10 = [v9 URLByAppendingPathComponent:v7];

  v11 = [(CRKZipOperation *)self initWithDirectoryURL:v8 destinationZipURL:v10];
  return v11;
}

- (CRKZipOperation)initWithDirectoryURL:(id)a3 destinationZipURL:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
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
    objc_storeStrong(&v11->_directoryURL, a3);
    objc_storeStrong(&v12->_destinationZipFileURL, a4);
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

  v8 = [(CRKZipOperation *)self directoryURL];
  v9 = [(CRKZipOperation *)self destinationZipFileURL];
  v12 = v7;
  v10 = [(CRKZipOperation *)self writeArchiveOfDirectoryAtURL:v8 toURL:v9 error:&v12];
  v5 = v12;

  if (v10)
  {
    v11 = [(CRKZipOperation *)self destinationZipFileURL];
    [(CRKZipOperation *)self endOperationWithResultObject:v11];
  }

  else
  {
LABEL_5:
    [(CRKZipOperation *)self endOperationWithError:v5];
  }

LABEL_7:
}

- (BOOL)validateParametersWithError:(id *)a3
{
  v5 = [(CRKZipOperation *)self directoryURL];
  v6 = [v5 fileSystemRepresentation];

  if (v6)
  {
    v7 = [(CRKZipOperation *)self destinationZipFileURL];
    v8 = [v7 fileSystemRepresentation];

    result = v8 != 0;
    if (a3 && !v8)
    {
      v10 = &unk_285672360;
LABEL_7:
      v11 = CRKErrorWithCodeAndUserInfo(2, v10);
      v12 = v11;
      result = 0;
      *a3 = v11;
    }
  }

  else
  {
    if (a3)
    {
      v10 = &unk_285672338;
      goto LABEL_7;
    }

    return 0;
  }

  return result;
}

- (BOOL)createDestinationDirectoryWithError:(id *)a3
{
  v4 = [(CRKZipOperation *)self destinationZipFileURL];
  v5 = [v4 URLByDeletingLastPathComponent];

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(a3) = [v6 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:a3];

  return a3;
}

- (BOOL)writeArchiveOfDirectoryAtURL:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v7 = [(CRKZipOperation *)self makeArchiveWithError:a5, a4];
  if (v7)
  {
    v8 = v7;
    v9 = [(CRKZipOperation *)self populateArchive:v7 error:a5];
    [(CRKZipOperation *)self finalizeArchive:v8];
    LOBYTE(v7) = v9;
  }

  return v7;
}

- (archive)makeArchiveWithError:(id *)a3
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

  v7 = [(CRKZipOperation *)self destinationZipFileURL];
  [v7 fileSystemRepresentation];
  v8 = archive_write_open_filename();

  if (v8)
  {
    if (a3)
    {
      *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    }

    free(v5);
    return 0;
  }

  return v5;
}

- (void)finalizeArchive:(archive *)a3
{
  if (archive_write_free())
  {
    v5 = _CRKLogGeneral_0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CRKZipOperation *)self finalizeArchive:a3];
    }
  }
}

- (BOOL)populateArchive:(archive *)a3 error:(id *)a4
{
  disk_new = archive_read_disk_new();
  archive_read_disk_set_standard_lookup();
  v8 = [(CRKZipOperation *)self populateArchive:a3 usingDisk:disk_new error:a4];
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

- (BOOL)populateArchive:(archive *)a3 usingDisk:(archive *)a4 error:(id *)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = [CRKFTSEnumeration alloc];
  v10 = [(CRKZipOperation *)self directoryURL];
  v11 = [v10 path];
  v12 = [(CRKFTSEnumeration *)v9 initWithDirectoryPath:v11];

  v13 = [(CRKFTSEnumeration *)v12 entriesWithError:a5];
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
      v28 = a5;
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
          LODWORD(v21) = [(CRKZipOperation *)self writeFTSEntry:v21 toArchive:a3 usingDisk:a4 error:&v30];
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
      a5 = v28;
      v14 = v26;
    }

    else
    {
      v17 = 0;
      v23 = 1;
    }

    if (a5)
    {
      v24 = v17;
      *a5 = v17;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)writeFTSEntry:(id)a3 toArchive:(archive *)a4 usingDisk:(archive *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = MEMORY[0x277CCA9F8];
  v12 = MEMORY[0x277CBEBC0];
  v13 = [v10 path];
  v14 = [v12 fileURLWithPath:v13];
  v15 = [v11 fileHandleForReadingFromURL:v14 error:a6];

  v17 = v15 && (v16 = [v15 fileDescriptor], -[CRKZipOperation writeHeaderForFTSEntry:toArchive:usingDisk:fileDescriptor:error:](self, "writeHeaderForFTSEntry:toArchive:usingDisk:fileDescriptor:error:", v10, a4, a5, v16, a6)) && -[CRKZipOperation writeDataForFTSEntry:toArchive:fileDescriptor:error:](self, "writeDataForFTSEntry:toArchive:fileDescriptor:error:", v10, a4, v16, a6);
  return v17;
}

- (BOOL)writeHeaderForFTSEntry:(id)a3 toArchive:(archive *)a4 usingDisk:(archive *)a5 fileDescriptor:(int)a6 error:(id *)a7
{
  v11 = a3;
  archive_entry_new();
  v12 = [v11 path];
  [(CRKZipOperation *)self relativePathForPathOnDisk:v12];
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
  if (v11)
  {
    [v11 stat];
  }

  if (!archive_read_disk_entry_from_file())
  {
    if (!archive_write_header())
    {
      v13 = 1;
      goto LABEL_10;
    }

    a5 = a4;
    if (a7)
    {
      goto LABEL_5;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_10;
  }

  if (!a7)
  {
    goto LABEL_8;
  }

LABEL_5:
  [(CRKZipOperation *)self errorFromArchive:a5, v15, v16, v17, v18, v19, v20, v21, v22, v23];
  *a7 = v13 = 0;
LABEL_10:
  archive_entry_free();

  return v13;
}

- (const)relativePathForPathOnDisk:(id)a3
{
  v5 = a3;
  v6 = [a3 fileSystemRepresentation];
  v7 = [(CRKZipOperation *)self directoryURL];
  v8 = [v7 path];
  v9 = [v8 stringByDeletingLastPathComponent];
  v10 = strlen([v9 fileSystemRepresentation]);

  return (v6 + v10 + 1);
}

- (BOOL)writeDataForFTSEntry:(id)a3 toArchive:(archive *)a4 fileDescriptor:(int)a5 error:(id *)a6
{
  v7 = *&a5;
  if (a3)
  {
    [a3 stat];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  v10 = [(CRKZipOperation *)self lengthOfBufferForFileDescriptor:v7 stat:v14];
  v11 = [MEMORY[0x277CBEB28] dataWithLength:v10];
  v12 = [(CRKZipOperation *)self writeDataFromFileDescriptor:v7 toArchive:a4 usingBuffer:v11 error:a6];

  return v12;
}

- (int64_t)lengthOfBufferForFileDescriptor:(int)a3 stat:(stat *)a4
{
  v5 = [CRKChunkedFile preferredChunkSizeForFileDescriptor:*&a3];
  if (v5 >= a4->st_size)
  {
    st_size = a4->st_size;
  }

  else
  {
    st_size = v5;
  }

  if (v5 <= 0)
  {
    return a4->st_size;
  }

  else
  {
    return st_size;
  }
}

- (BOOL)writeDataFromFileDescriptor:(int)a3 toArchive:(archive *)a4 usingBuffer:(id)a5 error:(id *)a6
{
  v8 = *&a3;
  v10 = a5;
  v11 = [[CRKChunkedFile alloc] initWithFileDescriptor:v8];
  do
  {
    v12 = [(CRKChunkedFile *)v11 readNextChunkIntoBuffer:v10 error:a6];
    if (v12 < 1)
    {
      v13 = v12 == 0;
      goto LABEL_8;
    }

    [v10 bytes];
  }

  while (archive_write_data() != -1);
  if (a6)
  {
    [(CRKZipOperation *)self errorFromArchive:a4];
    *a6 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_8:

  return v13;
}

- (id)errorFromArchive:(archive *)a3
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