@interface SUUIModernChartHeaderView
- (SUUIModernChartHeaderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setTitle:(id)title;
@end

@implementation SUUIModernChartHeaderView

- (SUUIModernChartHeaderView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = SUUIModernChartHeaderView;
  v3 = [(SUUIModernChartHeaderView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    contentView = v3->_contentView;
    v3->_contentView = v4;

    [(SUUIModernChartHeaderView *)v3 addSubview:v3->_contentView];
    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    label = v3->_label;
    v3->_label = v6;

    [(UIView *)v3->_contentView addSubview:v3->_label];
  }

  return v3;
}

- (void)setTitle:(id)title
{
  v4 = MEMORY[0x277D74310];
  v5 = *MEMORY[0x277D76940];
  titleCopy = title;
  v21 = [v4 preferredFontDescriptorWithTextStyle:v5 addingSymbolicTraits:2 options:2];
  v7 = [MEMORY[0x277D74300] fontWithDescriptor:v21 size:0.0];
  v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:1.3];
  v9 = objc_alloc(MEMORY[0x277CBEAC0]);
  v10 = [v9 initWithObjectsAndKeys:{v7, *MEMORY[0x277D740A8], v8, *MEMORY[0x277D740D0], 0}];
  uppercaseString = [titleCopy uppercaseString];

  v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:uppercaseString attributes:v10];
  [(UILabel *)self->_label setAttributedText:v12];
  [v7 _scaledValueForValue:16.0];
  v14 = v13;
  [(UILabel *)self->_label _firstBaselineOffsetFromTop];
  v16 = v14 - v15;
  [(UILabel *)self->_label sizeThatFits:1.79769313e308, 1.79769313e308];
  v18 = v17;
  [(UILabel *)self->_label setFrame:0.0, v16, v17, v19];
  [v7 _scaledValueForValue:24.0];
  [(UIView *)self->_contentView setFrame:0.0, 0.0, v18, v20];
  [(SUUIModernChartHeaderView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = SUUIModernChartHeaderView;
  [(SUUIModernChartHeaderView *)&v10 layoutSubviews];
  [(SUUIModernChartHeaderView *)self bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  v7 = CGRectGetWidth(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v8 = CGRectGetHeight(v12);
  [(UIView *)self->_contentView frame];
  v9 = CGRectGetHeight(v13);
  [(UIView *)self->_contentView setFrame:0.0, floor((v8 - v9) * 0.5), v7, v9];
}

@end