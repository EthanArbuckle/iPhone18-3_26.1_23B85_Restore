@interface DYCaptureArchive
+ (BOOL)isFunctionStreamFilename:(id)a3;
+ (BOOL)isInternalFilename:(id)a3;
+ (id)getReturnAllFilesPredicate;
+ (id)internalFilenamePredicate;
+ (id)standardFunctionStreamFilenamePredicate;
+ (id)standardFunctionStreamFilenamePrefixes;
+ (unint64_t)contextFromFilename:(id)a3;
- (BOOL)_createNewArchiveAtPath:(id)a3 error:(id *)a4;
- (BOOL)_flushWriteBuffer:(id *)a3;
- (BOOL)_getInfo:(id *)a3 forFilePosition:(unint64_t)a4 error:(id *)a5;
- (BOOL)_loadArchiveAtPath:(id)a3 error:(id *)a4;
- (BOOL)_performAddAlias:(id)a3 targetting:(id)a4 error:(id *)a5;
- (BOOL)_performCommit:(id *)a3;
- (BOOL)_performFinalizeAddFileAtPosition:(unsigned int)a3 name:(id)a4 data:(id)a5 error:(id *)a6;
- (BOOL)_performReplaceDataOfFile:(id)a3 withData:(id)a4 error:(id *)a5;
- (BOOL)_requestDataForFilePosition:(unint64_t)a3 buffer:(void *)a4 size:(unint64_t *)a5 error:(id *)a6;
- (BOOL)_writeIndexInPath:(id)a3 error:(id *)a4;
- (BOOL)_writeMetadataInPath:(id)a3 error:(id *)a4;
- (BOOL)addAlias:(id)a3 forName:(id)a4 options:(id)a5 error:(id *)a6 waitUntilDone:(BOOL)a7;
- (BOOL)addFileWithName:(id)a3 data:(id)a4 options:(id)a5 error:(id *)a6 waitUntilDone:(BOOL)a7;
- (BOOL)addFilesFromArchive:(id)a3 error:(id *)a4 passingTest:(id)a5;
- (BOOL)addTempFileWithName:(id)a3 options:(id)a4 fromLocation:(id)a5 error:(id *)a6;
- (BOOL)adjunctFileExistsForFilename:(id)a3 error:(id *)a4;
- (BOOL)allocatePageAlignedMemory:(void *)a3 forFilePosition:(unint64_t)a4 error:(id *)a5;
- (BOOL)commit:(id *)a3;
- (BOOL)commitForExport:(id *)a3 progressHandler:(id)a4;
- (BOOL)fileExistsForFilename:(id)a3 error:(id *)a4;
- (BOOL)fileExistsForFilenameBuffer:(const char *)a3 error:(id *)a4;
- (BOOL)getInfo:(id *)a3 forFilePosition:(unint64_t)a4 error:(id *)a5;
- (BOOL)getInfo:(id *)a3 forFilename:(id)a4 error:(id *)a5;
- (BOOL)getInfo:(id *)a3 forFilenameBuffer:(const char *)a4 error:(id *)a5;
- (BOOL)replaceDataOfFile:(id)a3 withData:(id)a4 error:(id *)a5;
- (BOOL)requestBuffer:(void *)a3 forFilePosition:(unint64_t)a4 cacheEntry:(id *)a5 needsData:(BOOL *)a6 error:(id *)a7;
- (BOOL)requestDataForFilePosition:(unint64_t)a3 buffer:(void *)a4 size:(unint64_t *)a5 error:(id *)a6;
- (BOOL)setMetadataValue:(id)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)storeAdjunctData:(id)a3 filename:(id)a4 error:(id *)a5;
- (BOOL)updateDataReferenceCounts:(id)a3 error:(id *)a4;
- (DYCaptureArchive)init;
- (DYCaptureArchive)initWithURL:(id)a3 options:(int64_t)a4 error:(id *)a5;
- (NSString)path;
- (NSURL)url;
- (id).cxx_construct;
- (id)_copyDataForFilePosition:(unint64_t)a3 error:(id *)a4;
- (id)_getCFilename:(id)a3 outSize:(unint64_t *)a4 error:(id *)a5;
- (id)_readRawDataForFilePosition:(unsigned int)a3 error:(id *)a4;
- (id)_resolveCFilename:(const char *)a3 error:(id *)a4;
- (id)copyAdjunctDataForFilename:(id)a3 error:(id *)a4;
- (id)copyDataForFilePosition:(unint64_t)a3 error:(id *)a4;
- (id)copyDataForFilename:(id)a3 error:(id *)a4;
- (id)copyDataForFilenameBuffer:(const char *)a3 error:(id *)a4;
- (id)filenamesAtIndexes:(id)a3;
- (id)filenamesWithPredicate:(id)a3 error:(id *)a4;
- (id)filenamesWithPrefix:(id)a3 error:(id *)a4;
- (id)getFilenameForFilePosition:(unint64_t)a3 error:(id *)a4;
- (id)metadataValueForKey:(id)a3;
- (id)openFileWithFilename:(id)a3 error:(id *)a4;
- (id)resolveFilename:(id)a3 error:(id *)a4;
- (int)_tryAgain:(id *)a3;
- (int64_t)_readDataForFilePosition:(unint64_t)a3 buffer:(void *)a4 size:(unint64_t)a5 error:(id *)a6;
- (int64_t)_writeBufferToBackingStore:(const void *)a3 size:(int64_t)a4 error:(id *)a5;
- (int64_t)readDataForFilePosition:(unint64_t)a3 buffer:(void *)a4 size:(unint64_t)a5 error:(id *)a6;
- (int64_t)readDataForFilename:(id)a3 buffer:(void *)a4 size:(unint64_t)a5 error:(id *)a6;
- (int64_t)readDataForFilenameBuffer:(const char *)a3 buffer:(void *)a4 size:(unint64_t)a5 error:(id *)a6;
- (uint64_t)cacheAllResources;
- (unint64_t)_reserveStringStorageSize:(unint64_t)a3;
- (unsigned)_createNewFileEntry;
- (unsigned)_createNewHashEntry:(const char *)a3 didGrowTable:(BOOL *)a4;
- (unsigned)_createNewNameEntry;
- (unsigned)_findHashEntry:(const char *)a3;
- (unsigned)_performAddFileWithName:(id)a3 dataSize:(unsigned int)a4 withFlags:(unsigned int)a5 error:(id *)a6;
- (vector<unsigned)getSortedFilePositionsForDataCaching;
- (void)_cleanBytes:(unint64_t)a3 andSkip:(id *)a4;
- (void)_fileObjectDidDeallocate;
- (void)_fileObjectDidInitialize;
- (void)_fillStringTableNSCacheForRange:(_NSRange)a3;
- (void)_growHashTable;
- (void)_performEmptyStringTableNSCache;
- (void)_springCleaning;
- (void)_swapFileTable;
- (void)_swapHashTable;
- (void)_swapNameTable;
- (void)allocateAndReadDataForFilenameBuffer:(const char *)a3 outSize:(unint64_t *)a4 error:(id *)a5;
- (void)cacheAllResources;
- (void)close;
- (void)dealloc;
- (void)discardAndClose;
- (void)getFilenames:(id *)a3 range:(_NSRange)a4;
- (void)initCache;
- (void)markMetadataModified;
- (void)releaseBytesForFilePosition:(unint64_t)a3;
- (void)resizeCache;
@end

@implementation DYCaptureArchive

+ (id)standardFunctionStreamFilenamePrefixes
{
  if (+[DYCaptureArchive standardFunctionStreamFilenamePrefixes]::prefixes_once != -1)
  {
    +[DYCaptureArchive standardFunctionStreamFilenamePrefixes];
  }

  return +[DYCaptureArchive standardFunctionStreamFilenamePrefixes]::prefixes;
}

uint64_t __58__DYCaptureArchive_standardFunctionStreamFilenamePrefixes__block_invoke()
{
  +[DYCaptureArchive standardFunctionStreamFilenamePrefixes]::prefixes = objc_opt_new();
  [+[DYCaptureArchive standardFunctionStreamFilenamePrefixes]::prefixes addObject:*MEMORY[0x277D0B1A8]];
  [+[DYCaptureArchive standardFunctionStreamFilenamePrefixes]::prefixes addObject:*MEMORY[0x277D0B170]];
  [+[DYCaptureArchive standardFunctionStreamFilenamePrefixes]::prefixes addObject:*MEMORY[0x277D0B1B8]];
  [+[DYCaptureArchive standardFunctionStreamFilenamePrefixes]::prefixes addObject:*MEMORY[0x277D0B190]];
  v0 = *MEMORY[0x277D0B198];
  v1 = *MEMORY[0x277D0B1A0];
  [+[DYCaptureArchive standardFunctionStreamFilenamePrefixes]::prefixes addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@-%@", *MEMORY[0x277D0B198], *MEMORY[0x277D0B1A0])}];
  v2 = *MEMORY[0x277D0B1B0];
  [+[DYCaptureArchive standardFunctionStreamFilenamePrefixes]::prefixes addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@-%@", v0, *MEMORY[0x277D0B1B0])}];
  v3 = *MEMORY[0x277D0B180];
  [+[DYCaptureArchive standardFunctionStreamFilenamePrefixes]::prefixes addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@-%@", v0, *MEMORY[0x277D0B180])}];
  [+[DYCaptureArchive standardFunctionStreamFilenamePrefixes]::prefixes addObject:v1];
  [+[DYCaptureArchive standardFunctionStreamFilenamePrefixes]::prefixes addObject:v2];
  [+[DYCaptureArchive standardFunctionStreamFilenamePrefixes]::prefixes addObject:v3];
  v4 = *MEMORY[0x277D0B178];
  [+[DYCaptureArchive standardFunctionStreamFilenamePrefixes]::prefixes addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@-%@", *MEMORY[0x277D0B178], v1)}];
  [+[DYCaptureArchive standardFunctionStreamFilenamePrefixes]::prefixes addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@-%@", v4, v2)}];
  [+[DYCaptureArchive standardFunctionStreamFilenamePrefixes]::prefixes addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@-%@", v4, v3)}];
  v5 = +[DYCaptureArchive standardFunctionStreamFilenamePrefixes]::prefixes;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", *MEMORY[0x277D0B1C0], v3];

  return [v5 addObject:v6];
}

+ (id)standardFunctionStreamFilenamePredicate
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__DYCaptureArchive_standardFunctionStreamFilenamePredicate__block_invoke;
  block[3] = &unk_279309890;
  block[4] = a1;
  if (+[DYCaptureArchive standardFunctionStreamFilenamePredicate]::predicate_once != -1)
  {
    dispatch_once(&+[DYCaptureArchive standardFunctionStreamFilenamePredicate]::predicate_once, block);
  }

  return +[DYCaptureArchive standardFunctionStreamFilenamePredicate]::predicate;
}

id __59__DYCaptureArchive_standardFunctionStreamFilenamePredicate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) standardFunctionStreamFilenamePrefixes];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__DYCaptureArchive_standardFunctionStreamFilenamePredicate__block_invoke_2;
  v3[3] = &unk_279309868;
  v3[4] = v1;
  result = [MEMORY[0x277CCAC30] predicateWithBlock:v3];
  +[DYCaptureArchive standardFunctionStreamFilenamePredicate]::predicate = result;
  return result;
}

BOOL __59__DYCaptureArchive_standardFunctionStreamFilenamePredicate__block_invoke_2(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__DYCaptureArchive_standardFunctionStreamFilenamePredicate__block_invoke_3;
  v5[3] = &unk_279309840;
  v5[4] = a2;
  return [objc_msgSend(*(a1 + 32) objectsPassingTest:{v5), "count"}] != 0;
}

uint64_t __59__DYCaptureArchive_standardFunctionStreamFilenamePredicate__block_invoke_3(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) hasPrefix:a2];
  *a3 = result;
  return result;
}

+ (id)internalFilenamePredicate
{
  if (+[DYCaptureArchive internalFilenamePredicate]::predicate_once != -1)
  {
    +[DYCaptureArchive internalFilenamePredicate];
  }

  return +[DYCaptureArchive internalFilenamePredicate]::predicate;
}

id __45__DYCaptureArchive_internalFilenamePredicate__block_invoke()
{
  result = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_12];
  +[DYCaptureArchive internalFilenamePredicate]::predicate = result;
  return result;
}

+ (BOOL)isFunctionStreamFilename:(id)a3
{
  v4 = [a1 standardFunctionStreamFilenamePredicate];

  return [v4 evaluateWithObject:a3];
}

+ (BOOL)isInternalFilename:(id)a3
{
  v4 = [a1 internalFilenamePredicate];

  return [v4 evaluateWithObject:a3];
}

+ (unint64_t)contextFromFilename:(id)a3
{
  v6 = 0;
  v3 = [objc_msgSend(a3 componentsSeparatedByString:{@"-", "lastObject"}];
  v4 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v3];
  [v4 scanHexLongLong:&v6];

  return v6;
}

+ (id)getReturnAllFilesPredicate
{
  if (+[DYCaptureArchive getReturnAllFilesPredicate]::predicate_once != -1)
  {
    +[DYCaptureArchive getReturnAllFilesPredicate];
  }

  return +[DYCaptureArchive getReturnAllFilesPredicate]::predicate;
}

id __46__DYCaptureArchive_getReturnAllFilesPredicate__block_invoke()
{
  result = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_21];
  +[DYCaptureArchive getReturnAllFilesPredicate]::predicate = result;
  return result;
}

- (BOOL)_createNewArchiveAtPath:(id)a3 error:(id *)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  if (([objc_opt_new() createDirectoryAtPath:a3 withIntermediateDirectories:0 attributes:0 error:a4] & 1) == 0)
  {
    v20 = *MEMORY[0x277D0B240];
LABEL_10:
    DYLog();
    goto LABEL_13;
  }

  self->_header.fourcc = 1667851384;
  *&self->_header.version = xmmword_24D65A850;
  v7 = malloc_type_malloc(0x3000uLL, 0x10000403E1C8BA9uLL);
  self->_hash_table = v7;
  if (!v7)
  {
    goto LABEL_11;
  }

  __pattern4 = -1;
  memset_pattern4(v7, &__pattern4, 0x3000uLL);
  hash_table_length = self->_header.hash_table_length;
  self->_file_table_capacity = self->_header.hash_table_length >> 1;
  v9 = 24 * (hash_table_length >> 1);
  v10 = malloc_type_malloc(v9, 0x1000040504FFAC1uLL);
  self->_file_table = v10;
  if (!v10)
  {
    goto LABEL_11;
  }

  bzero(v10, v9);
  file_table_capacity = self->_file_table_capacity;
  self->_name_table_capacity = file_table_capacity;
  v12 = 2 * file_table_capacity;
  v13 = malloc_type_malloc(2 * file_table_capacity, 0x1000040BDFB0063uLL);
  self->_name_table = v13;
  if (!v13)
  {
    goto LABEL_11;
  }

  bzero(v13, v12);
  v14 = 4 * *MEMORY[0x277D85FA0];
  self->_string_table_capacity = v14;
  v15 = malloc_type_malloc(v14, 0xCDC60E25uLL);
  self->_string_table_storage = v15;
  if (!v15 || (bzero(v15, self->_string_table_capacity), v16 = 8 * self->_name_table_capacity, v17 = malloc_type_malloc(v16, 0x100004000313F17uLL), (self->_string_table_offsets = v17) == 0))
  {
LABEL_11:
    if (a4)
    {
      v21 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:4 userInfo:0];
      result = 0;
      *a4 = v21;
      goto LABEL_14;
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  bzero(v17, v16);
  v18 = open([objc_msgSend(a3 stringByAppendingPathComponent:{@"store0", "fileSystemRepresentation"}], 2578, 420);
  self->_backingStoreFD = v18;
  if (v18 == -1)
  {
    if (a4)
    {
      v23 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA5B8];
      v25 = *__error();
      v28 = *MEMORY[0x277CCA450];
      v29[0] = @"Failed to create backing store.";
      *a4 = [v23 errorWithDomain:v24 code:v25 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v29, &v28, 1)}];
    }

    v26 = *MEMORY[0x277D0B240];
    goto LABEL_10;
  }

  self->_backingStoreSize = 0;
  self->_backingStoreWritePosition = 0;
  self->_metadata = objc_opt_new();
  self->_uuid = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  result = 1;
  self->_modified = 1;
LABEL_14:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_loadArchiveAtPath:(id)a3 error:(id *)a4
{
  v129[1] = *MEMORY[0x277D85DE8];
  v7 = [(DYCaptureArchive *)self isReadOnly];
  if (v7)
  {
    v8 = 20;
  }

  else
  {
    v8 = 22;
  }

  v9 = open([objc_msgSend(a3 stringByAppendingPathComponent:{@"index", "fileSystemRepresentation"}], v8);
  if (v9 == -1)
  {
    if (a4)
    {
      v17 = *__error();
      if (v17 == 2)
      {
        v19 = @"The index file does not exist. The capture may be incomplete or corrupt.";
      }

      else if (v17 == 13)
      {
        v18 = @"read/write";
        if (v7)
        {
          v18 = @"read";
        }

        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"The index file could not be opened because %@ permission was denied.", v18];
      }

      else
      {
        v19 = @"The index file could not be opened. The file may be in use.";
      }

      v23 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA5B8];
      v25 = *__error();
      v128 = *MEMORY[0x277CCA450];
      v129[0] = v19;
      *a4 = [v23 errorWithDomain:v24 code:v25 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v129, &v128, 1)}];
    }

    v26 = *MEMORY[0x277D0B240];
    v107 = *__error();
    goto LABEL_27;
  }

  v10 = v9;
  v11 = fcntl(v9, 3);
  fcntl(v10, 4, v11 & 0xFFFFFFFB);
  fcntl(v10, 48, 1);
  if (fstat(v10, &v111) == -1)
  {
    if (a4)
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277CCA5B8];
      v22 = *__error();
      v126 = *MEMORY[0x277CCA450];
      v127 = @"Failed to stat index.";
      *a4 = [v20 errorWithDomain:v21 code:v22 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v127, &v126, 1)}];
    }

    goto LABEL_109;
  }

  v12 = read(v10, &self->_header, 0x14uLL);
  if (v12 <= 19)
  {
    v13 = v12;
    close(v10);
    if (v13 != -1)
    {
      goto LABEL_8;
    }

    if (a4)
    {
      v29 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CCA5B8];
      v31 = *__error();
      v124 = *MEMORY[0x277CCA450];
      v125 = @"Failed to read index.";
      *a4 = [v29 errorWithDomain:v30 code:v31 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v125, &v124, 1)}];
    }

    goto LABEL_109;
  }

  if (self->_header.fourcc != 1667851384)
  {
    goto LABEL_100;
  }

  if (self->_header.version)
  {
    close(v10);
    if (a4)
    {
      v14 = *MEMORY[0x277D0AFB8];
      v15 = MEMORY[0x277D0AFC0];
      v16 = 11;
      goto LABEL_102;
    }

    goto LABEL_28;
  }

  file_table_length = self->_header.file_table_length;
  if (file_table_length > self->_header.name_table_length)
  {
    goto LABEL_100;
  }

  hash_table_length = self->_header.hash_table_length;
  if (file_table_length > hash_table_length || !hash_table_length)
  {
    goto LABEL_100;
  }

  v34 = 12 * hash_table_length;
  v35 = malloc_type_malloc(12 * hash_table_length, 0x10000403E1C8BA9uLL);
  self->_hash_table = v35;
  if (!v35)
  {
    goto LABEL_103;
  }

  v36 = read(v10, v35, v34);
  if (v36 < v34)
  {
    v37 = v36;
    close(v10);
    if (v37 == -1)
    {
      if (a4)
      {
        v38 = MEMORY[0x277CCA9B8];
        v39 = *MEMORY[0x277CCA5B8];
        v40 = *__error();
        v122 = *MEMORY[0x277CCA450];
        v123 = @"Failed to read index for hash table.";
        *a4 = [v38 errorWithDomain:v39 code:v40 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v123, &v122, 1)}];
      }

LABEL_109:
      v105 = *MEMORY[0x277D0B240];
      v109 = *__error();
LABEL_27:
      DYLog();
LABEL_28:
      LOBYTE(metadata) = 0;
      goto LABEL_29;
    }

    goto LABEL_8;
  }

  v41 = self->_header.file_table_length;
  if (v41)
  {
    v42 = 24 * v41;
    v43 = malloc_type_malloc(24 * v41, 0x1000040504FFAC1uLL);
    self->_file_table = v43;
    if (!v43)
    {
      goto LABEL_103;
    }

    v44 = read(v10, v43, v42);
    if (v44 < v42)
    {
      v45 = v44;
      close(v10);
      if (v45 == -1)
      {
        if (a4)
        {
          v46 = MEMORY[0x277CCA9B8];
          v47 = *MEMORY[0x277CCA5B8];
          v48 = *__error();
          v120 = *MEMORY[0x277CCA450];
          v121 = @"Failed to read index for file table.";
          *a4 = [v46 errorWithDomain:v47 code:v48 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v121, &v120, 1)}];
        }

        goto LABEL_109;
      }

LABEL_8:
      if (a4)
      {
        v14 = *MEMORY[0x277D0AFB8];
        v15 = MEMORY[0x277D0AFC0];
        v16 = 9;
LABEL_102:
        v99 = [v15 errorWithDomain:v14 code:v16 userInfo:0];
        LOBYTE(metadata) = 0;
        *a4 = v99;
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    file_table_capacity = self->_header.file_table_length;
    name_table_length = self->_header.name_table_length;
    self->_file_table_capacity = file_table_capacity;
    if (!name_table_length)
    {
      if (v7)
      {
        goto LABEL_91;
      }

LABEL_70:
      self->_name_table_capacity = file_table_capacity;
      v62 = 2 * file_table_capacity;
      v63 = malloc_type_malloc(v62, 0x1000040BDFB0063uLL);
      self->_name_table = v63;
      bzero(v63, v62);
      if (!self->_name_table)
      {
        goto LABEL_103;
      }

      if (self->_header.name_table_length)
      {
        goto LABEL_72;
      }

      goto LABEL_79;
    }
  }

  else if (v7)
  {
    name_table_length = self->_header.name_table_length;
    if (!name_table_length)
    {
      goto LABEL_91;
    }
  }

  else
  {
    v51 = self->_header.hash_table_length;
    if (v51 <= 3)
    {
      v52 = 1;
    }

    else
    {
      v52 = v51 >> 1;
    }

    self->_file_table_capacity = v52;
    v53 = malloc_type_malloc(24 * v52, 0x1000040504FFAC1uLL);
    self->_file_table = v53;
    if (!v53)
    {
      goto LABEL_103;
    }

    name_table_length = self->_header.name_table_length;
    if (!name_table_length)
    {
      file_table_capacity = self->_file_table_capacity;
      goto LABEL_70;
    }
  }

  v54 = 2 * name_table_length;
  v55 = malloc_type_malloc(v54, 0x1000040BDFB0063uLL);
  self->_name_table = v55;
  if (!v55)
  {
    goto LABEL_103;
  }

  bzero(v55, v54);
  v56 = read(v10, self->_name_table, v54);
  if (v56 < v54)
  {
    v57 = v56;
    close(v10);
    if (v57 == -1)
    {
      if (a4)
      {
        v58 = MEMORY[0x277CCA9B8];
        v59 = *MEMORY[0x277CCA5B8];
        v60 = *__error();
        v118 = *MEMORY[0x277CCA450];
        v119 = @"Failed to read index for name table.";
        *a4 = [v58 errorWithDomain:v59 code:v60 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v119, &v118, 1)}];
      }

      goto LABEL_109;
    }

    goto LABEL_8;
  }

  v61 = self->_header.name_table_length;
  self->_name_table_capacity = v61;
  if (v61)
  {
LABEL_72:
    v64 = lseek(v10, 0, 1);
    if (v64 == -1)
    {
      if (a4)
      {
        v78 = MEMORY[0x277CCA9B8];
        v79 = *MEMORY[0x277CCA5B8];
        v80 = *__error();
        v116 = *MEMORY[0x277CCA450];
        v117 = @"Failed to lseek for index.";
        *a4 = [v78 errorWithDomain:v79 code:v80 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v117, &v116, 1)}];
      }

      v81 = *MEMORY[0x277D0B240];
      v108 = *__error();
      DYLog();
      close(v10);
      goto LABEL_28;
    }

    v65 = v111.st_size - v64;
    v66 = (v111.st_size - v64 + *MEMORY[0x277D85FA0]) & -*MEMORY[0x277D85FA0];
    self->_string_table_capacity = v66;
    v67 = malloc_type_malloc(v66, 0x9C91F5FCuLL);
    self->_string_table_storage = v67;
    if (v67)
    {
      bzero(&v67[v65], self->_string_table_capacity - v65);
      v68 = read(v10, self->_string_table_storage, v65);
      if (v68 < v65)
      {
        v69 = v68;
        close(v10);
        if (v69 == -1)
        {
          if (a4)
          {
            v70 = MEMORY[0x277CCA9B8];
            v71 = *MEMORY[0x277CCA5B8];
            v72 = *__error();
            v114 = *MEMORY[0x277CCA450];
            v115 = @"Failed to read index for string index.";
            *a4 = [v70 errorWithDomain:v71 code:v72 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v115, &v114, 1)}];
          }

          goto LABEL_109;
        }

        goto LABEL_8;
      }

      v82 = 8 * self->_name_table_capacity;
      v83 = malloc_type_malloc(v82, 0x100004000313F17uLL);
      self->_string_table_offsets = v83;
      if (v83)
      {
        v77 = v65 + 1;
        bzero(v83, v82);
        goto LABEL_87;
      }
    }

    goto LABEL_103;
  }

  if (!v7)
  {
LABEL_79:
    v73 = 4 * *MEMORY[0x277D85FA0];
    self->_string_table_capacity = v73;
    v74 = malloc_type_malloc(v73, 0xE6050ABAuLL);
    self->_string_table_storage = v74;
    if (v74)
    {
      bzero(v74, self->_string_table_capacity);
      v75 = 8 * self->_name_table_capacity;
      v76 = malloc_type_malloc(v75, 0x100004000313F17uLL);
      self->_string_table_offsets = v76;
      if (v76)
      {
        bzero(v76, v75);
        v77 = 0;
LABEL_87:
        v84 = self->_header.name_table_length;
        if (v84 < 2)
        {
          goto LABEL_91;
        }

        string_table_offsets = self->_string_table_offsets;
        name_table = self->_name_table;
        v89 = *string_table_offsets;
        v87 = string_table_offsets + 1;
        v88 = v89;
        v90 = v84 - 1;
        while (1)
        {
          var0 = name_table->var0;
          ++name_table;
          v88 += var0;
          if (v88 > v77)
          {
            break;
          }

          *v87++ = v88;
          if (!--v90)
          {
            goto LABEL_91;
          }
        }

LABEL_100:
        close(v10);
        if (a4)
        {
          v14 = *MEMORY[0x277D0AFB8];
          v15 = MEMORY[0x277D0AFC0];
          v16 = 10;
          goto LABEL_102;
        }

        goto LABEL_28;
      }
    }

LABEL_103:
    close(v10);
    if (a4)
    {
      v14 = *MEMORY[0x277D0AFB8];
      v15 = MEMORY[0x277D0AFC0];
      v16 = 4;
      goto LABEL_102;
    }

    goto LABEL_28;
  }

LABEL_91:
  close(v10);
  v92 = open([objc_msgSend(a3 stringByAppendingPathComponent:{@"store0", "fileSystemRepresentation"}], v8);
  self->_backingStoreFD = v92;
  if (v92 == -1)
  {
    if (a4)
    {
      v102 = MEMORY[0x277CCA9B8];
      v103 = *MEMORY[0x277CCA5B8];
      v104 = *__error();
      v112 = *MEMORY[0x277CCA450];
      v113 = @"Failed to open backing store.";
      *a4 = [v102 errorWithDomain:v103 code:v104 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v113, &v112, 1)}];
    }

    goto LABEL_109;
  }

  v93 = v92;
  v94 = fcntl(v92, 3);
  fcntl(v93, 4, v94 & 0xFFFFFFFB);
  if (fstat(self->_backingStoreFD, &v110) == -1 || (st_size = v110.st_size, self->_backingStoreSize = v110.st_size, self->_backingStoreWritePosition = st_size, lseek(self->_backingStoreFD, st_size, 0) == -1))
  {
    if (a4)
    {
      v100 = MEMORY[0x277CCA9B8];
      v101 = *MEMORY[0x277CCA5B8];
      v16 = *__error();
      v15 = v100;
      v14 = v101;
      goto LABEL_102;
    }

    goto LABEL_28;
  }

  metadata = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:objc_msgSend(a3 options:"stringByAppendingPathComponent:" error:{@"metadata", 0, a4}];
  if (metadata)
  {
    v96 = metadata;
    self->_metadata = [objc_msgSend(MEMORY[0x277CCAC58] propertyListWithData:metadata options:0 format:0 error:{a4), "mutableCopy"}];

    metadata = self->_metadata;
    if (metadata)
    {
      v97 = [(NSMutableDictionary *)metadata objectForKey:@"(uuid)"];
      v98 = MEMORY[0x277CBECE8];
      if (v97)
      {
        self->_uuid = CFUUIDCreateFromString(*MEMORY[0x277CBECE8], v97);
        [(NSMutableDictionary *)self->_metadata removeObjectForKey:@"(uuid)"];
      }

      if (self->_uuid)
      {
        LOBYTE(metadata) = 1;
      }

      else
      {
        self->_uuid = CFUUIDCreate(*v98);
        LOBYTE(metadata) = 1;
        if (!v7)
        {
          self->_modified = 1;
        }
      }
    }
  }

LABEL_29:
  v28 = *MEMORY[0x277D85DE8];
  return metadata;
}

- (void)_swapHashTable
{
  hash_table_length = self->_header.hash_table_length;
  if (hash_table_length)
  {
    p_var2 = &self->_hash_table->var2;
    do
    {
      *(p_var2 - 1) = vrev32_s8(*(p_var2 - 2));
      *p_var2 = bswap32(*p_var2);
      p_var2 += 3;
      --hash_table_length;
    }

    while (hash_table_length);
  }
}

- (void)_swapFileTable
{
  if (self->_header.file_table_length)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = &self->_file_table[v2];
      *&v4->var0 = vrev32_s8(*&v4->var0);
      v4->var2 = bswap64(v4->var2);
      *&v4->var3 = vrev32_s8(*&v4->var3);
      ++v3;
      ++v2;
    }

    while (v3 < self->_header.file_table_length);
  }
}

- (void)_swapNameTable
{
  name_table_length = self->_header.name_table_length;
  if (name_table_length)
  {
    name_table = self->_name_table;
    do
    {
      name_table->var0 = bswap32(name_table->var0) >> 16;
      ++name_table;
      --name_table_length;
    }

    while (name_table_length);
  }
}

- (DYCaptureArchive)init
{
  [(DYCaptureArchive *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (DYCaptureArchive)initWithURL:(id)a3 options:(int64_t)a4 error:(id *)a5
{
  v43[1] = *MEMORY[0x277D85DE8];
  self->_lock_readers = 0;
  self->_lock_global_semaphore = dispatch_semaphore_create(1);
  self->_blocking_readers = 0;
  v9 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"gputools.%@.%p", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", object_getClassName(self)), self), "UTF8String"];
  self->_write_queue = dispatch_queue_create(v9, 0);
  self->_add_group = dispatch_group_create();
  v37.receiver = self;
  v37.super_class = DYCaptureArchive;
  v10 = [(DYCaptureArchive *)&v37 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_30;
  }

  v10->_backingStoreFD = -1;
  v10->_options = a4;
  if ((a4 & 0xFFFFFFFFFFFFF5FCLL) != 0)
  {
    if (a5)
    {
      v12 = MEMORY[0x277D0AFC0];
      v13 = *MEMORY[0x277CCA5B8];
      v42 = *MEMORY[0x277CCA450];
      v43[0] = @"Received unexpected options.";
      v14 = MEMORY[0x277CBEAC0];
      v15 = v43;
      v16 = &v42;
LABEL_5:
      v17 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
      v18 = v12;
      v19 = v13;
      v20 = 22;
LABEL_28:
      *a5 = [v18 errorWithDomain:v19 code:v20 userInfo:v17];
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  v21 = [objc_msgSend(a3 "URLByResolvingSymlinksInPath")];
  if (!v21)
  {
    goto LABEL_25;
  }

  v22 = v21;
  v23 = DYFSDirectoryExists();
  v24 = v23;
  if (v23)
  {
    if ((a4 & 0xA00) == 0xA00)
    {
      if (a5)
      {
        v25 = MEMORY[0x277D0AFC0];
        v26 = *MEMORY[0x277CCA5B8];
        v40 = *MEMORY[0x277CCA450];
        v41 = @"File already exists.";
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v18 = v25;
        v19 = v26;
        v20 = 17;
        goto LABEL_28;
      }

      goto LABEL_29;
    }

    if (![(DYCaptureArchive *)v11 _loadArchiveAtPath:v22 error:a5])
    {
      goto LABEL_29;
    }
  }

  else
  {
    if ((a4 & 0x200) == 0)
    {
      if (!a5)
      {
        goto LABEL_29;
      }

      v18 = MEMORY[0x277D0AFC0];
      v19 = *MEMORY[0x277CCA5B8];
      v20 = 2;
LABEL_27:
      v17 = 0;
      goto LABEL_28;
    }

    if ((a4 & 3) == 0)
    {
      if (!a5)
      {
        goto LABEL_29;
      }

      v12 = MEMORY[0x277D0AFC0];
      v13 = *MEMORY[0x277CCA5B8];
      v38 = *MEMORY[0x277CCA450];
      v39 = @"File exists and is read only.";
      v14 = MEMORY[0x277CBEAC0];
      v15 = &v39;
      v16 = &v38;
      goto LABEL_5;
    }

    if (![(DYCaptureArchive *)v11 _createNewArchiveAtPath:v22 error:a5])
    {
LABEL_29:

      v11 = 0;
      goto LABEL_30;
    }
  }

  v27 = [objc_msgSend(MEMORY[0x277CBEBC0] fileURLWithPath:v22 isDirectory:{1), "fileReferenceURL"}];
  v11->_url = v27;
  if (!v27)
  {
    v28 = [MEMORY[0x277CBEBC0] fileURLWithPath:v22 isDirectory:1];
    v11->_url = v28;
    if (!v28)
    {
LABEL_25:
      if (!a5)
      {
        goto LABEL_29;
      }

      v18 = MEMORY[0x277D0AFC0];
      v19 = *MEMORY[0x277D0AFB8];
      v20 = 1;
      goto LABEL_27;
    }
  }

  v29 = 8 * v11->_name_table_capacity;
  v30 = malloc_type_malloc(v29, 0x80040B8603338uLL);
  v11->_string_table_nscache = v30;
  bzero(v30, v29);
  if (![(DYCaptureArchive *)v11 isReadOnly])
  {
    v31 = malloc_type_malloc(0x40000uLL, 0xCE822392uLL);
    v11->_store_write_buffer = v31;
    v11->_store_write_ptr = v31;
    v11->_aliasCreationMap = objc_opt_new();
  }

  v32 = *MEMORY[0x277D85FA0];
  v11->_read_buffer_capacity = 25 * *MEMORY[0x277D85FA0];
  v11->_read_buffer = malloc_type_malloc(400 * v32, 0x97491636uLL);
  v11->_read_buffer_sem = dispatch_semaphore_create(16);
  v11->_read_buffer_tokens_lock = 0;
  std::vector<unsigned int>::resize(&v11->_read_buffer_tokens, 0x10uLL);
  begin = v11->_read_buffer_tokens.__begin_;
  *begin = xmmword_24D65A860;
  *(begin + 1) = xmmword_24D65A870;
  *(begin + 2) = xmmword_24D65A880;
  *(begin + 3) = xmmword_24D65A890;
  if ((v24 & 1) == 0 && ![(DYCaptureArchive *)v11 _performCommit:a5])
  {
    goto LABEL_29;
  }

  v34 = compression_decode_scratch_buffer_size(COMPRESSION_ZLIB);
  v11->_scratchSize = v34;
  v11->_scratch = malloc_type_malloc(16 * v34, 0x100004077774924uLL);
  [(DYCaptureArchive *)v11 initCache];
LABEL_30:
  v35 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)dealloc
{
  if (self->_modified)
  {
    v3 = *MEMORY[0x277D0B248];
    v22 = self;
    DYLog();
  }

  [(DYCaptureArchive *)self discardAndClose];
  write_queue = self->_write_queue;
  if (write_queue)
  {
    dispatch_release(write_queue);
    self->_write_queue = 0;
  }

  add_group = self->_add_group;
  if (add_group)
  {
    dispatch_release(add_group);
    self->_add_group = 0;
  }

  hash_table = self->_hash_table;
  if (hash_table)
  {
    free(hash_table);
  }

  file_table = self->_file_table;
  if (file_table)
  {
    free(file_table);
  }

  name_table = self->_name_table;
  if (name_table)
  {
    free(name_table);
  }

  begin = self->_cacheTable.__begin_;
  if (begin != self->_cacheTable.__end_)
  {
    if (self->_header.file_table_length)
    {
      v10 = 0;
      v11 = 0;
      v12 = MEMORY[0x277D85F48];
      do
      {
        v13 = self->_cacheTable.__begin_ + v10;
        dispatch_release(*(v13 + 3));
        *(v13 + 3) = 0;
        if (*v13)
        {
          mach_vm_deallocate(*v12, *v13, *(v13 + 1));
          *v13 = 0;
          *(v13 + 1) = 0;
        }

        ++v11;
        v10 += 32;
      }

      while (v11 < self->_header.file_table_length);
      begin = self->_cacheTable.__begin_;
    }

    self->_cacheTable.__end_ = begin;
  }

  free(self->_scratch);
  self->_scratch = 0;
  string_table_storage = self->_string_table_storage;
  if (string_table_storage)
  {
    free(string_table_storage);
  }

  string_table_offsets = self->_string_table_offsets;
  if (string_table_offsets)
  {
    free(string_table_offsets);
  }

  string_table_nscache = self->_string_table_nscache;
  if (string_table_nscache)
  {
    free(string_table_nscache);
  }

  read_buffer = self->_read_buffer;
  if (read_buffer)
  {
    free(read_buffer);
  }

  store_write_buffer = self->_store_write_buffer;
  if (store_write_buffer)
  {
    free(store_write_buffer);
  }

  uuid = self->_uuid;
  if (uuid)
  {
    CFRelease(uuid);
  }

  lock_global_semaphore = self->_lock_global_semaphore;
  if (lock_global_semaphore)
  {
    dispatch_release(lock_global_semaphore);
    self->_lock_global_semaphore = 0;
  }

  read_buffer_sem = self->_read_buffer_sem;
  if (read_buffer_sem)
  {
    dispatch_release(read_buffer_sem);
    self->_read_buffer_sem = 0;
  }

  v23.receiver = self;
  v23.super_class = DYCaptureArchive;
  [(DYCaptureArchive *)&v23 dealloc];
}

- (NSURL)url
{
  v2 = [(NSURL *)self->_url filePathURL];

  return v2;
}

- (NSString)path
{
  v2 = [(NSURL *)self->_url filePathURL];

  return [(NSURL *)v2 path];
}

- (void)_fileObjectDidInitialize
{
  if (!atomic_fetch_add(&self->_open_file_count, 1u))
  {
    v2 = self;
  }
}

- (void)_fileObjectDidDeallocate
{
  if (atomic_fetch_add(&self->_open_file_count, 0xFFFFFFFF) == 1)
  {
  }
}

- (id)_getCFilename:(id)a3 outSize:(unint64_t *)a4 error:(id *)a5
{
  v8 = [a3 lengthOfBytesUsingEncoding:1] + 1;
  v9 = [MEMORY[0x277CBEB28] dataWithLength:v8];
  if ([a3 getCString:objc_msgSend(v9 maxLength:"mutableBytes") encoding:{v8, 1}])
  {
    if (a4)
    {
      *a4 = v8;
    }
  }

  else
  {
    v9 = 0;
    if (a5)
    {
      *a5 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:1 userInfo:0];
    }
  }

  return v9;
}

- (void)_growHashTable
{
  v17 = 0;
  hash_table_length = self->_header.hash_table_length;
  hash_table = self->_hash_table;
  v5 = malloc_type_malloc(12 * (2 * hash_table_length), 0x10000403E1C8BA9uLL);
  self->_hash_table = v5;
  self->_header.hash_table_length = 2 * hash_table_length;
  __pattern4 = -1;
  memset_pattern4(v5, &__pattern4, 12 * (2 * hash_table_length));
  if (hash_table_length)
  {
    string_table_storage = self->_string_table_storage;
    v7 = hash_table_length;
    v8 = hash_table;
    do
    {
      if (v8->var2 == -1)
      {
        v9 = [(DYCaptureArchive *)self _createNewHashEntry:&string_table_storage[self->_string_table_offsets[v8->var1]] didGrowTable:&v17];
        v10 = &self->_hash_table[v9];
        var2 = v8->var2;
        *&v10->var0 = *&v8->var0;
        v10->var2 = var2;
        v8->var0 = v9;
      }

      ++v8;
      --v7;
    }

    while (v7);
    p_var2 = &hash_table->var2;
    do
    {
      if (*p_var2 != -1)
      {
        v13 = [(DYCaptureArchive *)self _createNewHashEntry:&string_table_storage[self->_string_table_offsets[*(p_var2 - 1)]] didGrowTable:&v17];
        v14 = &self->_hash_table[v13];
        v15 = *p_var2;
        *&v14->var0 = *(p_var2 - 1);
        v14->var2 = v15;
        self->_hash_table[v13].var2 = hash_table[*p_var2].var0;
      }

      p_var2 += 3;
      --hash_table_length;
    }

    while (hash_table_length);
  }

  free(hash_table);
}

- (unsigned)_createNewFileEntry
{
  file_table_length = self->_header.file_table_length;
  if (file_table_length == self->_file_table_capacity)
  {
    self->_file_table_capacity = 2 * file_table_length;
    self->_file_table = malloc_type_realloc(self->_file_table, 48 * file_table_length, 0x1000040504FFAC1uLL);
    file_table_length = self->_header.file_table_length;
  }

  self->_header.file_table_length = file_table_length + 1;
  [(DYCaptureArchive *)self resizeCache];
  return file_table_length;
}

- (unsigned)_createNewNameEntry
{
  name_table_length = self->_header.name_table_length;
  if (name_table_length == self->_name_table_capacity)
  {
    self->_name_table_capacity = 2 * name_table_length;
    self->_name_table = malloc_type_realloc(self->_name_table, 2 * (2 * name_table_length), 0x1000040BDFB0063uLL);
    self->_string_table_offsets = malloc_type_realloc(self->_string_table_offsets, 8 * self->_name_table_capacity, 0x100004000313F17uLL);
    v4 = malloc_type_realloc(self->_string_table_nscache, 8 * self->_name_table_capacity, 0x80040B8603338uLL);
    self->_string_table_nscache = v4;
    bzero(&v4[name_table_length], 8 * name_table_length);
    LODWORD(name_table_length) = self->_header.name_table_length;
  }

  self->_header.name_table_length = name_table_length + 1;
  return name_table_length;
}

- (unint64_t)_reserveStringStorageSize:(unint64_t)a3
{
  name_table_length = self->_header.name_table_length;
  if (name_table_length)
  {
    v5 = name_table_length - 1;
    string_table_capacity = self->_string_table_capacity;
    v7 = self->_string_table_offsets[name_table_length - 1];
    var0 = self->_name_table[v5].var0;
    if (v7 + a3 + var0 > string_table_capacity)
    {
      v9 = ((a3 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0]) + string_table_capacity;
      v10 = malloc_type_realloc(self->_string_table_storage, v9, 0xA1D9D7F9uLL);
      self->_string_table_storage = v10;
      bzero(&v10[self->_string_table_capacity], v9 - self->_string_table_capacity);
      self->_string_table_capacity = v9;
      v7 = self->_string_table_offsets[v5];
      var0 = self->_name_table[v5].var0;
    }

    return v7 + var0;
  }

  else
  {
    v12 = self->_string_table_capacity;
    if (v12 >= a3)
    {
      return 0;
    }

    else
    {
      v13 = ((a3 + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0]) + v12;
      v14 = malloc_type_realloc(self->_string_table_storage, v13, 0x97E2D33AuLL);
      self->_string_table_storage = v14;
      bzero(&v14[self->_string_table_capacity], v13 - self->_string_table_capacity);
      result = 0;
      self->_string_table_capacity = v13;
    }
  }

  return result;
}

- (void)_performEmptyStringTableNSCache
{
  if (self->_string_table_nscache)
  {
    name_table_length = self->_header.name_table_length;
    if (name_table_length)
    {
      v4 = 0;
      v5 = 8 * name_table_length;
      do
      {

        self->_string_table_nscache[v4 / 8] = 0;
        v4 += 8;
      }

      while (v5 != v4);
    }
  }
}

- (void)_fillStringTableNSCacheForRange:(_NSRange)a3
{
  length = a3.length;
  if (LODWORD(a3.location) < LODWORD(a3.location) + LODWORD(a3.length))
  {
    string_table_storage = self->_string_table_storage;
    location_low = LODWORD(a3.location);
    do
    {
      if (!self->_string_table_nscache[location_low])
      {
        v7 = self->_string_table_offsets[location_low];
        v8 = [(DYCaptureArchive *)self isReadOnly];
        v9 = objc_alloc(MEMORY[0x277CCACA8]);
        v10 = self->_name_table[location_low].var0 - 1;
        v11 = &string_table_storage[v7];
        if (v8)
        {
          v12 = [v9 initWithBytesNoCopy:v11 length:v10 encoding:1 freeWhenDone:0];
        }

        else
        {
          v12 = [v9 initWithBytes:v11 length:v10 encoding:1];
        }

        self->_string_table_nscache[location_low] = v12;
      }

      ++location_low;
      --length;
    }

    while (length);
  }
}

- (id)filenamesAtIndexes:(id)a3
{
  v14[50] = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  v13[1] = [(DYCaptureArchive *)self countOfFilenames];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  do
  {
    v6 = [a3 getIndexes:v14 maxCount:50 inIndexRange:v13];
    v7 = v14[v6 - 1] - v14[0];
    [(DYCaptureArchive *)self _fillStringTableNSCacheForRange:?];
    if (!v6)
    {
      break;
    }

    v8 = 0;
    v9 = 1;
    do
    {
      [v5 addObject:self->_string_table_nscache[v14[v8]]];
      v8 = v9;
    }

    while (v6 > v9++);
  }

  while (v6 >= 0x32);
  result = v5;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)getFilenames:(id *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  [(DYCaptureArchive *)self _fillStringTableNSCacheForRange:a4.location, a4.length];
  v8 = &self->_string_table_nscache[location];

  memmove(a3, v8, 8 * length);
}

- (vector<unsigned)getSortedFilePositionsForDataCaching
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  std::vector<unsigned long long>::reserve(retstr, self->_header.file_table_length);
  if (self->_header.file_table_length)
  {
    v5 = 0;
    end = retstr->__end_;
    do
    {
      cap = retstr->__cap_;
      if (end >= cap)
      {
        begin = retstr->__begin_;
        v9 = end - retstr->__begin_;
        v10 = (v9 >> 3) + 1;
        if (v10 >> 61)
        {
          std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
        }

        v11 = cap - begin;
        if (v11 >> 2 > v10)
        {
          v10 = v11 >> 2;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(retstr, v12);
        }

        v13 = (8 * (v9 >> 3));
        *v13 = v5;
        end = v13 + 1;
        memcpy(0, begin, v9);
        v14 = retstr->__begin_;
        retstr->__begin_ = 0;
        retstr->__end_ = end;
        retstr->__cap_ = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *end++ = v5;
      }

      retstr->__end_ = end;
      ++v5;
    }

    while (v5 != self->_header.file_table_length);
  }

  else
  {
    end = retstr->__end_;
  }

  v15 = retstr->__begin_;
  v16 = 126 - 2 * __clz(end - retstr->__begin_);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __56__DYCaptureArchive_getSortedFilePositionsForDataCaching__block_invoke;
  v19[3] = &unk_2793098D8;
  v19[4] = self;
  v20 = v19;
  if (end == v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  return std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer}&)(unsigned long long,unsigned long long),unsigned long long *,false>(v15, end, &v20, v17, 1);
}

BOOL __56__DYCaptureArchive_getSortedFilePositionsForDataCaching__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 64);
  v4 = (v3 + 24 * a2);
  v5 = (v3 + 24 * a3);
  v6 = v4[5];
  v7 = v5[5];
  v8 = v6 > v7;
  if (v6 == v7)
  {
    return *v4 > *v5;
  }

  return v8;
}

- (id)filenamesWithPrefix:(id)a3 error:(id *)a4
{
  lock_global_semaphore = self->_lock_global_semaphore;
  AutoReaderLock::AutoReaderLock(v22, &self->_lock_readers, lock_global_semaphore, &self->_blocking_readers);
  lock_global_semaphore = 0;
  v8 = [-[DYCaptureArchive _getCFilename:outSize:error:](self _getCFilename:a3 outSize:&lock_global_semaphore error:{a4), "bytes"}];
  if (v8)
  {
    lock_global_semaphore = (lock_global_semaphore - 1);
    string_table_storage = self->_string_table_storage;
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    name_table_length = self->_header.name_table_length;
    if (name_table_length)
    {
      for (i = 0; i != name_table_length; ++i)
      {
        v13 = &string_table_storage[self->_string_table_offsets[i]];
        v14 = *v8;
        v15 = *v8 != 0;
        v16 = *v13;
        if (*v13)
        {
          v17 = v14 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
LABEL_15:
          if (v16)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v18 = 1;
          while (v16 == v14)
          {
            v14 = v8[v18];
            v15 = v8[v18] != 0;
            v16 = v13[v18++];
            if (v16)
            {
              v19 = v14 == 0;
            }

            else
            {
              v19 = 1;
            }

            if (v19)
            {
              goto LABEL_15;
            }
          }

          v15 = 1;
        }

        if (!v15)
        {
LABEL_19:
          [v10 addObject:{-[DYCaptureArchive objectInFilenamesAtIndex:](self, "objectInFilenamesAtIndex:", i)}];
        }
      }
    }

    v20 = v10;
  }

  else
  {
    v20 = 0;
  }

  AutoReaderLock::~AutoReaderLock(v22, v7);
  return v20;
}

- (id)filenamesWithPredicate:(id)a3 error:(id *)a4
{
  [(DYCaptureArchive *)self _fillStringTableNSCacheForRange:0, self->_header.name_table_length];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  name_table_length = self->_header.name_table_length;
  if (name_table_length)
  {
    v8 = 0;
    v9 = 8 * name_table_length;
    do
    {
      v10 = self->_string_table_nscache[v8 / 8];
      if ([a3 evaluateWithObject:v10])
      {
        [v6 addObject:v10];
      }

      v8 += 8;
    }

    while (v9 != v8);
  }

  return v6;
}

- (id)_resolveCFilename:(const char *)a3 error:(id *)a4
{
  v7 = [(DYCaptureArchive *)self _findHashEntry:?];
  if (v7 == -1)
  {
    if (a4)
    {
      *a4 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:13 userInfo:0];
    }

    return 0;
  }

  else
  {
    hash_table = self->_hash_table;
    var2 = hash_table[v7].var2;
    if (var2 == -1)
    {
      v12 = MEMORY[0x277CCACA8];

      return [v12 stringWithCString:a3 encoding:1];
    }

    else
    {
      var1 = hash_table[var2].var1;

      return [(DYCaptureArchive *)self objectInFilenamesAtIndex:var1];
    }
  }
}

- (id)resolveFilename:(id)a3 error:(id *)a4
{
  lock_global_semaphore = self->_lock_global_semaphore;
  AutoReaderLock::AutoReaderLock(v12, &self->_lock_readers, lock_global_semaphore, &self->_blocking_readers);
  if (![a3 length])
  {
    if (a4)
    {
      v8 = 1;
      goto LABEL_7;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  if (![(DYCaptureArchive *)self isClosed])
  {
    v10 = [-[DYCaptureArchive _getCFilename:outSize:error:](self _getCFilename:a3 outSize:0 error:{a4), "bytes"}];
    if (v10)
    {
      v9 = [(DYCaptureArchive *)self _resolveCFilename:v10 error:a4];
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (!a4)
  {
    goto LABEL_10;
  }

  v8 = 20;
LABEL_7:
  v9 = 0;
  *a4 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:v8 userInfo:0];
LABEL_11:
  AutoReaderLock::~AutoReaderLock(v12, v7);
  return v9;
}

- (BOOL)_writeMetadataInPath:(id)a3 error:(id *)a4
{
  v7 = CFUUIDCreateString(*MEMORY[0x277CBECE8], self->_uuid);
  if (v7)
  {
    v8 = v7;
    [(NSMutableDictionary *)self->_metadata setObject:v7 forKey:@"(uuid)"];
    CFRelease(v8);
  }

  v9 = [MEMORY[0x277CCAC58] dataWithPropertyList:self->_metadata format:200 options:0 error:a4];
  [(NSMutableDictionary *)self->_metadata removeObjectForKey:@"(uuid)"];
  if (!v9)
  {
    return 0;
  }

  v10 = [a3 stringByAppendingPathComponent:@"metadata"];

  return [v9 writeToFile:v10 options:1 error:a4];
}

- (BOOL)_writeIndexInPath:(id)a3 error:(id *)a4
{
  v7 = [objc_msgSend(a3 stringByAppendingPathComponent:{@".index", "fileSystemRepresentation"}];
  v8 = open(v7, 1570, 420);
  if (v8 == -1)
  {
    goto LABEL_39;
  }

  v9 = v8;
  hash_table_length = self->_header.hash_table_length;
  v11 = 12 * hash_table_length;
  v12 = 24 * self->_header.file_table_length;
  name_table_length = self->_header.name_table_length;
  v14 = 2 * name_table_length;
  v33 = self->_header.name_table_length;
  file_table_length = self->_header.file_table_length;
  v15 = name_table_length ? self->_string_table_offsets[(name_table_length - 1)] + self->_name_table[(name_table_length - 1)].var0 : 0;
  if (ftruncate(v8, v11 + v12 + v14 + v15 + 20) == -1)
  {
LABEL_39:
    if (!a4)
    {
      return 0;
    }

LABEL_40:
    v31 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    result = 0;
    *a4 = v31;
    return result;
  }

  v32 = a4;
  v16 = 0;
  do
  {
    v17 = write(v9, &self->_header + v16, 20 - v16);
    if (v17 == -1)
    {
      if (*__error() != 4)
      {
LABEL_38:
        a4 = v32;
        goto LABEL_39;
      }
    }

    else
    {
      v16 += v17;
    }
  }

  while (v16 < 20);
  if (hash_table_length)
  {
    v18 = 0;
    do
    {
      v19 = write(v9, self->_hash_table + v18, v11 - v18);
      if (v19 == -1)
      {
        if (*__error() != 4)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v18 += v19;
      }
    }

    while (v18 < v11);
  }

  if (file_table_length)
  {
    v20 = 0;
    do
    {
      v21 = write(v9, self->_file_table + v20, v12 - v20);
      if (v21 == -1)
      {
        if (*__error() != 4)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v20 += v21;
      }
    }

    while (v20 < v12);
  }

  if (v33)
  {
    v22 = 0;
    do
    {
      v23 = write(v9, self->_name_table + v22, v14 - v22);
      if (v23 == -1)
      {
        if (*__error() != 4)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v22 += v23;
      }
    }

    while (v22 < v14);
  }

  if (v15 >= 1)
  {
    v24 = 0;
    do
    {
      v25 = write(v9, self->_string_table_storage + v24, v15 - v24);
      if (v25 == -1)
      {
        if (*__error() != 4)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v24 += v25;
      }
    }

    while (v24 < v15);
  }

  fcntl(self->_backingStoreFD, 51);
  close(v9);
  v26 = [objc_msgSend(a3 stringByAppendingPathComponent:{@"index", "fileSystemRepresentation"}];
  rename(v7, v26, v27);
  v29 = v28 == -1;
  result = v28 != -1;
  a4 = v32;
  if (v32 && v29)
  {
    goto LABEL_40;
  }

  return result;
}

- (BOOL)_performCommit:(id *)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (!self->_modified)
  {
    goto LABEL_17;
  }

  if ([(DYCaptureArchive *)self isReadOnly])
  {
    if (a3)
    {
      v5 = *MEMORY[0x277D0AFB8];
      v6 = MEMORY[0x277D0AFC0];
      v7 = 7;
LABEL_5:
      v8 = 0;
LABEL_6:
      v9 = [v6 errorWithDomain:v5 code:v7 userInfo:v8];
      LOBYTE(v10) = 0;
      *a3 = v9;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v11 = [(DYCaptureArchive *)self path];
  if (self->_store_write_ptr != self->_store_write_buffer)
  {
    if ([DYCaptureArchive _writeBufferToBackingStore:"_writeBufferToBackingStore:size:error:" size:? error:?]== -1)
    {
      goto LABEL_22;
    }

    self->_store_write_ptr = self->_store_write_buffer;
  }

  fcntl(self->_backingStoreFD, 51);
  backingStoreWritePosition = self->_backingStoreWritePosition;
  if (self->_backingStoreSize > backingStoreWritePosition)
  {
    if (ftruncate(self->_backingStoreFD, backingStoreWritePosition) == -1)
    {
      if (a3)
      {
        v15 = MEMORY[0x277CCA9B8];
        v16 = *MEMORY[0x277CCA5B8];
        v7 = *__error();
        v6 = v15;
        v5 = v16;
        goto LABEL_5;
      }

LABEL_22:
      LOBYTE(v10) = 0;
      goto LABEL_23;
    }

    self->_backingStoreSize = self->_backingStoreWritePosition;
  }

  if (!v11)
  {
    if (a3)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277D0AFB8];
      v19 = *MEMORY[0x277CCA450];
      v20[0] = @"Capture archive path is nil";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v6 = v13;
      v5 = v14;
      v7 = 14;
      goto LABEL_6;
    }

    goto LABEL_22;
  }

  v10 = [(DYCaptureArchive *)self _writeMetadataInPath:v11 error:a3];
  if (v10)
  {
    v10 = [(DYCaptureArchive *)self _writeIndexInPath:v11 error:a3];
    if (v10)
    {
      self->_modified = 0;
LABEL_17:
      LOBYTE(v10) = 1;
    }
  }

LABEL_23:
  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)commit:(id *)a3
{
  if (self->_backingStoreFD == -1)
  {
    v9 = 0;
    if (a3)
    {
      *a3 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:20 userInfo:0];
    }
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3052000000;
    v21 = __Block_byref_object_copy_;
    v22 = __Block_byref_object_dispose_;
    v23 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3052000000;
    v15 = __Block_byref_object_copy_;
    v16 = __Block_byref_object_dispose_;
    v17 = dispatch_semaphore_create(0);
    write_queue = self->_write_queue;
    add_group = self->_add_group;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __27__DYCaptureArchive_commit___block_invoke;
    v11[3] = &unk_279309900;
    v11[4] = self;
    v11[5] = &v24;
    v11[6] = &v18;
    v11[7] = &v12;
    dispatch_group_notify(add_group, write_queue, v11);
    dispatch_semaphore_wait(v13[5], 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v13[5]);
    v7 = v19[5];
    if (a3)
    {
      *a3 = v7;
    }

    v8 = v7;
    v9 = *(v25 + 24);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
  }

  return v9 & 1;
}

intptr_t __27__DYCaptureArchive_commit___block_invoke(uint64_t a1)
{
  dsema = *(*(a1 + 32) + 232);
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _performCommit:*(*(a1 + 48) + 8) + 40];
  v2 = *(*(*(a1 + 48) + 8) + 40);
  dispatch_semaphore_signal(*(*(*(a1 + 56) + 8) + 40));

  return dispatch_semaphore_signal(dsema);
}

- (BOOL)commitForExport:(id *)a3 progressHandler:(id)a4
{
  LODWORD(hash_table_length) = self->_header.hash_table_length;
  if (hash_table_length)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if (a4)
      {
        (*(a4 + 2))(a4, a2, (v8 + 1) / hash_table_length);
      }

      v9 = &self->_hash_table[v7];
      if (v9->var0 != -1)
      {
        v10 = &self->_file_table[v9->var0];
        var3 = v10->var3;
        if ((var3 & 2) != 0)
        {
          v10->var3 = var3 & 0xFFFFFFFC | 1;
          string_table_storage = self->_string_table_storage;
          v13 = self->_string_table_offsets[v10->var1.var0];
          v14 = objc_autoreleasePoolPush();
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:&string_table_storage[v13]];
          v16 = [(NSURL *)self->_url URLByAppendingPathComponent:v15];
          memset(&v25, 0, sizeof(v25));
          v17 = [(NSURL *)v16 fileSystemRepresentation];
          memset(&v26, 0, sizeof(v26));
          if (lstat(v17, &v26) || (v26.st_mode & 0xF000) != 0xA000 || ((std::string::resize(&v25, v26.st_size, 0), (v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v18 = &v25) : (v18 = v25.__r_.__value_.__r.__words[0]), readlink(v17, v18, v26.st_size + 1) < 0))
          {
            v20 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v16];
            dispatch_group_enter(self->_add_group);
            global_queue = dispatch_get_global_queue(0, 0);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __52__DYCaptureArchive_commitForExport_progressHandler___block_invoke;
            block[3] = &unk_279309950;
            block[4] = v20;
            block[5] = self;
            block[8] = a3;
            block[9] = v9;
            block[6] = v15;
            block[7] = v16;
            dispatch_async(global_queue, block);
          }

          else
          {
            if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v19 = &v25;
            }

            else
            {
              v19 = v25.__r_.__value_.__r.__words[0];
            }

            v9->var0 = self->_hash_table[[(DYCaptureArchive *)self _findHashEntry:v19]].var0;
            [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
          }

          if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v25.__r_.__value_.__l.__data_);
          }

          objc_autoreleasePoolPop(v14);
        }
      }

      ++v8;
      hash_table_length = self->_header.hash_table_length;
      ++v7;
    }

    while (v8 < hash_table_length);
  }

  return [(DYCaptureArchive *)self commit:a3, a4];
}

void __52__DYCaptureArchive_commitForExport_progressHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA90] dy_dataByCompressingData:*(a1 + 32) error:*(a1 + 64)];
  if (v2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__DYCaptureArchive_commitForExport_progressHandler___block_invoke_2;
    block[3] = &unk_279309928;
    v3 = *(a1 + 72);
    v7 = *(a1 + 40);
    v4 = *(v7 + 208);
    v5 = *(a1 + 56);
    v8 = v2;
    v9 = v5;
    v10 = v3;
    dispatch_async(v4, block);
  }
}

intptr_t __52__DYCaptureArchive_commitForExport_progressHandler___block_invoke_2(uint64_t a1)
{
  dsema = *(*(a1 + 32) + 232);
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  v8 = 0;
  if (([*(a1 + 32) _performFinalizeAddFileAtPosition:**(a1 + 64) name:*(a1 + 40) data:*(a1 + 48) error:&v8] & 1) == 0)
  {
    v2 = *MEMORY[0x277D0B240];
    v3 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = v8;
    _DYOLog();
  }

  [objc_msgSend(MEMORY[0x277CCAA00] defaultManager];
  dispatch_group_leave(*(*(a1 + 32) + 216));
  return dispatch_semaphore_signal(dsema);
}

- (void)discardAndClose
{
  if (self->_backingStoreFD != -1)
  {
    block[5] = v2;
    block[6] = v3;
    write_queue = self->_write_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__DYCaptureArchive_discardAndClose__block_invoke;
    block[3] = &unk_279309890;
    block[4] = self;
    dispatch_sync(write_queue, block);
  }
}

intptr_t __35__DYCaptureArchive_discardAndClose__block_invoke(uint64_t a1)
{
  dsema = *(*(a1 + 32) + 232);
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  close(*(*(a1 + 32) + 264));
  *(*(a1 + 32) + 264) = -1;
  v2 = *(a1 + 32);
  if (v2[273] == 1)
  {
    [objc_opt_new() removeItemAtURL:*(*(a1 + 32) + 8) error:0];
    v2 = *(a1 + 32);
  }

  [v2 _performEmptyStringTableNSCache];

  *(*(a1 + 32) + 144) = 0;
  v3 = *(a1 + 32);
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(*(a1 + 32) + 272) = 0;

  return dispatch_semaphore_signal(dsema);
}

- (void)close
{
  if (self->_modified)
  {
    v3 = *MEMORY[0x277D0B250];
    _DYOLog();
  }

  [(DYCaptureArchive *)self discardAndClose];
}

- (int64_t)_writeBufferToBackingStore:(const void *)a3 size:(int64_t)a4 error:(id *)a5
{
  backingStoreSize = self->_backingStoreSize;
  v10 = self->_backingStoreWritePosition + a4;
  if (v10 > backingStoreSize)
  {
    v11 = backingStoreSize + 40960;
    v12 = (v10 & 0xFFFFFFFFFFFFF000) + 4096;
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    if (ftruncate(self->_backingStoreFD, v13) == -1)
    {
LABEL_14:
      if (a5)
      {
        *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      }

      return -1;
    }

    self->_backingStoreSize = v13;
  }

  if (a4 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      v15 = pwrite(self->_backingStoreFD, a3 + v14, a4 - v14, self->_backingStoreWritePosition);
      if (v15 == -1)
      {
        if (*__error() != 4)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v14 += v15;
      }
    }

    while (v14 < a4);
  }

  self->_backingStoreWritePosition += v14;
  return v14;
}

- (BOOL)_flushWriteBuffer:(id *)a3
{
  v4 = [(DYCaptureArchive *)self _writeBufferToBackingStore:self->_store_write_buffer size:self->_store_write_ptr - self->_store_write_buffer error:a3];
  if (v4 != -1)
  {
    self->_store_write_ptr = self->_store_write_buffer;
  }

  return v4 != -1;
}

- (BOOL)_performAddAlias:(id)a3 targetting:(id)a4 error:(id *)a5
{
  v26 = 0;
  v9 = [-[DYCaptureArchive _getCFilename:outSize:error:](self _getCFilename:a4 outSize:&v26) error:"bytes"];
  if (v9)
  {
    v10 = v9;
    var2 = [(DYCaptureArchive *)self _findHashEntry:v9];
    if (var2 == -1)
    {
      v20 = [(NSMutableDictionary *)self->_aliasCreationMap objectForKey:a4];
      if (!v20)
      {
        v20 = objc_opt_new();
        [(NSMutableDictionary *)self->_aliasCreationMap setObject:v20 forKey:a4];
      }

      [v20 addObject:a3];
      LOBYTE(v9) = 1;
    }

    else
    {
      do
      {
        v12 = var2;
        var2 = self->_hash_table[var2].var2;
      }

      while (var2 != -1);
      v13 = [a3 lengthOfBytesUsingEncoding:1] + 1;
      v14 = [(DYCaptureArchive *)self _reserveStringStorageSize:v13];
      string_table_storage = self->_string_table_storage;
      if ([a3 getCString:&string_table_storage[v14] maxLength:v13 encoding:1])
      {
        if ([(DYCaptureArchive *)self _findHashEntry:&string_table_storage[v14]]== -1)
        {
          v25 = 0;
          v16 = [(DYCaptureArchive *)self _createNewHashEntry:&string_table_storage[v14] didGrowTable:&v25];
          if (v25)
          {
            v17 = [(DYCaptureArchive *)self _findHashEntry:v10];
            hash_table = self->_hash_table;
            do
            {
              v12 = v17;
              v17 = hash_table[v17].var2;
            }

            while (v17 != -1);
            v19 = v12;
          }

          else
          {
            v19 = v12;
            hash_table = self->_hash_table;
          }

          v22 = &hash_table[v16];
          v22->var0 = hash_table[v19].var0;
          v23 = [(DYCaptureArchive *)self _createNewNameEntry];
          self->_name_table[v23].var0 = v13;
          v22->var1 = v23;
          v22->var2 = v12;
          self->_string_table_offsets[v23] = v14;
        }

        LOBYTE(v9) = 1;
        self->_modified = 1;
      }

      else if (a5)
      {
        v21 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:1 userInfo:0];
        LOBYTE(v9) = 0;
        *a5 = v21;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }
  }

  return v9;
}

- (BOOL)addAlias:(id)a3 forName:(id)a4 options:(id)a5 error:(id *)a6 waitUntilDone:(BOOL)a7
{
  v7 = a7;
  if (![a4 length] || !objc_msgSend(a3, "length"))
  {
    if (a6)
    {
      v12 = *MEMORY[0x277D0AFB8];
      v13 = MEMORY[0x277D0AFC0];
      v14 = 1;
      goto LABEL_8;
    }

LABEL_12:
    v15 = 0;
    return v15 & 1;
  }

  if ([(DYCaptureArchive *)self isReadOnly])
  {
    if (a6)
    {
      v12 = *MEMORY[0x277D0AFB8];
      v13 = MEMORY[0x277D0AFC0];
      v14 = 7;
LABEL_8:
      v15 = 0;
      *a6 = [v13 errorWithDomain:v12 code:v14 userInfo:0];
      return v15 & 1;
    }

    goto LABEL_12;
  }

  if ([(DYCaptureArchive *)self isClosed])
  {
    if (a6)
    {
      v12 = *MEMORY[0x277D0AFB8];
      v13 = MEMORY[0x277D0AFC0];
      v14 = 20;
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  if (v7)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    dispatch_group_enter(self->_add_group);
    write_queue = self->_write_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__DYCaptureArchive_addAlias_forName_options_error_waitUntilDone___block_invoke;
    block[3] = &unk_279309978;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    block[7] = &v22;
    block[8] = a6;
    dispatch_sync(write_queue, block);
    dispatch_group_leave(self->_add_group);
    v15 = *(v23 + 24);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v19 = self->_write_queue;
    add_group = self->_add_group;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __65__DYCaptureArchive_addAlias_forName_options_error_waitUntilDone___block_invoke_2;
    v20[3] = &unk_2793099A0;
    v20[4] = self;
    v20[5] = a3;
    v20[6] = a4;
    dispatch_group_async(add_group, v19, v20);
    v15 = 1;
  }

  return v15 & 1;
}

intptr_t __65__DYCaptureArchive_addAlias_forName_options_error_waitUntilDone___block_invoke(uint64_t a1)
{
  dsema = *(*(a1 + 32) + 232);
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _performAddAlias:*(a1 + 40) targetting:*(a1 + 48) error:*(a1 + 64)];

  return dispatch_semaphore_signal(dsema);
}

intptr_t __65__DYCaptureArchive_addAlias_forName_options_error_waitUntilDone___block_invoke_2(uint64_t a1)
{
  dsema = *(*(a1 + 32) + 232);
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  v6 = 0;
  if (([*(a1 + 32) _performAddAlias:*(a1 + 40) targetting:*(a1 + 48) error:&v6] & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = *MEMORY[0x277D0B240];
    _DYOLog();
  }

  return dispatch_semaphore_signal(dsema);
}

- (unsigned)_performAddFileWithName:(id)a3 dataSize:(unsigned int)a4 withFlags:(unsigned int)a5 error:(id *)a6
{
  v11 = [a3 lengthOfBytesUsingEncoding:1] + 1;
  v12 = [(DYCaptureArchive *)self _reserveStringStorageSize:v11];
  string_table_storage = self->_string_table_storage;
  if (([a3 getCString:&string_table_storage[v12] maxLength:v11 encoding:1] & 1) == 0)
  {
    if (a6)
    {
      v14 = *MEMORY[0x277D0AFB8];
      v15 = MEMORY[0x277D0AFC0];
      v16 = 1;
      goto LABEL_7;
    }

    return -1;
  }

  if ([(DYCaptureArchive *)self _findHashEntry:&string_table_storage[v12]]!= -1)
  {
    if (a6)
    {
      v14 = *MEMORY[0x277D0AFB8];
      v15 = MEMORY[0x277D0AFC0];
      v16 = 12;
LABEL_7:
      *a6 = [v15 errorWithDomain:v14 code:v16 userInfo:0];
      return -1;
    }

    return -1;
  }

  v18 = &self->_hash_table[[(DYCaptureArchive *)self _createNewHashEntry:&string_table_storage[v12] didGrowTable:0]];
  v18->var0 = [(DYCaptureArchive *)self _createNewFileEntry];
  v19 = [(DYCaptureArchive *)self _createNewNameEntry];
  file_table = self->_file_table;
  self->_name_table[v19].var0 = v11;
  v18->var1 = v19;
  v18->var2 = -1;
  self->_string_table_offsets[v19] = v12;
  result = v18->var0;
  v21 = &file_table[v18->var0];
  v21->var0 = a4;
  *&v21->var3 = a5 | 1;
  if ((a5 & 2) != 0)
  {
    v21->var1.var0 = v19;
    return v18->var0;
  }

  return result;
}

- (BOOL)_performFinalizeAddFileAtPosition:(unsigned int)a3 name:(id)a4 data:(id)a5 error:(id *)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = &self->_file_table[a3];
  v10->var1.var0 = [a5 length];
  v10->var2 = self->_store_write_ptr + self->_backingStoreWritePosition - self->_store_write_buffer;
  if (![a5 length])
  {
    goto LABEL_23;
  }

  v11 = [a5 bytes];
  v12 = [a5 length];
  store_write_ptr = self->_store_write_ptr;
  v14 = (self->_store_write_buffer - store_write_ptr);
  v15 = v14 + 0x40000;
  v16 = v12 - (v14 + 0x40000);
  if (v12 <= (v14 + 0x40000))
  {
    memcpy(store_write_ptr, v11, v12);
    if (v12 == v15)
    {
      if ([(DYCaptureArchive *)self _writeBufferToBackingStore:self->_store_write_buffer size:0x40000 error:a6]== -1)
      {
LABEL_9:
        LOBYTE(v18) = 0;
        goto LABEL_24;
      }

      store_write_buffer = self->_store_write_buffer;
    }

    else
    {
      store_write_buffer = self->_store_write_ptr + v12;
    }

    self->_store_write_ptr = store_write_buffer;
  }

  else
  {
    memcpy(store_write_ptr, v11, (v14 + 0x40000));
    if ([(DYCaptureArchive *)self _writeBufferToBackingStore:self->_store_write_buffer size:0x40000 error:a6]== -1)
    {
      goto LABEL_9;
    }

    self->_store_write_ptr = self->_store_write_buffer;
    if ([(DYCaptureArchive *)self _writeBufferToBackingStore:&v11[v15] size:v16 error:a6]== -1)
    {
      goto LABEL_9;
    }
  }

  v19 = [(NSMutableDictionary *)self->_aliasCreationMap objectForKey:a4];
  if (!v19 || (v20 = v19, ![v19 count]) || (v29 = 0u, v30 = 0u, v27 = 0u, v28 = 0u, (v21 = objc_msgSend(v20, "countByEnumeratingWithState:objects:count:", &v27, v31, 16)) == 0))
  {
LABEL_22:
    objc_opt_self();
LABEL_23:
    LOBYTE(v18) = 1;
    self->_modified = 1;
    goto LABEL_24;
  }

  v22 = v21;
  v23 = *v28;
LABEL_16:
  v24 = 0;
  while (1)
  {
    if (*v28 != v23)
    {
      objc_enumerationMutation(v20);
    }

    v18 = [(DYCaptureArchive *)self _performAddAlias:*(*(&v27 + 1) + 8 * v24) targetting:a4 error:a6];
    if (!v18)
    {
      break;
    }

    if (v22 == ++v24)
    {
      v22 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v22)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

LABEL_24:
  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)addFileWithName:(id)a3 data:(id)a4 options:(id)a5 error:(id *)a6 waitUntilDone:(BOOL)a7
{
  v7 = a7;
  if (![a3 length])
  {
    if (a6)
    {
      v12 = *MEMORY[0x277D0AFB8];
      v13 = MEMORY[0x277D0AFC0];
      v14 = 1;
      goto LABEL_13;
    }

LABEL_14:
    v15 = 0;
    return v15 & 1;
  }

  if ([(DYCaptureArchive *)self isReadOnly])
  {
    if (a6)
    {
      v12 = *MEMORY[0x277D0AFB8];
      v13 = MEMORY[0x277D0AFC0];
      v14 = 7;
LABEL_13:
      v15 = 0;
      *a6 = [v13 errorWithDomain:v12 code:v14 userInfo:0];
      return v15 & 1;
    }

    goto LABEL_14;
  }

  if ([(DYCaptureArchive *)self isClosed])
  {
    if (a6)
    {
      v12 = *MEMORY[0x277D0AFB8];
      v13 = MEMORY[0x277D0AFC0];
      v14 = 20;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if ([a4 length] >> 31)
  {
    if (a6)
    {
      v12 = *MEMORY[0x277D0AFB8];
      v13 = MEMORY[0x277D0AFC0];
      v14 = 2;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (v7)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    dispatch_group_enter(self->_add_group);
    write_queue = self->_write_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__DYCaptureArchive_addFileWithName_data_options_error_waitUntilDone___block_invoke;
    block[3] = &unk_2793099C8;
    block[4] = self;
    block[5] = a3;
    block[7] = &v21;
    block[8] = a6;
    block[6] = a4;
    dispatch_sync(write_queue, block);
    dispatch_group_leave(self->_add_group);
    v15 = *(v22 + 24);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    dispatch_group_enter(self->_add_group);
    v18 = self->_write_queue;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __69__DYCaptureArchive_addFileWithName_data_options_error_waitUntilDone___block_invoke_2;
    v19[3] = &unk_2793099A0;
    v19[4] = self;
    v19[5] = a3;
    v19[6] = a4;
    dispatch_async(v18, v19);
    v15 = 1;
  }

  return v15 & 1;
}

intptr_t __69__DYCaptureArchive_addFileWithName_data_options_error_waitUntilDone___block_invoke(uint64_t a1)
{
  dsema = *(*(a1 + 32) + 232);
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  v2 = [*(a1 + 32) _performAddFileWithName:*(a1 + 40) dataSize:objc_msgSend(*(a1 + 48) error:{"length"), *(a1 + 64)}];
  *(*(*(a1 + 56) + 8) + 24) = v2 != -1;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v3 = [MEMORY[0x277CBEA90] dy_dataByCompressingData:*(a1 + 48) error:*(a1 + 64)];
    if (v3)
    {
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _performFinalizeAddFileAtPosition:v2 name:*(a1 + 40) data:v3 error:*(a1 + 64)];
    }
  }

  return dispatch_semaphore_signal(dsema);
}

void __69__DYCaptureArchive_addFileWithName_data_options_error_waitUntilDone___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 264) == -1)
  {
    v9 = *(v3 + 216);

    dispatch_group_leave(v9);
  }

  else
  {
    v14[5] = v1;
    v14[6] = v2;
    dispatch_semaphore_wait(*(v3 + 232), 0xFFFFFFFFFFFFFFFFLL);
    v14[0] = 0;
    v5 = [*(a1 + 32) _performAddFileWithName:*(a1 + 40) dataSize:objc_msgSend(*(a1 + 48) error:{"length"), v14}];
    dispatch_semaphore_signal(*(*(a1 + 32) + 232));
    if (v5 == -1)
    {
      v7 = *MEMORY[0x277D0B240];
      v8 = *(a1 + 32);
      v10 = *(a1 + 40);
      _DYOLog();
      dispatch_group_leave(*(*(a1 + 32) + 216));
    }

    else
    {
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__DYCaptureArchive_addFileWithName_data_options_error_waitUntilDone___block_invoke_3;
      block[3] = &unk_2793099F0;
      block[4] = *(a1 + 32);
      v12 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
      v13 = v5;
      dispatch_async(global_queue, block);
    }
  }
}

void __69__DYCaptureArchive_addFileWithName_data_options_error_waitUntilDone___block_invoke_3(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 264) == -1)
  {
    v10 = *(v3 + 216);

    dispatch_group_leave(v10);
  }

  else
  {
    v14[3] = v1;
    v14[4] = v2;
    v14[0] = 0;
    v5 = [MEMORY[0x277CBEA90] dy_dataByCompressingData:*(a1 + 40) error:v14];
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = *(v6 + 208);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__DYCaptureArchive_addFileWithName_data_options_error_waitUntilDone___block_invoke_4;
      block[3] = &unk_2793099F0;
      v13 = *(a1 + 56);
      v8 = *(a1 + 48);
      block[4] = v6;
      block[5] = v8;
      block[6] = v5;
      dispatch_async(v7, block);
    }

    else
    {
      v9 = *MEMORY[0x277D0B240];
      v11 = *(a1 + 48);
      _DYOLog();
      dispatch_group_leave(*(*(a1 + 32) + 216));
    }
  }
}

void __69__DYCaptureArchive_addFileWithName_data_options_error_waitUntilDone___block_invoke_4(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 264) == -1)
  {
    v7 = *(v3 + 216);

    dispatch_group_leave(v7);
  }

  else
  {
    v9[3] = v1;
    v9[4] = v2;
    dispatch_semaphore_wait(*(v3 + 232), 0xFFFFFFFFFFFFFFFFLL);
    v9[0] = 0;
    if (([*(a1 + 32) _performFinalizeAddFileAtPosition:*(a1 + 56) name:*(a1 + 40) data:*(a1 + 48) error:v9] & 1) == 0)
    {
      v5 = *MEMORY[0x277D0B240];
      v6 = *(a1 + 32);
      v8 = *(a1 + 40);
      _DYOLog();
    }

    dispatch_semaphore_signal(*(*(a1 + 32) + 232));
    dispatch_group_leave(*(*(a1 + 32) + 216));
  }
}

- (BOOL)addTempFileWithName:(id)a3 options:(id)a4 fromLocation:(id)a5 error:(id *)a6
{
  if (![a3 length])
  {
    if (a6)
    {
      v11 = *MEMORY[0x277D0AFB8];
      v12 = MEMORY[0x277D0AFC0];
      v13 = 1;
      goto LABEL_15;
    }

LABEL_21:
    v17 = 0;
    return v17 & 1;
  }

  if (![(DYCaptureArchive *)self isReadOnly])
  {
    if ([(DYCaptureArchive *)self isClosed])
    {
      if (a6)
      {
        v11 = *MEMORY[0x277D0AFB8];
        v12 = MEMORY[0x277D0AFC0];
        v13 = 20;
        goto LABEL_15;
      }
    }

    else
    {
      v14 = [MEMORY[0x277CCAA00] defaultManager];
      v15 = [objc_msgSend(a4 objectForKeyedSubscript:{@"Size", "unsignedIntegerValue"}];
      if (!v15)
      {
        v23 = 0;
        v16 = [v14 attributesOfItemAtPath:a5 error:&v23];
        v15 = [objc_msgSend(v16 objectForKey:{*MEMORY[0x277CCA1C0]), "longLongValue"}];
      }

      if (HIDWORD(v15))
      {
        if (a6)
        {
          v11 = *MEMORY[0x277D0AFB8];
          v12 = MEMORY[0x277D0AFC0];
          v13 = 2;
          goto LABEL_15;
        }
      }

      else
      {
        v18 = [(NSURL *)self->_url URLByAppendingPathComponent:a3];
        v19 = [(NSURL *)v18 path];
        [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
        if (([a5 isEqualToString:v19] & 1) != 0 || objc_msgSend(v14, "moveItemAtPath:toPath:error:", a5, v19, a6))
        {
          v23 = 0;
          v24 = &v23;
          v25 = 0x2020000000;
          v26 = 0;
          dispatch_group_enter(self->_add_group);
          write_queue = self->_write_queue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __67__DYCaptureArchive_addTempFileWithName_options_fromLocation_error___block_invoke;
          block[3] = &unk_279309A18;
          block[4] = self;
          block[5] = a3;
          block[7] = v15;
          block[8] = a6;
          block[6] = &v23;
          dispatch_sync(write_queue, block);
          dispatch_group_leave(self->_add_group);
          v17 = *(v24 + 24);
          _Block_object_dispose(&v23, 8);
          return v17 & 1;
        }

        if (a6)
        {
          v11 = *MEMORY[0x277D0AFB8];
          v12 = MEMORY[0x277D0AFC0];
          v13 = 3;
          goto LABEL_15;
        }
      }
    }

    goto LABEL_21;
  }

  if (!a6)
  {
    goto LABEL_21;
  }

  v11 = *MEMORY[0x277D0AFB8];
  v12 = MEMORY[0x277D0AFC0];
  v13 = 7;
LABEL_15:
  v17 = 0;
  *a6 = [v12 errorWithDomain:v11 code:v13 userInfo:0];
  return v17 & 1;
}

intptr_t __67__DYCaptureArchive_addTempFileWithName_options_fromLocation_error___block_invoke(uint64_t a1)
{
  dsema = *(*(a1 + 32) + 232);
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _performAddFileWithName:*(a1 + 40) dataSize:*(a1 + 56) withFlags:2 error:*(a1 + 64)] != -1;

  return dispatch_semaphore_signal(dsema);
}

- (BOOL)addFilesFromArchive:(id)a3 error:(id *)a4 passingTest:(id)a5
{
  if (![(DYCaptureArchive *)self isReadOnly])
  {
    if (![(DYCaptureArchive *)self isClosed])
    {
      v13 = [a3 valueForKey:@"filenames"];
      v14 = objc_opt_new();
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __58__DYCaptureArchive_addFilesFromArchive_error_passingTest___block_invoke;
      v22[3] = &unk_279309A40;
      v22[4] = v14;
      v22[5] = a5;
      [v13 enumerateObjectsUsingBlock:v22];
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 1;
      dispatch_group_enter(self->_add_group);
      write_queue = self->_write_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__DYCaptureArchive_addFilesFromArchive_error_passingTest___block_invoke_2;
      block[3] = &unk_279309978;
      block[7] = &v18;
      block[8] = a4;
      block[4] = self;
      block[5] = v14;
      block[6] = a3;
      dispatch_sync(write_queue, block);
      dispatch_group_leave(self->_add_group);

      v12 = *(v19 + 24);
      _Block_object_dispose(&v18, 8);
      return v12 & 1;
    }

    if (a4)
    {
      v9 = *MEMORY[0x277D0AFB8];
      v10 = MEMORY[0x277D0AFC0];
      v11 = 20;
      goto LABEL_7;
    }

LABEL_8:
    v12 = 0;
    return v12 & 1;
  }

  if (!a4)
  {
    goto LABEL_8;
  }

  v9 = *MEMORY[0x277D0AFB8];
  v10 = MEMORY[0x277D0AFC0];
  v11 = 7;
LABEL_7:
  v12 = 0;
  *a4 = [v10 errorWithDomain:v9 code:v11 userInfo:0];
  return v12 & 1;
}

uint64_t __58__DYCaptureArchive_addFilesFromArchive_error_passingTest___block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v5 = *(a1 + 32);

    return [v5 addObject:a2];
  }

  return result;
}

intptr_t __58__DYCaptureArchive_addFilesFromArchive_error_passingTest___block_invoke_2(uint64_t a1)
{
  v15 = *(*(a1 + 32) + 232);
  v16 = v15;
  v14 = v15;
  dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _flushWriteBuffer:*(a1 + 64)];
  v2 = *(a1 + 56);
  if (*(*(v2 + 8) + 24))
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__DYCaptureArchive_addFilesFromArchive_error_passingTest___block_invoke_3;
    v13[3] = &unk_279309A68;
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 64);
    v13[6] = v2;
    v13[7] = v5;
    v6 = *(a1 + 32);
    v13[4] = v4;
    v13[5] = v6;
    [v3 enumerateObjectsUsingBlock:v13];
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v7 = objc_opt_new();
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __58__DYCaptureArchive_addFilesFromArchive_error_passingTest___block_invoke_4;
      v11[3] = &unk_279309A90;
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v12 = *(a1 + 56);
      v11[4] = v9;
      v11[5] = v7;
      v11[6] = *(a1 + 32);
      [v8 enumerateObjectsUsingBlock:v11];
    }
  }

  return dispatch_semaphore_signal(v14);
}

void __58__DYCaptureArchive_addFilesFromArchive_error_passingTest___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [objc_msgSend(*(a1 + 32) _getCFilename:a2 outSize:0 error:{*(a1 + 56)), "bytes"}];
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [*(a1 + 32) _findHashEntry:v6];
  if (v8 != -1)
  {
    v9 = v8;
    v10 = *(a1 + 32);
    v11 = (v10[7] + 12 * v9);
    if (v11[2] != -1)
    {
      return;
    }

    v12 = [v10 copyDataForFilePosition:*v11 error:*(a1 + 56)];
    if (v12)
    {
      v13 = v12;
      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) addFileWithName:objc_msgSend(MEMORY[0x277CCACA8] data:"stringWithUTF8String:" options:v7) error:v12 waitUntilDone:{0, *(a1 + 56), 0}];

      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
      {
        *a4 = 1;
      }

      return;
    }

LABEL_7:
    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 0;
    return;
  }

  *a4 = 1;
  v14 = *(a1 + 56);
  *(*(*(a1 + 48) + 8) + 24) = 0;
  if (v14)
  {
    *v14 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:13 userInfo:0];
  }
}

void *__58__DYCaptureArchive_addFilesFromArchive_error_passingTest___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [objc_msgSend(*(a1 + 32) _getCFilename:a2 outSize:0 error:{*(a1 + 64)), "bytes"}];
  if (!result)
  {
    goto LABEL_19;
  }

  result = [*(a1 + 32) _findHashEntry:result];
  if (result == -1)
  {
    *a4 = 1;
    v14 = *(a1 + 64);
    *(*(*(a1 + 56) + 8) + 24) = 0;
    if (v14)
    {
      result = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:13 userInfo:0];
      *v14 = result;
    }

    return result;
  }

  v8 = result;
  result = *(a1 + 32);
  v9 = result[7];
  v10 = (v9 + 12 * v8);
  v11 = v10[2];
  if (v11 == -1)
  {
    return result;
  }

  v12 = [result objectInFilenamesAtIndex:*(v9 + 12 * v11 + 4)];
  v13 = [*(a1 + 40) objectForKey:v12];
  if (v13)
  {
    v12 = v13;
  }

  result = [objc_msgSend(*(a1 + 32) _getCFilename:v12 outSize:0 error:{*(a1 + 64)), "bytes"}];
  if (!result)
  {
    goto LABEL_19;
  }

  if ([*(a1 + 48) _findHashEntry:result] != -1)
  {
    result = [*(a1 + 48) _performAddAlias:a2 targetting:v12 error:*(a1 + 64)];
    *(*(*(a1 + 56) + 8) + 24) = result;
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      return result;
    }

    goto LABEL_9;
  }

  v15 = [*(a1 + 48) _performAddFileWithName:a2 dataSize:*(*(*(a1 + 32) + 64) + 24 * *v10) error:*(a1 + 64)];
  if (v15 == -1)
  {
    v18 = *(a1 + 48);
    v19 = *MEMORY[0x277D0B240];
    result = _DYOLog();
    goto LABEL_19;
  }

  v16 = v15;
  result = [*(a1 + 32) _readRawDataForFilePosition:*v10 error:*(a1 + 64)];
  if (!result)
  {
LABEL_19:
    *a4 = 1;
    *(*(*(a1 + 56) + 8) + 24) = 0;
    return result;
  }

  result = [*(a1 + 48) _performFinalizeAddFileAtPosition:v16 name:a2 data:result error:*(a1 + 64)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
LABEL_9:
    *a4 = 1;
    return result;
  }

  v17 = *(a1 + 40);

  return [v17 setObject:a2 forKey:v12];
}

- (BOOL)_performReplaceDataOfFile:(id)a3 withData:(id)a4 error:(id *)a5
{
  v8 = [-[DYCaptureArchive _getCFilename:outSize:error:](self _getCFilename:a3 outSize:0) error:"bytes"];
  if (!v8)
  {
    return 0;
  }

  v9 = [(DYCaptureArchive *)self _findHashEntry:v8];
  if (v9 == -1)
  {
    if (a5)
    {
      v19 = *MEMORY[0x277D0AFB8];
      v20 = MEMORY[0x277D0AFC0];
      v21 = 13;
      goto LABEL_10;
    }

    return 0;
  }

  file_table = self->_file_table;
  var0 = self->_hash_table[v9].var0;
  v12 = [MEMORY[0x277CBEA90] dy_dataByCompressingData:a4 error:a5];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = &file_table[var0];
  v15 = [v12 bytes];
  v16 = [v13 length];
  v17 = v16;
  if (v16 > v14->var1.var0)
  {
    if ([(DYCaptureArchive *)self _flushWriteBuffer:0])
    {
      backingStoreWritePosition = self->_backingStoreWritePosition;
      if ([(DYCaptureArchive *)self _writeBufferToBackingStore:v15 size:v17 error:a5]!= -1)
      {
        v14->var2 = backingStoreWritePosition;
LABEL_17:
        v14->var1.var0 = v17;
        v14->var0 = [a4 length];
        v22 = 1;
        self->_modified = 1;
        objc_opt_self();
        return v22;
      }
    }

    return 0;
  }

  if (!v16)
  {
    goto LABEL_17;
  }

  v23 = 0;
  while (1)
  {
    v24 = pwrite(self->_backingStoreFD, (v23 + v15), v17 - v23, v14->var2);
    if (v24 == -1)
    {
      break;
    }

    v23 += v24;
LABEL_16:
    if (v23 >= v17)
    {
      goto LABEL_17;
    }
  }

  if (*__error() == 4)
  {
    goto LABEL_16;
  }

  if (!a5)
  {
    return 0;
  }

  v25 = MEMORY[0x277CCA9B8];
  v26 = *MEMORY[0x277CCA5B8];
  v21 = *__error();
  v20 = v25;
  v19 = v26;
LABEL_10:
  v22 = 0;
  *a5 = [v20 errorWithDomain:v19 code:v21 userInfo:0];
  return v22;
}

- (BOOL)replaceDataOfFile:(id)a3 withData:(id)a4 error:(id *)a5
{
  if (![a3 length])
  {
    if (a5)
    {
      v9 = *MEMORY[0x277D0AFB8];
      v10 = MEMORY[0x277D0AFC0];
      v11 = 1;
      goto LABEL_13;
    }

LABEL_14:
    v12 = 0;
    return v12 & 1;
  }

  if ([a4 length] >> 31)
  {
    if (a5)
    {
      v9 = *MEMORY[0x277D0AFB8];
      v10 = MEMORY[0x277D0AFC0];
      v11 = 2;
LABEL_13:
      v12 = 0;
      *a5 = [v10 errorWithDomain:v9 code:v11 userInfo:0];
      return v12 & 1;
    }

    goto LABEL_14;
  }

  if ([(DYCaptureArchive *)self isReadOnly])
  {
    if (a5)
    {
      v9 = *MEMORY[0x277D0AFB8];
      v10 = MEMORY[0x277D0AFC0];
      v11 = 7;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if ([(DYCaptureArchive *)self isClosed])
  {
    if (a5)
    {
      v9 = *MEMORY[0x277D0AFB8];
      v10 = MEMORY[0x277D0AFC0];
      v11 = 20;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  dispatch_group_enter(self->_add_group);
  write_queue = self->_write_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__DYCaptureArchive_replaceDataOfFile_withData_error___block_invoke;
  block[3] = &unk_279309AB8;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  block[7] = &v24;
  block[8] = &v18;
  dispatch_sync(write_queue, block);
  dispatch_group_leave(self->_add_group);
  v15 = v19[5];
  if (a5)
  {
    *a5 = v15;
  }

  v16 = v15;
  v12 = *(v25 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
  return v12 & 1;
}

intptr_t __53__DYCaptureArchive_replaceDataOfFile_withData_error___block_invoke(uint64_t a1)
{
  dsema = *(*(a1 + 32) + 232);
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _performReplaceDataOfFile:*(a1 + 40) withData:*(a1 + 48) error:*(*(a1 + 64) + 8) + 40];
  v2 = *(*(*(a1 + 64) + 8) + 40);

  return dispatch_semaphore_signal(dsema);
}

- (BOOL)updateDataReferenceCounts:(id)a3 error:(id *)a4
{
  if ([(DYCaptureArchive *)self isClosed])
  {
    v7 = 0;
    if (a4)
    {
      *a4 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:20 userInfo:0];
    }
  }

  else
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 1;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3052000000;
    v18 = __Block_byref_object_copy_;
    v19 = __Block_byref_object_dispose_;
    v20 = 0;
    v8 = dispatch_semaphore_create(0);
    write_queue = self->_write_queue;
    add_group = self->_add_group;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__DYCaptureArchive_updateDataReferenceCounts_error___block_invoke;
    v14[3] = &unk_279309AE0;
    v14[4] = self;
    v14[5] = a3;
    v14[8] = &v21;
    v14[9] = a4;
    v14[6] = v8;
    v14[7] = &v15;
    dispatch_group_notify(add_group, write_queue, v14);
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v8);
    v11 = v16[5];
    if (a4)
    {
      *a4 = v11;
    }

    v12 = v11;
    v7 = *(v22 + 24);
    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v21, 8);
  }

  return v7 & 1;
}

intptr_t __52__DYCaptureArchive_updateDataReferenceCounts_error___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v24 = *(*(a1 + 32) + 232);
  v25 = v24;
  dsema = v24;
  dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v26 count:16];
  if (v3)
  {
    v4 = *v20;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v20 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v19 + 1) + 8 * i);
        v7 = [objc_msgSend(*(a1 + 32) _getCFilename:v6 outSize:0 error:{*(a1 + 72)), "bytes"}];
        if (!v7)
        {
          v12 = *(*(*(a1 + 56) + 8) + 40);
          *(*(*(a1 + 64) + 8) + 24) = 0;
          goto LABEL_13;
        }

        v8 = [*(a1 + 32) _findHashEntry:v7];
        if (v8 == -1)
        {
          *(*(*(a1 + 64) + 8) + 24) = 0;
          v13 = MEMORY[0x277D0AFC0];
          v14 = MEMORY[0x277CBEAC0];
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not update ref counts for file: %@", v6];
          v16 = [v14 dictionaryWithObject:v15 forKey:*MEMORY[0x277CCA450]];
          *(*(*(a1 + 56) + 8) + 40) = [v13 errorWithDomain:*MEMORY[0x277D0AFB8] code:13 userInfo:v16];
          goto LABEL_13;
        }

        v9 = *(a1 + 32);
        v10 = *(v9 + 64);
        v11 = *(*(v9 + 56) + 12 * v8);
        *(v10 + 24 * v11 + 20) = [objc_msgSend(*(a1 + 40) objectForKey:{v6), "unsignedIntValue"}];
      }

      v3 = [v2 countByEnumeratingWithState:&v19 objects:v26 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  dispatch_semaphore_signal(*(a1 + 48));
  result = dispatch_semaphore_signal(dsema);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)initCache
{
  file_table_length = self->_header.file_table_length;
  self->_cacheSize = file_table_length;
  std::vector<DYCaptureArchiveCacheEntry>::resize(&self->_cacheTable.__begin_, file_table_length);
  if (self->_header.file_table_length)
  {
    v4 = 0;
    v5 = 24;
    do
    {
      begin = self->_cacheTable.__begin_;
      *(begin + v5) = dispatch_semaphore_create(1);
      ++v4;
      v5 += 32;
    }

    while (v4 < self->_header.file_table_length);
  }
}

- (void)resizeCache
{
  std::vector<DYCaptureArchiveCacheEntry>::resize(&self->_cacheTable.__begin_, self->_header.file_table_length);
  cacheSize = self->_cacheSize;
  file_table_length = self->_header.file_table_length;
  if (cacheSize < file_table_length)
  {
    v5 = 32 * cacheSize;
    do
    {
      v6 = self->_cacheTable.__begin_ + v5;
      *v6 = 0u;
      *(v6 + 1) = 0u;
      *(v6 + 3) = dispatch_semaphore_create(1);
      ++cacheSize;
      file_table_length = self->_header.file_table_length;
      v5 += 32;
    }

    while (cacheSize < file_table_length);
  }

  self->_cacheSize = file_table_length;
}

- (void)cacheAllResources
{
  self->_useCache = 1;
  atomic_store(0, &self->_preloadAtomicIndex.__a_.__a_value);
  operator new();
}

- (void)releaseBytesForFilePosition:(unint64_t)a3
{
  if (a3 >= self->_header.file_table_length)
  {
    [DYCaptureArchive releaseBytesForFilePosition:];
  }

  v4 = self->_cacheTable.__begin_ + 32 * a3;
  dispatch_semaphore_wait(*(v4 + 3), 0xFFFFFFFFFFFFFFFFLL);
  v5 = *(v4 + 4);
  v6 = __OFSUB__(v5--, 1);
  *(v4 + 4) = v5;
  if ((v5 < 0) ^ v6 | (v5 == 0))
  {
    if (self->_useCache)
    {
      state = 1;
      mach_vm_purgable_control(*MEMORY[0x277D85F48], *v4, 0, &state);
    }

    else
    {
      mach_vm_deallocate(*MEMORY[0x277D85F48], *v4, *(v4 + 1));
      *v4 = 0;
      *(v4 + 1) = 0;
      *(v4 + 4) = 0;
    }
  }

  dispatch_semaphore_signal(*(v4 + 3));
  [(DYCaptureArchive *)self _printUsage];
}

- (BOOL)allocatePageAlignedMemory:(void *)a3 forFilePosition:(unint64_t)a4 error:(id *)a5
{
  v6 = ~*MEMORY[0x277D85F88] & (*MEMORY[0x277D85F88] + self->_file_table[a4].var0);
  if (!v6)
  {
    return 0;
  }

  address = 0;
  v8 = mach_vm_allocate(*MEMORY[0x277D85F48], &address, v6, 3);
  v9 = v8 == 0;
  if (v8)
  {
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA4A8] code:v8 userInfo:0];
  }

  else
  {
    *a3 = address;
  }

  return v9;
}

- (void)_cleanBytes:(unint64_t)a3 andSkip:(id *)a4
{
  begin = self->_cacheTable.__begin_;
  end = self->_cacheTable.__end_;
  if (begin != end && a3)
  {
    v9 = 0;
    v10 = 0;
    v11 = (end - begin) >> 5;
    v12 = 1;
    v13 = MEMORY[0x277D85F48];
    do
    {
      v14 = self->_cacheTable.__begin_;
      v15 = v14 + v9;
      if ((v14 + v9) != a4 && !dispatch_semaphore_wait(*(v15 + 3), 0))
      {
        v16 = v14 + v9;
        if (!*(v16 + 4))
        {
          mach_vm_deallocate(*v13, *v16, *(v16 + 1));
          v10 += *(v16 + 1);
          *(v15 + 4) = 0;
          *v15 = 0;
          *(v15 + 1) = 0;
        }

        dispatch_semaphore_signal(*(v15 + 3));
      }

      if (v12 >= v11)
      {
        break;
      }

      ++v12;
      v9 += 32;
    }

    while (v10 < a3);
  }
}

- (void)_springCleaning
{
  v7 = 0;
  v3 = MEMORY[0x25302FF60](self, a2);
  host_info_outCnt = 15;
  host_page_size(v3, &v7);
  if (!host_statistics(v3, 2, host_info_out, &host_info_outCnt))
  {
    v4 = v7 * host_info_out[0];
    if (!(v4 >> 27))
    {
      [(DYCaptureArchive *)self _cleanBytes:0x8000000 - v4 andSkip:0];
    }
  }
}

- (int)_tryAgain:(id *)a3
{
  [(DYCaptureArchive *)self _cleanBytes:a3->var1 andSkip:a3];
  v4 = *MEMORY[0x277D85F48];
  var1 = a3->var1;

  return mach_vm_allocate(v4, &a3->var0, var1, 3);
}

- (BOOL)requestBuffer:(void *)a3 forFilePosition:(unint64_t)a4 cacheEntry:(id *)a5 needsData:(BOOL *)a6 error:(id *)a7
{
  var0 = self->_file_table[a4].var0;
  v13 = a5->var0;
  if (a5->var0)
  {
    var2 = a5->var2;
    if (var2 >= 1)
    {
      a5->var2 = var2 + 1;
      *a3 = v13;
      *a6 = 0;
      if (a5->var1 < var0)
      {
        [DYCaptureArchive requestBuffer:forFilePosition:cacheEntry:needsData:error:];
      }

      return 1;
    }

    state = 0;
    if (mach_vm_purgable_control(*MEMORY[0x277D85F48], v13, 0, &state))
    {
      v15 = 1;
    }

    else
    {
      v15 = state == 2;
    }

    if (!v15)
    {
      ++a5->var2;
      var1 = a5->var1;
      *a3 = a5->var0;
      *a6 = 0;
      if (var1 < var0)
      {
        [DYCaptureArchive requestBuffer:forFilePosition:cacheEntry:needsData:error:];
      }

      return 1;
    }
  }

  v16 = ~*MEMORY[0x277D85F88] & (*MEMORY[0x277D85F88] + var0);
  a5->var1 = v16;
  if (!v16)
  {
    return 0;
  }

  a5->var2 = 1;
  v17 = MEMORY[0x277D85F48];
  if (mach_vm_allocate(*MEMORY[0x277D85F48], &a5->var0, v16, 3) && (v18 = [(DYCaptureArchive *)self _tryAgain:a5]) != 0)
  {
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA4A8] code:v18 userInfo:0];
    v20 = 0;
  }

  else
  {
    v26 = 0;
    v21 = mach_vm_purgable_control(*v17, a5->var0, 0, &v26);
    if (v26 == 2 && v21 == 0)
    {
      v23 = 2;
    }

    else
    {
      v23 = v21;
    }

    v20 = v23 == 0;
    if (!v23)
    {
      *a3 = a5->var0;
      *a6 = 1;
      return v20;
    }

    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA4A8] code:v23 userInfo:0];
  }

  *a7 = v19;
  return v20;
}

- (BOOL)_requestDataForFilePosition:(unint64_t)a3 buffer:(void *)a4 size:(unint64_t *)a5 error:(id *)a6
{
  if (!a4)
  {
    if (!a6)
    {
      return 1;
    }

    v15 = *MEMORY[0x277CCA5B8];
    v16 = MEMORY[0x277D0AFC0];
    v17 = 14;
    goto LABEL_12;
  }

  v8 = a3;
  if (a3 >= self->_header.file_table_length)
  {
    [DYCaptureArchive _requestDataForFilePosition:buffer:size:error:];
  }

  v9 = a5;
  v11 = &self->_file_table[a3];
  if ((v11->var3 & 2) != 0)
  {
    LOBYTE(strm.next_in) = 1;
    begin = self->_cacheTable.__begin_;
    if (begin == self->_cacheTable.__end_)
    {
      v20 = 0;
      if ([(DYCaptureArchive *)self allocatePageAlignedMemory:a4 forFilePosition:a3 error:a6])
      {
LABEL_24:
        v27 = -[NSURL URLByAppendingPathComponent:](self->_url, "URLByAppendingPathComponent:", [MEMORY[0x277CCACA8] stringWithUTF8String:self->_string_table_storage + self->_string_table_offsets[v11->var1.var0]]);
        v28 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v27];
        if (v28)
        {
          memcpy(*a4, [v28 bytes], v11->var0);
LABEL_26:
          v18 = 1;
          goto LABEL_28;
        }

        if (self->_cacheTable.__begin_ != self->_cacheTable.__end_)
        {
          dispatch_semaphore_signal(v20[3]);
        }

        if (!a6)
        {
          return 1;
        }

        v15 = *MEMORY[0x277D0AFB8];
        v16 = MEMORY[0x277D0AFC0];
        v17 = 13;
LABEL_12:
        *a6 = [v16 errorWithDomain:v15 code:v17 userInfo:0];
        return 1;
      }
    }

    else
    {
      v20 = (begin + 32 * a3);
      dispatch_semaphore_wait(v20[3], 0xFFFFFFFFFFFFFFFFLL);
      if ([(DYCaptureArchive *)self requestBuffer:a4 forFilePosition:v8 cacheEntry:v20 needsData:&strm error:a6]&& *a4)
      {
        *v9 = v11->var0;
        if ((strm.next_in & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }
    }

    v18 = 0;
LABEL_28:
    if (self->_cacheTable.__begin_ != self->_cacheTable.__end_)
    {
      dispatch_semaphore_signal(v20[3]);
    }

    return v18;
  }

  var0 = v11->var0;
  v12 = v11->var1.var0;
  if (var0)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    *a5 = 0;
    *a4 = 0;
    return 1;
  }

  var2 = v11->var2;
  v70[0] = 1;
  v22 = self->_cacheTable.__begin_;
  if (v22 == self->_cacheTable.__end_)
  {
    v25 = 0;
    v26 = 0;
    if (![(DYCaptureArchive *)self allocatePageAlignedMemory:a4 forFilePosition:a3 error:a6])
    {
      goto LABEL_56;
    }
  }

  else
  {
    v23 = (v22 + 32 * a3);
    dispatch_semaphore_wait(v23[3], 0xFFFFFFFFFFFFFFFFLL);
    v24 = v8;
    v25 = v23;
    if (![(DYCaptureArchive *)self requestBuffer:a4 forFilePosition:v24 cacheEntry:v23 needsData:v70 error:a6])
    {
      return 0;
    }

    if ((v70[0] & 1) == 0)
    {
      v26 = 0;
LABEL_56:
      if (self->_cacheTable.__begin_ == self->_cacheTable.__end_)
      {
        if (v26)
        {
          if (*a4)
          {
            free(*a4);
          }

LABEL_65:
          if (a6)
          {
            v18 = 0;
            *a6 = v26;
            return v18;
          }

          return 0;
        }
      }

      else
      {
        if (v26)
        {
          if (*a4 && *(v25 + 4) <= 1)
          {
            mach_vm_deallocate(*MEMORY[0x277D85F48], *v25, v25[1]);
            *v25 = 0;
            v25[1] = 0;
            *(v25 + 4) = 0;
          }

          *a4 = 0;
          dispatch_semaphore_signal(v25[3]);
          [(DYCaptureArchive *)self _printUsage];
          goto LABEL_65;
        }

        dispatch_semaphore_signal(v25[3]);
        [(DYCaptureArchive *)self _printUsage];
      }

      *v9 = var0;
      return 1;
    }
  }

  v66 = v9;
  dst_size = var0;
  v29 = *a4;
  dispatch_semaphore_wait(self->_read_buffer_sem, 0xFFFFFFFFFFFFFFFFLL);
  GPUTools::DYLockUtils::Lock(&self->_read_buffer_tokens_lock, v30);
  end = self->_read_buffer_tokens.__end_;
  v69 = *(end - 1);
  v32 = v69;
  self->_read_buffer_tokens.__end_ = end - 1;
  GPUTools::DYLockUtils::Unlock(&self->_read_buffer_tokens_lock, v33);
  v34 = &self->_scratch[self->_scratchSize * v32];
  backingStoreWritePosition = self->_backingStoreWritePosition;
  v36 = __OFSUB__(var2, backingStoreWritePosition);
  v37 = var2 - backingStoreWritePosition;
  v65 = v25;
  if (v37 < 0 == v36)
  {
    if (v37 >= 0)
    {
      v44 = self->_store_write_buffer + v37;
      if (self->_store_write_ptr > v44)
      {
        v45 = v11->var1.var0 - 2;
        v46 = (v44 + 2);
        v47 = v29;
LABEL_51:
        if (compression_decode_buffer(v47, dst_size, v46, v45, v34, COMPRESSION_ZLIB) == dst_size)
        {
          goto LABEL_52;
        }
      }
    }

    v42 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277D0AFB8];
    v43 = 8;
LABEL_54:
    v26 = [v42 errorWithDomain:v41 code:v43 userInfo:{0, dst_buffer}];
    goto LABEL_55;
  }

  read_buffer_capacity = self->_read_buffer_capacity;
  v39 = self->_read_buffer + read_buffer_capacity * v32;
  if (read_buffer_capacity >= v12)
  {
    dst_buffer = v29;
    v48 = 0;
    v49 = v12;
    while (1)
    {
      v50 = self->_read_buffer_capacity >= v49 ? v49 : self->_read_buffer_capacity;
      v51 = pread(self->_backingStoreFD, &v39[v48], v50, v48 + var2);
      if (v51 == -1 && *__error() != 4)
      {
        break;
      }

      v48 += v51;
      v49 -= v51;
      if (!v49)
      {
        goto LABEL_50;
      }
    }

    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    if (!v26)
    {
LABEL_50:
      v45 = v12 - 2;
      v46 = v39 + 2;
      v47 = dst_buffer;
      goto LABEL_51;
    }

    goto LABEL_55;
  }

  strm.next_in = 0;
  strm.avail_in = 0;
  strm.next_out = v29;
  strm.avail_out = dst_size;
  memset(&strm.zalloc, 0, 24);
  v40 = inflateInit_(&strm, "1.2.12", 112);
  v41 = @"ZlibErrorDomain";
  if (v40)
  {
    v42 = MEMORY[0x277CCA9B8];
    v43 = 1;
    goto LABEL_54;
  }

  v55 = 0;
  v56 = 0;
  while (2)
  {
    if (self->_read_buffer_capacity >= v12)
    {
      v57 = v12;
    }

    else
    {
      v57 = self->_read_buffer_capacity;
    }

    v58 = pread(self->_backingStoreFD, v39, v57, v56 + var2);
    v59 = v58;
    if (v58 != -1)
    {
      v60 = self->_read_buffer_capacity;
      if (v60 >= v12)
      {
        v60 = v12;
      }

      if (v58 < v60)
      {
        v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0AFB8] code:8 userInfo:0];
        inflateEnd(&strm);
        if (v26)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      }

      goto LABEL_81;
    }

    if (*__error() == 4)
    {
LABEL_81:
      strm.next_in = v39;
      strm.avail_in = v59;
      if (v12 == v59)
      {
        v61 = 4;
      }

      else
      {
        v61 = 2;
      }

      while (strm.avail_in && v55 == 0)
      {
        v55 = inflate(&strm, v61);
        if (v55 >= 2)
        {
          v63 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ZlibErrorDomain" code:1 userInfo:0];
          if (v63)
          {
            v26 = v63;
            inflateEnd(&strm);
            goto LABEL_55;
          }

          break;
        }
      }

      v56 += v59;
      v12 -= v59;
      if (v12)
      {
        continue;
      }

      inflateEnd(&strm);
LABEL_52:
      v26 = 0;
LABEL_55:
      GPUTools::DYLockUtils::Lock(&self->_read_buffer_tokens_lock, v52);
      std::vector<unsigned int>::emplace_back<unsigned int const&>(&self->_read_buffer_tokens.__begin_, &v69);
      GPUTools::DYLockUtils::Unlock(&self->_read_buffer_tokens_lock, v53);
      v9 = v66;
      var0 = dst_size;
      v25 = v65;
      dispatch_semaphore_signal(self->_read_buffer_sem);
      goto LABEL_56;
    }

    break;
  }

  inflateEnd(&strm);
  if (a6)
  {
    *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
  }

  v18 = 0;
  *v66 = 0;
  *a4 = 0;
  return v18;
}

- (BOOL)requestDataForFilePosition:(unint64_t)a3 buffer:(void *)a4 size:(unint64_t *)a5 error:(id *)a6
{
  lock_global_semaphore = self->_lock_global_semaphore;
  AutoReaderLock::AutoReaderLock(v13, &self->_lock_readers, lock_global_semaphore, &self->_blocking_readers);
  LOBYTE(a6) = [(DYCaptureArchive *)self _requestDataForFilePosition:a3 buffer:a4 size:a5 error:a6];
  AutoReaderLock::~AutoReaderLock(v13, v11);
  return a6;
}

- (id)_readRawDataForFilePosition:(unsigned int)a3 error:(id *)a4
{
  v4 = &self->_file_table[a3];
  var0 = v4->var1.var0;
  if (!var0)
  {
    v18 = MEMORY[0x277CBEB28];

    return [v18 data];
  }

  var2 = v4->var2;
  backingStoreWritePosition = self->_backingStoreWritePosition;
  v10 = __OFSUB__(var2, backingStoreWritePosition);
  v11 = var2 - backingStoreWritePosition;
  if (v11 < 0 == v10)
  {
    if (v11 >= 0 && self->_store_write_ptr > self->_store_write_buffer + v11)
    {
      v20 = MEMORY[0x277CBEB28];

      return [v20 dataWithBytesNoCopy:? length:? freeWhenDone:?];
    }

LABEL_20:
    if (a4)
    {
      v21 = *MEMORY[0x277D0AFB8];
      v22 = MEMORY[0x277D0AFC0];
      v23 = 8;
      goto LABEL_26;
    }

    return 0;
  }

  v12 = [MEMORY[0x277CBEB28] dataWithLength:var0];
  if (!v12)
  {
    if (a4)
    {
      v21 = *MEMORY[0x277D0AFB8];
      v22 = MEMORY[0x277D0AFC0];
      v23 = 4;
      goto LABEL_26;
    }

    return 0;
  }

  v13 = v12;
  v14 = [v12 mutableBytes];
  v15 = 0;
  while (1)
  {
    v16 = pread(self->_backingStoreFD, v14, var0, v15 + var2);
    v17 = v16;
    if (v16 != -1)
    {
      if (var0 > v16)
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }

    if (*__error() != 4)
    {
      break;
    }

LABEL_10:
    v15 += v17;
    var0 -= v17;
    if (!var0)
    {
      return v13;
    }
  }

  if (!a4)
  {
    return 0;
  }

  v24 = MEMORY[0x277CCA9B8];
  v25 = *MEMORY[0x277CCA5B8];
  v23 = *__error();
  v22 = v24;
  v21 = v25;
LABEL_26:
  v13 = 0;
  *a4 = [v22 errorWithDomain:v21 code:v23 userInfo:0];
  return v13;
}

- (int64_t)readDataForFilePosition:(unint64_t)a3 buffer:(void *)a4 size:(unint64_t)a5 error:(id *)a6
{
  lock_global_semaphore = self->_lock_global_semaphore;
  AutoReaderLock::AutoReaderLock(v14, &self->_lock_readers, lock_global_semaphore, &self->_blocking_readers);
  v11 = [(DYCaptureArchive *)self _readDataForFilePosition:a3 buffer:a4 size:a5 error:a6];
  AutoReaderLock::~AutoReaderLock(v14, v12);
  return v11;
}

- (int64_t)_readDataForFilePosition:(unint64_t)a3 buffer:(void *)a4 size:(unint64_t)a5 error:(id *)a6
{
  if (!a4)
  {
    if (a6)
    {
      *a6 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277CCA5B8] code:14 userInfo:0];
    }

    return -1;
  }

  v11 = 0;
  __src = 0;
  if (![(DYCaptureArchive *)self _requestDataForFilePosition:a3 buffer:&__src size:&v11 error:a6])
  {
    return -1;
  }

  if (v11 < a5)
  {
    [DYCaptureArchive _readDataForFilePosition:buffer:size:error:];
  }

  memcpy(a4, __src, a5);
  [(DYCaptureArchive *)self releaseBytesForFilePosition:a3];
  return a5;
}

- (id)copyDataForFilePosition:(unint64_t)a3 error:(id *)a4
{
  lock_global_semaphore = self->_lock_global_semaphore;
  AutoReaderLock::AutoReaderLock(v10, &self->_lock_readers, lock_global_semaphore, &self->_blocking_readers);
  v7 = [(DYCaptureArchive *)self _copyDataForFilePosition:a3 error:a4];
  AutoReaderLock::~AutoReaderLock(v10, v8);
  return v7;
}

- (id)_copyDataForFilePosition:(unint64_t)a3 error:(id *)a4
{
  v4 = a3;
  if (a3 >= self->_header.file_table_length)
  {
    [DYCaptureArchive _copyDataForFilePosition:error:];
  }

  file_table = self->_file_table;
  v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:file_table[a3].var0];
  [v8 setLength:file_table[v4].var0];
  if (-[DYCaptureArchive _readDataForFilePosition:buffer:size:error:](self, "_readDataForFilePosition:buffer:size:error:", v4, [v8 mutableBytes], file_table[v4].var0, a4) == -1)
  {

    return 0;
  }

  return v8;
}

- (id)openFileWithFilename:(id)a3 error:(id *)a4
{
  lock_global_semaphore = self->_lock_global_semaphore;
  AutoReaderLock::AutoReaderLock(v14, &self->_lock_readers, lock_global_semaphore, &self->_blocking_readers);
  if (![a3 length])
  {
    if (a4)
    {
      v8 = 1;
      goto LABEL_7;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  if (![(DYCaptureArchive *)self isClosed])
  {
    v11 = [-[DYCaptureArchive _getCFilename:outSize:error:](self _getCFilename:a3 outSize:0 error:{a4), "bytes"}];
    if (v11)
    {
      v12 = [(DYCaptureArchive *)self _findHashEntry:v11];
      if (v12 != -1)
      {
        v10 = [[DYCaptureFile alloc] _initWithArchive:self hashPosition:v12 name:a3];
        goto LABEL_15;
      }

      if (a4)
      {
        v9 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:13 userInfo:0];
        goto LABEL_8;
      }
    }

    goto LABEL_14;
  }

  if (!a4)
  {
    goto LABEL_14;
  }

  v8 = 20;
LABEL_7:
  v9 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:v8 userInfo:0];
LABEL_8:
  v10 = 0;
  *a4 = v9;
LABEL_15:
  AutoReaderLock::~AutoReaderLock(v14, v7);
  return v10;
}

- (int64_t)readDataForFilenameBuffer:(const char *)a3 buffer:(void *)a4 size:(unint64_t)a5 error:(id *)a6
{
  lock_global_semaphore = self->_lock_global_semaphore;
  AutoReaderLock::AutoReaderLock(v17, &self->_lock_readers, lock_global_semaphore, &self->_blocking_readers);
  if (*a3)
  {
    if ([(DYCaptureArchive *)self isClosed])
    {
      if (a6)
      {
        v12 = 20;
LABEL_7:
        v13 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:v12 userInfo:0];
LABEL_8:
        *a6 = v13;
      }
    }

    else
    {
      v16 = [(DYCaptureArchive *)self _findHashEntry:a3];
      if (v16 != -1)
      {
        v14 = [(DYCaptureArchive *)self readDataForFilePosition:self->_hash_table[v16].var0 buffer:a4 size:a5 error:a6];
        goto LABEL_10;
      }

      if (a6)
      {
        v13 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:13 userInfo:0];
        goto LABEL_8;
      }
    }
  }

  else if (a6)
  {
    v12 = 1;
    goto LABEL_7;
  }

  v14 = -1;
LABEL_10:
  AutoReaderLock::~AutoReaderLock(v17, v11);
  return v14;
}

- (int64_t)readDataForFilename:(id)a3 buffer:(void *)a4 size:(unint64_t)a5 error:(id *)a6
{
  v10 = [a3 cStringUsingEncoding:1];

  return [(DYCaptureArchive *)self readDataForFilenameBuffer:v10 buffer:a4 size:a5 error:a6];
}

- (id)copyDataForFilenameBuffer:(const char *)a3 error:(id *)a4
{
  lock_global_semaphore = self->_lock_global_semaphore;
  AutoReaderLock::AutoReaderLock(v13, &self->_lock_readers, lock_global_semaphore, &self->_blocking_readers);
  if (!*a3)
  {
    if (a4)
    {
      v8 = 1;
      goto LABEL_7;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  if (![(DYCaptureArchive *)self isClosed])
  {
    v11 = [(DYCaptureArchive *)self _findHashEntry:a3];
    if (v11 != -1)
    {
      v10 = [(DYCaptureArchive *)self _copyDataForFilePosition:self->_hash_table[v11].var0 error:a4];
      goto LABEL_14;
    }

    if (a4)
    {
      v9 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:13 userInfo:0];
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  if (!a4)
  {
    goto LABEL_13;
  }

  v8 = 20;
LABEL_7:
  v9 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:v8 userInfo:0];
LABEL_8:
  v10 = 0;
  *a4 = v9;
LABEL_14:
  AutoReaderLock::~AutoReaderLock(v13, v7);
  return v10;
}

- (id)copyDataForFilename:(id)a3 error:(id *)a4
{
  v6 = [a3 cStringUsingEncoding:1];

  return [(DYCaptureArchive *)self copyDataForFilenameBuffer:v6 error:a4];
}

- (void)allocateAndReadDataForFilenameBuffer:(const char *)a3 outSize:(unint64_t *)a4 error:(id *)a5
{
  if (![(DYCaptureArchive *)self getInfo:&v11 forFilenameBuffer:a3 error:?])
  {
    return 0;
  }

  for (i = 3; i; --i)
  {
    v9 = malloc_type_malloc(size, 0xAD5F59FFuLL);
    if (!v9)
    {
      break;
    }

    if ([(DYCaptureArchive *)self readDataForFilePosition:v11 buffer:v9 size:size error:a5]!= -1)
    {
      if (a4)
      {
        *a4 = size;
      }

      return v9;
    }

    free(v9);
    v9 = 0;
  }

  return v9;
}

- (id)getFilenameForFilePosition:(unint64_t)a3 error:(id *)a4
{
  v4 = a3;
  lock_global_semaphore = self->_lock_global_semaphore;
  AutoReaderLock::AutoReaderLock(v15, &self->_lock_readers, lock_global_semaphore, &self->_blocking_readers);
  if (self->_header.file_table_length <= v4)
  {
    __assert_rtn("[DYCaptureArchive getFilenameForFilePosition:error:]", ", 0, "position < _header.file_table_length"");
  }

  hash_table_length = self->_header.hash_table_length;
  if (!hash_table_length)
  {
LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  hash_table = self->_hash_table;
  if (hash_table->var0 != v4)
  {
    v10 = 0;
    while (hash_table_length - 1 != v10)
    {
      var0 = hash_table[1].var0;
      ++hash_table;
      ++v10;
      if (var0 == v4)
      {
        v9 = v10 < hash_table_length;
        goto LABEL_9;
      }
    }

    goto LABEL_12;
  }

  v9 = 1;
LABEL_9:
  v12 = [(DYCaptureArchive *)self objectInFilenamesAtIndex:hash_table->var1];
  if (v9)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

LABEL_13:
  AutoReaderLock::~AutoReaderLock(v15, v6);
  return v13;
}

- (BOOL)getInfo:(id *)a3 forFilePosition:(unint64_t)a4 error:(id *)a5
{
  lock_global_semaphore = self->_lock_global_semaphore;
  AutoReaderLock::AutoReaderLock(v11, &self->_lock_readers, lock_global_semaphore, &self->_blocking_readers);
  LOBYTE(a5) = [(DYCaptureArchive *)self _getInfo:a3 forFilePosition:a4 error:a5];
  AutoReaderLock::~AutoReaderLock(v11, v9);
  return a5;
}

- (BOOL)_getInfo:(id *)a3 forFilePosition:(unint64_t)a4 error:(id *)a5
{
  if (self->_header.file_table_length <= a4)
  {
    [DYCaptureArchive _getInfo:forFilePosition:error:];
  }

  v5 = &self->_file_table[a4];
  a3->var0 = a4;
  *&a3->var2 = vrev64_s32(*&v5->var0);
  *&a3->var4 = *&v5->var3;
  a3->var1 = v5->var2;
  return 1;
}

- (BOOL)getInfo:(id *)a3 forFilenameBuffer:(const char *)a4 error:(id *)a5
{
  lock_global_semaphore = self->_lock_global_semaphore;
  AutoReaderLock::AutoReaderLock(v15, &self->_lock_readers, lock_global_semaphore, &self->_blocking_readers);
  if (!*a4)
  {
    if (a5)
    {
      v10 = 1;
      goto LABEL_7;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  if (![(DYCaptureArchive *)self isClosed])
  {
    v13 = [(DYCaptureArchive *)self _findHashEntry:a4];
    if (v13 != -1)
    {
      v12 = [(DYCaptureArchive *)self _getInfo:a3 forFilePosition:self->_hash_table[v13].var0 error:a5];
      goto LABEL_14;
    }

    if (a5)
    {
      v11 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:13 userInfo:0];
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  if (!a5)
  {
    goto LABEL_13;
  }

  v10 = 20;
LABEL_7:
  v11 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:v10 userInfo:0];
LABEL_8:
  v12 = 0;
  *a5 = v11;
LABEL_14:
  AutoReaderLock::~AutoReaderLock(v15, v9);
  return v12;
}

- (BOOL)getInfo:(id *)a3 forFilename:(id)a4 error:(id *)a5
{
  v8 = [a4 cStringUsingEncoding:1];

  return [(DYCaptureArchive *)self getInfo:a3 forFilenameBuffer:v8 error:a5];
}

- (BOOL)fileExistsForFilenameBuffer:(const char *)a3 error:(id *)a4
{
  lock_global_semaphore = self->_lock_global_semaphore;
  AutoReaderLock::AutoReaderLock(v11, &self->_lock_readers, lock_global_semaphore, &self->_blocking_readers);
  if (!*a3)
  {
    if (a4)
    {
      v8 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:1 userInfo:0];
      goto LABEL_7;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (![(DYCaptureArchive *)self isClosed])
  {
    v9 = [(DYCaptureArchive *)self _findHashEntry:a3]!= -1;
    goto LABEL_10;
  }

  if (!a4)
  {
    goto LABEL_9;
  }

  v8 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:20 userInfo:0];
LABEL_7:
  v9 = 0;
  *a4 = v8;
LABEL_10:
  AutoReaderLock::~AutoReaderLock(v11, v7);
  return v9;
}

- (BOOL)fileExistsForFilename:(id)a3 error:(id *)a4
{
  v6 = [a3 cStringUsingEncoding:1];

  return [(DYCaptureArchive *)self fileExistsForFilenameBuffer:v6 error:a4];
}

- (id)metadataValueForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_metadata objectForKey:a3];

  return v3;
}

- (BOOL)setMetadataValue:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v9 = [(DYCaptureArchive *)self isReadOnly];
  if (v9)
  {
    if (a5)
    {
      *a5 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:7 userInfo:0];
    }
  }

  else
  {
    v10 = [a3 copyWithZone:0];
    [(NSMutableDictionary *)self->_metadata setObject:v10 forKey:a4];
  }

  return !v9;
}

- (void)markMetadataModified
{
  write_queue = self->_write_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__DYCaptureArchive_markMetadataModified__block_invoke;
  block[3] = &unk_279309890;
  block[4] = self;
  dispatch_sync(write_queue, block);
}

intptr_t __40__DYCaptureArchive_markMetadataModified__block_invoke(uint64_t a1)
{
  dsema = *(*(a1 + 32) + 232);
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  *(*(a1 + 32) + 272) = 1;

  return dispatch_semaphore_signal(dsema);
}

- (BOOL)storeAdjunctData:(id)a3 filename:(id)a4 error:(id *)a5
{
  if (!a4)
  {
    [DYCaptureArchive storeAdjunctData:filename:error:];
  }

  if (!a3)
  {
    [DYCaptureArchive storeAdjunctData:filename:error:];
  }

  if (![a4 length] || objc_msgSend(objc_msgSend(a4, "pathComponents"), "count") >= 2)
  {
    if (!a5)
    {
      return 0;
    }

    v9 = *MEMORY[0x277D0AFB8];
    v10 = MEMORY[0x277D0AFC0];
    v11 = 1;
LABEL_7:
    *a5 = [v10 errorWithDomain:v9 code:v11 userInfo:0];
    return 0;
  }

  if ([(DYCaptureArchive *)self isReadOnly])
  {
    if (!a5)
    {
      return 0;
    }

    v9 = *MEMORY[0x277D0AFB8];
    v10 = MEMORY[0x277D0AFC0];
    v11 = 7;
    goto LABEL_7;
  }

  if ([(DYCaptureArchive *)self isClosed])
  {
    goto LABEL_13;
  }

  if ([a3 length] >> 31)
  {
    if (!a5)
    {
      return 0;
    }

    v9 = *MEMORY[0x277D0AFB8];
    v10 = MEMORY[0x277D0AFC0];
    v11 = 2;
    goto LABEL_7;
  }

  v13 = [MEMORY[0x277CBEA90] dy_dataByCompressingData:a3 error:a5];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  if ([(DYCaptureArchive *)self isClosed])
  {
LABEL_13:
    if (!a5)
    {
      return 0;
    }

    v9 = *MEMORY[0x277D0AFB8];
    v10 = MEMORY[0x277D0AFC0];
    v11 = 20;
    goto LABEL_7;
  }

  v15 = [(NSString *)[(DYCaptureArchive *)self path] stringByAppendingPathComponent:a4];
  if (!v15)
  {
    return 0;
  }

  return [v14 writeToFile:v15 options:0 error:a5];
}

- (id)copyAdjunctDataForFilename:(id)a3 error:(id *)a4
{
  if (!a3)
  {
    [DYCaptureArchive copyAdjunctDataForFilename:error:];
  }

  if ([a3 length] && objc_msgSend(objc_msgSend(a3, "pathComponents"), "count") < 2)
  {
    if ([(DYCaptureArchive *)self isClosed])
    {
      if (a4)
      {
        v7 = *MEMORY[0x277D0AFB8];
        v8 = MEMORY[0x277D0AFC0];
        v9 = 20;
        goto LABEL_6;
      }
    }

    else
    {
      v11 = [(NSString *)[(DYCaptureArchive *)self path] stringByAppendingPathComponent:a3];
      if (v11)
      {
        v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v11 options:0 error:a4];
        if (v12)
        {
          v13 = v12;
          v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
          v14 = [MEMORY[0x277CBEA90] dy_decompressData:v13 inMutableData:v10 error:a4];

          if (v14)
          {
            return v10;
          }
        }
      }

      else if (a4)
      {
        v7 = *MEMORY[0x277D0AFB8];
        v8 = MEMORY[0x277D0AFC0];
        v9 = 14;
        goto LABEL_6;
      }
    }

    return 0;
  }

  if (!a4)
  {
    return 0;
  }

  v7 = *MEMORY[0x277D0AFB8];
  v8 = MEMORY[0x277D0AFC0];
  v9 = 1;
LABEL_6:
  v10 = 0;
  *a4 = [v8 errorWithDomain:v7 code:v9 userInfo:0];
  return v10;
}

- (BOOL)adjunctFileExistsForFilename:(id)a3 error:(id *)a4
{
  if (!a3)
  {
    [DYCaptureArchive adjunctFileExistsForFilename:error:];
  }

  if ([a3 length])
  {
    v7 = [(NSString *)[(DYCaptureArchive *)self path] stringByAppendingPathComponent:a3];
    v8 = objc_opt_new();

    return [v8 fileExistsAtPath:v7];
  }

  else
  {
    if (a4)
    {
      *a4 = [MEMORY[0x277D0AFC0] errorWithDomain:*MEMORY[0x277D0AFB8] code:1 userInfo:0];
    }

    return 0;
  }
}

- (id).cxx_construct
{
  *(self + 22) = 0;
  *(self + 23) = 0;
  *(self + 24) = 0;
  *(self + 38) = 0;
  *(self + 39) = 0;
  *(self + 37) = 0;
  return self;
}

- (uint64_t)cacheAllResources
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x25302FA40](v3, 0xA0C40AFF93C70);
  }

  return a1;
}

- (unsigned)_createNewHashEntry:(const char *)a3 didGrowTable:(BOOL *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  v7 = -1640531527;
  v8 = *a3;
  if (*a3)
  {
    v9 = a3 + 2;
    do
    {
      v10 = *(v9 - 1);
      if (!*(v9 - 1))
      {
        break;
      }

      v11 = v7 + v8;
      v12 = *v9;
      v9 += 2;
      v8 = v12;
      v7 = ((v11 << 16) ^ (v10 << 11) ^ v11) + (((v11 << 16) ^ (v10 << 11) ^ v11) >> 11);
    }

    while (v12);
  }

  OUTLINED_FUNCTION_0();
  if (v15)
  {
    v14 = v13;
  }

  hash_table_length = self->_header.hash_table_length;
  v17 = v14 % hash_table_length;
  hash_table = self->_hash_table;
  if (hash_table[v17].var0 == -1)
  {
    return v17;
  }

  if (v17 + 1 == hash_table_length)
  {
    result = 0;
  }

  else
  {
    result = v17 + 1;
  }

  if (result == v17)
  {
LABEL_20:
    [(DYCaptureArchive *)self _growHashTable];
    if (a4)
    {
      *a4 = 1;
    }

    return [(DYCaptureArchive *)self _createNewHashEntry:a3 didGrowTable:0];
  }

  else
  {
    while (hash_table[result].var0 != -1)
    {
      if (result + 1 == hash_table_length)
      {
        result = 0;
      }

      else
      {
        ++result;
      }

      if (result == v17)
      {
        goto LABEL_20;
      }
    }
  }

  return result;
}

- (unsigned)_findHashEntry:(const char *)a3
{
  v3 = *a3;
  if (*a3)
  {
    v4 = a3 + 2;
    v5 = -1640531527;
    do
    {
      v6 = *(v4 - 1);
      if (!*(v4 - 1))
      {
        break;
      }

      v7 = v5 + v3;
      v8 = *v4;
      v4 += 2;
      v3 = v8;
      v5 = ((v7 << 16) ^ (v6 << 11) ^ v7) + (((v7 << 16) ^ (v6 << 11) ^ v7) >> 11);
    }

    while (v8);
    OUTLINED_FUNCTION_0();
    if (!v12)
    {
      v10 = v11;
    }

    v13 = *(v9 + 40);
    v14 = v10 % v13;
    v15 = *(v9 + 56);
    v16 = (v15 + 12 * (v10 % v13));
    if (*v16 != -1)
    {
      v17 = *(v9 + 88);
      v18 = *(v9 + 104);
      if (!OUTLINED_FUNCTION_1(v16))
      {
        return v14;
      }

      if (v14 + 1 == v13)
      {
        v19 = 0;
      }

      else
      {
        v19 = v14 + 1;
      }

      while (v19 != v14)
      {
        v20 = (v15 + 12 * v19);
        if (*v20 == -1)
        {
          break;
        }

        if (!OUTLINED_FUNCTION_1(v20))
        {
          return v19;
        }

        if (v19 + 1 == v13)
        {
          v19 = 0;
        }

        else
        {
          ++v19;
        }
      }
    }
  }

  return -1;
}

@end