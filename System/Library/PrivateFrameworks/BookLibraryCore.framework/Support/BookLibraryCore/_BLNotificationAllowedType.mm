@interface _BLNotificationAllowedType
- (_BLNotificationAllowedType)initWithNotificationType:(int64_t)type notificationReason:(id)reason notificationSubtype:(id)subtype userDefaultsKey:(id)key;
@end

@implementation _BLNotificationAllowedType

- (_BLNotificationAllowedType)initWithNotificationType:(int64_t)type notificationReason:(id)reason notificationSubtype:(id)subtype userDefaultsKey:(id)key
{
  reasonCopy = reason;
  subtypeCopy = subtype;
  keyCopy = key;
  v22.receiver = self;
  v22.super_class = _BLNotificationAllowedType;
  v13 = [(_BLNotificationAllowedType *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_notificationType = type;
    v15 = [reasonCopy copy];
    notificationReason = v14->_notificationReason;
    v14->_notificationReason = v15;

    v17 = [subtypeCopy copy];
    notificationSubtype = v14->_notificationSubtype;
    v14->_notificationSubtype = v17;

    v19 = [keyCopy copy];
    userDefaultsKey = v14->_userDefaultsKey;
    v14->_userDefaultsKey = v19;
  }

  return v14;
}

@end