@interface IMDiagnosticNotification
- (IMDiagnosticNotification)init;
- (IMDiagnosticNotification)initWithTitle:(id)a3 body:(id)a4;
- (id)_createContent;
- (id)_createRequest;
@end

@implementation IMDiagnosticNotification

- (IMDiagnosticNotification)init
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isInternalInstall];

  if (v4)
  {
    v10.receiver = self;
    v10.super_class = IMDiagnosticNotification;
    v5 = [(IMDiagnosticNotification *)&v10 init];
    if (v5)
    {
      v6 = [MEMORY[0x1E696AEC0] stringGUID];
      identifier = v5->_identifier;
      v5->_identifier = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (IMDiagnosticNotification)initWithTitle:(id)a3 body:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(IMDiagnosticNotification *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v10->_body, a4);
  }

  return v10;
}

- (id)_createContent
{
  v3 = [(IMDiagnosticNotification *)self title];
  if (v3 && (v4 = v3, [(IMDiagnosticNotification *)self body], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v6 = qword_1EB30B470;
    v18 = qword_1EB30B470;
    if (!qword_1EB30B470)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1A86D2410;
      v14[3] = &unk_1E78261C8;
      v14[4] = &v15;
      sub_1A86D2410(v14);
      v6 = v16[3];
    }

    v7 = v6;
    _Block_object_dispose(&v15, 8);
    v8 = objc_alloc_init(v6);
    v9 = [(IMDiagnosticNotification *)self title];
    [v8 setTitle:v9];

    v10 = [(IMDiagnosticNotification *)self body];
    [v8 setBody:v10];

    [v8 setFooter:@"This is an internal-only notification."];
    v11 = [MEMORY[0x1E6983290] iconForApplicationIdentifier:@"com.apple.MobileSMS"];
    [v8 setIcon:v11];

    if ([(IMDiagnosticNotification *)self timeSensitive])
    {
      [v8 setShouldIgnoreDowntime:1];
      [v8 setShouldIgnoreDoNotDisturb:1];
    }

    v12 = [v8 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_createRequest
{
  v3 = [(IMDiagnosticNotification *)self _createContent];
  if (v3)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = qword_1EB30B480;
    v13 = qword_1EB30B480;
    if (!qword_1EB30B480)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1A86D25D8;
      v9[3] = &unk_1E78261C8;
      v9[4] = &v10;
      sub_1A86D25D8(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = [(IMDiagnosticNotification *)self identifier];
    v7 = [v4 requestWithIdentifier:v6 content:v3 trigger:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end