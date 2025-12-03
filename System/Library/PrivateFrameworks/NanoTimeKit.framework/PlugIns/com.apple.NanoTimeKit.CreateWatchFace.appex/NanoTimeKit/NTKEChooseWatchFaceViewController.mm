@interface NTKEChooseWatchFaceViewController
+ (id)viewControllerWithAssets:(id)assets;
- (NTKEChooseWatchFaceViewController)initWithFaces:(id)faces;
- (void)_adjustContentHeight;
- (void)_updateEdgeMargins;
- (void)dealloc;
- (void)didChooseFace:(id)face;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NTKEChooseWatchFaceViewController

+ (id)viewControllerWithAssets:(id)assets
{
  assetsCopy = assets;
  v3 = +[CLKDevice currentDevice];
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v4 = off_100011320;
  v56 = off_100011320;
  if (!off_100011320)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v60 = sub_100004084;
    v61 = &unk_10000C348;
    v62 = &v53;
    v5 = sub_1000040D4();
    v6 = dlsym(v5, "NTKAllAvailableFaceDescriptors");
    *(v62[1] + 24) = v6;
    off_100011320 = *(v62[1] + 24);
    v4 = v54[3];
  }

  _Block_object_dispose(&v53, 8);
  if (!v4)
  {
    sub_100006668();
    __break(1u);
  }

  v7 = v4(v3);

  v43 = +[NSMutableArray array];
  v8 = MGGetBoolAnswer();
  v9 = sub_100001B60();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "NO";
    if (v8)
    {
      v10 = "YES";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "hasAppleNeuralEngine = %s", &buf, 0xCu);
  }

  v42 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v12)
  {
    v13 = *v50;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v50 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v49 + 1) + 8 * i);
        faceClass = [v15 faceClass];
        supportsExternalAssets = [faceClass supportsExternalAssets];
        if ((supportsExternalAssets & ([faceClass needsAppleNeuralEngine] ^ 1 | v8)) == 1)
        {
          v18 = [faceClass sortableFaceWithAssets:assetsCopy forDevice:v3];
          if (v18)
          {
            bundleIdentifier = [v15 bundleIdentifier];
            v20 = bundleIdentifier;
            if (bundleIdentifier)
            {
              v21 = bundleIdentifier;
            }

            else
            {
              v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"faceStyle(%ld)", [v15 faceStyle]);
            }

            v22 = v21;

            [v42 addObject:v22];
            [v43 addObject:v18];
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v12);
  }

  v23 = sub_100001B60();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v42;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Found faces to use: %{public}@", &buf, 0xCu);
  }

  if ([v43 count] == 1)
  {
    firstObject = [v43 firstObject];
    face = [firstObject face];
    v26 = sub_100001C74(face);
    ntke_cancelExtensionBarButton = [v26 ntke_cancelExtensionBarButton];
    navigationItem = [v26 navigationItem];
    [navigationItem setLeftBarButtonItem:ntke_cancelExtensionBarButton];

    v29 = v26;
  }

  else
  {
    [v43 sortUsingSelector:"compare:"];
    firstObject = +[NSMutableArray array];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v30 = v43;
    v31 = [v30 countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v31)
    {
      v32 = *v46;
      do
      {
        for (j = 0; j != v31; j = j + 1)
        {
          if (*v46 != v32)
          {
            objc_enumerationMutation(v30);
          }

          face2 = [*(*(&v45 + 1) + 8 * j) face];
          if (face2)
          {
            [firstObject addObject:face2];
          }
        }

        v31 = [v30 countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v31);
    }

    v35 = [self alloc];
    v36 = [firstObject copy];
    v37 = [v35 initWithFaces:v36];

    ntke_cancelExtensionBarButton2 = [v37 ntke_cancelExtensionBarButton];
    navigationItem2 = [v37 navigationItem];
    [navigationItem2 setLeftBarButtonItem:ntke_cancelExtensionBarButton2];

    v29 = v37;
  }

  return v29;
}

- (NTKEChooseWatchFaceViewController)initWithFaces:(id)faces
{
  facesCopy = faces;
  v17.receiver = self;
  v17.super_class = NTKEChooseWatchFaceViewController;
  v5 = [(NTKEChooseWatchFaceViewController *)&v17 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [facesCopy copy];
    [(NTKEChooseWatchFaceViewController *)v5 setFaces:v6];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"CHOOSE_WATCH_FACE" value:&stru_10000C548 table:0];
    [(NTKEChooseWatchFaceViewController *)v5 setTitle:v8];

    navigationItem = [(NTKEChooseWatchFaceViewController *)v5 navigationItem];
    [navigationItem _setLargeTitleTwoLineMode:1];

    v10 = [UIBarButtonItem alloc];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"CHOOSE_WATCH_FACE_BACK" value:&stru_10000C548 table:0];
    v13 = [v10 initWithTitle:v12 style:0 target:0 action:0];
    navigationItem2 = [(NTKEChooseWatchFaceViewController *)v5 navigationItem];
    [navigationItem2 setBackBarButtonItem:v13];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v5 selector:"_fontSizeDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = NTKEChooseWatchFaceViewController;
  [(NTKEChooseWatchFaceViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v126.receiver = self;
  v126.super_class = NTKEChooseWatchFaceViewController;
  [(NTKEChooseWatchFaceViewController *)&v126 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  view = [(NTKEChooseWatchFaceViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = objc_opt_new();
  [(NTKEChooseWatchFaceViewController *)self setScrollView:v5];

  [(UIScrollView *)self->_scrollView setDelegate:self];
  view2 = [(NTKEChooseWatchFaceViewController *)self view];
  [view2 addSubview:self->_scrollView];

  v7 = +[NSMutableArray array];
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  faces = [(NTKEChooseWatchFaceViewController *)self faces];
  v9 = [faces countByEnumeratingWithState:&v122 objects:v130 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v123;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v123 != v11)
        {
          objc_enumerationMutation(faces);
        }

        v13 = [[_NTKEFaceChoice alloc] initWithFace:*(*(&v122 + 1) + 8 * i)];
        [(_NTKEFaceChoice *)v13 setDelegate:self];
        LODWORD(v14) = 1148846080;
        [(_NTKEFaceChoice *)v13 setContentHuggingPriority:1 forAxis:v14];
        LODWORD(v15) = 1148846080;
        [(_NTKEFaceChoice *)v13 setContentCompressionResistancePriority:1 forAxis:v15];
        [(_NTKEFaceChoice *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v7 addObject:v13];
      }

      v10 = [faces countByEnumeratingWithState:&v122 objects:v130 count:16];
    }

    while (v10);
  }

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor = [(UIScrollView *)self->_scrollView leadingAnchor];
  view3 = [(NTKEChooseWatchFaceViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v111 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v129[0] = v111;
  trailingAnchor = [(UIScrollView *)self->_scrollView trailingAnchor];
  view4 = [(NTKEChooseWatchFaceViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v99 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v129[1] = v99;
  topAnchor = [(UIScrollView *)self->_scrollView topAnchor];
  view5 = [(NTKEChooseWatchFaceViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v129[2] = v18;
  bottomAnchor = [(UIScrollView *)self->_scrollView bottomAnchor];
  view6 = [(NTKEChooseWatchFaceViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v129[3] = v22;
  v23 = [NSArray arrayWithObjects:v129 count:4];

  v121 = v23;
  v119 = [v23 mutableCopy];
  if ([v7 count] == 2)
  {
    firstObject = [v7 firstObject];
    LODWORD(v25) = 1148846080;
    [firstObject setContentHuggingPriority:1 forAxis:v25];
    LODWORD(v26) = 1148846080;
    [firstObject setContentCompressionResistancePriority:1 forAxis:v26];
    [firstObject setTranslatesAutoresizingMaskIntoConstraints:0];
    lastObject = [v7 lastObject];
    LODWORD(v28) = 1148846080;
    [lastObject setContentHuggingPriority:1 forAxis:v28];
    LODWORD(v29) = 1148846080;
    [lastObject setContentCompressionResistancePriority:1 forAxis:v29];
    [lastObject setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = objc_opt_new();
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v30 addSubview:firstObject];
    [v30 addSubview:lastObject];
    [(UIScrollView *)self->_scrollView addSubview:v30];
    v31 = objc_opt_new();
    contentGuide = self->_contentGuide;
    self->_contentGuide = v31;

    view7 = [(NTKEChooseWatchFaceViewController *)self view];
    [view7 addLayoutGuide:self->_contentGuide];

    heightAnchor = [v30 heightAnchor];
    v35 = [heightAnchor constraintEqualToConstant:0.0];
    [(NTKEChooseWatchFaceViewController *)self setContentViewHeightConstraint:v35];

    leadingAnchor3 = [firstObject leadingAnchor];
    leadingAnchor4 = [(UILayoutGuide *)self->_contentGuide leadingAnchor];
    v38 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:0.0];
    [(NTKEChooseWatchFaceViewController *)self setLeadingMarginConstraint:v38];

    trailingAnchor3 = [firstObject trailingAnchor];
    trailingAnchor4 = [(UILayoutGuide *)self->_contentGuide trailingAnchor];
    v41 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor4 constant:-0.0];
    [(NTKEChooseWatchFaceViewController *)self setTrailingMarginConstraint:v41];

    [(NTKEChooseWatchFaceViewController *)self _updateEdgeMargins];
    leadingAnchor5 = [v30 leadingAnchor];
    leadingAnchor6 = [(UIScrollView *)self->_scrollView leadingAnchor];
    v109 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v128[0] = v109;
    trailingAnchor5 = [v30 trailingAnchor];
    trailingAnchor6 = [(UIScrollView *)self->_scrollView trailingAnchor];
    v100 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v128[1] = v100;
    topAnchor3 = [v30 topAnchor];
    topAnchor4 = [(UIScrollView *)self->_scrollView topAnchor];
    v93 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v128[2] = v93;
    bottomAnchor3 = [v30 bottomAnchor];
    bottomAnchor4 = [(UIScrollView *)self->_scrollView bottomAnchor];
    v90 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    contentViewHeightConstraint = self->_contentViewHeightConstraint;
    v128[3] = v90;
    v128[4] = contentViewHeightConstraint;
    widthAnchor = [v30 widthAnchor];
    widthAnchor2 = [(UIScrollView *)self->_scrollView widthAnchor];
    v88 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v128[5] = v88;
    leadingAnchor7 = [(UILayoutGuide *)self->_contentGuide leadingAnchor];
    leadingAnchor8 = [v30 leadingAnchor];
    v85 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v128[6] = v85;
    trailingAnchor7 = [(UILayoutGuide *)self->_contentGuide trailingAnchor];
    v82 = v30;
    trailingAnchor8 = [v30 trailingAnchor];
    v81 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v128[7] = v81;
    centerXAnchor = [firstObject centerXAnchor];
    centerXAnchor2 = [(UILayoutGuide *)self->_contentGuide centerXAnchor];
    v78 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v128[8] = v78;
    v43 = lastObject;
    centerXAnchor3 = [lastObject centerXAnchor];
    centerXAnchor4 = [firstObject centerXAnchor];
    v75 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    leadingMarginConstraint = self->_leadingMarginConstraint;
    v128[9] = v75;
    v128[10] = leadingMarginConstraint;
    v128[11] = self->_trailingMarginConstraint;
    leadingAnchor9 = [lastObject leadingAnchor];
    leadingAnchor10 = [firstObject leadingAnchor];
    v71 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v128[12] = v71;
    trailingAnchor9 = [lastObject trailingAnchor];
    trailingAnchor10 = [firstObject trailingAnchor];
    v68 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v128[13] = v68;
    centerYAnchor = [(UILayoutGuide *)self->_contentGuide centerYAnchor];
    centerYAnchor2 = [v30 centerYAnchor];
    v65 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v128[14] = v65;
    topAnchor5 = [firstObject topAnchor];
    topAnchor6 = [(UILayoutGuide *)self->_contentGuide topAnchor];
    v45 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:14.0];
    v128[15] = v45;
    topAnchor7 = [lastObject topAnchor];
    bottomAnchor5 = [firstObject bottomAnchor];
    v48 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5 constant:30.0];
    v128[16] = v48;
    bottomAnchor6 = [v43 bottomAnchor];
    bottomAnchor7 = [(UILayoutGuide *)self->_contentGuide bottomAnchor];
    v51 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:-14.0];
    v128[17] = v51;
    v73 = [NSArray arrayWithObjects:v128 count:18];

    v52 = v43;
    v53 = v119;
    [v119 addObjectsFromArray:v73];
  }

  else
  {
    firstObject = [[UIStackView alloc] initWithArrangedSubviews:v7];
    [firstObject setAxis:1];
    [firstObject setSpacing:30.0];
    [firstObject setAlignment:0];
    [firstObject setDistribution:3];
    [firstObject setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIScrollView *)self->_scrollView addSubview:firstObject];
    leadingAnchor11 = [firstObject leadingAnchor];
    leadingAnchor12 = [(UIScrollView *)self->_scrollView leadingAnchor];
    v110 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    v127[0] = v110;
    trailingAnchor11 = [firstObject trailingAnchor];
    trailingAnchor12 = [(UIScrollView *)self->_scrollView trailingAnchor];
    v101 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
    v127[1] = v101;
    topAnchor8 = [firstObject topAnchor];
    topAnchor9 = [(UIScrollView *)self->_scrollView topAnchor];
    v54 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
    v127[2] = v54;
    bottomAnchor8 = [firstObject bottomAnchor];
    bottomAnchor9 = [(UIScrollView *)self->_scrollView bottomAnchor];
    v57 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
    v127[3] = v57;
    widthAnchor3 = [firstObject widthAnchor];
    widthAnchor4 = [(UIScrollView *)self->_scrollView widthAnchor];
    v60 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    v127[4] = v60;
    v61 = [NSArray arrayWithObjects:v127 count:5];

    v52 = v61;
    v53 = v119;
    [v119 addObjectsFromArray:v52];
  }

  v62 = [v53 copy];
  [NSLayoutConstraint activateConstraints:v62];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKEChooseWatchFaceViewController;
  [(NTKEChooseWatchFaceViewController *)&v3 viewDidLayoutSubviews];
  [(NTKEChooseWatchFaceViewController *)self _adjustContentHeight];
}

- (void)_adjustContentHeight
{
  if (self->_contentViewHeightConstraint)
  {
    frameLayoutGuide = [(UIScrollView *)self->_scrollView frameLayoutGuide];
    [frameLayoutGuide layoutFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(UIScrollView *)self->_scrollView adjustedContentInset];
    v13 = v7 + v12;
    v16 = v9 - (v14 + v15);
    v22.size.height = v11 - (v12 + v17);
    v22.origin.x = v5 + v14;
    v22.origin.y = v13;
    v22.size.width = v16;
    Height = CGRectGetHeight(v22);

    [(UILayoutGuide *)self->_contentGuide layoutFrame];
    v19 = CGRectGetHeight(v23);
    if (Height >= v19)
    {
      v19 = Height;
    }

    contentViewHeightConstraint = self->_contentViewHeightConstraint;

    [(NSLayoutConstraint *)contentViewHeightConstraint setConstant:v19];
  }
}

- (void)_updateEdgeMargins
{
  if (self->_leadingMarginConstraint)
  {
    v3 = 0.0;
    if (!sub_100002F10())
    {
      v7 = 0;
      v8 = &v7;
      v9 = 0x2020000000;
      v4 = off_100011338;
      v10 = off_100011338;
      if (!off_100011338)
      {
        v5 = sub_1000040D4();
        v8[3] = dlsym(v5, "NTKCScreenEdgeMargin");
        off_100011338 = v8[3];
        v4 = v8[3];
      }

      _Block_object_dispose(&v7, 8);
      if (!v4)
      {
        v6 = sub_100006668();
        _Block_object_dispose(&v7, 8);
        _Unwind_Resume(v6);
      }

      v3 = v4();
    }

    [(NSLayoutConstraint *)self->_leadingMarginConstraint setConstant:v3];
    [(NSLayoutConstraint *)self->_trailingMarginConstraint setConstant:-v3];
  }
}

- (void)didChooseFace:(id)face
{
  v5 = sub_100001C74(face);
  navigationController = [(NTKEChooseWatchFaceViewController *)self navigationController];
  [navigationController pushViewController:v5 animated:1];
}

@end