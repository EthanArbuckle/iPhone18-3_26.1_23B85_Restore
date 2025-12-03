@interface ICPaperStyleCell
- (ICPaperStyleCell)initWithFrame:(CGRect)frame;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)selected;
- (void)setupCell;
- (void)updateColors;
@end

@implementation ICPaperStyleCell

- (ICPaperStyleCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ICPaperStyleCell;
  v3 = [(ICPaperStyleCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICPaperStyleCell *)v3 setupCell];
  }

  return v4;
}

- (void)setupCell
{
  v82 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  [(ICPaperStyleCell *)self setClipsToBounds:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(ICPaperStyleCell *)self setBackgroundColor:clearColor];

  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(ICPaperStyleCell *)self setSelectionView:v4];

  selectionView = [(ICPaperStyleCell *)self selectionView];
  [selectionView setTranslatesAutoresizingMaskIntoConstraints:0];

  selectionView2 = [(ICPaperStyleCell *)self selectionView];
  [(ICPaperStyleCell *)self addSubview:selectionView2];

  selectionView3 = [(ICPaperStyleCell *)self selectionView];
  [selectionView3 setHidden:1];

  ic_isVision = [MEMORY[0x1E69DC938] ic_isVision];
  selectionView4 = [(ICPaperStyleCell *)self selectionView];
  layer = [selectionView4 layer];
  layer3 = layer;
  v12 = MEMORY[0x1E69796E8];
  if (ic_isVision)
  {
    [layer setCornerRadius:23.0];

    v13 = *v12;
    selectionView5 = [(ICPaperStyleCell *)self selectionView];
    layer2 = [selectionView5 layer];
    [layer2 setCornerCurve:v13];

    selectionView4 = [(ICPaperStyleCell *)self selectionView];
    layer3 = [selectionView4 layer];
    [layer3 setBorderWidth:4.0];
  }

  else
  {
    [layer setCornerRadius:6.0];
  }

  leadingAnchor = [(ICPaperStyleCell *)self leadingAnchor];
  selectionView6 = [(ICPaperStyleCell *)self selectionView];
  leadingAnchor2 = [selectionView6 leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v82 addObject:v19];

  trailingAnchor = [(ICPaperStyleCell *)self trailingAnchor];
  selectionView7 = [(ICPaperStyleCell *)self selectionView];
  trailingAnchor2 = [selectionView7 trailingAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v82 addObject:v23];

  topAnchor = [(ICPaperStyleCell *)self topAnchor];
  selectionView8 = [(ICPaperStyleCell *)self selectionView];
  topAnchor2 = [selectionView8 topAnchor];
  v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v82 addObject:v27];

  bottomAnchor = [(ICPaperStyleCell *)self bottomAnchor];
  selectionView9 = [(ICPaperStyleCell *)self selectionView];
  bottomAnchor2 = [selectionView9 bottomAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v82 addObject:v31];

  v32 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(ICPaperStyleCell *)self setImageView:v32];

  imageView = [(ICPaperStyleCell *)self imageView];
  [imageView setContentMode:0];

  imageView2 = [(ICPaperStyleCell *)self imageView];
  [imageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    [MEMORY[0x1E69DC888] ic_noteEditorPreviewColorForceLightContent:1];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  }
  v35 = ;
  imageView3 = [(ICPaperStyleCell *)self imageView];
  [imageView3 setBackgroundColor:v35];

  lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
  imageView4 = [(ICPaperStyleCell *)self imageView];
  [imageView4 setTintColor:lightGrayColor];

  imageView5 = [(ICPaperStyleCell *)self imageView];
  [(ICPaperStyleCell *)self addSubview:imageView5];

  leadingAnchor3 = [(ICPaperStyleCell *)self leadingAnchor];
  imageView6 = [(ICPaperStyleCell *)self imageView];
  leadingAnchor4 = [imageView6 leadingAnchor];
  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    v43 = -7.0;
  }

  else
  {
    v43 = -2.0;
  }

  v44 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v43];
  [v82 addObject:v44];

  topAnchor3 = [(ICPaperStyleCell *)self topAnchor];
  imageView7 = [(ICPaperStyleCell *)self imageView];
  topAnchor4 = [imageView7 topAnchor];
  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    v48 = -7.0;
  }

  else
  {
    v48 = -2.0;
  }

  v49 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:v48];
  [v82 addObject:v49];

  trailingAnchor3 = [(ICPaperStyleCell *)self trailingAnchor];
  imageView8 = [(ICPaperStyleCell *)self imageView];
  trailingAnchor4 = [imageView8 trailingAnchor];
  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    v53 = 7.0;
  }

  else
  {
    v53 = 2.0;
  }

  v54 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:v53];
  [v82 addObject:v54];

  bottomAnchor3 = [(ICPaperStyleCell *)self bottomAnchor];
  imageView9 = [(ICPaperStyleCell *)self imageView];
  bottomAnchor4 = [imageView9 bottomAnchor];
  if ([MEMORY[0x1E69DC938] ic_isVision])
  {
    v58 = 7.0;
  }

  else
  {
    v58 = 2.0;
  }

  v59 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:v58];
  [v82 addObject:v59];

  [MEMORY[0x1E696ACD8] activateConstraints:v82];
  imageView10 = [(ICPaperStyleCell *)self imageView];
  layer4 = [imageView10 layer];
  [layer4 setMasksToBounds:0];

  ic_isVision2 = [MEMORY[0x1E69DC938] ic_isVision];
  imageView11 = [(ICPaperStyleCell *)self imageView];
  layer5 = [imageView11 layer];
  v65 = layer5;
  if (ic_isVision2)
  {
    [layer5 setCornerRadius:16.0];

    v66 = *v12;
    imageView12 = [(ICPaperStyleCell *)self imageView];
    layer6 = [imageView12 layer];
    [layer6 setCornerCurve:v66];
  }

  else
  {
    [layer5 setCornerRadius:4.0];

    v69 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
    cGColor = [v69 CGColor];
    imageView13 = [(ICPaperStyleCell *)self imageView];
    layer7 = [imageView13 layer];
    [layer7 setShadowColor:cGColor];

    imageView14 = [(ICPaperStyleCell *)self imageView];
    layer8 = [imageView14 layer];
    [layer8 setShadowOffset:{0.0, 1.0}];

    imageView15 = [(ICPaperStyleCell *)self imageView];
    layer9 = [imageView15 layer];
    [layer9 setShadowRadius:6.0];

    imageView12 = [(ICPaperStyleCell *)self imageView];
    layer6 = [imageView12 layer];
    LODWORD(v77) = 1022739087;
    [layer6 setShadowOpacity:v77];
  }

  layer10 = [(ICPaperStyleCell *)self layer];
  [layer10 setBorderWidth:0.0];

  clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
  selectionView10 = [(ICPaperStyleCell *)self selectionView];
  layer11 = [selectionView10 layer];
  [layer11 cornerRadius];
  [clearConfiguration setCornerRadius:?];

  [(ICPaperStyleCell *)self setBackgroundConfiguration:clearConfiguration];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = ICPaperStyleCell;
  [(ICPaperStyleCell *)&v5 prepareForReuse];
  selectionView = [(ICPaperStyleCell *)self selectionView];
  [selectionView setHidden:1];

  imageView = [(ICPaperStyleCell *)self imageView];
  [imageView setImage:0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ICPaperStyleCell;
  [(ICPaperStyleCell *)&v3 layoutSubviews];
  [(ICPaperStyleCell *)self updateColors];
}

- (void)updateColors
{
  ic_isVision = [MEMORY[0x1E69DC938] ic_isVision];
  tintColor = [(ICPaperStyleCell *)self tintColor];
  if (ic_isVision)
  {
    cGColor = [tintColor CGColor];
    selectionView = [(ICPaperStyleCell *)self selectionView];
    layer = [selectionView layer];
    [layer setBorderColor:cGColor];
  }

  else
  {
    selectionView = [(ICPaperStyleCell *)self selectionView];
    [selectionView setBackgroundColor:tintColor];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  selectionView = [(ICPaperStyleCell *)self selectionView];
  [selectionView setHidden:!selectedCopy];
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = ICPaperStyleCell;
  accessibilityTraits = [(ICPaperStyleCell *)&v8 accessibilityTraits];
  selectionView = [(ICPaperStyleCell *)self selectionView];
  isHidden = [selectionView isHidden];

  v6 = *MEMORY[0x1E69DDA08];
  if (isHidden)
  {
    v6 = 0;
  }

  return v6 | accessibilityTraits;
}

@end