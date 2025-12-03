@interface MUPlacePhotoGalleryAttributionView
- (MUPlacePhotoGalleryAttributionView)init;
- (MUPlacePhotoGalleryAttributionViewDelegate)delegate;
- (void)_accessoryViewTapped;
- (void)_attributionTapped;
- (void)_buildAndUpdateDescription;
- (void)_updateAppearance;
- (void)beginAnimatingActivityIndicator;
- (void)endAnimatingActivityIndicatorWithError:(id)error;
- (void)setViewModel:(id)model;
- (void)setupSubviews;
@end

@implementation MUPlacePhotoGalleryAttributionView

- (MUPlacePhotoGalleryAttributionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_attributionTapped
{
  delegate = [(MUPlacePhotoGalleryAttributionView *)self delegate];
  [delegate attributionViewDidTapAttributionPunchout:self];
}

- (void)endAnimatingActivityIndicatorWithError:(id)error
{
  accessoryButton = [(MUPlacePhotoGalleryAttributionView *)self accessoryButton];
  configuration = [accessoryButton configuration];

  [configuration setShowsActivityIndicator:0];
  accessoryButton2 = [(MUPlacePhotoGalleryAttributionView *)self accessoryButton];
  [accessoryButton2 setConfiguration:configuration];
}

- (void)beginAnimatingActivityIndicator
{
  accessoryButton = [(MUPlacePhotoGalleryAttributionView *)self accessoryButton];
  configuration = [accessoryButton configuration];

  [configuration setShowsActivityIndicator:1];
  accessoryButton2 = [(MUPlacePhotoGalleryAttributionView *)self accessoryButton];
  [accessoryButton2 setConfiguration:configuration];
}

- (void)_accessoryViewTapped
{
  accessoryStyle = [(MUPlacePhotoGalleryAttributionViewModel *)self->_viewModel accessoryStyle];
  if (accessoryStyle == 2)
  {
    delegate = [(MUPlacePhotoGalleryAttributionView *)self delegate];
    [delegate attributionViewDidTapReportAnIssue:self];
  }

  else
  {
    if (accessoryStyle != 1)
    {
      return;
    }

    delegate = [(MUPlacePhotoGalleryAttributionView *)self delegate];
    [delegate attributionViewDidTapAttributionPunchout:self];
  }
}

- (void)_updateAppearance
{
  v39[2] = *MEMORY[0x1E69E9840];
  [(MUPlacePhotoGalleryAttributionView *)self _buildAndUpdateDescription];
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  accessoryStyle = [(MUPlacePhotoGalleryAttributionViewModel *)self->_viewModel accessoryStyle];
  if (accessoryStyle == 3)
  {
    v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ellipsis.circle"];
    v13 = MEMORY[0x1E69DCAD8];
    v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v15 = [v13 configurationWithFont:v14 scale:3];
    v16 = [v12 imageWithConfiguration:v15];
    [plainButtonConfiguration setImage:v16];

    objc_initWeak(&location, self);
    v17 = MEMORY[0x1E69DC628];
    v18 = _MULocalizedStringFromThisBundle(@"Delete Your Photo");
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __55__MUPlacePhotoGalleryAttributionView__updateAppearance__block_invoke;
    v36[3] = &unk_1E82196D0;
    objc_copyWeak(&v37, &location);
    v19 = [v17 actionWithTitle:v18 image:0 identifier:0 handler:v36];

    v20 = MEMORY[0x1E69DC628];
    v21 = _MULocalizedStringFromThisBundle(@"Change Photo Credit");
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __55__MUPlacePhotoGalleryAttributionView__updateAppearance__block_invoke_2;
    v34 = &unk_1E82196D0;
    objc_copyWeak(&v35, &location);
    v22 = [v20 actionWithTitle:v21 image:0 identifier:0 handler:&v31];

    v23 = MEMORY[0x1E69DCC60];
    v39[0] = v19;
    v39[1] = v22;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:{2, v31, v32, v33, v34}];
    v25 = [v23 menuWithChildren:v24];

    accessoryButton = [(MUPlacePhotoGalleryAttributionView *)self accessoryButton];
    [accessoryButton setMenu:v25];

    accessoryButton2 = [(MUPlacePhotoGalleryAttributionView *)self accessoryButton];
    [accessoryButton2 setShowsMenuAsPrimaryAction:1];

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
    goto LABEL_7;
  }

  if (accessoryStyle == 2)
  {
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.bubble"];
    v8 = MEMORY[0x1E69DCAD8];
    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v10 = [v8 configurationWithFont:v9 scale:3];
    v11 = [v7 imageWithConfiguration:v10];
    [plainButtonConfiguration setImage:v11];

    goto LABEL_7;
  }

  if (accessoryStyle)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  accessoryButton3 = [(MUPlacePhotoGalleryAttributionView *)self accessoryButton];
  [accessoryButton3 setImage:0 forState:0];

  v6 = 1;
LABEL_8:
  accessoryButton4 = [(MUPlacePhotoGalleryAttributionView *)self accessoryButton];
  [accessoryButton4 setConfiguration:plainButtonConfiguration];

  accessoryButton5 = [(MUPlacePhotoGalleryAttributionView *)self accessoryButton];
  [accessoryButton5 setHidden:v6];

  v30 = *MEMORY[0x1E69E9840];
}

void __55__MUPlacePhotoGalleryAttributionView__updateAppearance__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 attributionViewDidSelectDeletePhoto:v3];

    WeakRetained = v3;
  }
}

void __55__MUPlacePhotoGalleryAttributionView__updateAppearance__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 attributionViewDidSelectEditPhotoCredit:v3];

    WeakRetained = v3;
  }
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (([(MUPlacePhotoGalleryAttributionViewModel *)self->_viewModel isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewModel, model);
    [(MUPlacePhotoGalleryAttributionView *)self _updateAppearance];
  }
}

- (void)_buildAndUpdateDescription
{
  v95[2] = *MEMORY[0x1E69E9840];
  caption = [(MUPlacePhotoGalleryAttributionViewModel *)self->_viewModel caption];
  v4 = [caption length];
  captionLabel = [(MUPlacePhotoGalleryAttributionView *)self captionLabel];
  v6 = captionLabel;
  v7 = v4 == 0;
  v8 = v4 == 0;
  v87 = caption;
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = caption;
  }

  if (v7)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 8.0;
  }

  [captionLabel setText:v9];

  captionLabel2 = [(MUPlacePhotoGalleryAttributionView *)self captionLabel];
  [captionLabel2 setHidden:v8];

  captionToPrimaryLabelConstraint = [(MUPlacePhotoGalleryAttributionView *)self captionToPrimaryLabelConstraint];
  [captionToPrimaryLabelConstraint setConstant:v10];

  v93 = *MEMORY[0x1E69DB648];
  v13 = v93;
  mEMORY[0x1E696F200] = [MEMORY[0x1E696F200] sharedManager];
  subtitleFont = [mEMORY[0x1E696F200] subtitleFont];
  v95[0] = subtitleFont;
  v94 = *MEMORY[0x1E69DB650];
  v16 = v94;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v95[1] = labelColor;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v95 forKeys:&v93 count:2];

  v91 = v13;
  mEMORY[0x1E696F200]2 = [MEMORY[0x1E696F200] sharedManager];
  subtitleFont2 = [mEMORY[0x1E696F200]2 subtitleFont];
  v21 = *MEMORY[0x1E69DB980];
  v22 = [subtitleFont2 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  v92 = v22;
  v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];

  v89[0] = v13;
  mEMORY[0x1E696F200]3 = [MEMORY[0x1E696F200] sharedManager];
  subtitleFont3 = [mEMORY[0x1E696F200]3 subtitleFont];
  v25 = [subtitleFont3 _mapkit_fontWithWeight:v21];
  v26 = *MEMORY[0x1E69DB670];
  v90[0] = v25;
  v90[1] = &stru_1F44CA030;
  v89[1] = v26;
  v89[2] = v16;
  linkColor = [MEMORY[0x1E69DC888] linkColor];
  v90[2] = linkColor;
  v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:3];

  titleText = [(MUPlacePhotoGalleryAttributionViewModel *)self->_viewModel titleText];
  v29 = [titleText length];

  if (v29)
  {
    v30 = objc_alloc(MEMORY[0x1E696AAB0]);
    titleText2 = [(MUPlacePhotoGalleryAttributionViewModel *)self->_viewModel titleText];
    v32 = [v30 initWithString:titleText2 attributes:v18];
    v33 = 1;
    v34 = v86;
LABEL_9:

    goto LABEL_10;
  }

  attributionType = [(MUPlacePhotoGalleryAttributionViewModel *)self->_viewModel attributionType];
  v32 = 0;
  v33 = 1;
  v34 = v86;
  if (attributionType > 2)
  {
    if (attributionType == 3)
    {
      titleText2 = _MULocalizedStringFromThisBundle(@"From %@ (Owner) [Business Owner Photo Attribution");
      placeName = [(MUPlacePhotoGalleryAttributionViewModel *)self->_viewModel placeName];
      v32 = MUHighlightedAttributionString(titleText2, v18, placeName, v86);

      v33 = 0;
      goto LABEL_9;
    }

    if (attributionType == 4)
    {
      authorName = [(MUPlacePhotoGalleryAttributionViewModel *)self->_viewModel authorName];
      v59 = [authorName length];

      if (v59)
      {
        v44 = @"[Photo Credit On - Full Screen Gallery] From [photo credit name] (You)";
        goto LABEL_36;
      }

      v79 = @"[No Photo Credit - Full Screen Gallery] From a Visitor (You)";
LABEL_45:
      titleText2 = _MULocalizedStringFromThisBundle(v79);
      v32 = MUHighlightedAttributionString(titleText2, v18, 0, 0);
      goto LABEL_9;
    }
  }

  else if (attributionType == 1)
  {
    vendorName = [(MUPlacePhotoGalleryAttributionViewModel *)self->_viewModel vendorName];
    v62 = [vendorName length];

    if (v62)
    {
      titleText2 = _MULocalizedStringFromThisBundle(@"From Vendor [Vendor Photo Attribution]");
      v84 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:titleText2 attributes:v18];
      supportsPunchOut = [(MUPlacePhotoGalleryAttributionViewModel *)self->_viewModel supportsPunchOut];
      v64 = v88;
      if (!supportsPunchOut)
      {
        v64 = v86;
      }

      v65 = v64;
      v66 = objc_alloc(MEMORY[0x1E696AAB0]);
      vendorName2 = [(MUPlacePhotoGalleryAttributionViewModel *)self->_viewModel vendorName];
      v85 = v65;
      v83 = [v66 initWithString:vendorName2 attributes:v65];

      v68 = MEMORY[0x1E69DCAD8];
      mEMORY[0x1E696F200]4 = [MEMORY[0x1E696F200] sharedManager];
      subtitleFont4 = [mEMORY[0x1E696F200]4 subtitleFont];
      v71 = [subtitleFont4 _mapkit_fontWithWeight:v21];
      v72 = [v68 configurationWithFont:v71 scale:1];

      v73 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
      v82 = v72;
      v74 = [MEMORY[0x1E69DCAB8] _mapsui_systemImageNamed:@"arrow.up.right.square.fill" withConfiguration:v72];
      v75 = [v74 imageWithRenderingMode:2];
      [v73 setImage:v75];

      if ([(MUPlacePhotoGalleryAttributionViewModel *)self->_viewModel supportsPunchOut])
      {
        v76 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v73];
        v77 = [v76 mutableCopy];

        [v77 addAttributes:v85 range:{0, objc_msgSend(v77, "length")}];
      }

      else
      {
        v77 = objc_opt_new();
      }

      v80 = MEMORY[0x1E696AAB0];
      v81 = [v77 copy];
      v32 = [v80 localizedAttributedStringWithFormat:v84 options:2, v83, v81];

      v33 = 1;
      goto LABEL_9;
    }

    v32 = 0;
  }

  else if (attributionType == 2)
  {
    authorName2 = [(MUPlacePhotoGalleryAttributionViewModel *)self->_viewModel authorName];
    v43 = [authorName2 length];

    if (v43)
    {
      v44 = @"From %@ [Public Attribution]";
LABEL_36:
      titleText2 = _MULocalizedStringFromThisBundle(v44);
      authorName3 = [(MUPlacePhotoGalleryAttributionViewModel *)self->_viewModel authorName];
      v32 = MUHighlightedAttributionString(titleText2, v18, authorName3, v86);

      goto LABEL_9;
    }

    v79 = @"From a Visitor [Public Attribution]";
    goto LABEL_45;
  }

LABEL_10:
  primaryLabel = [(MUPlacePhotoGalleryAttributionView *)self primaryLabel];
  [primaryLabel setAttributedText:v32];

  subtitleText = [(MUPlacePhotoGalleryAttributionViewModel *)self->_viewModel subtitleText];
  v37 = [subtitleText length];

  if (v37)
  {
    v38 = objc_alloc(MEMORY[0x1E696AAB0]);
    subtitleText2 = [(MUPlacePhotoGalleryAttributionViewModel *)self->_viewModel subtitleText];
    v40 = [v38 initWithString:subtitleText2];
  }

  else
  {
    subtitleText2 = [(MUPlacePhotoGalleryAttributionViewModel *)self->_viewModel placeName];
    if (_buildAndUpdateDescription_s_onceToken != -1)
    {
      dispatch_once(&_buildAndUpdateDescription_s_onceToken, &__block_literal_global_11041);
    }

    v45 = _buildAndUpdateDescription_s_dateFormatter;
    photoDate = [(MUPlacePhotoGalleryAttributionViewModel *)self->_viewModel photoDate];
    v47 = [v45 stringFromDate:photoDate];

    v48 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    if (v33 && [subtitleText2 length])
    {
      [v48 addObject:subtitleText2];
    }

    if ([v48 count] && objc_msgSend(v47, "length"))
    {
      v49 = _MULocalizedStringFromThisBundle(@" · ");
      [v48 addObject:v49];
    }

    if ([v47 length])
    {
      [v48 addObject:v47];
    }

    v50 = MUMap(v48, &__block_literal_global_181);
    v51 = [v50 copy];
    v40 = [MapsUILayout buildAttributedDisplayStringForComponents:v51];
  }

  v52 = [v40 length];
  v53 = v52 == 0;
  if (v52)
  {
    v54 = v40;
  }

  else
  {
    v54 = 0;
  }

  secondaryLabel = [(MUPlacePhotoGalleryAttributionView *)self secondaryLabel];
  [secondaryLabel setAttributedText:v54];

  secondaryLabel2 = [(MUPlacePhotoGalleryAttributionView *)self secondaryLabel];
  [secondaryLabel2 setHidden:v53];

  v57 = *MEMORY[0x1E69E9840];
}

id __64__MUPlacePhotoGalleryAttributionView__buildAndUpdateDescription__block_invoke_2(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AAB0];
  v3 = a2;
  v4 = [v2 alloc];
  v11 = *MEMORY[0x1E69DB648];
  v5 = [MEMORY[0x1E696F200] sharedManager];
  v6 = [v5 attributionFont];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v4 initWithString:v3 attributes:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __64__MUPlacePhotoGalleryAttributionView__buildAndUpdateDescription__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _buildAndUpdateDescription_s_dateFormatter;
  _buildAndUpdateDescription_s_dateFormatter = v0;

  [_buildAndUpdateDescription_s_dateFormatter setLocalizedDateFormatFromTemplate:@"MMMM yyyy"];
  v2 = _buildAndUpdateDescription_s_dateFormatter;
  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v2 setLocale:v3];

  v4 = _buildAndUpdateDescription_s_dateFormatter;
  v5 = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v4 setTimeZone:v5];
}

- (void)setupSubviews
{
  v92[17] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DD298]);
  v4 = [MEMORY[0x1E69DC730] effectWithStyle:10];
  v5 = [v3 initWithEffect:v4];
  effectView = self->_effectView;
  self->_effectView = v5;

  [(UIVisualEffectView *)self->_effectView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUPlacePhotoGalleryAttributionView *)self addSubview:self->_effectView];
  v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  captionLabel = self->_captionLabel;
  self->_captionLabel = v7;

  [(UILabel *)self->_captionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_captionLabel setNumberOfLines:0];
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v10 = [v9 _mapkit_fontWithSymbolicTraits:0x8000];
  [(UILabel *)self->_captionLabel setFont:v10];

  [(UILabel *)self->_captionLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_captionLabel setHidden:1];
  [(UILabel *)self->_captionLabel setAccessibilityIdentifier:@"CaptionLabel"];
  contentView = [(UIVisualEffectView *)self->_effectView contentView];
  [contentView addSubview:self->_captionLabel];

  v12 = [[MULinkView alloc] initWithLabelColor:0 linkColor:0];
  primaryLabel = self->_primaryLabel;
  self->_primaryLabel = v12;

  [(MULinkView *)self->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_initWeak(&location, self);
  v14 = self->_primaryLabel;
  v88[0] = MEMORY[0x1E69E9820];
  v88[1] = 3221225472;
  v88[2] = __51__MUPlacePhotoGalleryAttributionView_setupSubviews__block_invoke;
  v88[3] = &unk_1E821BAA0;
  objc_copyWeak(&v89, &location);
  [(MULinkView *)v14 setSelectionBlock:v88];
  contentView2 = [(UIVisualEffectView *)self->_effectView contentView];
  [contentView2 addSubview:self->_primaryLabel];

  v16 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  secondaryLabel = self->_secondaryLabel;
  self->_secondaryLabel = v16;

  [(UILabel *)self->_secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)self->_secondaryLabel setBackgroundColor:clearColor];

  [(UILabel *)self->_secondaryLabel setNumberOfLines:0];
  [(UILabel *)self->_secondaryLabel setHidden:1];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_secondaryLabel setTextColor:secondaryLabelColor];

  [(UILabel *)self->_secondaryLabel setAccessibilityIdentifier:@"SecondaryLabel"];
  contentView3 = [(UIVisualEffectView *)self->_effectView contentView];
  [contentView3 addSubview:self->_secondaryLabel];

  v21 = [MEMORY[0x1E69DC738] buttonWithType:0];
  accessoryButton = self->_accessoryButton;
  self->_accessoryButton = v21;

  [(UIButton *)self->_accessoryButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_accessoryButton setContentMode:4];
  [(UIButton *)self->_accessoryButton setAccessibilityIdentifier:@"AccessoryButton"];
  LODWORD(v23) = 1144750080;
  [(UIButton *)self->_accessoryButton setContentHuggingPriority:0 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [(UIButton *)self->_accessoryButton setContentCompressionResistancePriority:0 forAxis:v24];
  LODWORD(v25) = 1144750080;
  [(UIButton *)self->_accessoryButton setContentHuggingPriority:1 forAxis:v25];
  [(UIButton *)self->_accessoryButton _mapkit_setTarget:self action:sel__accessoryViewTapped];
  contentView4 = [(UIVisualEffectView *)self->_effectView contentView];
  [contentView4 addSubview:self->_accessoryButton];

  safeAreaLayoutGuide = [(UIVisualEffectView *)self->_effectView safeAreaLayoutGuide];
  topAnchor = [(MULinkView *)self->_primaryLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_captionLabel bottomAnchor];
  v29 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:0.0];
  captionToPrimaryLabelConstraint = self->_captionToPrimaryLabelConstraint;
  self->_captionToPrimaryLabelConstraint = v29;

  v46 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(UILabel *)self->_captionLabel leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v84 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v92[0] = v84;
  topAnchor2 = [(UILabel *)self->_captionLabel topAnchor];
  topAnchor3 = [(UIVisualEffectView *)self->_effectView topAnchor];
  v81 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:14.0];
  v92[1] = v81;
  trailingAnchor = [(UILabel *)self->_captionLabel trailingAnchor];
  leadingAnchor3 = [(UIButton *)self->_accessoryButton leadingAnchor];
  v78 = [trailingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor3];
  v31 = self->_captionToPrimaryLabelConstraint;
  v92[2] = v78;
  v92[3] = v31;
  leadingAnchor4 = [(MULinkView *)self->_primaryLabel leadingAnchor];
  leadingAnchor5 = [safeAreaLayoutGuide leadingAnchor];
  v75 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:16.0];
  v92[4] = v75;
  trailingAnchor2 = [(MULinkView *)self->_primaryLabel trailingAnchor];
  leadingAnchor6 = [(UIButton *)self->_accessoryButton leadingAnchor];
  v72 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:leadingAnchor6];
  v92[5] = v72;
  leadingAnchor7 = [(UILabel *)self->_secondaryLabel leadingAnchor];
  leadingAnchor8 = [(MULinkView *)self->_primaryLabel leadingAnchor];
  v69 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v92[6] = v69;
  topAnchor4 = [(UILabel *)self->_secondaryLabel topAnchor];
  bottomAnchor2 = [(MULinkView *)self->_primaryLabel bottomAnchor];
  v66 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2];
  v92[7] = v66;
  bottomAnchor3 = [(UILabel *)self->_secondaryLabel bottomAnchor];
  bottomAnchor4 = [(MUPlacePhotoGalleryAttributionView *)self bottomAnchor];
  v63 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-39.0];
  v92[8] = v63;
  trailingAnchor3 = [(UIButton *)self->_accessoryButton trailingAnchor];
  trailingAnchor4 = [safeAreaLayoutGuide trailingAnchor];
  v60 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  v92[9] = v60;
  topAnchor5 = [(UIButton *)self->_accessoryButton topAnchor];
  topAnchor6 = [safeAreaLayoutGuide topAnchor];
  v57 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:8.0];
  v92[10] = v57;
  bottomAnchor5 = [(UIButton *)self->_accessoryButton bottomAnchor];
  bottomAnchor6 = [(MUPlacePhotoGalleryAttributionView *)self bottomAnchor];
  v54 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:bottomAnchor6];
  v92[11] = v54;
  leadingAnchor9 = [(UIButton *)self->_accessoryButton leadingAnchor];
  trailingAnchor5 = [(UILabel *)self->_secondaryLabel trailingAnchor];
  v51 = [leadingAnchor9 constraintGreaterThanOrEqualToAnchor:trailingAnchor5];
  v92[12] = v51;
  leadingAnchor10 = [(UIVisualEffectView *)self->_effectView leadingAnchor];
  leadingAnchor11 = [(MUPlacePhotoGalleryAttributionView *)self leadingAnchor];
  v48 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
  v92[13] = v48;
  trailingAnchor6 = [(UIVisualEffectView *)self->_effectView trailingAnchor];
  trailingAnchor7 = [(MUPlacePhotoGalleryAttributionView *)self trailingAnchor];
  v33 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  v92[14] = v33;
  topAnchor7 = [(UIVisualEffectView *)self->_effectView topAnchor];
  topAnchor8 = [(MUPlacePhotoGalleryAttributionView *)self topAnchor];
  v36 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  v92[15] = v36;
  bottomAnchor7 = [(UIVisualEffectView *)self->_effectView bottomAnchor];
  bottomAnchor8 = [(MUPlacePhotoGalleryAttributionView *)self bottomAnchor];
  v39 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v92[16] = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:17];
  [v46 activateConstraints:v40];

  v41 = [(UIView *)self _mapsui_addHairlineAtTopWithMargin:0.0];
  v42 = objc_opt_self();
  v91 = v42;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
  v44 = [(MUPlacePhotoGalleryAttributionView *)self registerForTraitChanges:v43 withAction:sel__buildAndUpdateDescription];

  objc_destroyWeak(&v89);
  objc_destroyWeak(&location);
  v45 = *MEMORY[0x1E69E9840];
}

void __51__MUPlacePhotoGalleryAttributionView_setupSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _attributionTapped];
    WeakRetained = v2;
  }
}

- (MUPlacePhotoGalleryAttributionView)init
{
  v5.receiver = self;
  v5.super_class = MUPlacePhotoGalleryAttributionView;
  v2 = [(MUPlacePhotoGalleryAttributionView *)&v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(MUPlacePhotoGalleryAttributionView *)v2 setBackgroundColor:clearColor];

    [(MUPlacePhotoGalleryAttributionView *)v2 setAccessibilityIdentifier:@"PlacePhotoGalleryAttributionView"];
    [(MUPlacePhotoGalleryAttributionView *)v2 setupSubviews];
  }

  return v2;
}

@end