@interface TopicColorFeedNavImageStyler
- (UIFont)tagTitleFont;
@end

@implementation TopicColorFeedNavImageStyler

- (UIFont)tagTitleFont
{
  tagTitleFont = [*self->feedNavImageStyler tagTitleFont];

  return tagTitleFont;
}

@end