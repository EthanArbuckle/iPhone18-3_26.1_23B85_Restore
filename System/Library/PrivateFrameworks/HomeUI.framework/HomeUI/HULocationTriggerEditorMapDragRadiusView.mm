@interface HULocationTriggerEditorMapDragRadiusView
- (HULocationTriggerEditorMapDragRadiusView)initWithFrame:(CGRect)frame;
- (HULocationTriggerEditorMapDragRadiusView)initWithFrame:(CGRect)frame radiusInMeters:(double)meters delegate:(id)delegate;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (unint64_t)proximity;
- (void)dragHandleDidMove:(id)move;
- (void)drawRect:(CGRect)rect;
- (void)setProximity:(unint64_t)proximity;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HULocationTriggerEditorMapDragRadiusView

- (unint64_t)proximity
{
  v3 = OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_proximity;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setProximity:(unint64_t)proximity
{
  v5 = OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_proximity;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = proximity;
  selfCopy = self;
  sub_20D081FFC(v6);
}

- (HULocationTriggerEditorMapDragRadiusView)initWithFrame:(CGRect)frame radiusInMeters:(double)meters delegate:(id)delegate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectRetain();
  return LocationTriggerEditorMapDragRadiusView.init(frame:radiusInMeters:delegate:)(x, y, width, height, meters);
}

- (HULocationTriggerEditorMapDragRadiusView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dragHandleDidMove:(id)move
{
  moveCopy = move;
  selfCopy = self;
  sub_20D08352C(move);
}

- (void)drawRect:(CGRect)rect
{
  selfCopy = self;
  _s6HomeUI38LocationTriggerEditorMapDragRadiusViewC4drawyySo6CGRectVF_0();
}

- (void)traitCollectionDidChange:(id)change
{
  if (change)
  {
    selfCopy = self;
    changeCopy = change;
    sub_20D082EEC([changeCopy userInterfaceStyle]);
  }
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v7 = objc_allocWithZone(MEMORY[0x277CD4ED0]);
    viewCopy = view;
    swift_unknownObjectRetain();
    selfCopy = self;
    v10 = sub_20D5677F8();
    v11 = [v7 initWithAnnotation:annotation reuseIdentifier:v10];

    [v11 setTitleVisibility_];
    [v11 setSubtitleVisibility_];
    swift_unknownObjectRelease();
  }

  else
  {
    viewCopy2 = view;
    v11 = 0;
  }

  return v11;
}

@end