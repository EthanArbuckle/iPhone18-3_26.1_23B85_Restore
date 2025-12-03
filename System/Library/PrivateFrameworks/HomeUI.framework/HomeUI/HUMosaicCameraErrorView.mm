@interface HUMosaicCameraErrorView
- (BOOL)visualEffectViewHidden;
- (HUMosaicCameraErrorView)initWithFrame:(CGRect)frame;
- (NSString)descriptionText;
- (NSString)titleText;
- (void)layoutSubviews;
- (void)setDescriptionText:(id)text;
- (void)setTitleText:(id)text;
- (void)setVisualEffectViewHidden:(BOOL)hidden;
@end

@implementation HUMosaicCameraErrorView

- (HUMosaicCameraErrorView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v65[11] = *MEMORY[0x277D85DE8];
  v64.receiver = self;
  v64.super_class = HUMosaicCameraErrorView;
  v5 = [(HUMosaicCameraErrorView *)&v64 initWithFrame:frame.origin.x, frame.origin.y];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
    visualEffectView = v5->_visualEffectView;
    v5->_visualEffectView = v6;

    hu_gridCellBackgroundOffEffects = [MEMORY[0x277D75D58] hu_gridCellBackgroundOffEffects];
    [(UIVisualEffectView *)v5->_visualEffectView setBackgroundEffects:hu_gridCellBackgroundOffEffects];

    [(UIVisualEffectView *)v5->_visualEffectView _setGroupName:@"HUMosiacCameraCell-VisualEffect"];
    [(UIVisualEffectView *)v5->_visualEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUMosaicCameraErrorView *)v5 addSubview:v5->_visualEffectView];
    hu_cameraErrorImage = [MEMORY[0x277D755B8] hu_cameraErrorImage];
    v63 = [hu_cameraErrorImage imageWithRenderingMode:2];

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

    font = [(HUGridCellLayoutOptions *)v5->_layoutOptions font];
    [(UILabel *)v5->_titleLabel setFont:font];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v5->_titleLabel setColor:whiteColor];

    [(UILabel *)v5->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UIStackView *)v5->_labelStackView addArrangedSubview:v5->_titleLabel];
    v21 = objc_alloc_init(MEMORY[0x277D756B8]);
    descriptionLabel = v5->_descriptionLabel;
    v5->_descriptionLabel = v21;

    secondaryLabelFont = [(HUMosaicCameraCellLayoutOptions *)v5->_layoutOptions secondaryLabelFont];
    [(UILabel *)v5->_descriptionLabel setFont:secondaryLabelFont];

    v24 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.6];
    [(UILabel *)v5->_descriptionLabel setColor:v24];

    [(UILabel *)v5->_descriptionLabel setAdjustsFontForContentSizeCategory:1];
    [(UIStackView *)v5->_labelStackView addArrangedSubview:v5->_descriptionLabel];
    centerXAnchor = [(UIVisualEffectView *)v5->_visualEffectView centerXAnchor];
    centerXAnchor2 = [(HUMosaicCameraErrorView *)v5 centerXAnchor];
    v60 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v65[0] = v60;
    centerYAnchor = [(UIVisualEffectView *)v5->_visualEffectView centerYAnchor];
    centerYAnchor2 = [(HUMosaicCameraErrorView *)v5 centerYAnchor];
    v57 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v65[1] = v57;
    widthAnchor = [(UIVisualEffectView *)v5->_visualEffectView widthAnchor];
    widthAnchor2 = [(HUMosaicCameraErrorView *)v5 widthAnchor];
    v54 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v65[2] = v54;
    heightAnchor = [(UIVisualEffectView *)v5->_visualEffectView heightAnchor];
    heightAnchor2 = [(HUMosaicCameraErrorView *)v5 heightAnchor];
    v51 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v65[3] = v51;
    heightAnchor3 = [(UIImageView *)v5->_imageView heightAnchor];
    heightAnchor4 = [(HUMosaicCameraErrorView *)v5 heightAnchor];
    v48 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4 multiplier:0.3];
    v65[4] = v48;
    widthAnchor3 = [(UIImageView *)v5->_imageView widthAnchor];
    heightAnchor5 = [(UIImageView *)v5->_imageView heightAnchor];
    v45 = [widthAnchor3 constraintEqualToAnchor:heightAnchor5 multiplier:1.22];
    v65[5] = v45;
    centerXAnchor3 = [(UIImageView *)v5->_imageView centerXAnchor];
    centerXAnchor4 = [(HUMosaicCameraErrorView *)v5 centerXAnchor];
    v42 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v65[6] = v42;
    centerYAnchor3 = [(UIImageView *)v5->_imageView centerYAnchor];
    centerYAnchor4 = [(HUMosaicCameraErrorView *)v5 centerYAnchor];
    [(HUMosaicCameraCellLayoutOptions *)v5->_layoutOptions descriptionInset];
    v38 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4 constant:-v25];
    v65[7] = v38;
    bottomAnchor = [(UIStackView *)v5->_labelStackView bottomAnchor];
    bottomAnchor2 = [(HUMosaicCameraErrorView *)v5 bottomAnchor];
    [(HUMosaicCameraCellLayoutOptions *)v5->_layoutOptions descriptionInset];
    v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v28];
    v65[8] = v29;
    leadingAnchor = [(UIStackView *)v5->_labelStackView leadingAnchor];
    leadingAnchor2 = [(HUMosaicCameraErrorView *)v5 leadingAnchor];
    [(HUMosaicCameraCellLayoutOptions *)v5->_layoutOptions descriptionInset];
    v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    v65[9] = v32;
    trailingAnchor = [(UIStackView *)v5->_labelStackView trailingAnchor];
    trailingAnchor2 = [(HUMosaicCameraErrorView *)v5 trailingAnchor];
    [(HUMosaicCameraCellLayoutOptions *)v5->_layoutOptions descriptionInset];
    v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v35];
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
  imageView = [(HUMosaicCameraErrorView *)self imageView];
  [imageView frame];
  CGRectGetMaxY(v19);
  labelStackView = [(HUMosaicCameraErrorView *)self labelStackView];
  [labelStackView frame];
  v7 = NACGFloatGreaterThanOrEqualToFloat();

  if (v7)
  {
    [(HUMosaicCameraErrorView *)self bounds];
    v9 = v8 * 0.3;
    labelStackView2 = [(HUMosaicCameraErrorView *)self labelStackView];
    [labelStackView2 frame];
    v12 = v11 + v4 * -2.0;

    if (v9 >= v12)
    {
      v9 = v12;
    }

    labelStackView3 = [(HUMosaicCameraErrorView *)self labelStackView];
    [labelStackView3 frame];
    v15 = (v14 - v9) * 0.5;

    if ([(HUMosaicCameraErrorView *)self effectiveUserInterfaceLayoutDirection]== 1)
    {
      [(HUMosaicCameraErrorView *)self bounds];
      v4 = v16 - v9 * 1.22 - v4;
    }

    imageView2 = [(HUMosaicCameraErrorView *)self imageView];
    [imageView2 setFrame:{v4, v15, v9 * 1.22, v9}];
  }
}

- (NSString)titleText
{
  titleLabel = [(HUMosaicCameraErrorView *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  titleLabel = [(HUMosaicCameraErrorView *)self titleLabel];
  [titleLabel setText:textCopy];

  titleLabel2 = [(HUMosaicCameraErrorView *)self titleLabel];
  [titleLabel2 setHidden:textCopy == 0];
}

- (NSString)descriptionText
{
  descriptionLabel = [(HUMosaicCameraErrorView *)self descriptionLabel];
  text = [descriptionLabel text];

  return text;
}

- (void)setDescriptionText:(id)text
{
  textCopy = text;
  descriptionLabel = [(HUMosaicCameraErrorView *)self descriptionLabel];
  [descriptionLabel setText:textCopy];

  descriptionLabel2 = [(HUMosaicCameraErrorView *)self descriptionLabel];
  [descriptionLabel2 setHidden:textCopy == 0];
}

- (void)setVisualEffectViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  visualEffectView = [(HUMosaicCameraErrorView *)self visualEffectView];
  [visualEffectView setHidden:hiddenCopy];
}

- (BOOL)visualEffectViewHidden
{
  visualEffectView = [(HUMosaicCameraErrorView *)self visualEffectView];
  isHidden = [visualEffectView isHidden];

  return isHidden;
}

@end