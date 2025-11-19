@interface FormatAccessibilityShadowElement
- (CGRect)accessibilityFrame;
- (NSArray)accessibilityCustomActions;
- (_TtC8NewsFeed32FormatAccessibilityShadowElement)init;
- (_TtC8NewsFeed32FormatAccessibilityShadowElement)initWithAccessibilityContainer:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation FormatAccessibilityShadowElement

- (unint64_t)accessibilityTraits
{
  v2 = self;
  v3 = sub_1D6A6082C();

  return v3;
}

- (NSArray)accessibilityCustomActions
{
  v2 = self;
  v3 = sub_1D6A5E96C();
  if ((v4 & 0x100) != 0 || (v4 & 1) != 0 && !v3)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D6A5E790();
    sub_1D7046E0C(v6);

    sub_1D6A61428(0, &qword_1EC8909A8, &unk_1EDF04400);
    sub_1D6A61084();
    sub_1D72623CC();

    sub_1D5B5A498(0, &unk_1EDF04400);
    v7 = sub_1D726265C();

    v5 = v7;
  }

  return v5;
}

- (CGRect)accessibilityFrame
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = self;
    [v4 accessibilityFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = 0.0;
    v9 = 0.0;
    v11 = 0.0;
    v13 = 0.0;
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (_TtC8NewsFeed32FormatAccessibilityShadowElement)initWithAccessibilityContainer:(id)a3
{
  swift_unknownObjectRetain();
  sub_1D7263AEC();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8NewsFeed32FormatAccessibilityShadowElement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end