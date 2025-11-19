@interface MBAutomaticBackupRequest
- (MBAutomaticBackupRequest)initWithReason:(int64_t)a3 activityType:(int)a4 options:(id)a5;
@end

@implementation MBAutomaticBackupRequest

- (MBAutomaticBackupRequest)initWithReason:(int64_t)a3 activityType:(int)a4 options:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = MBAutomaticBackupRequest;
  v10 = [(MBAutomaticBackupRequest *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_reason = a3;
    v10->_activityType = a4;
    objc_storeStrong(&v10->_backupOptions, a5);
    v11->_cancelled = 0;
  }

  return v11;
}

@end