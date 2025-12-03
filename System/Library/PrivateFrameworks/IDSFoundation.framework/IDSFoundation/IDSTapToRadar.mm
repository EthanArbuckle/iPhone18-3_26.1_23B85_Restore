@interface IDSTapToRadar
+ (void)launchWithRequest:(id)request context:(id)context;
@end

@implementation IDSTapToRadar

+ (void)launchWithRequest:(id)request context:(id)context
{
  requestCopy = request;
  contextCopy = context;
  if ([objc_opt_class() _isSupported])
  {
    if (qword_1EB2BBF50 != -1)
    {
      sub_1A7E1B564();
    }

    title = [requestCopy title];
    v8 = title;
    v9 = @"Internal IDS Error Detected";
    if (title)
    {
      v9 = title;
    }

    v10 = v9;

    message = [requestCopy message];
    v12 = message;
    v13 = @"An internal IDS error has been detected";
    if (message)
    {
      v13 = message;
    }

    v14 = v13;

    v15 = MEMORY[0x1E69A6188];
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v17 = [v15 userNotificationWithIdentifier:stringGUID title:v10 message:v14 defaultButton:@"File Radar" alternateButton:@"Dismiss" otherButton:0];

    if (v17)
    {
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x3032000000;
      v20[3] = sub_1A7C026EC;
      v20[4] = sub_1A7C026FC;
      v21 = contextCopy;
      mEMORY[0x1E69A6190] = [MEMORY[0x1E69A6190] sharedInstance];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1A7C02704;
      v19[3] = &unk_1E77E1798;
      v19[4] = v20;
      [mEMORY[0x1E69A6190] addUserNotification:v17 listener:0 completionHandler:v19];

      _Block_object_dispose(v20, 8);
    }
  }
}

@end