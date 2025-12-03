@interface IDSPopupPrompt
- (IDSPopupPrompt)initWithTitle:(id)title promptMessage:(id)message;
- (void)launchPromptWithButton:(id)button defaultUrl:(id)url alternateButton:(id)alternateButton alternateUrl:(id)alternateUrl;
@end

@implementation IDSPopupPrompt

- (IDSPopupPrompt)initWithTitle:(id)title promptMessage:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v11.receiver = self;
  v11.super_class = IDSPopupPrompt;
  v8 = [(IDSPopupPrompt *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(IDSPopupPrompt *)v8 setTitle:titleCopy];
    [(IDSPopupPrompt *)v9 setMessage:messageCopy];
  }

  return v9;
}

- (void)launchPromptWithButton:(id)button defaultUrl:(id)url alternateButton:(id)alternateButton alternateUrl:(id)alternateUrl
{
  buttonCopy = button;
  urlCopy = url;
  alternateButtonCopy = alternateButton;
  alternateUrlCopy = alternateUrl;
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
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  v22 = [v20 userNotificationWithIdentifier:stringGUID title:v15 message:v17 defaultButton:buttonCopy alternateButton:alternateButtonCopy otherButton:v19];

  if (v22)
  {
    mEMORY[0x1E69A6190] = [MEMORY[0x1E69A6190] sharedInstance];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1A7B220AC;
    v24[3] = &unk_1E77DD2E8;
    v25 = urlCopy;
    v26 = alternateUrlCopy;
    [mEMORY[0x1E69A6190] addUserNotification:v22 listener:0 completionHandler:v24];
  }
}

@end