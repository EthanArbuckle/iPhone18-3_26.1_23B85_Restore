@interface TSUZipFileArchive
+ (BOOL)isZipArchiveAtFD:(int)a3;
+ (BOOL)isZipArchiveAtURL:(id)a3 error:(id *)a4;
+ (id)zipArchiveFromURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
+ (void)readArchiveFromURL:(id)a3 options:(unint64_t)a4 queue:(id)a5 completion:(id)a6;
- (BOOL)copyToTemporaryLocationRelativeToURL:(id)a3 error:(id *)a4;
- (BOOL)isValid;
- (BOOL)openWithURL:(id)a3 error:(id *)a4;
- (BOOL)reopenWithTemporaryURL:(id)a3 error:(id *)a4;
- (TSUZipFileArchive)initWithWriter:(id)a3 forReadingFromURL:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (id)debugDescription;
- (id)initForReadingFromURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)newArchiveReadChannel;
- (unint64_t)archiveLength;
- (void)createTemporaryDirectoryRelativeToURL:(id)a3;
- (void)dealloc;
- (void)removeTemporaryDirectory;
@end

@implementation TSUZipFileArchive

+ (BOOL)isZipArchiveAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 path];
  if (![v7 length])
  {
    v11 = 0;
    goto LABEL_7;
  }

  v8 = [v6 path];
  v9 = open([v8 fileSystemRepresentation], 0, 0);

  if ((v9 & 0x80000000) != 0)
  {
    v11 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
LABEL_7:
    v10 = 0;
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v10 = [a1 isZipArchiveAtFD:v9];
  close(v9);
  v11 = 0;
  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((v10 & 1) == 0)
  {
    if (v11)
    {
      v12 = v11;
      *a4 = v11;
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
      *a4 = v13;
    }
  }

LABEL_12:

  return v10;
}

+ (BOOL)isZipArchiveAtFD:(int)a3
{
  v4 = lseek(a3, 0, 1);
  v5 = v4;
  if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    if (lseek(a3, 0, 0) == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  if (v4 != -1)
  {
LABEL_5:
    if (read(a3, &v9, 4uLL) == 4)
    {
      v7 = v9 == 67324752 || v9 == 101010256;
      return lseek(a3, v5, 0) != -1 && v7;
    }

LABEL_12:
    v7 = 0;
    return lseek(a3, v5, 0) != -1 && v7;
  }

  return 0;
}

+ (void)readArchiveFromURL:(id)a3 options:(unint64_t)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v18 = 0;
  v13 = [[a1 alloc] initForReadingFromURL:v12 options:a4 error:&v18];

  v14 = v18;
  if (v13)
  {
    [v13 readArchiveWithQueue:v11 completion:v10];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__TSUZipFileArchive_readArchiveFromURL_options_queue_completion___block_invoke;
    block[3] = &unk_2799C6CB8;
    v17 = v10;
    v16 = v14;
    dispatch_async(v11, block);

    v11 = v17;
  }
}

void __65__TSUZipFileArchive_readArchiveFromURL_options_queue_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 40);

    v2(v3, 0);
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:?];
    (*(v1 + 16))(v1, 0, v4);
  }
}

+ (id)zipArchiveFromURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__12;
  v32 = __Block_byref_object_dispose__12;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__12;
  v26 = __Block_byref_object_dispose__12;
  v27 = 0;
  obj = 0;
  v9 = [a1 isZipArchiveAtURL:v8 error:&obj];
  objc_storeStrong(&v27, obj);
  if (v9)
  {
    v10 = dispatch_semaphore_create(0);
    v11 = dispatch_get_global_queue(0, 0);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__TSUZipFileArchive_zipArchiveFromURL_options_error___block_invoke;
    v17[3] = &unk_2799C6CE0;
    v19 = &v28;
    v20 = &v22;
    v12 = v10;
    v18 = v12;
    [a1 readArchiveFromURL:v8 options:a4 queue:v11 completion:v17];
    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (a5 && !v29[5])
  {
    v13 = v23[5];
    if (v13)
    {
      *a5 = v13;
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
      *a5 = v14;
    }
  }

  v15 = v29[5];
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);

  return v15;
}

void __53__TSUZipFileArchive_zipArchiveFromURL_options_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)initForReadingFromURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (([v8 isFileURL] & 1) == 0)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipFileArchive initForReadingFromURL:options:error:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipFileArchive.m"];
    [OITSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:154 isFatal:0 description:"Need a file URL"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v15.receiver = self;
  v15.super_class = TSUZipFileArchive;
  v11 = [(TSUZipArchive *)&v15 initWithOptions:a4];
  if (v11)
  {
    v12 = dispatch_queue_create("TSUZipFileArchive.Access", 0);
    accessQueue = v11->_accessQueue;
    v11->_accessQueue = v12;

    if (![(TSUZipFileArchive *)v11 openWithURL:v8 error:a5])
    {

      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)openWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (self->_fdWrapper)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipFileArchive openWithURL:error:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipFileArchive.m"];
    [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:172 isFatal:0 description:"Shouldn't open the archive if it's already open."];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v9 = [v6 copy];
  URL = self->_URL;
  self->_URL = v9;

  v11 = *MEMORY[0x277CBE838];
  [v6 removeCachedResourceValueForKey:*MEMORY[0x277CBE838]];
  v25 = 0;
  v26 = 0;
  v12 = [v6 getResourceValue:&v26 forKey:v11 error:&v25];
  v13 = v26;
  v14 = v25;
  if (v12)
  {
    self->_archiveLength = [v13 unsignedLongLongValue];
    v15 = [v6 path];
    v16 = open([v15 fileSystemRepresentation], 0, 0);

    if ((v16 & 0x80000000) != 0)
    {
      v20 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    }

    else
    {
      v17 = [[TSUZipFileDescriptorWrapper alloc] initWithFileDescriptor:v16 queue:self->_accessQueue];
      fdWrapper = self->_fdWrapper;
      self->_fdWrapper = v17;

      if (self->_fdWrapper)
      {
        if ([objc_opt_class() isZipArchiveAtFD:v16])
        {
          v19 = 1;
          if (!a4)
          {
            goto LABEL_18;
          }

          goto LABEL_16;
        }

        v21 = self->_fdWrapper;
        self->_fdWrapper = 0;

        v20 = [MEMORY[0x277CCA9B8] tsu_fileReadCorruptedFileErrorWithUserInfo:0];
      }

      else
      {
        v20 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
      }
    }

    v22 = v20;

    v19 = 0;
    v14 = v22;
    if (!a4)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (TSUDefaultCat_init_token == -1)
  {
    v19 = 0;
    if (!a4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    [TSUZipFileArchive openWithURL:error:];
    v19 = 0;
    if (!a4)
    {
      goto LABEL_18;
    }
  }

LABEL_16:
  if (v14)
  {
    v23 = v14;
    *a4 = v14;
  }

LABEL_18:

  return v19;
}

void __39__TSUZipFileArchive_openWithURL_error___block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (TSUZipFileArchive)initWithWriter:(id)a3 forReadingFromURL:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(TSUZipFileArchive *)self initForReadingFromURL:v11 options:a5 error:a6];
  v13 = v12;
  if (v12)
  {
    archiveLength = v12->_archiveLength;
    if (archiveLength == [v10 archiveLength])
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __68__TSUZipFileArchive_initWithWriter_forReadingFromURL_options_error___block_invoke;
      v19[3] = &unk_2799C6D08;
      v13 = v13;
      v20 = v13;
      [v10 enumerateEntriesUsingBlock:v19];
    }

    else
    {
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipFileArchive initWithWriter:forReadingFromURL:options:error:]"];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipFileArchive.m"];
      v17 = [v11 path];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v15, v16, 228, 0, "Length of archive at %@ doesn't match archive length of writer. %llu != %llu", v17, v13->_archiveLength, [v10 archiveLength]);

      +[OITSUAssertionHandler logBacktraceThrottled];
      v13 = 0;
    }
  }

  return v13;
}

- (void)dealloc
{
  self->_archiveLength = 0;
  fdWrapper = self->_fdWrapper;
  self->_fdWrapper = 0;

  [(TSUZipFileArchive *)self removeTemporaryDirectory];
  v4.receiver = self;
  v4.super_class = TSUZipFileArchive;
  [(TSUZipFileArchive *)&v4 dealloc];
}

- (void)createTemporaryDirectoryRelativeToURL:(id)a3
{
  v4 = a3;
  if (!self->_temporaryDirectoryURL)
  {
    v11 = v4;
    if (!v4 || ([MEMORY[0x277CCAA00] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "URLForDirectory:inDomain:appropriateForURL:create:error:", 99, 1, v11, 1, 0), v6 = objc_claimAutoreleasedReturnValue(), v7 = self->_temporaryDirectoryURL, self->_temporaryDirectoryURL = v6, v7, v5, v4 = v11, !self->_temporaryDirectoryURL))
    {
      v8 = [[OITSUTemporaryDirectory alloc] initWithSignature:@"ZipFile" error:0];
      [(OITSUTemporaryDirectory *)v8 leakTemporaryDirectory];
      v9 = [(OITSUTemporaryDirectory *)v8 URL];
      temporaryDirectoryURL = self->_temporaryDirectoryURL;
      self->_temporaryDirectoryURL = v9;

      v4 = v11;
    }
  }
}

- (void)removeTemporaryDirectory
{
  if (self->_temporaryDirectoryURL)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    temporaryDirectoryURL = self->_temporaryDirectoryURL;
    v8 = 0;
    v5 = [v3 removeItemAtURL:temporaryDirectoryURL error:&v8];
    v6 = v8;

    if ((v5 & 1) == 0 && TSUDefaultCat_init_token != -1)
    {
      [TSUZipFileArchive removeTemporaryDirectory];
    }

    v7 = self->_temporaryDirectoryURL;
    self->_temporaryDirectoryURL = 0;
  }
}

void __45__TSUZipFileArchive_removeTemporaryDirectory__block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (BOOL)reopenWithTemporaryURL:(id)a3 error:(id *)a4
{
  archiveLength = self->_archiveLength;
  fdWrapper = self->_fdWrapper;
  v9 = fdWrapper;
  self->_archiveLength = 0;
  v10 = self->_fdWrapper;
  self->_fdWrapper = 0;
  v11 = a3;

  v12 = [(TSUZipFileArchive *)self openWithURL:v11 error:a4];
  if (!v12)
  {
    self->_archiveLength = archiveLength;
    objc_storeStrong(&self->_fdWrapper, fdWrapper);
  }

  return v12;
}

- (BOOL)copyToTemporaryLocationRelativeToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__12;
  v25 = __Block_byref_object_dispose__12;
  v26 = 0;
  accessQueue = self->_accessQueue;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __64__TSUZipFileArchive_copyToTemporaryLocationRelativeToURL_error___block_invoke;
  v16 = &unk_2799C6D80;
  v17 = self;
  v8 = v6;
  v18 = v8;
  v19 = &v21;
  v20 = &v27;
  dispatch_sync(accessQueue, &v13);
  if (a4 && (v28[3] & 1) == 0)
  {
    v9 = v22[5];
    if (v9)
    {
      *a4 = v9;
    }

    else
    {
      v10 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:{0, v13, v14, v15, v16, v17}];
      *a4 = v10;
    }
  }

  v11 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v11;
}

void __64__TSUZipFileArchive_copyToTemporaryLocationRelativeToURL_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 64))
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    v3 = *(v2 + 56);
    v4 = objc_autoreleasePoolPush();
    if (!v3)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipFileArchive copyToTemporaryLocationRelativeToURL:error:]_block_invoke"];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipFileArchive.m"];
      [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:301 isFatal:0 description:"File should be opened."];

      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    [*(a1 + 32) createTemporaryDirectoryRelativeToURL:*(a1 + 40)];
    v7 = [*(*(a1 + 32) + 64) URLByAppendingPathComponent:@"Temp.zip"];
    if (v7)
    {
      v8 = [TSUFileIOChannel alloc];
      v9 = *(*(a1 + 48) + 8);
      v31 = *(v9 + 40);
      v10 = [(TSUFileIOChannel *)v8 initForStreamWritingURL:v7 error:&v31];
      objc_storeStrong((v9 + 40), v31);
    }

    else
    {
      v10 = 0;
    }

    *(*(*(a1 + 56) + 8) + 24) = v10 != 0;
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__12;
      v29 = __Block_byref_object_dispose__12;
      v30 = 0;
      v11 = dispatch_group_create();
      dispatch_group_enter(v11);
      v12 = [v3 readChannel];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __64__TSUZipFileArchive_copyToTemporaryLocationRelativeToURL_error___block_invoke_2;
      v21[3] = &unk_2799C6D58;
      v24 = &v25;
      v13 = v11;
      v22 = v13;
      v14 = v10;
      v23 = v14;
      [v12 readFromOffset:0 length:-1 handler:v21];

      dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
      [v14 close];

      v15 = v26;
      *(*(*(a1 + 56) + 8) + 24) = v26[5] == 0;
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
      {
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v15[5]);
        if (TSUDefaultCat_init_token != -1)
        {
          __64__TSUZipFileArchive_copyToTemporaryLocationRelativeToURL_error___block_invoke_cold_2();
        }
      }

      _Block_object_dispose(&v25, 8);
      v10 = 0;
    }

    else if (TSUDefaultCat_init_token != -1)
    {
      __64__TSUZipFileArchive_copyToTemporaryLocationRelativeToURL_error___block_invoke_cold_1();
    }

    v16 = *(*(a1 + 56) + 8);
    if (*(v16 + 24) == 1)
    {
      v17 = *(a1 + 32);
      v18 = *(*(a1 + 48) + 8);
      obj = *(v18 + 40);
      v19 = [v17 reopenWithTemporaryURL:v7 error:&obj];
      objc_storeStrong((v18 + 40), obj);
      v16 = *(*(a1 + 56) + 8);
    }

    else
    {
      v19 = 0;
    }

    *(v16 + 24) = v19;
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 32) removeTemporaryDirectory];
    }

    objc_autoreleasePoolPop(v4);
    [v3 waitForAccessToEnd];
  }
}

void __64__TSUZipFileArchive_copyToTemporaryLocationRelativeToURL_error___block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && !(v8 | *(*(*(a1 + 48) + 8) + 40)))
  {
    dispatch_group_enter(*(a1 + 32));
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__TSUZipFileArchive_copyToTemporaryLocationRelativeToURL_error___block_invoke_3;
    v14[3] = &unk_2799C6D30;
    v10 = *(a1 + 40);
    v16 = *(a1 + 48);
    v15 = *(a1 + 32);
    [v10 writeData:v7 handler:v14];
  }

  if (a2)
  {
    if (v9)
    {
      v11 = *(*(a1 + 48) + 8);
      v13 = *(v11 + 40);
      v12 = (v11 + 40);
      if (!v13)
      {
        objc_storeStrong(v12, a4);
      }
    }

    dispatch_group_leave(*(a1 + 32));
  }
}

void __64__TSUZipFileArchive_copyToTemporaryLocationRelativeToURL_error___block_invoke_3(uint64_t a1, int a2, void *a3, void *a4)
{
  v12 = a3;
  v7 = a4;
  v8 = v7;
  if (a2)
  {
    if (v7)
    {
      v9 = *(*(a1 + 40) + 8);
      v11 = *(v9 + 40);
      v10 = (v9 + 40);
      if (!v11)
      {
        objc_storeStrong(v10, a4);
      }
    }

    dispatch_group_leave(*(a1 + 32));
  }
}

void __64__TSUZipFileArchive_copyToTemporaryLocationRelativeToURL_error___block_invoke_4()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __64__TSUZipFileArchive_copyToTemporaryLocationRelativeToURL_error___block_invoke_5()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (unint64_t)archiveLength
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__TSUZipFileArchive_archiveLength__block_invoke;
  v5[3] = &unk_2799C6880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)newArchiveReadChannel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__TSUZipFileArchive_newArchiveReadChannel__block_invoke;
  v5[3] = &unk_2799C6BA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __42__TSUZipFileArchive_newArchiveReadChannel__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v3 = v2;
  if (v2)
  {
    v4 = dup([v2 fileDescriptor]);
    if ((v4 & 0x80000000) != 0)
    {
      if (TSUDefaultCat_init_token != -1)
      {
        __42__TSUZipFileArchive_newArchiveReadChannel__block_invoke_cold_1();
      }
    }

    else
    {
      v5 = v4;
      [v3 beginAccess];
      v6 = [TSUFileIOChannel alloc];
      v7 = *(*(a1 + 32) + 40);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __42__TSUZipFileArchive_newArchiveReadChannel__block_invoke_2;
      v11[3] = &unk_2799C6DA8;
      v13 = v5;
      v12 = v3;
      v8 = [(TSUFileIOChannel *)v6 initForReadingDescriptor:v5 queue:v7 cleanupHandler:v11];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }

  else if (TSUDefaultCat_init_token != -1)
  {
    __42__TSUZipFileArchive_newArchiveReadChannel__block_invoke_cold_2();
  }
}

uint64_t __42__TSUZipFileArchive_newArchiveReadChannel__block_invoke_2(uint64_t a1)
{
  close(*(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 endAccess];
}

void __42__TSUZipFileArchive_newArchiveReadChannel__block_invoke_3()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __42__TSUZipFileArchive_newArchiveReadChannel__block_invoke_4()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (BOOL)isValid
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__TSUZipFileArchive_isValid__block_invoke;
  v5[3] = &unk_2799C6BA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

ssize_t __28__TSUZipFileArchive_isValid__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    result = [v2 fileDescriptor];
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *(*(*(a1 + 40) + 8) + 24) = result >= 0;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v4 = 0;
    result = read(result, &v4, 0);
    *(*(*(a1 + 40) + 8) + 24) = result == 0;
  }

  return result;
}

- (id)debugDescription
{
  v3 = [OITSUDescription descriptionWithObject:self class:objc_opt_class()];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%qu", self->_archiveLength];
  [v3 addField:@"archiveLength" value:v4];

  v8.receiver = self;
  v8.super_class = TSUZipFileArchive;
  v5 = [(TSUZipArchive *)&v8 debugDescription];
  [v3 addFieldValue:v5];

  v6 = [v3 descriptionString];

  return v6;
}

@end