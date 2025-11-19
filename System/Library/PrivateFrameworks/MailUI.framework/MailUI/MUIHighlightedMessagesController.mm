@interface MUIHighlightedMessagesController
- (EFDebouncer)reloadDebouncer;
- (EFDebouncer)reloadWithEmptyUpdateDebouncer;
- (EMMessageRepository)repository;
- (MUIHighlightedMessagesController)initWithRepository:(id)a3 delegate:(id)a4;
- (MUIHighlightedMessagesControllerDelegate)delegate;
- (NSArray)mailboxes;
- (NSPredicate)filterPredicate;
- (id)messageList;
- (void)collection:(id)a3 addedItemIDs:(id)a4 after:(id)a5;
- (void)collection:(id)a3 addedItemIDs:(id)a4 before:(id)a5;
- (void)collection:(id)a3 changedItemIDs:(id)a4;
- (void)collection:(id)a3 deletedItemIDs:(id)a4;
- (void)collection:(id)a3 movedItemIDs:(id)a4 after:(id)a5;
- (void)collection:(id)a3 movedItemIDs:(id)a4 before:(id)a5;
- (void)collection:(id)a3 replacedExistingItemID:(id)a4 withNewItemID:(id)a5;
- (void)collectionDidFinishInitialLoad:(id)a3;
- (void)reloadApplyingEmptyUpdate:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setFilterPredicate:(id)a3;
- (void)setMailboxes:(id)a3;
- (void)setReloadDebouncer:(id)a3;
- (void)setReloadWithEmptyUpdateDebouncer:(id)a3;
@end

@implementation MUIHighlightedMessagesController

- (void)reloadApplyingEmptyUpdate:(BOOL)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v4 = sub_214CCD394();
  sub_214A624A4(v4 & 1);
  MEMORY[0x277D82BD8](self);
}

- (MUIHighlightedMessagesController)initWithRepository:(id)a3 delegate:(id)a4
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  swift_unknownObjectRetain();
  return sub_214A634BC(a3, a4);
}

- (void)setMailboxes:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  sub_214A63684();
  v4 = sub_214CCF7E4();
  sub_214A63874(v4);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
}

- (EFDebouncer)reloadWithEmptyUpdateDebouncer
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = sub_214A66AB8();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (void)setFilterPredicate:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  sub_214A66EDC(a3);
  MEMORY[0x277D82BD8](self);
}

- (EFDebouncer)reloadDebouncer
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = sub_214A6721C();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (NSArray)mailboxes
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  sub_214A7C39C();
  MEMORY[0x277D82BD8](self);
  sub_214A63684();
  v5 = sub_214CCF7D4();

  return v5;
}

- (NSPredicate)filterPredicate
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = sub_214A7C628();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (MUIHighlightedMessagesControllerDelegate)delegate
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = sub_214A7C70C();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (EMMessageRepository)repository
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = sub_214A7CF7C();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 before:(id)a5
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](a4);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  v6 = sub_214CCF7E4();
  MUIHighlightedMessagesController.collection(_:addedItemIDs:before:)(a3, v6, a5);

  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collectionDidFinishInitialLoad:(id)a3
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  MUIHighlightedMessagesController.collectionDidFinishInitialLoad(_:)(a3);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
}

- (void)setDelegate:(id)a3
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  sub_214C1653C();
  MEMORY[0x277D82BD8](self);
}

- (void)setReloadDebouncer:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  sub_214C1662C(a3);
  MEMORY[0x277D82BD8](self);
}

- (void)setReloadWithEmptyUpdateDebouncer:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  sub_214C16734(a3);
  MEMORY[0x277D82BD8](self);
}

- (id)messageList
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = sub_214C16834();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 after:(id)a5
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](a4);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  v6 = sub_214CCF7E4();
  MUIHighlightedMessagesController.collection(_:addedItemIDs:after:)(a3, v6, a5);

  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collection:(id)a3 movedItemIDs:(id)a4 before:(id)a5
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](a4);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  v6 = sub_214CCF7E4();
  MUIHighlightedMessagesController.collection(_:movedItemIDs:before:)(a3, v6, a5);

  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collection:(id)a3 movedItemIDs:(id)a4 after:(id)a5
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](a4);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  v6 = sub_214CCF7E4();
  MUIHighlightedMessagesController.collection(_:movedItemIDs:after:)(a3, v6, a5);

  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collection:(id)a3 changedItemIDs:(id)a4
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  v5 = sub_214CCF7E4();
  MUIHighlightedMessagesController.collection(_:changedItemIDs:)(a3, v5);

  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
}

- (void)collection:(id)a3 deletedItemIDs:(id)a4
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  v5 = sub_214CCF7E4();
  MUIHighlightedMessagesController.collection(_:deletedItemIDs:)(a3, v5);

  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
}

- (void)collection:(id)a3 replacedExistingItemID:(id)a4 withNewItemID:(id)a5
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  MUIHighlightedMessagesController.collection(_:replacedExisting:withNewItemID:)(a3, a4, a5);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

@end