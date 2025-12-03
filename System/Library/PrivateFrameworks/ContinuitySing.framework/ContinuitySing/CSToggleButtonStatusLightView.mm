@interface CSToggleButtonStatusLightView
- (CSToggleButtonStatusLightView)initWithFrame:(CGRect)frame;
- (void)setOn:(BOOL)on;
@end

@implementation CSToggleButtonStatusLightView

- (CSToggleButtonStatusLightView)initWithFrame:(CGRect)frame
{
  v29.receiver = self;
  v29.super_class = CSToggleButtonStatusLightView;
  v3 = [(CSToggleButtonStatusLightView *)&v29 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [MEMORY[0x277D755B0] imageNamed:@"sing_marker_on" inBundle:v27 withConfiguration:0];
    onImage = v3->_onImage;
    v3->_onImage = v4;

    v6 = [MEMORY[0x277D755B0] imageNamed:@"sing_marker_off" inBundle:v27 withConfiguration:0];
    offImage = v3->_offImage;
    v3->_offImage = v6;

    v8 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v3->_offImage];
    imageView = v3->_imageView;
    v3->_imageView = v8;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CSToggleButtonStatusLightView *)v3 addSubview:v3->_imageView];
    v20 = MEMORY[0x277CCAAD0];
    widthAnchor = [(CSToggleButtonStatusLightView *)v3 widthAnchor];
    v25 = [widthAnchor constraintEqualToConstant:2.0];
    v28[0] = v25;
    heightAnchor = [(CSToggleButtonStatusLightView *)v3 heightAnchor];
    v23 = [heightAnchor constraintEqualToConstant:8.0];
    v28[1] = v23;
    centerXAnchor = [(UIImageView *)v3->_imageView centerXAnchor];
    centerXAnchor2 = [(CSToggleButtonStatusLightView *)v3 centerXAnchor];
    v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v28[2] = v10;
    centerYAnchor = [(UIImageView *)v3->_imageView centerYAnchor];
    centerYAnchor2 = [(CSToggleButtonStatusLightView *)v3 centerYAnchor];
    v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v28[3] = v13;
    widthAnchor2 = [(UIImageView *)v3->_imageView widthAnchor];
    v15 = [widthAnchor2 constraintEqualToConstant:14.0];
    v28[4] = v15;
    heightAnchor2 = [(UIImageView *)v3->_imageView heightAnchor];
    v17 = [heightAnchor2 constraintEqualToConstant:20.0];
    v28[5] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:6];
    [v20 activateConstraints:v18];
  }

  return v3;
}

- (void)setOn:(BOOL)on
{
  if (self->_on != on)
  {
    v8 = v3;
    v9 = v4;
    self->_on = on;
    imageView = self->_imageView;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__CSToggleButtonStatusLightView_setOn___block_invoke;
    v6[3] = &unk_278E0AD50;
    v6[4] = self;
    onCopy = on;
    [MEMORY[0x277D75D18] transitionWithView:imageView duration:5242884 options:v6 animations:0 completion:0.1];
  }
}

uint64_t __39__CSToggleButtonStatusLightView_setOn___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 408);
  if (*(a1 + 40))
  {
    v3 = &OBJC_IVAR___CSToggleButtonStatusLightView__onImage;
  }

  else
  {
    v3 = &OBJC_IVAR___CSToggleButtonStatusLightView__offImage;
  }

  return [*(v1 + 408) setImage:*(v1 + *v3)];
}

@end