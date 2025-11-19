@interface AnimatableAdaptiveColorMatrixView
+ (Class)layerClass;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (_TtC9DropletUI33AnimatableAdaptiveColorMatrixView)initWithCoder:(id)a3;
@end

@implementation AnimatableAdaptiveColorMatrixView

+ (Class)layerClass
{
  sub_249EA1BF8(0, &qword_281252CF8, 0x277CD9E08);

  return swift_getObjCClassFromMetadata();
}

- (_TtC9DropletUI33AnimatableAdaptiveColorMatrixView)initWithCoder:(id)a3
{
  v3 = (self + OBJC_IVAR____TtC9DropletUI33AnimatableAdaptiveColorMatrixView_inputColorMatrix);
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  result = sub_249ED6E50();
  __break(1u);
  return result;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if (a3)
  {
    v4 = sub_249ED6C70();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = qword_281252CA8;
  v8 = self;
  if (v7 != -1)
  {
    swift_once();
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_6:
  v9 = v4 == qword_281253390 && v6 == *algn_281253398;
  if (v9 || (sub_249ED6ED0() & 1) != 0)
  {

    return 1;
  }

  v11 = sub_249ED6C60();
LABEL_15:
  v13.receiver = v8;
  v13.super_class = type metadata accessor for AnimatableAdaptiveColorMatrixView();
  v12 = [(AnimatableAdaptiveColorMatrixView *)&v13 _shouldAnimatePropertyWithKey:v11];

  return v12;
}

@end