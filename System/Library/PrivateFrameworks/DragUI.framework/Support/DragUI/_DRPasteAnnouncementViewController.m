@interface _DRPasteAnnouncementViewController
+ (BOOL)shouldCoalesce:(id)a3;
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4;
- (UIEdgeInsets)bannerContentOutsets;
- (_DRPasteAnnouncementViewController)initWithAnnouncement:(id)a3 reply:(id)a4 bannerSource:(id)a5;
- (id)authorizationDecisionView;
- (id)initForDeniedPasteWithBannerSource:(id)a3;
- (void)allowPaste:(id)a3;
- (void)denyPaste:(id)a3;
- (void)presentableDidAppearAsBanner:(id)a3;
- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillNotAppearAsBanner:(id)a3 withReason:(id)a4;
- (void)viewDidLoad;
@end

@implementation _DRPasteAnnouncementViewController

- (_DRPasteAnnouncementViewController)initWithAnnouncement:(id)a3 reply:(id)a4 bannerSource:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = _DRPasteAnnouncementViewController;
  v12 = [(_DRPasteAnnouncementViewController *)&v20 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_announcement, a3);
    *(v13 + 40) = 0;
    v15 = objc_retainBlock(v10);
    v16 = *(v13 + 56);
    *(v13 + 56) = v15;

    if (v10)
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
    sub_10002F8A4(v13, v19, 0, v11);
  }

  return v13;
}

- (id)initForDeniedPasteWithBannerSource:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _DRPasteAnnouncementViewController;
  v5 = [(_DRPasteAnnouncementViewController *)&v11 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v5->_isPasteDeniedAnnouncement = 1;
    v8 = +[DREnterpriseInfo sharedInstance];
    v9 = [v8 orgName];

    if (v9)
    {
      sub_10002FAB4(v9, v6, v4, &v12);
      v10 = v12;
    }

    else
    {
      v6->_announcementDuration = 2.0;
      v10 = sub_100004980();
      sub_10002F8A4(v6, v10, 0, v4);
    }
  }

  return v6;
}

- (void)allowPaste:(id)a3
{
  v4 = [(_DRPasteAnnouncementViewController *)self authorizationReplyBlock];
  v4[2](v4, 1);

  [(_DRPasteAnnouncementViewController *)self setAuthorizationReplyBlock:0];

  [(_DRPasteAnnouncementViewController *)self dismissBanner];
}

- (void)denyPaste:(id)a3
{
  v4 = [(_DRPasteAnnouncementViewController *)self authorizationReplyBlock];
  v4[2](v4, 0);

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
  v5 = [v3 titleLabel];
  [v5 setFont:v4];

  v6 = [UIButton buttonWithType:1];
  [v6 setTitle:v45 forState:0];
  v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v8 = [v6 titleLabel];
  [v8 setFont:v7];

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
  v44 = [v10 leadingAnchor];
  v43 = [v6 leadingAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v48[0] = v42;
  v41 = [v10 trailingAnchor];
  v40 = [v3 trailingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v48[1] = v39;
  v38 = [v3 leadingAnchor];
  v37 = [v6 trailingAnchor];
  v35 = [v38 constraintEqualToSystemSpacingAfterAnchor:v37 multiplier:6.0];
  v48[2] = v35;
  v34 = [v10 topAnchor];
  v36 = v3;
  v33 = [v3 topAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v48[3] = v32;
  v31 = [v10 topAnchor];
  v30 = [v6 topAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v48[4] = v29;
  v28 = [v10 bottomAnchor];
  v27 = [v3 bottomAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v48[5] = v26;
  v25 = [v10 bottomAnchor];
  v24 = [v6 bottomAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v48[6] = v23;
  v22 = [v10 centerXAnchor];
  v21 = [v9 centerXAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v48[7] = v20;
  v11 = [v10 centerYAnchor];
  v12 = v9;
  v13 = [v9 centerYAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v48[8] = v14;
  v15 = [v9 heightAnchor];
  v16 = [v10 heightAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 multiplier:2.0];
  v48[9] = v17;
  v18 = [NSArray arrayWithObjects:v48 count:10];
  [NSLayoutConstraint activateConstraints:v18];

  [v12 layoutIfNeeded];

  return v12;
}

- (void)viewDidLoad
{
  [(PLPillView *)self->_pillView setAutoresizingMask:18];
  v3 = [(_DRPasteAnnouncementViewController *)self view];
  [v3 bounds];
  [(PLPillView *)self->_pillView setFrame:?];

  v4 = [(_DRPasteAnnouncementViewController *)self view];
  [v4 addSubview:self->_pillView];
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4
{
  [(PLPillView *)self->_pillView systemLayoutSizeFittingSize:a3.width, a3.height, a4.width, a4.height];
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

+ (BOOL)shouldCoalesce:(id)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v4 = qword_1000634D8;
  if (qword_1000634D8)
  {
    if (!v3)
    {
      v5 = [qword_1000634D8 announcement];

      if (!v5)
      {
        v7 = 1;
        goto LABEL_7;
      }

      v4 = qword_1000634D8;
    }

    v6 = [v4 announcement];
    v7 = [v3 canCoalesceWithAnnouncement:v6];
  }

  else
  {
    v7 = 0;
  }

LABEL_7:

  return v7;
}

- (void)presentableDidAppearAsBanner:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);

  if (v4 == self)
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

- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v5 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6 = qword_1000634D8;

  if (v6 == v5)
  {
    v7 = [(_DRPasteAnnouncementViewController *)self authorizationReplyBlock];

    if (v7)
    {
      v8 = [(_DRPasteAnnouncementViewController *)self authorizationReplyBlock];
      v8[2](v8, 0);

      [(_DRPasteAnnouncementViewController *)self setAuthorizationReplyBlock:0];
    }

    v9 = qword_1000634D8;
    qword_1000634D8 = 0;
  }
}

- (void)presentableWillNotAppearAsBanner:(id)a3 withReason:(id)a4
{
  v6 = a4;
  if (qword_1000634D8 == a3)
  {
    v7 = [(_DRPasteAnnouncementViewController *)self authorizationReplyBlock];

    if (v7)
    {
      v8 = [(_DRPasteAnnouncementViewController *)self authorizationReplyBlock];
      v8[2](v8, 0);
    }

    v9 = DRLogTarget();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Banner posting was rejected by BannerKit: %@", &v10, 0xCu);
    }
  }
}

@end