@interface NSURL
@end

@implementation NSURL

void __46__NSURL_IC__ic_updateFlagToExcludeFromBackup___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);

  v1 = dispatch_queue_create("com.apple.notes.url.exclude-from-backup", attr);
  v2 = ic_updateFlagToExcludeFromBackup__excludeFromBackupQueue;
  ic_updateFlagToExcludeFromBackup__excludeFromBackupQueue = v1;
}

@end