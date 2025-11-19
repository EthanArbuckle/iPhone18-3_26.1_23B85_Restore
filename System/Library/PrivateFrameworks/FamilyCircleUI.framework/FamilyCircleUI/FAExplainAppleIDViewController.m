@interface FAExplainAppleIDViewController
- (double)_heightForText:(id)a3 constrainedToWidth:(double)a4;
- (void)_updateFonts;
- (void)loadView;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation FAExplainAppleIDViewController

- (void)loadView
{
  v37.receiver = self;
  v37.super_class = FAExplainAppleIDViewController;
  [(FAExplainAppleIDViewController *)&v37 loadView];
  v3 = objc_alloc(MEMORY[0x277D759D8]);
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];
  scrollView = self->_scrollView;
  self->_scrollView = v5;

  v7 = self->_scrollView;
  v8 = [MEMORY[0x277D75348] whiteColor];
  [(UIScrollView *)v7 setBackgroundColor:v8];

  [(FAExplainAppleIDViewController *)self setView:self->_scrollView];
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
  v20 = @"FAMILY_SETUP_YOUR_APPLE_ID_TITLE";
  if (([@"FAMILY_SETUP_YOUR_APPLE_ID_TITLE" containsString:@"REBRAND"] & 1) != 0 || !_os_feature_enabled_impl())
  {
    v21 = 0;
  }

  else
  {
    v20 = [@"FAMILY_SETUP_YOUR_APPLE_ID_TITLE" stringByAppendingString:@"_REBRAND"];
    v21 = 1;
  }

  v22 = [v19 localizedStringForKey:v20 value:&stru_282D9AA68 table:@"Localizable"];
  [(UILabel *)v18 setText:v22];

  if (v21)
  {
  }

  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  v23 = self->_titleLabel;
  v24 = [MEMORY[0x277D74300] aa_fontForPageTitle];
  [(UILabel *)v23 setFont:v24];

  [(UIView *)self->_contentView addSubview:self->_titleLabel];
  v25 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v25;

  shouldShowInviteeInstructions = self->_shouldShowInviteeInstructions;
  v28 = self->_descriptionLabel;
  v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (shouldShowInviteeInstructions)
  {
    v30 = @"FAMILY_SETUP_APPLE_ID_EXPLANATION_FOR_INVITEE";
    if (([@"FAMILY_SETUP_APPLE_ID_EXPLANATION_FOR_INVITEE" containsString:@"REBRAND"] & 1) != 0 || !_os_feature_enabled_impl())
    {
      v31 = 0;
    }

    else
    {
      v30 = [@"FAMILY_SETUP_APPLE_ID_EXPLANATION_FOR_INVITEE" stringByAppendingString:@"_REBRAND"];
      v31 = 1;
    }

    v33 = [v29 localizedStringForKey:v30 value:&stru_282D9AA68 table:@"Localizable"];
    [(UILabel *)v28 setText:v33];

    if ((v31 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:

    goto LABEL_20;
  }

  v30 = @"FAMILY_SETUP_APPLE_ID_EXPLANATION";
  if (([@"FAMILY_SETUP_APPLE_ID_EXPLANATION" containsString:@"REBRAND"] & 1) != 0 || !_os_feature_enabled_impl())
  {
    v32 = 0;
  }

  else
  {
    v30 = [@"FAMILY_SETUP_APPLE_ID_EXPLANATION" stringByAppendingString:@"_REBRAND"];
    v32 = 1;
  }

  v34 = [v29 localizedStringForKey:v30 value:&stru_282D9AA68 table:@"Localizable"];
  [(UILabel *)v28 setText:v34];

  if (v32)
  {
    goto LABEL_19;
  }

LABEL_20:

  [(UILabel *)self->_descriptionLabel setTextAlignment:1];
  [(UILabel *)self->_descriptionLabel setNumberOfLines:0];
  v35 = self->_descriptionLabel;
  v36 = [MEMORY[0x277D74300] aa_fontForPrimaryInformationLabel];
  [(UILabel *)v35 setFont:v36];

  [(UIView *)self->_contentView addSubview:self->_descriptionLabel];
}

- (void)viewWillLayoutSubviews
{
  v28.receiver = self;
  v28.super_class = FAExplainAppleIDViewController;
  [(FAExplainAppleIDViewController *)&v28 viewWillLayoutSubviews];
  v3 = [(FAExplainAppleIDViewController *)self view];
  [v3 frame];
  v5 = v4;

  [(UILabel *)self->_titleLabel frame];
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v8 = 44.0;
  }

  else
  {
    v8 = 14.0;
  }

  UIRoundToViewScale();
  v10 = v9;
  v11 = [MEMORY[0x277D75418] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if ((v12 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v13 = 88.0;
  }

  else
  {
    v13 = 28.0;
  }

  v14 = v5 - v13;
  [(UILabel *)self->_titleLabel sizeThatFits:v5 - v13, 0.0];
  v16 = v15;
  [(UILabel *)self->_titleLabel setFrame:v8, v10, v14, v15];
  [(UILabel *)self->_descriptionLabel frame];
  v17 = [MEMORY[0x277D75418] currentDevice];
  v18 = [v17 userInterfaceIdiom];

  if ((v18 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v19 = 44.0;
  }

  else
  {
    v19 = 14.0;
  }

  v20 = v10 + v16 + 20.0;
  v21 = [MEMORY[0x277D75418] currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if ((v22 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v23 = 88.0;
  }

  else
  {
    v23 = 28.0;
  }

  v24 = v5 - v23;
  v25 = [(UILabel *)self->_descriptionLabel text];
  [(FAExplainAppleIDViewController *)self _heightForText:v25 constrainedToWidth:v24];
  v27 = v26;

  [(UILabel *)self->_descriptionLabel setFrame:v19, v20, v24, v27];
}

- (double)_heightForText:(id)a3 constrainedToWidth:(double)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277D740A8];
  v5 = MEMORY[0x277D74300];
  v6 = a3;
  v7 = [v5 aa_fontForPrimaryInformationLabel];
  v14[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v6 boundingRectWithSize:1 options:v8 attributes:0 context:{a4, 1.79769313e308}];
  v10 = v9;

  v11 = *MEMORY[0x277D85DE8];
  return ceil(v10);
}

- (void)_updateFonts
{
  titleLabel = self->_titleLabel;
  v4 = [MEMORY[0x277D74300] aa_fontForPageTitle];
  [(UILabel *)titleLabel setFont:v4];

  descriptionLabel = self->_descriptionLabel;
  v6 = [MEMORY[0x277D74300] aa_fontForPrimaryInformationLabel];
  [(UILabel *)descriptionLabel setFont:v6];

  v7 = [(FAExplainAppleIDViewController *)self view];
  [v7 setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = FAExplainAppleIDViewController;
  v4 = a3;
  [(FAExplainAppleIDViewController *)&v9 traitCollectionDidChange:v4];
  v5 = [v4 preferredContentSizeCategory];

  v6 = [(FAExplainAppleIDViewController *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = [v5 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    [(FAExplainAppleIDViewController *)self _updateFonts];
  }
}

@end