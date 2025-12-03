@interface _DPReportFileManager
+ (id)submittedReports;
+ (id)submittedReportsInDirectory:(id)directory;
- (_DPReportFileManager)init;
- (_DPReportFileManager)initWithDirectoryPath:(id)path;
- (id)reportsNotYetSubmitted;
- (void)dealloc;
- (void)retireReports:(id)reports;
@end

@implementation _DPReportFileManager

- (_DPReportFileManager)initWithDirectoryPath:(id)path
{
  pathCopy = path;
  v10.receiver = self;
  v10.super_class = _DPReportFileManager;
  v6 = [(_DPReportFileManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reportsDirectoryPath, path);
    connection = v7->_connection;
    v7->_connection = 0;
  }

  return v7;
}

- (_DPReportFileManager)init
{
  v3 = +[_DPStrings transparencyLogDirectoryPath];
  v4 = [(_DPReportFileManager *)self initWithDirectoryPath:v3];

  return v4;
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    self->_connection = 0;
  }

  v4.receiver = self;
  v4.super_class = _DPReportFileManager;
  [(_DPReportFileManager *)&v4 dealloc];
}

+ (id)submittedReports
{
  v3 = +[_DPStrings transparencyLogDirectoryPath];
  v4 = [self submittedReportsInDirectory:v3];

  return v4;
}

+ (id)submittedReportsInDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = objc_autoreleasePoolPush();
  v5 = [_DPReportFilesMaintainer reportsInDirectory:directoryCopy];
  v6 = [_DPReportFilesMaintainer retiredReportsPath:directoryCopy];
  v7 = [_DPReportFilesMaintainer reportsInDirectory:v6];
  v8 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
  [v8 addObjectsFromArray:v7];
  v9 = [v8 copy];

  objc_autoreleasePoolPop(v4);

  return v9;
}

- (id)reportsNotYetSubmitted
{
  connection = self->_connection;
  if (!connection)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_connection)
    {
      v6 = +[_DPDaemonConnection daemonConnection];
      v7 = self->_connection;
      self->_connection = v6;
    }

    objc_sync_exit(selfCopy);

    connection = self->_connection;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46___DPReportFileManager_reportsNotYetSubmitted__block_invoke;
  v10[3] = &unk_27858AC30;
  v10[5] = &v11;
  v10[6] = a2;
  v10[4] = self;
  [(_DPDaemonConnection *)connection reportsNotYetSubmittedWithReply:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)retireReports:(id)reports
{
  reportsCopy = reports;
  connection = self->_connection;
  if (!connection)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!self->_connection)
    {
      v8 = +[_DPDaemonConnection daemonConnection];
      v9 = self->_connection;
      self->_connection = v8;
    }

    objc_sync_exit(selfCopy);

    connection = self->_connection;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38___DPReportFileManager_retireReports___block_invoke;
  v11[3] = &unk_27858AC58;
  v12 = reportsCopy;
  v13 = a2;
  v11[4] = self;
  v10 = reportsCopy;
  [(_DPDaemonConnection *)connection retireReports:v10 withReply:v11];
}

@end