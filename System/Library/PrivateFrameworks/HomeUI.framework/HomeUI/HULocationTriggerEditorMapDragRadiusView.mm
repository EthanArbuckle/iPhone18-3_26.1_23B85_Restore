@interface HULocationTriggerEditorMapDragRadiusView
- (HULocationTriggerEditorMapDragRadiusView)initWithFrame:(CGRect)a3;
- (HULocationTriggerEditorMapDragRadiusView)initWithFrame:(CGRect)a3 radiusInMeters:(double)a4 delegate:(id)a5;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (unint64_t)proximity;
- (void)dragHandleDidMove:(id)a3;
- (void)drawRect:(CGRect)a3;
- (void)setProximity:(unint64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HULocationTriggerEditorMapDragRadiusView

- (unint64_t)proximity
{
  v3 = OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_proximity;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setProximity:(unint64_t)a3
{
  v5 = OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_proximity;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = self;
  sub_20D081FFC(v6);
}

- (HULocationTriggerEditorMapDragRadiusView)initWithFrame:(CGRect)a3 radiusInMeters:(double)a4 delegate:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectRetain();
  return LocationTriggerEditorMapDragRadiusView.init(frame:radiusInMeters:delegate:)(x, y, width, height, a4);
}

- (HULocationTriggerEditorMapDragRadiusView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dragHandleDidMove:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_20D08352C(a3);
}

- (void)drawRect:(CGRect)a3
{
  v3 = self;
  _s6HomeUI38LocationTriggerEditorMapDragRadiusViewC4drawyySo6CGRectVF_0();
}

- (void)traitCollectionDidChange:(id)a3
{
  if (a3)
  {
    v5 = self;
    v4 = a3;
    sub_20D082EEC([v4 userInterfaceStyle]);
  }
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v7 = objc_allocWithZone(MEMORY[0x277CD4ED0]);
    v8 = a3;
    swift_unknownObjectRetain();
    v9 = self;
    v10 = sub_20D5677F8();
    v11 = [v7 initWithAnnotation:a4 reuseIdentifier:v10];

    [v11 setTitleVisibility_];
    [v11 setSubtitleVisibility_];
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = a3;
    v11 = 0;
  }

  return v11;
}

@end