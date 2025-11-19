@interface CPUITopAlignedLabel
- (void)drawTextInRect:(CGRect)a3;
@end

@implementation CPUITopAlignedLabel

- (void)drawTextInRect:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = CPUITopAlignedLabel;
  [(CPUITopAlignedLabel *)&v5 textRectForBounds:[(CPUITopAlignedLabel *)self numberOfLines] limitedToNumberOfLines:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4.receiver = self;
  v4.super_class = CPUITopAlignedLabel;
  [(CPUITopAlignedLabel *)&v4 drawTextInRect:?];
}

@end