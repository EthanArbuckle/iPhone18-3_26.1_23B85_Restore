@interface MSRadarInteraction
+ (id)interactionWithTitle:(id)a3 message:(id)a4 builder:(id)a5;
+ (id)interactionWithTitle:(id)a3 message:(id)a4 radarURL:(id)a5;
- (MSRadarInteraction)initWithTitle:(id)a3 message:(id)a4 radarURL:(id)a5;
- (UIAlertController)interactionViewController;
- (void)openTapToRadar;
- (void)promptToFileWithCompletionHandler:(id)a3;
@end

@implementation MSRadarInteraction

+ (id)interactionWithTitle:(id)a3 message:(id)a4 radarURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] initWithTitle:v8 message:v9 radarURL:v10];

  return v11;
}

+ (id)interactionWithTitle:(id)a3 message:(id)a4 builder:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MSRadarURLBuilder radarURLWithBuilder:a5];
  v11 = [a1 interactionWithTitle:v8 message:v9 radarURL:v10];

  return v11;
}

- (MSRadarInteraction)initWithTitle:(id)a3 message:(id)a4 radarURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = MSRadarInteraction;
  v11 = [(MSRadarInteraction *)&v21 init];
  if (v11)
  {
    v12 = [v10 copy];
    radarURL = v11->_radarURL;
    v11->_radarURL = v12;

    v14 = [v8 copy];
    title = v11->_title;
    v11->_title = v14;

    v16 = [v9 copy];
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
  v5 = [(MSRadarInteraction *)self title];
  v6 = [(MSRadarInteraction *)self message];
  v7 = [v3 alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  UIAlertActionClass = getUIAlertActionClass();
  v9 = [(MSRadarInteraction *)self openButtonTitle];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __47__MSRadarInteraction_interactionViewController__block_invoke;
  v21[3] = &unk_27985B9A8;
  v21[4] = self;
  v10 = [UIAlertActionClass actionWithTitle:v9 style:0 handler:v21];
  [v7 addAction:v10];

  v11 = [(MSRadarInteraction *)self maybeLaterButtonTitle];

  if (v11)
  {
    v12 = getUIAlertActionClass();
    v13 = [(MSRadarInteraction *)self maybeLaterButtonTitle];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __47__MSRadarInteraction_interactionViewController__block_invoke_2;
    v20[3] = &unk_27985B9A8;
    v20[4] = self;
    v14 = [v12 actionWithTitle:v13 style:0 handler:v20];
    [v7 addAction:v14];
  }

  v15 = getUIAlertActionClass();
  v16 = [(MSRadarInteraction *)self cancelButtonTitle];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __47__MSRadarInteraction_interactionViewController__block_invoke_3;
  v19[3] = &unk_27985B9A8;
  v19[4] = self;
  v17 = [v15 actionWithTitle:v16 style:1 handler:v19];
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

- (void)promptToFileWithCompletionHandler:(id)a3
{
  v4 = a3;
  v15 = 0;
  v5 = [(MSRadarInteraction *)self title];
  v6 = [(MSRadarInteraction *)self message];
  CFUserNotificationDisplayAlert(30.0, 3uLL, 0, 0, 0, v5, v6, @"File Radar", @"Don't File", 0, &v15);

  if (!v15)
  {
    v9 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v10 = [(MSRadarInteraction *)self radarURL];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__MSRadarInteraction_promptToFileWithCompletionHandler___block_invoke;
    v13[3] = &unk_27985B9D0;
    v14 = v4;
    [v9 openURL:v10 configuration:0 completionHandler:v13];

    v11 = [(MSRadarInteraction *)self openHandler];

    if (v11)
    {
      v12 = [(MSRadarInteraction *)self openHandler];
      (v12)[2](v12, self);
    }

    v8 = v14;
    goto LABEL_7;
  }

  v7 = [(MSRadarInteraction *)self cancelHandler];

  if (v7)
  {
    v8 = [(MSRadarInteraction *)self cancelHandler];
    (v8)[2](v8, self);
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
  v5 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [(MSRadarInteraction *)self radarURL];
  [v5 openURL:v3 configuration:0 completionHandler:0];

  v4 = [(MSRadarInteraction *)self openHandler];

  if (v4)
  {
    v6 = [(MSRadarInteraction *)self openHandler];
    v6[2](v6, self);
  }
}

@end