@interface IconWithNameCell
- (_TtC18HealthExperienceUI16IconWithNameCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI16IconWithNameCell)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)prepareForReuse;
@end

@implementation IconWithNameCell

- (_TtC18HealthExperienceUI16IconWithNameCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  v9 = type metadata accessor for IconWithNameCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v14.receiver = self;
  v14.super_class = v9;
  height = [(IconWithNameCell *)&v14 initWithFrame:x, y, width, height];
  v11 = *((*MEMORY[0x1E69E7D40] & height->super.super.super.super.super.super.isa) + 0x70);
  v12 = height;
  v11();

  return v12;
}

- (_TtC18HealthExperienceUI16IconWithNameCell)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IconWithNameCell();
  v2 = v3.receiver;
  [(IconWithNameCell *)&v3 prepareForReuse];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))(0, 0, 0);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_1BA4A40C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A40B8();
  selfCopy = self;
  sub_1BA31DFC0();

  (*(v5 + 8))(v7, v4);
}

@end