@interface FCHandlePushNotificationResult
- (id)copyWithZone:(_NSZone *)zone;
- (void)setRecordZoneIDs:(uint64_t)ds;
@end

@implementation FCHandlePushNotificationResult

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[FCHandlePushNotificationResult allocWithZone:?]];
  wasHandled = [(FCHandlePushNotificationResult *)self wasHandled];
  if (v4)
  {
    v4->_handled = wasHandled;
  }

  recordZoneIDs = [(FCHandlePushNotificationResult *)self recordZoneIDs];
  [(FCHandlePushNotificationResult *)v4 setRecordZoneIDs:recordZoneIDs];

  return v4;
}

- (void)setRecordZoneIDs:(uint64_t)ds
{
  if (ds)
  {
    objc_storeStrong((ds + 16), a2);
  }
}

@end