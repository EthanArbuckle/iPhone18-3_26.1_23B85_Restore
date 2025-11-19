@interface BRShareFittingImageView
- (BRShareFittingImageView)initWithFrame:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (void)setImage:(id)a3;
@end

@implementation BRShareFittingImageView

- (void)setImage:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = BRShareFittingImageView;
  [(BRShareFittingImageView *)&v16 setImage:v4];
  if (([(BRShareFittingImageView *)self translatesAutoresizingMaskIntoConstraints]& 1) == 0)
  {
    v5 = [(BRShareFittingImageView *)self aspectRatioConstraint];

    if (v5)
    {
      v6 = [(BRShareFittingImageView *)self aspectRatioConstraint];
      [(BRShareFittingImageView *)self removeConstraint:v6];
    }

    if (v4)
    {
      [v4 size];
      if (v7 <= 0.0 || ([v4 size], v8 <= 0.0))
      {
        v15 = cdui_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          sub_10002D708(v4, v15);
        }
      }

      else
      {
        v9 = [(BRShareFittingImageView *)self widthAnchor];
        v10 = [(BRShareFittingImageView *)self heightAnchor];
        [v4 size];
        v12 = v11;
        [v4 size];
        v14 = [v9 constraintEqualToAnchor:v10 multiplier:v12 / v13];
        [(BRShareFittingImageView *)self setAspectRatioConstraint:v14];

        v15 = [(BRShareFittingImageView *)self aspectRatioConstraint];
        [v15 setActive:1];
      }
    }
  }
}

- (BRShareFittingImageView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = BRShareFittingImageView;
  v3 = [(BRShareFittingImageView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v12 = [(BRShareFittingImageView *)self traitCollection];
  [v12 displayScale];
  v14 = sub_100028B24(CGRectZero.origin.x, y, v5, v7, v9, v11, v13);
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  v4 = fmin(a3.width, a3.height);
  y = CGRectZero.origin.y;
  v17.receiver = self;
  v17.super_class = BRShareFittingImageView;
  [(BRShareFittingImageView *)&v17 intrinsicContentSize];
  v7 = v6;
  v9 = v8;
  v10 = [(BRShareFittingImageView *)self traitCollection];
  [v10 displayScale];
  v12 = sub_100028B24(CGRectZero.origin.x, y, v4, v4, v7, v9, v11);
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

@end