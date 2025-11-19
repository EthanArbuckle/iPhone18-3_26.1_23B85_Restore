@interface IDSTapToRadar
+ (void)launchWithRequest:(id)a3 context:(id)a4;
@end

@implementation IDSTapToRadar

+ (void)launchWithRequest:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([objc_opt_class() _isSupported])
  {
    if (qword_1EB2BBF50 != -1)
    {
      sub_1A7E1B564();
    }

    v7 = [v5 title];
    v8 = v7;
    v9 = @"Internal IDS Error Detected";
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    v11 = [v5 message];
    v12 = v11;
    v13 = @"An internal IDS error has been detected";
    if (v11)
    {
      v13 = v11;
    }

    v14 = v13;

    v15 = MEMORY[0x1E69A6188];
    v16 = [MEMORY[0x1E696AEC0] stringGUID];
    v17 = [v15 userNotificationWithIdentifier:v16 title:v10 message:v14 defaultButton:@"File Radar" alternateButton:@"Dismiss" otherButton:0];

    if (v17)
    {
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x3032000000;
      v20[3] = sub_1A7C026EC;
      v20[4] = sub_1A7C026FC;
      v21 = v6;
      v18 = [MEMORY[0x1E69A6190] sharedInstance];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1A7C02704;
      v19[3] = &unk_1E77E1798;
      v19[4] = v20;
      [v18 addUserNotification:v17 listener:0 completionHandler:v19];

      _Block_object_dispose(v20, 8);
    }
  }
}

@end