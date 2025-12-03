@interface CKCloudSyncStatusView
- (BOOL)isProgressViewHidden;
- (CKCloudSyncStatusView)initWithFrame:(CGRect)frame;
- (void)_configureUI;
- (void)layoutSubviews;
- (void)setProgress:(double)progress animated:(BOOL)animated;
- (void)setProgressText:(id)text;
- (void)setProgressViewHidden:(BOOL)hidden;
@end

@implementation CKCloudSyncStatusView

- (CKCloudSyncStatusView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CKCloudSyncStatusView;
  v3 = [(CKCloudSyncStatusView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_hasFinishedFirstLayoutPass = 0;
    [(CKCloudSyncStatusView *)v3 _configureUI];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKCloudSyncStatusView;
  [(CKCloudSyncStatusView *)&v3 layoutSubviews];
  if (![(CKCloudSyncStatusView *)self hasFinishedFirstLayoutPass])
  {
    [(CKCloudSyncStatusView *)self setHasFinishedFirstLayoutPass:1];
  }
}

- (void)_configureUI
{
  v107[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DC730];
  v4 = +[CKUIBehavior sharedBehaviors];
  v102 = [v3 effectWithStyle:{objc_msgSend(v4, "syncBarBlurEffectStyle")}];

  v5 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v102];
  [(UIVisualEffectView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CKCloudSyncStatusView *)self addSubview:v5];
  v77 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(UIVisualEffectView *)v5 leadingAnchor];
  leadingAnchor2 = [(CKCloudSyncStatusView *)self leadingAnchor];
  v93 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v107[0] = v93;
  trailingAnchor = [(UIVisualEffectView *)v5 trailingAnchor];
  trailingAnchor2 = [(CKCloudSyncStatusView *)self trailingAnchor];
  v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v107[1] = v6;
  topAnchor = [(UIVisualEffectView *)v5 topAnchor];
  topAnchor2 = [(CKCloudSyncStatusView *)self topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v107[2] = v9;
  bottomAnchor = [(UIVisualEffectView *)v5 bottomAnchor];
  bottomAnchor2 = [(CKCloudSyncStatusView *)self bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v107[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:4];
  [v77 activateConstraints:v13];

  backgroundVisualEffectView = self->_backgroundVisualEffectView;
  self->_backgroundVisualEffectView = v5;
  v101 = v5;

  v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(UIView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = +[CKUIBehavior sharedBehaviors];
  syncBarHairlineColor = [v16 syncBarHairlineColor];
  [(UIView *)v15 setBackgroundColor:syncBarHairlineColor];

  [(CKCloudSyncStatusView *)self addSubview:v15];
  v78 = MEMORY[0x1E696ACD8];
  leadingAnchor3 = [(UIView *)v15 leadingAnchor];
  leadingAnchor4 = [(CKCloudSyncStatusView *)self leadingAnchor];
  v88 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v106[0] = v88;
  trailingAnchor3 = [(UIView *)v15 trailingAnchor];
  trailingAnchor4 = [(CKCloudSyncStatusView *)self trailingAnchor];
  v19 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v106[1] = v19;
  topAnchor3 = [(UIView *)v15 topAnchor];
  topAnchor4 = [(CKCloudSyncStatusView *)self topAnchor];
  v22 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v106[2] = v22;
  heightAnchor = [(UIView *)v15 heightAnchor];
  v24 = [heightAnchor constraintEqualToConstant:1.0];
  v106[3] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:4];
  [v78 activateConstraints:v25];

  hairlineView = self->_hairlineView;
  self->_hairlineView = v15;
  v99 = v15;

  v27 = objc_alloc(MEMORY[0x1E69DCE48]);
  v28 = +[CKUIBehavior sharedBehaviors];
  v29 = [v27 initWithProgressViewStyle:{objc_msgSend(v28, "syncProgressBarStyle")}];

  [(UIProgressView *)v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIProgressView *)v29 setClipsToBounds:1];
  v30 = +[CKUIBehavior sharedBehaviors];
  syncProgressTrackColor = [v30 syncProgressTrackColor];
  [(UIProgressView *)v29 setTrackTintColor:syncProgressTrackColor];

  v32 = +[CKUIBehavior sharedBehaviors];
  syncProgressColor = [v32 syncProgressColor];
  [(UIProgressView *)v29 setTintColor:syncProgressColor];

  [(CKCloudSyncStatusView *)self addSubview:v29];
  v75 = MEMORY[0x1E696ACD8];
  leadingAnchor5 = [(UIProgressView *)v29 leadingAnchor];
  leadingAnchor6 = [(CKCloudSyncStatusView *)self leadingAnchor];
  v89 = +[CKUIBehavior sharedBehaviors];
  [v89 syncProgressLeadingPadding];
  v79 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:?];
  v105[0] = v79;
  trailingAnchor5 = [(UIProgressView *)v29 trailingAnchor];
  trailingAnchor6 = [(CKCloudSyncStatusView *)self trailingAnchor];
  v35 = +[CKUIBehavior sharedBehaviors];
  [v35 syncProgressTrailingPadding];
  v36 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:?];
  v105[1] = v36;
  topAnchor5 = [(UIProgressView *)v29 topAnchor];
  topAnchor6 = [(CKCloudSyncStatusView *)self topAnchor];
  v39 = +[CKUIBehavior sharedBehaviors];
  [v39 syncProgressTopPadding];
  v40 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:?];
  v105[2] = v40;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:3];
  [v75 activateConstraints:v41];

  progressView = self->_progressView;
  self->_progressView = v29;
  v96 = v29;

  v43 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(UIView *)v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CKCloudSyncStatusView *)self addSubview:v43];
  v69 = MEMORY[0x1E696ACD8];
  leadingAnchor7 = [(UIView *)v43 leadingAnchor];
  safeAreaLayoutGuide = [(CKCloudSyncStatusView *)self safeAreaLayoutGuide];
  leadingAnchor8 = [safeAreaLayoutGuide leadingAnchor];
  v76 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v104[0] = v76;
  trailingAnchor7 = [(UIView *)v43 trailingAnchor];
  safeAreaLayoutGuide2 = [(CKCloudSyncStatusView *)self safeAreaLayoutGuide];
  trailingAnchor8 = [safeAreaLayoutGuide2 trailingAnchor];
  v70 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v104[1] = v70;
  topAnchor7 = [(UIView *)v43 topAnchor];
  topAnchor8 = [(CKCloudSyncStatusView *)self topAnchor];
  v66 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  v104[2] = v66;
  bottomAnchor3 = [(UIView *)v43 bottomAnchor];
  safeAreaLayoutGuide3 = [(CKCloudSyncStatusView *)self safeAreaLayoutGuide];
  bottomAnchor4 = [safeAreaLayoutGuide3 bottomAnchor];
  v47 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v104[3] = v47;
  heightAnchor2 = [(UIView *)v43 heightAnchor];
  v49 = +[CKUIBehavior sharedBehaviors];
  [v49 syncBarFooterHeight];
  v50 = [heightAnchor2 constraintEqualToConstant:?];
  v104[4] = v50;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:5];
  [v69 activateConstraints:v51];

  selfCopy = self;
  containerView = self->_containerView;
  self->_containerView = v43;
  v53 = v43;

  v54 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(UILabel *)v54 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v54 setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)v54 setTextAlignment:1];
  [(UILabel *)v54 setNumberOfLines:2];
  [(UILabel *)v54 setText:&stru_1F04268F8];
  v55 = +[CKUIBehavior sharedBehaviors];
  syncProgressLabelFont = [v55 syncProgressLabelFont];
  [(UILabel *)v54 setFont:syncProgressLabelFont];

  [(UIView *)v53 addSubview:v54];
  v81 = MEMORY[0x1E696ACD8];
  leadingAnchor9 = [(UILabel *)v54 leadingAnchor];
  leadingAnchor10 = [(UIView *)v53 leadingAnchor];
  v57 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v103[0] = v57;
  trailingAnchor9 = [(UILabel *)v54 trailingAnchor];
  trailingAnchor10 = [(UIView *)v53 trailingAnchor];
  v60 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v103[1] = v60;
  centerYAnchor = [(UILabel *)v54 centerYAnchor];
  centerYAnchor2 = [(UIView *)v53 centerYAnchor];
  v63 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v103[2] = v63;
  v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:3];
  [v81 activateConstraints:v64];

  progressLabel = selfCopy->_progressLabel;
  selfCopy->_progressLabel = v54;
}

- (void)setProgress:(double)progress animated:(BOOL)animated
{
  v6 = animated && [(CKCloudSyncStatusView *)self hasFinishedFirstLayoutPass];
  progressView = [(CKCloudSyncStatusView *)self progressView];
  *&v7 = progress;
  [progressView setProgress:v6 animated:v7];
}

- (void)setProgressText:(id)text
{
  textCopy = text;
  progressLabel = [(CKCloudSyncStatusView *)self progressLabel];
  [progressLabel setText:textCopy];
}

- (BOOL)isProgressViewHidden
{
  progressView = [(CKCloudSyncStatusView *)self progressView];
  isHidden = [progressView isHidden];

  return isHidden;
}

- (void)setProgressViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  progressView = [(CKCloudSyncStatusView *)self progressView];
  [progressView setHidden:hiddenCopy];
}

@end