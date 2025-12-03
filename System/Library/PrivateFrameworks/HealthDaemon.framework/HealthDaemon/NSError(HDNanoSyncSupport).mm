@interface NSError(HDNanoSyncSupport)
- (id)hd_persistentMessage;
@end

@implementation NSError(HDNanoSyncSupport)

- (id)hd_persistentMessage
{
  hd_persistentUserInfo = [self hd_persistentUserInfo];
  v2 = [HDCodableNanoSyncMessage messageFromPersistentUserInfo:hd_persistentUserInfo];

  return v2;
}

@end