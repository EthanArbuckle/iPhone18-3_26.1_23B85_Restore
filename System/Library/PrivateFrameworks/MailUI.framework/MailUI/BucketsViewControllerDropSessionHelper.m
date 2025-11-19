@interface BucketsViewControllerDropSessionHelper
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4;
@end

@implementation BucketsViewControllerDropSessionHelper

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  sub_214B4CD20(a3, a4);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a3);
  return sub_214CCD384() & 1;
}

- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  sub_214B4D3D0(a3, a4);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a3);
}

- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  sub_214B4DE70(a3, a4);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a3);
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  v9 = sub_214B4E210(a3, a4);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a3);

  return v9;
}

- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  sub_214B4F0C8(a3, a4, a5);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  sub_214B4F7E4(a3, a4);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a3);
}

@end