@interface UITextView(MULabelView)
- (uint64_t)lineBreakMode;
- (uint64_t)numberOfLines;
- (void)setLineBreakMode:()MULabelView;
- (void)setNumberOfLines:()MULabelView;
@end

@implementation UITextView(MULabelView)

- (void)setLineBreakMode:()MULabelView
{
  textContainer = [self textContainer];
  [textContainer setLineBreakMode:a3];
}

- (uint64_t)lineBreakMode
{
  textContainer = [self textContainer];
  lineBreakMode = [textContainer lineBreakMode];

  return lineBreakMode;
}

- (void)setNumberOfLines:()MULabelView
{
  textContainer = [self textContainer];
  [textContainer setMaximumNumberOfLines:a3];
}

- (uint64_t)numberOfLines
{
  textContainer = [self textContainer];
  maximumNumberOfLines = [textContainer maximumNumberOfLines];

  return maximumNumberOfLines;
}

@end