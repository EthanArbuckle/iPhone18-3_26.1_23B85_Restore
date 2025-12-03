@interface AutocompleteSearchCoordinator
- (_TtC14CloudSharingUI29AutocompleteSearchCoordinator)init;
- (id)searchController:(id)controller composeRecipientForAddress:(id)address;
- (void)didTapTextViewAccessoryButtonForSearchController:(id)controller anchoredToView:(id)view;
- (void)searchController:(id)controller didTapTableAccessoryForRecipient:(id)recipient;
- (void)searchController:(id)controller textViewDidChangeSize:(CGSize)size;
@end

@implementation AutocompleteSearchCoordinator

- (id)searchController:(id)controller composeRecipientForAddress:(id)address
{
  v4 = [objc_allocWithZone(MEMORY[0x277CFBCA0]) initWithContact:0 address:address kind:0];

  return v4;
}

- (void)didTapTextViewAccessoryButtonForSearchController:(id)controller anchoredToView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  selfCopy = self;
  sub_243B32A2C();
}

- (void)searchController:(id)controller didTapTableAccessoryForRecipient:(id)recipient
{
  controllerCopy = controller;
  recipientCopy = recipient;
  selfCopy = self;
  sub_243B31CB0(controllerCopy, recipientCopy);
}

- (void)searchController:(id)controller textViewDidChangeSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  selfCopy = self;
  sub_243B32AFC(width, height);
}

- (_TtC14CloudSharingUI29AutocompleteSearchCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end