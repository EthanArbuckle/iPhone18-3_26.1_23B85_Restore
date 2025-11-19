@interface SelectableItemModuleController
- (BOOL)canSelectItem:(id)a3;
- (_TtC6HomeUI30SelectableItemModuleController)initWithModule:(id)a3;
- (unint64_t)didSelectItem:(id)a3;
- (void)configureCell:(id)a3 forItem:(id)a4;
@end

@implementation SelectableItemModuleController

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20CF2B80C(v6, v7);
}

- (BOOL)canSelectItem:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_20CF2BC6C(v4);

  return self & 1;
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20CF2C27C(v4);

  return 0;
}

- (_TtC6HomeUI30SelectableItemModuleController)initWithModule:(id)a3
{
  *(&self->super._host + OBJC_IVAR____TtC6HomeUI30SelectableItemModuleController_delegate) = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = type metadata accessor for SelectableItemModuleController();
  return [(HUItemModuleController *)&v6 initWithModule:a3];
}

@end