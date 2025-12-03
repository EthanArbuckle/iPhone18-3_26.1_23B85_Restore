@interface IMSatelliteSuppressedNotificationChatItem
- (id)_initWithHandle:(id)handle;
@end

@implementation IMSatelliteSuppressedNotificationChatItem

- (id)_initWithHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = IMSatelliteSuppressedNotificationChatItem;
  v6 = [(IMChatItem *)&v9 _initWithItem:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 7, handle);
  }

  return v7;
}

@end