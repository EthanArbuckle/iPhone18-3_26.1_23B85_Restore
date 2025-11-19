@interface MSPieImageView
- (void)_reloadClipPath;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)setBackgroundImage:(id)a3;
- (void)setForegroundImage:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setPieFraction:(double)a3;
- (void)setPieRadius:(double)a3;
- (void)sizeToFit;
@end

@implementation MSPieImageView

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MSPieImageView;
  [(MSPieImageView *)&v3 dealloc];
}

- (void)setBackgroundImage:(id)a3
{
  backgroundImage = self->_backgroundImage;
  if (backgroundImage != a3)
  {

    self->_backgroundImage = a3;

    [(MSPieImageView *)self setNeedsDisplay];
  }
}

- (void)setForegroundImage:(id)a3
{
  foregroundImage = self->_foregroundImage;
  if (foregroundImage != a3)
  {

    self->_foregroundImage = a3;

    [(MSPieImageView *)self setNeedsDisplay];
  }
}

- (void)setPieFraction:(double)a3
{
  if (self->_pieFraction != a3)
  {
    self->_pieFraction = a3;
    [(MSPieImageView *)self _reloadClipPath];
  }
}

- (void)setPieRadius:(double)a3
{
  if (self->_pieRadius != a3)
  {
    self->_pieRadius = a3;
    [(MSPieImageView *)self _reloadClipPath];
  }
}

- (void)drawRect:(CGRect)a3
{
  [(MSPieImageView *)self bounds:a3.origin.x];
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
      v17 = [MEMORY[0x277D75208] bezierPath];
      self->_clipPath = v17;
      [(UIBezierPath *)v17 moveToPoint:v14, v15];
      [(UIBezierPath *)self->_clipPath appendBezierPathWithArcWithCenter:0 radius:v14 startAngle:v15 endAngle:self->_pieRadius clockwise:-1.57079633, v16 * 0.0174532925];
      clipPath = self->_clipPath;
    }
  }

  [(UIBezierPath *)clipPath clip];
  foregroundImage = self->_foregroundImage;

  [(UIImage *)foregroundImage drawInRect:v5, v7, v9, v11];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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