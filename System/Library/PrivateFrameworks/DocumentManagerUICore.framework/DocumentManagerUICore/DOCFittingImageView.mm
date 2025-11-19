@interface DOCFittingImageView
- (CGSize)fittingSize;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (DOCFittingImageView)initWithCoder:(id)a3;
- (DOCFittingImageView)initWithFrame:(CGRect)a3;
- (DOCFittingImageView)initWithImage:(id)a3;
- (DOCFittingImageViewDelegate)delegate;
- (void)initCommon;
- (void)layoutSubviews;
- (void)setFittingSize:(CGSize)a3;
- (void)setImage:(id)a3;
- (void)setThumbnail:(id)a3;
- (void)thumbnailLoaded:(id)a3;
@end

@implementation DOCFittingImageView

- (void)initCommon
{
  v3 = *MEMORY[0x277CDA138];
  v4 = [(DOCFittingImageView *)self layer];
  [v4 setCornerCurve:v3];

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
  v5 = [(DOCFittingImageView *)self traitCollection];
  [v5 displayScale];
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
  v3 = [MEMORY[0x277D75348] separatorColor];
  v4 = [v3 CGColor];
  v5 = [(DOCFittingImageView *)self layer];
  [v5 setBorderColor:v4];

  v6 = [(DOCFittingImageView *)self delegate];
  [v6 fittingImageViewDidLayout:self];
}

- (DOCFittingImageViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DOCFittingImageView)initWithImage:(id)a3
{
  v6.receiver = self;
  v6.super_class = DOCFittingImageView;
  v3 = [(DOCFittingImageView *)&v6 initWithImage:a3];
  v4 = v3;
  if (v3)
  {
    [(DOCFittingImageView *)v3 initCommon];
  }

  return v4;
}

- (DOCFittingImageView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = DOCFittingImageView;
  v3 = [(DOCFittingImageView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(DOCFittingImageView *)v3 initCommon];
  }

  return v4;
}

- (DOCFittingImageView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DOCFittingImageView;
  v3 = [(DOCFittingImageView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(DOCFittingImageView *)v3 initCommon];
  }

  return v4;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = DOCFittingImageView;
  [(DOCFittingImageView *)&v26 setImage:v4];
  v5 = [(DOCFittingImageView *)self translatesAutoresizingMaskIntoConstraints];
  if (v4 && (v5 & 1) == 0)
  {
    [v4 size];
    if (v6 <= 0.0 || ([v4 size], v7 <= 0.0))
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
        [(DOCFittingImageView *)v4 setImage:v25];
      }
    }

    else
    {
      v8 = [(DOCFittingImageView *)self aspectRatioConstraint];
      [v8 multiplier];
      v10 = v9;

      v11 = [(DOCFittingImageView *)self aspectRatioConstraint];

      [v4 size];
      v13 = v12;
      [v4 size];
      if (vabdd_f64(v10, v13 / v14) > 0.01 || v11 == 0)
      {
        v16 = [(DOCFittingImageView *)self aspectRatioConstraint];
        [v16 setActive:0];

        v17 = [(DOCFittingImageView *)self widthAnchor];
        v18 = [(DOCFittingImageView *)self heightAnchor];
        [v4 size];
        v20 = v19;
        [v4 size];
        v22 = [v17 constraintEqualToAnchor:v18 multiplier:v20 / v21];
        [(DOCFittingImageView *)self setAspectRatioConstraint:v22];

        v23 = [(DOCFittingImageView *)self aspectRatioConstraint];
        [v23 setActive:1];
      }
    }
  }
}

- (void)setFittingSize:(CGSize)a3
{
  if (self->_fittingSize.width != a3.width || self->_fittingSize.height != a3.height)
  {
    self->_fittingSize = a3;
    [(DOCFittingImageView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setThumbnail:(id)a3
{
  v5 = a3;
  thumbnail = self->_thumbnail;
  v9 = v5;
  if (thumbnail != v5)
  {
    [(DOCThumbnail *)thumbnail removeListener:self];
    objc_storeStrong(&self->_thumbnail, a3);
    [(DOCThumbnail *)self->_thumbnail addListener:self];
  }

  v7 = [(DOCThumbnail *)v9 thumbnail];
  v8 = [(DOCFittingImageView *)self image];

  if (v8 != v7)
  {
    [(DOCFittingImageView *)self setImage:v7];
  }
}

- (void)thumbnailLoaded:(id)a3
{
  v4 = a3;
  v3 = v4;
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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v13.receiver = self;
  v13.super_class = DOCFittingImageView;
  [(DOCFittingImageView *)&v13 intrinsicContentSize];
  v6 = [(DOCFittingImageView *)self traitCollection];
  [v6 displayScale];
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