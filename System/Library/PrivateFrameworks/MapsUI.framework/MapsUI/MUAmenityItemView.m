@interface MUAmenityItemView
- (MUAmenityItemView)initWithFrame:(CGRect)a3;
- (void)_contentSizeDidChange;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)setViewModel:(id)a3;
@end

@implementation MUAmenityItemView

- (void)_contentSizeDidChange
{
  v3 = [MEMORY[0x1E696F200] sharedManager];
  v4 = [v3 bodyFont];
  [(MULabelViewProtocol *)self->_titleLabel setFont:v4];

  v6 = [MEMORY[0x1E696F200] sharedManager];
  v5 = [v6 bodyFont];
  [v5 _scaledValueForValue:24.0];
  [(NSLayoutConstraint *)self->_imageWidthConstraint setConstant:?];
}

- (void)_updateAppearance
{
  v3 = [(MUAmenityItemViewModel *)self->_viewModel displayTitle];
  [(MULabelViewProtocol *)self->_titleLabel setText:v3];

  imageView = self->_imageView;
  viewModel = self->_viewModel;
  v8 = [MEMORY[0x1E696F200] sharedManager];
  v6 = [v8 bodyFont];
  v7 = [(MUAmenityItemViewModel *)viewModel symbolImageForFont:v6];
  [(UIImageView *)imageView setImage:v7];
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (self->_viewModel != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_viewModel, a3);
    [(MUAmenityItemView *)self _updateAppearance];
    v5 = v6;
  }
}

- (void)_setupConstraints
{
  v33[8] = *MEMORY[0x1E69E9840];
  v3 = [(UIImageView *)self->_imageView widthAnchor];
  v4 = [MEMORY[0x1E696F200] sharedManager];
  v5 = [v4 bodyFont];
  [v5 _scaledValueForValue:24.0];
  v6 = [v3 constraintEqualToConstant:?];
  imageWidthConstraint = self->_imageWidthConstraint;
  self->_imageWidthConstraint = v6;

  v23 = MEMORY[0x1E696ACD8];
  v32 = [(UIImageView *)self->_imageView leadingAnchor];
  v31 = [(MUAmenityItemView *)self leadingAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v33[0] = v30;
  v29 = [(UIImageView *)self->_imageView topAnchor];
  v28 = [(MUAmenityItemView *)self topAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v33[1] = v27;
  v26 = [(UIImageView *)self->_imageView bottomAnchor];
  v25 = [(MUAmenityItemView *)self bottomAnchor];
  v24 = [v26 constraintLessThanOrEqualToAnchor:v25];
  v8 = self->_imageWidthConstraint;
  v33[2] = v24;
  v33[3] = v8;
  v22 = [(MULabelViewProtocol *)self->_titleLabel leadingAnchor];
  v21 = [(UIImageView *)self->_imageView trailingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21 constant:10.0];
  v33[4] = v20;
  v9 = [(MULabelViewProtocol *)self->_titleLabel trailingAnchor];
  v10 = [(MUAmenityItemView *)self trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v33[5] = v11;
  v12 = [(MULabelViewProtocol *)self->_titleLabel topAnchor];
  v13 = [(MUAmenityItemView *)self topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v33[6] = v14;
  v15 = [(MULabelViewProtocol *)self->_titleLabel bottomAnchor];
  v16 = [(MUAmenityItemView *)self bottomAnchor];
  v17 = [v15 constraintLessThanOrEqualToAnchor:v16];
  v33[7] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:8];
  [v23 activateConstraints:v18];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_setupSubviews
{
  v3 = _createAmenityImageView();
  imageView = self->_imageView;
  self->_imageView = v3;

  [(UIImageView *)self->_imageView setContentMode:1];
  v5 = self->_imageView;
  v6 = MEMORY[0x1E69DCAD8];
  v7 = [MEMORY[0x1E696F200] sharedManager];
  v8 = [v7 bodyFont];
  v9 = [v6 configurationWithFont:v8 scale:1];
  [(UIImageView *)v5 setPreferredSymbolConfiguration:v9];

  [(UIImageView *)self->_imageView setAccessibilityIdentifier:@"AmenityItemImage"];
  [(MUAmenityItemView *)self addSubview:self->_imageView];
  v10 = [MUInfoCardStyle labelForProminence:0];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v10;

  [(MULabelViewProtocol *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [MEMORY[0x1E696F200] sharedManager];
  v13 = [v12 bodyFont];
  [(MULabelViewProtocol *)self->_titleLabel setFont:v13];

  [(MULabelViewProtocol *)self->_titleLabel setNumberOfLines:0];
  [(MULabelViewProtocol *)self->_titleLabel setAccessibilityIdentifier:@"AmenityItemTitle"];
  [(MUAmenityItemView *)self addSubview:self->_titleLabel];
  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  [v14 addObserver:self selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
}

- (MUAmenityItemView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MUAmenityItemView;
  v3 = [(MKViewWithHairline *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUAmenityItemView *)v3 setAccessibilityIdentifier:@"AmenityItem"];
    [(MUAmenityItemView *)v4 _setupSubviews];
    [(MUAmenityItemView *)v4 _setupConstraints];
  }

  return v4;
}

@end