@interface CKDetailsDownloadAttachmentsHeaderFooterView
- (CKDetailsDownloadAttachmentsHeaderFooterView)initWithReuseIdentifier:(id)identifier;
- (CKDetailsDownloadAttachmentsHeaderFooterViewDelegate)delegate;
- (void)_updateiCloudImageViewAppearance;
- (void)handleUserTap:(id)tap;
- (void)layoutSubviews;
- (void)setButtonText:(id)text;
- (void)setDownloadButtonTextColor:(id)color;
- (void)setLogoHidden:(BOOL)hidden;
- (void)setTitleText:(id)text;
- (void)setTitleTextColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CKDetailsDownloadAttachmentsHeaderFooterView

- (CKDetailsDownloadAttachmentsHeaderFooterView)initWithReuseIdentifier:(id)identifier
{
  v89[4] = *MEMORY[0x1E69E9840];
  v86.receiver = self;
  v86.super_class = CKDetailsDownloadAttachmentsHeaderFooterView;
  v3 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)&v86 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"icloud.fill"];
    v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v4 highlightedImage:0];
    iCloudImageView = v3->_iCloudImageView;
    v3->_iCloudImageView = v5;

    [(UIImageView *)v3->_iCloudImageView setContentMode:1];
    [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 addSubview:v3->_iCloudImageView];
    [(UIImageView *)v3->_iCloudImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 _updateiCloudImageViewAppearance];
    v75 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIImageView *)v3->_iCloudImageView topAnchor];
    topAnchor2 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 topAnchor];
    v7 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:14.0];
    v89[0] = v7;
    centerXAnchor = [(UIImageView *)v3->_iCloudImageView centerXAnchor];
    centerXAnchor2 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 centerXAnchor];
    v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v89[1] = v10;
    widthAnchor = [(UIImageView *)v3->_iCloudImageView widthAnchor];
    v12 = v4;
    v85 = v4;
    [v4 size];
    v13 = [widthAnchor constraintEqualToConstant:?];
    v89[2] = v13;
    heightAnchor = [(UIImageView *)v3->_iCloudImageView heightAnchor];
    [v12 size];
    v16 = [heightAnchor constraintEqualToConstant:v15];
    v89[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:4];
    [v75 activateConstraints:v17];

    v18 = objc_alloc(MEMORY[0x1E69DD168]);
    v19 = *MEMORY[0x1E695F058];
    v20 = *(MEMORY[0x1E695F058] + 8);
    v21 = *(MEMORY[0x1E695F058] + 16);
    v22 = *(MEMORY[0x1E695F058] + 24);
    v23 = [v18 initWithFrame:{*MEMORY[0x1E695F058], v20, v21, v22}];
    titleTextView = v3->_titleTextView;
    v3->_titleTextView = v23;

    [(UITextView *)v3->_titleTextView setEditable:0];
    textContainer = [(UITextView *)v3->_titleTextView textContainer];
    [textContainer setLineFragmentPadding:0.0];

    v26 = *MEMORY[0x1E69DDCE0];
    v27 = *(MEMORY[0x1E69DDCE0] + 8);
    v28 = *(MEMORY[0x1E69DDCE0] + 16);
    v29 = *(MEMORY[0x1E69DDCE0] + 24);
    [(UITextView *)v3->_titleTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], v27, v28, v29];
    v30 = v3->_titleTextView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v30 setBackgroundColor:clearColor];

    v32 = v3->_titleTextView;
    darkGrayColor = [MEMORY[0x1E69DC888] darkGrayColor];
    [(UITextView *)v32 setTextColor:darkGrayColor];

    [(UITextView *)v3->_titleTextView setTextAlignment:1];
    [(UITextView *)v3->_titleTextView setScrollEnabled:0];
    v34 = v3->_titleTextView;
    v35 = +[CKUIBehavior sharedBehaviors];
    iCloudTextFont = [v35 iCloudTextFont];
    [(UITextView *)v34 setFont:iCloudTextFont];

    [(UITextView *)v3->_titleTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 addSubview:v3->_titleTextView];
    v76 = MEMORY[0x1E696ACD8];
    centerXAnchor3 = [(UITextView *)v3->_titleTextView centerXAnchor];
    centerXAnchor4 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 centerXAnchor];
    v37 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v88[0] = v37;
    leadingAnchor = [(UITextView *)v3->_titleTextView leadingAnchor];
    leadingAnchor2 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 leadingAnchor];
    v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v88[1] = v40;
    trailingAnchor = [(UITextView *)v3->_titleTextView trailingAnchor];
    trailingAnchor2 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 trailingAnchor];
    v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v88[2] = v43;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:3];
    [v76 activateConstraints:v44];

    topAnchor3 = [(UITextView *)v3->_titleTextView topAnchor];
    bottomAnchor = [(UIImageView *)v3->_iCloudImageView bottomAnchor];
    v47 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:5.0];
    [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 setTitleTextTopToLogoConstraint:v47];

    topAnchor4 = [(UITextView *)v3->_titleTextView topAnchor];
    topAnchor5 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 topAnchor];
    v50 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:10.0];
    [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 setTitleTextTopToViewConstraint:v50];

    titleTextTopToLogoConstraint = [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 titleTextTopToLogoConstraint];
    [titleTextTopToLogoConstraint setActive:1];

    titleTextTopToViewConstraint = [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 titleTextTopToViewConstraint];
    [titleTextTopToViewConstraint setActive:0];

    v53 = [objc_alloc(MEMORY[0x1E69DD168]) initWithFrame:{v19, v20, v21, v22}];
    buttonTextView = v3->_buttonTextView;
    v3->_buttonTextView = v53;

    [(UITextView *)v3->_buttonTextView setEditable:0];
    textContainer2 = [(UITextView *)v3->_buttonTextView textContainer];
    [textContainer2 setLineFragmentPadding:0.0];

    [(UITextView *)v3->_buttonTextView setTextContainerInset:v26, v27, v28, v29];
    v56 = v3->_buttonTextView;
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v56 setBackgroundColor:clearColor2];

    v58 = v3->_buttonTextView;
    v59 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKSystemBlueColor"];
    [(UITextView *)v58 setTextColor:v59];

    [(UITextView *)v3->_buttonTextView setTextAlignment:1];
    [(UITextView *)v3->_buttonTextView setScrollEnabled:0];
    v60 = v3->_buttonTextView;
    v61 = +[CKUIBehavior sharedBehaviors];
    downloadButtonFont = [v61 downloadButtonFont];
    [(UITextView *)v60 setFont:downloadButtonFont];

    [(UITextView *)v3->_buttonTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 addSubview:v3->_buttonTextView];
    v73 = MEMORY[0x1E696ACD8];
    topAnchor6 = [(UITextView *)v3->_buttonTextView topAnchor];
    bottomAnchor2 = [(UITextView *)v3->_titleTextView bottomAnchor];
    v80 = [topAnchor6 constraintEqualToAnchor:bottomAnchor2 constant:16.0];
    v87[0] = v80;
    centerXAnchor5 = [(UITextView *)v3->_buttonTextView centerXAnchor];
    centerXAnchor6 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 centerXAnchor];
    v63 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v87[1] = v63;
    leadingAnchor3 = [(UITextView *)v3->_buttonTextView leadingAnchor];
    leadingAnchor4 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 leadingAnchor];
    v66 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v87[2] = v66;
    trailingAnchor3 = [(UITextView *)v3->_buttonTextView trailingAnchor];
    trailingAnchor4 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 trailingAnchor];
    v69 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v87[3] = v69;
    v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:4];
    [v73 activateConstraints:v70];

    [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 setUserInteractionEnabled:1];
    v71 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v3 action:sel_handleUserTap_];
    [(UITextView *)v3->_buttonTextView addGestureRecognizer:v71];
  }

  return v3;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = CKDetailsDownloadAttachmentsHeaderFooterView;
  [(CKDetailsDownloadAttachmentsHeaderFooterView *)&v11 layoutSubviews];
  contentView = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self contentView];
  v4 = +[CKUIBehavior sharedBehaviors];
  theme = [v4 theme];
  detailsHeaderFooterContentViewBackgroundColor = [theme detailsHeaderFooterContentViewBackgroundColor];
  [contentView setBackgroundColor:detailsHeaderFooterContentViewBackgroundColor];

  backgroundView = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self backgroundView];
  v8 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v8 theme];
  detailsHeaderFooterContentViewBackgroundColor2 = [theme2 detailsHeaderFooterContentViewBackgroundColor];
  [backgroundView setBackgroundColor:detailsHeaderFooterContentViewBackgroundColor2];
}

- (void)setTitleText:(id)text
{
  objc_storeStrong(&self->_titleText, text);
  textCopy = text;
  titleTextView = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self titleTextView];
  [titleTextView setText:textCopy];
}

- (void)setButtonText:(id)text
{
  objc_storeStrong(&self->_buttonText, text);
  textCopy = text;
  buttonTextView = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self buttonTextView];
  [buttonTextView setText:textCopy];
}

- (void)handleUserTap:(id)tap
{
  delegate = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self delegate];

  if (delegate)
  {
    delegate2 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self delegate];
    [delegate2 userDidTapDownloadForAttachmentsFooterView:self];
  }
}

- (void)setTitleTextColor:(id)color
{
  objc_storeStrong(&self->_titleTextColor, color);
  colorCopy = color;
  titleTextView = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self titleTextView];
  [titleTextView setTextColor:colorCopy];
}

- (void)setDownloadButtonTextColor:(id)color
{
  objc_storeStrong(&self->_downloadButtonTextColor, color);
  colorCopy = color;
  buttonTextView = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self buttonTextView];
  [buttonTextView setTextColor:colorCopy];
}

- (void)setLogoHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  self->_logoHidden = hidden;
  titleTextTopToLogoConstraint = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self titleTextTopToLogoConstraint];
  [titleTextTopToLogoConstraint setActive:hiddenCopy ^ 1];

  titleTextTopToViewConstraint = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self titleTextTopToViewConstraint];
  [titleTextTopToViewConstraint setActive:hiddenCopy];

  iCloudImageView = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self iCloudImageView];
  [iCloudImageView setHidden:hiddenCopy];
}

- (void)_updateiCloudImageViewAppearance
{
  traitCollection = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = v5;
  if (userInterfaceStyle == 1)
  {
    [v5 detailsDownloadAttachmentsHeaderiCloudImageAlphaForLightMode];
  }

  else
  {
    [v5 detailsDownloadAttachmentsHeaderiCloudImageAlphaForDarkMode];
  }

  v8 = v7;

  iCloudImageView = self->_iCloudImageView;

  [(UIImageView *)iCloudImageView setAlpha:v8];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CKDetailsDownloadAttachmentsHeaderFooterView;
  [(CKDetailsDownloadAttachmentsHeaderFooterView *)&v4 traitCollectionDidChange:change];
  [(CKDetailsDownloadAttachmentsHeaderFooterView *)self _updateiCloudImageViewAppearance];
}

- (CKDetailsDownloadAttachmentsHeaderFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end