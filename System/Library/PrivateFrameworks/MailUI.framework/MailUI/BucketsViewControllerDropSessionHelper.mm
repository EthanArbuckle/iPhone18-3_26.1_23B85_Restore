@interface BucketsViewControllerDropSessionHelper
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter;
- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit;
@end

@implementation BucketsViewControllerDropSessionHelper

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  MEMORY[0x277D82BE0](interaction);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  sub_214B4CD20(interaction, session);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](interaction);
  return sub_214CCD384() & 1;
}

- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter
{
  MEMORY[0x277D82BE0](interaction);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  sub_214B4D3D0(interaction, enter);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](interaction);
}

- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit
{
  MEMORY[0x277D82BE0](interaction);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  sub_214B4DE70(interaction, exit);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](interaction);
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  MEMORY[0x277D82BE0](interaction);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  v9 = sub_214B4E210(interaction, update);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](interaction);

  return v9;
}

- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator
{
  MEMORY[0x277D82BE0](interaction);
  MEMORY[0x277D82BE0](item);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  sub_214B4F0C8(interaction, item, animator);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](item);
  MEMORY[0x277D82BD8](interaction);
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  MEMORY[0x277D82BE0](interaction);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  sub_214B4F7E4(interaction, drop);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](interaction);
}

@end