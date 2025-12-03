@interface DebugFormatInspectorFrameCell
- (_TtC8NewsFeed29DebugFormatInspectorFrameCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)didTapBorderButtonWithSender:(id)sender;
- (void)didTapHiddenButtonWithSender:(id)sender;
- (void)layoutSubviews;
@end

@implementation DebugFormatInspectorFrameCell

- (_TtC8NewsFeed29DebugFormatInspectorFrameCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_1D6956B70(style, identifier, v6);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D6957660();
}

- (void)didTapBorderButtonWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1D69587DC(senderCopy);
}

- (void)didTapHiddenButtonWithSender:(id)sender
{
  swift_getObjectType();
  v4 = qword_1EC87D5F8;
  selfCopy = self;
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