@interface MRUActivityMirroringView
- (MRUActivityMirroringView)initWithFrame:(CGRect)frame;
- (double)preferredHeightForBottomSafeArea;
- (void)layoutSubviews;
- (void)setDeviceImage:(id)image;
- (void)setDeviceName:(id)name;
- (void)setState:(id)state;
- (void)updateContentSizeCategory;
- (void)updateDeviceSymbolConfiguration;
- (void)updatePackageScale;
- (void)updateVisibilty;
@end

@implementation MRUActivityMirroringView

- (MRUActivityMirroringView)initWithFrame:(CGRect)frame
{
  v28.receiver = self;
  v28.super_class = MRUActivityMirroringView;
  v3 = [(MRUActivityMirroringView *)&v28 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6997250]);
    packageView = v3->_packageView;
    v3->_packageView = v4;

    [(CCUICAPackageView *)v3->_packageView setUserInteractionEnabled:0];
    v6 = [MRUAssetsProvider packageDescriptionWithName:@"MirroringLeading"];
    [(CCUICAPackageView *)v3->_packageView setPackageDescription:v6];

    v7 = [[MRUActivityAccessoryView alloc] initWithContentView:v3->_packageView size:23.0, 22.0];
    leadingView = v3->_leadingView;
    v3->_leadingView = v7;

    [(MRUActivityMirroringView *)v3 addSubview:v3->_leadingView];
    v9 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    deviceImageView = v3->_deviceImageView;
    v3->_deviceImageView = v9;

    [(UIImageView *)v3->_deviceImageView setContentMode:1];
    v11 = [[MRUActivityAccessoryView alloc] initWithContentView:v3->_deviceImageView size:23.0, 22.0];
    trailingView = v3->_trailingView;
    v3->_trailingView = v11;

    [(MRUActivityMirroringView *)v3 addSubview:v3->_trailingView];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    headerLabel = v3->_headerLabel;
    v3->_headerLabel = v13;

    v15 = +[MRUStringsProvider screenMirroring];
    [(UILabel *)v3->_headerLabel setText:v15];

    [(UILabel *)v3->_headerLabel setNumberOfLines:1];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v3->_headerLabel setTextColor:labelColor];

    [(MRUActivityMirroringView *)v3 addSubview:v3->_headerLabel];
    v17 = objc_alloc_init(MEMORY[0x1E698E7E0]);
    deviceNameView = v3->_deviceNameView;
    v3->_deviceNameView = v17;

    [(BSUIEmojiLabelView *)v3->_deviceNameView setNumberOfLines:1];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(BSUIEmojiLabelView *)v3->_deviceNameView setTextColor:secondaryLabelColor];

    [(MRUActivityMirroringView *)v3 addSubview:v3->_deviceNameView];
    v20 = [MEMORY[0x1E69DC888] colorWithRed:0.22745098 green:0.509803922 blue:0.968627451 alpha:1.0];
    sbui_systemApertureTextButtonConfiguration = [MEMORY[0x1E69DC740] sbui_systemApertureTextButtonConfiguration];
    [sbui_systemApertureTextButtonConfiguration setBaseForegroundColor:v20];
    [sbui_systemApertureTextButtonConfiguration setBaseBackgroundColor:v20];
    v22 = [MEMORY[0x1E69DC738] buttonWithConfiguration:sbui_systemApertureTextButtonConfiguration primaryAction:0];
    button = v3->_button;
    v3->_button = v22;

    v24 = v3->_button;
    v25 = +[MRUStringsProvider stopMirroring];
    [(UIButton *)v24 setTitle:v25 forState:0];

    [(MRUActivityMirroringView *)v3 addSubview:v3->_button];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_updateContentSizeCategory name:*MEMORY[0x1E69DDC48] object:0];

    [(MRUActivityMirroringView *)v3 updateContentSizeCategory];
    [(MRUActivityMirroringView *)v3 updatePackageScale];
    [(MRUActivityMirroringView *)v3 updateDeviceSymbolConfiguration];
    [(MRUActivityMirroringView *)v3 updateVisibilty];
  }

  return v3;
}

- (void)layoutSubviews
{
  v58.receiver = self;
  v58.super_class = MRUActivityMirroringView;
  [(MRUActivityMirroringView *)&v58 layoutSubviews];
  [(MRUActivityMirroringView *)self updatePackageScale];
  [(MRUActivityMirroringView *)self updateDeviceSymbolConfiguration];
  [(MRUActivityMirroringView *)self updateVisibilty];
  sBUISA_layoutMode = [(MRUActivityMirroringView *)self SBUISA_layoutMode];
  [(MRUActivityMirroringView *)self bounds];
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  if (sBUISA_layoutMode == 4)
  {
    v12 = v4 + 20.0;
    v13 = v5 + 29.0;
    v14 = v6 - (20.0 + 20.0);
    v15 = v7 - (29.0 + 17.0);
    [(UIButton *)self->_button sizeThatFits:v14, v15];
    v17 = v16;
    v59.origin.x = v12;
    v59.origin.y = v13;
    v59.size.width = v14;
    v59.size.height = v15;
    MinX = CGRectGetMinX(v59);
    v60.origin.x = v12;
    v60.origin.y = v13;
    v60.size.width = v14;
    v60.size.height = v15;
    v19 = CGRectGetMaxY(v60) - v17;
    v61.origin.x = v12;
    v61.origin.y = v13;
    v61.size.width = v14;
    v61.size.height = v15;
    [(UIButton *)self->_button setFrame:MinX, v19, CGRectGetWidth(v61), v17];
    UIRectInset();
    x = v62.origin.x;
    y = v62.origin.y;
    width = v62.size.width;
    height = v62.size.height;
    v57 = CGRectGetMinX(v62);
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = height;
    MinY = CGRectGetMinY(v63);
    [(MRUActivityMirroringView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(MRUActivityAccessoryView *)self->_leadingView setFrame:?];
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    v55 = CGRectGetMaxX(v64) - 40.0;
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = width;
    v65.size.height = height;
    v24 = CGRectGetMinY(v65);
    [(MRUActivityMirroringView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(MRUActivityAccessoryView *)self->_trailingView setFrame:?];
    [(UILabel *)self->_headerLabel mr_tightBoundingRectOfFirstLine];
    CGRectGetMinY(v66);
    sBUISA_systemApertureObstructedAreaLayoutGuide = [(MRUActivityMirroringView *)self SBUISA_systemApertureObstructedAreaLayoutGuide];
    [sBUISA_systemApertureObstructedAreaLayoutGuide layoutFrame];
    CGRectGetHeight(v67);

    v68.origin.x = v55;
    v68.size.height = 40.0;
    v68.origin.y = v24;
    v68.size.width = 40.0;
    CGRectGetWidth(v68);
    v69.origin.y = MinY;
    v69.origin.x = v57;
    v69.size.height = 38.0;
    v69.size.width = 50.0;
    CGRectGetWidth(v69);
    UIRectInset();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    [(UILabel *)self->_headerLabel sizeThatFits:v30, v32];
    v35 = v34;
    v70.origin.x = v27;
    v70.origin.y = v29;
    v70.size.width = v31;
    v70.size.height = v33;
    v36 = CGRectGetMinX(v70);
    v71.origin.x = v27;
    v71.origin.y = v29;
    v71.size.width = v31;
    v71.size.height = v33;
    v37 = CGRectGetMinY(v71);
    v38 = v27;
    v39 = v29;
    v40 = v31;
    v41 = v33;
  }

  else
  {
    [(UIButton *)self->_button sizeThatFits:v6, v7];
    v72.origin.x = v8;
    v72.origin.y = v9;
    v72.size.width = v10;
    v72.size.height = v11;
    CGRectGetWidth(v72);
    UIRectCenteredRect();
    [(UIButton *)self->_button setFrame:?];
    [(UILabel *)self->_headerLabel sizeThatFits:v10, v11];
    v35 = v42;
    v73.origin.x = v8;
    v73.origin.y = v9;
    v73.size.width = v10;
    v73.size.height = v11;
    v36 = CGRectGetMinX(v73);
    v74.origin.x = v8;
    v74.origin.y = v9;
    v74.size.width = v10;
    v74.size.height = v11;
    v37 = CGRectGetMinY(v74);
    v38 = v8;
    v39 = v9;
    v40 = v10;
    v41 = v11;
  }

  [(UILabel *)self->_headerLabel setFrame:v36, v37, CGRectGetWidth(*&v38), v35];
  UIRectInset();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  [(BSUIEmojiLabelView *)self->_deviceNameView sizeThatFits:v47, v49];
  v52 = v51;
  v75.origin.x = v44;
  v75.origin.y = v46;
  v75.size.width = v48;
  v75.size.height = v50;
  v53 = CGRectGetMinX(v75);
  v76.origin.x = v44;
  v76.origin.y = v46;
  v76.size.width = v48;
  v76.size.height = v50;
  v54 = CGRectGetMinY(v76);
  v77.origin.x = v44;
  v77.origin.y = v46;
  v77.size.width = v48;
  v77.size.height = v50;
  [(BSUIEmojiLabelView *)self->_deviceNameView setFrame:v53, v54, CGRectGetWidth(v77), v52];
}

- (void)setDeviceName:(id)name
{
  objc_storeStrong(&self->_deviceName, name);
  nameCopy = name;
  [(BSUIEmojiLabelView *)self->_deviceNameView setText:nameCopy];

  [(MRUActivityMirroringView *)self setNeedsLayout];
}

- (void)setDeviceImage:(id)image
{
  objc_storeStrong(&self->_deviceImage, image);
  imageCopy = image;
  [(UIImageView *)self->_deviceImageView setImage:imageCopy];

  [(MRUActivityMirroringView *)self setNeedsLayout];
}

- (void)setState:(id)state
{
  objc_storeStrong(&self->_state, state);
  stateCopy = state;
  [(CCUICAPackageView *)self->_packageView setStateName:stateCopy];
}

- (double)preferredHeightForBottomSafeArea
{
  [(UILabel *)self->_headerLabel mr_tightBoundingRectOfFirstLine];
  v3 = 17.0 + 14.0 - CGRectGetMinY(v10);
  [(UILabel *)self->_headerLabel sizeThatFits:1.79769313e308, 1.79769313e308];
  v5 = v3 + v4;
  [(BSUIEmojiLabelView *)self->_deviceNameView sizeThatFits:1.79769313e308, 1.79769313e308];
  v7 = v5 + v6;
  [(UIButton *)self->_button sizeThatFits:1.79769313e308, 1.79769313e308];
  return v7 + v8;
}

- (void)updateContentSizeCategory
{
  v3 = MEMORY[0x1E69DB878];
  traitCollection = [(UILabel *)self->_headerLabel traitCollection];
  v5 = [v3 sbui_systemAperturePreferredFontForTextStyle:0 compatibleWithTraitCollection:traitCollection];
  [(UILabel *)self->_headerLabel setFont:v5];

  v6 = MEMORY[0x1E69DB878];
  traitCollection2 = [(BSUIEmojiLabelView *)self->_deviceNameView traitCollection];
  v7 = [v6 sbui_systemAperturePreferredFontForTextStyle:4 compatibleWithTraitCollection:traitCollection2];
  [(BSUIEmojiLabelView *)self->_deviceNameView setFont:v7];
}

- (void)updateVisibilty
{
  if ([(MRUActivityMirroringView *)self SBUISA_layoutMode]== 4)
  {
    p_button = &self->_button;
    button = self->_button;
    v14 = *(MEMORY[0x1E695EFD0] + 16);
    *&v19.a = *MEMORY[0x1E695EFD0];
    v15 = *&v19.a;
    *&v19.c = v14;
    *&v19.tx = *(MEMORY[0x1E695EFD0] + 32);
    v13 = *&v19.tx;
    [(UIButton *)button setTransform:&v19];
    p_headerLabel = &self->_headerLabel;
    headerLabel = self->_headerLabel;
    *&v19.a = v15;
    *&v19.c = v14;
    *&v19.tx = v13;
    [(UILabel *)headerLabel setTransform:&v19];
    p_deviceNameView = &self->_deviceNameView;
    v8 = *p_deviceNameView;
    *&v19.a = v15;
    *&v19.c = v14;
    *&v19.tx = v13;
    [v8 setTransform:&v19];
    v9 = 1.0;
  }

  else
  {
    CGAffineTransformMakeScale(&v18, 0.5, 0.5);
    p_button = &self->_button;
    v10 = self->_button;
    v19 = v18;
    [(UIButton *)v10 setTransform:&v19];
    CGAffineTransformMakeScale(&v17, 0.5, 0.5);
    p_headerLabel = &self->_headerLabel;
    v11 = self->_headerLabel;
    v19 = v17;
    [(UILabel *)v11 setTransform:&v19];
    CGAffineTransformMakeScale(&v16, 0.5, 0.5);
    p_deviceNameView = &self->_deviceNameView;
    v12 = *p_deviceNameView;
    v19 = v16;
    [v12 setTransform:&v19];
    v9 = 0.0;
  }

  [(UIButton *)*p_button setAlpha:v9];
  [(UILabel *)*p_headerLabel setAlpha:v9];
  [*p_deviceNameView setAlpha:v9];
}

- (void)updatePackageScale
{
  sBUISA_layoutMode = [(MRUActivityMirroringView *)self SBUISA_layoutMode];
  v4 = 1.66666667;
  if (sBUISA_layoutMode != 4)
  {
    v4 = 1.0;
  }

  packageView = self->_packageView;

  [(CCUICAPackageView *)packageView setScale:v4];
}

- (void)updateDeviceSymbolConfiguration
{
  if ([(MRUActivityMirroringView *)self SBUISA_layoutMode]== 4)
  {
    v3 = 34.0;
    v4 = 4;
  }

  else
  {
    v3 = 15.0;
    v4 = 5;
  }

  v9 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:v4 weight:2 scale:v3];
  v5 = MEMORY[0x1E69DCAD8];
  systemGray2Color = [MEMORY[0x1E69DC888] systemGray2Color];
  v7 = [v5 configurationWithHierarchicalColor:systemGray2Color];
  v8 = [v9 configurationByApplyingConfiguration:v7];
  [(UIImageView *)self->_deviceImageView setSymbolConfiguration:v8];
}

@end