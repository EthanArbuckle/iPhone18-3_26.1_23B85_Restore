@interface MCUIPINController
- (CGRect)subviewLayoutFrame;
- (DevicePINControllerDelegate)delegate;
- (MCUIPINController)init;
- (id)pinInstructionsPrompt;
- (void)_updateStyle;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)setDelegate:(id)delegate;
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
    appearance = [MEMORY[0x277D3FA48] appearance];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [appearance setTextColor:labelColor];

    v8 = objc_alloc_init(MCUIPINPane);
    [(MCUIPINPane *)v8 setAutoresizingMask:18];
    [(PSEditingPane *)v8 setDelegate:v3];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:*(&v3->super.super.super.super.super.super.isa + v4)];
    [emptyGroupSpecifier setProperty:v10 forKey:@"mode"];

    [(DevicePINController *)v3 setSpecifier:emptyGroupSpecifier];
    [(DevicePINController *)v3 setPane:v8];
  }

  return v3;
}

- (void)viewWillLayoutSubviews
{
  view = [(MCUIPINController *)self view];
  [view frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12.receiver = self;
  v12.super_class = MCUIPINController;
  [(DevicePINController *)&v12 viewWillLayoutSubviews];
  [(MCUIPINController *)self setSubviewLayoutFrame:v5, v7, v9, v11];
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didCancelEnteringPIN];
}

- (void)_updateStyle
{
  style = [(MCUIPINController *)self style];
  pane = [(PSDetailController *)self pane];
  [pane setStyle:style];

  style2 = [(MCUIPINController *)self style];
  if (style2 == 1)
  {
    navigationItem = [(MCUIPINController *)self navigationItem];
    [navigationItem setHidesBackButton:0];

    if ([(DevicePINController *)self simplePIN])
    {
      navigationItem2 = [(MCUIPINController *)self navigationItem];
      [navigationItem2 setRightBarButtonItem:0];
    }

    v13 = MEMORY[0x277D755B8];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    v7 = [v13 MCUIImageWithColor:systemBackgroundColor];

    navigationController = [(MCUIPINController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setBackgroundImage:v7 forBarMetrics:0];

    navigationController2 = [(MCUIPINController *)self navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    v19 = objc_opt_new();
    [navigationBar2 setShadowImage:v19];

    navigationController3 = [(MCUIPINController *)self navigationController];
    navigationBar3 = [navigationController3 navigationBar];
    [navigationBar3 setTranslucent:1];

    systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
    view = [(MCUIPINController *)self view];
    [view setBackgroundColor:systemBackgroundColor2];

    navigationItem3 = [(MCUIPINController *)self navigationItem];
    v9 = navigationItem3;
    v10 = &stru_286946728;
  }

  else
  {
    if (style2)
    {
      goto LABEL_8;
    }

    navigationItem4 = [(MCUIPINController *)self navigationItem];
    [navigationItem4 setHidesBackButton:1];

    v7 = MCUILocalizedString(@"PIN_TITLE");
    navigationItem3 = [(MCUIPINController *)self navigationItem];
    v9 = navigationItem3;
    v10 = v7;
  }

  [navigationItem3 setTitle:v10];

LABEL_8:
  navigationItem5 = [(MCUIPINController *)self navigationItem];
  DMCSendNavUIUpdatedNotification();
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v7 = objc_loadWeakRetained(&self->_delegate);
    [emptyGroupSpecifier setProperty:v7 forKey:*MEMORY[0x277D401B8]];

    v8 = [MEMORY[0x277CCABB0] numberWithInt:*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FBC0])];
    [emptyGroupSpecifier setProperty:v8 forKey:@"mode"];

    [(DevicePINController *)self setSpecifier:emptyGroupSpecifier];
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