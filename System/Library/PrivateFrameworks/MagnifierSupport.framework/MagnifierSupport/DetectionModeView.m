@interface DetectionModeView
- (NSArray)accessibilityCustomActions;
- (_TtC16MagnifierSupport17DetectionModeView)initWithFrame:(CGRect)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (uint64_t)toggleDetection;
- (void)didPanPreviewView:(id)a3;
- (void)didPinchToZoom:(id)a3;
- (void)didTapRecordButton:(id)a3;
- (void)didTapRestartButton:(id)a3;
- (void)didTapTapToRadarButton:(id)a3;
- (void)pauseSpeech;
- (void)setAccessibilityCustomActions:(id)a3;
@end

@implementation DetectionModeView

- (void)pauseSpeech
{
  v2 = qword_281544FE0;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
}

- (NSArray)accessibilityCustomActions
{
  v2 = self;
  v3 = sub_257E7EC98();

  if (v3)
  {
    sub_257BD2C2C(0, &qword_281543E70);
    v4 = sub_257ECF7F0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAccessibilityCustomActions:(id)a3
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_257BD2C2C(0, &qword_281543E70);
    sub_257ECF810();
    v6 = self;
    a3 = sub_257ECF7F0();
  }

  else
  {
    v7 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(DetectionModeView *)&v8 setAccessibilityCustomActions:a3];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v2 = self;
  v3 = sub_257E7F92C();

  if (v3)
  {
    v4 = sub_257ECF7F0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)didTapRecordButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257E811EC();
}

- (void)didTapTapToRadarButton:(id)a3
{
  v4 = self + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_arDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 24);
    v8 = self;
    v7(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)didTapRestartButton:(id)a3
{
  v4 = self + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_arDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 32);
    v8 = self;
    v7(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)didPanPreviewView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257E80114(v4);
}

- (void)didPinchToZoom:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257E80AF0(v4);
}

- (_TtC16MagnifierSupport17DetectionModeView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (uint64_t)toggleDetection
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v2 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((v1 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD70();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      return sub_257ECDD70();
    }
  }

  return result;
}

@end