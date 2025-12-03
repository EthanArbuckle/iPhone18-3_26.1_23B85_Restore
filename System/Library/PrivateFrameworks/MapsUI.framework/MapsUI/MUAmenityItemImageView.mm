@interface MUAmenityItemImageView
- (MUAmenityItemImageView)initWithFrame:(CGRect)frame;
- (void)_contentSizeDidChange;
- (void)_setupImageView;
@end

@implementation MUAmenityItemImageView

- (void)_contentSizeDidChange
{
  mEMORY[0x1E696F200] = [MEMORY[0x1E696F200] sharedManager];
  bodyFont = [mEMORY[0x1E696F200] bodyFont];
  [bodyFont _scaledValueForValue:34.0];
  [(NSLayoutConstraint *)self->_leadingConstraint setConstant:?];
}

- (void)_setupImageView
{
  v60[7] = *MEMORY[0x1E69E9840];
  v3 = _createAmenityImageView();
  nfcImageView = self->_nfcImageView;
  self->_nfcImageView = v3;

  v5 = self->_nfcImageView;
  v6 = MEMORY[0x1E69DCAD8];
  mEMORY[0x1E696F200] = [MEMORY[0x1E696F200] sharedManager];
  bodyFont = [mEMORY[0x1E696F200] bodyFont];
  v9 = [v6 configurationWithFont:bodyFont];
  [(UIImageView *)v5 setPreferredSymbolConfiguration:v9];

  v10 = self->_nfcImageView;
  v11 = MEMORY[0x1E69DCAB8];
  v12 = MEMORY[0x1E69DCAD8];
  mEMORY[0x1E696F200]2 = [MEMORY[0x1E696F200] sharedManager];
  bodyFont2 = [mEMORY[0x1E696F200]2 bodyFont];
  v15 = [v12 configurationWithFont:bodyFont2];
  v16 = [v11 _systemImageNamed:@"nfc" withConfiguration:v15];
  [(UIImageView *)v10 setImage:v16];

  [(MUAmenityItemImageView *)self addSubview:self->_nfcImageView];
  v17 = _createAmenityImageView();
  applePayImageView = self->_applePayImageView;
  self->_applePayImageView = v17;

  v19 = self->_applePayImageView;
  v20 = MEMORY[0x1E69DCAD8];
  mEMORY[0x1E696F200]3 = [MEMORY[0x1E696F200] sharedManager];
  bodyFont3 = [mEMORY[0x1E696F200]3 bodyFont];
  v23 = [v20 configurationWithFont:bodyFont3];
  [(UIImageView *)v19 setPreferredSymbolConfiguration:v23];

  v24 = self->_applePayImageView;
  v25 = MEMORY[0x1E69DCAB8];
  v26 = MEMORY[0x1E69DCAD8];
  mEMORY[0x1E696F200]4 = [MEMORY[0x1E696F200] sharedManager];
  bodyFont4 = [mEMORY[0x1E696F200]4 bodyFont];
  v29 = [v26 configurationWithFont:bodyFont4];
  v30 = [v25 _mapsui_customSymbolImageNamed:@"applePay" withConfiguration:v29];
  [(UIImageView *)v24 setImage:v30];

  [(MUAmenityItemImageView *)self addSubview:self->_applePayImageView];
  leadingAnchor = [(UIImageView *)self->_nfcImageView leadingAnchor];
  leadingAnchor2 = [(MUAmenityItemImageView *)self leadingAnchor];
  mEMORY[0x1E696F200]5 = [MEMORY[0x1E696F200] sharedManager];
  bodyFont5 = [mEMORY[0x1E696F200]5 bodyFont];
  [bodyFont5 _scaledValueForValue:34.0];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  leadingConstraint = self->_leadingConstraint;
  self->_leadingConstraint = v35;

  v37 = _MULocalizedStringFromThisBundle(@"Accepts Apple Pay [AX Label]");
  [(UIImageView *)self->_applePayImageView setAccessibilityLabel:v37];

  [(UIImageView *)self->_applePayImageView setIsAccessibilityElement:1];
  [(UIImageView *)self->_applePayImageView setAccessibilityTraits:*MEMORY[0x1E69DD9E8]];
  v53 = MEMORY[0x1E696ACD8];
  v60[0] = self->_leadingConstraint;
  topAnchor = [(UIImageView *)self->_nfcImageView topAnchor];
  topAnchor2 = [(MUAmenityItemImageView *)self topAnchor];
  v57 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v60[1] = v57;
  bottomAnchor = [(UIImageView *)self->_nfcImageView bottomAnchor];
  bottomAnchor2 = [(MUAmenityItemImageView *)self bottomAnchor];
  v54 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v60[2] = v54;
  trailingAnchor = [(UIImageView *)self->_nfcImageView trailingAnchor];
  leadingAnchor3 = [(UIImageView *)self->_applePayImageView leadingAnchor];
  v50 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-8.0];
  v60[3] = v50;
  trailingAnchor2 = [(UIImageView *)self->_applePayImageView trailingAnchor];
  trailingAnchor3 = [(MUAmenityItemImageView *)self trailingAnchor];
  v39 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3];
  v60[4] = v39;
  topAnchor3 = [(UIImageView *)self->_applePayImageView topAnchor];
  topAnchor4 = [(MUAmenityItemImageView *)self topAnchor];
  v42 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v60[5] = v42;
  bottomAnchor3 = [(UIImageView *)self->_applePayImageView bottomAnchor];
  bottomAnchor4 = [(MUAmenityItemImageView *)self bottomAnchor];
  v45 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v60[6] = v45;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:7];
  [v53 activateConstraints:v46];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];

  v48 = *MEMORY[0x1E69E9840];
}

- (MUAmenityItemImageView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MUAmenityItemImageView;
  v3 = [(MKViewWithHairline *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUAmenityItemImageView *)v3 _setupImageView];
  }

  return v4;
}

@end