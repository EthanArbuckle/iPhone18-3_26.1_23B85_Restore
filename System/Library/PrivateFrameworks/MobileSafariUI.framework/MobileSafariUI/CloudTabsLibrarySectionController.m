@interface CloudTabsLibrarySectionController
- (LibraryItemController)headerItemController;
- (NSArray)itemControllers;
- (_TtC14MobileSafariUI33CloudTabsLibrarySectionController)initWithConfiguration:(id)a3;
@end

@implementation CloudTabsLibrarySectionController

- (_TtC14MobileSafariUI33CloudTabsLibrarySectionController)initWithConfiguration:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC14MobileSafariUI33CloudTabsLibrarySectionController_recentsStore) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC14MobileSafariUI33CloudTabsLibrarySectionController____lazy_storage____headerItemController) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CloudTabsLibrarySectionController();
  v4 = a3;
  v5 = [(LibrarySectionController *)&v7 initWithConfiguration:v4];
  sub_215A034B8();

  return v5;
}

- (LibraryItemController)headerItemController
{
  v2 = self;
  v3 = sub_215A038E8();

  return v3;
}

- (NSArray)itemControllers
{
  v2 = self;
  sub_21583F878();

  sub_21583FA4C();
  v3 = sub_215A705D0();

  return v3;
}

@end