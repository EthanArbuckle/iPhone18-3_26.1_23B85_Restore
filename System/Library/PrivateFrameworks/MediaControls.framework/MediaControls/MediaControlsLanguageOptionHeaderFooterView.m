@interface MediaControlsLanguageOptionHeaderFooterView
- (MediaControlsLanguageOptionHeaderFooterView)initWithReuseIdentifier:(id)a3;
@end

@implementation MediaControlsLanguageOptionHeaderFooterView

- (MediaControlsLanguageOptionHeaderFooterView)initWithReuseIdentifier:(id)a3
{
  v31[4] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = MediaControlsLanguageOptionHeaderFooterView;
  v3 = [(MediaControlsLanguageOptionHeaderFooterView *)&v30 initWithReuseIdentifier:a3];
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

    v8 = [(MediaControlsLanguageOptionHeaderFooterView *)v3 contentView];
    [v8 addSubview:v3->_titleLabel];

    v22 = MEMORY[0x1E696ACD8];
    v28 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v29 = [(MediaControlsLanguageOptionHeaderFooterView *)v3 contentView];
    v27 = [v29 leadingAnchor];
    v26 = [v28 constraintEqualToAnchor:v27 constant:20.0];
    v31[0] = v26;
    v24 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v25 = [(MediaControlsLanguageOptionHeaderFooterView *)v3 contentView];
    v23 = [v25 trailingAnchor];
    v21 = [v24 constraintEqualToAnchor:v23 constant:20.0];
    v31[1] = v21;
    v20 = [(UILabel *)v3->_titleLabel firstBaselineAnchor];
    v9 = [(MediaControlsLanguageOptionHeaderFooterView *)v3 contentView];
    v10 = [v9 layoutMarginsGuide];
    v11 = [v10 topAnchor];
    v12 = [v20 constraintEqualToSystemSpacingBelowAnchor:v11 multiplier:1.5];
    v31[2] = v12;
    v13 = [(MediaControlsLanguageOptionHeaderFooterView *)v3 contentView];
    v14 = [v13 bottomAnchor];
    v15 = [(UILabel *)v3->_titleLabel lastBaselineAnchor];
    v16 = [v14 constraintEqualToSystemSpacingBelowAnchor:v15 multiplier:1.0];
    v31[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
    [v22 activateConstraints:v17];

    v18 = [MEMORY[0x1E69DC888] clearColor];
    [(MediaControlsLanguageOptionHeaderFooterView *)v3 setTintColor:v18];
  }

  return v3;
}

@end