@interface MKDiagnosticsMigrator
- (MKDiagnosticsMigrator)init;
- (id)saveData:(id)data toFile:(id)file;
- (void)savePerformanceMetrics:(id)metrics;
@end

@implementation MKDiagnosticsMigrator

- (MKDiagnosticsMigrator)init
{
  v7.receiver = self;
  v7.super_class = MKDiagnosticsMigrator;
  v2 = [(MKMigrator *)&v7 init];
  if (v2)
  {
    v3 = NSHomeDirectory();
    v4 = [v3 stringByAppendingPathComponent:@"/Library/MigrationKit/matd/Diagnostics"];
    basePath = v2->_basePath;
    v2->_basePath = v4;
  }

  return v2;
}

- (void)savePerformanceMetrics:(id)metrics
{
  v4 = [(MKDiagnosticsMigrator *)self saveData:metrics toFile:@"performance.json"];
  performanceMetricsPath = self->_performanceMetricsPath;
  self->_performanceMetricsPath = v4;

  MEMORY[0x2821F96F8]();
}

- (id)saveData:(id)data toFile:(id)file
{
  v26 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v7 = MEMORY[0x277CCAA00];
  dataCopy = data;
  defaultManager = [v7 defaultManager];
  basePath = self->_basePath;
  v21 = 0;
  v11 = [defaultManager createDirectoryAtPath:basePath withIntermediateDirectories:1 attributes:0 error:&v21];
  v12 = v21;

  if ((v11 & 1) == 0)
  {
    v13 = +[MKLog log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(MKDiagnosticsMigrator *)self saveData:v12 toFile:v13];
    }
  }

  v14 = [(NSString *)self->_basePath stringByAppendingPathComponent:fileCopy];
  v15 = [dataCopy writeToFile:v14 atomically:0];

  v16 = +[MKLog log];
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy = self;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_2592D2000, v17, OS_LOG_TYPE_INFO, "%@: Saved data to file: %@", buf, 0x16u);
    }

    v18 = v14;
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MKDiagnosticsMigrator saveData:v17 toFile:?];
    }

    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end