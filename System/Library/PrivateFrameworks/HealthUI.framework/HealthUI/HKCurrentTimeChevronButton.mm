@interface HKCurrentTimeChevronButton
- (CGRect)_squareRectWithDimension:(double)dimension chevronDirection:(int64_t)direction;
- (CGRect)backgroundRectForBounds:(CGRect)bounds;
- (CGRect)imageRectForContentRect:(CGRect)rect;
- (HKCurrentTimeChevronButton)initWithChevronDirection:(int64_t)direction;
- (void)_updateButtonAppearence;
- (void)setChevronDirection:(int64_t)direction;
@end

@implementation HKCurrentTimeChevronButton

- (HKCurrentTimeChevronButton)initWithChevronDirection:(int64_t)direction
{
  v7.receiver = self;
  v7.super_class = HKCurrentTimeChevronButton;
  v4 = [(HKCurrentTimeChevronButton *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_chevronDirection = direction;
    [(HKCurrentTimeChevronButton *)v4 _updateButtonAppearence];
  }

  return v5;
}

- (void)setChevronDirection:(int64_t)direction
{
  if (self->_chevronDirection != direction)
  {
    self->_chevronDirection = direction;
    [(HKCurrentTimeChevronButton *)self _updateButtonAppearence];

    [(HKCurrentTimeChevronButton *)self setNeedsLayout];
  }
}

- (void)_updateButtonAppearence
{
  v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x1E69DCAB8] imageNamed:@"date_chevron_background" inBundle:v13 compatibleWithTraitCollection:0];
  v4 = [v3 imageWithRenderingMode:2];

  chevronDirection = self->_chevronDirection;
  v6 = *MEMORY[0x1E69DDCE0];
  v7 = *(MEMORY[0x1E69DDCE0] + 16);
  if (chevronDirection == 1)
  {
    v8 = @"date_chevron_left";
  }

  else
  {
    v8 = @"date_chevron_right";
  }

  if (chevronDirection == 1)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = *(MEMORY[0x1E69DDCE0] + 8);
  }

  if (chevronDirection == 1)
  {
    v10 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v10 = 1.0;
  }

  v11 = [MEMORY[0x1E69DCAB8] imageNamed:v8 inBundle:v13 compatibleWithTraitCollection:{0, *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 24)}];
  v12 = [v11 imageWithRenderingMode:2];

  [(HKCurrentTimeChevronButton *)self setImage:v12 forState:0];
  [(HKCurrentTimeChevronButton *)self setBackgroundImage:v4 forState:0];
  [(HKCurrentTimeChevronButton *)self setImageEdgeInsets:v6, v9, v7, v10];
  [(HKCurrentTimeChevronButton *)self setContentMode:1];
}

- (CGRect)backgroundRectForBounds:(CGRect)bounds
{
  if (bounds.size.width >= bounds.size.height)
  {
    height = bounds.size.height;
  }

  else
  {
    height = bounds.size.width;
  }

  [(HKCurrentTimeChevronButton *)self _squareRectWithDimension:self->_chevronDirection chevronDirection:height, bounds.origin.y];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)imageRectForContentRect:(CGRect)rect
{
  if (rect.size.width >= rect.size.height)
  {
    height = rect.size.height;
  }

  else
  {
    height = rect.size.width;
  }

  [(HKCurrentTimeChevronButton *)self _squareRectWithDimension:self->_chevronDirection chevronDirection:height, rect.origin.y];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_squareRectWithDimension:(double)dimension chevronDirection:(int64_t)direction
{
  dimensionCopy = 0.0;
  if (direction != 1)
  {
    dimensionCopy = dimension;
  }

  v6 = 0.0;
  dimensionCopy2 = dimension;
  result.size.height = dimensionCopy2;
  result.size.width = dimension;
  result.origin.y = v6;
  result.origin.x = dimensionCopy;
  return result;
}

@end