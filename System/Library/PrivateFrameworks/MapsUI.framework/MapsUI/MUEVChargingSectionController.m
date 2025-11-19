@interface MUEVChargingSectionController
- (BOOL)hasContent;
- (BOOL)isActive;
- (MUEVChargingSectionController)initWithMapItem:(id)a3;
- (MUPlaceSectionControllerDelegate)delegate;
- (NSArray)sectionViews;
- (void)setDelegate:(id)a3;
@end

@implementation MUEVChargingSectionController

- (BOOL)isActive
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MUPlaceSectionController *)&v3 isActive];
}

- (NSArray)sectionViews
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUEVChargingSectionController__sectionViews);
  sub_1C570CB68();

  v3 = sub_1C584F750();

  return v3;
}

- (BOOL)hasContent
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUEVChargingSectionController__sectionViews);
  if (v2 >> 62)
  {
    v3 = sub_1C584FB90();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 != 0;
}

- (MUPlaceSectionControllerDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = [(MUPlaceSectionController *)&v4 delegate];

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  EVChargingSectionController.delegate.setter(a3);
}

- (MUEVChargingSectionController)initWithMapItem:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end