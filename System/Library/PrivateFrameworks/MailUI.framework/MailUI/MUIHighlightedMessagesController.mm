@interface MUIHighlightedMessagesController
- (EFDebouncer)reloadDebouncer;
- (EFDebouncer)reloadWithEmptyUpdateDebouncer;
- (EMMessageRepository)repository;
- (MUIHighlightedMessagesController)initWithRepository:(id)repository delegate:(id)delegate;
- (MUIHighlightedMessagesControllerDelegate)delegate;
- (NSArray)mailboxes;
- (NSPredicate)filterPredicate;
- (id)messageList;
- (void)collection:(id)collection addedItemIDs:(id)ds after:(id)after;
- (void)collection:(id)collection addedItemIDs:(id)ds before:(id)before;
- (void)collection:(id)collection changedItemIDs:(id)ds;
- (void)collection:(id)collection deletedItemIDs:(id)ds;
- (void)collection:(id)collection movedItemIDs:(id)ds after:(id)after;
- (void)collection:(id)collection movedItemIDs:(id)ds before:(id)before;
- (void)collection:(id)collection replacedExistingItemID:(id)d withNewItemID:(id)iD;
- (void)collectionDidFinishInitialLoad:(id)load;
- (void)reloadApplyingEmptyUpdate:(BOOL)update;
- (void)setDelegate:(id)delegate;
- (void)setFilterPredicate:(id)predicate;
- (void)setMailboxes:(id)mailboxes;
- (void)setReloadDebouncer:(id)debouncer;
- (void)setReloadWithEmptyUpdateDebouncer:(id)debouncer;
@end

@implementation MUIHighlightedMessagesController

- (void)reloadApplyingEmptyUpdate:(BOOL)update
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v4 = sub_214CCD394();
  sub_214A624A4(v4 & 1);
  MEMORY[0x277D82BD8](self);
}

- (MUIHighlightedMessagesController)initWithRepository:(id)repository delegate:(id)delegate
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](repository);
  swift_unknownObjectRetain();
  return sub_214A634BC(repository, delegate);
}

- (void)setMailboxes:(id)mailboxes
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](mailboxes);
  MEMORY[0x277D82BE0](self);
  sub_214A63684();
  v4 = sub_214CCF7E4();
  sub_214A63874(v4);
  MEMORY[0x277D82BD8](mailboxes);
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

- (void)setFilterPredicate:(id)predicate
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](predicate);
  MEMORY[0x277D82BE0](self);
  sub_214A66EDC(predicate);
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

- (void)collection:(id)collection addedItemIDs:(id)ds before:(id)before
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](ds);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  v6 = sub_214CCF7E4();
  MUIHighlightedMessagesController.collection(_:addedItemIDs:before:)(collection, v6, before);

  MEMORY[0x277D82BD8](ds);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collectionDidFinishInitialLoad:(id)load
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  MUIHighlightedMessagesController.collectionDidFinishInitialLoad(_:)(load);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
}

- (void)setDelegate:(id)delegate
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  sub_214C1653C();
  MEMORY[0x277D82BD8](self);
}

- (void)setReloadDebouncer:(id)debouncer
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](debouncer);
  MEMORY[0x277D82BE0](self);
  sub_214C1662C(debouncer);
  MEMORY[0x277D82BD8](self);
}

- (void)setReloadWithEmptyUpdateDebouncer:(id)debouncer
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](debouncer);
  MEMORY[0x277D82BE0](self);
  sub_214C16734(debouncer);
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

- (void)collection:(id)collection addedItemIDs:(id)ds after:(id)after
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](ds);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  v6 = sub_214CCF7E4();
  MUIHighlightedMessagesController.collection(_:addedItemIDs:after:)(collection, v6, after);

  MEMORY[0x277D82BD8](ds);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collection:(id)collection movedItemIDs:(id)ds before:(id)before
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](ds);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  v6 = sub_214CCF7E4();
  MUIHighlightedMessagesController.collection(_:movedItemIDs:before:)(collection, v6, before);

  MEMORY[0x277D82BD8](ds);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collection:(id)collection movedItemIDs:(id)ds after:(id)after
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](ds);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  v6 = sub_214CCF7E4();
  MUIHighlightedMessagesController.collection(_:movedItemIDs:after:)(collection, v6, after);

  MEMORY[0x277D82BD8](ds);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collection:(id)collection changedItemIDs:(id)ds
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](ds);
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  v5 = sub_214CCF7E4();
  MUIHighlightedMessagesController.collection(_:changedItemIDs:)(collection, v5);

  MEMORY[0x277D82BD8](ds);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
}

- (void)collection:(id)collection deletedItemIDs:(id)ds
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](ds);
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  v5 = sub_214CCF7E4();
  MUIHighlightedMessagesController.collection(_:deletedItemIDs:)(collection, v5);

  MEMORY[0x277D82BD8](ds);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
}

- (void)collection:(id)collection replacedExistingItemID:(id)d withNewItemID:(id)iD
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  MUIHighlightedMessagesController.collection(_:replacedExisting:withNewItemID:)(collection, d, iD);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

@end