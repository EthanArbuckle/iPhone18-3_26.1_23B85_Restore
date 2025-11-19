@interface DSGeneralLogFile
- (BOOL)enumerateLogLinesWithIDs:(id)a3 usingBlock:(id)a4;
- (BOOL)parseDetailsWithURL:(id)a3;
- (BOOL)parseHeadersWithLine:(id)a3;
- (DSGeneralLogFile)initWithURL:(id)a3;
@end

@implementation DSGeneralLogFile

- (DSGeneralLogFile)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DSGeneralLogFile;
  v6 = [(DSGeneralLogFile *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
    if (![(DSGeneralLogFile *)v7 parseDetailsWithURL:v5])
    {

      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)parseDetailsWithURL:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v5 = [v4 path];
  v6 = [DSTextFile textFileWithPath:v5];

  if (v6)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__DSGeneralLogFile_parseDetailsWithURL___block_invoke;
    v9[3] = &unk_278F6E5F0;
    objc_copyWeak(&v10, &location);
    v9[4] = &v12;
    [v6 enumerateUsingBlock:v9];
    v7 = *(v13 + 24);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v12, 8);
  return v7 & 1;
}

void __40__DSGeneralLogFile_parseDetailsWithURL___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (a4 == 2)
    {
      v11 = [[DSLogLine alloc] initWithLine:v7];
      v12 = v11;
      if (v11)
      {
        v13 = [(DSLogLine *)v11 date];
        v14 = WeakRetained[5];
        WeakRetained[5] = v13;
      }

      else
      {
        v15 = DiagnosticLogHandleForCategory(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = WeakRetained[2];
          v18 = 138412290;
          v19 = v16;
          _os_log_impl(&dword_248BD5000, v15, OS_LOG_TYPE_DEFAULT, "Log appears to be empty: %@", &v18, 0xCu);
        }
      }
    }

    else if (a4 == 1)
    {
      v10 = objc_loadWeakRetained((a1 + 40));
      *(*(*(a1 + 32) + 8) + 24) = [v10 parseHeadersWithLine:v7];
    }

    else
    {
      [v8 end];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)parseHeadersWithLine:(id)a3
{
  v4 = [a3 dataUsingEncoding:4];
  v31 = 0;
  v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v31];
  v6 = v31;
  if (v5)
  {
    v7 = [MEMORY[0x277CBEB58] setWithObjects:{@"installed", @"model", @"os_build", @"serial", @"updated", @"version", 0}];
    v8 = MEMORY[0x277CBEB98];
    v9 = [v5 allKeys];
    v10 = [v8 setWithArray:v9];

    [v7 minusSet:v10];
    v11 = [v7 count];
    v12 = v11 == 0;
    if (v11)
    {
      v13 = DiagnosticLogHandleForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(DSGeneralLogFile *)self parseHeadersWithLine:v13];
      }
    }

    else
    {
      v14 = +[DSDateFormatter sharedFormatter];
      v15 = [v14 formatterWithType:2];
      v16 = [v5 objectForKeyedSubscript:@"installed"];
      v17 = [v15 dateFromString:v16];
      restoreDate = self->_restoreDate;
      self->_restoreDate = v17;

      v19 = [v5 objectForKeyedSubscript:@"model"];
      hardwareModel = self->_hardwareModel;
      self->_hardwareModel = v19;

      v21 = [v5 objectForKeyedSubscript:@"os_build"];
      currentOSVersion = self->_currentOSVersion;
      self->_currentOSVersion = v21;

      v23 = [v5 objectForKeyedSubscript:@"serial"];
      serialNumber = self->_serialNumber;
      self->_serialNumber = v23;

      v25 = +[DSDateFormatter sharedFormatter];
      v26 = [v25 formatterWithType:2];
      v27 = [v5 objectForKeyedSubscript:@"updated"];
      v28 = [v26 dateFromString:v27];
      updateDate = self->_updateDate;
      self->_updateDate = v28;

      v13 = [v5 objectForKeyedSubscript:@"version"];
      self->_logVersion = [v13 intValue];
    }
  }

  else
  {
    v7 = DiagnosticLogHandleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(DSGeneralLogFile *)self parseHeadersWithLine:v6, v7];
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)enumerateLogLinesWithIDs:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = [(DSGeneralLogFile *)self url];
  v9 = [v8 path];
  v10 = [DSTextFile textFileWithPath:v9];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__DSGeneralLogFile_enumerateLogLinesWithIDs_usingBlock___block_invoke;
  v14[3] = &unk_278F6E618;
  v11 = v6;
  v15 = v11;
  v17 = &v18;
  v12 = v7;
  v16 = v12;
  [v10 enumerateUsingBlock:v14];
  LOBYTE(v8) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v8;
}

void __56__DSGeneralLogFile_enumerateLogLinesWithIDs_usingBlock___block_invoke(void *a1, void *a2, void *a3, unint64_t a4)
{
  v14 = a2;
  v7 = a3;
  v8 = [v14 length];
  if (a4 >= 2 && v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [[DSLogLine alloc] initWithLine:v14];
    v11 = v10;
    if (v10)
    {
      v12 = a1[4];
      v13 = [(DSLogLine *)v10 type];
      LODWORD(v12) = [v12 containsObject:v13];

      if (v12)
      {
        *(*(a1[6] + 8) + 24) = (*(a1[5] + 16))();
      }
    }

    objc_autoreleasePoolPop(v9);
  }

  if (*(*(a1[6] + 8) + 24) == 1)
  {
    [v7 end];
  }
}

- (void)parseHeadersWithLine:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_248BD5000, a2, OS_LOG_TYPE_ERROR, "One or more required keys are missing in the header for %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)parseHeadersWithLine:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_248BD5000, log, OS_LOG_TYPE_ERROR, "Could not parse header for %@ error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end