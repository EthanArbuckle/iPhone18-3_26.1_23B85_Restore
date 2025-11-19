@interface NSString
@end

@implementation NSString

void __60__NSString_FSPathAdditions__fpfs_extractFSEventsBarrierUUID__block_invoke()
{
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\.rendez-vous\\.([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})\\.nosync" options:1 error:0];
  v1 = fpfs_extractFSEventsBarrierUUID_regexp;
  fpfs_extractFSEventsBarrierUUID_regexp = v0;
}

void __59__NSString_FSPathAdditions__fpfs_extractFSEventsNotifyUUID__block_invoke()
{
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\.notify\\.([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})\\.nosync" options:1 error:0];
  v1 = fpfs_extractFSEventsNotifyUUID_regexp;
  fpfs_extractFSEventsNotifyUUID_regexp = v0;
}

@end