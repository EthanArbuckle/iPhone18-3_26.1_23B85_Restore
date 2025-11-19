@interface _NTKPigmentAddHeaderView
+ (id)_fontWithSizeCategory:(id)a3;
+ (id)reuseIdentifier;
- (_NTKPigmentAddHeaderView)initWithFrame:(CGRect)a3;
- (void)_fontSizeDidChange;
- (void)dealloc;
- (void)setName:(id)a3;
@end

@implementation _NTKPigmentAddHeaderView

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (_NTKPigmentAddHeaderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v28[4] = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = _NTKPigmentAddHeaderView;
  v7 = [(_NTKPigmentAddHeaderView *)&v27 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{x, y, width, height}];
    label = v7->_label;
    v7->_label = v8;

    v10 = BPSTextColor();
    [(UILabel *)v7->_label setTextColor:v10];

    [(_NTKPigmentAddHeaderView *)v7 addSubview:v7->_label];
    v21 = MEMORY[0x277CCAAD0];
    v26 = [(UILabel *)v7->_label leadingAnchor];
    v25 = [(_NTKPigmentAddHeaderView *)v7 leadingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v28[0] = v24;
    v23 = [(UILabel *)v7->_label trailingAnchor];
    v22 = [(_NTKPigmentAddHeaderView *)v7 trailingAnchor];
    v11 = [v23 constraintEqualToAnchor:v22];
    v28[1] = v11;
    v12 = [(UILabel *)v7->_label topAnchor];
    v13 = [(_NTKPigmentAddHeaderView *)v7 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v28[2] = v14;
    v15 = [(UILabel *)v7->_label bottomAnchor];
    v16 = [(_NTKPigmentAddHeaderView *)v7 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v28[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    [v21 activateConstraints:v18];

    [(UILabel *)v7->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    [v19 addObserver:v7 selector:sel__fontSizeDidChange name:*MEMORY[0x277D76810] object:0];

    [(_NTKPigmentAddHeaderView *)v7 _fontSizeDidChange];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = _NTKPigmentAddHeaderView;
  [(_NTKPigmentAddHeaderView *)&v4 dealloc];
}

- (void)setName:(id)a3
{
  [(UILabel *)self->_label setText:a3];

  [(_NTKPigmentAddHeaderView *)self setNeedsLayout];
}

+ (id)_fontWithSizeCategory:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x277D76800];
  if (UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x277D76800]) == NSOrderedDescending)
  {
    v5 = v4;

    v3 = v5;
  }

  v6 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:v3];
  v7 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:v6];
  v8 = [v7 fontDescriptorWithSymbolicTraits:0x8000];

  v9 = [MEMORY[0x277D74300] fontWithDescriptor:v8 size:0.0];

  return v9;
}

- (void)_fontSizeDidChange
{
  v3 = [(_NTKPigmentAddHeaderView *)self traitCollection];
  v6 = [v3 preferredContentSizeCategory];

  label = self->_label;
  v5 = [objc_opt_class() _fontWithSizeCategory:v6];
  [(UILabel *)label setFont:v5];

  [(_NTKPigmentAddHeaderView *)self setNeedsLayout];
}

@end