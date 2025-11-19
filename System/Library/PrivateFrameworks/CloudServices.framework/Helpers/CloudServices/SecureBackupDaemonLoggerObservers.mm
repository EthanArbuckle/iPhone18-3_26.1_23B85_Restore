@interface SecureBackupDaemonLoggerObservers
- (SecureBackupDaemonLoggerObservers)initWithLogger:(id)a3;
@end

@implementation SecureBackupDaemonLoggerObservers

- (SecureBackupDaemonLoggerObservers)initWithLogger:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SecureBackupDaemonLoggerObservers;
  v5 = [(SecureBackupDaemonLoggerObservers *)&v8 init];
  if (v5)
  {
    [v4 updateExistingOperations];
    v6 = v5;
  }

  return v5;
}

@end