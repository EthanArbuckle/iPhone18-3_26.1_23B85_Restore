@interface FCHandlePushNotificationResult
- (id)copyWithZone:(_NSZone *)a3;
- (void)setRecordZoneIDs:(uint64_t)a1;
@end

@implementation FCHandlePushNotificationResult

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[FCHandlePushNotificationResult allocWithZone:?]];
  v5 = [(FCHandlePushNotificationResult *)self wasHandled];
  if (v4)
  {
    v4->_handled = v5;
  }

  v6 = [(FCHandlePushNotificationResult *)self recordZoneIDs];
  [(FCHandlePushNotificationResult *)v4 setRecordZoneIDs:v6];

  return v4;
}

- (void)setRecordZoneIDs:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

@end