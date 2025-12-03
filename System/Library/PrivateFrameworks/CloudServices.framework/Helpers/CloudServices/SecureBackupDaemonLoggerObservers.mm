@interface SecureBackupDaemonLoggerObservers
- (SecureBackupDaemonLoggerObservers)initWithLogger:(id)logger;
@end

@implementation SecureBackupDaemonLoggerObservers

- (SecureBackupDaemonLoggerObservers)initWithLogger:(id)logger
{
  loggerCopy = logger;
  v8.receiver = self;
  v8.super_class = SecureBackupDaemonLoggerObservers;
  v5 = [(SecureBackupDaemonLoggerObservers *)&v8 init];
  if (v5)
  {
    [loggerCopy updateExistingOperations];
    v6 = v5;
  }

  return v5;
}

@end