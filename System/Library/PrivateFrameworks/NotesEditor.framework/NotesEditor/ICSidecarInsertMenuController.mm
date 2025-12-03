@interface ICSidecarInsertMenuController
- (CGRect)presentingSourceRect;
- (ICSidecarInsertMenuController)init;
- (id)didReceiveItems;
- (id)menu;
- (id)menuDidChange;
- (void)cancel;
- (void)dealloc;
- (void)setDidReceiveItems:(id)items;
- (void)setMenuDidChange:(id)change;
- (void)setPresentingSourceRect:(CGRect)rect;
- (void)sidecarDevicesDidChange:(id)change;
@end

@implementation ICSidecarInsertMenuController

- (CGRect)presentingSourceRect
{
  v2 = (self + OBJC_IVAR___ICSidecarInsertMenuController_presentingSourceRect);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setPresentingSourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = (self + OBJC_IVAR___ICSidecarInsertMenuController_presentingSourceRect);
  swift_beginAccess();
  *v7 = x;
  v7[1] = y;
  v7[2] = width;
  v7[3] = height;
}

- (ICSidecarInsertMenuController)init
{
  ObjectType = swift_getObjectType();
  type metadata accessor for SidecarProvider();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  v4 = sub_215396864(v3, objc_allocWithZone(ObjectType));
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver_];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(ICSidecarInsertMenuController *)&v7 dealloc];
}

- (id)menuDidChange
{
  v2 = (self + OBJC_IVAR___ICSidecarInsertMenuController_menuDidChange);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2151BD7E4;
    aBlock[3] = &block_descriptor_22;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMenuDidChange:(id)change
{
  v4 = _Block_copy(change);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_21532FCDC;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___ICSidecarInsertMenuController_menuDidChange);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_2151AF750(v7);
}

- (id)menu
{
  selfCopy = self;
  inserted = SidecarInsertMenuController.menu()();

  return inserted;
}

- (void)cancel
{
  v3 = swift_allocObject();
  *(v3 + 16) = self;
  selfCopy = self;
  sub_2153958C4(sub_215397108, v3);
}

- (id)didReceiveItems
{
  v2 = (self + OBJC_IVAR___ICSidecarInsertMenuController_didReceiveItems);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_215395D74;
    aBlock[3] = &block_descriptor_16;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDidReceiveItems:(id)items
{
  v4 = _Block_copy(items);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_215396CD8;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___ICSidecarInsertMenuController_didReceiveItems);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_2151AF750(v7);
}

- (void)sidecarDevicesDidChange:(id)change
{
  v4 = sub_21549E19C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  selfCopy = self;
  sub_2153965B8();

  (*(v5 + 8))(v7, v4);
}

@end