@interface RouteButton.Coordinator
- (_TtCV11MediaCoreUIP33_269E8A2553F691DD0D96A2E732A5863B11RouteButton11Coordinator)init;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)onTouchDown:(id)down;
@end

@implementation RouteButton.Coordinator

- (void)onTouchDown:(id)down
{
  downCopy = down;
  selfCopy = self;
  v5 = sub_1C5B9B6A0();
  [v5 setSourceView_];

  v6 = *(&selfCopy->super.isa + OBJC_IVAR____TtCV11MediaCoreUIP33_269E8A2553F691DD0D96A2E732A5863B11RouteButton11Coordinator____lazy_storage___mediaControls);
  [v6 startPrewarming];
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = sub_1C5B9C830(interactionCopy);

  return v9;
}

- (_TtCV11MediaCoreUIP33_269E8A2553F691DD0D96A2E732A5863B11RouteButton11Coordinator)init
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtCV11MediaCoreUIP33_269E8A2553F691DD0D96A2E732A5863B11RouteButton11Coordinator____lazy_storage___mediaControls) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(RouteButton.Coordinator *)&v5 init];
}

@end