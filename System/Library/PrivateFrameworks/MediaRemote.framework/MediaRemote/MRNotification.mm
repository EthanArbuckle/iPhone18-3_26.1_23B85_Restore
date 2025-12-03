@interface MRNotification
- (MRNotification)initWithNotification:(id)notification userInfo:(id)info;
- (xpc_object_t)_createNotificationMessage:(void *)message userInfo:;
@end

@implementation MRNotification

- (MRNotification)initWithNotification:(id)notification userInfo:(id)info
{
  notificationCopy = notification;
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = MRNotification;
  v9 = [(MRNotification *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_notification, notification);
    objc_storeStrong(&v10->_userInfo, info);
    v12 = [(MRNotification *)v10 _createNotificationMessage:notificationCopy userInfo:infoCopy];
    xpcMessage = v10->_xpcMessage;
    v10->_xpcMessage = v12;
  }

  return v10;
}

- (xpc_object_t)_createNotificationMessage:(void *)message userInfo:
{
  if (!self)
  {
    return 0;
  }

  messageCopy = message;
  v5 = a2;
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "MRXPC_MESSAGE_ID_KEY", 0x700000000000001uLL);
  uTF8String = [v5 UTF8String];

  xpc_dictionary_set_string(v6, "MRXPC_NOTIFICATION_NAME_KEY", uTF8String);
  v8 = MRCreateEncodedUserInfo(messageCopy);

  MRAddPropertyListToXPCMessage(v6, v8, "MRXPC_NOTIFICATION_USERINFO_DATA_KEY");
  return v6;
}

@end