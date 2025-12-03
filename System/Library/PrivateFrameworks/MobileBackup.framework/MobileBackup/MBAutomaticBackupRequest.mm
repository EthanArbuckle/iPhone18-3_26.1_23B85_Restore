@interface MBAutomaticBackupRequest
- (MBAutomaticBackupRequest)initWithReason:(int64_t)reason activityType:(int)type options:(id)options;
@end

@implementation MBAutomaticBackupRequest

- (MBAutomaticBackupRequest)initWithReason:(int64_t)reason activityType:(int)type options:(id)options
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = MBAutomaticBackupRequest;
  v10 = [(MBAutomaticBackupRequest *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_reason = reason;
    v10->_activityType = type;
    objc_storeStrong(&v10->_backupOptions, options);
    v11->_cancelled = 0;
  }

  return v11;
}

@end