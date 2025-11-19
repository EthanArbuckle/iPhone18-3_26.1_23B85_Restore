@interface NTKEChooseWatchFaceViewController
+ (id)viewControllerWithAssets:(id)a3;
- (NTKEChooseWatchFaceViewController)initWithFaces:(id)a3;
- (void)_adjustContentHeight;
- (void)_updateEdgeMargins;
- (void)dealloc;
- (void)didChooseFace:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NTKEChooseWatchFaceViewController

+ (id)viewControllerWithAssets:(id)a3
{
  v44 = a3;
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
        v16 = [v15 faceClass];
        v17 = [v16 supportsExternalAssets];
        if ((v17 & ([v16 needsAppleNeuralEngine] ^ 1 | v8)) == 1)
        {
          v18 = [v16 sortableFaceWithAssets:v44 forDevice:v3];
          if (v18)
          {
            v19 = [v15 bundleIdentifier];
            v20 = v19;
            if (v19)
            {
              v21 = v19;
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
    v24 = [v43 firstObject];
    v25 = [v24 face];
    v26 = sub_100001C74(v25);
    v27 = [v26 ntke_cancelExtensionBarButton];
    v28 = [v26 navigationItem];
    [v28 setLeftBarButtonItem:v27];

    v29 = v26;
  }

  else
  {
    [v43 sortUsingSelector:"compare:"];
    v24 = +[NSMutableArray array];
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

          v34 = [*(*(&v45 + 1) + 8 * j) face];
          if (v34)
          {
            [v24 addObject:v34];
          }
        }

        v31 = [v30 countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v31);
    }

    v35 = [a1 alloc];
    v36 = [v24 copy];
    v37 = [v35 initWithFaces:v36];

    v38 = [v37 ntke_cancelExtensionBarButton];
    v39 = [v37 navigationItem];
    [v39 setLeftBarButtonItem:v38];

    v29 = v37;
  }

  return v29;
}

- (NTKEChooseWatchFaceViewController)initWithFaces:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NTKEChooseWatchFaceViewController;
  v5 = [(NTKEChooseWatchFaceViewController *)&v17 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
    [(NTKEChooseWatchFaceViewController *)v5 setFaces:v6];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"CHOOSE_WATCH_FACE" value:&stru_10000C548 table:0];
    [(NTKEChooseWatchFaceViewController *)v5 setTitle:v8];

    v9 = [(NTKEChooseWatchFaceViewController *)v5 navigationItem];
    [v9 _setLargeTitleTwoLineMode:1];

    v10 = [UIBarButtonItem alloc];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"CHOOSE_WATCH_FACE_BACK" value:&stru_10000C548 table:0];
    v13 = [v10 initWithTitle:v12 style:0 target:0 action:0];
    v14 = [(NTKEChooseWatchFaceViewController *)v5 navigationItem];
    [v14 setBackBarButtonItem:v13];

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
  v4 = [(NTKEChooseWatchFaceViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_opt_new();
  [(NTKEChooseWatchFaceViewController *)self setScrollView:v5];

  [(UIScrollView *)self->_scrollView setDelegate:self];
  v6 = [(NTKEChooseWatchFaceViewController *)self view];
  [v6 addSubview:self->_scrollView];

  v7 = +[NSMutableArray array];
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v8 = [(NTKEChooseWatchFaceViewController *)self faces];
  v9 = [v8 countByEnumeratingWithState:&v122 objects:v130 count:16];
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
          objc_enumerationMutation(v8);
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

      v10 = [v8 countByEnumeratingWithState:&v122 objects:v130 count:16];
    }

    while (v10);
  }

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  v118 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v120 = [(NTKEChooseWatchFaceViewController *)self view];
  v114 = [v120 leadingAnchor];
  v111 = [v118 constraintEqualToAnchor:v114];
  v129[0] = v111;
  v105 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v108 = [(NTKEChooseWatchFaceViewController *)self view];
  v102 = [v108 trailingAnchor];
  v99 = [v105 constraintEqualToAnchor:v102];
  v129[1] = v99;
  v96 = [(UIScrollView *)self->_scrollView topAnchor];
  v16 = [(NTKEChooseWatchFaceViewController *)self view];
  v17 = [v16 topAnchor];
  v18 = [v96 constraintEqualToAnchor:v17];
  v129[2] = v18;
  v19 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v20 = [(NTKEChooseWatchFaceViewController *)self view];
  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  v129[3] = v22;
  v23 = [NSArray arrayWithObjects:v129 count:4];

  v121 = v23;
  v119 = [v23 mutableCopy];
  if ([v7 count] == 2)
  {
    v24 = [v7 firstObject];
    LODWORD(v25) = 1148846080;
    [v24 setContentHuggingPriority:1 forAxis:v25];
    LODWORD(v26) = 1148846080;
    [v24 setContentCompressionResistancePriority:1 forAxis:v26];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [v7 lastObject];
    LODWORD(v28) = 1148846080;
    [v27 setContentHuggingPriority:1 forAxis:v28];
    LODWORD(v29) = 1148846080;
    [v27 setContentCompressionResistancePriority:1 forAxis:v29];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = objc_opt_new();
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v30 addSubview:v24];
    [v30 addSubview:v27];
    [(UIScrollView *)self->_scrollView addSubview:v30];
    v31 = objc_opt_new();
    contentGuide = self->_contentGuide;
    self->_contentGuide = v31;

    v33 = [(NTKEChooseWatchFaceViewController *)self view];
    [v33 addLayoutGuide:self->_contentGuide];

    v34 = [v30 heightAnchor];
    v35 = [v34 constraintEqualToConstant:0.0];
    [(NTKEChooseWatchFaceViewController *)self setContentViewHeightConstraint:v35];

    v36 = [v24 leadingAnchor];
    v37 = [(UILayoutGuide *)self->_contentGuide leadingAnchor];
    v38 = [v36 constraintGreaterThanOrEqualToAnchor:v37 constant:0.0];
    [(NTKEChooseWatchFaceViewController *)self setLeadingMarginConstraint:v38];

    v39 = [v24 trailingAnchor];
    v40 = [(UILayoutGuide *)self->_contentGuide trailingAnchor];
    v41 = [v39 constraintGreaterThanOrEqualToAnchor:v40 constant:-0.0];
    [(NTKEChooseWatchFaceViewController *)self setTrailingMarginConstraint:v41];

    [(NTKEChooseWatchFaceViewController *)self _updateEdgeMargins];
    v115 = [v30 leadingAnchor];
    v112 = [(UIScrollView *)self->_scrollView leadingAnchor];
    v109 = [v115 constraintEqualToAnchor:v112];
    v128[0] = v109;
    v106 = [v30 trailingAnchor];
    v103 = [(UIScrollView *)self->_scrollView trailingAnchor];
    v100 = [v106 constraintEqualToAnchor:v103];
    v128[1] = v100;
    v97 = [v30 topAnchor];
    v94 = [(UIScrollView *)self->_scrollView topAnchor];
    v93 = [v97 constraintEqualToAnchor:v94];
    v128[2] = v93;
    v92 = [v30 bottomAnchor];
    v91 = [(UIScrollView *)self->_scrollView bottomAnchor];
    v90 = [v92 constraintEqualToAnchor:v91];
    contentViewHeightConstraint = self->_contentViewHeightConstraint;
    v128[3] = v90;
    v128[4] = contentViewHeightConstraint;
    v89 = [v30 widthAnchor];
    v117 = [(UIScrollView *)self->_scrollView widthAnchor];
    v88 = [v89 constraintEqualToAnchor:v117];
    v128[5] = v88;
    v87 = [(UILayoutGuide *)self->_contentGuide leadingAnchor];
    v86 = [v30 leadingAnchor];
    v85 = [v87 constraintEqualToAnchor:v86];
    v128[6] = v85;
    v84 = [(UILayoutGuide *)self->_contentGuide trailingAnchor];
    v82 = v30;
    v83 = [v30 trailingAnchor];
    v81 = [v84 constraintEqualToAnchor:v83];
    v128[7] = v81;
    v80 = [v24 centerXAnchor];
    v79 = [(UILayoutGuide *)self->_contentGuide centerXAnchor];
    v78 = [v80 constraintEqualToAnchor:v79];
    v128[8] = v78;
    v43 = v27;
    v77 = [v27 centerXAnchor];
    v76 = [v24 centerXAnchor];
    v75 = [v77 constraintEqualToAnchor:v76];
    leadingMarginConstraint = self->_leadingMarginConstraint;
    v128[9] = v75;
    v128[10] = leadingMarginConstraint;
    v128[11] = self->_trailingMarginConstraint;
    v74 = [v27 leadingAnchor];
    v72 = [v24 leadingAnchor];
    v71 = [v74 constraintEqualToAnchor:v72];
    v128[12] = v71;
    v70 = [v27 trailingAnchor];
    v69 = [v24 trailingAnchor];
    v68 = [v70 constraintEqualToAnchor:v69];
    v128[13] = v68;
    v67 = [(UILayoutGuide *)self->_contentGuide centerYAnchor];
    v66 = [v30 centerYAnchor];
    v65 = [v67 constraintEqualToAnchor:v66];
    v128[14] = v65;
    v64 = [v24 topAnchor];
    v63 = [(UILayoutGuide *)self->_contentGuide topAnchor];
    v45 = [v64 constraintEqualToAnchor:v63 constant:14.0];
    v128[15] = v45;
    v46 = [v27 topAnchor];
    v47 = [v24 bottomAnchor];
    v48 = [v46 constraintEqualToAnchor:v47 constant:30.0];
    v128[16] = v48;
    v49 = [v43 bottomAnchor];
    v50 = [(UILayoutGuide *)self->_contentGuide bottomAnchor];
    v51 = [v49 constraintEqualToAnchor:v50 constant:-14.0];
    v128[17] = v51;
    v73 = [NSArray arrayWithObjects:v128 count:18];

    v52 = v43;
    v53 = v119;
    [v119 addObjectsFromArray:v73];
  }

  else
  {
    v24 = [[UIStackView alloc] initWithArrangedSubviews:v7];
    [v24 setAxis:1];
    [v24 setSpacing:30.0];
    [v24 setAlignment:0];
    [v24 setDistribution:3];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIScrollView *)self->_scrollView addSubview:v24];
    v116 = [v24 leadingAnchor];
    v113 = [(UIScrollView *)self->_scrollView leadingAnchor];
    v110 = [v116 constraintEqualToAnchor:v113];
    v127[0] = v110;
    v107 = [v24 trailingAnchor];
    v104 = [(UIScrollView *)self->_scrollView trailingAnchor];
    v101 = [v107 constraintEqualToAnchor:v104];
    v127[1] = v101;
    v98 = [v24 topAnchor];
    v95 = [(UIScrollView *)self->_scrollView topAnchor];
    v54 = [v98 constraintEqualToAnchor:v95];
    v127[2] = v54;
    v55 = [v24 bottomAnchor];
    v56 = [(UIScrollView *)self->_scrollView bottomAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];
    v127[3] = v57;
    v58 = [v24 widthAnchor];
    v59 = [(UIScrollView *)self->_scrollView widthAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];
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
    v3 = [(UIScrollView *)self->_scrollView frameLayoutGuide];
    [v3 layoutFrame];
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

- (void)didChooseFace:(id)a3
{
  v5 = sub_100001C74(a3);
  v4 = [(NTKEChooseWatchFaceViewController *)self navigationController];
  [v4 pushViewController:v5 animated:1];
}

@end