@interface FAStandardInviteView
- (FAStandardInviteView)initWithInvite:(id)invite hideLocationSharing:(BOOL)sharing;
- (double)_heightForText:(id)text width:(double)width;
- (double)_heightForTitle:(id)title width:(double)width;
- (double)desiredHeightForWidth:(double)width;
- (id)_labelWithCenteredText:(id)text;
- (void)layoutSubviews;
@end

@implementation FAStandardInviteView

- (FAStandardInviteView)initWithInvite:(id)invite hideLocationSharing:(BOOL)sharing
{
  sharingCopy = sharing;
  inviteCopy = invite;
  v40.receiver = self;
  v40.super_class = FAStandardInviteView;
  v7 = *MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v10 = *(MEMORY[0x277CBF3A0] + 24);
  v11 = [(FAStandardInviteView *)&v40 initWithFrame:*MEMORY[0x277CBF3A0], v8, v9, v10];
  if (v11)
  {
    v39 = sharingCopy;
    organizerFirstName = [inviteCopy organizerFirstName];
    organizerLastName = [inviteCopy organizerLastName];
    v14 = AAUICopyCompositeName();
    v15 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    titleLabel = v11->_titleLabel;
    v11->_titleLabel = v15;

    v17 = v11->_titleLabel;
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"FAMILY_INVITATION_PAGE_TITLE" value:&stru_282D9AA68 table:@"Localizable"];
    [(UILabel *)v17 setText:v19];

    [(UILabel *)v11->_titleLabel setTextAlignment:1];
    [(UILabel *)v11->_titleLabel setNumberOfLines:0];
    v20 = v11->_titleLabel;
    aa_fontForPageTitle = [MEMORY[0x277D74300] aa_fontForPageTitle];
    [(UILabel *)v20 setFont:aa_fontForPageTitle];

    [(FAStandardInviteView *)v11 addSubview:v11->_titleLabel];
    v22 = MEMORY[0x277D755B8];
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v24 = [v22 imageNamed:@"FamilySharingLogo" inBundle:v23];

    v25 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v24];
    familySharingLogo = v11->_familySharingLogo;
    v11->_familySharingLogo = v25;

    [(FAStandardInviteView *)v11 addSubview:v11->_familySharingLogo];
    organizerEmail = [inviteCopy organizerEmail];

    v28 = MEMORY[0x277CCACA8];
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = v29;
    if (organizerEmail)
    {
      v31 = [v29 localizedStringForKey:@"FAMILY_INVITATION_DESCRIPTION_WITH_EMAIL" value:&stru_282D9AA68 table:@"Localizable"];
      organizerEmail2 = [inviteCopy organizerEmail];
      v33 = [v28 stringWithFormat:v31, v14, organizerEmail2];
    }

    else
    {
      v31 = [v29 localizedStringForKey:@"FAMILY_INVITATION_DESCRIPTION" value:&stru_282D9AA68 table:@"Localizable"];
      v33 = [v28 stringWithFormat:v31, v14];
    }

    v34 = [(FAStandardInviteView *)v11 _labelWithCenteredText:v33];
    inviteHeaderLabel = v11->_inviteHeaderLabel;
    v11->_inviteHeaderLabel = v34;

    [(FAStandardInviteView *)v11 addSubview:v11->_inviteHeaderLabel];
    v36 = [[FAFamilySharingFeaturesView alloc] initWithContext:1 hideLocationSharing:v39];
    featuresView = v11->_featuresView;
    v11->_featuresView = v36;

    [(FAStandardInviteView *)v11 addSubview:v11->_featuresView];
  }

  return v11;
}

- (void)layoutSubviews
{
  v39.receiver = self;
  v39.super_class = FAStandardInviteView;
  [(FAStandardInviteView *)&v39 layoutSubviews];
  [(FAStandardInviteView *)self frame];
  v4 = v3;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = 88.0;
  }

  else
  {
    v7 = 28.0;
  }

  v8 = v4 - v7;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v11 = 56.0;
  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v11 = 176.0;
  }

  v12 = v4 - v11;
  [(UILabel *)self->_titleLabel frame];
  v14 = v13;
  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

  if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v17 = 44.0;
  }

  else
  {
    v17 = 14.0;
  }

  text = [(UILabel *)self->_titleLabel text];
  [(FAStandardInviteView *)self _heightForTitle:text width:v8];
  v20 = v19;

  [(UILabel *)self->_titleLabel setFrame:v17, v14, v8, v20];
  [(UIImageView *)self->_familySharingLogo sizeToFit];
  [(UIImageView *)self->_familySharingLogo frame];
  v22 = v21;
  v24 = v23;
  [(UIImageView *)self->_familySharingLogo size];
  UIRoundToViewScale();
  v26 = v25;
  UIRoundToViewScale();
  v28 = v14 + v20 + v27;
  [(UIImageView *)self->_familySharingLogo setFrame:v26, v28, v22, v24];
  [(UILabel *)self->_inviteHeaderLabel frame];
  currentDevice4 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

  if ((userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v31 = 88.0;
  }

  else
  {
    v31 = 28.0;
  }

  v32 = v24 + v28 + 29.0;
  text2 = [(UILabel *)self->_inviteHeaderLabel text];
  [(FAStandardInviteView *)self _heightForText:text2 width:v12];
  v35 = v34;

  [(UILabel *)self->_inviteHeaderLabel setFrame:v31, v32, v12, v35];
  [(FAFamilySharingFeaturesView *)self->_featuresView frame];
  [(FAStandardInviteView *)self frame];
  v37 = v36 + -60.0;
  [(FAFamilySharingFeaturesView *)self->_featuresView systemLayoutSizeFittingSize:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
  [(FAFamilySharingFeaturesView *)self->_featuresView setFrame:30.0, v32 + v35 + 18.0, v37, v38];
}

- (double)desiredHeightForWidth:(double)width
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v7 = 88.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v7 = 28.0;
  }

  v8 = width - v7;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v11 = 56.0;
  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v11 = 176.0;
  }

  v12 = width - v11;
  text = [(UILabel *)self->_titleLabel text];
  [(FAStandardInviteView *)self _heightForTitle:text width:v8];
  v15 = v14;

  [(UIImageView *)self->_familySharingLogo size];
  v17 = v16;
  text2 = [(UILabel *)self->_inviteHeaderLabel text];
  [(FAStandardInviteView *)self _heightForText:text2 width:v12];
  v20 = v19;

  [(FAFamilySharingFeaturesView *)self->_featuresView systemLayoutSizeFittingSize:width + -60.0, *(MEMORY[0x277D76C78] + 8)];
  v22 = v15 + v17 + v20 + v21;
  UIRoundToViewScale();
  return v23 + v22 + 18.0 + 29.0 + 10.0;
}

- (id)_labelWithCenteredText:(id)text
{
  v3 = MEMORY[0x277D756B8];
  textCopy = text;
  v5 = [v3 alloc];
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v6 setText:textCopy];

  [v6 setTextAlignment:1];
  [v6 setNumberOfLines:0];
  v7 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
  [v6 setFont:v7];

  return v6;
}

- (double)_heightForText:(id)text width:(double)width
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277D740A8];
  v5 = MEMORY[0x277D74300];
  textCopy = text;
  v7 = [v5 systemFontOfSize:16.0];
  v14[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [textCopy boundingRectWithSize:1 options:v8 attributes:0 context:{width, 1.79769313e308}];
  v10 = v9;

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (double)_heightForTitle:(id)title width:(double)width
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277D740A8];
  v5 = MEMORY[0x277D74300];
  titleCopy = title;
  aa_fontForPageTitle = [v5 aa_fontForPageTitle];
  v14[0] = aa_fontForPageTitle;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [titleCopy boundingRectWithSize:1 options:v8 attributes:0 context:{width, 1.79769313e308}];
  v10 = v9;

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

@end