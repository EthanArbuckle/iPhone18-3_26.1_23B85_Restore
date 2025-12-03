@interface ColorWellView
- (void)layoutSubviews;
@end

@implementation ColorWellView

- (void)layoutSubviews
{
  selfCopy = self;
  layer = [(ColorWellView *)selfCopy layer];
  [(ColorWellView *)selfCopy bounds];
  [layer setCornerRadius_];
}

@end