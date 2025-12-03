@interface IMDiagnosticNotifier
- (IMDiagnosticNotifier)init;
- (void)postNotification:(id)notification;
- (void)postNotificationWithTitle:(id)title body:(id)body;
@end

@implementation IMDiagnosticNotifier

- (IMDiagnosticNotifier)init
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    v12.receiver = self;
    v12.super_class = IMDiagnosticNotifier;
    v5 = [(IMDiagnosticNotifier *)&v12 init];
    if (v5)
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2050000000;
      v6 = qword_1EB30B488;
      v17 = qword_1EB30B488;
      if (!qword_1EB30B488)
      {
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = sub_1A86D2630;
        v13[3] = &unk_1E78261C8;
        v13[4] = &v14;
        sub_1A86D2630(v13);
        v6 = v15[3];
      }

      v7 = v6;
      _Block_object_dispose(&v14, 8);
      v8 = [[v6 alloc] initWithBundleIdentifier:@"com.apple.Messages.diagnostics.usernotifications"];
      notificationCenter = v5->_notificationCenter;
      v5->_notificationCenter = v8;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)postNotification:(id)notification
{
  v13 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  _createRequest = [notificationCopy _createRequest];
  if (_createRequest)
  {
    notificationCenter = [(IMDiagnosticNotifier *)self notificationCenter];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A86D2230;
    v9[3] = &unk_1E7829D00;
    v10 = notificationCopy;
    [notificationCenter addNotificationRequest:_createRequest withCompletionHandler:v9];
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      identifier = [notificationCopy identifier];
      *buf = 138412290;
      v12 = identifier;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Not posting diagnostic notification %@ due to invalid request", buf, 0xCu);
    }
  }
}

- (void)postNotificationWithTitle:(id)title body:(id)body
{
  bodyCopy = body;
  titleCopy = title;
  v8 = [[IMDiagnosticNotification alloc] initWithTitle:titleCopy body:bodyCopy];

  [(IMDiagnosticNotifier *)self postNotification:v8];
}

@end