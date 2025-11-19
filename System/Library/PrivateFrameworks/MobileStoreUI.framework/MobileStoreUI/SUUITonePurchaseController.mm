@interface SUUITonePurchaseController
- (SUUITonePurchaseController)initWithItem:(id)a3;
- (UIViewController)parentViewController;
- (void)_dismissContactPicker;
- (void)_finishContactPicker:(id)a3 withContact:(id)a4;
- (void)_finishWithTonePurchase:(id)a3;
- (void)_presentViewController:(id)a3;
- (void)_showContactPicker;
- (void)contactPickerDidCancel:(id)a3;
- (void)dealloc;
- (void)showPurchaseFlowWithCompletionBlock:(id)a3;
@end

@implementation SUUITonePurchaseController

- (SUUITonePurchaseController)initWithItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUUITonePurchaseController;
  v6 = [(SUUITonePurchaseController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
  }

  return v7;
}

- (void)dealloc
{
  [(CNContactPickerViewController *)self->_contactPickerController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUITonePurchaseController;
  [(SUUITonePurchaseController *)&v3 dealloc];
}

- (void)showPurchaseFlowWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = __TonePurchaseControllers;
  if (!__TonePurchaseControllers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = __TonePurchaseControllers;
    __TonePurchaseControllers = v6;

    v5 = __TonePurchaseControllers;
  }

  [v5 addObject:self];
  v8 = [v4 copy];
  completionBlock = self->_completionBlock;
  self->_completionBlock = v8;

  v10 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:1];
  clientContext = self->_clientContext;
  if (clientContext)
  {
    [(SUUIClientContext *)clientContext localizedStringForKey:@"BUY_TONE_ALERT_TITLE" inTable:@"Tones"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"BUY_TONE_ALERT_TITLE" inBundles:0 inTable:@"Tones"];
  }
  v12 = ;
  [v10 setTitle:v12];

  v13 = [(SUUIItem *)self->_item title];
  v14 = [v13 length];

  if (v14)
  {
    v15 = self->_clientContext;
    if (v15)
    {
      [(SUUIClientContext *)v15 localizedStringForKey:@"BUY_TONE_BODY_FORMAT" inTable:@"Tones"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"BUY_TONE_BODY_FORMAT" inBundles:0 inTable:@"Tones"];
    }
    v16 = ;
    v17 = MEMORY[0x277CCACA8];
    v18 = [(SUUIItem *)self->_item title];
    v19 = [v17 stringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:0, v18];
    [v10 setMessage:v19];
  }

  objc_initWeak(location, self);
  if (MGGetBoolAnswer())
  {
    v20 = self->_clientContext;
    v21 = @"Tones";
    if (v20)
    {
      [(SUUIClientContext *)v20 localizedStringForKey:@"BUY_TONE_SET_AS_DEFAULT_RINGTONE" inTable:v21];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"BUY_TONE_SET_AS_DEFAULT_RINGTONE" inBundles:0 inTable:v21];
    }
    v22 = ;

    v23 = MEMORY[0x277D750F8];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __66__SUUITonePurchaseController_showPurchaseFlowWithCompletionBlock___block_invoke;
    v46[3] = &unk_2798F6990;
    objc_copyWeak(&v47, location);
    v24 = [v23 actionWithTitle:v22 style:0 handler:v46];
    [v10 addAction:v24];

    objc_destroyWeak(&v47);
  }

  v25 = self->_clientContext;
  v26 = @"Tones";
  if (v25)
  {
    [(SUUIClientContext *)v25 localizedStringForKey:@"BUY_TONE_SET_AS_DEFAULT_TEXT_TONE" inTable:v26];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"BUY_TONE_SET_AS_DEFAULT_TEXT_TONE" inBundles:0 inTable:v26];
  }
  v27 = ;

  v28 = MEMORY[0x277D750F8];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __66__SUUITonePurchaseController_showPurchaseFlowWithCompletionBlock___block_invoke_2;
  v44[3] = &unk_2798F6990;
  objc_copyWeak(&v45, location);
  v29 = [v28 actionWithTitle:v27 style:0 handler:v44];
  [v10 addAction:v29];

  v30 = self->_clientContext;
  v31 = v26;
  if (v30)
  {
    [(SUUIClientContext *)v30 localizedStringForKey:@"BUY_TONE_ASSIGN_TO_CONTACT" inTable:v31];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"BUY_TONE_ASSIGN_TO_CONTACT" inBundles:0 inTable:v31];
  }
  v32 = ;

  v33 = MEMORY[0x277D750F8];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __66__SUUITonePurchaseController_showPurchaseFlowWithCompletionBlock___block_invoke_3;
  v42[3] = &unk_2798F6990;
  objc_copyWeak(&v43, location);
  v34 = [v33 actionWithTitle:v32 style:0 handler:v42];
  [v10 addAction:v34];

  v35 = self->_clientContext;
  v36 = v31;
  if (v35)
  {
    [(SUUIClientContext *)v35 localizedStringForKey:@"BUY_TONE_DONE" inTable:v36];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"BUY_TONE_DONE" inBundles:0 inTable:v36];
  }
  v37 = ;

  v38 = MEMORY[0x277D750F8];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __66__SUUITonePurchaseController_showPurchaseFlowWithCompletionBlock___block_invoke_4;
  v40[3] = &unk_2798F6990;
  objc_copyWeak(&v41, location);
  v39 = [v38 actionWithTitle:v37 style:1 handler:v40];
  [v10 addAction:v39];

  [(SUUITonePurchaseController *)self _presentViewController:v10];
  objc_destroyWeak(&v41);
  objc_destroyWeak(&v43);
  objc_destroyWeak(&v45);

  objc_destroyWeak(location);
}

void __66__SUUITonePurchaseController_showPurchaseFlowWithCompletionBlock___block_invoke(uint64_t a1)
{
  v3 = objc_alloc_init(MEMORY[0x277D69C80]);
  [v3 setShouldMakeDefaultRingtone:1];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishWithTonePurchase:v3];
}

void __66__SUUITonePurchaseController_showPurchaseFlowWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v3 = objc_alloc_init(MEMORY[0x277D69C80]);
  [v3 setShouldMakeDefaultTextTone:1];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishWithTonePurchase:v3];
}

void __66__SUUITonePurchaseController_showPurchaseFlowWithCompletionBlock___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showContactPicker];
}

void __66__SUUITonePurchaseController_showPurchaseFlowWithCompletionBlock___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishWithTonePurchase:0];
}

- (void)contactPickerDidCancel:(id)a3
{
  [(SUUITonePurchaseController *)self _dismissContactPicker];

  [(SUUITonePurchaseController *)self _finishWithTonePurchase:0];
}

- (void)_dismissContactPicker
{
  v4 = self->_contactPickerController;
  [(CNContactPickerViewController *)v4 setDelegate:0];
  contactPickerController = self->_contactPickerController;
  self->_contactPickerController = 0;

  [(CNContactPickerViewController *)v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)_finishContactPicker:(id)a3 withContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277D69C80]);
  if (v7)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "iOSLegacyIdentifier")}];
    [v8 setAssigneeIdentifier:v9];
    v10 = [v7 identifier];
    [v8 setAssigneeContactIdentifier:v10];
  }

  [(SUUITonePurchaseController *)self _dismissContactPicker];
  if (MGGetBoolAnswer())
  {
    v11 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:1];
    objc_initWeak(location, self);
    v12 = self->_clientContext;
    v13 = @"Tones";
    if (v12)
    {
      [(SUUIClientContext *)v12 localizedStringForKey:@"BUY_TONE_SET_AS_RINGTONE" inTable:v13];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"BUY_TONE_SET_AS_RINGTONE" inBundles:0 inTable:v13];
    }
    v14 = ;
    v25 = v6;

    v15 = MEMORY[0x277D750F8];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __63__SUUITonePurchaseController__finishContactPicker_withContact___block_invoke;
    v31[3] = &unk_2798FD440;
    v16 = v8;
    v32 = v16;
    objc_copyWeak(&v33, location);
    v17 = [v15 actionWithTitle:v14 style:0 handler:v31];
    v18 = self->_clientContext;
    v19 = v13;
    if (v18)
    {
      [(SUUIClientContext *)v18 localizedStringForKey:@"BUY_TONE_SET_AS_TEXT_TONE" inTable:v19];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"BUY_TONE_SET_AS_TEXT_TONE" inBundles:0 inTable:v19];
    }
    v20 = ;

    v21 = MEMORY[0x277D750F8];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __63__SUUITonePurchaseController__finishContactPicker_withContact___block_invoke_2;
    v28[3] = &unk_2798FD440;
    v29 = v16;
    objc_copyWeak(&v30, location);
    v22 = [v21 actionWithTitle:v20 style:0 handler:v28];
    if ([(SUUIItem *)self->_item itemKind]== 16)
    {
      [v11 addAction:v17];
      v23 = v22;
    }

    else
    {
      [v11 addAction:v22];
      v23 = v17;
    }

    [v11 addAction:v23];
    v24 = [v25 transitionCoordinator];
    if (v24)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __63__SUUITonePurchaseController__finishContactPicker_withContact___block_invoke_3;
      v26[3] = &unk_2798FBAB0;
      v26[4] = self;
      v27 = v11;
      [v24 animateAlongsideTransition:0 completion:v26];
    }

    else
    {
      [(SUUITonePurchaseController *)self _presentViewController:v11];
    }

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v33);

    objc_destroyWeak(location);
    v6 = v25;
  }

  else
  {
    [v8 setAssigneeToneStyle:*MEMORY[0x277D6A2B0]];
    [(SUUITonePurchaseController *)self _finishWithTonePurchase:v8];
  }
}

void __63__SUUITonePurchaseController__finishContactPicker_withContact___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAssigneeToneStyle:*MEMORY[0x277D6A2A8]];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishWithTonePurchase:*(a1 + 32)];
}

void __63__SUUITonePurchaseController__finishContactPicker_withContact___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAssigneeToneStyle:*MEMORY[0x277D6A2B0]];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishWithTonePurchase:*(a1 + 32)];
}

- (void)_finishWithTonePurchase:(id)a3
{
  completionBlock = self->_completionBlock;
  v5 = a3;
  v9 = [completionBlock copy];
  v6 = self->_completionBlock;
  self->_completionBlock = 0;

  v7 = +[SUUIItemStateCenter defaultCenter];
  [v7 purchaseTone:self->_item withProperties:v5 clientContext:self->_clientContext completionBlock:v9];

  [__TonePurchaseControllers removeObject:self];
  if (![__TonePurchaseControllers count])
  {
    v8 = __TonePurchaseControllers;
    __TonePurchaseControllers = 0;
  }
}

- (void)_presentViewController:(id)a3
{
  v8 = a3;
  v4 = [(SUUITonePurchaseController *)self parentViewController];
  v5 = [v4 presentedViewController];

  if (v5)
  {
    do
    {
      v6 = [v4 presentedViewController];

      v7 = [v6 presentedViewController];

      v4 = v6;
    }

    while (v7);
  }

  else
  {
    v6 = v4;
  }

  [v6 presentViewController:v8 animated:1 completion:0];
}

- (void)_showContactPicker
{
  v3 = SUUIContactsUIFramework();
  v4 = SUUIWeakLinkedClassForString(&cfstr_Cncontactpicke.isa, v3);
  if (v4)
  {
    v5 = objc_alloc_init(v4);
    contactPickerController = self->_contactPickerController;
    self->_contactPickerController = v5;

    [(CNContactPickerViewController *)self->_contactPickerController setDelegate:self];
    v7 = self->_contactPickerController;

    [(SUUITonePurchaseController *)self _presentViewController:v7];
  }

  else
  {

    [(SUUITonePurchaseController *)self _finishWithTonePurchase:0];
  }
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end