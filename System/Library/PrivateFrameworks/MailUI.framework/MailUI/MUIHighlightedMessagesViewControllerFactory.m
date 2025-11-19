@interface MUIHighlightedMessagesViewControllerFactory
+ (id)createViewControllerForMessages:(id)a3 mailboxes:(id)a4 cellLayoutValues:(id)a5 contactStore:(id)a6 delegate:(id)a7;
+ (void)hideBelowLineMessagesForViewController:(id)a3;
+ (void)resetSelectionForViewController:(id)a3;
+ (void)updateContainerInsets:(NSDirectionalEdgeInsets)a3 forViewController:(id)a4;
+ (void)updateMessages:(id)a3 mailboxes:(id)a4 forViewController:(id)a5;
@end

@implementation MUIHighlightedMessagesViewControllerFactory

+ (id)createViewControllerForMessages:(id)a3 mailboxes:(id)a4 cellLayoutValues:(id)a5 contactStore:(id)a6 delegate:(id)a7
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a5);
  MEMORY[0x277D82BE0](a6);
  swift_unknownObjectRetain();
  type metadata accessor for MUIHighlightedMessage();
  v10 = sub_214CCF7E4();
  sub_214A63684();
  v8 = sub_214CCF7E4();
  swift_getObjCClassMetadata();
  v15 = sub_214C30E18(v10, v8, a5, a6, a7);

  MEMORY[0x277D82BD8](a4);

  MEMORY[0x277D82BD8](a3);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a6);
  MEMORY[0x277D82BD8](a5);

  return v15;
}

+ (void)updateContainerInsets:(NSDirectionalEdgeInsets)a3 forViewController:(id)a4
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a4);
  swift_getObjCClassMetadata();
  sub_214C3154C(a4, a3.top, a3.leading, a3.bottom, a3.trailing);
  MEMORY[0x277D82BD8](a4);
}

+ (void)updateMessages:(id)a3 mailboxes:(id)a4 forViewController:(id)a5
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a5);
  type metadata accessor for MUIHighlightedMessage();
  v7 = sub_214CCF7E4();
  sub_214A63684();
  v5 = sub_214CCF7E4();
  swift_getObjCClassMetadata();
  sub_214C3175C(v7, v5, a5);

  MEMORY[0x277D82BD8](a4);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a5);
}

+ (void)hideBelowLineMessagesForViewController:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  swift_getObjCClassMetadata();
  sub_214C31A24(a3);
  MEMORY[0x277D82BD8](a3);
}

+ (void)resetSelectionForViewController:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  swift_getObjCClassMetadata();
  sub_214C31BBC(a3);
  MEMORY[0x277D82BD8](a3);
}

@end