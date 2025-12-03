@interface LUILogLocatorView
- (LUILogLocatorView)initWithFrame:(CGRect)frame;
- (id)_createButtonWithImageName:(id)name;
- (id)_createElementStackViewWithElements:(id)elements;
- (id)_createScreenshotCollectionView;
- (void)_setup;
- (void)handleOrientationChange:(int64_t)change;
- (void)layoutSubviews;
@end

@implementation LUILogLocatorView

- (LUILogLocatorView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = LUILogLocatorView;
  v3 = [(LUILogLocatorView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(LUILogLocatorView *)v3 _setup];
  }

  return v4;
}

- (void)_setup
{
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  cGColor = [whiteColor CGColor];
  layer = [(LUILogLocatorView *)self layer];
  [layer setBorderColor:cGColor];

  layer2 = [(LUILogLocatorView *)self layer];
  [layer2 setBorderWidth:1.5];

  layer3 = [(LUILogLocatorView *)self layer];
  [layer3 setCornerRadius:5.0];

  v8 = [(LUILogLocatorView *)self _createButtonWithImageName:@"UpArrowIcon"];
  upArrowButton = self->_upArrowButton;
  self->_upArrowButton = v8;

  v10 = [(LUILogLocatorView *)self _createButtonWithImageName:@"DownArrowIcon"];
  downArrowButton = self->_downArrowButton;
  self->_downArrowButton = v10;

  v12 = [(LUILogLocatorView *)self _createButtonWithImageName:@"CameraIcon"];
  screenshotButton = self->_screenshotButton;
  self->_screenshotButton = v12;

  _createScreenshotCollectionView = [(LUILogLocatorView *)self _createScreenshotCollectionView];
  screenshotCollectionView = self->_screenshotCollectionView;
  self->_screenshotCollectionView = _createScreenshotCollectionView;

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
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  delegate = [mEMORY[0x277D75128] delegate];
  window = [delegate window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  [(LUILogLocatorView *)self bounds];
  Width = CGRectGetWidth(v43);
  if ((interfaceOrientation - 1) > 1)
  {
    v29 = Width * 0.5;
    [(LUILogLocatorView *)self bounds];
    v30 = CGRectGetHeight(v51) + -20.0 + -25.0;
    downArrowButton = [(LUILogLocatorView *)self downArrowButton];
    [downArrowButton setCenter:{v29, v30}];

    [(LUILogLocatorView *)self bounds];
    v32 = CGRectGetWidth(v52) * 0.5;
    downArrowButton2 = [(LUILogLocatorView *)self downArrowButton];
    [downArrowButton2 frame];
    v34 = CGRectGetMinY(v53) + -20.0 + -25.0;
    upArrowButton = [(LUILogLocatorView *)self upArrowButton];
    [upArrowButton setCenter:{v32, v34}];

    [(LUILogLocatorView *)self bounds];
    v36 = CGRectGetWidth(v54) * 0.5;
    upArrowButton2 = [(LUILogLocatorView *)self upArrowButton];
    [upArrowButton2 frame];
    v38 = CGRectGetMinY(v55) + -20.0 + -25.0;
    screenshotButton = [(LUILogLocatorView *)self screenshotButton];
    [screenshotButton setCenter:{v36, v38}];

    [(LUILogLocatorView *)self bounds];
    v40 = (CGRectGetWidth(v56) + -130.0) * 0.5;
    screenshotButton2 = [(LUILogLocatorView *)self screenshotButton];
    [screenshotButton2 frame];
    v41 = CGRectGetMinY(v57) + -10.0 + -20.0;
    screenshotCollectionView = [(LUILogLocatorView *)self screenshotCollectionView];
    v24 = screenshotCollectionView;
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
    downArrowButton3 = [(LUILogLocatorView *)self downArrowButton];
    [downArrowButton3 setCenter:{v9, v10}];

    downArrowButton4 = [(LUILogLocatorView *)self downArrowButton];
    [downArrowButton4 frame];
    v13 = CGRectGetMinX(v45) + -20.0 + -25.0;
    [(LUILogLocatorView *)self bounds];
    v14 = CGRectGetHeight(v46) * 0.5;
    upArrowButton3 = [(LUILogLocatorView *)self upArrowButton];
    [upArrowButton3 setCenter:{v13, v14}];

    upArrowButton4 = [(LUILogLocatorView *)self upArrowButton];
    [upArrowButton4 frame];
    v17 = CGRectGetMinX(v47) + -20.0 + -25.0;
    [(LUILogLocatorView *)self bounds];
    v18 = CGRectGetHeight(v48) * 0.5;
    screenshotButton3 = [(LUILogLocatorView *)self screenshotButton];
    [screenshotButton3 setCenter:{v17, v18}];

    [(LUILogLocatorView *)self bounds];
    v20 = (CGRectGetHeight(v49) + -130.0) * 0.5;
    screenshotButton2 = [(LUILogLocatorView *)self screenshotButton];
    [screenshotButton2 frame];
    v22 = CGRectGetMinX(v50) + -10.0 + -20.0;
    screenshotCollectionView = [(LUILogLocatorView *)self screenshotCollectionView];
    v24 = screenshotCollectionView;
    v25 = 130.0;
    v26 = 10.0;
    v27 = v20;
    v28 = v22;
  }

  [screenshotCollectionView setFrame:{v26, v27, v28, v25}];

  [(LUILogLocatorView *)self handleOrientationChange:interfaceOrientation];
}

- (void)handleOrientationChange:(int64_t)change
{
  v4 = (change - 1) < 2;
  v5 = objc_opt_new();
  [v5 setScrollDirection:v4];
  [(UICollectionView *)self->_screenshotCollectionView setCollectionViewLayout:v5];
}

- (id)_createElementStackViewWithElements:(id)elements
{
  v3 = MEMORY[0x277D75A68];
  elementsCopy = elements;
  v5 = [[v3 alloc] initWithArrangedSubviews:elementsCopy];

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
  grayColor = [MEMORY[0x277D75348] grayColor];
  v6 = [grayColor colorWithAlphaComponent:0.5];
  [v4 setBackgroundColor:v6];

  [v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"screenshotCell"];

  return v4;
}

- (id)_createButtonWithImageName:(id)name
{
  v3 = MEMORY[0x277D75220];
  nameCopy = name;
  v5 = [[v3 alloc] initWithFrame:{0.0, 0.0, 50.0, 50.0}];
  v6 = [MEMORY[0x277D755B8] imageNamed:nameCopy];

  v7 = [v6 imageWithRenderingMode:2];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  imageView = [v5 imageView];
  [imageView setTintColor:whiteColor];

  [v5 setImage:v7 forState:0];
  widthAnchor = [v5 widthAnchor];
  v11 = [widthAnchor constraintEqualToConstant:50.0];
  [v11 setActive:1];

  heightAnchor = [v5 heightAnchor];
  v13 = [heightAnchor constraintEqualToConstant:50.0];
  [v13 setActive:1];

  return v5;
}

@end