@interface CKEffectSelectionCollectionViewCell
- (CKEffectSelectionCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)configureForEffectIsDark:(BOOL)dark;
- (void)layoutSubviews;
- (void)setImage:(id)image;
- (void)setSelected:(BOOL)selected;
- (void)setTitle:(id)title;
@end

@implementation CKEffectSelectionCollectionViewCell

- (CKEffectSelectionCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CKEffectSelectionCollectionViewCell;
  v3 = [(CKEffectSelectionCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKEffectSelectionCollectionViewCell *)v3 _setupSubviews];
    [(CKEffectSelectionCollectionViewCell *)v4 _setupConstraints];
  }

  return v4;
}

- (void)_setupSubviews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(CKEffectSelectionCollectionViewCell *)self setShadowView:v3];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  shadowView = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  [shadowView setBackgroundColor:systemBackgroundColor];

  shadowView2 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  layer = [shadowView2 layer];
  [layer setCornerRadius:12.0];

  v8 = *MEMORY[0x1E69796E8];
  shadowView3 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  layer2 = [shadowView3 layer];
  [layer2 setCornerCurve:v8];

  shadowView4 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  layer3 = [shadowView4 layer];
  [layer3 setShadowRadius:2.0];

  shadowView5 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  layer4 = [shadowView5 layer];
  LODWORD(v15) = 1036831949;
  [layer4 setShadowOpacity:v15];

  shadowView6 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  layer5 = [shadowView6 layer];
  [layer5 setShadowOffset:{0.0, 1.0}];

  v18 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(CKEffectSelectionCollectionViewCell *)self setImageView:v18];

  imageView = [(CKEffectSelectionCollectionViewCell *)self imageView];
  layer6 = [imageView layer];
  [layer6 setCornerRadius:12.0];

  imageView2 = [(CKEffectSelectionCollectionViewCell *)self imageView];
  layer7 = [imageView2 layer];
  [layer7 setCornerCurve:v8];

  imageView3 = [(CKEffectSelectionCollectionViewCell *)self imageView];
  layer8 = [imageView3 layer];
  [layer8 setMasksToBounds:1];

  v25 = objc_alloc_init(MEMORY[0x1E69794A0]);
  [(CKEffectSelectionCollectionViewCell *)self setSelectionLayer:v25];

  selectionLayer = [(CKEffectSelectionCollectionViewCell *)self selectionLayer];
  [selectionLayer setLineWidth:4.0];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  cGColor = [clearColor CGColor];
  selectionLayer2 = [(CKEffectSelectionCollectionViewCell *)self selectionLayer];
  [selectionLayer2 setFillColor:cGColor];

  v30 = +[CKUIBehavior sharedBehaviors];
  theme = [v30 theme];
  appTintColor = [theme appTintColor];
  cGColor2 = [appTintColor CGColor];
  selectionLayer3 = [(CKEffectSelectionCollectionViewCell *)self selectionLayer];
  [selectionLayer3 setStrokeColor:cGColor2];

  v35 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(CKEffectSelectionCollectionViewCell *)self setLabel:v35];

  label = [(CKEffectSelectionCollectionViewCell *)self label];
  v37 = [MEMORY[0x1E69DB878] __ck_preferredFontForStyle:*MEMORY[0x1E69DDCF8]];
  [label setFont:v37];

  label2 = [(CKEffectSelectionCollectionViewCell *)self label];
  [label2 setTextAlignment:1];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  label3 = [(CKEffectSelectionCollectionViewCell *)self label];
  [label3 setTextColor:secondaryLabelColor];

  label4 = [(CKEffectSelectionCollectionViewCell *)self label];
  [label4 setNumberOfLines:0];

  label5 = [(CKEffectSelectionCollectionViewCell *)self label];
  [label5 setLineBreakMode:0];

  v45 = [MEMORY[0x1E69DC730] effectWithStyle:18];
  v43 = [MEMORY[0x1E69DD248] effectForBlurEffect:v45];
  [(CKEffectSelectionCollectionViewCell *)self setTitleVibrancyEffect:v43];
  v44 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v43];
  [(CKEffectSelectionCollectionViewCell *)self setTitleContainerView:v44];
}

- (void)_setupConstraints
{
  v90[16] = *MEMORY[0x1E69E9840];
  shadowView = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  [shadowView setTranslatesAutoresizingMaskIntoConstraints:0];

  imageView = [(CKEffectSelectionCollectionViewCell *)self imageView];
  [imageView setTranslatesAutoresizingMaskIntoConstraints:0];

  label = [(CKEffectSelectionCollectionViewCell *)self label];
  [label setTranslatesAutoresizingMaskIntoConstraints:0];

  titleContainerView = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  [titleContainerView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(CKEffectSelectionCollectionViewCell *)self contentView];
  shadowView2 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  [contentView addSubview:shadowView2];

  contentView2 = [(CKEffectSelectionCollectionViewCell *)self contentView];
  imageView2 = [(CKEffectSelectionCollectionViewCell *)self imageView];
  [contentView2 addSubview:imageView2];

  contentView3 = [(CKEffectSelectionCollectionViewCell *)self contentView];
  titleContainerView2 = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  [contentView3 addSubview:titleContainerView2];

  titleContainerView3 = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  contentView4 = [titleContainerView3 contentView];
  label2 = [(CKEffectSelectionCollectionViewCell *)self label];
  [contentView4 addSubview:label2];

  v59 = MEMORY[0x1E696ACD8];
  imageView3 = [(CKEffectSelectionCollectionViewCell *)self imageView];
  topAnchor = [imageView3 topAnchor];
  contentView5 = [(CKEffectSelectionCollectionViewCell *)self contentView];
  topAnchor2 = [contentView5 topAnchor];
  v85 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
  v90[0] = v85;
  imageView4 = [(CKEffectSelectionCollectionViewCell *)self imageView];
  centerXAnchor = [imageView4 centerXAnchor];
  contentView6 = [(CKEffectSelectionCollectionViewCell *)self contentView];
  centerXAnchor2 = [contentView6 centerXAnchor];
  v80 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v90[1] = v80;
  imageView5 = [(CKEffectSelectionCollectionViewCell *)self imageView];
  widthAnchor = [imageView5 widthAnchor];
  v77 = [widthAnchor constraintEqualToConstant:72.0];
  v90[2] = v77;
  imageView6 = [(CKEffectSelectionCollectionViewCell *)self imageView];
  heightAnchor = [imageView6 heightAnchor];
  v74 = [heightAnchor constraintEqualToConstant:72.0];
  v90[3] = v74;
  shadowView3 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  topAnchor3 = [shadowView3 topAnchor];
  contentView7 = [(CKEffectSelectionCollectionViewCell *)self contentView];
  topAnchor4 = [contentView7 topAnchor];
  v69 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:8.0];
  v90[4] = v69;
  shadowView4 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  centerXAnchor3 = [shadowView4 centerXAnchor];
  contentView8 = [(CKEffectSelectionCollectionViewCell *)self contentView];
  centerXAnchor4 = [contentView8 centerXAnchor];
  v64 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v90[5] = v64;
  shadowView5 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  widthAnchor2 = [shadowView5 widthAnchor];
  v61 = [widthAnchor2 constraintEqualToConstant:72.0];
  v90[6] = v61;
  shadowView6 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  heightAnchor2 = [shadowView6 heightAnchor];
  v57 = [heightAnchor2 constraintEqualToConstant:72.0];
  v90[7] = v57;
  titleContainerView4 = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  topAnchor5 = [titleContainerView4 topAnchor];
  imageView7 = [(CKEffectSelectionCollectionViewCell *)self imageView];
  bottomAnchor = [imageView7 bottomAnchor];
  v52 = [topAnchor5 constraintEqualToAnchor:bottomAnchor constant:8.0];
  v90[8] = v52;
  titleContainerView5 = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  bottomAnchor2 = [titleContainerView5 bottomAnchor];
  contentView9 = [(CKEffectSelectionCollectionViewCell *)self contentView];
  bottomAnchor3 = [contentView9 bottomAnchor];
  v47 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3];
  v90[9] = v47;
  titleContainerView6 = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  widthAnchor3 = [titleContainerView6 widthAnchor];
  imageView8 = [(CKEffectSelectionCollectionViewCell *)self imageView];
  widthAnchor4 = [imageView8 widthAnchor];
  v42 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  v90[10] = v42;
  titleContainerView7 = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  centerXAnchor5 = [titleContainerView7 centerXAnchor];
  contentView10 = [(CKEffectSelectionCollectionViewCell *)self contentView];
  centerXAnchor6 = [contentView10 centerXAnchor];
  v37 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v90[11] = v37;
  label3 = [(CKEffectSelectionCollectionViewCell *)self label];
  topAnchor6 = [label3 topAnchor];
  titleContainerView8 = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  topAnchor7 = [titleContainerView8 topAnchor];
  v32 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
  v90[12] = v32;
  label4 = [(CKEffectSelectionCollectionViewCell *)self label];
  bottomAnchor4 = [label4 bottomAnchor];
  titleContainerView9 = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  bottomAnchor5 = [titleContainerView9 bottomAnchor];
  v27 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v90[13] = v27;
  label5 = [(CKEffectSelectionCollectionViewCell *)self label];
  leadingAnchor = [label5 leadingAnchor];
  titleContainerView10 = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  leadingAnchor2 = [titleContainerView10 leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v90[14] = v19;
  label6 = [(CKEffectSelectionCollectionViewCell *)self label];
  trailingAnchor = [label6 trailingAnchor];
  titleContainerView11 = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  trailingAnchor2 = [titleContainerView11 trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v90[15] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:16];
  [v59 activateConstraints:v25];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v9.receiver = self;
  v9.super_class = CKEffectSelectionCollectionViewCell;
  [(CKEffectSelectionCollectionViewCell *)&v9 setSelected:?];
  if (selectedCopy)
  {
    contentView = [(CKEffectSelectionCollectionViewCell *)self contentView];
    layer = [contentView layer];
    selectionLayer = [(CKEffectSelectionCollectionViewCell *)self selectionLayer];
    [layer addSublayer:selectionLayer];

    [(CKEffectSelectionCollectionViewCell *)self setNeedsLayout];
    [(CKEffectSelectionCollectionViewCell *)self layoutIfNeeded];
  }

  else
  {
    selectionLayer2 = [(CKEffectSelectionCollectionViewCell *)self selectionLayer];
    [selectionLayer2 removeFromSuperlayer];
  }
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = CKEffectSelectionCollectionViewCell;
  [(CKEffectSelectionCollectionViewCell *)&v17 layoutSubviews];
  v3 = MEMORY[0x1E69DC728];
  shadowView = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  [shadowView bounds];
  v5 = [v3 _bezierPathWithPillRect:? cornerRadius:?];
  cGPath = [v5 CGPath];
  shadowView2 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  layer = [shadowView2 layer];
  [layer setShadowPath:cGPath];

  shadowView3 = [(CKEffectSelectionCollectionViewCell *)self shadowView];
  [shadowView3 frame];
  v19 = CGRectInset(v18, -2.0, -2.0);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;

  v14 = [MEMORY[0x1E69DC728] _bezierPathWithPillRect:x cornerRadius:{y, width, height, 15.2}];
  cGPath2 = [v14 CGPath];
  selectionLayer = [(CKEffectSelectionCollectionViewCell *)self selectionLayer];
  [selectionLayer setPath:cGPath2];
}

- (void)setImage:(id)image
{
  imageCopy = image;
  imageView = [(CKEffectSelectionCollectionViewCell *)self imageView];
  [imageView setImage:imageCopy];
}

- (void)setTitle:(id)title
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DB7D0];
  titleCopy = title;
  defaultParagraphStyle = [v4 defaultParagraphStyle];
  v7 = [defaultParagraphStyle mutableCopy];

  LODWORD(v8) = 1045220557;
  [v7 setHyphenationFactor:v8];
  [v7 setAlignment:1];
  v9 = objc_alloc(MEMORY[0x1E696AAB0]);
  v13 = *MEMORY[0x1E69DB688];
  v14[0] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = [v9 initWithString:titleCopy attributes:v10];

  label = [(CKEffectSelectionCollectionViewCell *)self label];
  [label setAttributedText:v11];
}

- (void)configureForEffectIsDark:(BOOL)dark
{
  darkCopy = dark;
  if (dark)
  {
    titleVibrancyEffect = [(CKEffectSelectionCollectionViewCell *)self titleVibrancyEffect];
  }

  else
  {
    titleVibrancyEffect = 0;
  }

  titleContainerView = [(CKEffectSelectionCollectionViewCell *)self titleContainerView];
  [titleContainerView setEffect:titleVibrancyEffect];

  if (darkCopy)
  {
  }
}

@end