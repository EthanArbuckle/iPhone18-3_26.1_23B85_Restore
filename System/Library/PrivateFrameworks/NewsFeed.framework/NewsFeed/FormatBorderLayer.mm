@interface FormatBorderLayer
- (_TtC8NewsFeedP33_777F7CE0D0BB06B491F265B7F8694DA417FormatBorderLayer)init;
- (_TtC8NewsFeedP33_777F7CE0D0BB06B491F265B7F8694DA417FormatBorderLayer)initWithCoder:(id)a3;
- (_TtC8NewsFeedP33_777F7CE0D0BB06B491F265B7F8694DA417FormatBorderLayer)initWithLayer:(id)a3;
@end

@implementation FormatBorderLayer

- (_TtC8NewsFeedP33_777F7CE0D0BB06B491F265B7F8694DA417FormatBorderLayer)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(FormatBorderLayer *)&v3 init];
}

- (_TtC8NewsFeedP33_777F7CE0D0BB06B491F265B7F8694DA417FormatBorderLayer)initWithLayer:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1D7263AEC();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v5 = sub_1D72646AC();
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(FormatBorderLayer *)&v8 initWithLayer:v5];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

- (_TtC8NewsFeedP33_777F7CE0D0BB06B491F265B7F8694DA417FormatBorderLayer)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(FormatBorderLayer *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end