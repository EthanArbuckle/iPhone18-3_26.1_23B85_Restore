@interface HUMosaicCameraErrorView
- (BOOL)visualEffectViewHidden;
- (HUMosaicCameraErrorView)initWithFrame:(CGRect)a3;
- (NSString)descriptionText;
- (NSString)titleText;
- (void)layoutSubviews;
- (void)setDescriptionText:(id)a3;
- (void)setTitleText:(id)a3;
- (void)setVisualEffectViewHidden:(BOOL)a3;
@end

@implementation HUMosaicCameraErrorView

- (HUMosaicCameraErrorView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v65[11] = *MEMORY[0x277D85DE8];
  v64.receiver = self;
  v64.super_class = HUMosaicCameraErrorView;
  v5 = [(HUMosaicCameraErrorView *)&v64 initWithFrame:a3.origin.x, a3.origin.y];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
    visualEffectView = v5->_visualEffectView;
    v5->_visualEffectView = v6;

    v8 = [MEMORY[0x277D75D58] hu_gridCellBackgroundOffEffects];
    [(UIVisualEffectView *)v5->_visualEffectView setBackgroundEffects:v8];

    [(UIVisualEffectView *)v5->_visualEffectView _setGroupName:@"HUMosiacCameraCell-VisualEffect"];
    [(UIVisualEffectView *)v5->_visualEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUMosaicCameraErrorView *)v5 addSubview:v5->_visualEffectView];
    v9 = [MEMORY[0x277D755B8] hu_cameraErrorImage];
    v63 = [v9 imageWithRenderingMode:2];

    v10 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v63];
    imageView = v5->_imageView;
    v5->_imageView = v10;

    [(UIImageView *)v5->_imageView setAlpha:0.6];
    [(UIImageView *)v5->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUMosaicCameraErrorView *)v5 addSubview:v5->_imageView];
    v12 = objc_alloc_init(MEMORY[0x277D75A68]);
    labelStackView = v5->_labelStackView;
    v5->_labelStackView = v12;

    [(UIStackView *)v5->_labelStackView setAxis:1];
    [(UIStackView *)v5->_labelStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUMosaicCameraErrorView *)v5 addSubview:v5->_labelStackView];
    v14 = HUViewSizeSubclassForViewSize(width, height);
    v15 = [HUMosaicCameraCellLayoutOptions defaultOptionsForCellSizeSubclass:HUCellSizeSubclassForViewSizeSubclass(v14) viewSizeSubclass:v14];
    layoutOptions = v5->_layoutOptions;
    v5->_layoutOptions = v15;

    v17 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v17;

    v19 = [(HUGridCellLayoutOptions *)v5->_layoutOptions font];
    [(UILabel *)v5->_titleLabel setFont:v19];

    v20 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v5->_titleLabel setColor:v20];

    [(UILabel *)v5->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UIStackView *)v5->_labelStackView addArrangedSubview:v5->_titleLabel];
    v21 = objc_alloc_init(MEMORY[0x277D756B8]);
    descriptionLabel = v5->_descriptionLabel;
    v5->_descriptionLabel = v21;

    v23 = [(HUMosaicCameraCellLayoutOptions *)v5->_layoutOptions secondaryLabelFont];
    [(UILabel *)v5->_descriptionLabel setFont:v23];

    v24 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.6];
    [(UILabel *)v5->_descriptionLabel setColor:v24];

    [(UILabel *)v5->_descriptionLabel setAdjustsFontForContentSizeCategory:1];
    [(UIStackView *)v5->_labelStackView addArrangedSubview:v5->_descriptionLabel];
    v62 = [(UIVisualEffectView *)v5->_visualEffectView centerXAnchor];
    v61 = [(HUMosaicCameraErrorView *)v5 centerXAnchor];
    v60 = [v62 constraintEqualToAnchor:v61];
    v65[0] = v60;
    v59 = [(UIVisualEffectView *)v5->_visualEffectView centerYAnchor];
    v58 = [(HUMosaicCameraErrorView *)v5 centerYAnchor];
    v57 = [v59 constraintEqualToAnchor:v58];
    v65[1] = v57;
    v56 = [(UIVisualEffectView *)v5->_visualEffectView widthAnchor];
    v55 = [(HUMosaicCameraErrorView *)v5 widthAnchor];
    v54 = [v56 constraintEqualToAnchor:v55];
    v65[2] = v54;
    v53 = [(UIVisualEffectView *)v5->_visualEffectView heightAnchor];
    v52 = [(HUMosaicCameraErrorView *)v5 heightAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v65[3] = v51;
    v50 = [(UIImageView *)v5->_imageView heightAnchor];
    v49 = [(HUMosaicCameraErrorView *)v5 heightAnchor];
    v48 = [v50 constraintEqualToAnchor:v49 multiplier:0.3];
    v65[4] = v48;
    v47 = [(UIImageView *)v5->_imageView widthAnchor];
    v46 = [(UIImageView *)v5->_imageView heightAnchor];
    v45 = [v47 constraintEqualToAnchor:v46 multiplier:1.22];
    v65[5] = v45;
    v44 = [(UIImageView *)v5->_imageView centerXAnchor];
    v43 = [(HUMosaicCameraErrorView *)v5 centerXAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v65[6] = v42;
    v41 = [(UIImageView *)v5->_imageView centerYAnchor];
    v40 = [(HUMosaicCameraErrorView *)v5 centerYAnchor];
    [(HUMosaicCameraCellLayoutOptions *)v5->_layoutOptions descriptionInset];
    v38 = [v41 constraintEqualToAnchor:v40 constant:-v25];
    v65[7] = v38;
    v26 = [(UIStackView *)v5->_labelStackView bottomAnchor];
    v27 = [(HUMosaicCameraErrorView *)v5 bottomAnchor];
    [(HUMosaicCameraCellLayoutOptions *)v5->_layoutOptions descriptionInset];
    v29 = [v26 constraintEqualToAnchor:v27 constant:-v28];
    v65[8] = v29;
    v30 = [(UIStackView *)v5->_labelStackView leadingAnchor];
    v31 = [(HUMosaicCameraErrorView *)v5 leadingAnchor];
    [(HUMosaicCameraCellLayoutOptions *)v5->_layoutOptions descriptionInset];
    v32 = [v30 constraintEqualToAnchor:v31 constant:?];
    v65[9] = v32;
    v33 = [(UIStackView *)v5->_labelStackView trailingAnchor];
    v34 = [(HUMosaicCameraErrorView *)v5 trailingAnchor];
    [(HUMosaicCameraCellLayoutOptions *)v5->_layoutOptions descriptionInset];
    v36 = [v33 constraintEqualToAnchor:v34 constant:-v35];
    v65[10] = v36;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:11];

    [MEMORY[0x277CCAAD0] activateConstraints:v39];
  }

  return v5;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = HUMosaicCameraErrorView;
  [(HUMosaicCameraErrorView *)&v18 layoutSubviews];
  [(HUMosaicCameraCellLayoutOptions *)self->_layoutOptions descriptionInset];
  v4 = v3;
  v5 = [(HUMosaicCameraErrorView *)self imageView];
  [v5 frame];
  CGRectGetMaxY(v19);
  v6 = [(HUMosaicCameraErrorView *)self labelStackView];
  [v6 frame];
  v7 = NACGFloatGreaterThanOrEqualToFloat();

  if (v7)
  {
    [(HUMosaicCameraErrorView *)self bounds];
    v9 = v8 * 0.3;
    v10 = [(HUMosaicCameraErrorView *)self labelStackView];
    [v10 frame];
    v12 = v11 + v4 * -2.0;

    if (v9 >= v12)
    {
      v9 = v12;
    }

    v13 = [(HUMosaicCameraErrorView *)self labelStackView];
    [v13 frame];
    v15 = (v14 - v9) * 0.5;

    if ([(HUMosaicCameraErrorView *)self effectiveUserInterfaceLayoutDirection]== 1)
    {
      [(HUMosaicCameraErrorView *)self bounds];
      v4 = v16 - v9 * 1.22 - v4;
    }

    v17 = [(HUMosaicCameraErrorView *)self imageView];
    [v17 setFrame:{v4, v15, v9 * 1.22, v9}];
  }
}

- (NSString)titleText
{
  v2 = [(HUMosaicCameraErrorView *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTitleText:(id)a3
{
  v4 = a3;
  v5 = [(HUMosaicCameraErrorView *)self titleLabel];
  [v5 setText:v4];

  v6 = [(HUMosaicCameraErrorView *)self titleLabel];
  [v6 setHidden:v4 == 0];
}

- (NSString)descriptionText
{
  v2 = [(HUMosaicCameraErrorView *)self descriptionLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setDescriptionText:(id)a3
{
  v4 = a3;
  v5 = [(HUMosaicCameraErrorView *)self descriptionLabel];
  [v5 setText:v4];

  v6 = [(HUMosaicCameraErrorView *)self descriptionLabel];
  [v6 setHidden:v4 == 0];
}

- (void)setVisualEffectViewHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUMosaicCameraErrorView *)self visualEffectView];
  [v4 setHidden:v3];
}

- (BOOL)visualEffectViewHidden
{
  v2 = [(HUMosaicCameraErrorView *)self visualEffectView];
  v3 = [v2 isHidden];

  return v3;
}

@end