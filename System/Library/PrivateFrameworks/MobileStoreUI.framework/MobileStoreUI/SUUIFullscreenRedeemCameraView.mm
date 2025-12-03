@interface SUUIFullscreenRedeemCameraView
- (BOOL)textFieldShouldReturn:(id)return;
- (SUUIFullscreenRedeemCameraView)initWithClientContext:(id)context;
- (SUUIRedeemCameraViewDelegate)delegate;
- (id)_newTextFieldWithClientContext:(id)context;
- (void)_pauseRedeemer;
- (void)_resumeRedeemer;
- (void)dealloc;
- (void)keyboardDidHide:(id)hide;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setText:(id)text;
- (void)start;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)textFieldTextDidChange:(id)change;
@end

@implementation SUUIFullscreenRedeemCameraView

- (SUUIFullscreenRedeemCameraView)initWithClientContext:(id)context
{
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = SUUIFullscreenRedeemCameraView;
  v5 = [(SUUIFullscreenRedeemCameraView *)&v19 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:10060];
    textFieldSafeAreaBackdrop = v5->_textFieldSafeAreaBackdrop;
    v5->_textFieldSafeAreaBackdrop = v6;

    [(SUUIFullscreenRedeemCameraView *)v5 addSubview:v5->_textFieldSafeAreaBackdrop];
    v8 = [(SUUIFullscreenRedeemCameraView *)v5 _newTextFieldWithClientContext:contextCopy];
    textField = v5->_textField;
    v5->_textField = v8;

    [(SUUIRedeemTextField *)v5->_textField setDelegate:v5];
    v10 = v5->_textField;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SUUIRedeemTextField *)v10 setBackgroundColor:clearColor];

    [(SUUIRedeemTextField *)v5->_textField setOpaque:0];
    [(SUUIFullscreenRedeemCameraView *)v5 addSubview:v5->_textField];
    v12 = objc_alloc_init(MEMORY[0x277D75B80]);
    [v12 addTarget:v5 action:sel__tapGestureAction_];
    v13 = objc_alloc_init(MEMORY[0x277D75D18]);
    overlay = v5->_overlay;
    v5->_overlay = v13;

    v15 = v5->_overlay;
    v16 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
    [(UIView *)v15 setBackgroundColor:v16];

    [(UIView *)v5->_overlay setAlpha:0.0];
    [(UIView *)v5->_overlay addGestureRecognizer:v12];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
    [defaultCenter addObserver:v5 selector:sel_keyboardDidShow_ name:*MEMORY[0x277D76BA8] object:0];
    [defaultCenter addObserver:v5 selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
    [defaultCenter addObserver:v5 selector:sel_keyboardDidHide_ name:*MEMORY[0x277D76BA0] object:0];
    [defaultCenter addObserver:v5 selector:sel_textFieldTextDidChange_ name:*MEMORY[0x277D770B0] object:v5->_textField];
    v5->_enabled = 1;
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76C60] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76BA8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76C50] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76BA0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D770B0] object:0];
  [(SUUIRedeemTextField *)self->_textField setDelegate:0];

  v4.receiver = self;
  v4.super_class = SUUIFullscreenRedeemCameraView;
  [(SUUIFullscreenRedeemCameraView *)&v4 dealloc];
}

- (void)setText:(id)text
{
  textField = self->_textField;
  textCopy = text;
  [(SUUIRedeemTextField *)textField setText:textCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained SUUIRedeemCameraView:self textFieldDidChange:textCopy];
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    textField = self->_textField;
    if (enabled)
    {
      [MEMORY[0x277D75348] blackColor];
    }

    else
    {
      [MEMORY[0x277D75348] colorWithWhite:0.392156863 alpha:1.0];
    }
    v5 = ;
    [(SUUIRedeemTextField *)textField setTextColor:v5];

    [(SUUIRedeemTextField *)self->_textField setEnabled:self->_enabled];
    enabled = self->_enabled;

    [(SUUIFullscreenRedeemCameraView *)self setUserInteractionEnabled:enabled];
  }
}

- (void)start
{
  if (!self->_redeemerView)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = [WeakRetained redeemerViewForSUUIRedeemCameraView:self];
    redeemerView = self->_redeemerView;
    self->_redeemerView = v4;

    v6 = self->_redeemerView;

    [(SUUIFullscreenRedeemCameraView *)self insertSubview:v6 atIndex:0];
  }
}

- (void)layoutSubviews
{
  [(SUUIFullscreenRedeemCameraView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_overlay setFrame:?];
  [(UIView *)self->_redeemerView setFrame:v4, v6, v8, v10];
  [(SUUIFullscreenRedeemCameraView *)self safeAreaInsets];
  v12 = v11;
  if ([(SUUIRedeemTextField *)self->_textField isFirstResponder]&& (p_keyboardRect = &self->_keyboardRect, !CGRectEqualToRect(self->_keyboardRect, *MEMORY[0x277CBF3A0])))
  {
    v21.origin.x = p_keyboardRect->origin.x;
    v21.origin.y = self->_keyboardRect.origin.y;
    v21.size.width = self->_keyboardRect.size.width;
    v21.size.height = self->_keyboardRect.size.height;
    [(SUUIRedeemTextField *)self->_textField setFrame:0.0, CGRectGetMinY(v21) + -44.0, v8, 44.0];
    textFieldSafeAreaBackdrop = self->_textFieldSafeAreaBackdrop;
    v17 = CGRectGetMinY(*p_keyboardRect) + -44.0;
    v15 = textFieldSafeAreaBackdrop;
    v18 = v8;
    v16 = 44.0;
  }

  else
  {
    v14 = v10 + -44.0 - v12;
    [(SUUIRedeemTextField *)self->_textField setFrame:0.0, v14, v8, 44.0];
    v15 = self->_textFieldSafeAreaBackdrop;
    v16 = v12 + 44.0;
    v17 = v14;
    v18 = v8;
  }

  [(_UIBackdropView *)v15 setFrame:0.0, v17, v18, v16];
}

- (void)keyboardWillShow:(id)show
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0;
  v14 = 0.0;
  userInfo = [show userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];
  [v5 getValue:&v15];

  v6 = [userInfo objectForKey:*MEMORY[0x277D76B70]];
  [v6 getValue:&v13];

  v7 = [userInfo objectForKey:*MEMORY[0x277D76B78]];
  [v7 getValue:&v14];

  [(SUUIFullscreenRedeemCameraView *)self convertRect:0 fromView:v15, v16];
  self->_keyboardRect.origin.x = v8;
  self->_keyboardRect.origin.y = v9;
  self->_keyboardRect.size.width = v10;
  self->_keyboardRect.size.height = v11;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__SUUIFullscreenRedeemCameraView_keyboardWillShow___block_invoke;
  v12[3] = &unk_2798F5BE8;
  v12[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v13 delay:v12 options:0 animations:v14 completion:0.0];
}

uint64_t __51__SUUIFullscreenRedeemCameraView_keyboardWillShow___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 432);
  v4 = CGRectGetMinY(*(v2 + 448)) + -44.0;
  [*(a1 + 32) bounds];
  [v3 setFrame:{0.0, v4}];
  v5 = *(a1 + 32);
  v6 = *(v5 + 440);
  v7 = CGRectGetMinY(*(v5 + 448)) + -44.0;
  [*(a1 + 32) bounds];

  return [v6 setFrame:{0.0, v7}];
}

- (void)keyboardWillHide:(id)hide
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0;
  v14 = 0.0;
  userInfo = [hide userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];
  [v5 getValue:&v15];

  v6 = [userInfo objectForKey:*MEMORY[0x277D76B70]];
  [v6 getValue:&v13];

  v7 = [userInfo objectForKey:*MEMORY[0x277D76B78]];
  [v7 getValue:&v14];

  [(SUUIFullscreenRedeemCameraView *)self convertRect:0 fromView:v15, v16];
  self->_keyboardRect.origin.x = v8;
  self->_keyboardRect.origin.y = v9;
  self->_keyboardRect.size.width = v10;
  self->_keyboardRect.size.height = v11;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__SUUIFullscreenRedeemCameraView_keyboardWillHide___block_invoke;
  v12[3] = &unk_2798F5BE8;
  v12[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v13 delay:v12 options:0 animations:v14 completion:0.0];
}

uint64_t __51__SUUIFullscreenRedeemCameraView_keyboardWillHide___block_invoke(uint64_t a1)
{
  [*(a1 + 32) safeAreaInsets];
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 432);
  v6 = CGRectGetMinY(*(v4 + 448)) + -44.0 - v2;
  [*(a1 + 32) bounds];
  [v5 setFrame:{0.0, v6}];
  v7 = *(a1 + 32);
  v8 = *(v7 + 440);
  v9 = CGRectGetMinY(*(v7 + 448)) + -44.0 - v3;
  [*(a1 + 32) bounds];

  return [v8 setFrame:{0.0, v9}];
}

- (void)keyboardDidHide:(id)hide
{
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  self->_keyboardRect.origin = *MEMORY[0x277CBF3A0];
  self->_keyboardRect.size = v3;
}

- (void)textFieldTextDidChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  text = [(SUUIRedeemTextField *)self->_textField text];
  [WeakRetained SUUIRedeemCameraView:self textFieldDidChange:text];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  [(SUUIFullscreenRedeemCameraView *)self insertSubview:self->_overlay belowSubview:self->_textField];
  overlay = self->_overlay;
  [(SUUIFullscreenRedeemCameraView *)self bounds];
  [(UIView *)overlay setFrame:?];
  v5 = self->_overlay;
  blackColor = [MEMORY[0x277D75348] blackColor];
  [(UIView *)v5 setBackgroundColor:blackColor];

  [(UIView *)self->_overlay setAlpha:0.0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__SUUIFullscreenRedeemCameraView_textFieldDidBeginEditing___block_invoke;
  v7[3] = &unk_2798F5BE8;
  v7[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v7 animations:0.2];
  [(SUUIFullscreenRedeemCameraView *)self _pauseRedeemer];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  text = [returnCopy text];

  [WeakRetained SUUIRedeemCameraView:self textFieldDidRedeem:text];
  return 1;
}

- (void)textFieldDidEndEditing:(id)editing
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__SUUIFullscreenRedeemCameraView_textFieldDidEndEditing___block_invoke;
  v5[3] = &unk_2798F5BE8;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__SUUIFullscreenRedeemCameraView_textFieldDidEndEditing___block_invoke_2;
  v4[3] = &unk_2798F5D30;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v5 animations:v4 completion:0.2];
  UIKeyboardOrderOutAutomatic();
  if ([(SUUIFullscreenRedeemCameraView *)self enabled])
  {
    [(SUUIFullscreenRedeemCameraView *)self _resumeRedeemer];
    [(SUUIFullscreenRedeemCameraView *)self setText:&stru_286AECDE0];
  }
}

- (id)_newTextFieldWithClientContext:(id)context
{
  contextCopy = context;
  v5 = [[SUUIRedeemTextField alloc] initWithFrame:0.0, 0.0, 1.0, 44.0];
  [(SUUIRedeemTextField *)v5 setSuppressBorder:1];
  [(SUUIRedeemTextField *)v5 setAutocorrectionType:1];
  [(SUUIRedeemTextField *)v5 setAutocapitalizationType:3];
  v6 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
  [(SUUIRedeemTextField *)v5 setFont:v6];
  if (contextCopy)
  {
    [contextCopy localizedStringForKey:@"CAMERA_REDEEM_ENTER_CODE" inTable:@"Redeem"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"CAMERA_REDEEM_ENTER_CODE" inBundles:0 inTable:@"Redeem"];
  }
  v7 = ;
  v8 = objc_alloc(MEMORY[0x277CBEAC0]);
  v9 = *MEMORY[0x277D740A8];
  tintColor = [(SUUIFullscreenRedeemCameraView *)self tintColor];
  v11 = tintColor;
  if (tintColor)
  {
    v12 = [v8 initWithObjectsAndKeys:{v6, v9, tintColor, *MEMORY[0x277D740C0], 0}];
  }

  else
  {
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.7 alpha:1.0];
    v12 = [v8 initWithObjectsAndKeys:{v6, v9, v13, *MEMORY[0x277D740C0], 0}];
  }

  v14 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v12];
  [(SUUIRedeemTextField *)v5 setAttributedPlaceholder:v14];

  return v5;
}

- (void)_pauseRedeemer
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cancelRedeemerViewForSUUIRedeemCameraView:self];
}

- (void)_resumeRedeemer
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained startRedeemerViewForSUUIRedeemCameraView:self];
}

- (SUUIRedeemCameraViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end