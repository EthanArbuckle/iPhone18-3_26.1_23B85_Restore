@interface NMBUISyncProgressView
- (NMBUISyncProgressView)initWithFrame:(CGRect)a3;
- (void)updateWithShouldShowProgressBar:(BOOL)a3 progress:(float)a4 progressText:(id)a5;
@end

@implementation NMBUISyncProgressView

- (NMBUISyncProgressView)initWithFrame:(CGRect)a3
{
  v66[3] = *MEMORY[0x277D85DE8];
  v64.receiver = self;
  v64.super_class = NMBUISyncProgressView;
  v3 = [(NMBUISyncProgressView *)&v64 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v62 = [(UIVisualEffectView *)v3->_backgroundView leadingAnchor];
    v63 = [(UIVisualEffectView *)v3->_backgroundView superview];
    v61 = [v63 leadingAnchor];
    v60 = [v62 constraintEqualToAnchor:v61];
    v65[0] = v60;
    v58 = [(UIVisualEffectView *)v3->_backgroundView trailingAnchor];
    v59 = [(UIVisualEffectView *)v3->_backgroundView superview];
    v57 = [v59 trailingAnchor];
    v56 = [v58 constraintEqualToAnchor:v57];
    v65[1] = v56;
    v54 = [(UIVisualEffectView *)v3->_backgroundView topAnchor];
    v55 = [(UIVisualEffectView *)v3->_backgroundView superview];
    v53 = [v55 topAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v65[2] = v52;
    v50 = [(UIVisualEffectView *)v3->_backgroundView bottomAnchor];
    v51 = [(UIVisualEffectView *)v3->_backgroundView superview];
    v48 = [v51 bottomAnchor];
    v47 = [v50 constraintEqualToAnchor:v48];
    v65[3] = v47;
    v45 = [(UIStackView *)v3->_progressContainerView leadingAnchor];
    v46 = [(UIStackView *)v3->_progressContainerView superview];
    v44 = [v46 leadingAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v65[4] = v43;
    v41 = [(UIStackView *)v3->_progressContainerView trailingAnchor];
    v42 = [(UIStackView *)v3->_progressContainerView superview];
    v40 = [v42 trailingAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v65[5] = v39;
    v37 = [(UIStackView *)v3->_progressContainerView topAnchor];
    v38 = [(UIStackView *)v3->_progressContainerView superview];
    v27 = [v38 topAnchor];
    v28 = [v37 constraintEqualToAnchor:v27];
    v65[6] = v28;
    v29 = [(UIStackView *)v3->_progressContainerView bottomAnchor];
    v30 = [(UIStackView *)v3->_progressContainerView superview];
    v31 = [v30 bottomAnchor];
    v32 = [v29 constraintEqualToAnchor:v31];
    v65[7] = v32;
    v33 = [(UIProgressView *)v3->_progressView heightAnchor];
    v34 = [v33 constraintEqualToConstant:4.0];
    v65[8] = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:9];
    [v49 activateConstraints:v35];
  }

  return v3;
}

- (void)updateWithShouldShowProgressBar:(BOOL)a3 progress:(float)a4 progressText:(id)a5
{
  v6 = a3;
  v13 = a5;
  progressIndicator = self->_progressIndicator;
  if (a4 >= 0.0 || !v6)
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

  v10 = a4 < 0.0 || !v6;
  [(UIProgressView *)self->_progressView setHidden:v10];
  *&v11 = a4;
  [(UIProgressView *)self->_progressView setProgress:v11];
  [(UILabel *)self->_progressTextLabel setText:v13];
  v12 = [(UILabel *)self->_progressTextLabel text];
  -[UILabel setHidden:](self->_progressTextLabel, "setHidden:", [v12 length] == 0);
}

@end