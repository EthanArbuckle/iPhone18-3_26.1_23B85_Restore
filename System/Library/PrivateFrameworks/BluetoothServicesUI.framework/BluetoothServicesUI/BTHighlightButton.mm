@interface BTHighlightButton
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation BTHighlightButton

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = BTHighlightButton;
  [(BTHighlightButton *)&v6 setHighlighted:?];
  v5 = 1.0;
  if (highlightedCopy)
  {
    v5 = 0.5;
  }

  [(BTHighlightButton *)self setAlpha:v5];
}

@end