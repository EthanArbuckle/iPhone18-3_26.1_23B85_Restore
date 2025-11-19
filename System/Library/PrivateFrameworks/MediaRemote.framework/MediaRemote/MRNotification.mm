@interface MRNotification
- (MRNotification)initWithNotification:(id)a3 userInfo:(id)a4;
- (xpc_object_t)_createNotificationMessage:(void *)a3 userInfo:;
@end

@implementation MRNotification

- (MRNotification)initWithNotification:(id)a3 userInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MRNotification;
  v9 = [(MRNotification *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_notification, a3);
    objc_storeStrong(&v10->_userInfo, a4);
    v12 = [(MRNotification *)v10 _createNotificationMessage:v7 userInfo:v8];
    xpcMessage = v10->_xpcMessage;
    v10->_xpcMessage = v12;
  }

  return v10;
}

- (xpc_object_t)_createNotificationMessage:(void *)a3 userInfo:
{
  if (!a1)
  {
    return 0;
  }

  v4 = a3;
  v5 = a2;
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "MRXPC_MESSAGE_ID_KEY", 0x700000000000001uLL);
  v7 = [v5 UTF8String];

  xpc_dictionary_set_string(v6, "MRXPC_NOTIFICATION_NAME_KEY", v7);
  v8 = MRCreateEncodedUserInfo(v4);

  MRAddPropertyListToXPCMessage(v6, v8, "MRXPC_NOTIFICATION_USERINFO_DATA_KEY");
  return v6;
}

@end