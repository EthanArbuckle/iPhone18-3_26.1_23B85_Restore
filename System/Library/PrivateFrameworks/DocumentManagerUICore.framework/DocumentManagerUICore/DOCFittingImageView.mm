@interface DOCFittingImageView
- (CGSize)fittingSize;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (DOCFittingImageView)initWithCoder:(id)coder;
- (DOCFittingImageView)initWithFrame:(CGRect)frame;
- (DOCFittingImageView)initWithImage:(id)image;
- (DOCFittingImageViewDelegate)delegate;
- (void)initCommon;
- (void)layoutSubviews;
- (void)setFittingSize:(CGSize)size;
- (void)setImage:(id)image;
- (void)setThumbnail:(id)thumbnail;
- (void)thumbnailLoaded:(id)loaded;
@end

@implementation DOCFittingImageView

- (void)initCommon
{
  v3 = *MEMORY[0x277CDA138];
  layer = [(DOCFittingImageView *)self layer];
  [layer setCornerCurve:v3];

  [(DOCFittingImageView *)self setClipsToBounds:1];
}

- (CGSize)intrinsicContentSize
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  [(DOCFittingImageView *)self fittingSize];
  v12.receiver = self;
  v12.super_class = DOCFittingImageView;
  [(DOCFittingImageView *)&v12 intrinsicContentSize];
  traitCollection = [(DOCFittingImageView *)self traitCollection];
  [traitCollection displayScale];
  DOCAdaptSizeToRect();
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)fittingSize
{
  width = self->_fittingSize.width;
  height = self->_fittingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = DOCFittingImageView;
  [(DOCFittingImageView *)&v7 layoutSubviews];
  separatorColor = [MEMORY[0x277D75348] separatorColor];
  cGColor = [separatorColor CGColor];
  layer = [(DOCFittingImageView *)self layer];
  [layer setBorderColor:cGColor];

  delegate = [(DOCFittingImageView *)self delegate];
  [delegate fittingImageViewDidLayout:self];
}

- (DOCFittingImageViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DOCFittingImageView)initWithImage:(id)image
{
  v6.receiver = self;
  v6.super_class = DOCFittingImageView;
  v3 = [(DOCFittingImageView *)&v6 initWithImage:image];
  v4 = v3;
  if (v3)
  {
    [(DOCFittingImageView *)v3 initCommon];
  }

  return v4;
}

- (DOCFittingImageView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = DOCFittingImageView;
  v3 = [(DOCFittingImageView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(DOCFittingImageView *)v3 initCommon];
  }

  return v4;
}

- (DOCFittingImageView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DOCFittingImageView;
  v3 = [(DOCFittingImageView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(DOCFittingImageView *)v3 initCommon];
  }

  return v4;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  v26.receiver = self;
  v26.super_class = DOCFittingImageView;
  [(DOCFittingImageView *)&v26 setImage:imageCopy];
  translatesAutoresizingMaskIntoConstraints = [(DOCFittingImageView *)self translatesAutoresizingMaskIntoConstraints];
  if (imageCopy && (translatesAutoresizingMaskIntoConstraints & 1) == 0)
  {
    [imageCopy size];
    if (v6 <= 0.0 || ([imageCopy size], v7 <= 0.0))
    {
      v24 = MEMORY[0x277D062B8];
      v25 = *MEMORY[0x277D062B8];
      if (!*MEMORY[0x277D062B8])
      {
        DOCInitLogging();
        v25 = *v24;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(DOCFittingImageView *)imageCopy setImage:v25];
      }
    }

    else
    {
      aspectRatioConstraint = [(DOCFittingImageView *)self aspectRatioConstraint];
      [aspectRatioConstraint multiplier];
      v10 = v9;

      aspectRatioConstraint2 = [(DOCFittingImageView *)self aspectRatioConstraint];

      [imageCopy size];
      v13 = v12;
      [imageCopy size];
      if (vabdd_f64(v10, v13 / v14) > 0.01 || aspectRatioConstraint2 == 0)
      {
        aspectRatioConstraint3 = [(DOCFittingImageView *)self aspectRatioConstraint];
        [aspectRatioConstraint3 setActive:0];

        widthAnchor = [(DOCFittingImageView *)self widthAnchor];
        heightAnchor = [(DOCFittingImageView *)self heightAnchor];
        [imageCopy size];
        v20 = v19;
        [imageCopy size];
        v22 = [widthAnchor constraintEqualToAnchor:heightAnchor multiplier:v20 / v21];
        [(DOCFittingImageView *)self setAspectRatioConstraint:v22];

        aspectRatioConstraint4 = [(DOCFittingImageView *)self aspectRatioConstraint];
        [aspectRatioConstraint4 setActive:1];
      }
    }
  }
}

- (void)setFittingSize:(CGSize)size
{
  if (self->_fittingSize.width != size.width || self->_fittingSize.height != size.height)
  {
    self->_fittingSize = size;
    [(DOCFittingImageView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  thumbnail = self->_thumbnail;
  v9 = thumbnailCopy;
  if (thumbnail != thumbnailCopy)
  {
    [(DOCThumbnail *)thumbnail removeListener:self];
    objc_storeStrong(&self->_thumbnail, thumbnail);
    [(DOCThumbnail *)self->_thumbnail addListener:self];
  }

  thumbnail = [(DOCThumbnail *)v9 thumbnail];
  image = [(DOCFittingImageView *)self image];

  if (image != thumbnail)
  {
    [(DOCFittingImageView *)self setImage:thumbnail];
  }
}

- (void)thumbnailLoaded:(id)loaded
{
  loadedCopy = loaded;
  v3 = loadedCopy;
  DOCRunInMainThread();
}

void __39__DOCFittingImageView_thumbnailLoaded___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) thumbnail];
  v2 = [*(a1 + 40) thumbnail];
  v3 = v2;
  if (v2 == *(a1 + 32))
  {
    v4 = [*(a1 + 40) image];

    v5 = v6;
    if (v4 == v6)
    {
      goto LABEL_6;
    }

    [*(a1 + 40) setImage:v6];
  }

  else
  {
  }

  v5 = v6;
LABEL_6:
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v13.receiver = self;
  v13.super_class = DOCFittingImageView;
  [(DOCFittingImageView *)&v13 intrinsicContentSize];
  traitCollection = [(DOCFittingImageView *)self traitCollection];
  [traitCollection displayScale];
  DOCAdaptSizeToRect();
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)setImage:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_249CE0000, a2, OS_LOG_TYPE_ERROR, "Attempting to assign image with zero width or height: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end