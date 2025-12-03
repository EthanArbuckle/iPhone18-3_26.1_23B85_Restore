@interface NMBUISyncProgressView
- (NMBUISyncProgressView)initWithFrame:(CGRect)frame;
- (void)updateWithShouldShowProgressBar:(BOOL)bar progress:(float)progress progressText:(id)text;
@end

@implementation NMBUISyncProgressView

- (NMBUISyncProgressView)initWithFrame:(CGRect)frame
{
  v66[3] = *MEMORY[0x277D85DE8];
  v64.receiver = self;
  v64.super_class = NMBUISyncProgressView;
  v3 = [(NMBUISyncProgressView *)&v64 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D758F0]);
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
    progressView = v3->_progressView;
    v3->_progressView = v9;

    v11 = BPSProgressBarTintColor();
    [(UIProgressView *)v3->_progressView setTintColor:v11];

    v12 = BPSProgressBarTrackTintColor();
    [(UIProgressView *)v3->_progressView setTrackTintColor:v12];

    v13 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    progressTextLabel = v3->_progressTextLabel;
    v3->_progressTextLabel = v13;

    v15 = BPSTextColor();
    [(UILabel *)v3->_progressTextLabel setTextColor:v15];

    v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)v3->_progressTextLabel setFont:v16];

    [(UILabel *)v3->_progressTextLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v3->_progressTextLabel setTextAlignment:1];
    v17 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    progressIndicator = v3->_progressIndicator;
    v3->_progressIndicator = v17;

    v19 = objc_alloc(MEMORY[0x277D75A68]);
    v66[0] = v3->_progressTextLabel;
    v66[1] = v3->_progressView;
    v66[2] = v3->_progressIndicator;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:3];
    v21 = [v19 initWithArrangedSubviews:v20];
    progressContainerView = v3->_progressContainerView;
    v3->_progressContainerView = v21;

    [(UIStackView *)v3->_progressContainerView setAxis:1];
    [(UIStackView *)v3->_progressContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = objc_alloc(MEMORY[0x277D75D68]);
    v24 = [MEMORY[0x277D75210] effectWithStyle:2];
    v25 = [v23 initWithEffect:v24];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v25;

    [(UIVisualEffectView *)v3->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NMBUISyncProgressView *)v3 addSubview:v3->_backgroundView];
    [(NMBUISyncProgressView *)v3 addSubview:v3->_progressContainerView];
    v49 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIVisualEffectView *)v3->_backgroundView leadingAnchor];
    superview = [(UIVisualEffectView *)v3->_backgroundView superview];
    leadingAnchor2 = [superview leadingAnchor];
    v60 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v65[0] = v60;
    trailingAnchor = [(UIVisualEffectView *)v3->_backgroundView trailingAnchor];
    superview2 = [(UIVisualEffectView *)v3->_backgroundView superview];
    trailingAnchor2 = [superview2 trailingAnchor];
    v56 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v65[1] = v56;
    topAnchor = [(UIVisualEffectView *)v3->_backgroundView topAnchor];
    superview3 = [(UIVisualEffectView *)v3->_backgroundView superview];
    topAnchor2 = [superview3 topAnchor];
    v52 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v65[2] = v52;
    bottomAnchor = [(UIVisualEffectView *)v3->_backgroundView bottomAnchor];
    superview4 = [(UIVisualEffectView *)v3->_backgroundView superview];
    bottomAnchor2 = [superview4 bottomAnchor];
    v47 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v65[3] = v47;
    leadingAnchor3 = [(UIStackView *)v3->_progressContainerView leadingAnchor];
    superview5 = [(UIStackView *)v3->_progressContainerView superview];
    leadingAnchor4 = [superview5 leadingAnchor];
    v43 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v65[4] = v43;
    trailingAnchor3 = [(UIStackView *)v3->_progressContainerView trailingAnchor];
    superview6 = [(UIStackView *)v3->_progressContainerView superview];
    trailingAnchor4 = [superview6 trailingAnchor];
    v39 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v65[5] = v39;
    topAnchor3 = [(UIStackView *)v3->_progressContainerView topAnchor];
    superview7 = [(UIStackView *)v3->_progressContainerView superview];
    topAnchor4 = [superview7 topAnchor];
    v28 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v65[6] = v28;
    bottomAnchor3 = [(UIStackView *)v3->_progressContainerView bottomAnchor];
    superview8 = [(UIStackView *)v3->_progressContainerView superview];
    bottomAnchor4 = [superview8 bottomAnchor];
    v32 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v65[7] = v32;
    heightAnchor = [(UIProgressView *)v3->_progressView heightAnchor];
    v34 = [heightAnchor constraintEqualToConstant:4.0];
    v65[8] = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:9];
    [v49 activateConstraints:v35];
  }

  return v3;
}

- (void)updateWithShouldShowProgressBar:(BOOL)bar progress:(float)progress progressText:(id)text
{
  barCopy = bar;
  textCopy = text;
  progressIndicator = self->_progressIndicator;
  if (progress >= 0.0 || !barCopy)
  {
    [(UIActivityIndicatorView *)progressIndicator setHidden:1];
    if ([(UIActivityIndicatorView *)self->_progressIndicator isAnimating])
    {
      [(UIActivityIndicatorView *)self->_progressIndicator stopAnimating];
    }
  }

  else
  {
    [(UIActivityIndicatorView *)progressIndicator setHidden:0];
    [(UIActivityIndicatorView *)self->_progressIndicator startAnimating];
  }

  v10 = progress < 0.0 || !barCopy;
  [(UIProgressView *)self->_progressView setHidden:v10];
  *&v11 = progress;
  [(UIProgressView *)self->_progressView setProgress:v11];
  [(UILabel *)self->_progressTextLabel setText:textCopy];
  text = [(UILabel *)self->_progressTextLabel text];
  -[UILabel setHidden:](self->_progressTextLabel, "setHidden:", [text length] == 0);
}

@end