@interface CNFRegSplashScreenController
- (CNFRegSplashScreenController)init;
- (CNFRegSplashScreenController)initWithRegController:(id)a3 account:(id)a4;
- (UIBarButtonItem)customLeftButton;
- (UIBarButtonItem)customRightButton;
- (void)_getStartedPressed:(id)a3;
- (void)_learnMorePressed:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)setCustomLeftButton:(id)a3;
- (void)setCustomRightButton:(id)a3;
- (void)willBecomeActive;
@end

@implementation CNFRegSplashScreenController

- (CNFRegSplashScreenController)init
{
  v7.receiver = self;
  v7.super_class = CNFRegSplashScreenController;
  v2 = [(CNFRegSplashScreenController *)&v7 init];
  if (v2)
  {
    v3 = CommunicationsSetupUIBundle();
    v4 = CNFRegStringTableName();
    v5 = [v3 localizedStringForKey:@"FACETIME" value:&stru_2856D3978 table:v4];
    [(CNFRegSplashScreenController *)v2 setTitle:v5];
  }

  return v2;
}

- (CNFRegSplashScreenController)initWithRegController:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = [(CNFRegSplashScreenController *)self init];
  v7 = v6;
  if (v6)
  {
    [(CNFRegSplashScreenController *)v6 setRegController:v5];
  }

  return v7;
}

- (void)dealloc
{
  self->_delegate = 0;
  v2.receiver = self;
  v2.super_class = CNFRegSplashScreenController;
  [(CNFRegSplashScreenController *)&v2 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v69 = [v3 initWithFrame:?];

  [v69 setAutoresizesSubviews:0];
  [v69 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v5;
  if (v5 >= 580.0)
  {
    v13 = 131.0;
  }

  else
  {
    v13 = v5 / 580.0 * 131.0;
  }

  v14 = [MEMORY[0x277D75348] whiteColor];
  [v69 setBackgroundColor:v14];

  v71.origin.x = v7;
  v71.origin.y = v9;
  v71.size.width = v11;
  v71.size.height = v12;
  v15 = CGRectGetWidth(v71) + -70.0;
  v16 = objc_alloc(MEMORY[0x277D756B8]);
  v17 = [v16 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v18 = [MEMORY[0x277D74300] fontWithName:@"Helvetica Neue Light" size:18.0];
  [v17 setFont:v18];

  v19 = [MEMORY[0x277D07DB0] sharedInstance];
  v20 = [v19 supportsWLAN];
  v21 = _os_feature_enabled_impl();
  v22 = CNFRegStringTableName();
  v23 = CommunicationsSetupUIBundle();
  v24 = @"FACETIME_SPLASH_SYNOPSIS_WLAN";
  if (v21)
  {
    v24 = @"FACETIME_SPLASH_SYNOPSIS_WLAN_APPLEACCOUNT";
  }

  v25 = @"FACETIME_SPLASH_SYNOPSIS_WIFI_APPLEACCOUNT";
  if (!v21)
  {
    v25 = @"FACETIME_SPLASH_SYNOPSIS_WIFI";
  }

  if (v20)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  v27 = CNFLocalizedStringFromTableInBundleWithFallback(v26, v22, v23);
  [v17 setText:v27];

  v28 = [MEMORY[0x277D75348] blackColor];
  [v17 setTextColor:v28];

  [v17 setTextAlignment:1];
  [v17 setLineBreakMode:0];
  [v17 setNumberOfLines:0];
  [v17 sizeToFit];
  [v17 sizeThatFits:{v15, 1.79769313e308}];
  v30 = v29;
  v32 = v31;
  v72.origin.x = v7;
  v72.origin.y = v9;
  v72.size.width = v11;
  v72.size.height = v12;
  v33 = floor(CGRectGetMidX(v72) + v30 * -0.5);
  [v17 setFrame:{v33, v13, v30, v32}];
  [v69 addSubview:v17];
  v73.origin.x = v33;
  v73.origin.y = v13;
  v73.size.width = v30;
  v73.size.height = v32;
  v34 = v12;
  v35 = CGRectGetMaxY(v73) + 20.5;
  rect = v11;
  if (self->_learnMoreButton)
  {
    v36 = v9;
  }

  else
  {
    v37 = CommunicationsSetupUIBundle();
    v38 = CNFRegStringTableName();
    v39 = [v37 localizedStringForKey:@"FACETIME_SPLASH_LEARN_MORE" value:&stru_2856D3978 table:v38];
    v40 = [(CNFRegSplashScreenController *)self userInteractionColor];
    v41 = [CNFRegLearnMoreButton roundedButtonWithText:v39 color:v40];
    learnMoreButton = self->_learnMoreButton;
    self->_learnMoreButton = v41;

    [(UIButton *)self->_learnMoreButton setAutoresizingMask:5];
    [(UIButton *)self->_learnMoreButton addTarget:self action:sel__learnMorePressed_ forControlEvents:64];
    [(UIButton *)self->_learnMoreButton sizeToFit];
    [(UIButton *)self->_learnMoreButton bounds];
    v45 = v44;
    v67 = v35;
    v47 = v46;
    v49 = v48;
    if (v43 <= v11)
    {
      v50 = v43;
    }

    else
    {
      v50 = v11;
    }

    v74.origin.x = v7;
    v74.origin.y = v9;
    v74.size.width = v11;
    v74.size.height = v34;
    MidX = CGRectGetMidX(v74);
    v52 = v9;
    v53 = MidX;
    v75.origin.x = v45;
    v75.origin.y = v47;
    v36 = v52;
    v75.size.width = v50;
    v75.size.height = v49;
    v54 = floor(v53 + CGRectGetWidth(v75) * -0.5);
    [(UIButton *)self->_learnMoreButton setFrame:v54, v67, v50, v49];
    [v69 addSubview:self->_learnMoreButton];
    v76.origin.x = v54;
    v76.origin.y = v67;
    v76.size.width = v50;
    v76.size.height = v49;
    v35 = CGRectGetMaxY(v76) + 58.0;
  }

  v55 = [MEMORY[0x277D75220] buttonWithType:1];
  v56 = CommunicationsSetupUIBundle();
  v57 = CNFRegStringTableName();
  v58 = [v56 localizedStringForKey:@"FACETIME_SPLASH_GET_STARTED" value:&stru_2856D3978 table:v57];
  [v55 setTitle:v58 forState:0];

  v59 = [(CNFRegSplashScreenController *)self userInteractionColor];
  [v55 setTitleColor:v59 forState:0];

  v60 = [v55 titleLabel];
  v61 = [MEMORY[0x277D74300] fontWithName:@"Helvetica Neue Medium" size:18.0];
  [v60 setFont:v61];

  [v55 setContentEdgeInsets:{0.0, 6.0, 0.0, 6.0}];
  [v55 setTitleEdgeInsets:{0.0, 0.0, 0.0, 0.0}];
  [v55 sizeToFit];
  [v55 frame];
  v63 = v62;
  v65 = v64;
  v77.origin.x = v7;
  v77.origin.y = v36;
  v77.size.width = rect;
  v77.size.height = v34;
  v66 = CGRectGetMidX(v77);
  [v55 frame];
  [v55 setFrame:{v66 + CGRectGetWidth(v78) * -0.5, v35 - v65, v63, v65}];
  [v55 addTarget:self action:sel__getStartedPressed_ forControlEvents:64];
  [v69 addSubview:v55];
  [(CNFRegSplashScreenController *)self setView:v69];
}

- (void)willBecomeActive
{
  v3.receiver = self;
  v3.super_class = CNFRegSplashScreenController;
  [(CNFRegSplashScreenController *)&v3 willBecomeActive];
  [(UIButton *)self->_learnMoreButton setSelected:0];
}

- (void)_learnMorePressed:(id)a3
{
  v3 = *MEMORY[0x277D76620];
  v4 = CNFRegLocalizedSplashScreenURL();
  [v3 openURL:v4 withCompletionHandler:0];
}

- (void)_getStartedPressed:(id)a3
{
  v4 = [CNFRegSignInController alloc];
  v5 = [(CNFRegSplashScreenController *)self regController];
  v10 = [(CNFRegFirstRunController *)v4 initWithRegController:v5];

  [(CNFRegSignInController *)v10 setHideLearnMoreButton:1];
  v6 = [(CNFRegSplashScreenController *)self delegate];
  [(CNFRegFirstRunController *)v10 setDelegate:v6];

  v7 = [(CNFRegSplashScreenController *)self rootController];
  [(CNFRegSignInController *)v10 setRootController:v7];

  v8 = [(CNFRegSplashScreenController *)self parentController];
  [(CNFRegSignInController *)v10 setParentController:v8];

  v9 = [(CNFRegSplashScreenController *)self rootController];
  [v9 showController:v10];
}

- (void)setCustomLeftButton:(id)a3
{
  v4 = a3;
  v5 = [(CNFRegSplashScreenController *)self navigationItem];
  [v5 setLeftBarButtonItem:v4];
}

- (UIBarButtonItem)customLeftButton
{
  v2 = [(CNFRegSplashScreenController *)self navigationItem];
  v3 = [v2 leftBarButtonItem];

  return v3;
}

- (void)setCustomRightButton:(id)a3
{
  v4 = a3;
  v5 = [(CNFRegSplashScreenController *)self navigationItem];
  [v5 setRightBarButtonItem:v4];
}

- (UIBarButtonItem)customRightButton
{
  v2 = [(CNFRegSplashScreenController *)self navigationItem];
  v3 = [v2 rightBarButtonItem];

  return v3;
}

@end