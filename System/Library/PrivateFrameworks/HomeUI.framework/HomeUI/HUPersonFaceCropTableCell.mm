@interface HUPersonFaceCropTableCell
- (HUPersonFaceCropTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupConstraints;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUPersonFaceCropTableCell

- (HUPersonFaceCropTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v15.receiver = self;
  v15.super_class = HUPersonFaceCropTableCell;
  v4 = [(HUPersonFaceCropTableCell *)&v15 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    [(HUPersonFaceCropTableCell *)v4 setFaceCropView:v5];

    faceCropView = [(HUPersonFaceCropTableCell *)v4 faceCropView];
    [faceCropView setContentMode:1];

    contentView = [(HUPersonFaceCropTableCell *)v4 contentView];
    faceCropView2 = [(HUPersonFaceCropTableCell *)v4 faceCropView];
    [contentView addSubview:faceCropView2];

    v9 = objc_alloc(MEMORY[0x277D180C0]);
    imageView = [(HUPersonFaceCropTableCell *)v4 imageView];
    [imageView frame];
    v11 = [v9 initWithFrame:?];

    blackColor = [MEMORY[0x277D75348] blackColor];
    [v11 setBackgroundColor:blackColor];

    faceCropView3 = [(HUPersonFaceCropTableCell *)v4 faceCropView];
    [faceCropView3 setMaskView:v11];

    [(HUPersonFaceCropTableCell *)v4 _setupConstraints];
  }

  return v4;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HUPersonFaceCropTableCell;
  [(HUPersonFaceCropTableCell *)&v4 prepareForReuse];
  faceCropView = [(HUPersonFaceCropTableCell *)self faceCropView];
  [faceCropView setImage:0];

  [(HUPersonFaceCropTableCell *)self setItem:0];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = HUPersonFaceCropTableCell;
  [(HUPersonFaceCropTableCell *)&v14 layoutSubviews];
  faceCropView = [(HUPersonFaceCropTableCell *)self faceCropView];
  [faceCropView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  faceCropView2 = [(HUPersonFaceCropTableCell *)self faceCropView];
  maskView = [faceCropView2 maskView];
  [maskView setFrame:{v5, v7, v9, v11}];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  item = [(HUPersonFaceCropTableCell *)self item];
  latestResults = [item latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13CF0]];
  [(HUPersonFaceCropTableCell *)self setFaceImage:v6];

  faceImage = [(HUPersonFaceCropTableCell *)self faceImage];
  faceCropView = [(HUPersonFaceCropTableCell *)self faceCropView];
  [faceCropView setImage:faceImage];

  faceCropView2 = [(HUPersonFaceCropTableCell *)self faceCropView];
  [faceCropView2 sizeToFit];
}

- (void)_setupConstraints
{
  constraints = [(HUPersonFaceCropTableCell *)self constraints];

  if (!constraints)
  {
    faceCropView = [(HUPersonFaceCropTableCell *)self faceCropView];
    [faceCropView setTranslatesAutoresizingMaskIntoConstraints:0];

    array = [MEMORY[0x277CBEB18] array];
    faceCropView2 = [(HUPersonFaceCropTableCell *)self faceCropView];
    centerXAnchor = [faceCropView2 centerXAnchor];
    layoutMarginsGuide = [(HUPersonFaceCropTableCell *)self layoutMarginsGuide];
    centerXAnchor2 = [layoutMarginsGuide centerXAnchor];
    v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [array addObject:v9];

    faceCropView3 = [(HUPersonFaceCropTableCell *)self faceCropView];
    centerYAnchor = [faceCropView3 centerYAnchor];
    layoutMarginsGuide2 = [(HUPersonFaceCropTableCell *)self layoutMarginsGuide];
    centerYAnchor2 = [layoutMarginsGuide2 centerYAnchor];
    v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v14];

    faceCropView4 = [(HUPersonFaceCropTableCell *)self faceCropView];
    topAnchor = [faceCropView4 topAnchor];
    contentView = [(HUPersonFaceCropTableCell *)self contentView];
    topAnchor2 = [contentView topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
    [array addObject:v19];

    faceCropView5 = [(HUPersonFaceCropTableCell *)self faceCropView];
    bottomAnchor = [faceCropView5 bottomAnchor];
    contentView2 = [(HUPersonFaceCropTableCell *)self contentView];
    bottomAnchor2 = [contentView2 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-20.0];
    [array addObject:v24];

    faceCropView6 = [(HUPersonFaceCropTableCell *)self faceCropView];
    heightAnchor = [faceCropView6 heightAnchor];
    faceCropView7 = [(HUPersonFaceCropTableCell *)self faceCropView];
    widthAnchor = [faceCropView7 widthAnchor];
    v29 = [heightAnchor constraintEqualToAnchor:widthAnchor];
    [array addObject:v29];

    faceCropView8 = [(HUPersonFaceCropTableCell *)self faceCropView];
    heightAnchor2 = [faceCropView8 heightAnchor];
    v32 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:30.0];
    [array addObject:v32];

    faceCropView9 = [(HUPersonFaceCropTableCell *)self faceCropView];
    heightAnchor3 = [faceCropView9 heightAnchor];
    v35 = [heightAnchor3 constraintLessThanOrEqualToConstant:256.0];
    [array addObject:v35];

    [(HUPersonFaceCropTableCell *)self setConstraints:array];
    v36 = MEMORY[0x277CCAAD0];
    constraints2 = [(HUPersonFaceCropTableCell *)self constraints];
    [v36 activateConstraints:constraints2];
  }
}

@end