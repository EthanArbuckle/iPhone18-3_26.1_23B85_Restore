@interface DebugFormatInspectorCursorCell
- (_TtC8NewsFeed30DebugFormatInspectorCursorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation DebugFormatInspectorCursorCell

- (_TtC8NewsFeed30DebugFormatInspectorCursorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_1D60722EC(style, identifier, v6);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D6072C0C();
}

@end