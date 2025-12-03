@interface NTKCPhotoListCell
+ (id)reuseIdentifier;
- (CGRect)crop;
- (NTKCPhotoListCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setCrop:(CGRect)crop;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setPhoto:(id)photo;
- (void)setSelected:(BOOL)selected;
@end

@implementation NTKCPhotoListCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NTKCPhotoListCell)initWithFrame:(CGRect)frame
{
  v22.receiver = self;
  v22.super_class = NTKCPhotoListCell;
  v3 = [(NTKCPhotoListCell *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    content = v3->_content;
    v3->_content = v4;

    [(UIView *)v3->_content setClipsToBounds:1];
    [(NTKCPhotoListCell *)v3 addSubview:v3->_content];
    v6 = objc_opt_new();
    contentImageView = v3->_contentImageView;
    v3->_contentImageView = v6;

    [(UIView *)v3->_content addSubview:v3->_contentImageView];
    v8 = objc_alloc(MEMORY[0x277D75D18]);
    [(NTKCPhotoListCell *)v3 bounds];
    v9 = [v8 initWithFrame:?];
    selectionOverlayView = v3->_selectionOverlayView;
    v3->_selectionOverlayView = v9;

    [(UIView *)v3->_selectionOverlayView setUserInteractionEnabled:0];
    labelColor = [MEMORY[0x277D75348] labelColor];
    v12 = [labelColor colorWithAlphaComponent:0.25];
    [(UIView *)v3->_selectionOverlayView setBackgroundColor:v12];

    [(NTKCPhotoListCell *)v3 addSubview:v3->_selectionOverlayView];
    [(UIView *)v3->_selectionOverlayView setHidden:1];
    v13 = NTKCImageNamed(@"BlueCheckSelected");
    v14 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v13];
    selectionBadge = v3->_selectionBadge;
    v3->_selectionBadge = v14;

    [(UIView *)v3->_selectionOverlayView addSubview:v3->_selectionBadge];
    v16 = objc_alloc(MEMORY[0x277D75D18]);
    [(NTKCPhotoListCell *)v3 bounds];
    v17 = [v16 initWithFrame:?];
    highlightOverlayView = v3->_highlightOverlayView;
    v3->_highlightOverlayView = v17;

    [(UIView *)v3->_highlightOverlayView setUserInteractionEnabled:0];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    v20 = [systemBackgroundColor colorWithAlphaComponent:0.5];
    [(UIView *)v3->_highlightOverlayView setBackgroundColor:v20];

    [(NTKCPhotoListCell *)v3 addSubview:v3->_highlightOverlayView];
    [(UIView *)v3->_highlightOverlayView setHidden:1];
  }

  return v3;
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = NTKCPhotoListCell;
  [(NTKCPhotoListCell *)&v33 layoutSubviews];
  [(NTKCPhotoListCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_content setFrame:?];
  v11 = 1.0;
  if (!CGRectIsEmpty(self->_crop))
  {
    image = [(UIImageView *)self->_contentImageView image];

    if (image)
    {
      width = self->_crop.size.width;
      height = self->_crop.size.height;
      v34.origin.x = v4;
      v34.origin.y = v6;
      v34.size.width = v8;
      v34.size.height = v10;
      v15 = CGRectGetWidth(v34);
      v35.origin.x = v4;
      v35.origin.y = v6;
      v35.size.width = v8;
      v35.size.height = v10;
      if (width / height <= v15 / CGRectGetHeight(v35))
      {
        v16 = width;
      }

      else
      {
        v16 = height;
      }

      v36.origin.x = v4;
      v36.origin.y = v6;
      v36.size.width = v8;
      v36.size.height = v10;
      v17 = CGRectGetWidth(v36) / v16;
      v37.origin.x = v4;
      v37.origin.y = v6;
      v37.size.width = v8;
      v37.size.height = v10;
      v18 = CGRectGetHeight(v37) / v16;
      if (v17 >= v18)
      {
        v11 = v18;
      }

      else
      {
        v11 = v17;
      }
    }
  }

  CGAffineTransformMakeScale(&v32, v11, v11);
  contentImageView = self->_contentImageView;
  v31 = v32;
  [(UIImageView *)contentImageView setTransform:&v31];
  [(UIImageView *)self->_contentImageView frame];
  UIRectCenteredIntegralRectScale();
  [(UIImageView *)self->_contentImageView setFrame:0];
  [(UIView *)self->_highlightOverlayView setFrame:v4, v6, v8, v10];
  [(UIView *)self->_selectionOverlayView setFrame:v4, v6, v8, v10];
  [(UIImageView *)self->_selectionBadge frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [(UIView *)self->_selectionOverlayView frame];
  MaxX = CGRectGetMaxX(v38);
  v39.origin.x = v21;
  v39.origin.y = v23;
  v39.size.width = v25;
  v39.size.height = v27;
  v29 = MaxX - CGRectGetWidth(v39);
  [(UIView *)self->_selectionOverlayView frame];
  MaxY = CGRectGetMaxY(v40);
  v41.origin.x = v29;
  v41.origin.y = v23;
  v41.size.width = v25;
  v41.size.height = v27;
  [(UIImageView *)self->_selectionBadge setFrame:v29, MaxY - CGRectGetHeight(v41), v25, v27];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(NTKCPhotoListCell *)self isHighlighted]!= highlighted)
  {
    v5.receiver = self;
    v5.super_class = NTKCPhotoListCell;
    [(NTKCPhotoListCell *)&v5 setHighlighted:highlightedCopy];
    [(UIView *)self->_highlightOverlayView setHidden:highlightedCopy ^ 1];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(NTKCPhotoListCell *)self isSelected]!= selected)
  {
    v5.receiver = self;
    v5.super_class = NTKCPhotoListCell;
    [(NTKCPhotoListCell *)&v5 setSelected:selectedCopy];
    [(UIView *)self->_selectionOverlayView setHidden:selectedCopy ^ 1];
  }
}

- (void)setPhoto:(id)photo
{
  photoCopy = photo;
  image = [(UIImageView *)self->_contentImageView image];
  v6 = [image isEqual:photoCopy];

  if ((v6 & 1) == 0)
  {
    contentImageView = self->_contentImageView;
    v8 = *(MEMORY[0x277CBF2C0] + 16);
    v9[0] = *MEMORY[0x277CBF2C0];
    v9[1] = v8;
    v9[2] = *(MEMORY[0x277CBF2C0] + 32);
    [(UIImageView *)contentImageView setTransform:v9];
    [(UIImageView *)self->_contentImageView setImage:photoCopy];
    [(UIImageView *)self->_contentImageView sizeToFit];
    [(NTKCPhotoListCell *)self setNeedsLayout];
  }
}

- (void)setCrop:(CGRect)crop
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  p_crop = &self->_crop;
  if (!CGRectEqualToRect(crop, self->_crop))
  {
    p_crop->origin.x = x;
    p_crop->origin.y = y;
    p_crop->size.width = width;
    p_crop->size.height = height;

    [(NTKCPhotoListCell *)self setNeedsLayout];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = NTKCPhotoListCell;
  [(NTKCPhotoListCell *)&v3 prepareForReuse];
  [(NTKCPhotoListCell *)self setIndex:-1];
}

- (CGRect)crop
{
  x = self->_crop.origin.x;
  y = self->_crop.origin.y;
  width = self->_crop.size.width;
  height = self->_crop.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end