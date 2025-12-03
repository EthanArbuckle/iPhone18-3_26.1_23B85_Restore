@interface _NTKEFaceChoice
- (_NTKEFaceChoice)initWithFace:(id)face;
- (_NTKEFaceChoiceDelegate)delegate;
- (void)_selected;
- (void)_updateTitle;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation _NTKEFaceChoice

- (_NTKEFaceChoice)initWithFace:(id)face
{
  faceCopy = face;
  v53.receiver = self;
  v53.super_class = _NTKEFaceChoice;
  v4 = [(_NTKEFaceChoice *)&v53 initWithFrame:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
  v5 = v4;
  if (v4)
  {
    [(_NTKEFaceChoice *)v4 setFace:faceCopy];
    v59 = 0;
    v60 = &v59;
    v61 = 0x2050000000;
    v6 = qword_100011340;
    v62 = qword_100011340;
    if (!qword_100011340)
    {
      v54 = _NSConcreteStackBlock;
      v55 = 3221225472;
      v56 = sub_1000042E8;
      v57 = &unk_10000C348;
      v58 = &v59;
      sub_1000042E8(&v54);
      v6 = v60[3];
    }

    v7 = v6;
    _Block_object_dispose(&v59, 8);
    v8 = [[v6 alloc] initWithFace:v5->_face];
    [(_NTKEFaceChoice *)v5 setFaceVC:v8];

    v59 = 0;
    v60 = &v59;
    v61 = 0x2050000000;
    v9 = qword_100011348;
    v62 = qword_100011348;
    if (!qword_100011348)
    {
      v54 = _NSConcreteStackBlock;
      v55 = 3221225472;
      v56 = sub_100004340;
      v57 = &unk_10000C348;
      v58 = &v59;
      sub_100004340(&v54);
      v9 = v60[3];
    }

    v10 = v9;
    _Block_object_dispose(&v59, 8);
    v11 = [v9 alloc];
    v12 = sub_10000392C();
    if (v12 == -1)
    {
      v16 = 142.5;
      v14 = 114.0;
    }

    else
    {
      v9 = +[CLKDevice currentDevice];
      [v9 screenBounds];
      v14 = v13;
      v16 = v15;
    }

    v17 = [v11 initWithFaceSize:2 style:{v14, v16}];
    [(_NTKEFaceChoice *)v5 setFaceContainer:v17];

    if (v12 != -1)
    {
    }

    view = [(NTKCompanionFaceViewController *)v5->_faceVC view];
    [(NTKCFaceContainerView *)v5->_faceContainer setFaceView:view];

    LODWORD(v19) = 1148846080;
    [(NTKCFaceContainerView *)v5->_faceContainer setContentHuggingPriority:1 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [(NTKCFaceContainerView *)v5->_faceContainer setContentHuggingPriority:0 forAxis:v20];
    LODWORD(v21) = 1148846080;
    [(NTKCFaceContainerView *)v5->_faceContainer setContentCompressionResistancePriority:1 forAxis:v21];
    LODWORD(v22) = 1148846080;
    [(NTKCFaceContainerView *)v5->_faceContainer setContentCompressionResistancePriority:0 forAxis:v22];
    [(_NTKEFaceChoice *)v5 addSubview:v5->_faceContainer];
    v23 = objc_opt_new();
    [(_NTKEFaceChoice *)v5 setTitle:v23];

    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v24 = off_100011358;
    v62 = off_100011358;
    if (!off_100011358)
    {
      v54 = _NSConcreteStackBlock;
      v55 = 3221225472;
      v56 = sub_1000043E8;
      v57 = &unk_10000C348;
      v58 = &v59;
      v25 = sub_1000040D4();
      v26 = dlsym(v25, "NTKCActionColor");
      *(v58[1] + 24) = v26;
      off_100011358 = *(v58[1] + 24);
      v24 = v60[3];
    }

    _Block_object_dispose(&v59, 8);
    if (!v24)
    {
      sub_100006668();
      __break(1u);
    }

    v27 = v24();
    [(UILabel *)v5->_title setTextColor:v27];

    v28 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v5->_title setFont:v28];

    [(UILabel *)v5->_title setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_title setNumberOfLines:0];
    [(UILabel *)v5->_title setTextAlignment:1];
    LODWORD(v29) = 1148846080;
    [(UILabel *)v5->_title setContentHuggingPriority:1 forAxis:v29];
    LODWORD(v30) = 1148846080;
    [(UILabel *)v5->_title setContentCompressionResistancePriority:1 forAxis:v30];
    LODWORD(v31) = 1148846080;
    [(UILabel *)v5->_title setContentCompressionResistancePriority:0 forAxis:v31];
    [(_NTKEFaceChoice *)v5 addSubview:v5->_title];
    v32 = [_NTKEFaceChoiceHighlightButton buttonWithType:1];
    [(_NTKEFaceChoice *)v5 setFaceButton:v32];

    [(_NTKEFaceChoiceHighlightButton *)v5->_faceButton setDelegate:v5];
    [(_NTKEFaceChoiceHighlightButton *)v5->_faceButton addTarget:v5 action:"_selected" forControlEvents:64];
    [(_NTKEFaceChoice *)v5 addSubview:v5->_faceButton];
    v33 = objc_opt_new();
    [(_NTKEFaceChoice *)v5 setTitleButton:v33];

    [(_NTKEFaceChoiceHighlightButton *)v5->_titleButton setDelegate:v5];
    [(_NTKEFaceChoiceHighlightButton *)v5->_titleButton addTarget:v5 action:"_selected" forControlEvents:64];
    [(_NTKEFaceChoice *)v5 addSubview:v5->_titleButton];
    [(_NTKEFaceChoice *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NTKCFaceContainerView *)v5->_faceContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_title setTranslatesAutoresizingMaskIntoConstraints:0];
    firstBaselineAnchor = [(UILabel *)v5->_title firstBaselineAnchor];
    bottomAnchor = [(NTKCFaceContainerView *)v5->_faceContainer bottomAnchor];
    v36 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:0.0];
    [(_NTKEFaceChoice *)v5 setTitleBaselineConstraint:v36];

    [(_NTKEFaceChoice *)v5 _updateTitle];
    topAnchor = [(NTKCFaceContainerView *)v5->_faceContainer topAnchor];
    topAnchor2 = [(_NTKEFaceChoice *)v5 topAnchor];
    v49 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v63[0] = v49;
    centerXAnchor = [(NTKCFaceContainerView *)v5->_faceContainer centerXAnchor];
    centerXAnchor2 = [(_NTKEFaceChoice *)v5 centerXAnchor];
    v38 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v63[1] = v38;
    centerXAnchor3 = [(UILabel *)v5->_title centerXAnchor];
    centerXAnchor4 = [(NTKCFaceContainerView *)v5->_faceContainer centerXAnchor];
    v41 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v63[2] = v41;
    v63[3] = v5->_titleBaselineConstraint;
    bottomAnchor2 = [(UILabel *)v5->_title bottomAnchor];
    bottomAnchor3 = [(_NTKEFaceChoice *)v5 bottomAnchor];
    v44 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v63[4] = v44;
    v45 = [NSArray arrayWithObjects:v63 count:5];

    [NSLayoutConstraint activateConstraints:v45];
    v46 = +[NSNotificationCenter defaultCenter];
    [v46 addObserver:v5 selector:"_fontSizeDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = _NTKEFaceChoice;
  [(_NTKEFaceChoice *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _NTKEFaceChoice;
  [(_NTKEFaceChoice *)&v3 layoutSubviews];
  [(NTKCFaceContainerView *)self->_faceContainer frame];
  [(_NTKEFaceChoiceHighlightButton *)self->_faceButton setFrame:?];
  [(UILabel *)self->_title frame];
  [(_NTKEFaceChoiceHighlightButton *)self->_titleButton setFrame:?];
}

- (void)_updateTitle
{
  v3 = sub_10000392C();
  if (sub_100002F10())
  {
    name = [(NTKFace *)self->_face name];
    v4 = 44.0;
    [(UILabel *)self->_title setText:name];
  }

  else
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"FORMAT_WATCH_FACE" value:&stru_10000C548 table:0];

    name2 = [(NTKFace *)self->_face name];
    name = [NSString stringWithFormat:v6, name2];

    if (v3 == -1)
    {
      v4 = 30.0;
    }

    else
    {
      v4 = 36.0;
    }

    [(UILabel *)self->_title setText:name];
  }

  [(NSLayoutConstraint *)self->_titleBaselineConstraint setConstant:v4];
}

- (void)_selected
{
  delegate = [(_NTKEFaceChoice *)self delegate];
  [delegate didChooseFace:self->_face];
}

- (_NTKEFaceChoiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end