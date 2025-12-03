@interface FAChildTransferInviteView
- (FAChildTransferInviteView)initWithInvite:(id)invite;
- (double)_heightForText:(id)text width:(double)width;
- (double)_heightForTitle:(id)title width:(double)width;
- (double)desiredHeightForWidth:(double)width;
- (id)_labelWithCenteredText:(id)text;
- (void)layoutSubviews;
@end

@implementation FAChildTransferInviteView

- (FAChildTransferInviteView)initWithInvite:(id)invite
{
  inviteCopy = invite;
  v38.receiver = self;
  v38.super_class = FAChildTransferInviteView;
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [(FAChildTransferInviteView *)&v38 initWithFrame:*MEMORY[0x277CBF3A0], v6, v7, v8];
  if (v9)
  {
    organizerFirstName = [inviteCopy organizerFirstName];
    organizerLastName = [inviteCopy organizerLastName];
    v12 = AAUICopyCompositeName();

    childFirstName = [inviteCopy childFirstName];
    childLastName = [inviteCopy childLastName];
    v15 = AAUICopyCompositeName();

    v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    titleLabel = v9->_titleLabel;
    v9->_titleLabel = v16;

    v18 = v9->_titleLabel;
    v19 = MEMORY[0x277CCACA8];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"FAMILY_CHILD_TRANSFER_TITLE" value:&stru_282D9AA68 table:@"Localizable"];
    v22 = [v19 stringWithFormat:v21, v15];
    [(UILabel *)v18 setText:v22];

    [(UILabel *)v9->_titleLabel setTextAlignment:1];
    [(UILabel *)v9->_titleLabel setNumberOfLines:0];
    v23 = v9->_titleLabel;
    aa_fontForPageTitle = [MEMORY[0x277D74300] aa_fontForPageTitle];
    [(UILabel *)v23 setFont:aa_fontForPageTitle];

    [(FAChildTransferInviteView *)v9 addSubview:v9->_titleLabel];
    v25 = MEMORY[0x277CCACA8];
    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"FAMILY_CHILD_TRANSFER_MESSAGE" value:&stru_282D9AA68 table:@"Localizable"];
    v28 = [v25 stringWithFormat:v27, v12, v15];

    v29 = [(FAChildTransferInviteView *)v9 _labelWithCenteredText:v28];
    primaryLabel = v9->_primaryLabel;
    v9->_primaryLabel = v29;

    [(FAChildTransferInviteView *)v9 addSubview:v9->_primaryLabel];
    v31 = MEMORY[0x277CCACA8];
    v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v33 = [v32 localizedStringForKey:@"FAMILY_CHILD_TRANSFER_DETAILS" value:&stru_282D9AA68 table:@"Localizable"];
    v34 = [v31 stringWithFormat:v33, v15, v12, v15];

    v35 = [(FAChildTransferInviteView *)v9 _labelWithCenteredText:v34];
    detailsLabel = v9->_detailsLabel;
    v9->_detailsLabel = v35;

    [(FAChildTransferInviteView *)v9 addSubview:v9->_detailsLabel];
  }

  return v9;
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = FAChildTransferInviteView;
  [(FAChildTransferInviteView *)&v33 layoutSubviews];
  [(FAChildTransferInviteView *)self frame];
  v4 = v3;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v7 = 56.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = 176.0;
  }

  v8 = v4 - v7;
  [(UILabel *)self->_titleLabel frame];
  v10 = v9;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v13 = 88.0;
  }

  else
  {
    v13 = 28.0;
  }

  text = [(UILabel *)self->_titleLabel text];
  [(FAChildTransferInviteView *)self _heightForTitle:text width:v8];
  v16 = v15;

  [(UILabel *)self->_titleLabel setFrame:v13, v10, v8, v16];
  [(UILabel *)self->_primaryLabel frame];
  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

  if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v19 = 88.0;
  }

  else
  {
    v19 = 28.0;
  }

  UIRoundToViewScale();
  v21 = v10 + v16 + v20;
  text2 = [(UILabel *)self->_primaryLabel text];
  [(FAChildTransferInviteView *)self _heightForText:text2 width:v8];
  v24 = v23;

  [(UILabel *)self->_primaryLabel setFrame:v19, v21, v8, v24];
  [(UILabel *)self->_detailsLabel frame];
  currentDevice4 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

  if ((userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v27 = 88.0;
  }

  else
  {
    v27 = 28.0;
  }

  UIRoundToViewScale();
  v29 = v21 + v24 + v28;
  text3 = [(UILabel *)self->_detailsLabel text];
  [(FAChildTransferInviteView *)self _heightForText:text3 width:v8];
  v32 = v31;

  [(UILabel *)self->_detailsLabel setFrame:v27, v29, v8, v32];
}

- (double)desiredHeightForWidth:(double)width
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v7 = 56.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = 176.0;
  }

  v8 = width - v7;
  text = [(UILabel *)self->_titleLabel text];
  [(FAChildTransferInviteView *)self _heightForTitle:text width:v8];
  v11 = v10;

  text2 = [(UILabel *)self->_primaryLabel text];
  [(FAChildTransferInviteView *)self _heightForText:text2 width:v8];
  v14 = v13;

  text3 = [(UILabel *)self->_detailsLabel text];
  [(FAChildTransferInviteView *)self _heightForText:text3 width:v8];
  v17 = v16;

  UIRoundToViewScale();
  return v11 + v14 + v17 + v18 * 2.0;
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
  aa_fontForPrimaryInformationLabel = [MEMORY[0x277D74300] aa_fontForPrimaryInformationLabel];
  [v6 setFont:aa_fontForPrimaryInformationLabel];

  return v6;
}

- (double)_heightForText:(id)text width:(double)width
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277D740A8];
  v5 = MEMORY[0x277D74300];
  textCopy = text;
  aa_fontForPrimaryInformationLabel = [v5 aa_fontForPrimaryInformationLabel];
  v14[0] = aa_fontForPrimaryInformationLabel;
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