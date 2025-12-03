@interface BRShareFittingImageView
- (BRShareFittingImageView)initWithFrame:(CGRect)frame;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (void)setImage:(id)image;
@end

@implementation BRShareFittingImageView

- (void)setImage:(id)image
{
  imageCopy = image;
  v16.receiver = self;
  v16.super_class = BRShareFittingImageView;
  [(BRShareFittingImageView *)&v16 setImage:imageCopy];
  if (([(BRShareFittingImageView *)self translatesAutoresizingMaskIntoConstraints]& 1) == 0)
  {
    aspectRatioConstraint = [(BRShareFittingImageView *)self aspectRatioConstraint];

    if (aspectRatioConstraint)
    {
      aspectRatioConstraint2 = [(BRShareFittingImageView *)self aspectRatioConstraint];
      [(BRShareFittingImageView *)self removeConstraint:aspectRatioConstraint2];
    }

    if (imageCopy)
    {
      [imageCopy size];
      if (v7 <= 0.0 || ([imageCopy size], v8 <= 0.0))
      {
        aspectRatioConstraint3 = cdui_default_log();
        if (os_log_type_enabled(aspectRatioConstraint3, OS_LOG_TYPE_FAULT))
        {
          sub_10002D708(imageCopy, aspectRatioConstraint3);
        }
      }

      else
      {
        widthAnchor = [(BRShareFittingImageView *)self widthAnchor];
        heightAnchor = [(BRShareFittingImageView *)self heightAnchor];
        [imageCopy size];
        v12 = v11;
        [imageCopy size];
        v14 = [widthAnchor constraintEqualToAnchor:heightAnchor multiplier:v12 / v13];
        [(BRShareFittingImageView *)self setAspectRatioConstraint:v14];

        aspectRatioConstraint3 = [(BRShareFittingImageView *)self aspectRatioConstraint];
        [aspectRatioConstraint3 setActive:1];
      }
    }
  }
}

- (BRShareFittingImageView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = BRShareFittingImageView;
  v3 = [(BRShareFittingImageView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(BRShareFittingImageView *)v3 setClipsToBounds:1];
    v5 = v4;
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  y = CGRectZero.origin.y;
  [(BRShareFittingImageView *)self frame];
  v5 = v4;
  v7 = v6;
  v19.receiver = self;
  v19.super_class = BRShareFittingImageView;
  [(BRShareFittingImageView *)&v19 intrinsicContentSize];
  v9 = v8;
  v11 = v10;
  traitCollection = [(BRShareFittingImageView *)self traitCollection];
  [traitCollection displayScale];
  v14 = sub_100028B24(CGRectZero.origin.x, y, v5, v7, v9, v11, v13);
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  v4 = fmin(size.width, size.height);
  y = CGRectZero.origin.y;
  v17.receiver = self;
  v17.super_class = BRShareFittingImageView;
  [(BRShareFittingImageView *)&v17 intrinsicContentSize];
  v7 = v6;
  v9 = v8;
  traitCollection = [(BRShareFittingImageView *)self traitCollection];
  [traitCollection displayScale];
  v12 = sub_100028B24(CGRectZero.origin.x, y, v4, v4, v7, v9, v11);
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

@end