@interface CPUITopAlignedLabel
- (void)drawTextInRect:(CGRect)rect;
@end

@implementation CPUITopAlignedLabel

- (void)drawTextInRect:(CGRect)rect
{
  v5.receiver = self;
  v5.super_class = CPUITopAlignedLabel;
  [(CPUITopAlignedLabel *)&v5 textRectForBounds:[(CPUITopAlignedLabel *)self numberOfLines] limitedToNumberOfLines:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v4.receiver = self;
  v4.super_class = CPUITopAlignedLabel;
  [(CPUITopAlignedLabel *)&v4 drawTextInRect:?];
}

@end