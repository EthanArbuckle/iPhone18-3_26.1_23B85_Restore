@interface SGSqliteExitOnDeviceLockErrorHandler
- (SGSqliteExitOnDeviceLockErrorHandler)initWithExitCode:(int)a3;
- (void)exitOnErrorIndicatingIOError:(int)a3;
@end

@implementation SGSqliteExitOnDeviceLockErrorHandler

- (void)exitOnErrorIndicatingIOError:(int)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = sgLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = sqlite3_errstr(a3);
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "Exiting due to SQLite error: %s", &v6, 0xCu);
  }

  SGDExit(self->_exitCode);
}

- (SGSqliteExitOnDeviceLockErrorHandler)initWithExitCode:(int)a3
{
  v5.receiver = self;
  v5.super_class = SGSqliteExitOnDeviceLockErrorHandler;
  result = [(SGSqliteExitOnDeviceLockErrorHandler *)&v5 init];
  if (result)
  {
    result->_exitCode = a3;
  }

  return result;
}

@end