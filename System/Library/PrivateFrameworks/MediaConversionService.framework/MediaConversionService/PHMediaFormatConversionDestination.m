@interface PHMediaFormatConversionDestination
+ (id)destinationForConversionReturningUnchangedSource:(id)a3;
+ (id)sharedCleanupQueue;
- (BOOL)createTemporaryOutputDirectoryWithError:(id *)a3;
- (BOOL)createTemporaryOutputFileWithErrorError:(id *)a3;
- (BOOL)padImageToLength:(unint64_t)a3 fileHandle:(id)a4 error:(id *)a5;
- (BOOL)padToLength:(unint64_t)a3 error:(id *)a4;
- (BOOL)padVideoToLength:(unint64_t)a3 fileHandle:(id)a4 error:(id *)a5;
- (BOOL)waitForAvailabilityOfRange:(_NSRange)a3 timeout:(unint64_t)a4 error:(id *)a5;
- (NSURL)temporaryOutputDirectoryURL;
- (NSURL)temporaryOutputFileURL;
- (id)errorForSinglePassVideoConversionError:(id)a3;
- (unint64_t)length;
- (void)addAvailableRange:(_NSRange)a3;
- (void)dealloc;
- (void)enableSinglePassVideoConversionWithTargetLength:(unint64_t)a3;
- (void)generateTemporaryOutputFileURLForRequest:(id)a3;
- (void)removeTemporaryFiles;
- (void)removeTemporaryFilesWithCompletionHandler:(id)a3;
@end

@implementation PHMediaFormatConversionDestination

- (id)errorForSinglePassVideoConversionError:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = [v5 isEqualToString:*MEMORY[0x277D3B5E0]];

    if (v6 && (v7 = [v4 code], (v7 - 3) <= 2))
    {
      v8 = qword_2585F7AD0[v7 - 3];
    }

    else
    {
      v8 = 0;
    }

    v9 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA7E8];
    v15[0] = v4;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v11 = [v9 errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:v8 userInfo:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)waitForAvailabilityOfRange:(_NSRange)a3 timeout:(unint64_t)a4 error:(id *)a5
{
  length = a3.length;
  location = a3.location;
  if (![(PHMediaFormatConversionDestination *)self usesSinglePassVideoConversion])
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:811 description:@"Unexpected nil single pass video conversion range coordinator"];
  }

  singlePassVideoExportRangeCoordinator = self->_singlePassVideoExportRangeCoordinator;
  v16 = 0;
  v12 = [(PFVideoExportRangeCoordinator *)singlePassVideoExportRangeCoordinator waitForAvailabilityOfRange:location timeout:length error:a4, &v16];
  v13 = v16;
  if (a5 && (v12 & 1) == 0)
  {
    *a5 = [(PHMediaFormatConversionDestination *)self errorForSinglePassVideoConversionError:v13];
  }

  return v12;
}

- (void)addAvailableRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if ([(PHMediaFormatConversionDestination *)self usesSinglePassVideoConversion])
  {
    singlePassVideoExportRangeCoordinator = self->_singlePassVideoExportRangeCoordinator;

    [(PFVideoExportRangeCoordinator *)singlePassVideoExportRangeCoordinator updateAvailableRange:0, location + length];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unexpected nil single pass video conversion range coordinator", v7, 2u);
  }
}

- (void)enableSinglePassVideoConversionWithTargetLength:(unint64_t)a3
{
  self->_singlePassVideoConversionTargetLength = a3;
  v4 = objc_opt_new();
  singlePassVideoExportRangeCoordinator = self->_singlePassVideoExportRangeCoordinator;
  self->_singlePassVideoExportRangeCoordinator = v4;

  MEMORY[0x2821F96F8]();
}

- (BOOL)padImageToLength:(unint64_t)a3 fileHandle:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(PHMediaFormatConversionDestination *)self length];
  if (v9 > a3)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:1 userInfo:0];
    if (a5)
    {
      v12 = v12;
      *a5 = v12;
    }
  }

  else
  {
    v10 = a3 - [(PHMediaFormatConversionDestination *)self length];
    [v8 seekToEndOfFile];
    v11 = [MEMORY[0x277CBEB28] dataWithLength:v10];
    [v8 writeData:v11];

    self->super._length = a3;
  }

  return v9 <= a3;
}

- (BOOL)padVideoToLength:(unint64_t)a3 fileHandle:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(PHMediaFormatConversionDestination *)self length]+ 8;
  if (v9 > a3)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:1 userInfo:0];
    if (a5)
    {
      v14 = v14;
      *a5 = v14;
    }
  }

  else
  {
    v10 = a3 - [(PHMediaFormatConversionDestination *)self length];
    v11 = v10 - 8;
    v12 = [MEMORY[0x277CBEB28] dataWithCapacity:v10];
    v16 = bswap32(v10);
    [v12 appendBytes:&v16 length:4];
    [v12 appendBytes:"free" length:4];
    [v8 seekToEndOfFile];
    [v8 writeData:v12];
    [v12 setLength:0];
    if (v10 != 8)
    {
      LODWORD(v13) = 0x80000;
      do
      {
        if (v13 >= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v13;
        }

        [v12 setLength:v13];
        [v8 writeData:v12];
        v11 -= v13;
      }

      while (v11);
    }

    self->super._length = a3;
  }

  return v9 <= a3;
}

- (BOOL)padToLength:(unint64_t)a3 error:(id *)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  if ([(PHMediaFormatConversionDestination *)self length]!= a3)
  {
    v8 = MEMORY[0x277CCA9F8];
    v9 = [(PHMediaFormatConversionContent *)self fileURL];
    v19 = 0;
    v10 = [v8 fileHandleForUpdatingURL:v9 error:&v19];
    v11 = v19;

    if (v10)
    {
      if ([(PHMediaFormatConversionContent *)self isVideo])
      {
        v12 = [(PHMediaFormatConversionDestination *)self padVideoToLength:a3 fileHandle:v10 error:a4];
      }

      else
      {
        if (![(PHMediaFormatConversionContent *)self isImage])
        {
          [v10 closeFile];
          v7 = 0;
          goto LABEL_13;
        }

        v12 = [(PHMediaFormatConversionDestination *)self padImageToLength:a3 fileHandle:v10 error:a4];
      }

      v7 = v12;
LABEL_13:
      v15 = v11;
      goto LABEL_14;
    }

    v13 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA7E8];
    v23[0] = v11;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v15 = [v13 errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:1 userInfo:v14];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v15;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to open image filehandle for padding: %@", buf, 0xCu);
      if (a4)
      {
        goto LABEL_8;
      }
    }

    else if (a4)
    {
LABEL_8:
      v16 = v15;
      v7 = 0;
      *a4 = v15;
LABEL_14:

      goto LABEL_15;
    }

    v7 = 0;
    goto LABEL_14;
  }

  v7 = 1;
LABEL_15:
  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  singlePassVideoExportRangeCoordinator = self->_singlePassVideoExportRangeCoordinator;
  if (singlePassVideoExportRangeCoordinator)
  {
    [(PFVideoExportRangeCoordinator *)singlePassVideoExportRangeCoordinator cancel];
  }

  [(PHMediaFormatConversionDestination *)self removeTemporaryFiles];
  v4.receiver = self;
  v4.super_class = PHMediaFormatConversionDestination;
  [(PHMediaFormatConversionDestination *)&v4 dealloc];
}

- (void)removeTemporaryFilesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() sharedCleanupQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__PHMediaFormatConversionDestination_removeTemporaryFilesWithCompletionHandler___block_invoke;
  v7[3] = &unk_27989B678;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __80__PHMediaFormatConversionDestination_removeTemporaryFilesWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeTemporaryFiles];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)removeTemporaryFiles
{
  v23 = *MEMORY[0x277D85DE8];
  temporaryFilesURLToDelete = self->_temporaryFilesURLToDelete;
  if (temporaryFilesURLToDelete)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      v20 = self;
      v21 = 2112;
      *v22 = self;
      *&v22[8] = 2112;
      *&v22[10] = temporaryFilesURLToDelete;
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Delete temporary output %p %@ %@", buf, 0x20u);
      temporaryFilesURLToDelete = self->_temporaryFilesURLToDelete;
    }

    v4 = [(NSURL *)temporaryFilesURLToDelete lastPathComponent];
    v5 = [(PHMediaFormatConversionDestination *)self temporaryDirectoryPrefix];
    v6 = [v4 hasPrefix:v5];

    if (v6)
    {
      v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v8 = [v7 BOOLForKey:@"PHMediaFormatConversionKeepTemporaryFiles"];

      if (v8)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v9 = [(NSURL *)self->_temporaryFilesURLToDelete path];
          *buf = 138543618;
          v20 = v9;
          v21 = 2112;
          *v22 = @"PHMediaFormatConversionKeepTemporaryFiles";
          _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Not deleting temporary media conversion files at %{public}@ because the %@ user defaults key is set", buf, 0x16u);
        }
      }

      else
      {
        v11 = [MEMORY[0x277CCAA00] defaultManager];
        v12 = self->_temporaryFilesURLToDelete;
        v18 = 0;
        v13 = [v11 removeItemAtURL:v12 error:&v18];
        v14 = v18;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v15 = self->_temporaryFilesURLToDelete;
          *buf = 138412802;
          v20 = v15;
          v21 = 1024;
          *v22 = v13;
          *&v22[4] = 2112;
          *&v22[6] = v14;
          _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Deleted temporary output: %@ %d %@", buf, 0x1Cu);
        }

        if ((v13 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v20 = v14;
          _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to delete temporary output: %@", buf, 0xCu);
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = self->_temporaryFilesURLToDelete;
      *buf = 138412290;
      v20 = v10;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Won't delete temporary output outside of temporary directory: %@", buf, 0xCu);
    }

    v16 = self->_temporaryFilesURLToDelete;
    self->_temporaryFilesURLToDelete = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (NSURL)temporaryOutputFileURL
{
  temporaryOutputFileURL = self->_temporaryOutputFileURL;
  if (!temporaryOutputFileURL)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = NSStringFromSelector(a2);
    [v6 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:662 description:{@"You must call generateTemporaryOutputFileURLForRequest before calling %@", v7}];

    temporaryOutputFileURL = self->_temporaryOutputFileURL;
  }

  return temporaryOutputFileURL;
}

- (NSURL)temporaryOutputDirectoryURL
{
  temporaryOutputDirectoryURL = self->_temporaryOutputDirectoryURL;
  if (!temporaryOutputDirectoryURL)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = NSStringFromSelector(a2);
    [v6 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:656 description:{@"You must call generateTemporaryOutputFileURLForRequest before calling %@", v7}];

    temporaryOutputDirectoryURL = self->_temporaryOutputDirectoryURL;
  }

  return temporaryOutputDirectoryURL;
}

- (BOOL)createTemporaryOutputFileWithErrorError:(id *)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (!self->_temporaryOutputFileURL)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    v14 = NSStringFromSelector(a2);
    [v13 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:636 description:{@"You must call generateTemporaryOutputFileURLForRequest before calling %@", v14}];
  }

  if (![(PHMediaFormatConversionDestination *)self createTemporaryOutputDirectoryWithError:a3])
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = [MEMORY[0x277CBEA90] data];
  temporaryOutputFileURL = self->_temporaryOutputFileURL;
  v15 = 0;
  v7 = [v5 writeToURL:temporaryOutputFileURL options:0 error:&v15];
  v8 = v15;

  if ((v7 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create format conversion output temporary file: %@", buf, 0xCu);
      if (!a3)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    if (a3)
    {
LABEL_7:
      v9 = v8;
      *a3 = v8;
    }
  }

LABEL_8:

LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)createTemporaryOutputDirectoryWithError:(id *)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (!self->_temporaryOutputDirectoryURL)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    v15 = NSStringFromSelector(a2);
    [v14 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:618 description:{@"You must call generateTemporaryOutputFileURLForRequest before calling %@", v15}];
  }

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(NSURL *)self->_temporaryOutputDirectoryURL path];
  v19 = *MEMORY[0x277CCA160];
  v20[0] = @"mobile";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v16 = 0;
  v8 = [v5 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:v7 error:&v16];
  v9 = v16;

  if ((v8 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create format conversion output temporary directory: %@", buf, 0xCu);
      if (!a3)
      {
        goto LABEL_8;
      }
    }

    else if (!a3)
    {
      goto LABEL_8;
    }

    v10 = v9;
    *a3 = v9;
    goto LABEL_8;
  }

  objc_storeStrong(&self->_temporaryFilesURLToDelete, self->_temporaryOutputDirectoryURL);
LABEL_8:

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)generateTemporaryOutputFileURLForRequest:(id)a3
{
  v26 = a3;
  if (([v26 preflighted] & 1) == 0)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:591 description:{@"Invalid parameter not satisfying: %@", @"request.preflighted"}];
  }

  v5 = [v26 directoryForTemporaryFiles];

  if (!v5)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:592 description:{@"Invalid parameter not satisfying: %@", @"request.directoryForTemporaryFiles"}];
  }

  v6 = [v26 directoryForTemporaryFiles];
  v7 = MEMORY[0x277CCACA8];
  v8 = [(PHMediaFormatConversionDestination *)self temporaryDirectoryPrefix];
  v9 = [v26 identifier];
  v10 = [v7 stringWithFormat:@"%@-%@/", v8, v9];
  v11 = [v6 URLByAppendingPathComponent:v10 isDirectory:1];
  temporaryOutputDirectoryURL = self->_temporaryOutputDirectoryURL;
  self->_temporaryOutputDirectoryURL = v11;

  v13 = [v26 outputFilename];
  v14 = v13;
  if (v13)
  {
    if (![v13 length])
    {
      v24 = [MEMORY[0x277CCA890] currentHandler];
      [v24 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:599 description:@"Unexpected nil or zero-length requested output filename"];
    }

    v15 = v14;
  }

  else
  {
    v16 = [v26 source];
    v17 = [v16 fileURL];

    v15 = [v17 lastPathComponent];
    if (![v15 length])
    {
      v25 = [MEMORY[0x277CCA890] currentHandler];
      [v25 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:604 description:@"Unexpected nil or zero-length input filename"];
    }
  }

  if (self->_outputPathExtension)
  {
    v18 = [v15 stringByDeletingPathExtension];
    v19 = [v18 stringByAppendingPathExtension:self->_outputPathExtension];

    v15 = v19;
  }

  v20 = [(NSURL *)self->_temporaryOutputDirectoryURL URLByAppendingPathComponent:v15];
  temporaryOutputFileURL = self->_temporaryOutputFileURL;
  self->_temporaryOutputFileURL = v20;

  objc_storeStrong(&self->super._fileURL, self->_temporaryOutputFileURL);
}

- (unint64_t)length
{
  if ([(PHMediaFormatConversionDestination *)self usesSinglePassVideoConversion])
  {

    return [(PHMediaFormatConversionDestination *)self singlePassVideoConversionTargetLength];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = PHMediaFormatConversionDestination;
    return [(PHMediaFormatConversionContent *)&v4 length];
  }
}

+ (id)sharedCleanupQueue
{
  if (sharedCleanupQueue_onceToken != -1)
  {
    dispatch_once(&sharedCleanupQueue_onceToken, &__block_literal_global_397);
  }

  v3 = sharedCleanupQueue_sharedCleanupQueue;

  return v3;
}

uint64_t __56__PHMediaFormatConversionDestination_sharedCleanupQueue__block_invoke()
{
  sharedCleanupQueue_sharedCleanupQueue = dispatch_queue_create("com.apple.photos.mediaformatconversion.destination.cleanup", 0);

  return MEMORY[0x2821F96F8]();
}

+ (id)destinationForConversionReturningUnchangedSource:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 fileURL];
  [v4 setFileURL:v5];

  v6 = [v3 length];
  v4[1] = v6;

  return v4;
}

@end