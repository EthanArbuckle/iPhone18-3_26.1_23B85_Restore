@interface MUAmenityItemImageView
- (MUAmenityItemImageView)initWithFrame:(CGRect)a3;
- (void)_contentSizeDidChange;
- (void)_setupImageView;
@end

@implementation MUAmenityItemImageView

- (void)_contentSizeDidChange
{
  v4 = [MEMORY[0x1E696F200] sharedManager];
  v3 = [v4 bodyFont];
  [v3 _scaledValueForValue:34.0];
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
  v7 = [MEMORY[0x1E696F200] sharedManager];
  v8 = [v7 bodyFont];
  v9 = [v6 configurationWithFont:v8];
  [(UIImageView *)v5 setPreferredSymbolConfiguration:v9];

  v10 = self->_nfcImageView;
  v11 = MEMORY[0x1E69DCAB8];
  v12 = MEMORY[0x1E69DCAD8];
  v13 = [MEMORY[0x1E696F200] sharedManager];
  v14 = [v13 bodyFont];
  v15 = [v12 configurationWithFont:v14];
  v16 = [v11 _systemImageNamed:@"nfc" withConfiguration:v15];
  [(UIImageView *)v10 setImage:v16];

  [(MUAmenityItemImageView *)self addSubview:self->_nfcImageView];
  v17 = _createAmenityImageView();
  applePayImageView = self->_applePayImageView;
  self->_applePayImageView = v17;

  v19 = self->_applePayImageView;
  v20 = MEMORY[0x1E69DCAD8];
  v21 = [MEMORY[0x1E696F200] sharedManager];
  v22 = [v21 bodyFont];
  v23 = [v20 configurationWithFont:v22];
  [(UIImageView *)v19 setPreferredSymbolConfiguration:v23];

  v24 = self->_applePayImageView;
  v25 = MEMORY[0x1E69DCAB8];
  v26 = MEMORY[0x1E69DCAD8];
  v27 = [MEMORY[0x1E696F200] sharedManager];
  v28 = [v27 bodyFont];
  v29 = [v26 configurationWithFont:v28];
  v30 = [v25 _mapsui_customSymbolImageNamed:@"applePay" withConfiguration:v29];
  [(UIImageView *)v24 setImage:v30];

  [(MUAmenityItemImageView *)self addSubview:self->_applePayImageView];
  v31 = [(UIImageView *)self->_nfcImageView leadingAnchor];
  v32 = [(MUAmenityItemImageView *)self leadingAnchor];
  v33 = [MEMORY[0x1E696F200] sharedManager];
  v34 = [v33 bodyFont];
  [v34 _scaledValueForValue:34.0];
  v35 = [v31 constraintEqualToAnchor:v32 constant:?];
  leadingConstraint = self->_leadingConstraint;
  self->_leadingConstraint = v35;

  v37 = _MULocalizedStringFromThisBundle(@"Accepts Apple Pay [AX Label]");
  [(UIImageView *)self->_applePayImageView setAccessibilityLabel:v37];

  [(UIImageView *)self->_applePayImageView setIsAccessibilityElement:1];
  [(UIImageView *)self->_applePayImageView setAccessibilityTraits:*MEMORY[0x1E69DD9E8]];
  v53 = MEMORY[0x1E696ACD8];
  v60[0] = self->_leadingConstraint;
  v59 = [(UIImageView *)self->_nfcImageView topAnchor];
  v58 = [(MUAmenityItemImageView *)self topAnchor];
  v57 = [v59 constraintEqualToAnchor:v58];
  v60[1] = v57;
  v56 = [(UIImageView *)self->_nfcImageView bottomAnchor];
  v55 = [(MUAmenityItemImageView *)self bottomAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v60[2] = v54;
  v52 = [(UIImageView *)self->_nfcImageView trailingAnchor];
  v51 = [(UIImageView *)self->_applePayImageView leadingAnchor];
  v50 = [v52 constraintEqualToAnchor:v51 constant:-8.0];
  v60[3] = v50;
  v49 = [(UIImageView *)self->_applePayImageView trailingAnchor];
  v38 = [(MUAmenityItemImageView *)self trailingAnchor];
  v39 = [v49 constraintLessThanOrEqualToAnchor:v38];
  v60[4] = v39;
  v40 = [(UIImageView *)self->_applePayImageView topAnchor];
  v41 = [(MUAmenityItemImageView *)self topAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];
  v60[5] = v42;
  v43 = [(UIImageView *)self->_applePayImageView bottomAnchor];
  v44 = [(MUAmenityItemImageView *)self bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];
  v60[6] = v45;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:7];
  [v53 activateConstraints:v46];

  v47 = [MEMORY[0x1E696AD88] defaultCenter];
  [v47 addObserver:self selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];

  v48 = *MEMORY[0x1E69E9840];
}

- (MUAmenityItemImageView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MUAmenityItemImageView;
  v3 = [(MKViewWithHairline *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUAmenityItemImageView *)v3 _setupImageView];
  }

  return v4;
}

@end