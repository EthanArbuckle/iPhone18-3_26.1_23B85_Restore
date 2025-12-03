@interface AboutCategoriesStatisticsProvider
- (void)collection:(id)collection addedItemIDs:(id)ds after:(id)after;
- (void)collection:(id)collection addedItemIDs:(id)ds before:(id)before;
- (void)collection:(id)collection changedItemIDs:(id)ds;
- (void)collection:(id)collection deletedItemIDs:(id)ds;
- (void)collection:(id)collection movedItemIDs:(id)ds after:(id)after;
- (void)collection:(id)collection movedItemIDs:(id)ds before:(id)before;
- (void)collection:(id)collection replacedExistingItemID:(id)d withNewItemID:(id)iD;
@end

@implementation AboutCategoriesStatisticsProvider

- (void)collection:(id)collection addedItemIDs:(id)ds before:(id)before
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](ds);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  sub_214CCF7E4();
  sub_214B10980();

  MEMORY[0x277D82BD8](ds);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collection:(id)collection addedItemIDs:(id)ds after:(id)after
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](ds);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  sub_214CCF7E4();
  sub_214B10980();

  MEMORY[0x277D82BD8](ds);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collection:(id)collection movedItemIDs:(id)ds before:(id)before
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](ds);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  sub_214CCF7E4();
  sub_214B10980();

  MEMORY[0x277D82BD8](ds);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collection:(id)collection movedItemIDs:(id)ds after:(id)after
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](ds);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  sub_214CCF7E4();
  sub_214B10980();

  MEMORY[0x277D82BD8](ds);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)collection:(id)collection changedItemIDs:(id)ds
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](ds);
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  sub_214CCF7E4();
  sub_214B10CFC();

  MEMORY[0x277D82BD8](ds);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
}

- (void)collection:(id)collection deletedItemIDs:(id)ds
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](ds);
  MEMORY[0x277D82BE0](self);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  sub_214CCF7E4();
  sub_214B10CFC();

  MEMORY[0x277D82BD8](ds);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
}

- (void)collection:(id)collection replacedExistingItemID:(id)d withNewItemID:(id)iD
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