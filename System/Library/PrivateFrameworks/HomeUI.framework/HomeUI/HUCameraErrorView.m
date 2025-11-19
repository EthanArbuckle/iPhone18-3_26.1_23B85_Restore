@interface HUCameraErrorView
- (HUCameraErrorView)init;
- (NSString)descriptionText;
- (NSString)titleText;
- (void)setDescriptionText:(id)a3;
- (void)setTitleText:(id)a3;
@end

@implementation HUCameraErrorView

- (HUCameraErrorView)init
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = HUCameraErrorView;
  v2 = [(HUCameraErrorView *)&v21 init];
  v3 = v2;
  if (v2)
  {
    [(HUCameraErrorView *)v2 setAxis:1];
    [(HUCameraErrorView *)v3 setAlignment:3];
    [(HUCameraErrorView *)v3 setSpacing:20.0];
    v4 = [MEMORY[0x277D755B8] hu_cameraErrorImage];
    v5 = [v4 imageWithRenderingMode:2];

    v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v5];
    imageView = v3->_imageView;
    v3->_imageView = v6;

    [(UIImageView *)v3->_imageView setAlpha:0.5];
    v8 = [MEMORY[0x277D75348] systemGrayColor];
    [(UIImageView *)v3->_imageView setTintColor:v8];

    [(UIImageView *)v3->_imageView setContentMode:1];
    v9 = [(UIImageView *)v3->_imageView widthAnchor];
    v10 = [v9 constraintEqualToConstant:61.0];
    v22[0] = v10;
    v11 = [(UIImageView *)v3->_imageView heightAnchor];
    v12 = [v11 constraintEqualToConstant:50.0];
    v22[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];

    [MEMORY[0x277CCAAD0] activateConstraints:v13];
    [(HUCameraErrorView *)v3 addArrangedSubview:v3->_imageView];
    v14 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v14;

    v16 = [MEMORY[0x277D74300] systemFontOfSize:18.0 weight:*MEMORY[0x277D74420]];
    [(UILabel *)v3->_titleLabel setFont:v16];

    [(UILabel *)v3->_titleLabel setNumberOfLines:1];
    [(UILabel *)v3->_titleLabel _setTextColorFollowsTintColor:1];
    v17 = objc_alloc_init(MEMORY[0x277D756B8]);
    descriptionLabel = v3->_descriptionLabel;
    v3->_descriptionLabel = v17;

    v19 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:*MEMORY[0x277D74410]];
    [(UILabel *)v3->_descriptionLabel setFont:v19];

    [(UILabel *)v3->_descriptionLabel setNumberOfLines:3];
    [(UILabel *)v3->_descriptionLabel _setTextColorFollowsTintColor:1];
  }

  return v3;
}

- (NSString)titleText
{
  v2 = [(HUCameraErrorView *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTitleText:(id)a3
{
  v4 = a3;
  v5 = [(HUCameraErrorView *)self titleLabel];
  [v5 setText:v4];

  v6 = [(HUCameraErrorView *)self titleLabel];
  v7 = v6;
  if (v4)
  {
    [(HUCameraErrorView *)self addArrangedSubview:v6];
  }

  else
  {
    [v6 removeFromSuperview];
  }
}

- (NSString)descriptionText
{
  v2 = [(HUCameraErrorView *)self descriptionLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setDescriptionText:(id)a3
{
  v4 = a3;
  v5 = [(HUCameraErrorView *)self descriptionLabel];
  [v5 setText:v4];

  v6 = [(HUCameraErrorView *)self descriptionLabel];
  v7 = v6;
  if (v4)
  {
    [(HUCameraErrorView *)self addArrangedSubview:v6];
  }

  else
  {
    [v6 removeFromSuperview];
  }
}

@end