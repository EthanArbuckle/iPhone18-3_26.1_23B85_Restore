@interface MRUViewServiceRoutingHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (MRUViewServiceRoutingHeaderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setImage:(id)image;
- (void)setStylingProvider:(id)provider;
- (void)setTitle:(id)title;
- (void)updateContentSizeCategory;
- (void)updateVisualStyling;
@end

@implementation MRUViewServiceRoutingHeaderView

- (MRUViewServiceRoutingHeaderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v27[1] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = MRUViewServiceRoutingHeaderView;
  v7 = [(MRUViewServiceRoutingHeaderView *)&v25 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
    imageView = v7->_imageView;
    v7->_imageView = v8;

    [(UIImageView *)v7->_imageView setContentMode:1];
    [(MRUViewServiceRoutingHeaderView *)v7 addSubview:v7->_imageView];
    v10 = objc_alloc(MEMORY[0x1E69DCC10]);
    v11 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
    v15 = [v10 initWithFrame:{*MEMORY[0x1E695F058], v12, v13, v14}];
    titleLabel = v7->_titleLabel;
    v7->_titleLabel = v15;

    [(UILabel *)v7->_titleLabel setNumberOfLines:1];
    [(UILabel *)v7->_titleLabel setTextAlignment:1];
    [(MRUViewServiceRoutingHeaderView *)v7 addSubview:v7->_titleLabel];
    v17 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v11, v12, v13, v14}];
    separatorView = v7->_separatorView;
    v7->_separatorView = v17;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v7->_separatorView setBackgroundColor:whiteColor];

    [(MRUViewServiceRoutingHeaderView *)v7 addSubview:v7->_separatorView];
    v27[0] = objc_opt_class();
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v21 = [(MRUViewServiceRoutingHeaderView *)v7 registerForTraitChanges:v20 withAction:sel_updateVisualStyling];

    v26 = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v23 = [(MRUViewServiceRoutingHeaderView *)v7 registerForTraitChanges:v22 withAction:sel_updateContentSizeCategory];

    [(MRUViewServiceRoutingHeaderView *)v7 updateContentSizeCategory];
  }

  return v7;
}

- (void)layoutSubviews
{
  v43[1] = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = MRUViewServiceRoutingHeaderView;
  [(MRUViewServiceRoutingHeaderView *)&v42 layoutSubviews];
  [(MRUViewServiceRoutingHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  traitCollection = [(MRUViewServiceRoutingHeaderView *)self traitCollection];
  [traitCollection displayScale];
  v13 = 1.0 / v12;

  v44.origin.x = v4;
  v44.origin.y = v6;
  v44.size.width = v8;
  v44.size.height = v10;
  MinX = CGRectGetMinX(v44);
  v45.origin.x = v4;
  v45.origin.y = v6;
  v45.size.width = v8;
  v45.size.height = v10;
  v15 = CGRectGetMaxY(v45) - v13;
  v46.origin.x = v4;
  v46.origin.y = v6;
  v46.size.width = v8;
  v46.size.height = v10;
  [(UIView *)self->_separatorView setFrame:MinX, v15, CGRectGetWidth(v46), v13];
  UIRectInset();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  if (self->_title)
  {
    [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:0];
  }

  else
  {
    v24 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:3 scale:17.0];
    v25 = MEMORY[0x1E69DCAD8];
    systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
    v43[0] = systemWhiteColor;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
    v28 = [v25 configurationWithPaletteColors:v27];
    v29 = [v24 configurationByApplyingConfiguration:v28];
    [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:v29];
  }

  [(UIImageView *)self->_imageView sizeThatFits:v21, v23];
  v47.origin.x = v17;
  v47.origin.y = v19;
  v47.size.width = v21;
  v47.size.height = v23;
  CGRectGetMinY(v47);
  UIRectCenteredXInRect();
  [(UIImageView *)self->_imageView setFrame:?];
  UIRectInset();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  [(UILabel *)self->_titleLabel sizeThatFits:v34, v36];
  MRUSizeCeilToViewScale(self);
  v39 = v38;
  v48.origin.x = v31;
  v48.origin.y = v33;
  v48.size.width = v35;
  v48.size.height = v37;
  v40 = CGRectGetMinX(v48);
  v49.origin.x = v31;
  v49.origin.y = v33;
  v49.size.width = v35;
  v49.size.height = v37;
  MinY = CGRectGetMinY(v49);
  v50.origin.x = v31;
  v50.origin.y = v33;
  v50.size.width = v35;
  v50.size.height = v37;
  [(UILabel *)self->_titleLabel setFrame:v40, MinY, CGRectGetWidth(v50), v39];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  traitCollection = [(MRUViewServiceRoutingHeaderView *)self traitCollection];
  [traitCollection displayScale];
  v8 = 1.0 / v7;

  v9 = v8 + 18.0 + 9.0 + 13.0;
  v10 = height - v9;
  [(UIImageView *)self->_imageView sizeThatFits:width, v10];
  v12 = v10 - v11;
  v13 = v9 + v11;
  [(UILabel *)self->_titleLabel sizeThatFits:width, v12];
  MRUSizeCeilToViewScale(self);
  v15 = v13 + v14;
  v16 = width;
  result.height = v15;
  result.width = v16;
  return result;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v5 = [titleCopy copy];
  title = self->_title;
  self->_title = v5;

  [(UILabel *)self->_titleLabel setText:titleCopy];

  [(MRUViewServiceRoutingHeaderView *)self setNeedsLayout];
}

- (void)setImage:(id)image
{
  objc_storeStrong(&self->_image, image);
  imageCopy = image;
  [(UIImageView *)self->_imageView setImage:imageCopy];

  [(MRUViewServiceRoutingHeaderView *)self setNeedsLayout];
}

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_stylingProvider, provider);
    [(MRUViewServiceRoutingHeaderView *)self updateVisualStyling];
    providerCopy = v6;
  }
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  titleLabel = self->_titleLabel;
  traitCollection = [(MRUViewServiceRoutingHeaderView *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:0 toView:titleLabel traitCollection:traitCollection];

  v6 = self->_stylingProvider;
  imageView = self->_imageView;
  traitCollection2 = [(MRUViewServiceRoutingHeaderView *)self traitCollection];
  [(MRUVisualStylingProvider *)v6 applyStyle:0 toView:imageView traitCollection:traitCollection2];

  v9 = self->_stylingProvider;
  separatorView = self->_separatorView;
  traitCollection3 = [(MRUViewServiceRoutingHeaderView *)self traitCollection];
  [(MRUVisualStylingProvider *)v9 applyStyle:4 toView:separatorView traitCollection:traitCollection3];
}

- (void)updateContentSizeCategory
{
  mru_titleFont = [MEMORY[0x1E69DB878] mru_titleFont];
  [(UILabel *)self->_titleLabel setFont:mru_titleFont];
}

@end