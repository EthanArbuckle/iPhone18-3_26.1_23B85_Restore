@interface MSRadarInteraction
+ (id)interactionWithTitle:(id)title message:(id)message builder:(id)builder;
+ (id)interactionWithTitle:(id)title message:(id)message radarURL:(id)l;
- (MSRadarInteraction)initWithTitle:(id)title message:(id)message radarURL:(id)l;
- (UIAlertController)interactionViewController;
- (void)openTapToRadar;
- (void)promptToFileWithCompletionHandler:(id)handler;
@end

@implementation MSRadarInteraction

+ (id)interactionWithTitle:(id)title message:(id)message radarURL:(id)l
{
  titleCopy = title;
  messageCopy = message;
  lCopy = l;
  v11 = [[self alloc] initWithTitle:titleCopy message:messageCopy radarURL:lCopy];

  return v11;
}

+ (id)interactionWithTitle:(id)title message:(id)message builder:(id)builder
{
  titleCopy = title;
  messageCopy = message;
  v10 = [MSRadarURLBuilder radarURLWithBuilder:builder];
  v11 = [self interactionWithTitle:titleCopy message:messageCopy radarURL:v10];

  return v11;
}

- (MSRadarInteraction)initWithTitle:(id)title message:(id)message radarURL:(id)l
{
  titleCopy = title;
  messageCopy = message;
  lCopy = l;
  v21.receiver = self;
  v21.super_class = MSRadarInteraction;
  v11 = [(MSRadarInteraction *)&v21 init];
  if (v11)
  {
    v12 = [lCopy copy];
    radarURL = v11->_radarURL;
    v11->_radarURL = v12;

    v14 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v14;

    v16 = [messageCopy copy];
    message = v11->_message;
    v11->_message = v16;

    cancelButtonTitle = v11->_cancelButtonTitle;
    v11->_cancelButtonTitle = @"Never mind";

    openButtonTitle = v11->_openButtonTitle;
    v11->_openButtonTitle = @"Open Tap-to-Radar";
  }

  return v11;
}

- (UIAlertController)interactionViewController
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v3 = getUIAlertControllerClass_softClass;
  v26 = getUIAlertControllerClass_softClass;
  if (!getUIAlertControllerClass_softClass)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __getUIAlertControllerClass_block_invoke;
    v22[3] = &unk_27985B7F0;
    v22[4] = &v23;
    __getUIAlertControllerClass_block_invoke(v22);
    v3 = v24[3];
  }

  v4 = v3;
  _Block_object_dispose(&v23, 8);
  title = [(MSRadarInteraction *)self title];
  message = [(MSRadarInteraction *)self message];
  v7 = [v3 alertControllerWithTitle:title message:message preferredStyle:1];

  UIAlertActionClass = getUIAlertActionClass();
  openButtonTitle = [(MSRadarInteraction *)self openButtonTitle];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __47__MSRadarInteraction_interactionViewController__block_invoke;
  v21[3] = &unk_27985B9A8;
  v21[4] = self;
  v10 = [UIAlertActionClass actionWithTitle:openButtonTitle style:0 handler:v21];
  [v7 addAction:v10];

  maybeLaterButtonTitle = [(MSRadarInteraction *)self maybeLaterButtonTitle];

  if (maybeLaterButtonTitle)
  {
    v12 = getUIAlertActionClass();
    maybeLaterButtonTitle2 = [(MSRadarInteraction *)self maybeLaterButtonTitle];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __47__MSRadarInteraction_interactionViewController__block_invoke_2;
    v20[3] = &unk_27985B9A8;
    v20[4] = self;
    v14 = [v12 actionWithTitle:maybeLaterButtonTitle2 style:0 handler:v20];
    [v7 addAction:v14];
  }

  v15 = getUIAlertActionClass();
  cancelButtonTitle = [(MSRadarInteraction *)self cancelButtonTitle];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __47__MSRadarInteraction_interactionViewController__block_invoke_3;
  v19[3] = &unk_27985B9A8;
  v19[4] = self;
  v17 = [v15 actionWithTitle:cancelButtonTitle style:1 handler:v19];
  [v7 addAction:v17];

  return v7;
}

void __47__MSRadarInteraction_interactionViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = getUIApplicationClass_softClass;
  v14 = getUIApplicationClass_softClass;
  if (!getUIApplicationClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getUIApplicationClass_block_invoke;
    v10[3] = &unk_27985B7F0;
    v10[4] = &v11;
    __getUIApplicationClass_block_invoke(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  v6 = [v4 sharedApplication];
  v7 = [*(a1 + 32) radarURL];
  [v6 openURL:v7 options:MEMORY[0x277CBEC10] completionHandler:0];

  v8 = [*(a1 + 32) openHandler];

  if (v8)
  {
    v9 = [*(a1 + 32) openHandler];
    v9[2](v9, *(a1 + 32));
  }
}

void __47__MSRadarInteraction_interactionViewController__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) maybeLaterHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) maybeLaterHandler];
    v3[2](v3, *(a1 + 32));
  }
}

void __47__MSRadarInteraction_interactionViewController__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) cancelHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) cancelHandler];
    v3[2](v3, *(a1 + 32));
  }
}

- (void)promptToFileWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v15 = 0;
  title = [(MSRadarInteraction *)self title];
  message = [(MSRadarInteraction *)self message];
  CFUserNotificationDisplayAlert(30.0, 3uLL, 0, 0, 0, title, message, @"File Radar", @"Don't File", 0, &v15);

  if (!v15)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    radarURL = [(MSRadarInteraction *)self radarURL];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__MSRadarInteraction_promptToFileWithCompletionHandler___block_invoke;
    v13[3] = &unk_27985B9D0;
    v14 = handlerCopy;
    [defaultWorkspace openURL:radarURL configuration:0 completionHandler:v13];

    openHandler = [(MSRadarInteraction *)self openHandler];

    if (openHandler)
    {
      openHandler2 = [(MSRadarInteraction *)self openHandler];
      (openHandler2)[2](openHandler2, self);
    }

    cancelHandler2 = v14;
    goto LABEL_7;
  }

  cancelHandler = [(MSRadarInteraction *)self cancelHandler];

  if (cancelHandler)
  {
    cancelHandler2 = [(MSRadarInteraction *)self cancelHandler];
    (cancelHandler2)[2](cancelHandler2, self);
LABEL_7:
  }
}

uint64_t __56__MSRadarInteraction_promptToFileWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)openTapToRadar
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  radarURL = [(MSRadarInteraction *)self radarURL];
  [defaultWorkspace openURL:radarURL configuration:0 completionHandler:0];

  openHandler = [(MSRadarInteraction *)self openHandler];

  if (openHandler)
  {
    openHandler2 = [(MSRadarInteraction *)self openHandler];
    openHandler2[2](openHandler2, self);
  }
}

@end