@interface RecentsStyleListCell
- (_TtC10CallsAppUI20RecentsStyleListCell)initWithCoder:(id)a3;
- (_TtC10CallsAppUI20RecentsStyleListCell)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation RecentsStyleListCell

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_1CFC9DA38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9DA28();
  v9 = self;
  sub_1CFC817E4();

  (*(v5 + 8))(v8, v4);
}

- (_TtC10CallsAppUI20RecentsStyleListCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RecentsStyleListCell();
  return [(RecentsStyleListCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC10CallsAppUI20RecentsStyleListCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for RecentsStyleListCell();
  v4 = a3;
  v5 = [(RecentsStyleListCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end