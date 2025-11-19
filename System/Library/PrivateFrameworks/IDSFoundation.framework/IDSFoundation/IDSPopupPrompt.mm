@interface IDSPopupPrompt
- (IDSPopupPrompt)initWithTitle:(id)a3 promptMessage:(id)a4;
- (void)launchPromptWithButton:(id)a3 defaultUrl:(id)a4 alternateButton:(id)a5 alternateUrl:(id)a6;
@end

@implementation IDSPopupPrompt

- (IDSPopupPrompt)initWithTitle:(id)a3 promptMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = IDSPopupPrompt;
  v8 = [(IDSPopupPrompt *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(IDSPopupPrompt *)v8 setTitle:v6];
    [(IDSPopupPrompt *)v9 setMessage:v7];
  }

  return v9;
}

- (void)launchPromptWithButton:(id)a3 defaultUrl:(id)a4 alternateButton:(id)a5 alternateUrl:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (qword_1EB2BBC80 != -1)
  {
    sub_1A7E11E04();
  }

  title = self->_title;
  if (!title)
  {
    title = @"Internal IDS Error Detected";
  }

  v15 = title;
  message = self->_message;
  if (!message)
  {
    message = @"An internal IDS error has been detected";
  }

  v17 = message;
  v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v19 = IMLocalizedStringFromTableInBundle();
  v20 = MEMORY[0x1E69A6188];
  v21 = [MEMORY[0x1E696AEC0] stringGUID];
  v22 = [v20 userNotificationWithIdentifier:v21 title:v15 message:v17 defaultButton:v10 alternateButton:v12 otherButton:v19];

  if (v22)
  {
    v23 = [MEMORY[0x1E69A6190] sharedInstance];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1A7B220AC;
    v24[3] = &unk_1E77DD2E8;
    v25 = v11;
    v26 = v13;
    [v23 addUserNotification:v22 listener:0 completionHandler:v24];
  }
}

@end