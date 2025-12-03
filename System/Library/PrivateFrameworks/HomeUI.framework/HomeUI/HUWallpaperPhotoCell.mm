@interface HUWallpaperPhotoCell
- (HUWallpaperPhotoCell)initWithFrame:(CGRect)frame;
- (HUWallpaperPhotoCellDelegate)delegate;
- (UIImage)image;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)deleteButtonPressed;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)color;
- (void)setBusy:(BOOL)busy;
- (void)setContentMode:(int64_t)mode;
- (void)setCornerRadius:(double)radius;
- (void)setEmpty:(BOOL)empty;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
- (void)setRemovable:(BOOL)removable;
- (void)showBorder:(BOOL)border animated:(BOOL)animated;
- (void)updateView;
@end

@implementation HUWallpaperPhotoCell

- (HUWallpaperPhotoCell)initWithFrame:(CGRect)frame
{
  v65[2] = *MEMORY[0x277D85DE8];
  v64.receiver = self;
  v64.super_class = HUWallpaperPhotoCell;
  v3 = [(HUWallpaperPhotoCell *)&v64 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    contentView = [(HUWallpaperPhotoCell *)v3 contentView];
    [contentView bounds];
    v6 = [v4 initWithFrame:?];
    imageView = v3->_imageView;
    v3->_imageView = v6;

    [(UIImageView *)v3->_imageView setAutoresizingMask:18];
    [(UIImageView *)v3->_imageView setContentMode:2];
    [(UIImageView *)v3->_imageView setClipsToBounds:1];
    v3->_busy = 0;
    v3->_removable = 0;
    v3->_empty = 0;
    v3->_showBorder = 0;
    v3->_contentMode = 2;
    v8 = objc_alloc(MEMORY[0x277D75D18]);
    contentView2 = [(HUWallpaperPhotoCell *)v3 contentView];
    [contentView2 bounds];
    v10 = [v8 initWithFrame:?];
    selectionOverlayView = v3->_selectionOverlayView;
    v3->_selectionOverlayView = v10;

    [(UIView *)v3->_selectionOverlayView setClipsToBounds:1];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v3->_selectionOverlayView setBackgroundColor:clearColor];

    layer = [(UIView *)v3->_selectionOverlayView layer];
    [layer setCornerRadius:10.0];

    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    cGColor = [systemOrangeColor CGColor];
    layer2 = [(UIView *)v3->_selectionOverlayView layer];
    [layer2 setBorderColor:cGColor];

    layer3 = [(UIView *)v3->_selectionOverlayView layer];
    [layer3 setBorderWidth:2.0];

    [(UIView *)v3->_selectionOverlayView setAlpha:0.0];
    v18 = [MEMORY[0x277D75220] buttonWithType:0];
    deleteButton = v3->_deleteButton;
    v3->_deleteButton = v18;

    v20 = v3->_deleteButton;
    v21 = HUImageNamed(@"deleteWallpaperButton");
    [(UIButton *)v20 setImage:v21 forState:0];

    layer4 = [(UIButton *)v3->_deleteButton layer];
    [layer4 setBorderWidth:3.0];

    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    cGColor2 = [systemWhiteColor CGColor];
    layer5 = [(UIButton *)v3->_deleteButton layer];
    [layer5 setBorderColor:cGColor2];

    [(UIButton *)v3->_deleteButton addTarget:v3 action:sel_deleteButtonPressed forControlEvents:64];
    v26 = objc_alloc(MEMORY[0x277D756B8]);
    v27 = [v26 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    choosePhotoLabel = v3->_choosePhotoLabel;
    v3->_choosePhotoLabel = v27;

    v29 = _HULocalizedStringWithDefaultValue(@"HUEditLocationChoosePhotoLabelMac", @"HUEditLocationChoosePhotoLabelMac", 1);
    [(UILabel *)v3->_choosePhotoLabel setText:v29];

    hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
    [(UILabel *)v3->_choosePhotoLabel setTextColor:hf_keyColor];

    [(UILabel *)v3->_choosePhotoLabel setHidden:1];
    [(UILabel *)v3->_choosePhotoLabel sizeToFit];
    v31 = objc_alloc(MEMORY[0x277D75A68]);
    v65[0] = v3->_imageView;
    v65[1] = v3->_choosePhotoLabel;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:2];
    v33 = [v31 initWithArrangedSubviews:v32];
    stackView = v3->_stackView;
    v3->_stackView = v33;

    [(UIStackView *)v3->_stackView setAxis:1];
    [(UIStackView *)v3->_stackView setAlignment:3];
    [(UIStackView *)v3->_stackView setDistribution:3];
    [(UIStackView *)v3->_stackView setSpacing:8.0];
    [(UIStackView *)v3->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer6 = [MEMORY[0x277CD9F90] layer];
    borderLayer = v3->_borderLayer;
    v3->_borderLayer = layer6;

    systemLightGrayColor = [MEMORY[0x277D75348] systemLightGrayColor];
    -[CAShapeLayer setStrokeColor:](v3->_borderLayer, "setStrokeColor:", [systemLightGrayColor CGColor]);

    [(CAShapeLayer *)v3->_borderLayer setFillColor:0];
    [(CAShapeLayer *)v3->_borderLayer setLineWidth:2.0];
    [(CAShapeLayer *)v3->_borderLayer setLineDashPattern:&unk_282492C18];
    contentView3 = [(HUWallpaperPhotoCell *)v3 contentView];
    [contentView3 addSubview:v3->_stackView];

    contentView4 = [(HUWallpaperPhotoCell *)v3 contentView];
    [contentView4 addSubview:v3->_selectionOverlayView];

    contentView5 = [(HUWallpaperPhotoCell *)v3 contentView];
    layer7 = [contentView5 layer];
    [layer7 addSublayer:v3->_borderLayer];

    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    cGColor3 = [systemBlackColor CGColor];
    contentView6 = [(HUWallpaperPhotoCell *)v3 contentView];
    layer8 = [contentView6 layer];
    [layer8 setBackgroundColor:cGColor3];

    contentView7 = [(HUWallpaperPhotoCell *)v3 contentView];
    [contentView7 setAutoresizingMask:18];

    heightAnchor = [(UIStackView *)v3->_stackView heightAnchor];
    contentView8 = [(HUWallpaperPhotoCell *)v3 contentView];
    heightAnchor2 = [contentView8 heightAnchor];
    v50 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2];
    [v50 setActive:1];

    widthAnchor = [(UIStackView *)v3->_stackView widthAnchor];
    contentView9 = [(HUWallpaperPhotoCell *)v3 contentView];
    widthAnchor2 = [contentView9 widthAnchor];
    v54 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v54 setActive:1];

    centerYAnchor = [(UIStackView *)v3->_stackView centerYAnchor];
    contentView10 = [(HUWallpaperPhotoCell *)v3 contentView];
    centerYAnchor2 = [contentView10 centerYAnchor];
    v58 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v58 setActive:1];

    widthAnchor3 = [(UIImageView *)v3->_imageView widthAnchor];
    stackView = [(HUWallpaperPhotoCell *)v3 stackView];
    widthAnchor4 = [stackView widthAnchor];
    v62 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    [(HUWallpaperPhotoCell *)v3 setImageWidthConstraint:v62];
  }

  return v3;
}

- (void)prepareForReuse
{
  [(HUWallpaperPhotoCell *)self setBusy:0];
  [(HUWallpaperPhotoCell *)self setEmpty:0];
  [(HUWallpaperPhotoCell *)self setRemovable:0];
  [(HUWallpaperPhotoCell *)self setShowBorder:0];
  choosePhotoLabel = [(HUWallpaperPhotoCell *)self choosePhotoLabel];
  [choosePhotoLabel setHidden:1];

  v4.receiver = self;
  v4.super_class = HUWallpaperPhotoCell;
  [(HUWallpaperPhotoCell *)&v4 prepareForReuse];
}

- (void)deleteButtonPressed
{
  delegate = [(HUWallpaperPhotoCell *)self delegate];

  if (delegate)
  {
    delegate2 = [(HUWallpaperPhotoCell *)self delegate];
    [delegate2 wallpaperPhotoCellDidPressDeleteButton:self];
  }
}

- (void)layoutSubviews
{
  contentView = [(HUWallpaperPhotoCell *)self contentView];
  [contentView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  selectionOverlayView = [(HUWallpaperPhotoCell *)self selectionOverlayView];
  [selectionOverlayView setFrame:{v5 + -4.0, v7 + -4.0, v9 + 8.0, v11 + 8.0}];

  contentView2 = [(HUWallpaperPhotoCell *)self contentView];
  [contentView2 origin];
  v15 = v14 + -8.0;
  contentView3 = [(HUWallpaperPhotoCell *)self contentView];
  [contentView3 origin];
  v18 = v17 + -8.0;
  deleteButton = [(HUWallpaperPhotoCell *)self deleteButton];
  [deleteButton setFrame:{v15, v18, 26.0, 26.0}];

  deleteButton2 = [(HUWallpaperPhotoCell *)self deleteButton];
  [deleteButton2 setContentEdgeInsets:{3.0, 3.0, 3.0, 3.0}];

  deleteButton3 = [(HUWallpaperPhotoCell *)self deleteButton];
  [deleteButton3 frame];
  v22 = v21 * 0.5;
  deleteButton4 = [(HUWallpaperPhotoCell *)self deleteButton];
  layer = [deleteButton4 layer];
  [layer setCornerRadius:v22];
}

- (void)updateView
{
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    if (![(HUWallpaperPhotoCell *)self showBorder]|| (v3 = 1.0, [(HUWallpaperPhotoCell *)self empty]))
    {
      empty = [(HUWallpaperPhotoCell *)self empty];
      if (empty)
      {
        labelColor = [MEMORY[0x277D75348] labelColor];
        imageView = [(HUWallpaperPhotoCell *)self imageView];
        [imageView setTintColor:labelColor];

        v7 = 0.0;
      }

      else
      {
        imageView2 = [(HUWallpaperPhotoCell *)self imageView];
        [imageView2 setTintColor:0];

        [(HUWallpaperPhotoCell *)self cornerRadius];
        v7 = v9 / 1.5;
      }

      imageView3 = [(HUWallpaperPhotoCell *)self imageView];
      [imageView3 _setContinuousCornerRadius:v7];

      choosePhotoLabel = [(HUWallpaperPhotoCell *)self choosePhotoLabel];
      [choosePhotoLabel setHidden:!empty];

      imageWidthConstraint = [(HUWallpaperPhotoCell *)self imageWidthConstraint];
      [imageWidthConstraint setActive:!empty];

      v3 = 0.0;
    }

    selectionOverlayView = [(HUWallpaperPhotoCell *)self selectionOverlayView];
    [selectionOverlayView setAlpha:v3];

    [(HUWallpaperPhotoCell *)self cornerRadius];
    v15 = v14;
    selectionOverlayView2 = [(HUWallpaperPhotoCell *)self selectionOverlayView];
    [selectionOverlayView2 _setCornerRadius:v15];

    if ([(HUWallpaperPhotoCell *)self removable])
    {
      contentView = [(HUWallpaperPhotoCell *)self contentView];
      deleteButton = [(HUWallpaperPhotoCell *)self deleteButton];
      [contentView addSubview:deleteButton];
    }

    else
    {
      if ([(HUWallpaperPhotoCell *)self removable])
      {
        goto LABEL_13;
      }

      contentView = [(HUWallpaperPhotoCell *)self deleteButton];
      [contentView removeFromSuperview];
    }
  }

LABEL_13:
  busy = [(HUWallpaperPhotoCell *)self busy];
  spinnerView = [(HUWallpaperPhotoCell *)self spinnerView];
  v21 = spinnerView;
  if (busy)
  {

    if (!v21)
    {
      v22 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
      [(HUWallpaperPhotoCell *)self setSpinnerView:v22];

      spinnerView2 = [(HUWallpaperPhotoCell *)self spinnerView];
      [spinnerView2 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    spinnerView3 = [(HUWallpaperPhotoCell *)self spinnerView];
    [spinnerView3 startAnimating];

    contentView2 = [(HUWallpaperPhotoCell *)self contentView];
    spinnerView4 = [(HUWallpaperPhotoCell *)self spinnerView];
    [contentView2 addSubview:spinnerView4];

    spinnerView5 = [(HUWallpaperPhotoCell *)self spinnerView];
    centerXAnchor = [spinnerView5 centerXAnchor];
    contentView3 = [(HUWallpaperPhotoCell *)self contentView];
    centerXAnchor2 = [contentView3 centerXAnchor];
    v31 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v31 setActive:1];

    spinnerView6 = [(HUWallpaperPhotoCell *)self spinnerView];
    centerYAnchor = [spinnerView6 centerYAnchor];
    contentView4 = [(HUWallpaperPhotoCell *)self contentView];
    centerYAnchor2 = [contentView4 centerYAnchor];
    v36 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v36 setActive:1];
  }

  else
  {
    [spinnerView stopAnimating];

    spinnerView6 = [(HUWallpaperPhotoCell *)self spinnerView];
    [spinnerView6 removeFromSuperview];
  }

  v37 = MEMORY[0x277D75208];
  contentView5 = [(HUWallpaperPhotoCell *)self contentView];
  [contentView5 bounds];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  [(HUWallpaperPhotoCell *)self cornerRadius];
  v48 = [v37 bezierPathWithRoundedRect:v40 cornerRadius:{v42, v44, v46, v47}];
  cGPath = [v48 CGPath];
  borderLayer = [(HUWallpaperPhotoCell *)self borderLayer];
  [borderLayer setPath:cGPath];

  contentView6 = [(HUWallpaperPhotoCell *)self contentView];
  [contentView6 bounds];
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  borderLayer2 = [(HUWallpaperPhotoCell *)self borderLayer];
  [borderLayer2 setFrame:{v53, v55, v57, v59}];

  LODWORD(contentView6) = [(HUWallpaperPhotoCell *)self empty];
  borderLayer3 = [(HUWallpaperPhotoCell *)self borderLayer];
  [borderLayer3 setHidden:contentView6 ^ 1];

  if (([(HUWallpaperPhotoCell *)self isHighlighted]& 1) != 0 || (v62 = 1.0, [(HUWallpaperPhotoCell *)self busy]))
  {
    if ([(HUWallpaperPhotoCell *)self empty])
    {
      v62 = 1.0;
    }

    else
    {
      v62 = 0.5;
    }
  }

  imageView4 = [(HUWallpaperPhotoCell *)self imageView];
  [imageView4 setAlpha:v62];

  [(HUWallpaperPhotoCell *)self setNeedsLayout];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(HUWallpaperPhotoCell *)self isHighlighted]!= highlighted)
  {
    v5.receiver = self;
    v5.super_class = HUWallpaperPhotoCell;
    [(HUWallpaperPhotoCell *)&v5 setHighlighted:highlightedCopy];
    [(HUWallpaperPhotoCell *)self updateView];
  }
}

- (void)setBusy:(BOOL)busy
{
  if (self->_busy != busy)
  {
    self->_busy = busy;
    [(HUWallpaperPhotoCell *)self updateView];
  }
}

- (void)setEmpty:(BOOL)empty
{
  if (self->_empty != empty)
  {
    self->_empty = empty;
    [(HUWallpaperPhotoCell *)self updateView];
  }
}

- (void)setRemovable:(BOOL)removable
{
  if (self->_removable != removable)
  {
    self->_removable = removable;
    [(HUWallpaperPhotoCell *)self updateView];
  }
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(HUWallpaperPhotoCell *)self updateView];
  }
}

- (void)setBackgroundColor:(id)color
{
  v9.receiver = self;
  v9.super_class = HUWallpaperPhotoCell;
  colorCopy = color;
  [(HUWallpaperPhotoCell *)&v9 setBackgroundColor:colorCopy];
  v5 = colorCopy;
  cGColor = [v5 CGColor];

  contentView = [(HUWallpaperPhotoCell *)self contentView];
  layer = [contentView layer];
  [layer setBackgroundColor:cGColor];
}

- (void)showBorder:(BOOL)border animated:(BOOL)animated
{
  if (self->_showBorder != border)
  {
    self->_showBorder = border;
    if (animated)
    {
      v6[5] = v4;
      v6[6] = v5;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __44__HUWallpaperPhotoCell_showBorder_animated___block_invoke;
      v6[3] = &unk_277DB8488;
      v6[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:0 delay:v6 options:0 animations:0.1 completion:0.0];
    }

    else
    {

      [(HUWallpaperPhotoCell *)self updateView];
    }
  }
}

uint64_t __44__HUWallpaperPhotoCell_showBorder_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateView];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (UIImage)image
{
  if ([(HUWallpaperPhotoCell *)self empty])
  {
    imageView = [(HUWallpaperPhotoCell *)self imageView];
    image = [imageView image];
  }

  else
  {
    image = 0;
  }

  return image;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  imageView = [(HUWallpaperPhotoCell *)self imageView];
  [imageView setImage:imageCopy];
}

- (void)setContentMode:(int64_t)mode
{
  self->_contentMode = mode;
  imageView = [(HUWallpaperPhotoCell *)self imageView];
  [imageView setContentMode:mode];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = HUWallpaperPhotoCell;
  deleteButton = [(HUWallpaperPhotoCell *)&v12 hitTest:eventCopy withEvent:x, y];
  if (!deleteButton)
  {
    deleteButton = [(HUWallpaperPhotoCell *)self deleteButton];

    if (deleteButton)
    {
      deleteButton2 = [(HUWallpaperPhotoCell *)self deleteButton];
      deleteButton3 = [(HUWallpaperPhotoCell *)self deleteButton];
      [(HUWallpaperPhotoCell *)self convertPoint:deleteButton3 toView:x, y];
      deleteButton = [deleteButton2 hitTest:eventCopy withEvent:?];
    }
  }

  return deleteButton;
}

- (HUWallpaperPhotoCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end