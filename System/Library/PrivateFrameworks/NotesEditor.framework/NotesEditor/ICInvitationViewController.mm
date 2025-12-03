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
- (void)setHighlight:(id)highlight;
- (void)setInvitation:(id)invitation;
- (void)setShowsActivityIndicator:(BOOL)indicator;
- (void)updateButtonConfiguration;
- (void)viewButtonDidTap:(id)tap;
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
  iCBackgroundColor = [MEMORY[0x277D75348] ICBackgroundColor];
  view = [(ICInvitationViewController *)self view];
  [view setBackgroundColor:iCBackgroundColor];

  ic_noteEditorBackgroundColor = [MEMORY[0x277D75348] ic_noteEditorBackgroundColor];
  backgroundView = [(ICInvitationViewController *)self backgroundView];
  [backgroundView setBackgroundColor:ic_noteEditorBackgroundColor];

  v8 = MEMORY[0x277D755D0];
  invitationImageView = [(ICInvitationViewController *)self invitationImageView];
  [invitationImageView bounds];
  v10 = [v8 configurationWithPointSize:CGRectGetHeight(v29)];

  v11 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.down.message" withConfiguration:v10];
  invitationImageView2 = [(ICInvitationViewController *)self invitationImageView];
  [invitationImageView2 setImage:v11];

  ic_isVision = [MEMORY[0x277D75418] ic_isVision];
  v14 = ic_isVision;
  if (ic_isVision)
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    invitationImageView3 = [(ICInvitationViewController *)self invitationImageView];
    [invitationImageView3 tintColor];
  }
  v15 = ;
  invitationImageView4 = [(ICInvitationViewController *)self invitationImageView];
  [invitationImageView4 setTintColor:v15];

  if ((v14 & 1) == 0)
  {

    v15 = invitationImageView3;
  }

  titleLabel = [(ICInvitationViewController *)self titleLabel];
  [titleLabel setText:&stru_282757698];

  ic_noteEditorLabelColor = [MEMORY[0x277D75348] ic_noteEditorLabelColor];
  titleLabel2 = [(ICInvitationViewController *)self titleLabel];
  [titleLabel2 setTextColor:ic_noteEditorLabelColor];

  subtitleLabel = [(ICInvitationViewController *)self subtitleLabel];
  [subtitleLabel setText:&stru_282757698];

  ic_noteEditorSecondaryLabelColor = [MEMORY[0x277D75348] ic_noteEditorSecondaryLabelColor];
  subtitleLabel2 = [(ICInvitationViewController *)self subtitleLabel];
  [subtitleLabel2 setTextColor:ic_noteEditorSecondaryLabelColor];

  viewButton = [(ICInvitationViewController *)self viewButton];
  [viewButton _accessibilitySetIsSpeakThisElement:1];

  if ([MEMORY[0x277D75418] ic_isVision])
  {
    viewButton2 = [(ICInvitationViewController *)self viewButton];
    [viewButton2 setTitleColor:0 forState:0];

    ic_filledTintedButtonConfiguration = [MEMORY[0x277D75230] ic_filledTintedButtonConfiguration];
    viewButton3 = [(ICInvitationViewController *)self viewButton];
    [viewButton3 setConfiguration:ic_filledTintedButtonConfiguration];
  }

  largeViewButton = [(ICInvitationViewController *)self largeViewButton];
  [largeViewButton setIsAccessibilityElement:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICInvitationViewController;
  [(ICNAViewController *)&v4 dealloc];
}

- (void)setInvitation:(id)invitation
{
  objc_storeStrong(&self->_invitation, invitation);
  invitationCopy = invitation;
  participantsInfoDescription = [invitationCopy participantsInfoDescription];
  titleLabel = [(ICInvitationViewController *)self titleLabel];
  [titleLabel setText:participantsInfoDescription];

  joinDescription = [invitationCopy joinDescription];
  subtitleLabel = [(ICInvitationViewController *)self subtitleLabel];
  [subtitleLabel setText:joinDescription];

  removeActionTitle = [invitationCopy removeActionTitle];

  attributionView = [(ICInvitationViewController *)self attributionView];
  [attributionView setMenuTitleForHideAction:removeActionTitle];

  [(ICInvitationViewController *)self updateButtonConfiguration];
}

- (void)setHighlight:(id)highlight
{
  v29[3] = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  attributionView = [(ICInvitationViewController *)self attributionView];
  [attributionView removeFromSuperview];

  objc_storeStrong(&self->_highlight, highlight);
  if (highlightCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x277CDC660]);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    if ([MEMORY[0x277D75418] ic_isVision])
    {
      traitOverrides = [v7 traitOverrides];
      [traitOverrides setUserInterfaceStyle:1];
    }

    [v7 setHighlight:highlightCopy];
    [v7 setDisplayContext:1];
    [v7 setHorizontalAlignment:2];
    invitation = [(ICInvitationViewController *)self invitation];
    [invitation removeActionTitle];
    v10 = v28 = highlightCopy;
    [v7 setMenuTitleForHideAction:v10];

    view = [(ICInvitationViewController *)self view];
    [view addSubview:v7];

    [(ICInvitationViewController *)self setAttributionView:v7];
    v22 = MEMORY[0x277CCAAD0];
    leadingAnchor = [v7 leadingAnchor];
    view2 = [(ICInvitationViewController *)self view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v29[0] = v23;
    trailingAnchor = [v7 trailingAnchor];
    view3 = [(ICInvitationViewController *)self view];
    safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v29[1] = v15;
    topAnchor = [v7 topAnchor];
    invitationImageView = [(ICInvitationViewController *)self invitationImageView];
    bottomAnchor = [invitationImageView bottomAnchor];
    v19 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:12.0];
    v29[2] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
    [v22 activateConstraints:v20];

    highlightCopy = v28;
  }
}

- (void)setShowsActivityIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  self->_showsActivityIndicator = indicator;
  viewButton = [(ICInvitationViewController *)self viewButton];
  configuration = [viewButton configuration];
  v9 = [configuration copy];

  [v9 setShowsActivityIndicator:indicatorCopy];
  viewButton2 = [(ICInvitationViewController *)self viewButton];
  [viewButton2 setConfiguration:v9];

  viewButton3 = [(ICInvitationViewController *)self viewButton];
  [viewButton3 setEnabled:indicatorCopy ^ 1];
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
  invitation = [(ICInvitationViewController *)self invitation];
  joinActionTitle = [invitation joinActionTitle];
  [v6 setTitle:joinActionTitle];

  viewButton = [(ICInvitationViewController *)self viewButton];
  [viewButton setConfiguration:v6];
}

- (void)viewButtonDidTap:(id)tap
{
  didTapViewButton = [(ICInvitationViewController *)self didTapViewButton];

  if (didTapViewButton)
  {
    didTapViewButton2 = [(ICInvitationViewController *)self didTapViewButton];
    didTapViewButton2[2]();
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