@interface MUEVChargingSectionController
- (BOOL)hasContent;
- (BOOL)isActive;
- (MUEVChargingSectionController)initWithMapItem:(id)item;
- (MUPlaceSectionControllerDelegate)delegate;
- (NSArray)sectionViews;
- (void)setDelegate:(id)delegate;
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
  delegate = [(MUPlaceSectionController *)&v4 delegate];

  return delegate;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  EVChargingSectionController.delegate.setter(delegate);
}

- (MUEVChargingSectionController)initWithMapItem:(id)item
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end