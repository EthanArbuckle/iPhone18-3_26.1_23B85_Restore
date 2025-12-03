@interface HDDiagnosticOperation
+ (id)operationWithAttachmentDirectoryURL:(id)l;
- (BOOL)_copyDatabase:(sqlite3 *)database toDatabase:(sqlite3 *)toDatabase;
- (BOOL)copyDatabaseFromURL:(id)l toURL:(id)rL;
- (HDDiagnosticOperation)initWithAttachmentDirectoryURL:(id)l;
- (HDDiagnosticOperationDelegate)delegate;
- (NSArray)attachments;
- (NSString)reportFilename;
- (id)_fileAttributesAtURL:(id)l;
- (id)_headerString;
- (id)fileCreationDateForURL:(id)l;
- (id)fileModificationDateForURL:(id)l;
- (id)openReadOnlyDatabaseAtURL:(id)l;
- (id)prettyPrintFileSize:(int64_t)size;
- (int64_t)_reportCountOfObjectsForEntityClass:(Class)class database:(id)database;
- (int64_t)_reportCountOfObjectsInTable:(id)table database:(id)database;
- (int64_t)fileSizeForURL:(id)l;
- (unint64_t)getFileStatisticsForDirectoryWithURL:(id)l earliestModificationDate:(double *)date totalFileSize:(int64_t *)size maxFileSize:(int64_t *)fileSize;
- (void)_appendString:(id)string newLine:(BOOL)line;
- (void)_queue_submitAttachment:(id)attachment;
- (void)appendFormat:(id)format;
- (void)log:(id)log;
- (void)main;
- (void)reportCountsForDatabase:(id)database entityClasses:(id)classes;
- (void)reportIntegrityForDatabase:(id)database;
- (void)reportStatsForDatabaseAtURL:(id)l;
- (void)submitAttachment:(id)attachment;
- (void)submitAttachments:(id)attachments;
- (void)verifyPermissionsForFileAtURL:(id)l;
@end

@implementation HDDiagnosticOperation

- (HDDiagnosticOperation)initWithAttachmentDirectoryURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = HDDiagnosticOperation;
  v5 = [(HDDiagnosticOperation *)&v11 init];
  if (v5)
  {
    v6 = [lCopy copy];
    attachmentDirectoryURL = v5->_attachmentDirectoryURL;
    v5->_attachmentDirectoryURL = v6;

    v8 = HKCreateSerialDispatchQueue();
    queue = v5->_queue;
    v5->_queue = v8;
  }

  return v5;
}

+ (id)operationWithAttachmentDirectoryURL:(id)l
{
  lCopy = l;
  v5 = [[self alloc] initWithAttachmentDirectoryURL:lCopy];

  return v5;
}

- (NSArray)attachments
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__HDDiagnosticOperation_attachments__block_invoke;
  v5[3] = &unk_2796C1010;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __36__HDDiagnosticOperation_attachments__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 248) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSString)reportFilename
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"%@.txt", v4];

  return v5;
}

- (void)main
{
  [(HDDiagnosticOperation *)self log:@"Running..."];
  [(HDDiagnosticOperation *)self run];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HDDiagnosticOperation_main__block_invoke;
  block[3] = &unk_2796C1038;
  block[4] = self;
  dispatch_sync(queue, block);
  [(HDDiagnosticOperation *)self log:@"Finished running %@", objc_opt_class()];
}

void __29__HDDiagnosticOperation_main__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reportContents];
  v3 = [v2 length];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 reportFilename];
    v6 = [*(a1 + 32) attachmentDirectoryURL];
    v7 = [v6 URLByAppendingPathComponent:v5 isDirectory:0];

    v8 = *(a1 + 32);
    v9 = [v7 path];
    [v8 log:{@"Writing %@...", v9}];

    v14 = 0;
    LOBYTE(v9) = [v2 writeToURL:v7 atomically:1 encoding:4 error:&v14];
    v10 = v14;
    if ((v9 & 1) == 0)
    {
      v11 = *(a1 + 32);
      v12 = [v7 path];
      [v11 log:{@"ERROR: Failed to write %@: %@", v12, v10}];
    }

    v13 = [MEMORY[0x277CCAB68] string];
    [*(a1 + 32) setReportContents:v13];
  }

  else
  {
    [v4 log:@"No report"];
  }
}

- (void)appendFormat:(id)format
{
  v4 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v6 = [[v4 alloc] initWithFormat:formatCopy arguments:&v7];

  [(HDDiagnosticOperation *)self _appendString:v6 newLine:1];
}

- (void)_appendString:(id)string newLine:(BOOL)line
{
  stringCopy = string;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HDDiagnosticOperation__appendString_newLine___block_invoke;
  block[3] = &unk_2796C1060;
  block[4] = self;
  v10 = stringCopy;
  lineCopy = line;
  v8 = stringCopy;
  dispatch_async(queue, block);
}

uint64_t __47__HDDiagnosticOperation__appendString_newLine___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 280);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 280);
    *(v4 + 280) = v3;

    v6 = *(a1 + 32);
    v7 = v6[35];
    v8 = [v6 _headerString];
    [v7 appendString:v8];

    v2 = *(*(a1 + 32) + 280);
  }

  result = [v2 appendString:*(a1 + 40)];
  if (*(a1 + 48) == 1)
  {
    v10 = *(*(a1 + 32) + 280);

    return [v10 appendString:@"\n"];
  }

  return result;
}

- (id)_headerString
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = MEMORY[0x277CCACA8];
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [(HDDiagnosticOperation *)self stringFromDate:date];
  currentDeviceClass = [mEMORY[0x277CCDD30] currentDeviceClass];
  currentInternalDeviceModel = [mEMORY[0x277CCDD30] currentInternalDeviceModel];
  currentDeviceDisplayName = [mEMORY[0x277CCDD30] currentDeviceDisplayName];
  currentDeviceName = [mEMORY[0x277CCDD30] currentDeviceName];
  currentOSName = [mEMORY[0x277CCDD30] currentOSName];
  currentOSBuild = [mEMORY[0x277CCDD30] currentOSBuild];
  v13 = [v4 stringWithFormat:@"Date:    %@\nDevice:  %@ %@\nName:    %@ (%@)\nBuild:   %@ %@\n\n\n", v6, currentDeviceClass, currentInternalDeviceModel, currentDeviceDisplayName, currentDeviceName, currentOSName, currentOSBuild];

  return v13;
}

- (void)submitAttachment:(id)attachment
{
  attachmentCopy = attachment;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HDDiagnosticOperation_submitAttachment___block_invoke;
  v7[3] = &unk_2796C1088;
  v7[4] = self;
  v8 = attachmentCopy;
  v6 = attachmentCopy;
  dispatch_async(queue, v7);
}

- (void)submitAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HDDiagnosticOperation_submitAttachments___block_invoke;
  v7[3] = &unk_2796C1088;
  v8 = attachmentsCopy;
  selfCopy = self;
  v6 = attachmentsCopy;
  dispatch_async(queue, v7);
}

void __43__HDDiagnosticOperation_submitAttachments___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _queue_submitAttachment:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_submitAttachment:(id)attachment
{
  attachmentCopy = attachment;
  attachments = self->_attachments;
  v8 = attachmentCopy;
  if (!attachments)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_attachments;
    self->_attachments = v6;

    attachmentCopy = v8;
    attachments = self->_attachments;
  }

  [(NSMutableArray *)attachments addObject:attachmentCopy];
}

- (void)log:(id)log
{
  v4 = MEMORY[0x277CCACA8];
  logCopy = log;
  v6 = [[v4 alloc] initWithFormat:logCopy arguments:&v8];

  delegate = [(HDDiagnosticOperation *)self delegate];
  [delegate diagnosticOperation:self logMessage:v6];
}

- (BOOL)copyDatabaseFromURL:(id)l toURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  ppDb = 0;
  v8 = sqlite3_open_v2([lCopy fileSystemRepresentation], &ppDb, 1, 0);
  if (v8)
  {
    [(HDDiagnosticOperation *)self log:@"Could not open original database at '%@'. %s (%d)\n", lCopy, sqlite3_errmsg(ppDb), v8];
  }

  else
  {
    v13 = 0;
    v9 = sqlite3_open_v2([rLCopy fileSystemRepresentation], &v13, 6, 0);
    if (!v9)
    {
      v11 = [(HDDiagnosticOperation *)self _copyDatabase:ppDb toDatabase:v13];
      sqlite3_close(ppDb);
      sqlite3_close(v13);
      goto LABEL_6;
    }

    v10 = v9;
    sqlite3_close(ppDb);
    [(HDDiagnosticOperation *)self log:@"Could not open destination database at '%@'. %s (%d)\n", rLCopy, sqlite3_errmsg(ppDb), v10];
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (id)openReadOnlyDatabaseAtURL:(id)l
{
  lCopy = l;
  v5 = [objc_alloc(MEMORY[0x277D10B30]) initWithDatabaseURL:lCopy];
  v11 = 0;
  v6 = [v5 openForReadingWithError:&v11];
  v7 = v11;
  v8 = v7;
  if (v6)
  {
    [(HDDiagnosticOperation *)self log:@"Failed to open database at '%@': %@", lCopy, v7];
    [v5 close];
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (int64_t)fileSizeForURL:(id)l
{
  memset(&v4, 0, sizeof(v4));
  if (stat([l fileSystemRepresentation], &v4))
  {
    return -1;
  }

  else
  {
    return v4.st_size;
  }
}

- (id)fileCreationDateForURL:(id)l
{
  v3 = [(HDDiagnosticOperation *)self _fileAttributesAtURL:l];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCA108]];

  return v4;
}

- (id)fileModificationDateForURL:(id)l
{
  v3 = [(HDDiagnosticOperation *)self _fileAttributesAtURL:l];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCA150]];

  return v4;
}

- (id)_fileAttributesAtURL:(id)l
{
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v11 = 0;
  v7 = [defaultManager attributesOfItemAtPath:path error:&v11];
  v8 = v11;

  if (!v7)
  {
    path2 = [lCopy path];
    [(HDDiagnosticOperation *)self log:@"Failed to get file attributes at path %@: %@", path2, v8];
  }

  return v7;
}

- (id)prettyPrintFileSize:(int64_t)size
{
  if (size > 1023)
  {
    if (size >> 20)
    {
      sizeCopy = size;
      if (size >> 30)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%0.3lfG (%lld bytes)", sizeCopy * 9.31322575e-10, size];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%0.3lfM (%lld bytes)", sizeCopy * 0.000000953674316, size];
      }
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%0.3lfK (%lld bytes)", vcvtd_n_f64_u64(size, 0xAuLL), size];
    }
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%lld bytes", size, v6];
  }
  v4 = ;

  return v4;
}

- (unint64_t)getFileStatisticsForDirectoryWithURL:(id)l earliestModificationDate:(double *)date totalFileSize:(int64_t *)size maxFileSize:(int64_t *)fileSize
{
  v44 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v42 = 0;
  v11 = [MEMORY[0x277D10710] journalChaptersForURL:lCopy error:&v42];
  v12 = v42;
  if (!v11)
  {
    path = [lCopy path];
    [(HDDiagnosticOperation *)self log:@"Failed to retrieve contents of %@ directory: %@", path, v12];
LABEL_18:

    v30 = 0;
    goto LABEL_27;
  }

  if (![v11 count])
  {
    path = [lCopy path];
    [(HDDiagnosticOperation *)self log:@"No files in %@", path, v33];
    goto LABEL_18;
  }

  sizeCopy = size;
  fileSizeCopy = fileSize;
  dateCopy = date;
  v37 = v12;
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  [distantPast timeIntervalSinceReferenceDate];
  v15 = v14;

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v16 = v11;
  v17 = [v16 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = 0;
    v21 = *v39;
    v22 = 1.79769313e308;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v24 = *(*(&v38 + 1) + 8 * i);
        v25 = [v24 size];
        if ([v24 size] > v20)
        {
          v20 = [v24 size];
        }

        [v24 modificationTime];
        if (v26 != v15)
        {
          [v24 modificationTime];
          if (v27 < v22)
          {
            [v24 modificationTime];
            v22 = v28;
          }
        }

        v19 += v25;
      }

      v18 = [v16 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v22 = 1.79769313e308;
  }

  if (sizeCopy)
  {
    *sizeCopy = v19;
  }

  v12 = v37;
  if (fileSizeCopy)
  {
    *fileSizeCopy = v20;
  }

  if (dateCopy)
  {
    *dateCopy = v22;
  }

  v30 = [v16 count];
LABEL_27:

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

- (void)reportStatsForDatabaseAtURL:(id)l
{
  lCopy = l;
  v5 = objc_alloc_init(MEMORY[0x277CCAA00]);
  path = [lCopy path];
  v7 = [v5 fileExistsAtPath:path];

  if (v7)
  {
    path2 = [lCopy path];
    [(HDDiagnosticOperation *)self appendFormat:@"SQLite database %@:", path2];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__HDDiagnosticOperation_reportStatsForDatabaseAtURL___block_invoke;
    v14[3] = &unk_2796C10B0;
    v14[4] = self;
    v9 = MEMORY[0x25307B760](v14);
    (v9)[2](v9, lCopy);
    pathExtension = [lCopy pathExtension];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-wal", pathExtension];
    uRLByDeletingPathExtension = [lCopy URLByDeletingPathExtension];
    v13 = [uRLByDeletingPathExtension URLByAppendingPathExtension:v11];

    (v9)[2](v9, v13);
  }

  else
  {
    [(HDDiagnosticOperation *)self log:@"No file present at %@.", lCopy];
  }
}

void __53__HDDiagnosticOperation_reportStatsForDatabaseAtURL___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [*(a1 + 32) fileSizeForURL:?];
  v4 = *(a1 + 32);
  if (v3 < 0)
  {
    v13 = [v16 path];
    v15 = __error();
    [v4 log:{@"Failed to get file size for %@: %s", v13, strerror(*v15)}];
  }

  else
  {
    v5 = v3;
    v6 = [v16 lastPathComponent];
    [v4 appendFormat:@"\t%@:", v6];

    v7 = *(a1 + 32);
    v8 = [v7 prettyPrintFileSize:v5];
    [v7 appendFormat:@"\t\tSize:\t\t%@", v8];

    v9 = *(a1 + 32);
    v10 = [v9 fileCreationDateForURL:v16];
    v11 = [v9 stringFromDate:v10];
    [v9 appendFormat:@"\t\tCreated:\t%@", v11];

    v12 = *(a1 + 32);
    v13 = [v12 fileModificationDateForURL:v16];
    v14 = [v12 stringFromDate:v13];
    [v12 appendFormat:@"\t\tModified:\t%@", v14];
  }
}

- (void)verifyPermissionsForFileAtURL:(id)l
{
  lCopy = l;
  memset(&v12, 0, sizeof(v12));
  if (stat([lCopy fileSystemRepresentation], &v12))
  {
    path = [lCopy path];
    v6 = __error();
    v7 = strerror(*v6);
    [(HDDiagnosticOperation *)self log:@"Failed to stat '%@' when verifying permissions: %s", path, v7, *&v12.st_dev, v12.st_ino];
LABEL_9:

    goto LABEL_10;
  }

  if (v12.st_uid != 501)
  {
    pw_name = getpwuid(v12.st_uid)->pw_name;
    path2 = [lCopy path];
    [(HDDiagnosticOperation *)self appendFormat:@"ERROR: Unexpected owner (%s) of file at %@", pw_name, path2, *&v12.st_dev, v12.st_ino];
  }

  st_mode = v12.st_mode;
  if ((v12.st_mode & 0x100) == 0)
  {
    path3 = [lCopy path];
    [(HDDiagnosticOperation *)self appendFormat:@"ERROR: Owner lacks read permission for file at %@", path3];

    st_mode = v12.st_mode;
  }

  if ((st_mode & 0x80) == 0)
  {
    path = [lCopy path];
    [(HDDiagnosticOperation *)self appendFormat:@"ERROR: Owner lacks write permission for file at %@", path];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)reportIntegrityForDatabase:(id)database
{
  databaseCopy = database;
  fileURL = [databaseCopy fileURL];
  path = [fileURL path];
  [(HDDiagnosticOperation *)self log:@"Checking integrity for %@...", path];

  v16 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__HDDiagnosticOperation_reportIntegrityForDatabase___block_invoke;
  v15[3] = &unk_2796C0D00;
  v15[4] = self;
  LOBYTE(path) = [databaseCopy executeSQL:@"PRAGMA INTEGRITY_CHECK" error:&v16 bindingHandler:0 enumerationHandler:v15];
  v7 = v16;
  if ((path & 1) == 0)
  {
    fileURL2 = [databaseCopy fileURL];
    path2 = [fileURL2 path];
    [(HDDiagnosticOperation *)self log:@"\tERROR: Failed to perform integrity check on %@: %@", path2, v7];
  }

  fileURL3 = [databaseCopy fileURL];
  path3 = [fileURL3 path];
  [(HDDiagnosticOperation *)self log:@"Checking foreign keys for %@...", path3];

  v13[4] = self;
  v14 = v7;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__HDDiagnosticOperation_reportIntegrityForDatabase___block_invoke_2;
  v13[3] = &unk_2796C0D00;
  LOBYTE(path3) = [databaseCopy executeSQL:@"PRAGMA FOREIGN_KEY_CHECK" error:&v14 bindingHandler:0 enumerationHandler:v13];
  v12 = v14;

  if ((path3 & 1) == 0)
  {
    [(HDDiagnosticOperation *)self log:@"\tERROR: Failed to perform foreign key check: %@", v12];
  }
}

uint64_t __52__HDDiagnosticOperation_reportIntegrityForDatabase___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x25307B2B0](a2, 0);
  if (([v4 isEqualToString:@"ok"] & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = MEMORY[0x25307B2B0](a2, 0);
    [v5 appendFormat:@"\tINTEGRITY_CHECK: %@", v6];
  }

  return 1;
}

uint64_t __52__HDDiagnosticOperation_reportIntegrityForDatabase___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x25307B2B0](a2, 0);
  v5 = HDSQLiteColumnAsInt64();
  v6 = MEMORY[0x25307B2B0](a2, 2);
  v7 = MEMORY[0x25307B2B0](a2, 3);
  [v3 appendFormat:@"\tFOREIGN_KEY_CHECK: %@ row %lld has invalid reference to %@ (%@)", v4, v5, v6, v7];

  return 1;
}

- (void)reportCountsForDatabase:(id)database entityClasses:(id)classes
{
  v18 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  classesCopy = classes;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [classesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(classesCopy);
        }

        [(HDDiagnosticOperation *)self _reportCountOfObjectsForEntityClass:*(*(&v13 + 1) + 8 * v11++) database:databaseCopy];
      }

      while (v9 != v11);
      v9 = [classesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_copyDatabase:(sqlite3 *)database toDatabase:(sqlite3 *)toDatabase
{
  v6 = sqlite3_file_control(toDatabase, 0, 102, database);
  if (v6)
  {
    [(HDDiagnosticOperation *)self log:@"Could not perform database copy: %s (%d)", sqlite3_errmsg(toDatabase), v6];
    return 0;
  }

  v7 = sqlite3_exec(toDatabase, "PRAGMA wal_checkpoint(RESTART);", 0, 0, 0);
  if (v7)
  {
    [(HDDiagnosticOperation *)self log:@"Could not checkpoint copied SQLite file: %s (%d)", sqlite3_errmsg(toDatabase), v7];
    return 0;
  }

  return 1;
}

- (int64_t)_reportCountOfObjectsForEntityClass:(Class)class database:(id)database
{
  databaseCopy = database;
  databaseTable = [(objc_class *)class databaseTable];
  v8 = [(HDDiagnosticOperation *)self _reportCountOfObjectsInTable:databaseTable database:databaseCopy];

  return v8;
}

- (int64_t)_reportCountOfObjectsInTable:(id)table database:(id)database
{
  tableCopy = table;
  databaseCopy = database;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  tableCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT COUNT(*) FROM %@", tableCopy];
  v20 = &v22;
  v21 = 0;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __63__HDDiagnosticOperation__reportCountOfObjectsInTable_database___block_invoke;
  v17 = &unk_2796C0FC0;
  selfCopy = self;
  v9 = tableCopy;
  v19 = v9;
  v10 = [databaseCopy executeSQL:tableCopy error:&v21 bindingHandler:0 enumerationHandler:&v14];
  v11 = v21;

  if ((v10 & 1) == 0)
  {
    [(HDDiagnosticOperation *)self log:@"Failed to count rows in table '%@': %@", v9, v11, v14, v15, v16, v17, selfCopy];
  }

  v12 = v23[3];

  _Block_object_dispose(&v22, 8);
  return v12;
}

uint64_t __63__HDDiagnosticOperation__reportCountOfObjectsInTable_database___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = HDSQLiteColumnAsInt64();
  v2 = *(*(*(a1 + 48) + 8) + 24);
  [*(a1 + 32) appendFormat:@"\t%lld %@", v2, *(a1 + 40)];
  return 0;
}

- (HDDiagnosticOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end