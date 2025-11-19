@interface MCLRatingsView
- (MCLRatingsView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)setEmptyImage:(id)a3;
- (void)setFullImage:(id)a3;
- (void)setValue:(double)a3;
- (void)updateConstraints;
@end

@implementation MCLRatingsView

- (MCLRatingsView)initWithFrame:(CGRect)a3
{
  v10 = a3;
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = MCLRatingsView;
  v9 = [(MCLRatingsView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    v5 = [(MCLRatingsView *)v9 layer];
    [v5 setShouldRasterize:1];
    MEMORY[0x277D82BD8](v5);
    [(MCLRatingsView *)v9 setContentMode:3];
    v6 = [MEMORY[0x277D75348] whiteColor];
    [(MCLRatingsView *)v9 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v6);
    [(MCLRatingsView *)v9 setSpacing:?];
    [(MCLRatingsView *)v9 setValue:0.0];
    v9->_imageaspect = 1.0;
  }

  v4 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v4;
}

- (void)setValue:(double)a3
{
  if (a3 >= 0.0)
  {
    if (a3 > 5.0)
    {
      self->_value = 5.0;
    }
  }

  else
  {
    self->_value = 0.0;
  }

  if (a3 != self->_value)
  {
    self->_value = a3;
    [(MCLRatingsView *)self setNeedsDisplay];
  }
}

- (void)setEmptyImage:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_emptyImage, location[0]);
  [(MCLRatingsView *)v4 setNeedsDisplay];
  objc_storeStrong(location, 0);
}

- (void)setFullImage:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0] && ([location[0] size], v3 > 0.0))
  {
    objc_storeStrong(&v8->_fullImage, location[0]);
    [location[0] size];
    v6 = v4;
    [location[0] size];
    v8->_imageaspect = v6 / v5;
  }

  else
  {
    v8->_imageaspect = 1.0;
  }

  [(MCLRatingsView *)v8 setNeedsUpdateConstraints];
  [(MCLRatingsView *)v8 setNeedsDisplay];
  objc_storeStrong(location, 0);
}

- (void)updateConstraints
{
  v4 = self;
  v3[1] = a2;
  if (self->_widthConstraint)
  {
    [(NSLayoutConstraint *)v4->_widthConstraint setActive:0];
  }

  v3[0] = [MEMORY[0x277CCAAD0] constraintWithItem:v4 attribute:7 relatedBy:0 toItem:v4 attribute:8 multiplier:5.0 * v4->_imageaspect constant:5.0 * v4->_spacing];
  [v3[0] setActive:1];
  objc_storeStrong(&v4->_widthConstraint, v3[0]);
  v2.receiver = v4;
  v2.super_class = MCLRatingsView;
  [(MCLRatingsView *)&v2 updateConstraints];
  objc_storeStrong(v3, 0);
}

- (void)drawRect:(CGRect)a3
{
  if (self->_fullImage)
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    [(MCLRatingsView *)self bounds];
    v13.origin.x = v3;
    v13.origin.y = v4;
    v13.size.height = v5;
    v13.size.width = v5 * self->_imageaspect;
    for (i = 1; i <= 5; ++i)
    {
      if (self->_value < i)
      {
        [(UIImage *)self->_emptyImage drawInRect:v13.origin.x, v13.origin.y, v13.size.width, v13.size.height];
        if (self->_value > (i - 1))
        {
          v6 = v13.size.width * (self->_value - (i - 1));
          CGRectMake_0();
          rect.origin.x = v7;
          rect.origin.y = v8;
          rect.size.width = v9;
          rect.size.height = v10;
          CGContextSaveGState(CurrentContext);
          UIRectClip(rect);
          [(UIImage *)self->_fullImage drawInRect:v13.origin.x, v13.origin.y, v13.size.width, v13.size.height];
          CGContextRestoreGState(CurrentContext);
        }
      }

      else
      {
        [(UIImage *)self->_fullImage drawInRect:v13.origin.x, v13.origin.y, v13.size.width, v13.size.height];
      }

      v13.origin.x = CGRectGetMaxX(v13) + self->_spacing;
    }
  }
}

@end