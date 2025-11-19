@interface MUIPriorityMessageListContainerCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (void)parentViewController:(id)a3 didSelectItemWithTransitionCoordinator:(id)a4;
- (void)parentViewController:(id)a3 viewWillAppearWithTransitionCoordinator:(id)a4;
- (void)prepareForReuse;
- (void)showBelowLineMessages:(BOOL)a3;
- (void)updateHighlightsSupplementaryViewContainerInsets:(NSDirectionalEdgeInsets)a3;
- (void)updateHighlightsSupplementaryViewMessages:(id)a3 mailboxes:(id)a4;
- (void)updateHighlightsSupplementaryViewMessages:(id)a3 mailboxes:(id)a4 cellLayoutValues:(id)a5 containerInsets:(NSDirectionalEdgeInsets)a6 contactStore:(id)a7 avatarGenerator:(id)a8 delegate:(id)a9;
@end

@implementation MUIPriorityMessageListContainerCell

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  MEMORY[0x277D82BE0](self);
  v5 = PriorityMessageListContainerCell.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(a3, a4, a5);
  MEMORY[0x277D82BD8](self);
  width = v5.width;
  height = v5.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)prepareForReuse
{
  MEMORY[0x277D82BE0](self);
  PriorityMessageListContainerCell.prepareForReuse()();
  MEMORY[0x277D82BD8](self);
}

- (void)showBelowLineMessages:(BOOL)a3
{
  MEMORY[0x277D82BE0](self);
  v3 = sub_214CCD394();
  PriorityMessageListContainerCell.show(belowLineMessages:)(v3 & 1);
  MEMORY[0x277D82BD8](self);
}

- (void)updateHighlightsSupplementaryViewContainerInsets:(NSDirectionalEdgeInsets)a3
{
  MEMORY[0x277D82BE0](self);
  PriorityMessageListContainerCell.updateContainerInsets(_:)(a3);
  MEMORY[0x277D82BD8](self);
}

- (void)updateHighlightsSupplementaryViewMessages:(id)a3 mailboxes:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](self);
  type metadata accessor for MUIHighlightedMessage();
  _ = sub_214CCF7E4();
  sub_214A63684();
  v5 = sub_214CCF7E4();
  PriorityMessageListContainerCell.update(_:mailboxes:)(_, v5);

  MEMORY[0x277D82BD8](a4);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
}

- (void)updateHighlightsSupplementaryViewMessages:(id)a3 mailboxes:(id)a4 cellLayoutValues:(id)a5 containerInsets:(NSDirectionalEdgeInsets)a6 contactStore:(id)a7 avatarGenerator:(id)a8 delegate:(id)a9
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a5);
  MEMORY[0x277D82BE0](a7);
  MEMORY[0x277D82BE0](a8);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  type metadata accessor for MUIHighlightedMessage();
  v13 = sub_214CCF7E4();
  sub_214A63684();
  v11 = sub_214CCF7E4();
  PriorityMessageListContainerCell.update(_:mailboxes:cellLayoutValues:containerInsets:contactStore:avatarGenerator:delegate:)(v13, v11, a5, a7, a8, a9, a6.top, a6.leading, a6.bottom, a6.trailing);

  MEMORY[0x277D82BD8](a4);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a8);
  MEMORY[0x277D82BD8](a7);
  MEMORY[0x277D82BD8](a5);
}

- (void)parentViewController:(id)a3 viewWillAppearWithTransitionCoordinator:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  PriorityMessageListContainerCell.parentViewController(_:viewWillAppearWith:)(a3, a4);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a3);
}

- (void)parentViewController:(id)a3 didSelectItemWithTransitionCoordinator:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  PriorityMessageListContainerCell.parentViewController(_:didSelectItemWith:)(a3, a4);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a3);
}

@end