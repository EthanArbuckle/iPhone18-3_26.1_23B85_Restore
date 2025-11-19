@interface ICInvitationViewController
- (ICInvitationViewController)init;
- (ICTextBackgroundView)backgroundView;
- (NSDirectionalEdgeInsets)backgroundInsets;
- (SWAttributionView)attributionView;
- (UIButton)largeViewButton;
- (UIButton)viewButton;
- (UIImageView)invitationImageView;
- (UILabel)subtitleLabel;
- (UILabel)titleLabel;
- (void)dealloc;
- (void)setHighlight:(id)a3;
- (void)setInvitation:(id)a3;
- (void)setShowsActivityIndicator:(BOOL)a3;
- (void)updateButtonConfiguration;
- (void)viewButtonDidTap:(id)a3;
- (void)viewDidLoad;
@end

@implementation ICInvitationViewController

- (ICInvitationViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [(ICInvitationViewController *)self initWithNibName:0 bundle:v3];

  return v4;
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = ICInvitationViewController;
  [(ICInvitationViewController *)&v28 viewDidLoad];
  v4 = [MEMORY[0x277D75348] ICBackgroundColor];
  v5 = [(ICInvitationViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [MEMORY[0x277D75348] ic_noteEditorBackgroundColor];
  v7 = [(ICInvitationViewController *)self backgroundView];
  [v7 setBackgroundColor:v6];

  v8 = MEMORY[0x277D755D0];
  v9 = [(ICInvitationViewController *)self invitationImageView];
  [v9 bounds];
  v10 = [v8 configurationWithPointSize:CGRectGetHeight(v29)];

  v11 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.down.message" withConfiguration:v10];
  v12 = [(ICInvitationViewController *)self invitationImageView];
  [v12 setImage:v11];

  v13 = [MEMORY[0x277D75418] ic_isVision];
  v14 = v13;
  if (v13)
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    v2 = [(ICInvitationViewController *)self invitationImageView];
    [v2 tintColor];
  }
  v15 = ;
  v16 = [(ICInvitationViewController *)self invitationImageView];
  [v16 setTintColor:v15];

  if ((v14 & 1) == 0)
  {

    v15 = v2;
  }

  v17 = [(ICInvitationViewController *)self titleLabel];
  [v17 setText:&stru_282757698];

  v18 = [MEMORY[0x277D75348] ic_noteEditorLabelColor];
  v19 = [(ICInvitationViewController *)self titleLabel];
  [v19 setTextColor:v18];

  v20 = [(ICInvitationViewController *)self subtitleLabel];
  [v20 setText:&stru_282757698];

  v21 = [MEMORY[0x277D75348] ic_noteEditorSecondaryLabelColor];
  v22 = [(ICInvitationViewController *)self subtitleLabel];
  [v22 setTextColor:v21];

  v23 = [(ICInvitationViewController *)self viewButton];
  [v23 _accessibilitySetIsSpeakThisElement:1];

  if ([MEMORY[0x277D75418] ic_isVision])
  {
    v24 = [(ICInvitationViewController *)self viewButton];
    [v24 setTitleColor:0 forState:0];

    v25 = [MEMORY[0x277D75230] ic_filledTintedButtonConfiguration];
    v26 = [(ICInvitationViewController *)self viewButton];
    [v26 setConfiguration:v25];
  }

  v27 = [(ICInvitationViewController *)self largeViewButton];
  [v27 setIsAccessibilityElement:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICInvitationViewController;
  [(ICNAViewController *)&v4 dealloc];
}

- (void)setInvitation:(id)a3
{
  objc_storeStrong(&self->_invitation, a3);
  v5 = a3;
  v6 = [v5 participantsInfoDescription];
  v7 = [(ICInvitationViewController *)self titleLabel];
  [v7 setText:v6];

  v8 = [v5 joinDescription];
  v9 = [(ICInvitationViewController *)self subtitleLabel];
  [v9 setText:v8];

  v10 = [v5 removeActionTitle];

  v11 = [(ICInvitationViewController *)self attributionView];
  [v11 setMenuTitleForHideAction:v10];

  [(ICInvitationViewController *)self updateButtonConfiguration];
}

- (void)setHighlight:(id)a3
{
  v29[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(ICInvitationViewController *)self attributionView];
  [v6 removeFromSuperview];

  objc_storeStrong(&self->_highlight, a3);
  if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x277CDC660]);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    if ([MEMORY[0x277D75418] ic_isVision])
    {
      v8 = [v7 traitOverrides];
      [v8 setUserInterfaceStyle:1];
    }

    [v7 setHighlight:v5];
    [v7 setDisplayContext:1];
    [v7 setHorizontalAlignment:2];
    v9 = [(ICInvitationViewController *)self invitation];
    [v9 removeActionTitle];
    v10 = v28 = v5;
    [v7 setMenuTitleForHideAction:v10];

    v11 = [(ICInvitationViewController *)self view];
    [v11 addSubview:v7];

    [(ICInvitationViewController *)self setAttributionView:v7];
    v22 = MEMORY[0x277CCAAD0];
    v26 = [v7 leadingAnchor];
    v27 = [(ICInvitationViewController *)self view];
    v25 = [v27 safeAreaLayoutGuide];
    v24 = [v25 leadingAnchor];
    v23 = [v26 constraintEqualToAnchor:v24];
    v29[0] = v23;
    v21 = [v7 trailingAnchor];
    v12 = [(ICInvitationViewController *)self view];
    v13 = [v12 safeAreaLayoutGuide];
    v14 = [v13 trailingAnchor];
    v15 = [v21 constraintEqualToAnchor:v14];
    v29[1] = v15;
    v16 = [v7 topAnchor];
    v17 = [(ICInvitationViewController *)self invitationImageView];
    v18 = [v17 bottomAnchor];
    v19 = [v16 constraintEqualToAnchor:v18 constant:12.0];
    v29[2] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
    [v22 activateConstraints:v20];

    v5 = v28;
  }
}

- (void)setShowsActivityIndicator:(BOOL)a3
{
  v3 = a3;
  self->_showsActivityIndicator = a3;
  v5 = [(ICInvitationViewController *)self viewButton];
  v6 = [v5 configuration];
  v9 = [v6 copy];

  [v9 setShowsActivityIndicator:v3];
  v7 = [(ICInvitationViewController *)self viewButton];
  [v7 setConfiguration:v9];

  v8 = [(ICInvitationViewController *)self viewButton];
  [v8 setEnabled:v3 ^ 1];
}

- (void)updateButtonConfiguration
{
  if ([MEMORY[0x277D75418] ic_isVision])
  {
    [MEMORY[0x277D75230] ic_filledTintedButtonConfiguration];
  }

  else
  {
    [MEMORY[0x277D75230] ic_plainButtonConfiguration];
  }
  v6 = ;
  [v6 setImagePadding:8.0];
  v3 = [(ICInvitationViewController *)self invitation];
  v4 = [v3 joinActionTitle];
  [v6 setTitle:v4];

  v5 = [(ICInvitationViewController *)self viewButton];
  [v5 setConfiguration:v6];
}

- (void)viewButtonDidTap:(id)a3
{
  v4 = [(ICInvitationViewController *)self didTapViewButton];

  if (v4)
  {
    v5 = [(ICInvitationViewController *)self didTapViewButton];
    v5[2]();
  }
}

- (NSDirectionalEdgeInsets)backgroundInsets
{
  top = self->_backgroundInsets.top;
  leading = self->_backgroundInsets.leading;
  bottom = self->_backgroundInsets.bottom;
  trailing = self->_backgroundInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (ICTextBackgroundView)backgroundView
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundView);

  return WeakRetained;
}

- (UIImageView)invitationImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_invitationImageView);

  return WeakRetained;
}

- (UILabel)titleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_titleLabel);

  return WeakRetained;
}

- (UILabel)subtitleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_subtitleLabel);

  return WeakRetained;
}

- (UIButton)viewButton
{
  WeakRetained = objc_loadWeakRetained(&self->_viewButton);

  return WeakRetained;
}

- (UIButton)largeViewButton
{
  WeakRetained = objc_loadWeakRetained(&self->_largeViewButton);

  return WeakRetained;
}

- (SWAttributionView)attributionView
{
  WeakRetained = objc_loadWeakRetained(&self->_attributionView);

  return WeakRetained;
}

@end