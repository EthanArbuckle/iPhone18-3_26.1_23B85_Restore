@interface DebugFormatInspectorCursorCell
- (_TtC8NewsFeed30DebugFormatInspectorCursorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation DebugFormatInspectorCursorCell

- (_TtC8NewsFeed30DebugFormatInspectorCursorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_1D726207C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1D60722EC(a3, a4, v6);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1D6072C0C();
}

@end