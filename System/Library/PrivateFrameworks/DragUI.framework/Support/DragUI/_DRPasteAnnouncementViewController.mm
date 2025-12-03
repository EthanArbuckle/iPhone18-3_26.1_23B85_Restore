@interface _DRPasteAnnouncementViewController
+ (BOOL)shouldCoalesce:(id)coalesce;
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize;
- (UIEdgeInsets)bannerContentOutsets;
- (_DRPasteAnnouncementViewController)initWithAnnouncement:(id)announcement reply:(id)reply bannerSource:(id)source;
- (id)authorizationDecisionView;
- (id)initForDeniedPasteWithBannerSource:(id)source;
- (void)allowPaste:(id)paste;
- (void)denyPaste:(id)paste;
- (void)presentableDidAppearAsBanner:(id)banner;
- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillNotAppearAsBanner:(id)banner withReason:(id)reason;
- (void)viewDidLoad;
@end

@implementation _DRPasteAnnouncementViewController

- (_DRPasteAnnouncementViewController)initWithAnnouncement:(id)announcement reply:(id)reply bannerSource:(id)source
{
  announcementCopy = announcement;
  replyCopy = reply;
  sourceCopy = source;
  v20.receiver = self;
  v20.super_class = _DRPasteAnnouncementViewController;
  v12 = [(_DRPasteAnnouncementViewController *)&v20 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_announcement, announcement);
    *(v13 + 40) = 0;
    v15 = objc_retainBlock(replyCopy);
    v16 = *(v13 + 56);
    *(v13 + 56) = v15;

    if (replyCopy)
    {
      v17 = +[NSDate distantFuture];
      [v17 timeIntervalSinceReferenceDate];
      *(v13 + 32) = v18;

      [*(v13 + 48) localizedAuthorizationText];
    }

    else
    {
      *(v13 + 32) = 0x3FF8000000000000;
      [*(v13 + 48) localizedAnnouncementText];
    }
    v19 = ;
    sub_10002F8A4(v13, v19, 0, sourceCopy);
  }

  return v13;
}

- (id)initForDeniedPasteWithBannerSource:(id)source
{
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = _DRPasteAnnouncementViewController;
  v5 = [(_DRPasteAnnouncementViewController *)&v11 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v5->_isPasteDeniedAnnouncement = 1;
    v8 = +[DREnterpriseInfo sharedInstance];
    orgName = [v8 orgName];

    if (orgName)
    {
      sub_10002FAB4(orgName, v6, sourceCopy, &v12);
      v10 = v12;
    }

    else
    {
      v6->_announcementDuration = 2.0;
      v10 = sub_100004980();
      sub_10002F8A4(v6, v10, 0, sourceCopy);
    }
  }

  return v6;
}

- (void)allowPaste:(id)paste
{
  authorizationReplyBlock = [(_DRPasteAnnouncementViewController *)self authorizationReplyBlock];
  authorizationReplyBlock[2](authorizationReplyBlock, 1);

  [(_DRPasteAnnouncementViewController *)self setAuthorizationReplyBlock:0];

  [(_DRPasteAnnouncementViewController *)self dismissBanner];
}

- (void)denyPaste:(id)paste
{
  authorizationReplyBlock = [(_DRPasteAnnouncementViewController *)self authorizationReplyBlock];
  authorizationReplyBlock[2](authorizationReplyBlock, 0);

  [(_DRPasteAnnouncementViewController *)self setAuthorizationReplyBlock:0];

  [(_DRPasteAnnouncementViewController *)self dismissBanner];
}

- (id)authorizationDecisionView
{
  v47 = +[NSBundle mainBundle];
  v46 = [v47 localizedStringForKey:@"PASTE_AUTHORIZATION_BUTTON_ALLOW" value:@"Allow" table:@"Localizable"];
  v45 = [v47 localizedStringForKey:@"PASTE_AUTHORIZATION_BUTTON_DENY" value:@"Don't Allow" table:@"Localizable"];
  v3 = [UIButton buttonWithType:1];
  [v3 setTitle:v46 forState:0];
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  titleLabel = [v3 titleLabel];
  [titleLabel setFont:v4];

  v6 = [UIButton buttonWithType:1];
  [v6 setTitle:v45 forState:0];
  v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  titleLabel2 = [v6 titleLabel];
  [titleLabel2 setFont:v7];

  [v6 setRole:2];
  [v6 addTarget:self action:"denyPaste:" forControlEvents:0x2000];
  [v3 addTarget:self action:"allowPaste:" forControlEvents:0x2000];
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 addSubview:v3];
  [v10 addSubview:v6];
  [v3 sizeToFit];
  [v6 sizeToFit];
  [v9 addSubview:v10];
  leadingAnchor = [v10 leadingAnchor];
  leadingAnchor2 = [v6 leadingAnchor];
  v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v48[0] = v42;
  trailingAnchor = [v10 trailingAnchor];
  trailingAnchor2 = [v3 trailingAnchor];
  v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v48[1] = v39;
  leadingAnchor3 = [v3 leadingAnchor];
  trailingAnchor3 = [v6 trailingAnchor];
  v35 = [leadingAnchor3 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor3 multiplier:6.0];
  v48[2] = v35;
  topAnchor = [v10 topAnchor];
  v36 = v3;
  topAnchor2 = [v3 topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v48[3] = v32;
  topAnchor3 = [v10 topAnchor];
  topAnchor4 = [v6 topAnchor];
  v29 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v48[4] = v29;
  bottomAnchor = [v10 bottomAnchor];
  bottomAnchor2 = [v3 bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v48[5] = v26;
  bottomAnchor3 = [v10 bottomAnchor];
  bottomAnchor4 = [v6 bottomAnchor];
  v23 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v48[6] = v23;
  centerXAnchor = [v10 centerXAnchor];
  centerXAnchor2 = [v9 centerXAnchor];
  v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v48[7] = v20;
  centerYAnchor = [v10 centerYAnchor];
  v12 = v9;
  centerYAnchor2 = [v9 centerYAnchor];
  v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v48[8] = v14;
  heightAnchor = [v9 heightAnchor];
  heightAnchor2 = [v10 heightAnchor];
  v17 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:2.0];
  v48[9] = v17;
  v18 = [NSArray arrayWithObjects:v48 count:10];
  [NSLayoutConstraint activateConstraints:v18];

  [v12 layoutIfNeeded];

  return v12;
}

- (void)viewDidLoad
{
  [(PLPillView *)self->_pillView setAutoresizingMask:18];
  view = [(_DRPasteAnnouncementViewController *)self view];
  [view bounds];
  [(PLPillView *)self->_pillView setFrame:?];

  view2 = [(_DRPasteAnnouncementViewController *)self view];
  [view2 addSubview:self->_pillView];
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize
{
  [(PLPillView *)self->_pillView systemLayoutSizeFittingSize:size.width, size.height, containerSize.width, containerSize.height];
  isPasteDeniedAnnouncement = self->_isPasteDeniedAnnouncement;
  if (!isPasteDeniedAnnouncement || (v8 = 358.0, v5 <= 358.0))
  {
    v8 = 280.0;
    if (!isPasteDeniedAnnouncement || v5 >= 280.0)
    {
      v8 = v5;
    }
  }

  v9 = v8;
  result.height = v6;
  result.width = v9;
  return result;
}

- (UIEdgeInsets)bannerContentOutsets
{
  [(PLPillView *)self->_pillView shadowOutsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (BOOL)shouldCoalesce:(id)coalesce
{
  coalesceCopy = coalesce;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v4 = qword_1000634D8;
  if (qword_1000634D8)
  {
    if (!coalesceCopy)
    {
      announcement = [qword_1000634D8 announcement];

      if (!announcement)
      {
        v7 = 1;
        goto LABEL_7;
      }

      v4 = qword_1000634D8;
    }

    announcement2 = [v4 announcement];
    v7 = [coalesceCopy canCoalesceWithAnnouncement:announcement2];
  }

  else
  {
    v7 = 0;
  }

LABEL_7:

  return v7;
}

- (void)presentableDidAppearAsBanner:(id)banner
{
  bannerCopy = banner;
  dispatch_assert_queue_V2(&_dispatch_main_q);

  if (bannerCopy == self)
  {
    v5 = self->_bannerSource;
    v6 = self->_requestID;
    announcementDuration = self->_announcementDuration;
    v8 = +[NSDate distantFuture];
    [v8 timeIntervalSinceReferenceDate];
    v10 = v9;

    if (announcementDuration != v10)
    {
      v11 = dispatch_time(0, (self->_announcementDuration * 1000000000.0));
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100009D5C;
      v12[3] = &unk_100054C50;
      v13 = v5;
      v14 = v6;
      dispatch_after(v11, &_dispatch_main_q, v12);
    }
  }
}

- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6 = qword_1000634D8;

  if (v6 == bannerCopy)
  {
    authorizationReplyBlock = [(_DRPasteAnnouncementViewController *)self authorizationReplyBlock];

    if (authorizationReplyBlock)
    {
      authorizationReplyBlock2 = [(_DRPasteAnnouncementViewController *)self authorizationReplyBlock];
      authorizationReplyBlock2[2](authorizationReplyBlock2, 0);

      [(_DRPasteAnnouncementViewController *)self setAuthorizationReplyBlock:0];
    }

    v9 = qword_1000634D8;
    qword_1000634D8 = 0;
  }
}

- (void)presentableWillNotAppearAsBanner:(id)banner withReason:(id)reason
{
  reasonCopy = reason;
  if (qword_1000634D8 == banner)
  {
    authorizationReplyBlock = [(_DRPasteAnnouncementViewController *)self authorizationReplyBlock];

    if (authorizationReplyBlock)
    {
      authorizationReplyBlock2 = [(_DRPasteAnnouncementViewController *)self authorizationReplyBlock];
      authorizationReplyBlock2[2](authorizationReplyBlock2, 0);
    }

    v9 = DRLogTarget();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Banner posting was rejected by BannerKit: %@", &v10, 0xCu);
    }
  }
}

@end