@interface SFSiteRowCell
- (SFSiteRowCell)initWithFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation SFSiteRowCell

- (SFSiteRowCell)initWithFrame:(CGRect)a3
{
  v31[5] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = SFSiteRowCell;
  v3 = [(SFStartPageFilledBackgroundCell *)&v30 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SFSiteRowCell *)v3 contentView];
    v29 = [(SFStartPageFilledBackgroundCell *)v4 defaultBackgroundConfiguration];
    [v29 setCornerRadius:20.0];
    [(SFSiteRowCell *)v4 setBackgroundConfiguration:v29];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v4->_label;
    v4->_label = v6;

    [(UILabel *)v4->_label setAdjustsFontForContentSizeCategory:1];
    v8 = [MEMORY[0x1E69DB878] _sf_preferredFontForTextStyle:*MEMORY[0x1E69DDD80] symbolicTraits:0x8000];
    [(UILabel *)v4->_label setFont:v8];

    [(UILabel *)v4->_label setNumberOfLines:1];
    [(UILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:v4->_label];
    v22 = MEMORY[0x1E696ACD8];
    v28 = [(UILabel *)v4->_label centerXAnchor];
    v27 = [v5 centerXAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v31[0] = v26;
    v25 = [(UILabel *)v4->_label leadingAnchor];
    v24 = [v5 leadingAnchor];
    +[SFSiteRowCell leadingSpace];
    v23 = [v25 constraintEqualToAnchor:v24 constant:?];
    v31[1] = v23;
    v21 = [(UILabel *)v4->_label centerYAnchor];
    v20 = [v5 centerYAnchor];
    v9 = [v21 constraintEqualToAnchor:v20];
    v31[2] = v9;
    v10 = [(UILabel *)v4->_label topAnchor];
    v11 = [v5 topAnchor];
    v12 = [v10 constraintGreaterThanOrEqualToAnchor:v11 constant:10.0];
    v31[3] = v12;
    v13 = [v5 heightAnchor];
    v14 = [v13 constraintEqualToConstant:48.0];
    LODWORD(v15) = 1132068864;
    v16 = [v14 sf_withPriority:v15];
    v31[4] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:5];
    [v22 activateConstraints:v17];

    v18 = v4;
  }

  return v4;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(SFSiteRowCell *)self isHighlighted];
  v8.receiver = self;
  v8.super_class = SFSiteRowCell;
  [(SFSiteRowCell *)&v8 setHighlighted:v3];
  if (v5 != v3)
  {
    v6 = [(SFStartPageFilledBackgroundCell *)self backgroundEffectView];
    v7 = [(SFSiteRowCell *)self configurationState];
    [v6 sf_setHighlighted:v3 cellState:v7];
  }
}

@end