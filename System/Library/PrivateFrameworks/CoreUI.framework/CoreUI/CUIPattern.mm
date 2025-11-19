@interface CUIPattern
- (CGPattern)_newPattern;
- (CGPattern)pattern;
- (CUIPattern)initWithImageRef:(CGImage *)a3;
- (id)description;
- (void)dealloc;
- (void)setPatternInContext:(CGContext *)a3;
@end

@implementation CUIPattern

- (CUIPattern)initWithImageRef:(CGImage *)a3
{
  v6.receiver = self;
  v6.super_class = CUIPattern;
  v4 = [(CUIPattern *)&v6 init];
  if (v4)
  {
    v4->_patternImage = CGImageRetain(a3);
    v4->_alpha = 1.0;
  }

  return v4;
}

- (void)dealloc
{
  CGImageRelease(self->_patternImage);
  pattern = self->_pattern;
  if (pattern)
  {
    CGPatternRelease(pattern);
  }

  self->_pattern = 0;
  v4.receiver = self;
  v4.super_class = CUIPattern;
  [(CUIPattern *)&v4 dealloc];
}

- (CGPattern)_newPattern
{
  Height = CGImageGetHeight(self->_patternImage);
  Width = CGImageGetWidth(self->_patternImage);
  CGAffineTransformMakeScale(&v8, Width, Height);
  CGImageRetain(self->_patternImage);
  patternImage = self->_patternImage;
  v7 = v8;
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = 1.0;
  v9.size.height = 1.0;
  return CGPatternCreate(patternImage, v9, &v7, 1.0, 1.0, kCGPatternTilingConstantSpacing, 1, &patternBitmapCallbacks);
}

- (CGPattern)pattern
{
  result = self->_pattern;
  if (!result)
  {
    result = [(CUIPattern *)self _newPattern];
    self->_pattern = result;
  }

  return result;
}

- (void)setPatternInContext:(CGContext *)a3
{
  _CUISetPattern(a3, [(CUIPattern *)self pattern]);
  alpha = self->_alpha;

  CGContextSetAlpha(a3, alpha);
}

- (id)description
{
  v3 = [objc_opt_class() description];
  Width = CGImageGetWidth(self->_patternImage);
  return [NSString stringWithFormat:@"%@: (%zux%zu)", v3, Width, CGImageGetHeight(self->_patternImage)];
}

@end