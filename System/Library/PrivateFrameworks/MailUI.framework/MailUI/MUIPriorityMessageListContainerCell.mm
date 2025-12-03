@interface MUIPriorityMessageListContainerCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (void)parentViewController:(id)controller didSelectItemWithTransitionCoordinator:(id)coordinator;
- (void)parentViewController:(id)controller viewWillAppearWithTransitionCoordinator:(id)coordinator;
- (void)prepareForReuse;
- (void)showBelowLineMessages:(BOOL)messages;
- (void)updateHighlightsSupplementaryViewContainerInsets:(NSDirectionalEdgeInsets)insets;
- (void)updateHighlightsSupplementaryViewMessages:(id)messages mailboxes:(id)mailboxes;
- (void)updateHighlightsSupplementaryViewMessages:(id)messages mailboxes:(id)mailboxes cellLayoutValues:(id)values containerInsets:(NSDirectionalEdgeInsets)insets contactStore:(id)store avatarGenerator:(id)generator delegate:(id)delegate;
@end

@implementation MUIPriorityMessageListContainerCell

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  MEMORY[0x277D82BE0](self);
  v5 = PriorityMessageListContainerCell.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(size, priority, fittingPriority);
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

- (void)showBelowLineMessages:(BOOL)messages
{
  MEMORY[0x277D82BE0](self);
  v3 = sub_214CCD394();
  PriorityMessageListContainerCell.show(belowLineMessages:)(v3 & 1);
  MEMORY[0x277D82BD8](self);
}

- (void)updateHighlightsSupplementaryViewContainerInsets:(NSDirectionalEdgeInsets)insets
{
  MEMORY[0x277D82BE0](self);
  PriorityMessageListContainerCell.updateContainerInsets(_:)(insets);
  MEMORY[0x277D82BD8](self);
}

- (void)updateHighlightsSupplementaryViewMessages:(id)messages mailboxes:(id)mailboxes
{
  MEMORY[0x277D82BE0](messages);
  MEMORY[0x277D82BE0](mailboxes);
  MEMORY[0x277D82BE0](self);
  type metadata accessor for MUIHighlightedMessage();
  _ = sub_214CCF7E4();
  sub_214A63684();
  v5 = sub_214CCF7E4();
  PriorityMessageListContainerCell.update(_:mailboxes:)(_, v5);

  MEMORY[0x277D82BD8](mailboxes);

  MEMORY[0x277D82BD8](messages);
  MEMORY[0x277D82BD8](self);
}

- (void)updateHighlightsSupplementaryViewMessages:(id)messages mailboxes:(id)mailboxes cellLayoutValues:(id)values containerInsets:(NSDirectionalEdgeInsets)insets contactStore:(id)store avatarGenerator:(id)generator delegate:(id)delegate
{
  MEMORY[0x277D82BE0](messages);
  MEMORY[0x277D82BE0](mailboxes);
  MEMORY[0x277D82BE0](values);
  MEMORY[0x277D82BE0](store);
  MEMORY[0x277D82BE0](generator);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  type metadata accessor for MUIHighlightedMessage();
  v13 = sub_214CCF7E4();
  sub_214A63684();
  v11 = sub_214CCF7E4();
  PriorityMessageListContainerCell.update(_:mailboxes:cellLayoutValues:containerInsets:contactStore:avatarGenerator:delegate:)(v13, v11, values, store, generator, delegate, insets.top, insets.leading, insets.bottom, insets.trailing);

  MEMORY[0x277D82BD8](mailboxes);

  MEMORY[0x277D82BD8](messages);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](generator);
  MEMORY[0x277D82BD8](store);
  MEMORY[0x277D82BD8](values);
}

- (void)parentViewController:(id)controller viewWillAppearWithTransitionCoordinator:(id)coordinator
{
  MEMORY[0x277D82BE0](controller);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  PriorityMessageListContainerCell.parentViewController(_:viewWillAppearWith:)(controller, coordinator);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](controller);
}

- (void)parentViewController:(id)controller didSelectItemWithTransitionCoordinator:(id)coordinator
{
  MEMORY[0x277D82BE0](controller);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  PriorityMessageListContainerCell.parentViewController(_:didSelectItemWith:)(controller, coordinator);
  MEMORY[0x277D82BD8](self);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](controller);
}

@end