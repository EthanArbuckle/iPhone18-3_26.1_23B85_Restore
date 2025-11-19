@interface HUWallpaperPhotoCell
- (HUWallpaperPhotoCell)initWithFrame:(CGRect)a3;
- (HUWallpaperPhotoCellDelegate)delegate;
- (UIImage)image;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)deleteButtonPressed;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)a3;
- (void)setBusy:(BOOL)a3;
- (void)setContentMode:(int64_t)a3;
- (void)setCornerRadius:(double)a3;
- (void)setEmpty:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setRemovable:(BOOL)a3;
- (void)showBorder:(BOOL)a3 animated:(BOOL)a4;
- (void)updateView;
@end

@implementation HUWallpaperPhotoCell

- (HUWallpaperPhotoCell)initWithFrame:(CGRect)a3
{
  v65[2] = *MEMORY[0x277D85DE8];
  v64.receiver = self;
  v64.super_class = HUWallpaperPhotoCell;
  v3 = [(HUWallpaperPhotoCell *)&v64 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    v5 = [(HUWallpaperPhotoCell *)v3 contentView];
    [v5 bounds];
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
    v9 = [(HUWallpaperPhotoCell *)v3 contentView];
    [v9 bounds];
    v10 = [v8 initWithFrame:?];
    selectionOverlayView = v3->_selectionOverlayView;
    v3->_selectionOverlayView = v10;

    [(UIView *)v3->_selectionOverlayView setClipsToBounds:1];
    v12 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v3->_selectionOverlayView setBackgroundColor:v12];

    v13 = [(UIView *)v3->_selectionOverlayView layer];
    [v13 setCornerRadius:10.0];

    v14 = [MEMORY[0x277D75348] systemOrangeColor];
    v15 = [v14 CGColor];
    v16 = [(UIView *)v3->_selectionOverlayView layer];
    [v16 setBorderColor:v15];

    v17 = [(UIView *)v3->_selectionOverlayView layer];
    [v17 setBorderWidth:2.0];

    [(UIView *)v3->_selectionOverlayView setAlpha:0.0];
    v18 = [MEMORY[0x277D75220] buttonWithType:0];
    deleteButton = v3->_deleteButton;
    v3->_deleteButton = v18;

    v20 = v3->_deleteButton;
    v21 = HUImageNamed(@"deleteWallpaperButton");
    [(UIButton *)v20 setImage:v21 forState:0];

    v22 = [(UIButton *)v3->_deleteButton layer];
    [v22 setBorderWidth:3.0];

    v23 = [MEMORY[0x277D75348] systemWhiteColor];
    v24 = [v23 CGColor];
    v25 = [(UIButton *)v3->_deleteButton layer];
    [v25 setBorderColor:v24];

    [(UIButton *)v3->_deleteButton addTarget:v3 action:sel_deleteButtonPressed forControlEvents:64];
    v26 = objc_alloc(MEMORY[0x277D756B8]);
    v27 = [v26 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    choosePhotoLabel = v3->_choosePhotoLabel;
    v3->_choosePhotoLabel = v27;

    v29 = _HULocalizedStringWithDefaultValue(@"HUEditLocationChoosePhotoLabelMac", @"HUEditLocationChoosePhotoLabelMac", 1);
    [(UILabel *)v3->_choosePhotoLabel setText:v29];

    v30 = [MEMORY[0x277D75348] hf_keyColor];
    [(UILabel *)v3->_choosePhotoLabel setTextColor:v30];

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
    v35 = [MEMORY[0x277CD9F90] layer];
    borderLayer = v3->_borderLayer;
    v3->_borderLayer = v35;

    v37 = [MEMORY[0x277D75348] systemLightGrayColor];
    -[CAShapeLayer setStrokeColor:](v3->_borderLayer, "setStrokeColor:", [v37 CGColor]);

    [(CAShapeLayer *)v3->_borderLayer setFillColor:0];
    [(CAShapeLayer *)v3->_borderLayer setLineWidth:2.0];
    [(CAShapeLayer *)v3->_borderLayer setLineDashPattern:&unk_282492C18];
    v38 = [(HUWallpaperPhotoCell *)v3 contentView];
    [v38 addSubview:v3->_stackView];

    v39 = [(HUWallpaperPhotoCell *)v3 contentView];
    [v39 addSubview:v3->_selectionOverlayView];

    v40 = [(HUWallpaperPhotoCell *)v3 contentView];
    v41 = [v40 layer];
    [v41 addSublayer:v3->_borderLayer];

    v42 = [MEMORY[0x277D75348] systemBlackColor];
    v43 = [v42 CGColor];
    v44 = [(HUWallpaperPhotoCell *)v3 contentView];
    v45 = [v44 layer];
    [v45 setBackgroundColor:v43];

    v46 = [(HUWallpaperPhotoCell *)v3 contentView];
    [v46 setAutoresizingMask:18];

    v47 = [(UIStackView *)v3->_stackView heightAnchor];
    v48 = [(HUWallpaperPhotoCell *)v3 contentView];
    v49 = [v48 heightAnchor];
    v50 = [v47 constraintLessThanOrEqualToAnchor:v49];
    [v50 setActive:1];

    v51 = [(UIStackView *)v3->_stackView widthAnchor];
    v52 = [(HUWallpaperPhotoCell *)v3 contentView];
    v53 = [v52 widthAnchor];
    v54 = [v51 constraintEqualToAnchor:v53];
    [v54 setActive:1];

    v55 = [(UIStackView *)v3->_stackView centerYAnchor];
    v56 = [(HUWallpaperPhotoCell *)v3 contentView];
    v57 = [v56 centerYAnchor];
    v58 = [v55 constraintEqualToAnchor:v57];
    [v58 setActive:1];

    v59 = [(UIImageView *)v3->_imageView widthAnchor];
    v60 = [(HUWallpaperPhotoCell *)v3 stackView];
    v61 = [v60 widthAnchor];
    v62 = [v59 constraintEqualToAnchor:v61];
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
  v3 = [(HUWallpaperPhotoCell *)self choosePhotoLabel];
  [v3 setHidden:1];

  v4.receiver = self;
  v4.super_class = HUWallpaperPhotoCell;
  [(HUWallpaperPhotoCell *)&v4 prepareForReuse];
}

- (void)deleteButtonPressed
{
  v3 = [(HUWallpaperPhotoCell *)self delegate];

  if (v3)
  {
    v4 = [(HUWallpaperPhotoCell *)self delegate];
    [v4 wallpaperPhotoCellDidPressDeleteButton:self];
  }
}

- (void)layoutSubviews
{
  v3 = [(HUWallpaperPhotoCell *)self contentView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(HUWallpaperPhotoCell *)self selectionOverlayView];
  [v12 setFrame:{v5 + -4.0, v7 + -4.0, v9 + 8.0, v11 + 8.0}];

  v13 = [(HUWallpaperPhotoCell *)self contentView];
  [v13 origin];
  v15 = v14 + -8.0;
  v16 = [(HUWallpaperPhotoCell *)self contentView];
  [v16 origin];
  v18 = v17 + -8.0;
  v19 = [(HUWallpaperPhotoCell *)self deleteButton];
  [v19 setFrame:{v15, v18, 26.0, 26.0}];

  v20 = [(HUWallpaperPhotoCell *)self deleteButton];
  [v20 setContentEdgeInsets:{3.0, 3.0, 3.0, 3.0}];

  v25 = [(HUWallpaperPhotoCell *)self deleteButton];
  [v25 frame];
  v22 = v21 * 0.5;
  v23 = [(HUWallpaperPhotoCell *)self deleteButton];
  v24 = [v23 layer];
  [v24 setCornerRadius:v22];
}

- (void)updateView
{
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    if (![(HUWallpaperPhotoCell *)self showBorder]|| (v3 = 1.0, [(HUWallpaperPhotoCell *)self empty]))
    {
      v4 = [(HUWallpaperPhotoCell *)self empty];
      if (v4)
      {
        v5 = [MEMORY[0x277D75348] labelColor];
        v6 = [(HUWallpaperPhotoCell *)self imageView];
        [v6 setTintColor:v5];

        v7 = 0.0;
      }

      else
      {
        v8 = [(HUWallpaperPhotoCell *)self imageView];
        [v8 setTintColor:0];

        [(HUWallpaperPhotoCell *)self cornerRadius];
        v7 = v9 / 1.5;
      }

      v10 = [(HUWallpaperPhotoCell *)self imageView];
      [v10 _setContinuousCornerRadius:v7];

      v11 = [(HUWallpaperPhotoCell *)self choosePhotoLabel];
      [v11 setHidden:!v4];

      v12 = [(HUWallpaperPhotoCell *)self imageWidthConstraint];
      [v12 setActive:!v4];

      v3 = 0.0;
    }

    v13 = [(HUWallpaperPhotoCell *)self selectionOverlayView];
    [v13 setAlpha:v3];

    [(HUWallpaperPhotoCell *)self cornerRadius];
    v15 = v14;
    v16 = [(HUWallpaperPhotoCell *)self selectionOverlayView];
    [v16 _setCornerRadius:v15];

    if ([(HUWallpaperPhotoCell *)self removable])
    {
      v17 = [(HUWallpaperPhotoCell *)self contentView];
      v18 = [(HUWallpaperPhotoCell *)self deleteButton];
      [v17 addSubview:v18];
    }

    else
    {
      if ([(HUWallpaperPhotoCell *)self removable])
      {
        goto LABEL_13;
      }

      v17 = [(HUWallpaperPhotoCell *)self deleteButton];
      [v17 removeFromSuperview];
    }
  }

LABEL_13:
  v19 = [(HUWallpaperPhotoCell *)self busy];
  v20 = [(HUWallpaperPhotoCell *)self spinnerView];
  v21 = v20;
  if (v19)
  {

    if (!v21)
    {
      v22 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
      [(HUWallpaperPhotoCell *)self setSpinnerView:v22];

      v23 = [(HUWallpaperPhotoCell *)self spinnerView];
      [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    v24 = [(HUWallpaperPhotoCell *)self spinnerView];
    [v24 startAnimating];

    v25 = [(HUWallpaperPhotoCell *)self contentView];
    v26 = [(HUWallpaperPhotoCell *)self spinnerView];
    [v25 addSubview:v26];

    v27 = [(HUWallpaperPhotoCell *)self spinnerView];
    v28 = [v27 centerXAnchor];
    v29 = [(HUWallpaperPhotoCell *)self contentView];
    v30 = [v29 centerXAnchor];
    v31 = [v28 constraintEqualToAnchor:v30];
    [v31 setActive:1];

    v32 = [(HUWallpaperPhotoCell *)self spinnerView];
    v33 = [v32 centerYAnchor];
    v34 = [(HUWallpaperPhotoCell *)self contentView];
    v35 = [v34 centerYAnchor];
    v36 = [v33 constraintEqualToAnchor:v35];
    [v36 setActive:1];
  }

  else
  {
    [v20 stopAnimating];

    v32 = [(HUWallpaperPhotoCell *)self spinnerView];
    [v32 removeFromSuperview];
  }

  v37 = MEMORY[0x277D75208];
  v38 = [(HUWallpaperPhotoCell *)self contentView];
  [v38 bounds];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  [(HUWallpaperPhotoCell *)self cornerRadius];
  v48 = [v37 bezierPathWithRoundedRect:v40 cornerRadius:{v42, v44, v46, v47}];
  v49 = [v48 CGPath];
  v50 = [(HUWallpaperPhotoCell *)self borderLayer];
  [v50 setPath:v49];

  v51 = [(HUWallpaperPhotoCell *)self contentView];
  [v51 bounds];
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = [(HUWallpaperPhotoCell *)self borderLayer];
  [v60 setFrame:{v53, v55, v57, v59}];

  LODWORD(v51) = [(HUWallpaperPhotoCell *)self empty];
  v61 = [(HUWallpaperPhotoCell *)self borderLayer];
  [v61 setHidden:v51 ^ 1];

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

  v63 = [(HUWallpaperPhotoCell *)self imageView];
  [v63 setAlpha:v62];

  [(HUWallpaperPhotoCell *)self setNeedsLayout];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(HUWallpaperPhotoCell *)self isHighlighted]!= a3)
  {
    v5.receiver = self;
    v5.super_class = HUWallpaperPhotoCell;
    [(HUWallpaperPhotoCell *)&v5 setHighlighted:v3];
    [(HUWallpaperPhotoCell *)self updateView];
  }
}

- (void)setBusy:(BOOL)a3
{
  if (self->_busy != a3)
  {
    self->_busy = a3;
    [(HUWallpaperPhotoCell *)self updateView];
  }
}

- (void)setEmpty:(BOOL)a3
{
  if (self->_empty != a3)
  {
    self->_empty = a3;
    [(HUWallpaperPhotoCell *)self updateView];
  }
}

- (void)setRemovable:(BOOL)a3
{
  if (self->_removable != a3)
  {
    self->_removable = a3;
    [(HUWallpaperPhotoCell *)self updateView];
  }
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    [(HUWallpaperPhotoCell *)self updateView];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v9.receiver = self;
  v9.super_class = HUWallpaperPhotoCell;
  v4 = a3;
  [(HUWallpaperPhotoCell *)&v9 setBackgroundColor:v4];
  v5 = v4;
  v6 = [v5 CGColor];

  v7 = [(HUWallpaperPhotoCell *)self contentView];
  v8 = [v7 layer];
  [v8 setBackgroundColor:v6];
}

- (void)showBorder:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showBorder != a3)
  {
    self->_showBorder = a3;
    if (a4)
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
    v3 = [(HUWallpaperPhotoCell *)self imageView];
    v4 = [v3 image];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(HUWallpaperPhotoCell *)self imageView];
  [v5 setImage:v4];
}

- (void)setContentMode:(int64_t)a3
{
  self->_contentMode = a3;
  v4 = [(HUWallpaperPhotoCell *)self imageView];
  [v4 setContentMode:a3];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HUWallpaperPhotoCell;
  v8 = [(HUWallpaperPhotoCell *)&v12 hitTest:v7 withEvent:x, y];
  if (!v8)
  {
    v8 = [(HUWallpaperPhotoCell *)self deleteButton];

    if (v8)
    {
      v9 = [(HUWallpaperPhotoCell *)self deleteButton];
      v10 = [(HUWallpaperPhotoCell *)self deleteButton];
      [(HUWallpaperPhotoCell *)self convertPoint:v10 toView:x, y];
      v8 = [v9 hitTest:v7 withEvent:?];
    }
  }

  return v8;
}

- (HUWallpaperPhotoCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end