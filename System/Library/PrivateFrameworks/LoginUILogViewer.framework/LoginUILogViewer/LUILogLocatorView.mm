@interface LUILogLocatorView
- (LUILogLocatorView)initWithFrame:(CGRect)a3;
- (id)_createButtonWithImageName:(id)a3;
- (id)_createElementStackViewWithElements:(id)a3;
- (id)_createScreenshotCollectionView;
- (void)_setup;
- (void)handleOrientationChange:(int64_t)a3;
- (void)layoutSubviews;
@end

@implementation LUILogLocatorView

- (LUILogLocatorView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = LUILogLocatorView;
  v3 = [(LUILogLocatorView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(LUILogLocatorView *)v3 _setup];
  }

  return v4;
}

- (void)_setup
{
  v3 = [MEMORY[0x277D75348] whiteColor];
  v4 = [v3 CGColor];
  v5 = [(LUILogLocatorView *)self layer];
  [v5 setBorderColor:v4];

  v6 = [(LUILogLocatorView *)self layer];
  [v6 setBorderWidth:1.5];

  v7 = [(LUILogLocatorView *)self layer];
  [v7 setCornerRadius:5.0];

  v8 = [(LUILogLocatorView *)self _createButtonWithImageName:@"UpArrowIcon"];
  upArrowButton = self->_upArrowButton;
  self->_upArrowButton = v8;

  v10 = [(LUILogLocatorView *)self _createButtonWithImageName:@"DownArrowIcon"];
  downArrowButton = self->_downArrowButton;
  self->_downArrowButton = v10;

  v12 = [(LUILogLocatorView *)self _createButtonWithImageName:@"CameraIcon"];
  screenshotButton = self->_screenshotButton;
  self->_screenshotButton = v12;

  v14 = [(LUILogLocatorView *)self _createScreenshotCollectionView];
  screenshotCollectionView = self->_screenshotCollectionView;
  self->_screenshotCollectionView = v14;

  [(LUILogLocatorView *)self addSubview:self->_screenshotCollectionView];
  [(LUILogLocatorView *)self addSubview:self->_upArrowButton];
  [(LUILogLocatorView *)self addSubview:self->_downArrowButton];
  v16 = self->_screenshotButton;

  [(LUILogLocatorView *)self addSubview:v16];
}

- (void)layoutSubviews
{
  v42.receiver = self;
  v42.super_class = LUILogLocatorView;
  [(LUILogLocatorView *)&v42 layoutSubviews];
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 delegate];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  v7 = [v6 interfaceOrientation];

  [(LUILogLocatorView *)self bounds];
  Width = CGRectGetWidth(v43);
  if ((v7 - 1) > 1)
  {
    v29 = Width * 0.5;
    [(LUILogLocatorView *)self bounds];
    v30 = CGRectGetHeight(v51) + -20.0 + -25.0;
    v31 = [(LUILogLocatorView *)self downArrowButton];
    [v31 setCenter:{v29, v30}];

    [(LUILogLocatorView *)self bounds];
    v32 = CGRectGetWidth(v52) * 0.5;
    v33 = [(LUILogLocatorView *)self downArrowButton];
    [v33 frame];
    v34 = CGRectGetMinY(v53) + -20.0 + -25.0;
    v35 = [(LUILogLocatorView *)self upArrowButton];
    [v35 setCenter:{v32, v34}];

    [(LUILogLocatorView *)self bounds];
    v36 = CGRectGetWidth(v54) * 0.5;
    v37 = [(LUILogLocatorView *)self upArrowButton];
    [v37 frame];
    v38 = CGRectGetMinY(v55) + -20.0 + -25.0;
    v39 = [(LUILogLocatorView *)self screenshotButton];
    [v39 setCenter:{v36, v38}];

    [(LUILogLocatorView *)self bounds];
    v40 = (CGRectGetWidth(v56) + -130.0) * 0.5;
    v21 = [(LUILogLocatorView *)self screenshotButton];
    [v21 frame];
    v41 = CGRectGetMinY(v57) + -10.0 + -20.0;
    v23 = [(LUILogLocatorView *)self screenshotCollectionView];
    v24 = v23;
    v28 = 130.0;
    v27 = 10.0;
    v26 = v40;
    v25 = v41;
  }

  else
  {
    v9 = Width + -20.0 + -25.0;
    [(LUILogLocatorView *)self bounds];
    v10 = CGRectGetHeight(v44) * 0.5;
    v11 = [(LUILogLocatorView *)self downArrowButton];
    [v11 setCenter:{v9, v10}];

    v12 = [(LUILogLocatorView *)self downArrowButton];
    [v12 frame];
    v13 = CGRectGetMinX(v45) + -20.0 + -25.0;
    [(LUILogLocatorView *)self bounds];
    v14 = CGRectGetHeight(v46) * 0.5;
    v15 = [(LUILogLocatorView *)self upArrowButton];
    [v15 setCenter:{v13, v14}];

    v16 = [(LUILogLocatorView *)self upArrowButton];
    [v16 frame];
    v17 = CGRectGetMinX(v47) + -20.0 + -25.0;
    [(LUILogLocatorView *)self bounds];
    v18 = CGRectGetHeight(v48) * 0.5;
    v19 = [(LUILogLocatorView *)self screenshotButton];
    [v19 setCenter:{v17, v18}];

    [(LUILogLocatorView *)self bounds];
    v20 = (CGRectGetHeight(v49) + -130.0) * 0.5;
    v21 = [(LUILogLocatorView *)self screenshotButton];
    [v21 frame];
    v22 = CGRectGetMinX(v50) + -10.0 + -20.0;
    v23 = [(LUILogLocatorView *)self screenshotCollectionView];
    v24 = v23;
    v25 = 130.0;
    v26 = 10.0;
    v27 = v20;
    v28 = v22;
  }

  [v23 setFrame:{v26, v27, v28, v25}];

  [(LUILogLocatorView *)self handleOrientationChange:v7];
}

- (void)handleOrientationChange:(int64_t)a3
{
  v4 = (a3 - 1) < 2;
  v5 = objc_opt_new();
  [v5 setScrollDirection:v4];
  [(UICollectionView *)self->_screenshotCollectionView setCollectionViewLayout:v5];
}

- (id)_createElementStackViewWithElements:(id)a3
{
  v3 = MEMORY[0x277D75A68];
  v4 = a3;
  v5 = [[v3 alloc] initWithArrangedSubviews:v4];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setAxis:0];
  [v5 setDistribution:3];
  [v5 setAlignment:3];

  return v5;
}

- (id)_createScreenshotCollectionView
{
  v2 = objc_opt_new();
  v3 = objc_alloc(MEMORY[0x277D752A0]);
  v4 = [v3 initWithFrame:v2 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v5 = [MEMORY[0x277D75348] grayColor];
  v6 = [v5 colorWithAlphaComponent:0.5];
  [v4 setBackgroundColor:v6];

  [v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"screenshotCell"];

  return v4;
}

- (id)_createButtonWithImageName:(id)a3
{
  v3 = MEMORY[0x277D75220];
  v4 = a3;
  v5 = [[v3 alloc] initWithFrame:{0.0, 0.0, 50.0, 50.0}];
  v6 = [MEMORY[0x277D755B8] imageNamed:v4];

  v7 = [v6 imageWithRenderingMode:2];

  v8 = [MEMORY[0x277D75348] whiteColor];
  v9 = [v5 imageView];
  [v9 setTintColor:v8];

  [v5 setImage:v7 forState:0];
  v10 = [v5 widthAnchor];
  v11 = [v10 constraintEqualToConstant:50.0];
  [v11 setActive:1];

  v12 = [v5 heightAnchor];
  v13 = [v12 constraintEqualToConstant:50.0];
  [v13 setActive:1];

  return v5;
}

@end