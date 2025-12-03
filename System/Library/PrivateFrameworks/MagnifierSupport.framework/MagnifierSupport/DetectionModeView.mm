@interface DetectionModeView
- (NSArray)accessibilityCustomActions;
- (_TtC16MagnifierSupport17DetectionModeView)initWithFrame:(CGRect)frame;
- (id)_accessibilitySupplementaryFooterViews;
- (uint64_t)toggleDetection;
- (void)didPanPreviewView:(id)view;
- (void)didPinchToZoom:(id)zoom;
- (void)didTapRecordButton:(id)button;
- (void)didTapRestartButton:(id)button;
- (void)didTapTapToRadarButton:(id)button;
- (void)pauseSpeech;
- (void)setAccessibilityCustomActions:(id)actions;
@end

@implementation DetectionModeView

- (void)pauseSpeech
{
  v2 = qword_281544FE0;
  selfCopy = self;
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
  selfCopy = self;
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

- (void)setAccessibilityCustomActions:(id)actions
{
  ObjectType = swift_getObjectType();
  if (actions)
  {
    sub_257BD2C2C(0, &qword_281543E70);
    sub_257ECF810();
    selfCopy = self;
    actions = sub_257ECF7F0();
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(DetectionModeView *)&v8 setAccessibilityCustomActions:actions];
}

- (id)_accessibilitySupplementaryFooterViews
{
  selfCopy = self;
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

- (void)didTapRecordButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_257E811EC();
}

- (void)didTapTapToRadarButton:(id)button
{
  v4 = self + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_arDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 24);
    selfCopy = self;
    v7(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)didTapRestartButton:(id)button
{
  v4 = self + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_arDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 32);
    selfCopy = self;
    v7(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)didPanPreviewView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_257E80114(viewCopy);
}

- (void)didPinchToZoom:(id)zoom
{
  zoomCopy = zoom;
  selfCopy = self;
  sub_257E80AF0(zoomCopy);
}

- (_TtC16MagnifierSupport17DetectionModeView)initWithFrame:(CGRect)frame
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