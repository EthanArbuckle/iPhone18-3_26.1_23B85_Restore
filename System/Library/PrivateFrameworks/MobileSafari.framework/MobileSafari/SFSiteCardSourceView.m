@interface SFSiteCardSourceView
- (SFSiteCardSourceView)initWithFrame:(CGRect)a3;
- (void)setImage:(id)a3;
@end

@implementation SFSiteCardSourceView

- (SFSiteCardSourceView)initWithFrame:(CGRect)a3
{
  v37[2] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = SFSiteCardSourceView;
  v3 = [(SFSiteCardSourceView *)&v35 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFSiteCardSourceView *)v3 setTintAdjustmentMode:1];
    v5 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(SFSiteCardSourceView *)v4 setTintColor:v5];

    v34 = [(SFSiteCardSourceView *)v4 contentView];
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v4->_imageView;
    v4->_imageView = v6;

    v8 = MEMORY[0x1E69DCAD8];
    v9 = subtitleFont();
    v10 = [v8 configurationWithFont:v9];
    [(UIImageView *)v4->_imageView setPreferredSymbolConfiguration:v10];

    [(UIImageView *)v4->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_imageView _sf_setMatchesIntrinsicContentSize];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v4->_label;
    v4->_label = v11;

    v13 = subtitleFont();
    [(UILabel *)v4->_label setFont:v13];

    [(UILabel *)v4->_label setNumberOfLines:1];
    v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v4->_label setTextColor:v14];

    [(UILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_label _setUseShortcutIntrinsicContentSize:1];
    [(UILabel *)v4->_label setAdjustsFontForContentSizeCategory:1];
    v15 = objc_alloc(MEMORY[0x1E69DCF90]);
    v37[0] = v4->_imageView;
    v37[1] = v4->_label;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
    v17 = [v15 initWithArrangedSubviews:v16];

    [v17 setAxis:0];
    [v17 setSpacing:3.0];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v34 addSubview:v17];
    v28 = MEMORY[0x1E696ACD8];
    v33 = [v17 leadingAnchor];
    v32 = [(SFSiteCardSourceView *)v4 leadingAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v36[0] = v31;
    v30 = [v17 trailingAnchor];
    v29 = [(SFSiteCardSourceView *)v4 trailingAnchor];
    v18 = [v30 constraintEqualToAnchor:v29];
    v36[1] = v18;
    v19 = [v17 topAnchor];
    v20 = [(SFSiteCardSourceView *)v4 topAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v36[2] = v21;
    v22 = [v17 bottomAnchor];
    v23 = [(SFSiteCardSourceView *)v4 bottomAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v36[3] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
    [v28 activateConstraints:v25];

    v26 = v4;
  }

  return v4;
}

- (void)setImage:(id)a3
{
  imageView = self->_imageView;
  v5 = a3;
  [(UIImageView *)imageView setImage:v5];
  v6 = [v5 _isSymbolImage];

  v7 = self->_imageView;

  [(UIImageView *)v7 setHidden:v6 ^ 1u];
}

@end