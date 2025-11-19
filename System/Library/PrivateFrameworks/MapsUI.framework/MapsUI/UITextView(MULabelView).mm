@interface UITextView(MULabelView)
- (uint64_t)lineBreakMode;
- (uint64_t)numberOfLines;
- (void)setLineBreakMode:()MULabelView;
- (void)setNumberOfLines:()MULabelView;
@end

@implementation UITextView(MULabelView)

- (void)setLineBreakMode:()MULabelView
{
  v4 = [a1 textContainer];
  [v4 setLineBreakMode:a3];
}

- (uint64_t)lineBreakMode
{
  v1 = [a1 textContainer];
  v2 = [v1 lineBreakMode];

  return v2;
}

- (void)setNumberOfLines:()MULabelView
{
  v4 = [a1 textContainer];
  [v4 setMaximumNumberOfLines:a3];
}

- (uint64_t)numberOfLines
{
  v1 = [a1 textContainer];
  v2 = [v1 maximumNumberOfLines];

  return v2;
}

@end