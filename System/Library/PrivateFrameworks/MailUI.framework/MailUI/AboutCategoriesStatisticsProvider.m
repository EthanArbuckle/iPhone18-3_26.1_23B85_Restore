@interface AboutCategoriesStatisticsProvider
- (void)collection:(id)a3 addedItemIDs:(id)a4 after:(id)a5;
- (void)collection:(id)a3 addedItemIDs:(id)a4 before:(id)a5;
- (void)collection:(id)a3 changedItemIDs:(id)a4;
- (void)collection:(id)a3 deletedItemIDs:(id)a4;
- (void)collection:(id)a3 movedItemIDs:(id)a4 after:(id)a5;
- (void)collection:(id)a3 movedItemIDs:(id)a4 before:(id)a5;
- (void)collection:(id)a3 replacedExistingItemID:(id)a4 withNewItemID:(id)a5;
@end

@implementation AboutCategoriesStatisticsProvider

- (void)collection:(id)a3 addedItemIDs:(id)a4 before:(id)a5
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](a4);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  sub_214CCF7E4();
  sub_214B10980();

  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 after:(id)a5
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](a4);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  sub_214CCF7E4();
  sub_214B10980();

  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collection:(id)a3 movedItemIDs:(id)a4 before:(id)a5
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](a4);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  sub_214CCF7E4();
  sub_214B10980();

  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collection:(id)a3 movedItemIDs:(id)a4 after:(id)a5
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](a4);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  sub_214CCF7E4();
  sub_214B10980();

  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collection:(id)a3 changedItemIDs:(id)a4
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  sub_214CCF7E4();
  sub_214B10CFC();

  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
}

- (void)collection:(id)a3 deletedItemIDs:(id)a4
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  sub_214CCF7E4();
  sub_214B10CFC();

  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
}

- (void)collection:(id)a3 replacedExistingItemID:(id)a4 withNewItemID:(id)a5
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  sub_214B10980();
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

@end