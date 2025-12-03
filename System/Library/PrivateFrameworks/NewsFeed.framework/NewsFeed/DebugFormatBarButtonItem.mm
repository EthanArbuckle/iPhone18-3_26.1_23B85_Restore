@interface DebugFormatBarButtonItem
- (_TtC8NewsFeed24DebugFormatBarButtonItem)init;
- (_TtC8NewsFeed24DebugFormatBarButtonItem)initWithCoder:(id)coder;
@end

@implementation DebugFormatBarButtonItem

- (_TtC8NewsFeed24DebugFormatBarButtonItem)init
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DebugFormatBarButtonItem();
  v2 = [(DebugFormatBarButtonItem *)&v7 init];
  v3 = objc_opt_self();
  v4 = v2;
  secondaryLabelColor = [v3 secondaryLabelColor];
  [(DebugFormatBarButtonItem *)v4 setTintColor:secondaryLabelColor];

  return v4;
}

- (_TtC8NewsFeed24DebugFormatBarButtonItem)initWithCoder:(id)coder
{
  result = sub_1D726402C();
  __break(1u);
  return result;
}

@end