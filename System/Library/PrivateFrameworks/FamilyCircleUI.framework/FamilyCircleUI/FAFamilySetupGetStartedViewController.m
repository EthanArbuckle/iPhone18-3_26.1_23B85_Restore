@interface FAFamilySetupGetStartedViewController
- (FAFamilySetupGetStartedViewController)initWithAccount:(id)a3 store:(id)a4 familyEligibilityResponse:(id)a5;
- (FAFamilySetupPageDelegate)delegate;
- (double)_heightForText:(id)a3 constrainedToWidth:(double)a4;
- (id)_createDescriptionLabelForText:(id)a3;
- (void)_getStartedButtonWasTapped:(id)a3;
- (void)_updateFonts;
- (void)loadView;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation FAFamilySetupGetStartedViewController

- (FAFamilySetupGetStartedViewController)initWithAccount:(id)a3 store:(id)a4 familyEligibilityResponse:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = FAFamilySetupGetStartedViewController;
  v12 = [(FAFamilySetupGetStartedViewController *)&v15 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, a3);
    objc_storeStrong(&v13->_accountStore, a4);
    objc_storeStrong(&v13->_familyEligibilityResponse, a5);
  }

  return v13;
}

- (void)loadView
{
  v46.receiver = self;
  v46.super_class = FAFamilySetupGetStartedViewController;
  [(FAFamilySetupGetStartedViewController *)&v46 loadView];
  v3 = objc_alloc(MEMORY[0x277D759D8]);
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];
  scrollView = self->_scrollView;
  self->_scrollView = v5;

  v7 = self->_scrollView;
  v8 = [MEMORY[0x277D75348] whiteColor];
  [(UIScrollView *)v7 setBackgroundColor:v8];

  v9 = objc_alloc(MEMORY[0x277D75D18]);
  v10 = *MEMORY[0x277CBF3A0];
  v11 = *(MEMORY[0x277CBF3A0] + 8);
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v13 = *(MEMORY[0x277CBF3A0] + 24);
  v14 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], v11, v12, v13}];
  contentView = self->_contentView;
  self->_contentView = v14;

  [(UIScrollView *)self->_scrollView addSubview:self->_contentView];
  v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v16;

  v18 = self->_titleLabel;
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"FAMILY_SETUP_FIRST_PAGE_TITLE" value:&stru_282D9AA68 table:@"Localizable"];
  [(UILabel *)v18 setText:v20];

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  v21 = self->_titleLabel;
  v22 = [MEMORY[0x277D74300] aa_fontForPageTitle];
  [(UILabel *)v21 setFont:v22];

  v23 = self->_titleLabel;
  v24 = [MEMORY[0x277D75348] blackColor];
  [(UILabel *)v23 setTextColor:v24];

  [(UIView *)self->_contentView addSubview:self->_titleLabel];
  v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"FAMILY_SETUP_SHORT_DESCRIPTION" value:&stru_282D9AA68 table:@"Localizable"];
  v27 = [(FAFamilySetupGetStartedViewController *)self _createDescriptionLabelForText:v26];
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v27;

  [(UIView *)self->_contentView addSubview:self->_descriptionLabel];
  v29 = objc_alloc(MEMORY[0x277D755E8]);
  v30 = MEMORY[0x277D755B8];
  v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v32 = [v30 imageNamed:@"FamilySharingLogo" inBundle:v31];
  v33 = [v29 initWithImage:v32];
  familySharingLogo = self->_familySharingLogo;
  self->_familySharingLogo = v33;

  [(UIView *)self->_contentView addSubview:self->_familySharingLogo];
  v35 = [MEMORY[0x277D75220] buttonWithType:1];
  getStartedButton = self->_getStartedButton;
  self->_getStartedButton = v35;

  v37 = self->_getStartedButton;
  v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v39 = [v38 localizedStringForKey:@"GET_STARTED_BUTTON_TITLE" value:&stru_282D9AA68 table:@"Localizable"];
  [(UIButton *)v37 setTitle:v39 forState:0];

  [(UIButton *)self->_getStartedButton addTarget:self action:sel__getStartedButtonWasTapped_ forControlEvents:64];
  v40 = self->_getStartedButton;
  v41 = [MEMORY[0x277D75348] systemBlueColor];
  [(UIButton *)v40 setTintColor:v41];

  [(UIButton *)self->_getStartedButton setEnabled:1];
  [(UIButton *)self->_getStartedButton setUserInteractionEnabled:1];
  v42 = [(UIButton *)self->_getStartedButton titleLabel];
  v43 = [MEMORY[0x277D74300] aa_fontForLargeButton];
  [v42 setFont:v43];

  [(UIView *)self->_contentView addSubview:self->_getStartedButton];
  v44 = [[FAFamilySharingFeaturesView alloc] initWithContext:0 hideLocationSharing:MGGetBoolAnswer() ^ 1];
  familyFeaturesView = self->_familyFeaturesView;
  self->_familyFeaturesView = v44;

  [(UIView *)self->_contentView addSubview:self->_familyFeaturesView];
  [(FAFamilySetupGetStartedViewController *)self setView:self->_scrollView];
}

- (void)viewWillLayoutSubviews
{
  v34.receiver = self;
  v34.super_class = FAFamilySetupGetStartedViewController;
  [(FAFamilySetupGetStartedViewController *)&v34 viewWillLayoutSubviews];
  v3 = [(FAFamilySetupGetStartedViewController *)self view];
  [v3 frame];
  v5 = v4;

  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = 88.0;
  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v8 = 28.0;
  }

  v9 = v5 - v8;
  [(UILabel *)self->_titleLabel frame];
  v10 = [MEMORY[0x277D75418] currentDevice];
  v11 = [v10 userInterfaceIdiom];

  v12 = 44.0;
  if ((v11 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v13 = 44.0;
  }

  else
  {
    v13 = 14.0;
  }

  UIRoundToViewScale();
  v15 = v14;
  [(UILabel *)self->_titleLabel sizeThatFits:v9, 0.0];
  v17 = v16;
  [(UILabel *)self->_titleLabel setFrame:v13, v15, v9, v16];
  [(UIImageView *)self->_familySharingLogo sizeToFit];
  [(UIImageView *)self->_familySharingLogo frame];
  v19 = v18;
  [(UIImageView *)self->_familySharingLogo size];
  UIRoundToViewScale();
  [(UIImageView *)self->_familySharingLogo setFrame:?];
  [(UILabel *)self->_descriptionLabel frame];
  UIRoundToViewScale();
  v21 = v15 + v17 + 24.0 + v19 + v20;
  v22 = [(UILabel *)self->_descriptionLabel text];
  [(FAFamilySetupGetStartedViewController *)self _heightForText:v22 constrainedToWidth:v5 + -60.0];
  v24 = v23;

  [(UILabel *)self->_descriptionLabel setFrame:30.0, v21, v5 + -60.0, v24];
  [(UIButton *)self->_getStartedButton sizeToFit];
  [(UIButton *)self->_getStartedButton frame];
  v26 = v25;
  v27 = [MEMORY[0x277D75418] currentDevice];
  v28 = [v27 userInterfaceIdiom];

  if ((v28 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v12 = 14.0;
  }

  UIRoundToViewScale();
  v30 = v21 + v24 + v29;
  [(UIButton *)self->_getStartedButton setFrame:v12, v30, v9, v26];
  [(FAFamilySharingFeaturesView *)self->_familyFeaturesView frame];
  v31 = v26 + v30 + 20.0;
  [(FAFamilySharingFeaturesView *)self->_familyFeaturesView systemLayoutSizeFittingSize:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
  v33 = v32;
  [(FAFamilySharingFeaturesView *)self->_familyFeaturesView setFrame:30.0, v31, v5 + -60.0, v32];
  [(UIView *)self->_contentView frame];
  [(UIView *)self->_contentView setFrame:?];
  [(UIScrollView *)self->_scrollView setContentSize:v5, v31 + v33 + 30.0];
}

- (void)_updateFonts
{
  titleLabel = self->_titleLabel;
  v4 = [MEMORY[0x277D74300] aa_fontForPageTitle];
  [(UILabel *)titleLabel setFont:v4];

  descriptionLabel = self->_descriptionLabel;
  v6 = [MEMORY[0x277D74300] aa_fontForLargerInformationLabel];
  [(UILabel *)descriptionLabel setFont:v6];

  v7 = [(UIButton *)self->_getStartedButton titleLabel];
  v8 = [MEMORY[0x277D74300] aa_fontForLargeButton];
  [v7 setFont:v8];

  v9 = [(FAFamilySetupGetStartedViewController *)self view];
  [v9 setNeedsLayout];
}

- (id)_createDescriptionLabelForText:(id)a3
{
  v3 = MEMORY[0x277D756B8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v6 setText:v4];

  [v6 setTextAlignment:1];
  [v6 setNumberOfLines:0];
  v7 = [MEMORY[0x277D74300] aa_fontForLargerInformationLabel];
  [v6 setFont:v7];

  return v6;
}

- (double)_heightForText:(id)a3 constrainedToWidth:(double)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277D740A8];
  v5 = MEMORY[0x277D74300];
  v6 = a3;
  v7 = [v5 aa_fontForLargerInformationLabel];
  v14[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v6 boundingRectWithSize:1 options:v8 attributes:0 context:{a4, 1.79769313e308}];
  v10 = v9;

  v11 = *MEMORY[0x277D85DE8];
  return ceil(v10);
}

- (void)_getStartedButtonWasTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained familySetupPage:self didCompleteWithSuccess:1];
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = FAFamilySetupGetStartedViewController;
  v4 = a3;
  [(FAFamilySetupGetStartedViewController *)&v9 traitCollectionDidChange:v4];
  v5 = [v4 preferredContentSizeCategory];

  v6 = [(FAFamilySetupGetStartedViewController *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = [v5 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    [(FAFamilySetupGetStartedViewController *)self _updateFonts];
  }
}

- (FAFamilySetupPageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end