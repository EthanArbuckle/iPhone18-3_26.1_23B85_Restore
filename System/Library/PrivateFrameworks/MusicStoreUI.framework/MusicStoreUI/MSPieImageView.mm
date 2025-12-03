@interface MSPieImageView
- (void)_reloadClipPath;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)setBackgroundImage:(id)image;
- (void)setForegroundImage:(id)image;
- (void)setFrame:(CGRect)frame;
- (void)setPieFraction:(double)fraction;
- (void)setPieRadius:(double)radius;
- (void)sizeToFit;
@end

@implementation MSPieImageView

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MSPieImageView;
  [(MSPieImageView *)&v3 dealloc];
}

- (void)setBackgroundImage:(id)image
{
  backgroundImage = self->_backgroundImage;
  if (backgroundImage != image)
  {

    self->_backgroundImage = image;

    [(MSPieImageView *)self setNeedsDisplay];
  }
}

- (void)setForegroundImage:(id)image
{
  foregroundImage = self->_foregroundImage;
  if (foregroundImage != image)
  {

    self->_foregroundImage = image;

    [(MSPieImageView *)self setNeedsDisplay];
  }
}

- (void)setPieFraction:(double)fraction
{
  if (self->_pieFraction != fraction)
  {
    self->_pieFraction = fraction;
    [(MSPieImageView *)self _reloadClipPath];
  }
}

- (void)setPieRadius:(double)radius
{
  if (self->_pieRadius != radius)
  {
    self->_pieRadius = radius;
    [(MSPieImageView *)self _reloadClipPath];
  }
}

- (void)drawRect:(CGRect)rect
{
  [(MSPieImageView *)self bounds:rect.origin.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(UIImage *)self->_backgroundImage drawInRect:?];
  clipPath = self->_clipPath;
  if (!clipPath)
  {
    pieFraction = self->_pieFraction;
    if (pieFraction <= 0.00000011920929)
    {
      clipPath = 0;
    }

    else
    {
      v14 = ceil(v9 * 0.5);
      v15 = ceil(v11 * 0.5);
      v16 = pieFraction * 360.0 + -90.0;
      bezierPath = [MEMORY[0x277D75208] bezierPath];
      self->_clipPath = bezierPath;
      [(UIBezierPath *)bezierPath moveToPoint:v14, v15];
      [(UIBezierPath *)self->_clipPath appendBezierPathWithArcWithCenter:0 radius:v14 startAngle:v15 endAngle:self->_pieRadius clockwise:-1.57079633, v16 * 0.0174532925];
      clipPath = self->_clipPath;
    }
  }

  [(UIBezierPath *)clipPath clip];
  foregroundImage = self->_foregroundImage;

  [(UIImage *)foregroundImage drawInRect:v5, v7, v9, v11];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(MSPieImageView *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = MSPieImageView;
  [(MSPieImageView *)&v13 setFrame:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    if (self->_clipPath)
    {
      [(MSPieImageView *)self _reloadClipPath];
    }
  }
}

- (void)sizeToFit
{
  [(MSPieImageView *)self frame];
  v6 = v5;
  v8 = v7;
  backgroundImage = self->_backgroundImage;
  if (backgroundImage || (backgroundImage = self->_foregroundImage) != 0)
  {
    [(UIImage *)backgroundImage size];
    v3 = v10;
    v4 = v11;
  }

  [(MSPieImageView *)self setFrame:v6, v8, v3, v4];
}

- (void)_reloadClipPath
{
  self->_clipPath = 0;

  [(MSPieImageView *)self setNeedsDisplay];
}

@end