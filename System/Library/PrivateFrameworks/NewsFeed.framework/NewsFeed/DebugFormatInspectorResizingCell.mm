@interface DebugFormatInspectorResizingCell
- (_TtC8NewsFeed32DebugFormatInspectorResizingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation DebugFormatInspectorResizingCell

- (_TtC8NewsFeed32DebugFormatInspectorResizingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_1D726207C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1D5F43794(style, identifier, v6);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D5F43D54();
}

@end