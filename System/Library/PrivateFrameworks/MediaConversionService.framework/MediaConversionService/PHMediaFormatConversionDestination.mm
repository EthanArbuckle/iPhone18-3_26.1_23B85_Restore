@interface PHMediaFormatConversionDestination
+ (id)destinationForConversionReturningUnchangedSource:(id)source;
+ (id)sharedCleanupQueue;
- (BOOL)createTemporaryOutputDirectoryWithError:(id *)error;
- (BOOL)createTemporaryOutputFileWithErrorError:(id *)error;
- (BOOL)padImageToLength:(unint64_t)length fileHandle:(id)handle error:(id *)error;
- (BOOL)padToLength:(unint64_t)length error:(id *)error;
- (BOOL)padVideoToLength:(unint64_t)length fileHandle:(id)handle error:(id *)error;
- (BOOL)waitForAvailabilityOfRange:(_NSRange)range timeout:(unint64_t)timeout error:(id *)error;
- (NSURL)temporaryOutputDirectoryURL;
- (NSURL)temporaryOutputFileURL;
- (id)errorForSinglePassVideoConversionError:(id)error;
- (unint64_t)length;
- (void)addAvailableRange:(_NSRange)range;
- (void)dealloc;
- (void)enableSinglePassVideoConversionWithTargetLength:(unint64_t)length;
- (void)generateTemporaryOutputFileURLForRequest:(id)request;
- (void)removeTemporaryFiles;
- (void)removeTemporaryFilesWithCompletionHandler:(id)handler;
@end

@implementation PHMediaFormatConversionDestination

- (id)errorForSinglePassVideoConversionError:(id)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v6 = [domain isEqualToString:*MEMORY[0x277D3B5E0]];

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

- (BOOL)waitForAvailabilityOfRange:(_NSRange)range timeout:(unint64_t)timeout error:(id *)error
{
  length = range.length;
  location = range.location;
  if (![(PHMediaFormatConversionDestination *)self usesSinglePassVideoConversion])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:811 description:@"Unexpected nil single pass video conversion range coordinator"];
  }

  singlePassVideoExportRangeCoordinator = self->_singlePassVideoExportRangeCoordinator;
  v16 = 0;
  v12 = [(PFVideoExportRangeCoordinator *)singlePassVideoExportRangeCoordinator waitForAvailabilityOfRange:location timeout:length error:timeout, &v16];
  v13 = v16;
  if (error && (v12 & 1) == 0)
  {
    *error = [(PHMediaFormatConversionDestination *)self errorForSinglePassVideoConversionError:v13];
  }

  return v12;
}

- (void)addAvailableRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

- (void)enableSinglePassVideoConversionWithTargetLength:(unint64_t)length
{
  self->_singlePassVideoConversionTargetLength = length;
  v4 = objc_opt_new();
  singlePassVideoExportRangeCoordinator = self->_singlePassVideoExportRangeCoordinator;
  self->_singlePassVideoExportRangeCoordinator = v4;

  MEMORY[0x2821F96F8]();
}

- (BOOL)padImageToLength:(unint64_t)length fileHandle:(id)handle error:(id *)error
{
  handleCopy = handle;
  v9 = [(PHMediaFormatConversionDestination *)self length];
  if (v9 > length)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:1 userInfo:0];
    if (error)
    {
      v12 = v12;
      *error = v12;
    }
  }

  else
  {
    v10 = length - [(PHMediaFormatConversionDestination *)self length];
    [handleCopy seekToEndOfFile];
    v11 = [MEMORY[0x277CBEB28] dataWithLength:v10];
    [handleCopy writeData:v11];

    self->super._length = length;
  }

  return v9 <= length;
}

- (BOOL)padVideoToLength:(unint64_t)length fileHandle:(id)handle error:(id *)error
{
  handleCopy = handle;
  v9 = [(PHMediaFormatConversionDestination *)self length]+ 8;
  if (v9 > length)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:1 userInfo:0];
    if (error)
    {
      v14 = v14;
      *error = v14;
    }
  }

  else
  {
    v10 = length - [(PHMediaFormatConversionDestination *)self length];
    v11 = v10 - 8;
    v12 = [MEMORY[0x277CBEB28] dataWithCapacity:v10];
    v16 = bswap32(v10);
    [v12 appendBytes:&v16 length:4];
    [v12 appendBytes:"free" length:4];
    [handleCopy seekToEndOfFile];
    [handleCopy writeData:v12];
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
        [handleCopy writeData:v12];
        v11 -= v13;
      }

      while (v11);
    }

    self->super._length = length;
  }

  return v9 <= length;
}

- (BOOL)padToLength:(unint64_t)length error:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  if ([(PHMediaFormatConversionDestination *)self length]!= length)
  {
    v8 = MEMORY[0x277CCA9F8];
    fileURL = [(PHMediaFormatConversionContent *)self fileURL];
    v19 = 0;
    v10 = [v8 fileHandleForUpdatingURL:fileURL error:&v19];
    v11 = v19;

    if (v10)
    {
      if ([(PHMediaFormatConversionContent *)self isVideo])
      {
        v12 = [(PHMediaFormatConversionDestination *)self padVideoToLength:length fileHandle:v10 error:error];
      }

      else
      {
        if (![(PHMediaFormatConversionContent *)self isImage])
        {
          [v10 closeFile];
          v7 = 0;
          goto LABEL_13;
        }

        v12 = [(PHMediaFormatConversionDestination *)self padImageToLength:length fileHandle:v10 error:error];
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
      if (error)
      {
        goto LABEL_8;
      }
    }

    else if (error)
    {
LABEL_8:
      v16 = v15;
      v7 = 0;
      *error = v15;
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

- (void)removeTemporaryFilesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  sharedCleanupQueue = [objc_opt_class() sharedCleanupQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__PHMediaFormatConversionDestination_removeTemporaryFilesWithCompletionHandler___block_invoke;
  v7[3] = &unk_27989B678;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(sharedCleanupQueue, v7);
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
      selfCopy = self;
      v21 = 2112;
      *v22 = self;
      *&v22[8] = 2112;
      *&v22[10] = temporaryFilesURLToDelete;
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Delete temporary output %p %@ %@", buf, 0x20u);
      temporaryFilesURLToDelete = self->_temporaryFilesURLToDelete;
    }

    lastPathComponent = [(NSURL *)temporaryFilesURLToDelete lastPathComponent];
    temporaryDirectoryPrefix = [(PHMediaFormatConversionDestination *)self temporaryDirectoryPrefix];
    v6 = [lastPathComponent hasPrefix:temporaryDirectoryPrefix];

    if (v6)
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v8 = [standardUserDefaults BOOLForKey:@"PHMediaFormatConversionKeepTemporaryFiles"];

      if (v8)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          path = [(NSURL *)self->_temporaryFilesURLToDelete path];
          *buf = 138543618;
          selfCopy = path;
          v21 = 2112;
          *v22 = @"PHMediaFormatConversionKeepTemporaryFiles";
          _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Not deleting temporary media conversion files at %{public}@ because the %@ user defaults key is set", buf, 0x16u);
        }
      }

      else
      {
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v12 = self->_temporaryFilesURLToDelete;
        v18 = 0;
        v13 = [defaultManager removeItemAtURL:v12 error:&v18];
        v14 = v18;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v15 = self->_temporaryFilesURLToDelete;
          *buf = 138412802;
          selfCopy = v15;
          v21 = 1024;
          *v22 = v13;
          *&v22[4] = 2112;
          *&v22[6] = v14;
          _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Deleted temporary output: %@ %d %@", buf, 0x1Cu);
        }

        if ((v13 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy = v14;
          _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to delete temporary output: %@", buf, 0xCu);
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = self->_temporaryFilesURLToDelete;
      *buf = 138412290;
      selfCopy = v10;
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v7 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:662 description:{@"You must call generateTemporaryOutputFileURLForRequest before calling %@", v7}];

    temporaryOutputFileURL = self->_temporaryOutputFileURL;
  }

  return temporaryOutputFileURL;
}

- (NSURL)temporaryOutputDirectoryURL
{
  temporaryOutputDirectoryURL = self->_temporaryOutputDirectoryURL;
  if (!temporaryOutputDirectoryURL)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v7 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:656 description:{@"You must call generateTemporaryOutputFileURLForRequest before calling %@", v7}];

    temporaryOutputDirectoryURL = self->_temporaryOutputDirectoryURL;
  }

  return temporaryOutputDirectoryURL;
}

- (BOOL)createTemporaryOutputFileWithErrorError:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  if (!self->_temporaryOutputFileURL)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v14 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:636 description:{@"You must call generateTemporaryOutputFileURLForRequest before calling %@", v14}];
  }

  if (![(PHMediaFormatConversionDestination *)self createTemporaryOutputDirectoryWithError:error])
  {
    v7 = 0;
    goto LABEL_10;
  }

  data = [MEMORY[0x277CBEA90] data];
  temporaryOutputFileURL = self->_temporaryOutputFileURL;
  v15 = 0;
  v7 = [data writeToURL:temporaryOutputFileURL options:0 error:&v15];
  v8 = v15;

  if ((v7 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create format conversion output temporary file: %@", buf, 0xCu);
      if (!error)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    if (error)
    {
LABEL_7:
      v9 = v8;
      *error = v8;
    }
  }

LABEL_8:

LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)createTemporaryOutputDirectoryWithError:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (!self->_temporaryOutputDirectoryURL)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v15 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:618 description:{@"You must call generateTemporaryOutputFileURLForRequest before calling %@", v15}];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(NSURL *)self->_temporaryOutputDirectoryURL path];
  v19 = *MEMORY[0x277CCA160];
  v20[0] = @"mobile";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v16 = 0;
  v8 = [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:v7 error:&v16];
  v9 = v16;

  if ((v8 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create format conversion output temporary directory: %@", buf, 0xCu);
      if (!error)
      {
        goto LABEL_8;
      }
    }

    else if (!error)
    {
      goto LABEL_8;
    }

    v10 = v9;
    *error = v9;
    goto LABEL_8;
  }

  objc_storeStrong(&self->_temporaryFilesURLToDelete, self->_temporaryOutputDirectoryURL);
LABEL_8:

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)generateTemporaryOutputFileURLForRequest:(id)request
{
  requestCopy = request;
  if (([requestCopy preflighted] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:591 description:{@"Invalid parameter not satisfying: %@", @"request.preflighted"}];
  }

  directoryForTemporaryFiles = [requestCopy directoryForTemporaryFiles];

  if (!directoryForTemporaryFiles)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:592 description:{@"Invalid parameter not satisfying: %@", @"request.directoryForTemporaryFiles"}];
  }

  directoryForTemporaryFiles2 = [requestCopy directoryForTemporaryFiles];
  v7 = MEMORY[0x277CCACA8];
  temporaryDirectoryPrefix = [(PHMediaFormatConversionDestination *)self temporaryDirectoryPrefix];
  identifier = [requestCopy identifier];
  v10 = [v7 stringWithFormat:@"%@-%@/", temporaryDirectoryPrefix, identifier];
  v11 = [directoryForTemporaryFiles2 URLByAppendingPathComponent:v10 isDirectory:1];
  temporaryOutputDirectoryURL = self->_temporaryOutputDirectoryURL;
  self->_temporaryOutputDirectoryURL = v11;

  outputFilename = [requestCopy outputFilename];
  v14 = outputFilename;
  if (outputFilename)
  {
    if (![outputFilename length])
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:599 description:@"Unexpected nil or zero-length requested output filename"];
    }

    lastPathComponent = v14;
  }

  else
  {
    source = [requestCopy source];
    fileURL = [source fileURL];

    lastPathComponent = [fileURL lastPathComponent];
    if (![lastPathComponent length])
    {
      currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler4 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:604 description:@"Unexpected nil or zero-length input filename"];
    }
  }

  if (self->_outputPathExtension)
  {
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
    v19 = [stringByDeletingPathExtension stringByAppendingPathExtension:self->_outputPathExtension];

    lastPathComponent = v19;
  }

  v20 = [(NSURL *)self->_temporaryOutputDirectoryURL URLByAppendingPathComponent:lastPathComponent];
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

+ (id)destinationForConversionReturningUnchangedSource:(id)source
{
  sourceCopy = source;
  v4 = objc_opt_new();
  fileURL = [sourceCopy fileURL];
  [v4 setFileURL:fileURL];

  v6 = [sourceCopy length];
  v4[1] = v6;

  return v4;
}

@end