@interface _BLNotificationAllowedType
- (_BLNotificationAllowedType)initWithNotificationType:(int64_t)a3 notificationReason:(id)a4 notificationSubtype:(id)a5 userDefaultsKey:(id)a6;
@end

@implementation _BLNotificationAllowedType

- (_BLNotificationAllowedType)initWithNotificationType:(int64_t)a3 notificationReason:(id)a4 notificationSubtype:(id)a5 userDefaultsKey:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = _BLNotificationAllowedType;
  v13 = [(_BLNotificationAllowedType *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_notificationType = a3;
    v15 = [v10 copy];
    notificationReason = v14->_notificationReason;
    v14->_notificationReason = v15;

    v17 = [v11 copy];
    notificationSubtype = v14->_notificationSubtype;
    v14->_notificationSubtype = v17;

    v19 = [v12 copy];
    userDefaultsKey = v14->_userDefaultsKey;
    v14->_userDefaultsKey = v19;
  }

  return v14;
}

@end