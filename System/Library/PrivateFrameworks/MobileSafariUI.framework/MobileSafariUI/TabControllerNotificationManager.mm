@interface TabControllerNotificationManager
- (TabControllerNotificationManager)init;
- (TabControllerNotificationManager)initWithTabController:(id)a3;
- (TabControllerNotificationManagerDelegate)delegate;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)didChangeCurrentTabDocuments;
- (void)didCloseTabDocuments:(id)a3 includingActiveTab:(BOOL)a4;
- (void)didEndUpdates;
- (void)didInsertTabDocument:(id)a3 inBackground:(BOOL)a4;
- (void)didMoveTabDocument:(id)a3 overTabDocument:(id)a4;
- (void)didReplaceTabDocument:(id)a3 withTabDocument:(id)a4 replacedActiveTab:(BOOL)a5;
- (void)didSwitchFromTabDocument:(id)a3 toTabDocument:(id)a4;
- (void)didSwitchFromTabGroup:(id)a3;
- (void)tabDocumentCountDidChange;
- (void)willBeginUpdates;
- (void)willSwitchFrom:(id)a3 to:(id)a4;
@end

@implementation TabControllerNotificationManager

- (TabControllerNotificationManagerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (TabControllerNotificationManager)initWithTabController:(id)a3
{
  v3 = a3;
  v4 = sub_215A1B790();

  return v4;
}

- (void)dealloc
{
  v2 = self;
  sub_215A1A2A4();
  v3.receiver = v2;
  v3.super_class = TabControllerNotificationManager;
  [(TabControllerNotificationManager *)&v3 dealloc];
}

- (void)willSwitchFrom:(id)a3 to:(id)a4
{
  v7 = *(self + OBJC_IVAR___TabControllerNotificationManager_observers);
  v8 = a3;
  v9 = a4;
  v11 = self;
  v10 = v7;
  sub_215A1BE58(v10, v11, a3, v9, &selRef_tabController_willSwitchFromTabDocument_toTabDocument_);
}

- (void)addObserver:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_215A1A594(a3);
  swift_unknownObjectRelease();
}

- (void)tabDocumentCountDidChange
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = self;
  sub_215A1B868(0, 0xD00000000000001BLL, 0x8000000215AC28C0, v4, v3);
}

- (void)didSwitchFromTabDocument:(id)a3 toTabDocument:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_215A1A794(a3, v8);
}

- (void)didReplaceTabDocument:(id)a3 withTabDocument:(id)a4 replacedActiveTab:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_215A1A9B0(v8, v9, a5);
}

- (void)didCloseTabDocuments:(id)a3 includingActiveTab:(BOOL)a4
{
  sub_2159F7DA8(0, &qword_27CA7E5C8);
  v6 = sub_215A705E0();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = self;
  sub_215A1CEBC(a4, 0xD00000000000001FLL, 0x8000000215AC2850, v8, v7, v6);
}

- (void)didInsertTabDocument:(id)a3 inBackground:(BOOL)a4
{
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = a3;
  v9 = self;
  sub_215A1D510(!a4, 0xD00000000000001ALL, 0x8000000215AC2830, v9, v7, v8);
}

- (void)didMoveTabDocument:(id)a3 overTabDocument:(id)a4
{
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_215A1DB74(0, 0xD00000000000001BLL, 0x8000000215AC2810, v10, v7, v8, v9);
}

- (void)didChangeCurrentTabDocuments
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = self;
  sub_215A1E208(0, 0xD00000000000001ELL, 0x8000000215AC27F0, v4, v3);
}

- (void)didSwitchFromTabGroup:(id)a3
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = a3;
  v7 = self;
  sub_215A1E964(1, 0xD000000000000010, 0x8000000215AC27D0, v7, v5, v6);
}

- (void)willBeginUpdates
{
  v2 = self;
  sub_215A1B254();
}

- (void)didEndUpdates
{
  v2 = self;
  sub_215A1B3BC();
}

- (TabControllerNotificationManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end