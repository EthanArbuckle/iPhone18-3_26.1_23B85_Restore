@interface MediaControlsLanguageOptionHeaderFooterView
- (MediaControlsLanguageOptionHeaderFooterView)initWithReuseIdentifier:(id)identifier;
@end

@implementation MediaControlsLanguageOptionHeaderFooterView

- (MediaControlsLanguageOptionHeaderFooterView)initWithReuseIdentifier:(id)identifier
{
  v31[4] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = MediaControlsLanguageOptionHeaderFooterView;
  v3 = [(MediaControlsLanguageOptionHeaderFooterView *)&v30 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v5;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [(UILabel *)v3->_titleLabel setFont:v7];

    contentView = [(MediaControlsLanguageOptionHeaderFooterView *)v3 contentView];
    [contentView addSubview:v3->_titleLabel];

    v22 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UILabel *)v3->_titleLabel leadingAnchor];
    contentView2 = [(MediaControlsLanguageOptionHeaderFooterView *)v3 contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    v31[0] = v26;
    trailingAnchor = [(UILabel *)v3->_titleLabel trailingAnchor];
    contentView3 = [(MediaControlsLanguageOptionHeaderFooterView *)v3 contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:20.0];
    v31[1] = v21;
    firstBaselineAnchor = [(UILabel *)v3->_titleLabel firstBaselineAnchor];
    contentView4 = [(MediaControlsLanguageOptionHeaderFooterView *)v3 contentView];
    layoutMarginsGuide = [contentView4 layoutMarginsGuide];
    topAnchor = [layoutMarginsGuide topAnchor];
    v12 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor multiplier:1.5];
    v31[2] = v12;
    contentView5 = [(MediaControlsLanguageOptionHeaderFooterView *)v3 contentView];
    bottomAnchor = [contentView5 bottomAnchor];
    lastBaselineAnchor = [(UILabel *)v3->_titleLabel lastBaselineAnchor];
    v16 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.0];
    v31[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
    [v22 activateConstraints:v17];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(MediaControlsLanguageOptionHeaderFooterView *)v3 setTintColor:clearColor];
  }

  return v3;
}

@end