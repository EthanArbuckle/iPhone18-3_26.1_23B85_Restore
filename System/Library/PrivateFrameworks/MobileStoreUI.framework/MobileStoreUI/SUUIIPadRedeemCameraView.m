@interface SUUIIPadRedeemCameraView
- (BOOL)textFieldShouldReturn:(id)a3;
- (SUUIIPadRedeemCameraView)initWithClientContext:(id)a3;
- (SUUIRedeemCameraViewDelegate)delegate;
- (double)_adjustVerticalSpacingForHeight:(double)a3;
- (id)_newTextFieldWithClientContext:(id)a3 placeholderColor:(id)a4;
- (void)_landingButtonAction:(id)a3;
- (void)_termsButtonAction:(id)a3;
- (void)dealloc;
- (void)keyboardDidChange:(id)a3;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setText:(id)a3;
- (void)textFieldTextDidChange:(id)a3;
@end

@implementation SUUIIPadRedeemCameraView

- (SUUIIPadRedeemCameraView)initWithClientContext:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = SUUIIPadRedeemCameraView;
  v5 = [(SUUIIPadRedeemCameraView *)&v26 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D759D8]);
    scrollView = v5->_scrollView;
    v5->_scrollView = v6;

    [(SUUIIPadRedeemCameraView *)v5 addSubview:v5->_scrollView];
    v8 = [[SUUIRedeemCameraLandingView alloc] initWithClientContext:v4];
    landingView = v5->_landingView;
    v5->_landingView = v8;

    v10 = [(SUUIRedeemCameraLandingView *)v5->_landingView button];
    [v10 addTarget:v5 action:sel__landingButtonAction_ forControlEvents:64];

    [(UIScrollView *)v5->_scrollView addSubview:v5->_landingView];
    v11 = [(SUUIIPadRedeemCameraView *)v5 tintColor];
    v12 = [(SUUIIPadRedeemCameraView *)v5 _newTextFieldWithClientContext:v4 placeholderColor:v11];
    textField = v5->_textField;
    v5->_textField = v12;

    [(SUUIRedeemTextField *)v5->_textField setDelegate:v5];
    [(UIScrollView *)v5->_scrollView addSubview:v5->_textField];
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v5 selector:sel_keyboardDidChange_ name:*MEMORY[0x277D76C60] object:0];
    [v14 addObserver:v5 selector:sel_keyboardDidChange_ name:*MEMORY[0x277D76C50] object:0];
    [v14 addObserver:v5 selector:sel_textFieldTextDidChange_ name:*MEMORY[0x277D770B0] object:v5->_textField];
    v15 = [[SUUILinkButton alloc] initWithArrowStyle:0];
    termsButton = v5->_termsButton;
    v5->_termsButton = &v15->super;

    v17 = v5->_termsButton;
    if (v4)
    {
      [v4 localizedStringForKey:@"REDEEM_TERMS_LINK" inTable:@"Redeem"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"REDEEM_TERMS_LINK" inBundles:0 inTable:@"Redeem"];
    }
    v18 = ;
    [(UIButton *)v17 setTitle:v18 forState:0];

    v19 = [(UIButton *)v5->_termsButton titleLabel];
    v20 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [v19 setFont:v20];

    v21 = v5->_termsButton;
    v22 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [(UIButton *)v21 setTitleColor:v22 forState:0];

    v23 = v5->_termsButton;
    v24 = [MEMORY[0x277D75348] blackColor];
    [(UIButton *)v23 setTitleColor:v24 forState:1];

    [(UIButton *)v5->_termsButton addTarget:v5 action:sel__termsButtonAction_ forControlEvents:64];
    [(UIScrollView *)v5->_scrollView addSubview:v5->_termsButton];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76C60] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76BA8] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76C50] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76BA0] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D770B0] object:0];
  [(SUUIRedeemTextField *)self->_textField setDelegate:0];

  v4.receiver = self;
  v4.super_class = SUUIIPadRedeemCameraView;
  [(SUUIIPadRedeemCameraView *)&v4 dealloc];
}

- (void)setText:(id)a3
{
  textField = self->_textField;
  v5 = a3;
  [(SUUIRedeemTextField *)textField setText:v5];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained SUUIRedeemCameraView:self textFieldDidChange:v5];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  textField = self->_textField;
  if (a3)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] colorWithWhite:0.392156863 alpha:1.0];
  }
  v6 = ;
  [(SUUIRedeemTextField *)textField setTextColor:v6];

  [(SUUIRedeemTextField *)self->_textField setEnabled:v3];

  [(SUUIIPadRedeemCameraView *)self setUserInteractionEnabled:v3];
}

- (void)layoutSubviews
{
  [(SUUIIPadRedeemCameraView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [MEMORY[0x277D75418] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if ((v12 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v13 = 44.0;
  }

  else
  {
    v13 = 94.0;
  }

  scrollView = self->_scrollView;
  if (scrollView)
  {
    [(UIScrollView *)scrollView setContentSize:v8, v10];
    [(UIScrollView *)self->_scrollView setFrame:v4, v6, v8, v10];
  }

  landingView = self->_landingView;
  if (landingView)
  {
    [(SUUIRedeemCameraLandingView *)landingView frame];
    [(SUUIRedeemCameraLandingView *)self->_landingView sizeThatFits:v8, v10];
    v17 = v16;
    v19 = v18;
    [(SUUIRedeemCameraLandingView *)self->_landingView setFrame:0.0, v13, v16, v18];
    v31.origin.x = 0.0;
    v31.origin.y = v13;
    v31.size.width = v17;
    v31.size.height = v19;
    v13 = CGRectGetMaxY(v31) + 49.0;
  }

  textField = self->_textField;
  if (textField)
  {
    [(SUUIRedeemTextField *)textField setFrame:0.0, v13, v8, 44.0];
    v32.origin.x = 0.0;
    v32.origin.y = v13;
    v32.size.width = v8;
    v32.size.height = 44.0;
    v13 = CGRectGetMaxY(v32) + 36.0;
  }

  termsButton = self->_termsButton;
  if (termsButton)
  {
    [(UIButton *)termsButton sizeToFit];
    [(UIButton *)self->_termsButton frame];
    v23 = v22;
    v25 = v24;
    v26 = (v8 - v22) * 0.5;
    v27 = roundf(v26);
    [(SUUIIPadRedeemCameraView *)self _adjustVerticalSpacingForHeight:v13];
    v29 = self->_termsButton;

    [(UIButton *)v29 setFrame:v27, v28, v23, v25];
  }
}

- (void)keyboardDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v15 = [v4 objectForKey:*MEMORY[0x277D76BB8]];

  if (v15)
  {
    v5 = [(UIScrollView *)self->_scrollView superview];
    [v15 CGRectValue];
    [v5 convertRect:0 fromView:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [(UIScrollView *)self->_scrollView frame];
    v19.origin.x = v7;
    v19.origin.y = v9;
    v19.size.width = v11;
    v19.size.height = v13;
    v18 = CGRectIntersection(v17, v19);
    height = v18.size.height;
    [(UIScrollView *)self->_scrollView contentInset:v18.origin.x];
    [(UIScrollView *)self->_scrollView setContentInset:?];
    [(UIScrollView *)self->_scrollView scrollIndicatorInsets];
    [(UIScrollView *)self->_scrollView setScrollIndicatorInsets:?];
    [(UIScrollView *)self->_scrollView setContentOffset:1 animated:0.0, height];
  }
}

- (void)textFieldTextDidChange:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [(SUUIRedeemTextField *)self->_textField text];
  [WeakRetained SUUIRedeemCameraView:self textFieldDidChange:v4];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [v4 text];

  [WeakRetained SUUIRedeemCameraView:self textFieldDidRedeem:v6];
  return 1;
}

- (void)_landingButtonAction:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained presentFullScreenCameraViewForSUUIRedeemCameraView:self];
}

- (void)_termsButtonAction:(id)a3
{
  v3 = [MEMORY[0x277CBEBC0] termsAndConditionsURL];
  SUUIMetricsOpenURL(v3);
}

- (double)_adjustVerticalSpacingForHeight:(double)a3
{
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1)
  {
    v6 = [MEMORY[0x277D75DA0] keyWindow];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v20.origin.x = v8;
    v20.origin.y = v10;
    v20.size.width = v12;
    v20.size.height = v14;
    Width = CGRectGetWidth(v20);
    v21.origin.x = v8;
    v21.origin.y = v10;
    v21.size.width = v12;
    v21.size.height = v14;
    Height = CGRectGetHeight(v21);
    if (Width >= 1024.0 && Height >= 1024.0)
    {
      if (Height <= Width)
      {
        v18 = 320.0;
      }

      else
      {
        v18 = 461.0;
      }

      return a3 + v18;
    }
  }

  return a3;
}

- (id)_newTextFieldWithClientContext:(id)a3 placeholderColor:(id)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [[SUUIRedeemTextField alloc] initWithFrame:0.0, 0.0, 1.0, 44.0];
  [(SUUIRedeemTextField *)v7 setAutocorrectionType:1];
  [(SUUIRedeemTextField *)v7 setAutocapitalizationType:3];
  v8 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
  [(SUUIRedeemTextField *)v7 setFont:v8];
  v9 = *MEMORY[0x277D740A8];
  v18[0] = v8;
  v10 = *MEMORY[0x277D740C0];
  v17[0] = v9;
  v17[1] = v10;
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x277D75348] colorWithWhite:0.7 alpha:1.0];
  }

  v18[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  if (!v6)
  {
  }

  v13 = objc_alloc(MEMORY[0x277CCA898]);
  if (v5)
  {
    [v5 localizedStringForKey:@"CAMERA_REDEEM_ENTER_CODE" inTable:@"Redeem"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"CAMERA_REDEEM_ENTER_CODE" inBundles:0 inTable:@"Redeem"];
  }
  v14 = ;
  v15 = [v13 initWithString:v14 attributes:v12];

  [(SUUIRedeemTextField *)v7 setAttributedPlaceholder:v15];
  return v7;
}

- (SUUIRedeemCameraViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end