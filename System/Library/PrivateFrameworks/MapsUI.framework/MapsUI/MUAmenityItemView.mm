@interface MUAmenityItemView
- (MUAmenityItemView)initWithFrame:(CGRect)frame;
- (void)_contentSizeDidChange;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)setViewModel:(id)model;
@end

@implementation MUAmenityItemView

- (void)_contentSizeDidChange
{
  mEMORY[0x1E696F200] = [MEMORY[0x1E696F200] sharedManager];
  bodyFont = [mEMORY[0x1E696F200] bodyFont];
  [(MULabelViewProtocol *)self->_titleLabel setFont:bodyFont];

  mEMORY[0x1E696F200]2 = [MEMORY[0x1E696F200] sharedManager];
  bodyFont2 = [mEMORY[0x1E696F200]2 bodyFont];
  [bodyFont2 _scaledValueForValue:24.0];
  [(NSLayoutConstraint *)self->_imageWidthConstraint setConstant:?];
}

- (void)_updateAppearance
{
  displayTitle = [(MUAmenityItemViewModel *)self->_viewModel displayTitle];
  [(MULabelViewProtocol *)self->_titleLabel setText:displayTitle];

  imageView = self->_imageView;
  viewModel = self->_viewModel;
  mEMORY[0x1E696F200] = [MEMORY[0x1E696F200] sharedManager];
  bodyFont = [mEMORY[0x1E696F200] bodyFont];
  v7 = [(MUAmenityItemViewModel *)viewModel symbolImageForFont:bodyFont];
  [(UIImageView *)imageView setImage:v7];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (self->_viewModel != modelCopy)
  {
    v6 = modelCopy;
    objc_storeStrong(&self->_viewModel, model);
    [(MUAmenityItemView *)self _updateAppearance];
    modelCopy = v6;
  }
}

- (void)_setupConstraints
{
  v33[8] = *MEMORY[0x1E69E9840];
  widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
  mEMORY[0x1E696F200] = [MEMORY[0x1E696F200] sharedManager];
  bodyFont = [mEMORY[0x1E696F200] bodyFont];
  [bodyFont _scaledValueForValue:24.0];
  v6 = [widthAnchor constraintEqualToConstant:?];
  imageWidthConstraint = self->_imageWidthConstraint;
  self->_imageWidthConstraint = v6;

  v23 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(UIImageView *)self->_imageView leadingAnchor];
  leadingAnchor2 = [(MUAmenityItemView *)self leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v33[0] = v30;
  topAnchor = [(UIImageView *)self->_imageView topAnchor];
  topAnchor2 = [(MUAmenityItemView *)self topAnchor];
  v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v33[1] = v27;
  bottomAnchor = [(UIImageView *)self->_imageView bottomAnchor];
  bottomAnchor2 = [(MUAmenityItemView *)self bottomAnchor];
  v24 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v8 = self->_imageWidthConstraint;
  v33[2] = v24;
  v33[3] = v8;
  leadingAnchor3 = [(MULabelViewProtocol *)self->_titleLabel leadingAnchor];
  trailingAnchor = [(UIImageView *)self->_imageView trailingAnchor];
  v20 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
  v33[4] = v20;
  trailingAnchor2 = [(MULabelViewProtocol *)self->_titleLabel trailingAnchor];
  trailingAnchor3 = [(MUAmenityItemView *)self trailingAnchor];
  v11 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v33[5] = v11;
  topAnchor3 = [(MULabelViewProtocol *)self->_titleLabel topAnchor];
  topAnchor4 = [(MUAmenityItemView *)self topAnchor];
  v14 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v33[6] = v14;
  bottomAnchor3 = [(MULabelViewProtocol *)self->_titleLabel bottomAnchor];
  bottomAnchor4 = [(MUAmenityItemView *)self bottomAnchor];
  v17 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
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
  mEMORY[0x1E696F200] = [MEMORY[0x1E696F200] sharedManager];
  bodyFont = [mEMORY[0x1E696F200] bodyFont];
  v9 = [v6 configurationWithFont:bodyFont scale:1];
  [(UIImageView *)v5 setPreferredSymbolConfiguration:v9];

  [(UIImageView *)self->_imageView setAccessibilityIdentifier:@"AmenityItemImage"];
  [(MUAmenityItemView *)self addSubview:self->_imageView];
  v10 = [MUInfoCardStyle labelForProminence:0];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v10;

  [(MULabelViewProtocol *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  mEMORY[0x1E696F200]2 = [MEMORY[0x1E696F200] sharedManager];
  bodyFont2 = [mEMORY[0x1E696F200]2 bodyFont];
  [(MULabelViewProtocol *)self->_titleLabel setFont:bodyFont2];

  [(MULabelViewProtocol *)self->_titleLabel setNumberOfLines:0];
  [(MULabelViewProtocol *)self->_titleLabel setAccessibilityIdentifier:@"AmenityItemTitle"];
  [(MUAmenityItemView *)self addSubview:self->_titleLabel];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
}

- (MUAmenityItemView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MUAmenityItemView;
  v3 = [(MKViewWithHairline *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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