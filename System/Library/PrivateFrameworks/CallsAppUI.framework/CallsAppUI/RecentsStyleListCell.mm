@interface RecentsStyleListCell
- (_TtC10CallsAppUI20RecentsStyleListCell)initWithCoder:(id)coder;
- (_TtC10CallsAppUI20RecentsStyleListCell)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation RecentsStyleListCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_1CFC9DA38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9DA28();
  selfCopy = self;
  sub_1CFC817E4();

  (*(v5 + 8))(v8, v4);
}

- (_TtC10CallsAppUI20RecentsStyleListCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RecentsStyleListCell();
  return [(RecentsStyleListCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC10CallsAppUI20RecentsStyleListCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for RecentsStyleListCell();
  coderCopy = coder;
  v5 = [(RecentsStyleListCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end