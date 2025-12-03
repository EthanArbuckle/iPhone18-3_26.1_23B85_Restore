@interface FAConfirmIdentityViewController
- (FAConfirmIdentityViewController)initWithAppleAccount:(id)account grandSlamSigner:(id)signer;
- (FAConfirmIdentityViewControllerDelegate)delegate;
- (double)_heightForText:(id)text width:(double)width;
- (id)instructions;
- (id)pageTitle;
- (id)titleForContinuebutton;
- (void)_showImagePickerForAvailableSources;
- (void)_updateFonts;
- (void)_updateViewsInPhotoArea:(id)area;
- (void)_useDifferentIDButtonWasTapped:(id)tapped;
- (void)continueButtonWasTapped:(id)tapped;
- (void)loadView;
- (void)traitCollectionDidChange:(id)change;
- (void)viewWillLayoutSubviews;
@end

@implementation FAConfirmIdentityViewController

- (FAConfirmIdentityViewController)initWithAppleAccount:(id)account grandSlamSigner:(id)signer
{
  accountCopy = account;
  signerCopy = signer;
  v14.receiver = self;
  v14.super_class = FAConfirmIdentityViewController;
  v9 = [(FAConfirmIdentityViewController *)&v14 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appleAccount, account);
    v11 = [objc_alloc(MEMORY[0x277CECA90]) initWithGrandSlamSigner:signerCopy];
    profilePictureStore = v10->_profilePictureStore;
    v10->_profilePictureStore = v11;

    [(AAUIProfilePictureStore *)v10->_profilePictureStore setPictureDiameter:100.0];
    [(AAUIProfilePictureStore *)v10->_profilePictureStore setMonogramType:0];
  }

  return v10;
}

- (void)loadView
{
  v72.receiver = self;
  v72.super_class = FAConfirmIdentityViewController;
  [(FAConfirmIdentityViewController *)&v72 loadView];
  v3 = objc_alloc(MEMORY[0x277D759D8]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = [v3 initWithFrame:?];
  scrollView = self->_scrollView;
  self->_scrollView = v5;

  v7 = self->_scrollView;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(UIScrollView *)v7 setBackgroundColor:whiteColor];

  [(FAConfirmIdentityViewController *)self setView:self->_scrollView];
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
  pageTitle = [(FAConfirmIdentityViewController *)self pageTitle];
  [(UILabel *)v18 setText:pageTitle];

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  v20 = self->_titleLabel;
  aa_fontForPageTitle = [MEMORY[0x277D74300] aa_fontForPageTitle];
  [(UILabel *)v20 setFont:aa_fontForPageTitle];

  [(UIView *)self->_contentView addSubview:self->_titleLabel];
  v22 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v22;

  v24 = self->_descriptionLabel;
  instructions = [(FAConfirmIdentityViewController *)self instructions];
  [(UILabel *)v24 setText:instructions];

  [(UILabel *)self->_descriptionLabel setTextAlignment:1];
  [(UILabel *)self->_descriptionLabel setNumberOfLines:0];
  v26 = self->_descriptionLabel;
  aa_fontForLargerInformationLabel = [MEMORY[0x277D74300] aa_fontForLargerInformationLabel];
  [(UILabel *)v26 setFont:aa_fontForLargerInformationLabel];

  [(UIView *)self->_contentView addSubview:self->_descriptionLabel];
  profilePictureForAccountOwnerWithoutMonogramFallback = [(AAUIProfilePictureStore *)self->_profilePictureStore profilePictureForAccountOwnerWithoutMonogramFallback];
  v71 = profilePictureForAccountOwnerWithoutMonogramFallback;
  if (profilePictureForAccountOwnerWithoutMonogramFallback)
  {
    v29 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:profilePictureForAccountOwnerWithoutMonogramFallback];
    profilePhotoView = self->_profilePhotoView;
    self->_profilePhotoView = v29;

    v31 = self->_profilePhotoView;
    v32 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__photoWasTapped_];
    [(UIView *)v31 addGestureRecognizer:v32];
  }

  else
  {
    v33 = [[FAAddPhotoView alloc] initWithTarget:self action:sel__addPhotoButtonWasTapped_];
    v32 = self->_profilePhotoView;
    self->_profilePhotoView = &v33->super;
  }

  [(UIView *)self->_contentView addSubview:self->_profilePhotoView];
  v34 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
  nameLabel = self->_nameLabel;
  self->_nameLabel = v34;

  [(UILabel *)self->_nameLabel setTextAlignment:1];
  v36 = self->_nameLabel;
  aaui_compositeName = [(ACAccount *)self->_appleAccount aaui_compositeName];
  [(UILabel *)v36 setText:aaui_compositeName];

  [(UILabel *)self->_nameLabel setNumberOfLines:0];
  v38 = self->_nameLabel;
  v39 = MEMORY[0x277D74300];
  v40 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  [v40 scaledValueForValue:27.0];
  v41 = [v39 _lightSystemFontOfSize:?];
  [(UILabel *)v38 setFont:v41];

  [(UIView *)self->_contentView addSubview:self->_nameLabel];
  v42 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
  emailLabel = self->_emailLabel;
  self->_emailLabel = v42;

  [(UILabel *)self->_emailLabel setTextAlignment:1];
  v44 = self->_emailLabel;
  username = [(ACAccount *)self->_appleAccount username];
  [(UILabel *)v44 setText:username];

  [(UILabel *)self->_emailLabel setNumberOfLines:0];
  v46 = self->_emailLabel;
  aa_fontForPrimaryInformationLabel = [MEMORY[0x277D74300] aa_fontForPrimaryInformationLabel];
  [(UILabel *)v46 setFont:aa_fontForPrimaryInformationLabel];

  [(UIView *)self->_contentView addSubview:self->_emailLabel];
  v48 = [MEMORY[0x277D75220] buttonWithType:1];
  continueButton = self->_continueButton;
  self->_continueButton = v48;

  v50 = self->_continueButton;
  titleForContinuebutton = [(FAConfirmIdentityViewController *)self titleForContinuebutton];
  [(UIButton *)v50 setTitle:titleForContinuebutton forState:0];

  v52 = self->_continueButton;
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [(UIButton *)v52 setTintColor:systemBlueColor];

  titleLabel = [(UIButton *)self->_continueButton titleLabel];
  aa_fontForLargeButton = [MEMORY[0x277D74300] aa_fontForLargeButton];
  [titleLabel setFont:aa_fontForLargeButton];

  titleLabel2 = [(UIButton *)self->_continueButton titleLabel];
  [titleLabel2 setNumberOfLines:0];

  titleLabel3 = [(UIButton *)self->_continueButton titleLabel];
  [titleLabel3 setTextAlignment:1];

  [(UIButton *)self->_continueButton addTarget:self action:sel_continueButtonWasTapped_ forControlEvents:64];
  [(UIView *)self->_contentView addSubview:self->_continueButton];
  v58 = [MEMORY[0x277D75220] buttonWithType:1];
  useDifferentIDButton = self->_useDifferentIDButton;
  self->_useDifferentIDButton = v58;

  v60 = MEMORY[0x277CCACA8];
  v61 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v62 = [v61 localizedStringForKey:@"FAMILY_SETUP_USE_DIFFERENT_ID_BUTTON" value:&stru_282D9AA68 table:@"Localizable"];
  aa_firstName = [(ACAccount *)self->_appleAccount aa_firstName];
  v64 = [v60 stringWithFormat:v62, aa_firstName];

  [(UIButton *)self->_useDifferentIDButton setTitle:v64 forState:0];
  v65 = self->_useDifferentIDButton;
  systemBlueColor2 = [MEMORY[0x277D75348] systemBlueColor];
  [(UIButton *)v65 setTintColor:systemBlueColor2];

  titleLabel4 = [(UIButton *)self->_useDifferentIDButton titleLabel];
  aa_fontForPrimaryInformationLabel2 = [MEMORY[0x277D74300] aa_fontForPrimaryInformationLabel];
  [titleLabel4 setFont:aa_fontForPrimaryInformationLabel2];

  titleLabel5 = [(UIButton *)self->_useDifferentIDButton titleLabel];
  [titleLabel5 setNumberOfLines:0];

  titleLabel6 = [(UIButton *)self->_useDifferentIDButton titleLabel];
  [titleLabel6 setTextAlignment:1];

  [(UIButton *)self->_useDifferentIDButton addTarget:self action:sel__useDifferentIDButtonWasTapped_ forControlEvents:64];
  [(UIView *)self->_contentView addSubview:self->_useDifferentIDButton];
}

- (void)viewWillLayoutSubviews
{
  v82.receiver = self;
  v82.super_class = FAConfirmIdentityViewController;
  [(FAConfirmIdentityViewController *)&v82 viewWillLayoutSubviews];
  view = [(FAConfirmIdentityViewController *)self view];
  [view frame];
  v5 = v4;
  v81 = v6;

  [(UILabel *)self->_titleLabel frame];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v9 = 44.0;
  }

  else
  {
    v9 = 14.0;
  }

  UIRoundToViewScale();
  v11 = v10;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v14 = 28.0;
  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v14 = 88.0;
  }

  v15 = v5 - v14;
  [(UILabel *)self->_titleLabel sizeThatFits:v5 - v14, 0.0];
  v17 = v16;
  [(UILabel *)self->_titleLabel setFrame:v9, v11, v15, v16];
  [(UILabel *)self->_descriptionLabel frame];
  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

  if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v20 = 51.0;
  }

  else
  {
    v20 = 21.0;
  }

  UIRoundToViewScale();
  v22 = v11 + v17 + v21;
  currentDevice4 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

  if ((userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v25 = 88.0;
  }

  else
  {
    v25 = 28.0;
  }

  v26 = v5 - v25 + -14.0;
  text = [(UILabel *)self->_descriptionLabel text];
  [(FAConfirmIdentityViewController *)self _heightForText:text width:v26];
  v29 = v28;

  [(UILabel *)self->_descriptionLabel setFrame:v20, v22, v26, v29];
  [(UIView *)self->_profilePhotoView frame];
  UIRoundToViewScale();
  v31 = v22 + v29 + v30;
  [(UIView *)self->_profilePhotoView setFrame:(v5 + -100.0) * 0.5, v31, 100.0, 100.0];
  [(UILabel *)self->_nameLabel sizeToFit];
  [(UILabel *)self->_nameLabel frame];
  v33 = v32;
  currentDevice5 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom5 = [currentDevice5 userInterfaceIdiom];

  if ((userInterfaceIdiom5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v36 = 44.0;
  }

  else
  {
    v36 = 14.0;
  }

  v37 = v31 + 100.0 + 10.0;
  currentDevice6 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom6 = [currentDevice6 userInterfaceIdiom];

  v40 = 28.0;
  if ((userInterfaceIdiom6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v40 = 88.0;
  }

  [(UILabel *)self->_nameLabel setFrame:v36, v31 + 100.0 + 10.0, v5 - v40, v33];
  [(UILabel *)self->_emailLabel sizeToFit];
  [(UILabel *)self->_emailLabel frame];
  v42 = v41;
  currentDevice7 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom7 = [currentDevice7 userInterfaceIdiom];

  if ((userInterfaceIdiom7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v45 = 44.0;
  }

  else
  {
    v45 = 14.0;
  }

  UIRoundToViewScale();
  v47 = v37 + v33 - v46;
  currentDevice8 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom8 = [currentDevice8 userInterfaceIdiom];

  if ((userInterfaceIdiom8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v50 = 88.0;
  }

  else
  {
    v50 = 28.0;
  }

  [(UILabel *)self->_emailLabel setFrame:v45, v47, v5 - v50, v42];
  [(UIButton *)self->_continueButton sizeToFit];
  [(UIButton *)self->_continueButton frame];
  v52 = v51;
  currentDevice9 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom9 = [currentDevice9 userInterfaceIdiom];

  if ((userInterfaceIdiom9 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v55 = 44.0;
  }

  else
  {
    v55 = 14.0;
  }

  UIRoundToViewScale();
  v57 = v42 + v47 + v56;
  currentDevice10 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom10 = [currentDevice10 userInterfaceIdiom];

  if ((userInterfaceIdiom10 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v60 = 88.0;
  }

  else
  {
    v60 = 28.0;
  }

  [(UIButton *)self->_continueButton setFrame:v55, v57, v5 - v60, v52];
  navigationController = [(FAConfirmIdentityViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar size];
  v64 = v63;

  [(UIButton *)self->_useDifferentIDButton frame];
  currentDevice11 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom11 = [currentDevice11 userInterfaceIdiom];

  v67 = userInterfaceIdiom11 & 0xFFFFFFFFFFFFFFFBLL;
  currentDevice12 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom12 = [currentDevice12 userInterfaceIdiom];

  v70 = userInterfaceIdiom12 & 0xFFFFFFFFFFFFFFFBLL;
  titleLabel = [(UIButton *)self->_useDifferentIDButton titleLabel];
  text2 = [titleLabel text];
  [(UIButton *)self->_useDifferentIDButton size];
  [(FAConfirmIdentityViewController *)self _heightForText:text2 width:?];
  v74 = v73;

  UIRoundToViewScale();
  v76 = v81 - v74 - v11 - v64 - v75;
  if (v76 >= v52 + v57)
  {
    v77 = v76;
  }

  else
  {
    v77 = v52 + v57 + 30.0;
  }

  v78 = 28.0;
  if (v70 == 1)
  {
    v78 = 88.0;
  }

  v79 = v5 - v78;
  v80 = 14.0;
  if (v67 == 1)
  {
    v80 = 44.0;
  }

  [(UIButton *)self->_useDifferentIDButton setFrame:v80, v77, v79, v74];
  [(UIView *)self->_contentView frame];
  [(UIView *)self->_contentView setFrame:?];
  [(UIScrollView *)self->_scrollView setContentSize:v5, v74 + v77 + 20.0];
}

- (id)pageTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"FAMILY_CONFIRM_ACCOUNT_TITLE" value:&stru_282D9AA68 table:@"Localizable"];

  return v3;
}

- (id)instructions
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"FAMILY_CONFIRM_ACCOUNT_MESSAGE" value:&stru_282D9AA68 table:@"Localizable"];

  return v3;
}

- (id)titleForContinuebutton
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"FAMILY_CONFIRM_ACCOUNT_BUTTON" value:&stru_282D9AA68 table:@"Localizable"];

  return v3;
}

- (double)_heightForText:(id)text width:(double)width
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277D740A8];
  v5 = MEMORY[0x277D74300];
  textCopy = text;
  aa_fontForLargerInformationLabel = [v5 aa_fontForLargerInformationLabel];
  v14[0] = aa_fontForLargerInformationLabel;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [textCopy boundingRectWithSize:1 options:v8 attributes:0 context:{width, 1.79769313e308}];
  v10 = v9;

  v11 = *MEMORY[0x277D85DE8];
  return ceil(v10);
}

- (void)_updateViewsInPhotoArea:(id)area
{
  areaCopy = area;
  [(UIView *)self->_profilePhotoView removeFromSuperview];
  if (areaCopy)
  {
    v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:areaCopy];
    profilePhotoView = self->_profilePhotoView;
    self->_profilePhotoView = v4;

    v6 = self->_profilePhotoView;
    v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__photoWasTapped_];
    [(UIView *)v6 addGestureRecognizer:v7];
  }

  else
  {
    v8 = [[FAAddPhotoView alloc] initWithTarget:self action:sel__addPhotoButtonWasTapped_];
    v7 = self->_profilePhotoView;
    self->_profilePhotoView = &v8->super;
  }

  [(UIView *)self->_contentView addSubview:self->_profilePhotoView];
  view = [(FAConfirmIdentityViewController *)self view];
  [view setNeedsLayout];
}

- (void)continueButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  newProfilePicture = self->_newProfilePicture;
  if (newProfilePicture)
  {
    [(AAUIProfilePictureStore *)self->_profilePictureStore setProfilePictureForAccountOwner:newProfilePicture cropRect:self->_newProfilePictureCropRect];
    v5 = self->_newProfilePicture;
    self->_newProfilePicture = 0;

    newProfilePictureCropRect = self->_newProfilePictureCropRect;
    self->_newProfilePictureCropRect = 0;
  }

  delegate = [(FAConfirmIdentityViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(FAConfirmIdentityViewController *)self delegate];
    [delegate2 confirmIdentityViewController:self didCompleteWithSuccess:1];
  }
}

- (void)_useDifferentIDButtonWasTapped:(id)tapped
{
  v5 = objc_alloc_init(FAExplainAppleIDViewController);
  [(FAExplainAppleIDViewController *)v5 setShouldShowInviteeInstructions:[(FAConfirmIdentityViewController *)self shouldShowInviteeInstructions]];
  navigationController = [(FAConfirmIdentityViewController *)self navigationController];
  [navigationController pushViewController:v5 animated:1];
}

- (void)_showImagePickerForAvailableSources
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__FAConfirmIdentityViewController__showImagePickerForAvailableSources__block_invoke;
  v4[3] = &unk_2782F3168;
  v4[4] = self;
  v3 = [MEMORY[0x277CECA68] alertControllerWithSelectionHandler:v4];
  [(FAConfirmIdentityViewController *)self presentViewController:v3 animated:1 completion:0];
}

void __70__FAConfirmIdentityViewController__showImagePickerForAvailableSources__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  if (v9)
  {
    objc_storeStrong((*(a1 + 32) + 1080), a2);
    objc_storeStrong((*(a1 + 32) + 1088), a3);
    v7 = *(a1 + 32);
    v8 = [v7[134] profilePictureForPicture:v9];
    [v7 _updateViewsInPhotoArea:v8];
  }
}

- (void)_updateFonts
{
  titleLabel = self->_titleLabel;
  aa_fontForPageTitle = [MEMORY[0x277D74300] aa_fontForPageTitle];
  [(UILabel *)titleLabel setFont:aa_fontForPageTitle];

  descriptionLabel = self->_descriptionLabel;
  aa_fontForLargerInformationLabel = [MEMORY[0x277D74300] aa_fontForLargerInformationLabel];
  [(UILabel *)descriptionLabel setFont:aa_fontForLargerInformationLabel];

  nameLabel = self->_nameLabel;
  v8 = MEMORY[0x277D74300];
  v9 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  [v9 scaledValueForValue:27.0];
  v10 = [v8 _lightSystemFontOfSize:?];
  [(UILabel *)nameLabel setFont:v10];

  emailLabel = self->_emailLabel;
  aa_fontForPrimaryInformationLabel = [MEMORY[0x277D74300] aa_fontForPrimaryInformationLabel];
  [(UILabel *)emailLabel setFont:aa_fontForPrimaryInformationLabel];

  titleLabel = [(UIButton *)self->_continueButton titleLabel];
  aa_fontForLargeButton = [MEMORY[0x277D74300] aa_fontForLargeButton];
  [titleLabel setFont:aa_fontForLargeButton];

  titleLabel2 = [(UIButton *)self->_useDifferentIDButton titleLabel];
  aa_fontForPrimaryInformationLabel2 = [MEMORY[0x277D74300] aa_fontForPrimaryInformationLabel];
  [titleLabel2 setFont:aa_fontForPrimaryInformationLabel2];

  view = [(FAConfirmIdentityViewController *)self view];
  [view setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = FAConfirmIdentityViewController;
  changeCopy = change;
  [(FAConfirmIdentityViewController *)&v9 traitCollectionDidChange:changeCopy];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];

  traitCollection = [(FAConfirmIdentityViewController *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
  v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

  if ((v8 & 1) == 0)
  {
    [(FAConfirmIdentityViewController *)self _updateFonts];
  }
}

- (FAConfirmIdentityViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end