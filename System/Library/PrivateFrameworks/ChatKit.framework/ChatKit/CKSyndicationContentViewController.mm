@interface CKSyndicationContentViewController
- (CGSize)maxContentSize;
- (CKSyndicationContentViewController)initWithIndex:(unint64_t)index;
- (id)_setUpPhotosMicropillForAvatarImage:(id)image forName:(id)name;
- (id)getPinIcon;
- (void)loadView;
- (void)setMaxContentSize:(CGSize)size;
- (void)setUpHighlightsContent;
- (void)setUpPhotosContent;
- (void)setUpSharedWithYouContentCollectionView;
- (void)traitCollectionDidChange:(id)change;
- (void)updateMaxContentSize;
- (void)updateViewConstraints;
- (void)viewDidLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CKSyndicationContentViewController

- (CKSyndicationContentViewController)initWithIndex:(unint64_t)index
{
  selfCopy = self;
  [(CKSyndicationContentViewController *)self setOnboardingPage:?];
  switch(index)
  {
    case 2uLL:
      v12 = CKFrameworkBundle();
      v6 = [v12 localizedStringForKey:@"WHATS_NEW_SYNDICATION_PINS_DETAIL_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

      v13 = CKFrameworkBundle();
      v8 = [v13 localizedStringForKey:@"WHATS_NEW_SYNDICATION_PINS_DETAIL_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];

      cKSyndicationContentViewController = [(CKSyndicationContentViewController *)&v15 initWithTitle:v6 detailText:v8 icon:0, selfCopy, CKSyndicationContentViewController, v16.receiver, v16.super_class, v17.receiver, v17.super_class];
      goto LABEL_9;
    case 1uLL:
      v10 = CKFrameworkBundle();
      v6 = [v10 localizedStringForKey:@"WHATS_NEW_SYNDICATION_PHOTOS_DETAIL_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

      v11 = CKFrameworkBundle();
      v8 = [v11 localizedStringForKey:@"WHATS_NEW_SYNDICATION_PHOTOS_DETAIL_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];

      cKSyndicationContentViewController = [(CKSyndicationContentViewController *)&v16 initWithTitle:v6 detailText:v8 icon:0, v15.receiver, v15.super_class, selfCopy, CKSyndicationContentViewController, v17.receiver, v17.super_class];
LABEL_9:
      selfCopy = cKSyndicationContentViewController;

      return selfCopy;
    case 0uLL:
      v5 = CKFrameworkBundle();
      v6 = [v5 localizedStringForKey:@"WHATS_NEW_SYNDICATION_DETAIL_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];

      v7 = CKFrameworkBundle();
      v8 = [v7 localizedStringForKey:@"WHATS_NEW_SYNDICATION_DETAIL_DESCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];

      if ([(__CFString *)v8 isEqualToString:@"WHATS_NEW_SYNDICATION_DETAIL_DESCRIPTION_MAC"])
      {

        v8 = @"Content shared in Messages can automatically appear in apps such as Photos, Safari, and more.";
      }

      cKSyndicationContentViewController = [(CKSyndicationContentViewController *)&v17 initWithTitle:v6 detailText:v8 icon:0, v15.receiver, v15.super_class, v16.receiver, v16.super_class, selfCopy, CKSyndicationContentViewController];
      goto LABEL_9;
  }

  return selfCopy;
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = CKSyndicationContentViewController;
  [(OBBaseWelcomeController *)&v4 loadView];
  onboardingPage = [(CKSyndicationContentViewController *)self onboardingPage];
  switch(onboardingPage)
  {
    case 2uLL:
      [(CKSyndicationContentViewController *)self setUpHighlightsContent];
      break;
    case 1uLL:
      [(CKSyndicationContentViewController *)self setUpPhotosContent];
      break;
    case 0uLL:
      [(CKSyndicationContentViewController *)self setUpSharedWithYouContentCollectionView];
      break;
  }
}

- (void)viewDidLayoutSubviews
{
  v48.receiver = self;
  v48.super_class = CKSyndicationContentViewController;
  [(OBBaseWelcomeController *)&v48 viewDidLayoutSubviews];
  [(CKSyndicationContentViewController *)self updateMaxContentSize];
  micropillView1 = [(CKSyndicationContentViewController *)self micropillView1];
  [micropillView1 frame];
  v5 = v4 * 0.5;
  micropillView12 = [(CKSyndicationContentViewController *)self micropillView1];
  layer = [micropillView12 layer];
  [layer setCornerRadius:v5];

  micropillView2 = [(CKSyndicationContentViewController *)self micropillView2];
  [micropillView2 frame];
  v10 = v9 * 0.5;
  micropillView22 = [(CKSyndicationContentViewController *)self micropillView2];
  layer2 = [micropillView22 layer];
  [layer2 setCornerRadius:v10];

  tvPinIconView = [(CKSyndicationContentViewController *)self tvPinIconView];
  [tvPinIconView frame];
  v15 = v14 * 0.5;
  tvPinIconView2 = [(CKSyndicationContentViewController *)self tvPinIconView];
  layer3 = [tvPinIconView2 layer];
  [layer3 setCornerRadius:v15];

  podcastPinIconView = [(CKSyndicationContentViewController *)self podcastPinIconView];
  [podcastPinIconView frame];
  v20 = v19 * 0.5;
  podcastPinIconView2 = [(CKSyndicationContentViewController *)self podcastPinIconView];
  layer4 = [podcastPinIconView2 layer];
  [layer4 setCornerRadius:v20];

  v23 = +[CKUIBehavior sharedBehaviors];
  [v23 messageHighlightTranscriptBalloonBorderWidth];
  v25 = v24;

  tvPinIconView3 = [(CKSyndicationContentViewController *)self tvPinIconView];
  layer5 = [tvPinIconView3 layer];
  [layer5 setBorderWidth:v25];

  podcastPinIconView3 = [(CKSyndicationContentViewController *)self podcastPinIconView];
  layer6 = [podcastPinIconView3 layer];
  [layer6 setBorderWidth:v25];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  cGColor = [systemBackgroundColor CGColor];
  tvPinIconView4 = [(CKSyndicationContentViewController *)self tvPinIconView];
  layer7 = [tvPinIconView4 layer];
  [layer7 setBorderColor:cGColor];

  systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  cGColor2 = [systemBackgroundColor2 CGColor];
  podcastPinIconView4 = [(CKSyndicationContentViewController *)self podcastPinIconView];
  layer8 = [podcastPinIconView4 layer];
  [layer8 setBorderColor:cGColor2];

  podcastLinkBalloonView = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
  [podcastLinkBalloonView bounds];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  gradientLayer = [(CKSyndicationContentViewController *)self gradientLayer];
  [gradientLayer setFrame:{v40, v42, v44, v46}];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __89__CKSyndicationContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_1E72EC3E8;
  v4[4] = self;
  [coordinator animateAlongsideTransition:v4 completion:0];
}

- (void)updateMaxContentSize
{
  headerView = [(CKSyndicationContentViewController *)self headerView];
  [headerView origin];
  v5 = v4;
  headerView2 = [(CKSyndicationContentViewController *)self headerView];
  [headerView2 bounds];
  v8 = v5 + v7;

  view = [(CKSyndicationContentViewController *)self view];
  [view bounds];
  v11 = v10 - v8;

  view2 = [(CKSyndicationContentViewController *)self view];
  [view2 bounds];
  v14 = v13;

  [(CKSyndicationContentViewController *)self setMaxContentSize:v14, v11];
  if (!CKIsRunningInMacCatalyst())
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v14 = v16;

    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 bounds];
    v19 = v18;

    v11 = v14 > v19 ? v14 : v19;
    if (v14 > v19)
    {
      v14 = v19;
    }
  }

  sharedWithYouViewController = [(CKSyndicationContentViewController *)self sharedWithYouViewController];
  [sharedWithYouViewController setMaxContentSize:{v14, v11}];
}

- (void)setMaxContentSize:(CGSize)size
{
  if (size.width != self->_maxContentSize.width || size.height != self->_maxContentSize.height)
  {
    self->_maxContentSize = size;
    view = [(CKSyndicationContentViewController *)self view];
    [view setNeedsUpdateConstraints];
  }
}

- (void)updateViewConstraints
{
  v290[2] = *MEMORY[0x1E69E9840];
  constraints = [(CKSyndicationContentViewController *)self constraints];
  v4 = [constraints count];

  v5 = 0x1E696A000uLL;
  if (v4)
  {
    v6 = MEMORY[0x1E696ACD8];
    constraints2 = [(CKSyndicationContentViewController *)self constraints];
    [v6 deactivateConstraints:constraints2];
  }

  array = [MEMORY[0x1E695DF70] array];
  [(CKSyndicationContentViewController *)self setConstraints:array];

  contentView = [(CKSyndicationContentViewController *)self contentView];
  [(CKSyndicationContentViewController *)self maxContentSize];
  v11 = v10;
  v12 = v10 * 0.5;
  traitCollection = [(CKSyndicationContentViewController *)self traitCollection];
  [traitCollection displayScale];
  [(CKSyndicationContentViewController *)self setPhotoLongSide:round(v12 * v14) / v14];

  traitCollection2 = [(CKSyndicationContentViewController *)self traitCollection];
  [traitCollection2 displayScale];
  [(CKSyndicationContentViewController *)self setPhotoShortSide:round(v12 * 0.8 * v16) / v16];

  view = [(CKSyndicationContentViewController *)self view];
  [view bounds];
  v19 = v18;

  [(CKSyndicationContentViewController *)self photoShortSide];
  v21 = v20;
  [(CKSyndicationContentViewController *)self maxContentSize];
  if (v21 >= v22 * 0.25)
  {
    v29 = v19 / 15.0;
  }

  else
  {
    traitCollection3 = [(CKSyndicationContentViewController *)self traitCollection];
    [traitCollection3 displayScale];
    [(CKSyndicationContentViewController *)self setPhotoLongSide:round(v11 * 0.6 * v24) / v24];

    traitCollection4 = [(CKSyndicationContentViewController *)self traitCollection];
    [traitCollection4 displayScale];
    [(CKSyndicationContentViewController *)self setPhotoShortSide:round(v11 * 0.6 * 0.8 * v26) / v26];

    view2 = [(CKSyndicationContentViewController *)self view];
    [view2 bounds];
    v29 = v28 * 0.125;
  }

  if (IMSharedHelperDeviceIsiPad() && !CKIsRunningInMacCatalyst())
  {
    traitCollection5 = [(CKSyndicationContentViewController *)self traitCollection];
    [traitCollection5 displayScale];
    [(CKSyndicationContentViewController *)self setPhotoLongSide:round(v11 * 0.6 * v31) / v31];

    traitCollection6 = [(CKSyndicationContentViewController *)self traitCollection];
    [traitCollection6 displayScale];
    [(CKSyndicationContentViewController *)self setPhotoShortSide:round(v11 * 0.6 * 0.8 * v33) / v33];

    view3 = [(CKSyndicationContentViewController *)self view];
    [view3 bounds];
    v29 = v35 / 12.0;
  }

  [(CKSyndicationContentViewController *)self maxContentSize];
  v37 = v36 * 1.2;
  [(CKSyndicationContentViewController *)self maxContentSize];
  v39 = v38;
  v40 = v37 < v38;
  if (IMSharedHelperDeviceIsiPad() && !CKIsRunningInMacCatalyst())
  {
    v41 = 0.4;
    v42 = 0.3;
    v43 = 0.12;
  }

  else if (CKIsRunningInMacCatalyst())
  {
    v41 = 0.5;
    v42 = 0.35;
    v43 = 0.15;
  }

  else
  {
    v43 = dbl_190DD1190[v40];
    v42 = dbl_190DD11A0[v40];
    v41 = dbl_190DD11B0[v40];
  }

  onboardingPage = [(CKSyndicationContentViewController *)self onboardingPage];
  if (onboardingPage == 2)
  {
    v259 = contentView;
    if (v37 >= v39 || (IMSharedHelperDeviceIsiPad() & 1) != 0)
    {
      constraints3 = [(CKSyndicationContentViewController *)self constraints];
      tvLinkBalloonView = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      widthAnchor = [tvLinkBalloonView widthAnchor];
      view4 = [(CKSyndicationContentViewController *)self view];
      widthAnchor2 = [view4 widthAnchor];
      v279 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:v41];
      v287[0] = v279;
      tvLinkBalloonView2 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      heightAnchor = [tvLinkBalloonView2 heightAnchor];
      view5 = [(CKSyndicationContentViewController *)self view];
      widthAnchor3 = [view5 widthAnchor];
      leadingAnchor5 = heightAnchor;
      v282 = [heightAnchor constraintEqualToAnchor:widthAnchor3 multiplier:v42];
      v287[1] = v282;
      podcastLinkBalloonView = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      widthAnchor4 = [podcastLinkBalloonView widthAnchor];
      view6 = [(CKSyndicationContentViewController *)self view];
      widthAnchor5 = [view6 widthAnchor];
      v252 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5 multiplier:v41];
      v287[2] = v252;
      podcastLinkBalloonView2 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      heightAnchor2 = [podcastLinkBalloonView2 heightAnchor];
      view7 = [(CKSyndicationContentViewController *)self view];
      widthAnchor6 = [view7 widthAnchor];
      v242 = [heightAnchor2 constraintEqualToAnchor:widthAnchor6 multiplier:v43];
      v287[3] = v242;
      musicLinkBalloonView = [(CKSyndicationContentViewController *)self musicLinkBalloonView];
      widthAnchor7 = [musicLinkBalloonView widthAnchor];
      view8 = [(CKSyndicationContentViewController *)self view];
      widthAnchor8 = [view8 widthAnchor];
      v232 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8 multiplier:v41];
      v287[4] = v232;
      musicLinkBalloonView2 = [(CKSyndicationContentViewController *)self musicLinkBalloonView];
      heightAnchor3 = [musicLinkBalloonView2 heightAnchor];
      view9 = [(CKSyndicationContentViewController *)self view];
      widthAnchor9 = [view9 widthAnchor];
      v222 = [heightAnchor3 constraintEqualToAnchor:widthAnchor9 multiplier:v43];
      v287[5] = v222;
      gradientView = [(CKSyndicationContentViewController *)self gradientView];
      widthAnchor10 = [gradientView widthAnchor];
      view10 = [(CKSyndicationContentViewController *)self view];
      widthAnchor11 = [view10 widthAnchor];
      v208 = [widthAnchor10 constraintEqualToAnchor:widthAnchor11 multiplier:v41];
      v287[6] = v208;
      gradientView2 = [(CKSyndicationContentViewController *)self gradientView];
      heightAnchor4 = [gradientView2 heightAnchor];
      view11 = [(CKSyndicationContentViewController *)self view];
      widthAnchor12 = [view11 widthAnchor];
      v193 = [heightAnchor4 constraintEqualToAnchor:widthAnchor12 multiplier:v43];
      v287[7] = v193;
      tvLinkBalloonView3 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      topAnchor = [tvLinkBalloonView3 topAnchor];
      topAnchor2 = [contentView topAnchor];
      v181 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v287[8] = v181;
      podcastLinkBalloonView3 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      topAnchor3 = [podcastLinkBalloonView3 topAnchor];
      tvLinkBalloonView4 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      bottomAnchor = [tvLinkBalloonView4 bottomAnchor];
      v166 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:10.0];
      v287[9] = v166;
      musicLinkBalloonView3 = [(CKSyndicationContentViewController *)self musicLinkBalloonView];
      topAnchor4 = [musicLinkBalloonView3 topAnchor];
      podcastLinkBalloonView4 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      bottomAnchor2 = [podcastLinkBalloonView4 bottomAnchor];
      v151 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:10.0];
      v287[10] = v151;
      tvLinkBalloonView5 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      centerXAnchor = [tvLinkBalloonView5 centerXAnchor];
      centerXAnchor2 = [contentView centerXAnchor];
      v142 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v287[11] = v142;
      podcastLinkBalloonView5 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      centerXAnchor3 = [podcastLinkBalloonView5 centerXAnchor];
      centerXAnchor4 = [contentView centerXAnchor];
      v134 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
      v287[12] = v134;
      musicLinkBalloonView4 = [(CKSyndicationContentViewController *)self musicLinkBalloonView];
      centerXAnchor5 = [musicLinkBalloonView4 centerXAnchor];
      centerXAnchor6 = [contentView centerXAnchor];
      v127 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
      v287[13] = v127;
      gradientView3 = [(CKSyndicationContentViewController *)self gradientView];
      topAnchor5 = [gradientView3 topAnchor];
      podcastLinkBalloonView6 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      bottomAnchor3 = [podcastLinkBalloonView6 bottomAnchor];
      v122 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:10.0];
      v287[14] = v122;
      gradientView4 = [(CKSyndicationContentViewController *)self gradientView];
      centerXAnchor7 = [gradientView4 centerXAnchor];
      centerXAnchor8 = [contentView centerXAnchor];
      v118 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
      v287[15] = v118;
      tvPinIconView = [(CKSyndicationContentViewController *)self tvPinIconView];
      topAnchor6 = [tvPinIconView topAnchor];
      tvLinkBalloonView6 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      bottomAnchor4 = [tvLinkBalloonView6 bottomAnchor];
      v113 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:-15.7142857];
      v287[16] = v113;
      tvPinIconView2 = [(CKSyndicationContentViewController *)self tvPinIconView];
      leadingAnchor = [tvPinIconView2 leadingAnchor];
      tvLinkBalloonView7 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      trailingAnchor = [tvLinkBalloonView7 trailingAnchor];
      v108 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:-15.7142857];
      v287[17] = v108;
      tvPinIconView3 = [(CKSyndicationContentViewController *)self tvPinIconView];
      widthAnchor13 = [tvPinIconView3 widthAnchor];
      v105 = [widthAnchor13 constraintEqualToConstant:22.0];
      v287[18] = v105;
      tvPinIconView4 = [(CKSyndicationContentViewController *)self tvPinIconView];
      heightAnchor5 = [tvPinIconView4 heightAnchor];
      v102 = [heightAnchor5 constraintEqualToConstant:22.0];
      v287[19] = v102;
      podcastPinIconView = [(CKSyndicationContentViewController *)self podcastPinIconView];
      topAnchor7 = [podcastPinIconView topAnchor];
      podcastLinkBalloonView7 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      bottomAnchor5 = [podcastLinkBalloonView7 bottomAnchor];
      v97 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5 constant:-15.7142857];
      v287[20] = v97;
      podcastPinIconView2 = [(CKSyndicationContentViewController *)self podcastPinIconView];
      leadingAnchor2 = [podcastPinIconView2 leadingAnchor];
      podcastLinkBalloonView8 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      trailingAnchor2 = [podcastLinkBalloonView8 trailingAnchor];
      v70 = [leadingAnchor2 constraintEqualToAnchor:trailingAnchor2 constant:-15.7142857];
      v287[21] = v70;
      podcastPinIconView3 = [(CKSyndicationContentViewController *)self podcastPinIconView];
      widthAnchor14 = [podcastPinIconView3 widthAnchor];
      v73 = [widthAnchor14 constraintEqualToConstant:22.0];
      v287[22] = v73;
      podcastPinIconView4 = [(CKSyndicationContentViewController *)self podcastPinIconView];
      heightAnchor6 = [podcastPinIconView4 heightAnchor];
      v76 = [heightAnchor6 constraintEqualToConstant:22.0];
      v287[23] = v76;
      v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v287 count:24];
      constraints6 = constraints3;
      [constraints3 addObjectsFromArray:v77];

      v54 = widthAnchor3;
      topAnchor21 = view4;

      sharedWithYouViewController = tvLinkBalloonView2;
      topAnchor22 = widthAnchor2;

      view13 = widthAnchor;
      contentView = v259;

      v49 = v279;
      v78 = widthAnchor10;
    }

    else
    {
      podcastPinIconView5 = [(CKSyndicationContentViewController *)self podcastPinIconView];
      [podcastPinIconView5 removeFromSuperview];

      constraints4 = [(CKSyndicationContentViewController *)self constraints];
      tvLinkBalloonView = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      widthAnchor15 = [tvLinkBalloonView widthAnchor];
      view12 = [(CKSyndicationContentViewController *)self view];
      widthAnchor16 = [view12 widthAnchor];
      v280 = [widthAnchor15 constraintEqualToAnchor:widthAnchor16 multiplier:v41];
      v288[0] = v280;
      tvLinkBalloonView8 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      heightAnchor7 = [tvLinkBalloonView8 heightAnchor];
      view5 = [(CKSyndicationContentViewController *)self view];
      widthAnchor17 = [view5 widthAnchor];
      leadingAnchor5 = heightAnchor7;
      v282 = [heightAnchor7 constraintEqualToAnchor:widthAnchor17 multiplier:v42];
      v288[1] = v282;
      podcastLinkBalloonView = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      widthAnchor4 = [podcastLinkBalloonView widthAnchor];
      view6 = [(CKSyndicationContentViewController *)self view];
      widthAnchor5 = [view6 widthAnchor];
      v252 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5 multiplier:v41];
      v288[2] = v252;
      podcastLinkBalloonView2 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      heightAnchor2 = [podcastLinkBalloonView2 heightAnchor];
      view7 = [(CKSyndicationContentViewController *)self view];
      widthAnchor6 = [view7 widthAnchor];
      v242 = [heightAnchor2 constraintEqualToAnchor:widthAnchor6 multiplier:v43];
      v288[3] = v242;
      musicLinkBalloonView = [(CKSyndicationContentViewController *)self gradientView];
      widthAnchor7 = [musicLinkBalloonView widthAnchor];
      view8 = [(CKSyndicationContentViewController *)self view];
      widthAnchor8 = [view8 widthAnchor];
      v232 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8 multiplier:v41];
      v288[4] = v232;
      musicLinkBalloonView2 = [(CKSyndicationContentViewController *)self gradientView];
      heightAnchor3 = [musicLinkBalloonView2 heightAnchor];
      view9 = [(CKSyndicationContentViewController *)self view];
      widthAnchor9 = [view9 widthAnchor];
      v222 = [heightAnchor3 constraintEqualToAnchor:widthAnchor9 multiplier:v43];
      v288[5] = v222;
      gradientView = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      topAnchor8 = [gradientView topAnchor];
      topAnchor9 = [contentView topAnchor];
      v212 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
      v288[6] = v212;
      podcastLinkBalloonView9 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      topAnchor10 = [podcastLinkBalloonView9 topAnchor];
      tvLinkBalloonView9 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      bottomAnchor6 = [tvLinkBalloonView9 bottomAnchor];
      v197 = [topAnchor10 constraintEqualToAnchor:bottomAnchor6 constant:10.0];
      v288[7] = v197;
      tvLinkBalloonView10 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      centerXAnchor9 = [tvLinkBalloonView10 centerXAnchor];
      centerXAnchor10 = [contentView centerXAnchor];
      v185 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
      v288[8] = v185;
      podcastLinkBalloonView10 = [(CKSyndicationContentViewController *)self podcastLinkBalloonView];
      centerXAnchor11 = [podcastLinkBalloonView10 centerXAnchor];
      centerXAnchor12 = [contentView centerXAnchor];
      v173 = [centerXAnchor11 constraintEqualToAnchor:centerXAnchor12];
      v288[9] = v173;
      gradientView5 = [(CKSyndicationContentViewController *)self gradientView];
      topAnchor11 = [gradientView5 topAnchor];
      tvLinkBalloonView11 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      bottomAnchor7 = [tvLinkBalloonView11 bottomAnchor];
      v158 = [topAnchor11 constraintEqualToAnchor:bottomAnchor7 constant:10.0];
      v288[10] = v158;
      gradientView6 = [(CKSyndicationContentViewController *)self gradientView];
      centerXAnchor13 = [gradientView6 centerXAnchor];
      centerXAnchor14 = [contentView centerXAnchor];
      v147 = [centerXAnchor13 constraintEqualToAnchor:centerXAnchor14];
      v288[11] = v147;
      tvPinIconView5 = [(CKSyndicationContentViewController *)self tvPinIconView];
      topAnchor12 = [tvPinIconView5 topAnchor];
      tvLinkBalloonView12 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      bottomAnchor8 = [tvLinkBalloonView12 bottomAnchor];
      v137 = [topAnchor12 constraintEqualToAnchor:bottomAnchor8 constant:-15.7142857];
      v288[12] = v137;
      tvPinIconView6 = [(CKSyndicationContentViewController *)self tvPinIconView];
      leadingAnchor3 = [tvPinIconView6 leadingAnchor];
      tvLinkBalloonView13 = [(CKSyndicationContentViewController *)self tvLinkBalloonView];
      trailingAnchor3 = [tvLinkBalloonView13 trailingAnchor];
      v81 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:-15.7142857];
      v288[13] = v81;
      tvPinIconView7 = [(CKSyndicationContentViewController *)self tvPinIconView];
      widthAnchor18 = [tvPinIconView7 widthAnchor];
      v84 = [widthAnchor18 constraintEqualToConstant:22.0];
      v288[14] = v84;
      tvPinIconView8 = [(CKSyndicationContentViewController *)self tvPinIconView];
      heightAnchor8 = [tvPinIconView8 heightAnchor];
      v87 = [heightAnchor8 constraintEqualToConstant:22.0];
      v288[15] = v87;
      v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v288 count:16];
      constraints6 = constraints4;
      [constraints4 addObjectsFromArray:v88];

      v54 = widthAnchor17;
      sharedWithYouViewController = tvLinkBalloonView8;

      topAnchor21 = view12;
      topAnchor22 = widthAnchor16;

      view13 = widthAnchor15;
      contentView = v259;

      v49 = v280;
      v78 = topAnchor8;
    }

    v5 = 0x1E696A000uLL;
  }

  else if (onboardingPage == 1)
  {
    constraints5 = [(CKSyndicationContentViewController *)self constraints];
    tvLinkBalloonView = [(CKSyndicationContentViewController *)self highlightsView1];
    topAnchor13 = [tvLinkBalloonView topAnchor];
    topAnchor14 = [contentView topAnchor];
    v269 = [topAnchor13 constraintEqualToAnchor:topAnchor14 constant:20.0];
    v289[0] = v269;
    highlightsView1 = [(CKSyndicationContentViewController *)self highlightsView1];
    leadingAnchor4 = [highlightsView1 leadingAnchor];
    leadingAnchor5 = [contentView leadingAnchor];
    view5 = [leadingAnchor4 constraintEqualToAnchor:v29 constant:?];
    v289[1] = view5;
    highlightsView12 = [(CKSyndicationContentViewController *)self highlightsView1];
    widthAnchor19 = [highlightsView12 widthAnchor];
    [(CKSyndicationContentViewController *)self photoLongSide];
    v282 = widthAnchor19;
    podcastLinkBalloonView = [widthAnchor19 constraintEqualToConstant:?];
    v289[2] = podcastLinkBalloonView;
    highlightsView13 = [(CKSyndicationContentViewController *)self highlightsView1];
    heightAnchor9 = [highlightsView13 heightAnchor];
    [(CKSyndicationContentViewController *)self photoShortSide];
    v253 = [heightAnchor9 constraintEqualToConstant:?];
    v289[3] = v253;
    highlightsView2 = [(CKSyndicationContentViewController *)self highlightsView2];
    topAnchor15 = [highlightsView2 topAnchor];
    topAnchor16 = [contentView topAnchor];
    v245 = [topAnchor15 constraintEqualToAnchor:topAnchor16 constant:v11 * 0.1 + 20.0];
    v289[4] = v245;
    highlightsView22 = [(CKSyndicationContentViewController *)self highlightsView2];
    trailingAnchor4 = [highlightsView22 trailingAnchor];
    trailingAnchor5 = [contentView trailingAnchor];
    v237 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-v29];
    v289[5] = v237;
    highlightsView23 = [(CKSyndicationContentViewController *)self highlightsView2];
    widthAnchor20 = [highlightsView23 widthAnchor];
    [(CKSyndicationContentViewController *)self photoShortSide];
    v231 = [widthAnchor20 constraintEqualToConstant:?];
    v289[6] = v231;
    highlightsView24 = [(CKSyndicationContentViewController *)self highlightsView2];
    heightAnchor10 = [highlightsView24 heightAnchor];
    [(CKSyndicationContentViewController *)self photoLongSide];
    v225 = [heightAnchor10 constraintEqualToConstant:?];
    v289[7] = v225;
    micropillView1 = [(CKSyndicationContentViewController *)self micropillView1];
    topAnchor17 = [micropillView1 topAnchor];
    topAnchor18 = [contentView topAnchor];
    v216 = [topAnchor17 constraintEqualToAnchor:topAnchor18 constant:7.5];
    v289[8] = v216;
    micropillView12 = [(CKSyndicationContentViewController *)self micropillView1];
    leadingAnchor6 = [micropillView12 leadingAnchor];
    leadingAnchor7 = [contentView leadingAnchor];
    [(CKSyndicationContentViewController *)self photoLongSide];
    v204 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:v29 + v56 + -132.0];
    v289[9] = v204;
    micropillView13 = [(CKSyndicationContentViewController *)self micropillView1];
    widthAnchor21 = [micropillView13 widthAnchor];
    [(CKSyndicationContentViewController *)self maxContentSize];
    v195 = [widthAnchor21 constraintLessThanOrEqualToConstant:v57 - v29];
    v289[10] = v195;
    micropillView14 = [(CKSyndicationContentViewController *)self micropillView1];
    heightAnchor11 = [micropillView14 heightAnchor];
    v186 = [heightAnchor11 constraintEqualToConstant:25.0];
    v289[11] = v186;
    micropillView2 = [(CKSyndicationContentViewController *)self micropillView2];
    topAnchor19 = [micropillView2 topAnchor];
    topAnchor20 = [contentView topAnchor];
    [(CKSyndicationContentViewController *)self photoLongSide];
    v174 = [topAnchor19 constraintEqualToAnchor:topAnchor20 constant:v58 + 20.0 + v11 * 0.1 + -12.5];
    v289[12] = v174;
    micropillView22 = [(CKSyndicationContentViewController *)self micropillView2];
    trailingAnchor6 = [micropillView22 trailingAnchor];
    trailingAnchor7 = [contentView trailingAnchor];
    [(CKSyndicationContentViewController *)self photoShortSide];
    v162 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-v29 - v59 + 132.0];
    v289[13] = v162;
    micropillView23 = [(CKSyndicationContentViewController *)self micropillView2];
    bottomAnchor9 = [micropillView23 bottomAnchor];
    bottomAnchor10 = [contentView bottomAnchor];
    v150 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10 constant:-20.0];
    v289[14] = v150;
    micropillView24 = [(CKSyndicationContentViewController *)self micropillView2];
    widthAnchor22 = [micropillView24 widthAnchor];
    [(CKSyndicationContentViewController *)self maxContentSize];
    v63 = [widthAnchor22 constraintLessThanOrEqualToConstant:v62 - v29];
    v289[15] = v63;
    micropillView25 = [(CKSyndicationContentViewController *)self micropillView2];
    heightAnchor12 = [micropillView25 heightAnchor];
    v66 = [heightAnchor12 constraintEqualToConstant:25.0];
    v289[16] = v66;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v289 count:17];
    v68 = v67 = contentView;
    constraints6 = constraints5;
    [constraints5 addObjectsFromArray:v68];

    contentView = v67;
    view13 = topAnchor13;

    v5 = 0x1E696A000;
    v54 = highlightsView12;

    sharedWithYouViewController = leadingAnchor4;
    v49 = highlightsView1;

    topAnchor22 = v269;
    topAnchor21 = topAnchor14;
  }

  else
  {
    if (onboardingPage)
    {
      goto LABEL_26;
    }

    constraints6 = [(CKSyndicationContentViewController *)self constraints];
    tvLinkBalloonView = [(CKSyndicationContentViewController *)self sharedWithYouViewController];
    view13 = [tvLinkBalloonView view];
    topAnchor21 = [view13 topAnchor];
    topAnchor22 = [contentView topAnchor];
    v49 = [topAnchor21 constraintEqualToAnchor:topAnchor22];
    v290[0] = v49;
    sharedWithYouViewController = [(CKSyndicationContentViewController *)self sharedWithYouViewController];
    leadingAnchor5 = [sharedWithYouViewController view];
    centerXAnchor15 = [leadingAnchor5 centerXAnchor];
    centerXAnchor16 = [contentView centerXAnchor];
    view5 = centerXAnchor15;
    v53 = centerXAnchor15;
    v54 = centerXAnchor16;
    v282 = [v53 constraintEqualToAnchor:centerXAnchor16];
    v290[1] = v282;
    podcastLinkBalloonView = [MEMORY[0x1E695DEC8] arrayWithObjects:v290 count:2];
    [constraints6 addObjectsFromArray:?];
  }

LABEL_26:
  constraints7 = [(CKSyndicationContentViewController *)self constraints];
  v90 = [constraints7 count];

  if (v90)
  {
    v91 = *(v5 + 3288);
    constraints8 = [(CKSyndicationContentViewController *)self constraints];
    [v91 activateConstraints:constraints8];
  }

  v286.receiver = self;
  v286.super_class = CKSyndicationContentViewController;
  [(CKSyndicationContentViewController *)&v286 updateViewConstraints];
}

- (void)setUpSharedWithYouContentCollectionView
{
  v5 = objc_alloc_init(CKSyndicationSharedWithYouViewController);
  [(CKSyndicationContentViewController *)self setSharedWithYouViewController:v5];
  contentView = [(CKSyndicationContentViewController *)self contentView];
  view = [(CKSyndicationSharedWithYouViewController *)v5 view];
  [contentView addSubview:view];
}

- (id)_setUpPhotosMicropillForAvatarImage:(id)image forName:(id)name
{
  v66[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v6 = MEMORY[0x1E69DD298];
  imageCopy = image;
  v8 = [v6 alloc];
  v9 = [MEMORY[0x1E69DC730] effectWithStyle:9];
  v10 = [v8 initWithEffect:v9];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  layer = [v10 layer];
  [layer setMasksToBounds:1];

  v58 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v58 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v58 setNumberOfLines:1];
  [v58 setLineBreakMode:2];
  v63 = [MEMORY[0x1E69DB878] systemFontOfSize:4.0];
  v62 = [MEMORY[0x1E69DCAD8] configurationWithFont:v63 scale:1];
  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward" withConfiguration:v62];
  v60 = [v12 imageWithRenderingMode:2];

  v61 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:imageCopy];

  [v61 setBounds:{0.0, -1.0, 15.0, 15.0}];
  [v61 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  v13 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v61];
  v55 = v13;
  v14 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v60];
  [v14 setBounds:{4.0, 2.0, 6.0, 8.0}];
  v59 = v14;
  [v14 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  v15 = MEMORY[0x1E696AAB0];
  v65 = *MEMORY[0x1E69DB650];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v66[0] = secondaryLabelColor;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:&v65 count:1];
  v18 = [v15 attributedStringWithAttachment:v14 attributes:v17];
  v54 = v18;

  v19 = MEMORY[0x1E696AEC0];
  v20 = CKFrameworkBundle();
  v21 = [v20 localizedStringForKey:@"WHATS_NEW_SYNDICATION_PHOTOS" value:&stru_1F04268F8 table:@"ChatKit"];
  v22 = nameCopy;
  v57 = nameCopy;
  nameCopy = [v19 stringWithFormat:v21, nameCopy];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v26 = @"\u200F";
  }

  else
  {
    v26 = @"\u200E";
  }

  v27 = [(__CFString *)v26 stringByAppendingString:nameCopy];

  v56 = v27;
  v28 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v27];
  v29 = *MEMORY[0x1E69DB648];
  v30 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
  [v28 addAttribute:v29 value:v30 range:{0, objc_msgSend(v28, "length")}];

  v31 = [v27 rangeOfString:v22];
  v33 = v32;
  v34 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:12.0];
  [v28 addAttribute:v29 value:v34 range:{v31, v33}];

  [v28 addAttribute:*MEMORY[0x1E69DB610] value:&unk_1F04E89D8 range:{0, objc_msgSend(v28, "length")}];
  v53 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"%@ %@ %@"];
  v52 = [MEMORY[0x1E696AAB0] localizedAttributedStringWithFormat:v53, v13, v28, v18];
  [v58 setAttributedText:v52];
  contentView = [v10 contentView];
  [contentView addSubview:v58];

  v46 = MEMORY[0x1E696ACD8];
  leadingAnchor = [v58 leadingAnchor];
  leadingAnchor2 = [v10 leadingAnchor];
  v49 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:5.0];
  v64[0] = v49;
  trailingAnchor = [v58 trailingAnchor];
  trailingAnchor2 = [v10 trailingAnchor];
  v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-5.0];
  v64[1] = v36;
  topAnchor = [v58 topAnchor];
  topAnchor2 = [v10 topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v64[2] = v39;
  bottomAnchor = [v58 bottomAnchor];
  v45 = v10;
  bottomAnchor2 = [v10 bottomAnchor];
  v42 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v64[3] = v42;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
  [v46 activateConstraints:v43];

  [v58 sizeToFit];

  return v45;
}

- (void)setUpPhotosContent
{
  v46 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"WhatsNew_Photos1"];
  v3 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"WhatsNew_Photos2"];
  v4 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v46];
  [(CKSyndicationContentViewController *)self setHighlightsView1:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v3];
  [(CKSyndicationContentViewController *)self setHighlightsView2:v5];

  highlightsView1 = [(CKSyndicationContentViewController *)self highlightsView1];
  [highlightsView1 setTranslatesAutoresizingMaskIntoConstraints:0];

  highlightsView2 = [(CKSyndicationContentViewController *)self highlightsView2];
  [highlightsView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"Syndication_Avatar7"];
  v9 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"Syndication_Avatar8"];
  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"WHATS_NEW_SYNDICATION_PHOTOS_EXAMPLE_NAME1" value:&stru_1F04268F8 table:@"ChatKit"];
  v12 = [(CKSyndicationContentViewController *)self _setUpPhotosMicropillForAvatarImage:v8 forName:v11];
  [(CKSyndicationContentViewController *)self setMicropillView1:v12];

  v13 = CKFrameworkBundle();
  v14 = [v13 localizedStringForKey:@"WHATS_NEW_SYNDICATION_PHOTOS_EXAMPLE_NAME2" value:&stru_1F04268F8 table:@"ChatKit"];
  v15 = [(CKSyndicationContentViewController *)self _setUpPhotosMicropillForAvatarImage:v9 forName:v14];
  [(CKSyndicationContentViewController *)self setMicropillView2:v15];

  highlightsView12 = [(CKSyndicationContentViewController *)self highlightsView1];
  layer = [highlightsView12 layer];
  [layer setCornerRadius:25.0];

  highlightsView22 = [(CKSyndicationContentViewController *)self highlightsView2];
  layer2 = [highlightsView22 layer];
  [layer2 setCornerRadius:25.0];

  highlightsView13 = [(CKSyndicationContentViewController *)self highlightsView1];
  layer3 = [highlightsView13 layer];
  [layer3 setMasksToBounds:1];

  highlightsView23 = [(CKSyndicationContentViewController *)self highlightsView2];
  layer4 = [highlightsView23 layer];
  [layer4 setMasksToBounds:1];

  v24 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  layer5 = [v24 layer];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [layer5 setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

  layer6 = [v24 layer];
  LODWORD(v28) = *"333?";
  [layer6 setShadowOpacity:v28];

  layer7 = [v24 layer];
  [layer7 setShadowRadius:25.0];

  layer8 = [v24 layer];
  [layer8 setShadowOffset:{0.0, 2.0}];

  highlightsView14 = [(CKSyndicationContentViewController *)self highlightsView1];
  [v24 addSubview:highlightsView14];

  v32 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  layer9 = [v32 layer];
  blackColor2 = [MEMORY[0x1E69DC888] blackColor];
  [layer9 setShadowColor:{objc_msgSend(blackColor2, "CGColor")}];

  layer10 = [v32 layer];
  LODWORD(v36) = *"333?";
  [layer10 setShadowOpacity:v36];

  layer11 = [v32 layer];
  [layer11 setShadowRadius:10.0];

  layer12 = [v32 layer];
  [layer12 setShadowOffset:{0.0, 2.0}];

  highlightsView24 = [(CKSyndicationContentViewController *)self highlightsView2];
  [v32 addSubview:highlightsView24];

  contentView = [(CKSyndicationContentViewController *)self contentView];
  [contentView addSubview:v24];

  contentView2 = [(CKSyndicationContentViewController *)self contentView];
  [contentView2 addSubview:v32];

  contentView3 = [(CKSyndicationContentViewController *)self contentView];
  micropillView1 = [(CKSyndicationContentViewController *)self micropillView1];
  [contentView3 addSubview:micropillView1];

  contentView4 = [(CKSyndicationContentViewController *)self contentView];
  micropillView2 = [(CKSyndicationContentViewController *)self micropillView2];
  [contentView4 addSubview:micropillView2];
}

- (void)setUpHighlightsContent
{
  v43[2] = *MEMORY[0x1E69E9840];
  v3 = [CKSyndicationOnboardingLinkBalloonView alloc];
  v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:@"https://tv.apple.com/us/show/mythic-quest/umc.cmc.1nfdfd5zlk05fo1bwwetzldy3?ctx_brand=tvs.sbd.4000"];
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [(CKSyndicationOnboardingLinkBalloonView *)v3 initWithFrame:v4 withURL:*MEMORY[0x1E695F058], v6, v7, v8];

  v10 = [CKSyndicationOnboardingLinkBalloonView alloc];
  v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:@"https://podcasts.apple.com/us/podcast/eight-we-go-all/id1507423923?i=1000476834241"];
  v12 = [(CKSyndicationOnboardingLinkBalloonView *)v10 initWithFrame:v11 withURL:v5, v6, v7, v8];

  v13 = [CKSyndicationOnboardingLinkBalloonView alloc];
  v14 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:@"https://music.apple.com/us/album/green-eyes/1534718812?i=1534719300"];
  v15 = [(CKSyndicationOnboardingLinkBalloonView *)v13 initWithFrame:v14 withURL:v5, v6, v7, v8];

  [(CKSyndicationOnboardingLinkBalloonView *)v9 setUserInteractionEnabled:0];
  [(CKSyndicationOnboardingLinkBalloonView *)v12 setUserInteractionEnabled:0];
  [(CKSyndicationOnboardingLinkBalloonView *)v15 setUserInteractionEnabled:0];
  [(CKSyndicationOnboardingLinkBalloonView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CKSyndicationOnboardingLinkBalloonView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CKSyndicationOnboardingLinkBalloonView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(CKSyndicationContentViewController *)self contentView];
  [contentView addSubview:v9];

  contentView2 = [(CKSyndicationContentViewController *)self contentView];
  [contentView2 addSubview:v12];

  contentView3 = [(CKSyndicationContentViewController *)self contentView];
  [contentView3 addSubview:v15];

  [(CKSyndicationContentViewController *)self setTvLinkBalloonView:v9];
  [(CKSyndicationContentViewController *)self setPodcastLinkBalloonView:v12];
  [(CKSyndicationContentViewController *)self setMusicLinkBalloonView:v15];
  getPinIcon = [(CKSyndicationContentViewController *)self getPinIcon];
  [(CKSyndicationContentViewController *)self setTvPinIconView:getPinIcon];

  getPinIcon2 = [(CKSyndicationContentViewController *)self getPinIcon];
  [(CKSyndicationContentViewController *)self setPodcastPinIconView:getPinIcon2];

  contentView4 = [(CKSyndicationContentViewController *)self contentView];
  tvPinIconView = [(CKSyndicationContentViewController *)self tvPinIconView];
  [contentView4 addSubview:tvPinIconView];

  contentView5 = [(CKSyndicationContentViewController *)self contentView];
  podcastPinIconView = [(CKSyndicationContentViewController *)self podcastPinIconView];
  [contentView5 addSubview:podcastPinIconView];

  v25 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
  [(CKSyndicationContentViewController *)self setGradientView:v25];

  gradientView = [(CKSyndicationContentViewController *)self gradientView];
  [gradientView setTranslatesAutoresizingMaskIntoConstraints:0];

  layer = [MEMORY[0x1E6979380] layer];
  [(CKSyndicationContentViewController *)self setGradientLayer:layer];
  gradientView2 = [(CKSyndicationContentViewController *)self gradientView];
  [gradientView2 frame];
  [layer setFrame:?];

  traitCollection = [(CKSyndicationContentViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    v31 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
    v43[0] = [v31 CGColor];
    v32 = v43;
  }

  else
  {
    v31 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
    cGColor = [v31 CGColor];
    v32 = &cGColor;
  }

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v32[1] = [systemBackgroundColor CGColor];
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  gradientLayer = [(CKSyndicationContentViewController *)self gradientLayer];
  [gradientLayer setColors:v34];

  gradientView3 = [(CKSyndicationContentViewController *)self gradientView];
  layer2 = [gradientView3 layer];
  [layer2 insertSublayer:layer atIndex:0];

  contentView6 = [(CKSyndicationContentViewController *)self contentView];
  gradientView4 = [(CKSyndicationContentViewController *)self gradientView];
  [contentView6 addSubview:gradientView4];

  contentView7 = [(CKSyndicationContentViewController *)self contentView];
  gradientView5 = [(CKSyndicationContentViewController *)self gradientView];
  [contentView7 bringSubviewToFront:gradientView5];
}

- (id)getPinIcon
{
  v2 = objc_alloc(MEMORY[0x1E69DD250]);
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v7 = [v2 initWithFrame:{*MEMORY[0x1E695F058], v4, v5, v6}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = +[CKUIBehavior sharedBehaviors];
  messageHighlightGoldColor = [v8 messageHighlightGoldColor];
  [v7 setBackgroundColor:messageHighlightGoldColor];

  v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v3, v4, v5, v6}];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v10 setBackgroundColor:clearColor];

  [v7 addSubview:v10];
  v12 = +[CKUIBehavior sharedBehaviors];
  messageHighlightImage = [v12 messageHighlightImage];

  [v10 setImage:messageHighlightImage];
  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 messageHighlightGlyphSymbolPointSize];
  v16 = v15;

  [v10 setFrame:{(22.0 - v16) * 0.5 + 0.0, (22.0 - v16) * 0.5 + 0.0, v16, v16}];

  return v7;
}

- (void)traitCollectionDidChange:(id)change
{
  v25[2] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = CKSyndicationContentViewController;
  changeCopy = change;
  [(CKSyndicationContentViewController *)&v23 traitCollectionDidChange:changeCopy];
  traitCollection = [(CKSyndicationContentViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    cGColor = [systemBackgroundColor CGColor];
    tvPinIconView = [(CKSyndicationContentViewController *)self tvPinIconView];
    layer = [tvPinIconView layer];
    [layer setBorderColor:cGColor];

    systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    cGColor2 = [systemBackgroundColor2 CGColor];
    podcastPinIconView = [(CKSyndicationContentViewController *)self podcastPinIconView];
    layer2 = [podcastPinIconView layer];
    [layer2 setBorderColor:cGColor2];

    traitCollection2 = [(CKSyndicationContentViewController *)self traitCollection];
    userInterfaceStyle3 = [traitCollection2 userInterfaceStyle];

    if (userInterfaceStyle3 == 2)
    {
      v18 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
      v25[0] = [v18 CGColor];
      v19 = v25;
    }

    else
    {
      v18 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
      cGColor3 = [v18 CGColor];
      v19 = &cGColor3;
    }

    systemBackgroundColor3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v19[1] = [systemBackgroundColor3 CGColor];
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    gradientLayer = [(CKSyndicationContentViewController *)self gradientLayer];
    [gradientLayer setColors:v21];
  }
}

- (CGSize)maxContentSize
{
  width = self->_maxContentSize.width;
  height = self->_maxContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end