@interface MRDBackgroundTasks
- (id)allowList;
- (void)handleXPCMessage:(id)message fromClient:(id)client;
@end

@implementation MRDBackgroundTasks

- (id)allowList
{
  if (qword_100529308 != -1)
  {
    sub_1003A6A40();
  }

  v3 = qword_100529300;

  return v3;
}

- (void)handleXPCMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  string = xpc_dictionary_get_string(messageCopy, "MRXPC_NOTIFICATION_NAME_KEY");
  v7 = [[NSString alloc] initWithCString:string encoding:4];
  allowList = [(MRDBackgroundTasks *)self allowList];
  v9 = [allowList containsObject:v7];

  if (v9)
  {
    v10 = xpc_dictionary_get_double(messageCopy, "MRXPC_NOTIFICATION_DELAY");
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000B5950;
    v13[3] = &unk_1004B7628;
    v13[4] = string;
    v11 = objc_retainBlock(v13);
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_double(v12, XPC_ACTIVITY_DELAY, v10);
    xpc_activity_register(string, v12, v11);
  }

  else
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1003A6A54(v7, v11);
    }
  }
}

@end