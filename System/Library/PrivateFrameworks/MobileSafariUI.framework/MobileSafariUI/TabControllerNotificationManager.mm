@interface TabControllerNotificationManager
- (TabControllerNotificationManager)init;
- (TabControllerNotificationManager)initWithTabController:(id)controller;
- (TabControllerNotificationManagerDelegate)delegate;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)didChangeCurrentTabDocuments;
- (void)didCloseTabDocuments:(id)documents includingActiveTab:(BOOL)tab;
- (void)didEndUpdates;
- (void)didInsertTabDocument:(id)document inBackground:(BOOL)background;
- (void)didMoveTabDocument:(id)document overTabDocument:(id)tabDocument;
- (void)didReplaceTabDocument:(id)document withTabDocument:(id)tabDocument replacedActiveTab:(BOOL)tab;
- (void)didSwitchFromTabDocument:(id)document toTabDocument:(id)tabDocument;
- (void)didSwitchFromTabGroup:(id)group;
- (void)tabDocumentCountDidChange;
- (void)willBeginUpdates;
- (void)willSwitchFrom:(id)from to:(id)to;
@end

@implementation TabControllerNotificationManager

- (TabControllerNotificationManagerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (TabControllerNotificationManager)initWithTabController:(id)controller
{
  controllerCopy = controller;
  v4 = sub_215A1B790();

  return v4;
}

- (void)dealloc
{
  selfCopy = self;
  sub_215A1A2A4();
  v3.receiver = selfCopy;
  v3.super_class = TabControllerNotificationManager;
  [(TabControllerNotificationManager *)&v3 dealloc];
}

- (void)willSwitchFrom:(id)from to:(id)to
{
  v7 = *(self + OBJC_IVAR___TabControllerNotificationManager_observers);
  fromCopy = from;
  toCopy = to;
  selfCopy = self;
  v10 = v7;
  sub_215A1BE58(v10, selfCopy, from, toCopy, &selRef_tabController_willSwitchFromTabDocument_toTabDocument_);
}

- (void)addObserver:(id)observer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_215A1A594(observer);
  swift_unknownObjectRelease();
}

- (void)tabDocumentCountDidChange
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  selfCopy = self;
  sub_215A1B868(0, 0xD00000000000001BLL, 0x8000000215AC28C0, selfCopy, v3);
}

- (void)didSwitchFromTabDocument:(id)document toTabDocument:(id)tabDocument
{
  documentCopy = document;
  tabDocumentCopy = tabDocument;
  selfCopy = self;
  sub_215A1A794(document, tabDocumentCopy);
}

- (void)didReplaceTabDocument:(id)document withTabDocument:(id)tabDocument replacedActiveTab:(BOOL)tab
{
  documentCopy = document;
  tabDocumentCopy = tabDocument;
  selfCopy = self;
  sub_215A1A9B0(documentCopy, tabDocumentCopy, tab);
}

- (void)didCloseTabDocuments:(id)documents includingActiveTab:(BOOL)tab
{
  sub_2159F7DA8(0, &qword_27CA7E5C8);
  v6 = sub_215A705E0();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  selfCopy = self;
  sub_215A1CEBC(tab, 0xD00000000000001FLL, 0x8000000215AC2850, selfCopy, v7, v6);
}

- (void)didInsertTabDocument:(id)document inBackground:(BOOL)background
{
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  documentCopy = document;
  selfCopy = self;
  sub_215A1D510(!background, 0xD00000000000001ALL, 0x8000000215AC2830, selfCopy, v7, documentCopy);
}

- (void)didMoveTabDocument:(id)document overTabDocument:(id)tabDocument
{
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  documentCopy = document;
  tabDocumentCopy = tabDocument;
  selfCopy = self;
  sub_215A1DB74(0, 0xD00000000000001BLL, 0x8000000215AC2810, selfCopy, v7, documentCopy, tabDocumentCopy);
}

- (void)didChangeCurrentTabDocuments
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  selfCopy = self;
  sub_215A1E208(0, 0xD00000000000001ELL, 0x8000000215AC27F0, selfCopy, v3);
}

- (void)didSwitchFromTabGroup:(id)group
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  groupCopy = group;
  selfCopy = self;
  sub_215A1E964(1, 0xD000000000000010, 0x8000000215AC27D0, selfCopy, v5, groupCopy);
}

- (void)willBeginUpdates
{
  selfCopy = self;
  sub_215A1B254();
}

- (void)didEndUpdates
{
  selfCopy = self;
  sub_215A1B3BC();
}

- (TabControllerNotificationManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end