@interface CKDetailsDownloadAttachmentsHeaderFooterView
- (CKDetailsDownloadAttachmentsHeaderFooterView)initWithReuseIdentifier:(id)a3;
- (CKDetailsDownloadAttachmentsHeaderFooterViewDelegate)delegate;
- (void)_updateiCloudImageViewAppearance;
- (void)handleUserTap:(id)a3;
- (void)layoutSubviews;
- (void)setButtonText:(id)a3;
- (void)setDownloadButtonTextColor:(id)a3;
- (void)setLogoHidden:(BOOL)a3;
- (void)setTitleText:(id)a3;
- (void)setTitleTextColor:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CKDetailsDownloadAttachmentsHeaderFooterView

- (CKDetailsDownloadAttachmentsHeaderFooterView)initWithReuseIdentifier:(id)a3
{
  v89[4] = *MEMORY[0x1E69E9840];
  v86.receiver = self;
  v86.super_class = CKDetailsDownloadAttachmentsHeaderFooterView;
  v3 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)&v86 initWithReuseIdentifier:a3];
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
    v81 = [(UIImageView *)v3->_iCloudImageView topAnchor];
    v78 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 topAnchor];
    v7 = [v81 constraintEqualToAnchor:v78 constant:14.0];
    v89[0] = v7;
    v8 = [(UIImageView *)v3->_iCloudImageView centerXAnchor];
    v9 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 centerXAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v89[1] = v10;
    v11 = [(UIImageView *)v3->_iCloudImageView widthAnchor];
    v12 = v4;
    v85 = v4;
    [v4 size];
    v13 = [v11 constraintEqualToConstant:?];
    v89[2] = v13;
    v14 = [(UIImageView *)v3->_iCloudImageView heightAnchor];
    [v12 size];
    v16 = [v14 constraintEqualToConstant:v15];
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
    v25 = [(UITextView *)v3->_titleTextView textContainer];
    [v25 setLineFragmentPadding:0.0];

    v26 = *MEMORY[0x1E69DDCE0];
    v27 = *(MEMORY[0x1E69DDCE0] + 8);
    v28 = *(MEMORY[0x1E69DDCE0] + 16);
    v29 = *(MEMORY[0x1E69DDCE0] + 24);
    [(UITextView *)v3->_titleTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], v27, v28, v29];
    v30 = v3->_titleTextView;
    v31 = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v30 setBackgroundColor:v31];

    v32 = v3->_titleTextView;
    v33 = [MEMORY[0x1E69DC888] darkGrayColor];
    [(UITextView *)v32 setTextColor:v33];

    [(UITextView *)v3->_titleTextView setTextAlignment:1];
    [(UITextView *)v3->_titleTextView setScrollEnabled:0];
    v34 = v3->_titleTextView;
    v35 = +[CKUIBehavior sharedBehaviors];
    v36 = [v35 iCloudTextFont];
    [(UITextView *)v34 setFont:v36];

    [(UITextView *)v3->_titleTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 addSubview:v3->_titleTextView];
    v76 = MEMORY[0x1E696ACD8];
    v82 = [(UITextView *)v3->_titleTextView centerXAnchor];
    v79 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 centerXAnchor];
    v37 = [v82 constraintEqualToAnchor:v79];
    v88[0] = v37;
    v38 = [(UITextView *)v3->_titleTextView leadingAnchor];
    v39 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 leadingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    v88[1] = v40;
    v41 = [(UITextView *)v3->_titleTextView trailingAnchor];
    v42 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 trailingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];
    v88[2] = v43;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:3];
    [v76 activateConstraints:v44];

    v45 = [(UITextView *)v3->_titleTextView topAnchor];
    v46 = [(UIImageView *)v3->_iCloudImageView bottomAnchor];
    v47 = [v45 constraintEqualToAnchor:v46 constant:5.0];
    [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 setTitleTextTopToLogoConstraint:v47];

    v48 = [(UITextView *)v3->_titleTextView topAnchor];
    v49 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 topAnchor];
    v50 = [v48 constraintEqualToAnchor:v49 constant:10.0];
    [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 setTitleTextTopToViewConstraint:v50];

    v51 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 titleTextTopToLogoConstraint];
    [v51 setActive:1];

    v52 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 titleTextTopToViewConstraint];
    [v52 setActive:0];

    v53 = [objc_alloc(MEMORY[0x1E69DD168]) initWithFrame:{v19, v20, v21, v22}];
    buttonTextView = v3->_buttonTextView;
    v3->_buttonTextView = v53;

    [(UITextView *)v3->_buttonTextView setEditable:0];
    v55 = [(UITextView *)v3->_buttonTextView textContainer];
    [v55 setLineFragmentPadding:0.0];

    [(UITextView *)v3->_buttonTextView setTextContainerInset:v26, v27, v28, v29];
    v56 = v3->_buttonTextView;
    v57 = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v56 setBackgroundColor:v57];

    v58 = v3->_buttonTextView;
    v59 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKSystemBlueColor"];
    [(UITextView *)v58 setTextColor:v59];

    [(UITextView *)v3->_buttonTextView setTextAlignment:1];
    [(UITextView *)v3->_buttonTextView setScrollEnabled:0];
    v60 = v3->_buttonTextView;
    v61 = +[CKUIBehavior sharedBehaviors];
    v62 = [v61 downloadButtonFont];
    [(UITextView *)v60 setFont:v62];

    [(UITextView *)v3->_buttonTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 addSubview:v3->_buttonTextView];
    v73 = MEMORY[0x1E696ACD8];
    v84 = [(UITextView *)v3->_buttonTextView topAnchor];
    v83 = [(UITextView *)v3->_titleTextView bottomAnchor];
    v80 = [v84 constraintEqualToAnchor:v83 constant:16.0];
    v87[0] = v80;
    v77 = [(UITextView *)v3->_buttonTextView centerXAnchor];
    v74 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 centerXAnchor];
    v63 = [v77 constraintEqualToAnchor:v74];
    v87[1] = v63;
    v64 = [(UITextView *)v3->_buttonTextView leadingAnchor];
    v65 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 leadingAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];
    v87[2] = v66;
    v67 = [(UITextView *)v3->_buttonTextView trailingAnchor];
    v68 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)v3 trailingAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];
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
  v3 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self contentView];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 theme];
  v6 = [v5 detailsHeaderFooterContentViewBackgroundColor];
  [v3 setBackgroundColor:v6];

  v7 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self backgroundView];
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 theme];
  v10 = [v9 detailsHeaderFooterContentViewBackgroundColor];
  [v7 setBackgroundColor:v10];
}

- (void)setTitleText:(id)a3
{
  objc_storeStrong(&self->_titleText, a3);
  v5 = a3;
  v6 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self titleTextView];
  [v6 setText:v5];
}

- (void)setButtonText:(id)a3
{
  objc_storeStrong(&self->_buttonText, a3);
  v5 = a3;
  v6 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self buttonTextView];
  [v6 setText:v5];
}

- (void)handleUserTap:(id)a3
{
  v4 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self delegate];

  if (v4)
  {
    v5 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self delegate];
    [v5 userDidTapDownloadForAttachmentsFooterView:self];
  }
}

- (void)setTitleTextColor:(id)a3
{
  objc_storeStrong(&self->_titleTextColor, a3);
  v5 = a3;
  v6 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self titleTextView];
  [v6 setTextColor:v5];
}

- (void)setDownloadButtonTextColor:(id)a3
{
  objc_storeStrong(&self->_downloadButtonTextColor, a3);
  v5 = a3;
  v6 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self buttonTextView];
  [v6 setTextColor:v5];
}

- (void)setLogoHidden:(BOOL)a3
{
  v3 = a3;
  self->_logoHidden = a3;
  v5 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self titleTextTopToLogoConstraint];
  [v5 setActive:v3 ^ 1];

  v6 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self titleTextTopToViewConstraint];
  [v6 setActive:v3];

  v7 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self iCloudImageView];
  [v7 setHidden:v3];
}

- (void)_updateiCloudImageViewAppearance
{
  v3 = [(CKDetailsDownloadAttachmentsHeaderFooterView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = v5;
  if (v4 == 1)
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

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKDetailsDownloadAttachmentsHeaderFooterView;
  [(CKDetailsDownloadAttachmentsHeaderFooterView *)&v4 traitCollectionDidChange:a3];
  [(CKDetailsDownloadAttachmentsHeaderFooterView *)self _updateiCloudImageViewAppearance];
}

- (CKDetailsDownloadAttachmentsHeaderFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end