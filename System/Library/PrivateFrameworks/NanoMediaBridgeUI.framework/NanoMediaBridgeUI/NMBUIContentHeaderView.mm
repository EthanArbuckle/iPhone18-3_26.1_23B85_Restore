@interface NMBUIContentHeaderView
- (UILabel)detailTextLabel;
- (UILabel)textLabel;
- (UIProgressView)progressView;
- (id)_contentStackView;
@end

@implementation NMBUIContentHeaderView

- (UILabel)textLabel
{
  textLabel = self->_textLabel;
  if (!textLabel)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [(UILabel *)v5 setFont:v6];

    [(UILabel *)v5 setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5 setTextAlignment:1];
    v7 = BPSTextColor();
    [(UILabel *)v5 setTextColor:v7];

    v8 = [(NMBUIContentHeaderView *)self _contentStackView];
    [v8 insertArrangedSubview:v5 atIndex:0];

    v9 = self->_textLabel;
    self->_textLabel = v5;

    textLabel = self->_textLabel;
  }

  return textLabel;
}

- (UILabel)detailTextLabel
{
  detailTextLabel = self->_detailTextLabel;
  if (!detailTextLabel)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)v5 setFont:v6];

    [(UILabel *)v5 setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5 setTextAlignment:1];
    v7 = BPSDetailTextColor();
    [(UILabel *)v5 setTextColor:v7];

    [(UILabel *)v5 setNumberOfLines:0];
    v8 = [(NMBUIContentHeaderView *)self _contentStackView];
    v9 = [(NMBUIContentHeaderView *)self _contentStackView];
    v10 = [v9 arrangedSubviews];
    v11 = [v10 count];

    [v8 insertArrangedSubview:v5 atIndex:v11 != 0];
    v12 = self->_detailTextLabel;
    self->_detailTextLabel = v5;

    detailTextLabel = self->_detailTextLabel;
  }

  return detailTextLabel;
}

- (UIProgressView)progressView
{
  progressView = self->_progressView;
  if (!progressView)
  {
    v4 = [objc_alloc(MEMORY[0x277D758F0]) initWithProgressViewStyle:0];
    v5 = BPSProgressBarTintColor();
    [(UIProgressView *)v4 setProgressTintColor:v5];

    v6 = BPSProgressBarTrackTintColor();
    [(UIProgressView *)v4 setTrackTintColor:v6];

    v7 = [(NMBUIContentHeaderView *)self _contentStackView];
    v8 = [(NMBUIContentHeaderView *)self _contentStackView];
    v9 = [v8 arrangedSubviews];
    v10 = [v9 count];

    if (v10 >= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10;
    }

    [v7 insertArrangedSubview:v4 atIndex:v11];

    if (self->_detailTextLabel)
    {
      v12 = [(NMBUIContentHeaderView *)self _contentStackView];
      [v12 setCustomSpacing:self->_detailTextLabel afterView:12.0];
    }

    v13 = self->_progressView;
    self->_progressView = v4;

    progressView = self->_progressView;
  }

  return progressView;
}

- (id)_contentStackView
{
  v27[4] = *MEMORY[0x277D85DE8];
  contentStackView = self->_contentStackView;
  if (!contentStackView)
  {
    v4 = objc_alloc(MEMORY[0x277D75A68]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(UIStackView *)v5 setAxis:1];
    [(NMBUIContentHeaderView *)self addSubview:v5];
    v6 = self->_contentStackView;
    self->_contentStackView = v5;
    v7 = v5;

    [(UIStackView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = MEMORY[0x277CCAAD0];
    v25 = [(UIStackView *)v7 leadingAnchor];
    v26 = [(NMBUIContentHeaderView *)self layoutMarginsGuide];
    v24 = [v26 leadingAnchor];
    v23 = [v25 constraintEqualToAnchor:v24 constant:16.0];
    v27[0] = v23;
    v21 = [(UIStackView *)v7 trailingAnchor];
    v22 = [(NMBUIContentHeaderView *)self layoutMarginsGuide];
    v20 = [v22 trailingAnchor];
    v18 = [v21 constraintEqualToAnchor:v20 constant:-16.0];
    v27[1] = v18;
    v16 = [(UIStackView *)v7 topAnchor];
    v17 = [(NMBUIContentHeaderView *)self layoutMarginsGuide];
    v8 = [v17 topAnchor];
    v9 = [v16 constraintEqualToAnchor:v8 constant:34.0];
    v27[2] = v9;
    v10 = [(UIStackView *)v7 bottomAnchor];
    v11 = [(NMBUIContentHeaderView *)self layoutMarginsGuide];
    v12 = [v11 bottomAnchor];
    v13 = [v10 constraintEqualToAnchor:v12 constant:-34.0];
    v27[3] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
    [v19 activateConstraints:v14];

    contentStackView = self->_contentStackView;
  }

  return contentStackView;
}

@end