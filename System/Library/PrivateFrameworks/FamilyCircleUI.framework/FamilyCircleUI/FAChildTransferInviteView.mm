@interface FAChildTransferInviteView
- (FAChildTransferInviteView)initWithInvite:(id)a3;
- (double)_heightForText:(id)a3 width:(double)a4;
- (double)_heightForTitle:(id)a3 width:(double)a4;
- (double)desiredHeightForWidth:(double)a3;
- (id)_labelWithCenteredText:(id)a3;
- (void)layoutSubviews;
@end

@implementation FAChildTransferInviteView

- (FAChildTransferInviteView)initWithInvite:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = FAChildTransferInviteView;
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [(FAChildTransferInviteView *)&v38 initWithFrame:*MEMORY[0x277CBF3A0], v6, v7, v8];
  if (v9)
  {
    v10 = [v4 organizerFirstName];
    v11 = [v4 organizerLastName];
    v12 = AAUICopyCompositeName();

    v13 = [v4 childFirstName];
    v14 = [v4 childLastName];
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
    v24 = [MEMORY[0x277D74300] aa_fontForPageTitle];
    [(UILabel *)v23 setFont:v24];

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
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = 56.0;
  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = 176.0;
  }

  v8 = v4 - v7;
  [(UILabel *)self->_titleLabel frame];
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

  v14 = [(UILabel *)self->_titleLabel text];
  [(FAChildTransferInviteView *)self _heightForTitle:v14 width:v8];
  v16 = v15;

  [(UILabel *)self->_titleLabel setFrame:v13, v10, v8, v16];
  [(UILabel *)self->_primaryLabel frame];
  v17 = [MEMORY[0x277D75418] currentDevice];
  v18 = [v17 userInterfaceIdiom];

  if ((v18 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v19 = 88.0;
  }

  else
  {
    v19 = 28.0;
  }

  UIRoundToViewScale();
  v21 = v10 + v16 + v20;
  v22 = [(UILabel *)self->_primaryLabel text];
  [(FAChildTransferInviteView *)self _heightForText:v22 width:v8];
  v24 = v23;

  [(UILabel *)self->_primaryLabel setFrame:v19, v21, v8, v24];
  [(UILabel *)self->_detailsLabel frame];
  v25 = [MEMORY[0x277D75418] currentDevice];
  v26 = [v25 userInterfaceIdiom];

  if ((v26 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v27 = 88.0;
  }

  else
  {
    v27 = 28.0;
  }

  UIRoundToViewScale();
  v29 = v21 + v24 + v28;
  v30 = [(UILabel *)self->_detailsLabel text];
  [(FAChildTransferInviteView *)self _heightForText:v30 width:v8];
  v32 = v31;

  [(UILabel *)self->_detailsLabel setFrame:v27, v29, v8, v32];
}

- (double)desiredHeightForWidth:(double)a3
{
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = 56.0;
  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = 176.0;
  }

  v8 = a3 - v7;
  v9 = [(UILabel *)self->_titleLabel text];
  [(FAChildTransferInviteView *)self _heightForTitle:v9 width:v8];
  v11 = v10;

  v12 = [(UILabel *)self->_primaryLabel text];
  [(FAChildTransferInviteView *)self _heightForText:v12 width:v8];
  v14 = v13;

  v15 = [(UILabel *)self->_detailsLabel text];
  [(FAChildTransferInviteView *)self _heightForText:v15 width:v8];
  v17 = v16;

  UIRoundToViewScale();
  return v11 + v14 + v17 + v18 * 2.0;
}

- (id)_labelWithCenteredText:(id)a3
{
  v3 = MEMORY[0x277D756B8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v6 setText:v4];

  [v6 setTextAlignment:1];
  [v6 setNumberOfLines:0];
  v7 = [MEMORY[0x277D74300] aa_fontForPrimaryInformationLabel];
  [v6 setFont:v7];

  return v6;
}

- (double)_heightForText:(id)a3 width:(double)a4
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
  return v10;
}

- (double)_heightForTitle:(id)a3 width:(double)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277D740A8];
  v5 = MEMORY[0x277D74300];
  v6 = a3;
  v7 = [v5 aa_fontForPageTitle];
  v14[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v6 boundingRectWithSize:1 options:v8 attributes:0 context:{a4, 1.79769313e308}];
  v10 = v9;

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

@end