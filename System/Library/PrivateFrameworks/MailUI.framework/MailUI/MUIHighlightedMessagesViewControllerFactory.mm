@interface MUIHighlightedMessagesViewControllerFactory
+ (id)createViewControllerForMessages:(id)messages mailboxes:(id)mailboxes cellLayoutValues:(id)values contactStore:(id)store delegate:(id)delegate;
+ (void)hideBelowLineMessagesForViewController:(id)controller;
+ (void)resetSelectionForViewController:(id)controller;
+ (void)updateContainerInsets:(NSDirectionalEdgeInsets)insets forViewController:(id)controller;
+ (void)updateMessages:(id)messages mailboxes:(id)mailboxes forViewController:(id)controller;
@end

@implementation MUIHighlightedMessagesViewControllerFactory

+ (id)createViewControllerForMessages:(id)messages mailboxes:(id)mailboxes cellLayoutValues:(id)values contactStore:(id)store delegate:(id)delegate
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](messages);
  MEMORY[0x277D82BE0](mailboxes);
  MEMORY[0x277D82BE0](values);
  MEMORY[0x277D82BE0](store);
  swift_unknownObjectRetain();
  type metadata accessor for MUIHighlightedMessage();
  v10 = sub_214CCF7E4();
  sub_214A63684();
  v8 = sub_214CCF7E4();
  swift_getObjCClassMetadata();
  v15 = sub_214C30E18(v10, v8, values, store, delegate);

  MEMORY[0x277D82BD8](mailboxes);

  MEMORY[0x277D82BD8](messages);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](store);
  MEMORY[0x277D82BD8](values);

  return v15;
}

+ (void)updateContainerInsets:(NSDirectionalEdgeInsets)insets forViewController:(id)controller
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](controller);
  swift_getObjCClassMetadata();
  sub_214C3154C(controller, insets.top, insets.leading, insets.bottom, insets.trailing);
  MEMORY[0x277D82BD8](controller);
}

+ (void)updateMessages:(id)messages mailboxes:(id)mailboxes forViewController:(id)controller
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](messages);
  MEMORY[0x277D82BE0](mailboxes);
  MEMORY[0x277D82BE0](controller);
  type metadata accessor for MUIHighlightedMessage();
  v7 = sub_214CCF7E4();
  sub_214A63684();
  v5 = sub_214CCF7E4();
  swift_getObjCClassMetadata();
  sub_214C3175C(v7, v5, controller);

  MEMORY[0x277D82BD8](mailboxes);

  MEMORY[0x277D82BD8](messages);
  MEMORY[0x277D82BD8](controller);
}

+ (void)hideBelowLineMessagesForViewController:(id)controller
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](controller);
  swift_getObjCClassMetadata();
  sub_214C31A24(controller);
  MEMORY[0x277D82BD8](controller);
}

+ (void)resetSelectionForViewController:(id)controller
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](controller);
  swift_getObjCClassMetadata();
  sub_214C31BBC(controller);
  MEMORY[0x277D82BD8](controller);
}

@end