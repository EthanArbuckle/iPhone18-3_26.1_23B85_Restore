@interface MCUIPINController
- (CGRect)subviewLayoutFrame;
- (DevicePINControllerDelegate)delegate;
- (MCUIPINController)init;
- (id)pinInstructionsPrompt;
- (void)_updateStyle;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)setDelegate:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation MCUIPINController

- (MCUIPINController)init
{
  v12.receiver = self;
  v12.super_class = MCUIPINController;
  v2 = [(DevicePINController *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v4 = *MEMORY[0x277D3FBC0];
    *&v2[v4] = 3;
    v5 = *(MEMORY[0x277CBF3A0] + 16);
    *(v2 + 1256) = *MEMORY[0x277CBF3A0];
    *(v2 + 1272) = v5;
    v6 = [MEMORY[0x277D3FA48] appearance];
    v7 = [MEMORY[0x277D75348] labelColor];
    [v6 setTextColor:v7];

    v8 = objc_alloc_init(MCUIPINPane);
    [(MCUIPINPane *)v8 setAutoresizingMask:18];
    [(PSEditingPane *)v8 setDelegate:v3];
    v9 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:*(&v3->super.super.super.super.super.super.isa + v4)];
    [v9 setProperty:v10 forKey:@"mode"];

    [(DevicePINController *)v3 setSpecifier:v9];
    [(DevicePINController *)v3 setPane:v8];
  }

  return v3;
}

- (void)viewWillLayoutSubviews
{
  v3 = [(MCUIPINController *)self view];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12.receiver = self;
  v12.super_class = MCUIPINController;
  [(DevicePINController *)&v12 viewWillLayoutSubviews];
  [(MCUIPINController *)self setSubviewLayoutFrame:v5, v7, v9, v11];
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didCancelEnteringPIN];
}

- (void)_updateStyle
{
  v3 = [(MCUIPINController *)self style];
  v4 = [(PSDetailController *)self pane];
  [v4 setStyle:v3];

  v5 = [(MCUIPINController *)self style];
  if (v5 == 1)
  {
    v11 = [(MCUIPINController *)self navigationItem];
    [v11 setHidesBackButton:0];

    if ([(DevicePINController *)self simplePIN])
    {
      v12 = [(MCUIPINController *)self navigationItem];
      [v12 setRightBarButtonItem:0];
    }

    v13 = MEMORY[0x277D755B8];
    v14 = [MEMORY[0x277D75348] systemBackgroundColor];
    v7 = [v13 MCUIImageWithColor:v14];

    v15 = [(MCUIPINController *)self navigationController];
    v16 = [v15 navigationBar];
    [v16 setBackgroundImage:v7 forBarMetrics:0];

    v17 = [(MCUIPINController *)self navigationController];
    v18 = [v17 navigationBar];
    v19 = objc_opt_new();
    [v18 setShadowImage:v19];

    v20 = [(MCUIPINController *)self navigationController];
    v21 = [v20 navigationBar];
    [v21 setTranslucent:1];

    v22 = [MEMORY[0x277D75348] systemBackgroundColor];
    v23 = [(MCUIPINController *)self view];
    [v23 setBackgroundColor:v22];

    v8 = [(MCUIPINController *)self navigationItem];
    v9 = v8;
    v10 = &stru_286946728;
  }

  else
  {
    if (v5)
    {
      goto LABEL_8;
    }

    v6 = [(MCUIPINController *)self navigationItem];
    [v6 setHidesBackButton:1];

    v7 = MCUILocalizedString(@"PIN_TITLE");
    v8 = [(MCUIPINController *)self navigationItem];
    v9 = v8;
    v10 = v7;
  }

  [v8 setTitle:v10];

LABEL_8:
  v24 = [(MCUIPINController *)self navigationItem];
  DMCSendNavUIUpdatedNotification();
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v6 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v6 setProperty:v7 forKey:*MEMORY[0x277D401B8]];

    v8 = [MEMORY[0x277CCABB0] numberWithInt:*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FBC0])];
    [v6 setProperty:v8 forKey:@"mode"];

    [(DevicePINController *)self setSpecifier:v6];
    v5 = obj;
  }
}

- (id)pinInstructionsPrompt
{
  if (MCUIForPairedDevice())
  {
    v2 = @"PIN_MESSAGE_BRIDGE";
  }

  else
  {
    v2 = @"PIN_MESSAGE";
  }

  return MCUILocalizedString(v2);
}

- (DevicePINControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)subviewLayoutFrame
{
  x = self->_subviewLayoutFrame.origin.x;
  y = self->_subviewLayoutFrame.origin.y;
  width = self->_subviewLayoutFrame.size.width;
  height = self->_subviewLayoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end