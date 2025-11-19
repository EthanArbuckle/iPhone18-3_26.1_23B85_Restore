@interface NSError(HDNanoSyncSupport)
- (id)hd_persistentMessage;
@end

@implementation NSError(HDNanoSyncSupport)

- (id)hd_persistentMessage
{
  v1 = [a1 hd_persistentUserInfo];
  v2 = [HDCodableNanoSyncMessage messageFromPersistentUserInfo:v1];

  return v2;
}

@end