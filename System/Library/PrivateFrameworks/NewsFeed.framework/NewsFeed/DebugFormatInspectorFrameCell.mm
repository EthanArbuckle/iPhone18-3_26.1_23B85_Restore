@interface DebugFormatInspectorFrameCell
- (_TtC8NewsFeed29DebugFormatInspectorFrameCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)didTapBorderButtonWithSender:(id)a3;
- (void)didTapHiddenButtonWithSender:(id)a3;
- (void)layoutSubviews;
@end

@implementation DebugFormatInspectorFrameCell

- (_TtC8NewsFeed29DebugFormatInspectorFrameCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_1D6956B70(a3, a4, v6);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1D6957660();
}

- (void)didTapBorderButtonWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D69587DC(v4);
}

- (void)didTapHiddenButtonWithSender:(id)a3
{
  swift_getObjectType();
  v4 = qword_1EC87D5F8;
  v5 = self;
  if (v4 != -1)
  {
    swift_once();
  }

  sub_1D6959DCC(&qword_1EC88E930);
  sub_1D725964C();
  sub_1D6959DCC(&qword_1EC88E938);
  sub_1D725989C();
}

@end