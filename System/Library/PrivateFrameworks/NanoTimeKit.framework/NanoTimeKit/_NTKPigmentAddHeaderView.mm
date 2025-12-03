@interface _NTKPigmentAddHeaderView
+ (id)_fontWithSizeCategory:(id)category;
+ (id)reuseIdentifier;
- (_NTKPigmentAddHeaderView)initWithFrame:(CGRect)frame;
- (void)_fontSizeDidChange;
- (void)dealloc;
- (void)setName:(id)name;
@end

@implementation _NTKPigmentAddHeaderView

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (_NTKPigmentAddHeaderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
    leadingAnchor = [(UILabel *)v7->_label leadingAnchor];
    leadingAnchor2 = [(_NTKPigmentAddHeaderView *)v7 leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v28[0] = v24;
    trailingAnchor = [(UILabel *)v7->_label trailingAnchor];
    trailingAnchor2 = [(_NTKPigmentAddHeaderView *)v7 trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v28[1] = v11;
    topAnchor = [(UILabel *)v7->_label topAnchor];
    topAnchor2 = [(_NTKPigmentAddHeaderView *)v7 topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v28[2] = v14;
    bottomAnchor = [(UILabel *)v7->_label bottomAnchor];
    bottomAnchor2 = [(_NTKPigmentAddHeaderView *)v7 bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v28[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    [v21 activateConstraints:v18];

    [(UILabel *)v7->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__fontSizeDidChange name:*MEMORY[0x277D76810] object:0];

    [(_NTKPigmentAddHeaderView *)v7 _fontSizeDidChange];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = _NTKPigmentAddHeaderView;
  [(_NTKPigmentAddHeaderView *)&v4 dealloc];
}

- (void)setName:(id)name
{
  [(UILabel *)self->_label setText:name];

  [(_NTKPigmentAddHeaderView *)self setNeedsLayout];
}

+ (id)_fontWithSizeCategory:(id)category
{
  categoryCopy = category;
  v4 = *MEMORY[0x277D76800];
  if (UIContentSizeCategoryCompareToCategory(categoryCopy, *MEMORY[0x277D76800]) == NSOrderedDescending)
  {
    v5 = v4;

    categoryCopy = v5;
  }

  v6 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:categoryCopy];
  v7 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:v6];
  v8 = [v7 fontDescriptorWithSymbolicTraits:0x8000];

  v9 = [MEMORY[0x277D74300] fontWithDescriptor:v8 size:0.0];

  return v9;
}

- (void)_fontSizeDidChange
{
  traitCollection = [(_NTKPigmentAddHeaderView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  label = self->_label;
  v5 = [objc_opt_class() _fontWithSizeCategory:preferredContentSizeCategory];
  [(UILabel *)label setFont:v5];

  [(_NTKPigmentAddHeaderView *)self setNeedsLayout];
}

@end